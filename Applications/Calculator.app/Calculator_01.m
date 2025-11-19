uint64_t storeEnumTagSinglePayload for CalculatorFocusType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorFocusType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 sub_10001BF60(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001BF7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_10003AE84(&qword_100156A88, &qword_100110268);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  __chkstk_darwin(v3);
  v6 = v65 - v5;
  v7 = sub_10003AE84(&qword_100156A90, &qword_100110270);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  __chkstk_darwin(v7);
  v81 = v65 - v9;
  v80 = sub_10003AE84(&qword_100156A98, &qword_100110278);
  v73 = *(v80 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v80);
  v79 = v65 - v11;
  v72 = sub_10003AE84(&qword_100154790, &qword_100110280);
  v12 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v14 = (v65 - v13);
  *v14 = static Alignment.bottomLeading.getter();
  v14[1] = v15;
  v16 = sub_10003AE84(&qword_100156AA0, &qword_100110288);
  sub_10001CD08(v1, v14 + *(v16 + 44));
  v90 = *v1;
  v91 = *(v1 + 8);
  v88 = *(v1 + 16);
  v89 = *(v1 + 24);
  v86 = *(v1 + 32);
  v87 = *(v1 + 48);
  type metadata accessor for MainActor();
  sub_100008E68(&v90, &v82, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v88, &v82, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v86, &v82, &qword_100156AA8, &qword_100110298);
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = *(v2 + 16);
  *(v18 + 32) = *v2;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(v2 + 32);
  *(v18 + 80) = *(v2 + 48);
  v71 = type metadata accessor for TaskPriority();
  v20 = *(v71 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v71);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v65 - v22;
  static TaskPriority.userInitiated.getter();
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    v69 = type metadata accessor for _TaskModifier2();
    v70 = v65;
    v68 = *(v69 - 8);
    v24 = *(v68 + 64);
    __chkstk_darwin(v69);
    v67 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v82 = 0xD000000000000033;
    *(&v82 + 1) = 0x8000000100106F40;
    v85 = 40;
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v66 = v14;
    v65[1] = v65;
    __chkstk_darwin(v27);
    v28 = v65 - v22;
    v29 = v65 - v22;
    v30 = v71;
    (*(v20 + 16))(v28, v29, v71);
    v31 = v67;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v20 + 8))(v23, v30);
    v32 = v79;
    sub_10000D5B8(v66, v79, &qword_100154790, &qword_100110280);
    v33 = sub_10003AE84(&qword_100154798, &qword_10010B5C0);
    (*(v68 + 32))(v32 + *(v33 + 36), v31, v69);
  }

  else
  {
    v34 = sub_10003AE84(&qword_1001547A0, &qword_10010B5C8);
    v35 = v79;
    v36 = (v79 + *(v34 + 36));
    v37 = type metadata accessor for _TaskModifier();
    (*(v20 + 32))(&v36[*(v37 + 20)], v65 - v22, v71);
    *v36 = &unk_1001102A0;
    *(v36 + 1) = v18;
    sub_10000D5B8(v14, v35, &qword_100154790, &qword_100110280);
  }

  v38 = v90;
  v39 = v91;
  v82 = v86;
  LOBYTE(v83) = v87;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.wrappedValue.getter();
  v40 = swift_allocObject();
  v41 = *(v2 + 16);
  *(v40 + 16) = *v2;
  *(v40 + 32) = v41;
  *(v40 + 48) = *(v2 + 32);
  *(v40 + 64) = *(v2 + 48);
  sub_100008E68(&v90, &v82, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v88, &v82, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v86, &v82, &qword_100156AA8, &qword_100110298);
  v42 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v43 = sub_100004880(&qword_100156AB8, &qword_100154790, &qword_100110280);
  *&v82 = v72;
  *(&v82 + 1) = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_1000909B0();
  v46 = v80;
  v47 = v79;
  View.onChange<A>(of:initial:_:)();

  (*(v73 + 8))(v47, v46);

  if ((v39 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v49 = type metadata accessor for EnvironmentValues();
    v50 = *(v49 - 8);
    v51 = *(v50 + 64);
    __chkstk_darwin(v49);
    v53 = v65 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v90, &qword_100154810, &qword_10010DF90);
    (*(v50 + 8))(v53, v49);
    v38 = v82;
  }

  swift_getKeyPath();
  *&v82 = v38;
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = *(v38 + 54);

  LOBYTE(v85) = v54;
  v55 = swift_allocObject();
  v56 = *(v2 + 16);
  *(v55 + 16) = *v2;
  *(v55 + 32) = v56;
  *(v55 + 48) = *(v2 + 32);
  *(v55 + 64) = *(v2 + 48);
  sub_100008E68(&v90, &v82, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v88, &v82, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v86, &v82, &qword_100156AA8, &qword_100110298);
  *&v82 = v80;
  *(&v82 + 1) = v42;
  v83 = OpaqueTypeConformance2;
  v84 = v45;
  swift_getOpaqueTypeConformance2();
  v57 = v75;
  v58 = v81;
  View.onChange<A>(of:initial:_:)();

  (*(v74 + 8))(v58, v57);
  v59 = [objc_opt_self() defaultCenter];
  if (qword_1001544D8 != -1)
  {
    swift_once();
  }

  v60 = sub_10003AE84(&qword_100156AC8, &unk_1001102E0);
  v61 = v78;
  v62 = v78 + *(v60 + 52);
  NSNotificationCenter.publisher(for:object:)();

  result = (*(v76 + 32))(v61, v6, v77);
  v64 = (v61 + *(v60 + 56));
  *v64 = CalculatorButtonRepresentable.id.getter;
  v64[1] = 0;
  return result;
}

uint64_t sub_10001CB08(uint64_t *a1)
{
  v1 = *a1;
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10001CB70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10003AF60();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_10003AF14(&qword_100154788, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

uint64_t sub_10001CC64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_10001CCC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_10001BF7C(a1);
}

uint64_t sub_10001CD08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v75 = sub_10003AE84(&qword_100156AD8, &qword_1001102F8);
  v3 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v65 = (&v64 - v4);
  v71 = sub_10003AE84(&qword_100156AE0, &qword_100110300);
  v5 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = &v64 - v6;
  v68 = sub_10003AE84(&qword_100156AE8, &qword_100110308);
  v7 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v9 = &v64 - v8;
  v72 = sub_10003AE84(&qword_100156AF0, &qword_100110310);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v70 = &v64 - v11;
  v69 = sub_10003AE84(&qword_100156AF8, &qword_100110318);
  v12 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v14 = (&v64 - v13);
  v15 = type metadata accessor for EnvironmentValues();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(a1 + 8);
  v86 = *a1;
  v19 = v86;
  v20 = v87;

  v21 = v19;
  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v86, &qword_100154810, &qword_10010DF90);
    (*(v67 + 8))(v18, v15);
    v21 = v84;
  }

  swift_getKeyPath();
  *&v84 = v21;
  v66 = sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v21 + 50);

  if (v23 == 1)
  {
    v84 = *(a1 + 2);
    v85 = *(a1 + 48);
    v82 = *(a1 + 2);
    v83 = *(a1 + 48);
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.projectedValue.getter();
    v24 = v79;
    v25 = v80;
    v26 = v81;
    v79 = a1[2];
    LOBYTE(v80) = *(a1 + 24);
    v27 = swift_allocObject();
    v28 = *(a1 + 1);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(a1 + 2);
    *(v27 + 64) = *(a1 + 48);
    sub_100008E68(&v86, &v82, &qword_100154810, &qword_10010DF90);
    sub_100008E68(&v79, &v82, &qword_1001556F0, &unk_10010D920);
    sub_100008E68(&v84, &v82, &qword_100156AA8, &qword_100110298);
    sub_10008E9FC(v24, v25, v26, sub_100020894, v27, v14);
    *(v14 + *(v69 + 36)) = 1;
    sub_100008E68(v14, v9, &qword_100156AF8, &qword_100110318);
    swift_storeEnumTagMultiPayload();
    sub_10003AE84(&qword_100156B38, &qword_1001103E8);
    sub_10001DAC8();
    sub_100004880(&qword_100156B30, &qword_100156B38, &qword_1001103E8);
    v29 = v70;
    _ConditionalContent<>.init(storage:)();
    sub_100008E68(v29, v73, &qword_100156AF0, &qword_100110310);
    swift_storeEnumTagMultiPayload();
    sub_10001DA10();
    sub_10001DBD4();
    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v29, &qword_100156AF0, &qword_100110310);
    v30 = v14;
    v31 = &qword_100156AF8;
    v32 = &qword_100110318;
  }

  else
  {

    if ((v20 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v33 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v86, &qword_100154810, &qword_10010DF90);
      (*(v67 + 8))(v18, v15);
      v19 = v84;
    }

    v34 = *(v19 + 16);
    swift_getKeyPath();
    *&v84 = v34;
    sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = *(v34 + 24);

    v36 = CalculateExpression.format.getter();

    v84 = *(a1 + 2);
    v85 = *(a1 + 48);
    v82 = *(a1 + 2);
    v83 = *(a1 + 48);
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.projectedValue.getter();
    if (v36 == 2)
    {
      v38 = v79;
      v37 = v80;
      v39 = v81;
      v79 = a1[2];
      LOBYTE(v80) = *(a1 + 24);
      v40 = swift_allocObject();
      v41 = *(a1 + 1);
      *(v40 + 16) = *a1;
      *(v40 + 32) = v41;
      *(v40 + 48) = *(a1 + 2);
      *(v40 + 64) = *(a1 + 48);
      type metadata accessor for CalculatorViewModel();
      sub_100008E68(&v86, &v82, &qword_100154810, &qword_10010DF90);
      sub_100008E68(&v79, &v82, &qword_1001556F0, &unk_10010D920);
      sub_100008E68(&v84, &v82, &qword_100156AA8, &qword_100110298);
      v42 = Environment.init<A>(_:)();
      v44 = v43;
      type metadata accessor for CalculatorLayout(0);
      sub_100090A7C(&qword_100154958, type metadata accessor for CalculatorLayout);
      v45 = Environment.init<A>(_:)();
      v78 = v44 & 1;
      v77 = v46 & 1;
      *v9 = sub_100020878;
      *(v9 + 1) = v40;
      *(v9 + 2) = v42;
      v9[24] = v44 & 1;
      *(v9 + 25) = v82;
      *(v9 + 7) = *(&v82 + 3);
      *(v9 + 4) = v45;
      v9[40] = v46 & 1;
      *(v9 + 41) = *v76;
      *(v9 + 11) = *&v76[3];
      v67 = v38;
      *(v9 + 6) = v38;
      *(v9 + 7) = v37;
      v9[64] = v39;
      swift_storeEnumTagMultiPayload();

      sub_10003AE84(&qword_100156B38, &qword_1001103E8);
      sub_10001DAC8();
      sub_100004880(&qword_100156B30, &qword_100156B38, &qword_1001103E8);
      v47 = v70;
      _ConditionalContent<>.init(storage:)();
      sub_100008E68(v47, v73, &qword_100156AF0, &qword_100110310);
      swift_storeEnumTagMultiPayload();
      sub_10001DA10();
      sub_10001DBD4();
      _ConditionalContent<>.init(storage:)();

      v30 = v47;
      v31 = &qword_100156AF0;
      v32 = &qword_100110310;
    }

    else
    {
      v48 = v79;
      v49 = v80;
      v50 = v81;
      v79 = a1[2];
      LOBYTE(v80) = *(a1 + 24);
      v51 = swift_allocObject();
      v52 = *(a1 + 1);
      *(v51 + 16) = *a1;
      *(v51 + 32) = v52;
      *(v51 + 48) = *(a1 + 2);
      *(v51 + 64) = *(a1 + 48);
      v53 = sub_10003AE84(&qword_100156B00, &qword_100110370);
      v54 = v53[9];
      KeyPath = swift_getKeyPath();
      v56 = v65;
      *(v65 + v54) = KeyPath;
      sub_10003AE84(&qword_100154F90, &qword_10010C910);
      swift_storeEnumTagMultiPayload();
      v57 = v53[10];
      *(v56 + v57) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v58 = v56 + v53[11];
      type metadata accessor for CalculatorViewModel();
      sub_100008E68(&v86, &v82, &qword_100154810, &qword_10010DF90);
      sub_100008E68(&v79, &v82, &qword_1001556F0, &unk_10010D920);
      sub_100008E68(&v84, &v82, &qword_100156AA8, &qword_100110298);
      *v58 = Environment.init<A>(_:)();
      v58[8] = v59 & 1;
      v60 = v56 + v53[12];
      type metadata accessor for CalculatorLayout(0);
      sub_100090A7C(&qword_100154958, type metadata accessor for CalculatorLayout);
      *v60 = Environment.init<A>(_:)();
      v60[8] = v61 & 1;
      v62 = v56 + v53[13];
      *v62 = v48;
      *(v62 + 1) = v49;
      v62[16] = v50;
      *v56 = sub_100020894;
      v56[1] = v51;
      *(v56 + *(v75 + 36)) = 0;
      sub_100008E68(v56, v73, &qword_100156AD8, &qword_1001102F8);
      swift_storeEnumTagMultiPayload();
      sub_10001DA10();
      sub_10001DBD4();
      _ConditionalContent<>.init(storage:)();
      v30 = v56;
      v31 = &qword_100156AD8;
      v32 = &qword_1001102F8;
    }
  }

  return sub_1000035CC(v30, v31, v32);
}

unint64_t sub_10001DA10()
{
  result = qword_100156B08;
  if (!qword_100156B08)
  {
    sub_10003AECC(&qword_100156AF0, &qword_100110310);
    sub_10001DAC8();
    sub_100004880(&qword_100156B30, &qword_100156B38, &qword_1001103E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B08);
  }

  return result;
}

unint64_t sub_10001DAC8()
{
  result = qword_100156B10;
  if (!qword_100156B10)
  {
    sub_10003AECC(&qword_100156AF8, &qword_100110318);
    sub_100004880(&qword_100156B18, &qword_100156B20, &qword_1001103E0);
    sub_10001DB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B10);
  }

  return result;
}

unint64_t sub_10001DB80()
{
  result = qword_100156B28;
  if (!qword_100156B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B28);
  }

  return result;
}

unint64_t sub_10001DBD4()
{
  result = qword_100156B40;
  if (!qword_100156B40)
  {
    sub_10003AECC(&qword_100156AD8, &qword_1001102F8);
    sub_100004880(&qword_100156B48, &qword_100156B00, &qword_100110370);
    sub_10001DB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B40);
  }

  return result;
}

NSString sub_10001DC8C()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B00 = result;
  return result;
}

uint64_t sub_10001DD50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001DDE0(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001598A0, &qword_100114BA8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

__n128 sub_10001DED8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v67 = *(a1 + 16);
  v68 = a2;
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001598A0, &qword_100114BA8);
  swift_getTupleTypeMetadata2();
  v64 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  v6 = __chkstk_darwin(v4);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v58 - v8;
  v9 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v58 = type metadata accessor for CalculatorSizeClass(0);
  v15 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v3;
  v70 = v2;
  v23 = v2 + v3[12];
  v24 = *v23;
  LOBYTE(v3) = *(v23 + 8);

  if ((v3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v22, v18);
    v24 = v71;
  }

  v26 = v70 + v69[11];
  v27 = *v26;
  v28 = *(v26 + 8);

  if ((v28 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v22, v18);
    v27 = v71;
  }

  swift_getKeyPath();
  v71 = v27;
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v27 + 48);

  v59 = v17;
  if (v30)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v31 = 1;
  }

  v32 = v69;
  v33 = v70;
  v34 = sub_10001E850(v69);
  v35 = v33 + v32[9];
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v14);
  v36 = v33 + v32[10];
  v37 = v60;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v60);
  v38 = type metadata accessor for UserInterfaceSizeClass();
  v39 = *(*(v38 - 8) + 56);
  v40 = v59;
  v39(v59, 1, 1, v38);
  v41 = *(v58 + 20);
  v39((v40 + v41), 1, 1, v38);
  sub_10006E758(v14, v40);
  sub_10006E758(v37, v40 + v41);
  v42 = sub_1000D3C58(v24, v31 & 1, v40);
  v43 = sub_10003C9A0(v40);
  if (v31)
  {
    swift_getKeyPath();
    v71 = v24;
    sub_100006650(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = *(v24 + 96);
    swift_getKeyPath();
    v71 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v44 / *(v24 + 104) <= 0.98)
    {
      v45 = 0.25;
    }

    else
    {
      v45 = 0.166666667;
    }
  }

  else if (sub_10003C9A0(v40))
  {
    v45 = 0.25;
  }

  else
  {
    v45 = 0.111111111;
  }

  v46 = 70.0;
  if (v42 >= 70.0)
  {
    v46 = v42;
  }

  v47 = 60.0;
  if (v42 >= 60.0)
  {
    v47 = v42;
  }

  if ((v43 & 1) == 0)
  {
    v46 = v47;
  }

  v48 = (v46 - v34) * 0.6;
  swift_getKeyPath();
  v71 = v24;
  sub_100006650(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v24 + 96);

  if (v45 * v49 < v48)
  {
    v48 = v45 * v49;
  }

  sub_10006E7C8(v40);
  v50 = static VerticalAlignment.bottom.getter();
  __chkstk_darwin(v50);
  v51 = *(v69 + 3);
  *(&v58 - 6) = v67;
  *(&v58 - 5) = v51;
  *(&v58 - 4) = v70;
  *(&v58 - 3) = v48 * 0.259259259;
  *(&v58 - 2) = v48 * 0.425;
  *(&v58 - 1) = v48;
  v52 = v61;
  HStack.init(alignment:spacing:content:)();
  v53 = v66;
  v54 = swift_getWitnessTable();
  v55 = v63;
  sub_100020EE8(v52, v53, v54);
  v56 = *(v65 + 8);
  v56(v52, v53);
  sub_100020EE8(v55, v53, v54);
  return (v56)(v55, v53);
}

double sub_10001E850(int *a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v31 - v8;
  v31 = type metadata accessor for CalculatorSizeClass(0);
  v9 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + a1[12];
  v18 = *v17;
  v19 = *(v17 + 8);

  if ((v19 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v12);
    v18 = v34;
  }

  v21 = v2 + a1[9];
  v22 = v32;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v32);
  v23 = v2 + a1[10];
  v24 = v33;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v33);
  v25 = type metadata accessor for UserInterfaceSizeClass();
  v26 = *(*(v25 - 8) + 56);
  v26(v11, 1, 1, v25);
  v27 = *(v31 + 20);
  v26(&v11[v27], 1, 1, v25);
  sub_10006E758(v22, v11);
  sub_10006E758(v24, &v11[v27]);
  sub_1000D3FB8(v18, 0, v11);
  v29 = v28;

  sub_10006E7C8(v11);
  return v29;
}

BOOL sub_10001EB88()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return !sub_10003C1F8();
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return v4 != 6 || !sub_10003C1F8();
}

unint64_t sub_10001EC3C()
{
  result = qword_100154958;
  if (!qword_100154958)
  {
    type metadata accessor for CalculatorLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154958);
  }

  return result;
}

uint64_t sub_10001EC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D1>, double a6@<D2>)
{
  v97 = a4;
  v82 = a2;
  v80 = a3;
  v85 = type metadata accessor for CalculatorStandardDisplayView();
  v95 = *(v85 - 1);
  v93 = *(v95 + 64);
  __chkstk_darwin(v85);
  v94 = &v79[-v10];
  v11 = sub_10003AE84(&qword_1001598A8, &qword_100114C00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v84 = &v79[-v13];
  v88 = sub_10003AE84(&qword_1001598B0, &unk_100114C08);
  v14 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v90 = &v79[-v15];
  v92 = sub_10003AE84(&qword_1001598A0, &qword_100114BA8);
  v16 = *(*(v92 - 8) + 64);
  v17 = __chkstk_darwin(v92);
  v96 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v89 = &v79[-v20];
  __chkstk_darwin(v19);
  v91 = &v79[-v21];
  v22 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v83 = &v79[-v24];
  v25 = type metadata accessor for Optional();
  v81 = *(v25 - 8);
  v26 = *(v81 + 64);
  __chkstk_darwin(v25);
  v28 = &v79[-v27];
  v29 = type metadata accessor for ModifiedContent();
  v87 = *(v29 - 8);
  v30 = *(v87 + 64);
  __chkstk_darwin(v29);
  v32 = &v79[-v31];
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  v33 = type metadata accessor for ModifiedContent();
  v98 = *(v33 - 8);
  v34 = *(v98 + 64);
  v35 = __chkstk_darwin(v33);
  v86 = &v79[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v35);
  v39 = &v79[-v38];
  v40 = __chkstk_darwin(v37);
  v99 = &v79[-v41];
  v42 = *(a1 + 8);
  (*a1)(v40);
  static Edge.Set.bottom.getter();
  v103[6] = a3;
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v81 + 8))(v28, v25);
  v44 = type metadata accessor for Font.Design();
  v45 = v83;
  (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
  static Font.system(size:weight:design:)();
  v46 = v80;
  sub_1000035CC(v45, &qword_1001567E0, &qword_10010F970);
  v103[4] = WitnessTable;
  v103[5] = &protocol witness table for _PaddingLayout;
  v47 = swift_getWitnessTable();
  View.font(_:)();

  v48 = v32;
  v49 = v82;
  (*(v87 + 8))(v48, v29);
  v50 = sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40);
  v103[2] = v47;
  v103[3] = v50;
  v83 = swift_getWitnessTable();
  sub_100020EE8(v39, v33, v83);
  v51 = *(v98 + 8);
  v52 = v39;
  v53 = v84;
  v87 = v33;
  v51(v52, v33);
  v54 = static HorizontalAlignment.trailing.getter();
  v55 = v85;
  v56 = sub_10001E850(v85);
  *v53 = v54;
  v57 = v55;
  *(v53 + 8) = v56;
  *(v53 + 16) = 0;
  v58 = sub_10003AE84(&qword_1001598B8, &unk_100114C18);
  v59 = v46;
  sub_100020F28(a1, v49, v46, v53 + *(v58 + 44), a5, a6);
  sub_10002248C(v57);
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v90;
  sub_10000D5B8(v53, v90, &qword_1001598A8, &qword_100114C00);
  v61 = &v60[*(v88 + 36)];
  v62 = v107;
  v63 = v109;
  v64 = v110;
  v61[4] = v108;
  v61[5] = v63;
  v61[6] = v64;
  v65 = v105;
  *v61 = v104;
  v61[1] = v65;
  v61[2] = v106;
  v61[3] = v62;
  v66 = v95;
  v67 = v94;
  (*(v95 + 16))(v94, a1, v57);
  v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v49;
  *(v69 + 24) = v59;
  (*(v66 + 32))(v69 + v68, v67, v57);
  v70 = v89;
  sub_10000D5B8(v60, v89, &qword_1001598B0, &unk_100114C08);
  v71 = v92;
  v72 = &v70[*(v92 + 36)];
  *v72 = 0;
  v72[1] = 0;
  v72[2] = sub_1000E7744;
  v72[3] = v69;
  v73 = v91;
  sub_10000D5B8(v70, v91, &qword_1001598A0, &qword_100114BA8);
  v74 = v86;
  v75 = v99;
  v76 = v87;
  (*(v98 + 16))(v86, v99, v87);
  v103[0] = v74;
  v77 = v96;
  sub_100008E68(v73, v96, &qword_1001598A0, &qword_100114BA8);
  v103[1] = v77;
  v102[0] = v76;
  v102[1] = v71;
  v100 = v83;
  v101 = sub_1000229B8();
  sub_100022AFC(v103, 2uLL, v102);
  sub_1000035CC(v73, &qword_1001598A0, &qword_100114BA8);
  v51(v75, v76);
  sub_1000035CC(v77, &qword_1001598A0, &qword_100114BA8);
  return (v51)(v74, v76);
}

uint64_t sub_10001F72C@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v78 = sub_10003AE84(&qword_100156B58, &qword_1001103F8);
  v2 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v4 = &v70 - v3;
  v76 = sub_10003AE84(&qword_100156B60, &qword_100110400);
  v5 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = &v70 - v6;
  v73 = sub_10003AE84(&qword_100156B68, &qword_100110408);
  v7 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = &v70 - v8;
  v72 = sub_10003AE84(&qword_100156B70, &qword_100110410);
  v9 = *(*(v72 - 8) + 64);
  v10 = __chkstk_darwin(v72);
  v70 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v70 - v12;
  v75 = sub_10003AE84(&qword_100156B78, &qword_100110418);
  v14 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v16 = &v70 - v15;
  v17 = type metadata accessor for EnvironmentValues();
  v80 = *(v17 - 8);
  v81 = v17;
  v18 = *(v80 + 64);
  __chkstk_darwin(v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v1 + 8);
  v71 = v1;
  v84 = *v1;
  v21 = v84;
  v22 = v85;

  v23 = v21;
  v82 = v22;
  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
    (*(v80 + 8))(v20, v81);
    v23 = v83;
  }

  swift_getKeyPath();
  v83 = v23;
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v23 + 48);

  if (v25 > 2)
  {

LABEL_10:

    v30 = v21;
    if ((v82 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
      (*(v80 + 8))(v20, v81);
      v30 = v83;
    }

    swift_getKeyPath();
    v83 = v30;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v30 + 56);

    if (v32 == 1)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {

        v42 = v21;
        if ((v82 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v43 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
          (*(v80 + 8))(v20, v81);
          v42 = v83;
        }

        swift_getKeyPath();
        v83 = v42;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v44 = *(v42 + 56);

        if (v44 > 1)
        {
        }

        else
        {
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v57 & 1) == 0)
          {
            v58 = 1;
            v45 = v77;
LABEL_48:
            v68 = sub_10003AE84(&qword_100156B98, &qword_100110450);
            (*(*(v68 - 8) + 56))(v16, v58, 1, v68);
            v54 = &qword_100156B78;
            v55 = &qword_100110418;
            sub_100008E68(v16, v45, &qword_100156B78, &qword_100110418);
            swift_storeEnumTagMultiPayload();
            sub_100090AC4(&qword_100156B88, &qword_100156B78, &qword_100110418, sub_100020898);
            sub_100090AC4(&qword_100156C28, &qword_100156B58, &qword_1001103F8, sub_100020D18);
            _ConditionalContent<>.init(storage:)();
            v56 = v16;
            return sub_1000035CC(v56, v54, v55);
          }
        }

        if ((v82 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v59 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
          (*(v80 + 8))(v20, v81);
          v21 = v83;
        }

        v60 = *(v21 + 16);

        swift_getKeyPath();
        v83 = v60;
        sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v61 = *(v60 + 24);

        v62 = CalculateExpression.unicode.getter();
        v64 = v63;

        v65 = HIBYTE(v64) & 0xF;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v65 = v62 & 0xFFFFFFFFFFFFLL;
        }

        if (v65)
        {

          v13 = v70;
          sub_10008EDA8(1, v62, v64, v70);
          v66 = 0;
          v45 = v77;
        }

        else
        {
          v66 = 1;
          v45 = v77;
          v13 = v70;
        }

        v67 = sub_10003AE84(&qword_100156BB0, &qword_100110458);
        (*(*(v67 - 8) + 56))(v13, v66, 1, v67);
LABEL_47:
        sub_100008E68(v13, v74, &qword_100156B70, &qword_100110410);
        swift_storeEnumTagMultiPayload();
        sub_100090AC4(&qword_100156BA0, &qword_100156B70, &qword_100110410, sub_100020948);
        _ConditionalContent<>.init(storage:)();
        sub_1000035CC(v13, &qword_100156B70, &qword_100110410);
        v58 = 0;
        goto LABEL_48;
      }
    }

    if ((v82 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
      (*(v80 + 8))(v20, v81);
      v21 = v83;
    }

    v35 = *(v21 + 16);

    swift_getKeyPath();
    v83 = v35;
    sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v35 + 24);

    v37 = CalculateExpression.ascii.getter();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {

      sub_10008EDA8(1, v37, v39, v13);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v45 = v77;

    v46 = sub_10003AE84(&qword_100156BB0, &qword_100110458);
    (*(*(v46 - 8) + 56))(v13, v41, 1, v46);
    goto LABEL_47;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_10;
  }

  v27 = v21;
  if ((v82 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
    (*(v80 + 8))(v20, v81);
    v27 = v83;
  }

  swift_getKeyPath();
  v83 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 48);

  if (v29)
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {

      if ((v82 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v49 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v84, &qword_100154810, &qword_10010DF90);
        (*(v80 + 8))(v20, v81);
        v21 = v83;
      }

      v50 = *(v21 + 16);

      swift_getKeyPath();
      v83 = v50;
      sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v51 = *(v50 + 24);

      LOBYTE(v50) = CalculateExpression.assumeDegrees.getter();

      if (v50)
      {
        v48 = 1;
      }

      else
      {
        sub_10008F650(0, v4);
        v48 = 0;
      }

      goto LABEL_35;
    }
  }

  else
  {
  }

  v48 = 1;
LABEL_35:
  v52 = v77;
  v53 = sub_10003AE84(&qword_100156B80, &qword_100110448);
  (*(*(v53 - 8) + 56))(v4, v48, 1, v53);
  v54 = &qword_100156B58;
  v55 = &qword_1001103F8;
  sub_100008E68(v4, v52, &qword_100156B58, &qword_1001103F8);
  swift_storeEnumTagMultiPayload();
  sub_100090AC4(&qword_100156B88, &qword_100156B78, &qword_100110418, sub_100020898);
  sub_100090AC4(&qword_100156C28, &qword_100156B58, &qword_1001103F8, sub_100020D18);
  _ConditionalContent<>.init(storage:)();
  v56 = v4;
  return sub_1000035CC(v56, v54, v55);
}

uint64_t sub_1000207F8@<X0>(uint64_t a1@<X8>)
{
  sub_10001F72C(a1);
  v2 = sub_10003AE84(&qword_100156B50, &qword_1001103F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_100020898()
{
  result = qword_100156B90;
  if (!qword_100156B90)
  {
    sub_10003AECC(&qword_100156B98, &qword_100110450);
    sub_100090AC4(&qword_100156BA0, &qword_100156B70, &qword_100110410, sub_100020948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B90);
  }

  return result;
}

unint64_t sub_100020948()
{
  result = qword_100156BA8;
  if (!qword_100156BA8)
  {
    sub_10003AECC(&qword_100156BB0, &qword_100110458);
    sub_100020A00(&qword_100156BB8, &qword_100156BC0, &qword_100110460, sub_100020B34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156BA8);
  }

  return result;
}

uint64_t sub_100020A00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    sub_100004880(&qword_100156C18, &qword_100156C20, &qword_100110490);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100020AB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020B94()
{
  result = qword_100156BE8;
  if (!qword_100156BE8)
  {
    sub_10003AECC(&qword_100156BF0, &qword_100110478);
    sub_100020C4C(&qword_100156BF8, &qword_100156C00, &qword_100110480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156BE8);
  }

  return result;
}

uint64_t sub_100020C4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100156C08, &qword_100156C10, &qword_100110488);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020D18()
{
  result = qword_100156C30;
  if (!qword_100156C30)
  {
    sub_10003AECC(&qword_100156B80, &qword_100110448);
    sub_100020A00(&qword_100156C38, &qword_100156C40, &qword_100110498, sub_100020DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156C30);
  }

  return result;
}

unint64_t sub_100020E30()
{
  result = qword_100156C68;
  if (!qword_100156C68)
  {
    sub_10003AECC(&qword_100156C70, &qword_1001104B0);
    sub_100020C4C(&qword_100156C78, &qword_100156C80, &qword_1001104B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156C68);
  }

  return result;
}

uint64_t sub_100020F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v153 = a4;
  v11 = sub_10003AE84(&qword_1001598D8, &qword_100114C50);
  v145 = *(v11 - 8);
  v146 = v11;
  v12 = *(v145 + 64);
  __chkstk_darwin(v11);
  v144 = &v126 - v13;
  v14 = sub_10003AE84(&qword_1001598E0, &qword_100114C58);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v150 = &v126 - v16;
  v149 = sub_10003AE84(&qword_1001598E8, &qword_100114C60);
  v17 = *(*(v149 - 8) + 64);
  v18 = __chkstk_darwin(v149);
  v152 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v148 = &v126 - v21;
  __chkstk_darwin(v20);
  v151 = &v126 - v22;
  v23 = sub_10003AE84(&qword_1001598F0, &qword_100114C68);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v140 = &v126 - v25;
  v26 = type metadata accessor for Locale();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v147 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for String.LocalizationValue();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v164 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v159 = *(v32 - 8);
  v160 = v32;
  v33 = *(v159 + 64);
  v34 = __chkstk_darwin(v32);
  v142 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v132 = &v126 - v36;
  v162 = a2;
  v163 = a3;
  v37 = type metadata accessor for CalculatorStandardDisplayView();
  v38 = *(v37 - 8);
  v39 = *(v38 + 8);
  __chkstk_darwin(v37);
  v156 = &v126 - v40;
  v133 = sub_10003AE84(&qword_1001598F8, &qword_100114C70);
  v131 = *(v133 - 8);
  v41 = *(v131 + 64);
  __chkstk_darwin(v133);
  v130 = &v126 - v42;
  v43 = sub_10003AE84(&qword_100159900, &qword_100114C78);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v135 = &v126 - v45;
  v141 = sub_10003AE84(&qword_100159908, &qword_100114C80);
  v46 = *(*(v141 - 8) + 64);
  v47 = __chkstk_darwin(v141);
  v134 = &v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v136 = &v126 - v49;
  v50 = type metadata accessor for EnvironmentValues();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v154 = &v126 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10003AE84(&qword_100159910, &qword_100114C88);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v143 = &v126 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v165 = &v126 - v58;
  v157 = v37;
  v59 = *(v37 + 44);
  v161 = a1;
  v60 = a1 + v59;
  v61 = *v60;
  LODWORD(a1) = *(v60 + 8);

  v62 = v61;
  v158 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v63 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v64 = v154;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v51 + 8))(v64, v50);
    v62 = v166;
  }

  v137 = v51;
  v138 = v50;
  v65 = *(v62 + 2);

  swift_getKeyPath();
  v166 = v65;
  v155 = sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *(v65 + 41);

  v139 = v61;
  if (v66 == 1)
  {
    v129 = v23;
    v68 = v156;
    v67 = v157;
    v128 = *(v38 + 2);
    v128(v156, v161, v157);
    v69 = (v38[80] + 32) & ~v38[80];
    v127 = v39 + 7;
    v70 = (v39 + 7 + v69) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    v72 = v163;
    *(v71 + 16) = v162;
    *(v71 + 24) = v72;
    (*(v38 + 4))(v71 + v69, v68, v67);
    *(v71 + v70) = a5;
    static Alignment.bottomTrailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v177[0]) = BYTE8(v182);
    v180 = BYTE8(v183);
    v166 = sub_1000E79CC;
    v167 = v71;
    v168 = sub_100094548;
    v169 = 0;
    v170 = v182;
    v171 = BYTE8(v182);
    *v172 = v185;
    *&v172[3] = *(&v185 + 3);
    v173 = v183;
    v174 = BYTE8(v183);
    *v175 = *v179;
    *&v175[3] = *&v179[3];
    v176 = v184;
    if (_AXSAutomationEnabled())
    {
      v73 = v132;
      static AccessibilityChildBehavior.contain.getter();
    }

    else
    {
      v73 = v132;
      static AccessibilityChildBehavior.ignore.getter();
    }

    v79 = v135;
    v135 = v38;
    v80 = sub_10003AE84(&qword_100159930, &qword_100114CC0);
    v81 = sub_100022210();
    v82 = v130;
    View.accessibilityElement(children:)();
    (*(v159 + 8))(v73, v160);

    v166 = v80;
    v167 = v81;
    swift_getOpaqueTypeConformance2();
    v83 = v133;
    View.accessibilityIdentifier(_:)();
    (*(v131 + 8))(v82, v83);

    v84 = v61;
    if ((v158 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v85 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v86 = v154;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v137 + 8))(v86, v138);
      v84 = v166;
    }

    v87 = *(v84 + 2);
    swift_getKeyPath();
    v166 = v87;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v88 = *(v87 + 32);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v89 = String.init(localized:table:bundle:locale:comment:)();
    v91 = v90;
    v92 = v134;
    sub_10000D5B8(v79, v134, &qword_100159900, &qword_100114C78);
    v93 = (v92 + *(v141 + 36));
    *v93 = v88;
    v93[1] = v89;
    v93[2] = v91;
    v94 = v136;
    sub_10000D5B8(v92, v136, &qword_100159908, &qword_100114C80);
    sub_100008E68(v94, v140, &qword_100159908, &qword_100114C80);
    swift_storeEnumTagMultiPayload();
    sub_10003AE84(&qword_100159918, &qword_100114CB8);
    sub_10002208C();
    sub_10002231C();
    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v94, &qword_100159908, &qword_100114C80);
    v38 = v135;
    v78 = v127;
    v77 = v128;
  }

  else
  {
    v74 = static HorizontalAlignment.center.getter();
    static Alignment.bottomTrailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v181[39] = v184;
    *&v181[23] = v183;
    *&v181[7] = v182;
    v75 = *&v181[16];
    v76 = v140;
    *(v140 + 17) = *v181;
    LOBYTE(v166) = 1;
    *v76 = v74;
    *(v76 + 8) = 0;
    *(v76 + 16) = 1;
    *(v76 + 33) = v75;
    *(v76 + 49) = *&v181[32];
    *(v76 + 64) = *&v181[47];
    swift_storeEnumTagMultiPayload();
    sub_10003AE84(&qword_100159918, &qword_100114CB8);
    sub_10002208C();
    sub_10002231C();
    _ConditionalContent<>.init(storage:)();
    v77 = *(v38 + 2);
    v78 = v39 + 7;
  }

  v96 = v156;
  v95 = v157;
  v77(v156, v161, v157);
  v97 = (v38[80] + 32) & ~v38[80];
  v98 = (v78 + v97) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  v100 = v163;
  *(v99 + 16) = v162;
  *(v99 + 24) = v100;
  (*(v38 + 4))(v99 + v97, v96, v95);
  *(v99 + v98) = a6;
  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  v180 = v186;
  v178 = v188;
  v166 = sub_1000238C0;
  v167 = v99;
  v168 = sub_100094548;
  v169 = 0;
  v170 = v185;
  v171 = v186;
  *v172 = *v179;
  *&v172[3] = *&v179[3];
  v173 = v187;
  v174 = v188;
  *v175 = v177[0];
  *&v175[3] = *(v177 + 3);
  v176 = v189;
  v101 = _AXSAutomationEnabled();
  v102 = v142;
  if (v101)
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    static AccessibilityChildBehavior.ignore.getter();
  }

  v103 = v139;
  v104 = sub_10003AE84(&qword_100159970, &qword_100114CD8);
  v105 = sub_1000223D4();
  v106 = v144;
  View.accessibilityElement(children:)();
  (*(v159 + 8))(v102, v160);

  v166 = v104;
  v167 = v105;
  swift_getOpaqueTypeConformance2();
  v107 = v150;
  v108 = v146;
  View.accessibilityIdentifier(_:)();
  (*(v145 + 8))(v106, v108);

  if ((v158 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v109 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v110 = v154;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v137 + 8))(v110, v138);
    v103 = v166;
  }

  v111 = *(v103 + 2);
  swift_getKeyPath();
  v166 = v111;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v112 = *(v111 + 24);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v113 = String.init(localized:table:bundle:locale:comment:)();
  v115 = v114;
  v116 = v107;
  v117 = v148;
  sub_10000D5B8(v116, v148, &qword_1001598E0, &qword_100114C58);
  v118 = (v117 + *(v149 + 36));
  *v118 = v112;
  v118[1] = v113;
  v118[2] = v115;
  v119 = v151;
  sub_10000D5B8(v117, v151, &qword_1001598E8, &qword_100114C60);
  v120 = v165;
  v121 = v143;
  sub_100008E68(v165, v143, &qword_100159910, &qword_100114C88);
  v122 = v152;
  sub_100008E68(v119, v152, &qword_1001598E8, &qword_100114C60);
  v123 = v153;
  sub_100008E68(v121, v153, &qword_100159910, &qword_100114C88);
  v124 = sub_10003AE84(&qword_100159990, &qword_100114D10);
  sub_100008E68(v122, v123 + *(v124 + 48), &qword_1001598E8, &qword_100114C60);
  sub_1000035CC(v119, &qword_1001598E8, &qword_100114C60);
  sub_1000035CC(v120, &qword_100159910, &qword_100114C88);
  sub_1000035CC(v122, &qword_1001598E8, &qword_100114C60);
  return sub_1000035CC(v121, &qword_100159910, &qword_100114C88);
}

unint64_t sub_10002208C()
{
  result = qword_100159920;
  if (!qword_100159920)
  {
    sub_10003AECC(&qword_100159908, &qword_100114C80);
    sub_100022118();
    sub_1000222C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159920);
  }

  return result;
}

unint64_t sub_100022118()
{
  result = qword_100159928;
  if (!qword_100159928)
  {
    sub_10003AECC(&qword_100159900, &qword_100114C78);
    sub_10003AECC(&qword_100159930, &qword_100114CC0);
    sub_100022210();
    swift_getOpaqueTypeConformance2();
    sub_100006650(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159928);
  }

  return result;
}

unint64_t sub_100022210()
{
  result = qword_100159938;
  if (!qword_100159938)
  {
    sub_10003AECC(&qword_100159930, &qword_100114CC0);
    sub_100004880(&qword_100159940, &qword_100159948, &qword_100114CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159938);
  }

  return result;
}

unint64_t sub_1000222C8()
{
  result = qword_100159950;
  if (!qword_100159950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159950);
  }

  return result;
}

unint64_t sub_10002231C()
{
  result = qword_100159958;
  if (!qword_100159958)
  {
    sub_10003AECC(&qword_100159918, &qword_100114CB8);
    sub_100004880(&qword_100159960, &qword_100159968, &qword_100114CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159958);
  }

  return result;
}

unint64_t sub_1000223D4()
{
  result = qword_100159978;
  if (!qword_100159978)
  {
    sub_10003AECC(&qword_100159970, &qword_100114CD8);
    sub_100004880(&qword_100159980, &qword_100159988, &qword_100114CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159978);
  }

  return result;
}

double sub_10002248C(int *a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v43 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v42 = &v39[-v8];
  v41 = type metadata accessor for CalculatorSizeClass(0);
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v2 + a1[12];
  v18 = *v17;
  v19 = *(v17 + 8);

  if ((v19 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v12);
    v18 = v44;
  }

  v21 = v2 + a1[11];
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v12);
    v22 = v44;
  }

  swift_getKeyPath();
  v44 = v22;
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v22 + 48);

  if (v25)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v40 = 1;
  }

  v26 = v2 + a1[9];
  v27 = v42;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v42);
  v28 = v2 + a1[10];
  v29 = v43;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v43);
  v30 = type metadata accessor for UserInterfaceSizeClass();
  v31 = *(*(v30 - 8) + 56);
  v31(v11, 1, 1, v30);
  v32 = *(v41 + 20);
  v31(&v11[v32], 1, 1, v30);
  sub_10006E758(v27, v11);
  sub_10006E758(v29, &v11[v32]);
  v33 = sub_1000D3C58(v18, v40 & 1, v11);
  v34 = sub_10003C9A0(v11);

  v35 = 60.0;
  if (v33 >= 60.0)
  {
    v35 = v33;
  }

  v36 = 70.0;
  if (v33 >= 70.0)
  {
    v36 = v33;
  }

  if (v34)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  sub_10006E7C8(v11);
  return v37;
}

unint64_t sub_1000229B8()
{
  result = qword_1001598C0;
  if (!qword_1001598C0)
  {
    sub_10003AECC(&qword_1001598A0, &qword_100114BA8);
    sub_100022A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001598C0);
  }

  return result;
}

unint64_t sub_100022A44()
{
  result = qword_1001598C8;
  if (!qword_1001598C8)
  {
    sub_10003AECC(&qword_1001598B0, &unk_100114C08);
    sub_100004880(&qword_1001598D0, &qword_1001598A8, &qword_100114C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001598C8);
  }

  return result;
}

uint64_t sub_100022AFC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

unint64_t sub_100022CEC()
{
  result = qword_100156A80;
  if (!qword_100156A80)
  {
    sub_10003AECC(&qword_100156A48, &qword_100110118);
    sub_100004880(&qword_100156A58, &qword_100156A50, &unk_100110120);
    sub_100090A7C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A80);
  }

  return result;
}

uint64_t sub_100022DD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100022E18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for GridRow();

  return swift_getWitnessTable();
}

uint64_t sub_100022EDC()
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

unint64_t sub_100022FBC()
{
  result = qword_100156960;
  if (!qword_100156960)
  {
    type metadata accessor for CalculateExpressionView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156960);
  }

  return result;
}

__n128 sub_100023014(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v28 = a4;
  v25 = a7;
  v26 = a3;
  v29 = a9;
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for GridRow();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  static VerticalAlignment.firstTextBaseline.getter();
  v30 = a5;
  v31 = a6;
  v32 = v25;
  v33 = v27;
  v34 = a1;
  v35 = a2;
  v36 = v26;
  v37 = v28;
  GridRow.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v18, v13, WitnessTable);
  v22 = *(v14 + 8);
  v22(v18, v13);
  sub_100020EE8(v20, v13, WitnessTable);
  return (v22)(v20, v13);
}

uint64_t sub_100023250@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v38 = a2;
  v39 = a6;
  v35 = a5;
  v37 = a3;
  v41 = a7;
  v10 = type metadata accessor for Optional();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - v16;
  v18 = *(a4 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v15);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v42 = &v34 - v24;
  a1(v23);
  v34 = a4;
  sub_100020EE8(v22, a4, a5);
  v36 = v18[1];
  v25 = v36(v22, a4);
  v38(v25);
  v46[2] = v39;
  WitnessTable = swift_getWitnessTable();
  v27 = v17;
  sub_100020EE8(v14, v10, WitnessTable);
  v28 = v40;
  v29 = *(v40 + 8);
  v29(v14, v10);
  v30 = v18[2];
  v31 = v34;
  v30(v22, v42, v34);
  v46[0] = v22;
  (*(v28 + 16))(v14, v27, v10);
  v46[1] = v14;
  v45[0] = v31;
  v45[1] = v10;
  v43 = v35;
  v44 = WitnessTable;
  sub_100022AFC(v46, 2uLL, v45);
  v29(v27, v10);
  v32 = v36;
  v36(v42, v31);
  v29(v14, v10);
  return v32(v22, v31);
}

uint64_t sub_100023558@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  return sub_100023250(*(v1 + 48), *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_10002356C(uint64_t a1, double a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for CalculatorStandardDisplayView();
  v10 = a1 + *(v9 + 44);
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v11 = v25;
  }

  v14 = *(v11 + 16);
  swift_getKeyPath();
  v25 = v14;
  sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v14 + 24);

  if (qword_100154530 != -1)
  {
    swift_once();
  }

  v16 = qword_100160B58;
  type metadata accessor for CalculatorViewModel();
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel);

  v25 = Environment.init<A>(_:)();
  v26 = v17 & 1;
  v27 = v15;
  v28 = 0;
  v29 = v16;
  v30 = 1;
  v31 = a2;
  v22 = sub_1000E68CC(v9);
  v23 = v18;
  v24 = v19;
  v21[15] = 0;
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  sub_100023954();
  sub_1000239A8();
  View.focused<A>(_:equals:)();
}

uint64_t sub_1000238D8()
{
  result = static Color.primary.getter();
  qword_100160B58 = result;
  return result;
}

uint64_t sub_1000238F8()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.projectedValue.getter();
  return v2;
}

unint64_t sub_100023954()
{
  result = qword_1001599B0;
  if (!qword_1001599B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001599B0);
  }

  return result;
}

unint64_t sub_1000239A8()
{
  result = qword_100157818;
  if (!qword_100157818)
  {
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10001BB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157818);
  }

  return result;
}

uint64_t sub_100023A2C()
{
  v1 = sub_10003AE84(&qword_100156948, &qword_10010FBC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14[-v3 - 8];
  v16 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v15[0] = *(v0 + 41);
  *(v15 + 3) = *(v0 + 11);
  v8 = *(v0 + 6);
  v9 = *(v0 + 40);
  v10 = type metadata accessor for Text.TruncationMode();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v17 = v16;
  v18 = BYTE8(v16);
  v19 = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = v16;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v9;
  *(v11 + 57) = v15[0];
  *(v11 + 60) = *(v15 + 3);
  *(v11 + 64) = v8;
  swift_retain_n();
  swift_retain_n();
  sub_100008E68(&v17, v14, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v19, v14, &qword_100158FF8, &qword_100113A78);
  return CalculateExpressionView.init(expression:isEditable:height:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)();
}

uint64_t sub_100023C10()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocObject();
}

unint64_t sub_100023C6C()
{
  result = qword_1001575C8;
  if (!qword_1001575C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001575C8);
  }

  return result;
}

void sub_100023CC0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 initializeBufferWithCopyOfBuffer for InsettableRoundendRectangle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100023CE0(uint64_t a1)
{
  sub_100023D3C(*a1, *(a1 + 8), *(a1 + 16));
  sub_100023C6C();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100023D3C(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3;
  }

  return result;
}

void sub_100023D7C(uint64_t a1, char a2)
{
  if (*a1)
  {
    if (a2)
    {
      if (qword_1001546E0 != -1)
      {
        swift_once();
      }

      v3 = qword_100160D30;
      v4 = qword_100160D30;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 16) = v3;
  }
}

unint64_t sub_100023E08()
{
  result = qword_1001576F8;
  if (!qword_1001576F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001576F8);
  }

  return result;
}

unint64_t sub_100023E60()
{
  result = qword_100156318;
  if (!qword_100156318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156318);
  }

  return result;
}

uint64_t sub_100023EB4()
{
  v1 = (type metadata accessor for GenericRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 24);

  v8 = *(v0 + v2 + 48);

  v9 = *(v0 + v2 + 64);

  v10 = *(v0 + v2 + 80);

  v11 = *(v0 + v2 + 96);

  v12 = v1[15];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v2 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_100023FD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100024014()
{
  v1 = type metadata accessor for InputAccessoryView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v4[v8], 1, v9))
    {
      (*(v10 + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v11 = *&v4[v8];
  }

  v12 = *&v4[v1[6] + 8];

  v13 = &v4[v1[7]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *&v4[v1[8] + 8];

  v17 = *&v4[v1[9]];

  v18 = *&v4[v1[11] + 8];

  v19 = &v4[v1[12]];
  v20 = *(v19 + 1);

  v21 = *(v19 + 3);

  v22 = *&v4[v1[13] + 8];

  v23 = &v4[v1[14]];
  v24 = *(v23 + 1);

  v25 = *(v23 + 3);

  return swift_deallocObject();
}

uint64_t sub_1000242CC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];
  swift_unknownObjectRelease();
  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_100024324()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_100024374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100030EDC(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1000243D8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_100024420()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v3[2];

  v6 = v3[4];

  v7 = v3[6];

  v8 = v3 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      v10 = *v8;

      v11 = *(v8 + 1);

      v12 = *(v9 + 32);
      v13 = type metadata accessor for EditMode();
      (*(*(v13 - 8) + 8))(&v8[v12], v13);
    }
  }

  else
  {
    v14 = *v8;
  }

  v15 = v1[9];
  v16 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v17 = *(*(v16 - 8) + 8);
  v17(v3 + v15, v16);
  v17(v3 + v1[10], v16);
  v17(v3 + v1[11], v16);

  return swift_deallocObject();
}

uint64_t sub_10002464C()
{
  v1 = type metadata accessor for CalculatorDetailsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v4[v8], 1, v9))
    {
      (*(v10 + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v11 = *&v4[v8];
  }

  v12 = v1[6];
  sub_10003AE84(&qword_100154FA0, &unk_100110DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    (*(*(v13 - 8) + 8))(&v4[v12], v13);
  }

  else
  {
    v14 = *&v4[v12];
  }

  v15 = *&v4[v1[7]];

  v16 = *&v4[v1[8]];

  return swift_deallocObject();
}

uint64_t sub_1000248F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1000309E0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_100024948()
{
  v1 = type metadata accessor for CalculatorKeypadView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v4[v8], 1, v9))
    {
      (*(v10 + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v11 = *&v4[v8];
  }

  v12 = *&v4[v1[6]];

  v13 = *&v4[v1[7]];

  v14 = *&v4[v1[8]];

  v15 = &v4[v1[10]];
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *&v4[v1[11] + 16];

  v19 = *&v4[v1[12] + 16];

  v20 = *&v4[v1[13] + 8];

  return swift_deallocObject();
}

uint64_t sub_100024BD8()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_100024C30()
{
  v1 = (type metadata accessor for ModeMenuView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_100030EDC(*v3, *(v3 + 8));
  v4 = *(v3 + 16);

  v5 = v1[8];
  v6 = type metadata accessor for LayoutDirection();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v3 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_100024D38()
{
  v1 = (type metadata accessor for CalculatorHistoryView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3[2];

  v6 = v3[4];

  v7 = v3[5];

  v8 = v3 + v1[9];
  v9 = type metadata accessor for EditMode();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *&v8[*(sub_10003AE84(&qword_100157F98, qword_100112550) + 28)];

  v11 = *(v3 + v1[10] + 8);

  v12 = *(v3 + v1[11] + 8);

  v13 = *(v3 + v1[12] + 8);

  v14 = v1[13];
  v15 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v16 = *(*(v15 - 8) + 8);
  v16(v3 + v14, v15);
  v16(v3 + v1[14], v15);

  return swift_deallocObject();
}

uint64_t sub_100024F00()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v27 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = *(v2 + 2);

  v5 = *(v2 + 4);

  v6 = *(v2 + 6);

  v7 = *(v2 + 7);

  v8 = v1[9];
  v9 = type metadata accessor for UserInterfaceSizeClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(&v2[v8], 1, v9))
  {
    (*(v10 + 8))(&v2[v8], v9);
  }

  v12 = v1[10];
  if (!v11(&v2[v12], 1, v9))
  {
    (*(v10 + 8))(&v2[v12], v9);
  }

  v13 = &v2[v1[11]];
  v14 = *(v13 + 1);

  v15 = *(v13 + 2);

  v16 = &v2[v1[12]];
  v17 = *(v16 + 1);

  v18 = *(v16 + 2);

  v19 = *&v2[v1[13] + 8];

  v20 = &v2[v1[14]];
  v21 = *(v20 + 1);

  v22 = *(v20 + 2);

  v23 = v1[15];
  v24 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v25 = *(*(v24 - 8) + 8);
  v25(&v2[v23], v24);
  v25(&v2[v1[16]], v24);
  v25(&v2[v1[17]], v24);
  v25(&v2[v1[18]], v24);
  v25(&v2[v1[19]], v24);
  v25(&v2[v1[20]], v24);

  return swift_deallocObject();
}

uint64_t sub_1000251BC()
{
  v1 = type metadata accessor for CalculatorAppContentView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v2, 1, v6))
    {
      (*(v7 + 8))(v0 + v2, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v5[v9], 1, v10))
    {
      (*(v11 + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v12 = *&v5[v9];
  }

  v13 = &v5[v1[6]];
  v14 = sub_10003AE84(&qword_1001593A0, &qword_100114170);
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *&v13[*(sub_10003AE84(&qword_1001593A8, &qword_100114178) + 28)];

  v16 = *&v5[v1[7]];

  return swift_deallocObject();
}

uint64_t sub_100025460()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CalculatorStandardDisplayView();
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

  v17 = (v5 + v3[13]);
  v18 = *v17;

  v19 = v17[1];

  return swift_deallocObject();
}

uint64_t sub_1000256C4()
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

uint64_t sub_10002599C()
{
  v1 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = *(v0 + 56);
  v2 = type metadata accessor for CalculatorPresentationView();
  v3 = (*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v18 - 8) + 8))(v0 + v3 + v2[13]);
  v7 = v2[14];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
    v10 = *(v6 + v7);
  }

  v11 = v2[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
    v14 = *(v6 + v11);
  }

  v15 = *(v6 + v2[16]);

  v16 = *(v6 + v2[17]);

  return swift_deallocObject();
}

_DWORD *initializeBufferWithCopyOfBuffer for CalculatorKeypadButton(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for CalculatorButtonRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 93 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 93) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA3)
  {
    v4 = 0;
  }

  if (a2 > 0xA2)
  {
    v5 = ((a2 - 163) >> 8) + 1;
    *result = a2 + 93;
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
    *result = a2 + 93;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100025D2C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x10000) != 0)
  {
    if (qword_100154510 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
    {
      if (v1 > 0x24u)
      {
        if (v1 == 37)
        {
          return 38;
        }

        else if (v1 == 56)
        {
          return 31;
        }
      }

      else if (v1 == 9)
      {
        return 93;
      }

      else if (v1 == 31)
      {
        return 56;
      }

      return v1;
    }
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_16;
  }

  if (qword_100154508 != -1)
  {
    swift_once();
  }

  if (!sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
  {
LABEL_16:
    if ((v1 & 0x1000000FFLL) == 0x100000003)
    {
      v3 = 35;
    }

    else
    {
      v3 = v1;
    }

    if ((v1 & 0x10000FF) == 0x1000001)
    {
      return 2;
    }

    else
    {
      return v3;
    }
  }

  return CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
}

uint64_t sub_100025E90(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.allClear.getter();
      break;
    case 2:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.clear.getter();
      break;
    case 3:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.negate.getter();
      break;
    case 4:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.percent.getter();
      break;
    case 5:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.divide.getter();
      break;
    case 6:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.multiply.getter();
      break;
    case 7:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.subtract.getter();
      break;
    case 8:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.add.getter();
      break;
    case 9:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.equals.getter();
      break;
    case 10:
    case 54:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.decimal.getter();
      break;
    case 12:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit0.getter();
      break;
    case 13:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit1.getter();
      break;
    case 14:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit2.getter();
      break;
    case 15:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit3.getter();
      break;
    case 16:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit4.getter();
      break;
    case 17:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit5.getter();
      break;
    case 18:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit6.getter();
      break;
    case 19:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit7.getter();
      break;
    case 20:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit8.getter();
      break;
    case 21:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit9.getter();
      break;
    case 22:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.openParenthesis.getter();
      break;
    case 23:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.closeParenthesis.getter();
      break;
    case 29:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.square.getter();
      break;
    case 30:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.cube.getter();
      break;
    case 31:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.power.getter();
      break;
    case 32:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBaseEuler.getter();
      break;
    case 33:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBase10.getter();
      break;
    case 34:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.reciprocal.getter();
      break;
    case 35:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.squareRoot.getter();
      break;
    case 36:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.cubeRoot.getter();
      break;
    case 37:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.root.getter();
      break;
    case 38:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.reverseRoot.getter();
      break;
    case 39:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmNatural.getter();
      break;
    case 40:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmBase10.getter();
      break;
    case 41:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.factorial.getter();
      break;
    case 42:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.sine.getter();
      break;
    case 43:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.cosine.getter();
      break;
    case 44:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.tangent.getter();
      break;
    case 45:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.eulerNumber.getter();
      break;
    case 46:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.ee.getter();
      break;
    case 48:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.hyperbolicSine.getter();
      break;
    case 49:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.hyperbolicCosine.getter();
      break;
    case 50:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.hyperbolicTangent.getter();
      break;
    case 51:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.pi.getter();
      break;
    case 52:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.random.getter();
      break;
    case 53:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.delete.getter();
      break;
    case 56:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBaseCustom.getter();
      break;
    case 57:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBase2.getter();
      break;
    case 58:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmBaseCustom.getter();
      break;
    case 59:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmBase2.getter();
      break;
    case 60:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseSine.getter();
      break;
    case 61:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseCosine.getter();
      break;
    case 62:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseTangent.getter();
      break;
    case 63:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseHyperbolicSine.getter();
      break;
    case 64:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseHyperbolicCosine.getter();
      break;
    case 65:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseHyperbolicTangent.getter();
      break;
    case 66:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitA.getter();
      break;
    case 67:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitB.getter();
      break;
    case 68:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitC.getter();
      break;
    case 69:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitD.getter();
      break;
    case 70:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitE.getter();
      break;
    case 71:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitF.getter();
      break;
    case 72:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitFF.getter();
      break;
    case 73:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit00.getter();
      break;
    case 74:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.and.getter();
      break;
    case 75:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.or.getter();
      break;
    case 76:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.nor.getter();
      break;
    case 77:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.xor.getter();
      break;
    case 78:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rightShift.getter();
      break;
    case 79:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.leftShift.getter();
      break;
    case 80:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rightShiftCustom.getter();
      break;
    case 81:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.leftShiftCustom.getter();
      break;
    case 82:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rightRotate.getter();
      break;
    case 83:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.leftRotate.getter();
      break;
    case 84:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.byteFlip.getter();
      break;
    case 85:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.wordFlip.getter();
      break;
    case 86:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.neg.getter();
      break;
    case 87:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.not.getter();
      break;
    case 88:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.mod.getter();
      break;
    case 89:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.drop.getter();
      break;
    case 90:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.swap.getter();
      break;
    case 91:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rollOut.getter();
      break;
    case 92:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rollIn.getter();
      break;
    case 93:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.enter.getter();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000266E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.contains(_:)();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for CalculateExpression.Operation(), v5 = *(a2 + 40), sub_1000065C0(&qword_100157708, &type metadata accessor for CalculateExpression.Operation), v6 = dispatch thunk of Hashable._rawHashValue(seed:)(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      sub_1000065C0(&qword_100154FC8, &type metadata accessor for CalculateExpression.Operation);
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = dispatch thunk of static Equatable.== infix(_:_:)();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t sub_100026874(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002693C()
{
  result = qword_100157398;
  if (!qword_100157398)
  {
    sub_10003AECC(&qword_100157388, &qword_1001115D0);
    sub_1000269F8();
    sub_1000999E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157398);
  }

  return result;
}

unint64_t sub_1000269F8()
{
  result = qword_1001573A0;
  if (!qword_1001573A0)
  {
    sub_10003AECC(&qword_1001573A8, &qword_1001115E0);
    sub_10003AECC(&qword_1001573B0, &qword_1001115E8);
    sub_100004880(&qword_1001573B8, &qword_1001573B0, &qword_1001115E8);
    sub_100026B34();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573A0);
  }

  return result;
}

unint64_t sub_100026B34()
{
  result = qword_1001573C0;
  if (!qword_1001573C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573C0);
  }

  return result;
}

unint64_t sub_100026BA8()
{
  result = qword_1001584B0;
  if (!qword_1001584B0)
  {
    sub_10003AECC(&qword_100158408, &qword_100112D00);
    sub_100026C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584B0);
  }

  return result;
}

unint64_t sub_100026C34()
{
  result = qword_1001584B8;
  if (!qword_1001584B8)
  {
    sub_10003AECC(&qword_100158400, &qword_100112CF8);
    sub_100026CEC();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584B8);
  }

  return result;
}

unint64_t sub_100026CEC()
{
  result = qword_1001584C0;
  if (!qword_1001584C0)
  {
    sub_10003AECC(&qword_100158450, &qword_100112DA8);
    sub_100026DA4();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584C0);
  }

  return result;
}

unint64_t sub_100026DA4()
{
  result = qword_1001584C8;
  if (!qword_1001584C8)
  {
    sub_10003AECC(&qword_100158448, &qword_100112D70);
    sub_1000B8F8C(&qword_1001584D0, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584C8);
  }

  return result;
}

void sub_100026EA4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for LayoutSubviews();
  sub_10002703C(&qword_1001564C8, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v16 != v15)
  {
    sub_100027084(a5, a1, a2 & 1, a3, a4 & 1);
    v13 = *(v6 + 16);
    if (__OFSUB__(v13, 1))
    {
      __break(1u);
    }

    else if (!__OFSUB__(*(v6 + 8), 1))
    {
      v14 = v12 * v13 + *(v6 + 24) * (v13 - 1);
      return;
    }

    __break(1u);
  }
}

void sub_100026FF0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  sub_100026EA4(a1, a2 & 1, a3, a4 & 1, a5);
}

uint64_t sub_10002703C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100027084(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v59) = a5;
  v60 = *&a1;
  v62 = type metadata accessor for LayoutSubview();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v62);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LayoutSubviews();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10003AE84(&qword_1001564C0, &qword_10010F720);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  if ((a3 & 1) != 0 || (a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v21 = INFINITY;
  }

  else
  {
    v22 = *(v5 + 2);
    if (__OFSUB__(v22, 1))
    {
LABEL_39:
      __break(1u);
      return;
    }

    v23 = *&a2 - v5[3] * (v22 - 1);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    v21 = v23 / v22;
  }

  v24 = *(v5 + 1);
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_39;
  }

  v25 = *&a4;
  if (LOBYTE(v59))
  {
    v25 = 10.0;
  }

  v56 = v5;
  v26 = v25 - v5[3] * (v24 - 1);
  v27 = 0.0;
  if (v26 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v26;
  }

  (*(v13 + 16))(v16, COERCE_DOUBLE(*&v60), v12);
  sub_10002703C(&unk_1001564D0, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v29 = *(v17 + 36);
  sub_10002703C(&qword_1001564C8, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v20[v29] == *&v64[0])
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v59 = v28 / v24;
    v60 = v21;
    v57 = (v9 + 8);
    v58 = (v9 + 16);
    v30 = &_swiftEmptyArrayStorage;
    v49 = v62;
    do
    {
      v50 = dispatch thunk of Collection.subscript.read();
      v51 = v61;
      (*v58)(v61);
      v50(v64, 0);
      dispatch thunk of Collection.formIndex(after:)();
      LOBYTE(v64[0]) = 0;
      v63 = 0;
      LayoutSubview.sizeThatFits(_:)();
      v53 = v52;
      (*v57)(v51, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10002BA10(0, *(v30 + 2) + 1, 1, v30);
      }

      v55 = *(v30 + 2);
      v54 = *(v30 + 3);
      if (v55 >= v54 >> 1)
      {
        v30 = sub_10002BA10((v54 > 1), v55 + 1, 1, v30);
      }

      *(v30 + 2) = v55 + 1;
      *&v30[8 * v55 + 32] = v53;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v20[v29] != *&v64[0]);
  }

  sub_10002BDE8(v20);
  v31 = *(v30 + 2);
  v32 = v56;
  if (v31)
  {
    v27 = *(v30 + 4);
    v33 = v31 - 1;
    if (v33)
    {
      v34 = (v30 + 40);
      do
      {
        v35 = *v34++;
        v36 = v35;
        if (v27 < v35)
        {
          v27 = v36;
        }

        --v33;
      }

      while (v33);
    }
  }

  v37 = v32[5];
  if (v27 > v37)
  {
    v37 = v27;
  }

  if (v32[4] < v37)
  {
    v38 = *(v32 + 4);
  }

  v39 = objc_opt_self();
  v40 = [v39 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (v41)
  {
    v42 = *v32;
    v43 = [objc_opt_self() mainScreen];
    [v43 bounds];

    sub_10003C664();
  }

  v44 = [v39 currentDevice];
  v45 = [v44 userInterfaceIdiom];

  if (v45 == 1)
  {
    v46 = *v32;
    swift_getKeyPath();
    v64[0] = v46;
    sub_10002703C(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = *(*&v46 + 96);
    v48 = [objc_opt_self() mainScreen];
    [v48 bounds];
  }
}

uint64_t sub_1000276EC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100027704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100027728()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  sub_10003AE84(&qword_100157380, &qword_1001115C8);
  sub_10003AECC(&qword_100157388, &qword_1001115D0);
  sub_10003AECC(&qword_100157390, &qword_1001115D8);
  sub_10002693C();
  sub_100004880(&qword_1001573D8, &qword_100157390, &qword_1001115D8);
  swift_getOpaqueTypeConformance2();
  return GlassEffectContainer.init(spacing:content:)();
}

unint64_t sub_1000278A0()
{
  result = qword_1001573F0;
  if (!qword_1001573F0)
  {
    sub_10003AECC(&qword_1001573F8, &qword_100111600);
    sub_1000999E8(&qword_100157400, &type metadata accessor for CalculateExpression.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573F0);
  }

  return result;
}

Swift::Int sub_100027954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

BOOL sub_100027A90(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_100027B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001573F8, &qword_100111600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002866C(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      return 0x7261656C436C6C41;
    case 2:
      return 0x7261656C43;
    case 3:
      return 0x65746167654ELL;
    case 4:
      v4 = 1668441424;
      return v4 | 0x746E6500000000;
    case 5:
      return 0x656469766944;
    case 6:
      return 0x796C7069746C754DLL;
    case 7:
      return 0x7463617274627553;
    case 8:
      return 6579265;
    case 9:
      return 0x736C61757145;
    case 10:
      return 0x6C616D69636544;
    case 11:
      return 1701080909;
    case 12:
      return 1869768026;
    case 13:
      return 6647375;
    case 14:
      return 7305044;
    case 15:
      return 0x6565726854;
    case 16:
      return 1920298822;
    case 17:
      return 1702259014;
    case 18:
      return 7891283;
    case 19:
      return 0x6E65766553;
    case 20:
      return 0x7468676945;
    case 21:
      return 1701734734;
    case 22:
      return 0x657261506E65704FLL;
    case 23:
      return 0xD000000000000010;
    case 24:
      return 0x6C4379726F6D654DLL;
    case 25:
      return 0x644179726F6D654DLL;
    case 26:
      return 0x755379726F6D654DLL;
    case 27:
      return 0x655279726F6D654DLL;
    case 28:
      return 0x7466696853;
    case 29:
      return 0x657261757153;
    case 30:
      return 1700951363;
    case 31:
      return 0x7265776F50;
    case 32:
      return 0x6E65746E6F707845;
    case 33:
    case 50:
    case 80:
      return 0xD000000000000011;
    case 34:
      return 0x636F727069636552;
    case 35:
      return 0x6F52657261757153;
    case 36:
      return 0x746F6F5265627543;
    case 37:
      return 1953460050;
    case 38:
      return 0x746F6F5258;
    case 39:
      return 0xD000000000000010;
    case 40:
    case 59:
      return 0x6874697261676F4CLL;
    case 41:
      return 0x6169726F74636146;
    case 42:
      return 1701734739;
    case 43:
      return 0x656E69736F43;
    case 44:
      v4 = 1735287124;
      return v4 | 0x746E6500000000;
    case 45:
      return 0x6D754E72656C7545;
    case 46:
      return 0x776F5073656D6954;
    case 47:
      return 0x736E6169646152;
    case 48:
      return 0x6C6F627265707948;
    case 49:
      return 0xD000000000000010;
    case 51:
      return 26960;
    case 52:
      return 0x6D6F646E6152;
    case 53:
      return 0x6574656C6544;
    case 54:
      return 0x616D6D6F43;
    case 55:
      return 0x73656572676544;
    case 56:
      return 0xD000000000000010;
    case 57:
      return 0xD000000000000010;
    case 58:
      return 0x6874697261676F4CLL;
    case 60:
      return 0x5365737265766E49;
    case 61:
      return 0x4365737265766E49;
    case 62:
      return 0x5465737265766E49;
    case 63:
      return 0xD000000000000015;
    case 64:
      return 0xD000000000000017;
    case 65:
      return 0xD000000000000018;
    case 66:
      return 65;
    case 67:
      return 66;
    case 68:
      return 67;
    case 69:
      return 68;
    case 70:
      return 69;
    case 71:
      return 70;
    case 72:
      return 17990;
    case 73:
      return 12336;
    case 74:
      return 0x4165736977746942;
    case 75:
      return 0x4F65736977746942;
    case 76:
      return 0x4E65736977746942;
    case 77:
      return 0x5865736977746942;
    case 78:
      return 0xD000000000000010;
    case 79:
      return 0x666968537466654CLL;
    case 81:
      return 0xD000000000000010;
    case 82:
      return 0x6952657461746F52;
    case 83:
      return 0x654C657461746F52;
    case 84:
      v3 = 1702132034;
      goto LABEL_69;
    case 85:
      v3 = 1685221207;
LABEL_69:
      result = v3 | 0x70696C4600000000;
      break;
    case 86:
      result = 6776174;
      break;
    case 87:
      result = 7630702;
      break;
    case 88:
      result = 0x73756C75646F4DLL;
      break;
    case 89:
      result = 1886351940;
      break;
    case 90:
      result = 1885435731;
      break;
    case 91:
      result = 0x70556C6C6F52;
      break;
    case 92:
      result = 0x6E776F446C6C6F52;
      break;
    case 93:
      result = 0x7265746E45;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100029718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v171 = a2;
  v170 = type metadata accessor for GlassEffectTransition();
  v169 = *(v170 - 8);
  v5 = *(v169 + 64);
  __chkstk_darwin(v170);
  v168 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Capsule();
  v7 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v166 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Material._GlassVariant();
  v148 = *(v149 - 8);
  v9 = *(v148 + 64);
  v10 = __chkstk_darwin(v149);
  v143 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v144 = &v134 - v13;
  __chkstk_darwin(v12);
  v145 = &v134 - v14;
  v147 = type metadata accessor for Material();
  v146 = *(v147 - 8);
  v15 = *(v146 + 64);
  __chkstk_darwin(v147);
  v142 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for _Glass();
  v164 = *(v165 - 8);
  v17 = *(v164 + 64);
  v18 = __chkstk_darwin(v165);
  v178 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v162 = &v134 - v21;
  __chkstk_darwin(v20);
  v163 = &v134 - v22;
  v179 = type metadata accessor for LiftHoverEffect();
  v141 = *(v179 - 8);
  v23 = *(v141 + 64);
  __chkstk_darwin(v179);
  v140 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EnvironmentValues();
  v173 = *(v25 - 8);
  v174 = v25;
  v26 = *(v173 + 64);
  __chkstk_darwin(v25);
  v172 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v134 - v30;
  v32 = sub_10003AE84(&qword_100158400, &qword_100112CF8);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v134 - v34;
  v139 = sub_10003AE84(&qword_100158408, &qword_100112D00);
  v36 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v38 = &v134 - v37;
  v137 = sub_10003AE84(&qword_100158410, &qword_100112D08);
  v39 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v41 = &v134 - v40;
  v138 = sub_10003AE84(&qword_100158418, &qword_100112D10);
  v42 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v44 = &v134 - v43;
  v176 = sub_10003AE84(&qword_100158420, &qword_100112D18);
  v45 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v47 = &v134 - v46;
  v153 = sub_10003AE84(&qword_100158428, &qword_100112D20);
  v151 = *(v153 - 8);
  v48 = *(v151 + 64);
  __chkstk_darwin(v153);
  v177 = &v134 - v49;
  v157 = sub_10003AE84(&qword_100158430, &qword_100112D28);
  v154 = *(v157 - 8);
  v50 = *(v154 + 64);
  __chkstk_darwin(v157);
  v152 = &v134 - v51;
  v161 = sub_10003AE84(&qword_100158438, &qword_100112D30);
  v159 = *(v161 - 8);
  v52 = *(v159 + 64);
  __chkstk_darwin(v161);
  v156 = &v134 - v53;
  v160 = sub_10003AE84(&qword_100158440, &qword_100112D38);
  v158 = *(v160 - 8);
  v54 = *(v158 + 64);
  __chkstk_darwin(v160);
  v155 = &v134 - v55;
  v180 = a1;
  ButtonStyleConfiguration.label.getter();
  v56 = 0x1000000000000;
  if (!*(v3 + 6))
  {
    v56 = 0;
  }

  v57 = 0x10000000000;
  if (!*(v3 + 5))
  {
    v57 = 0;
  }

  v58 = &_mh_execute_header;
  if (!*(v3 + 4))
  {
    v58 = 0;
  }

  v59 = 0x1000000;
  if (!*(v3 + 3))
  {
    v59 = 0;
  }

  v60 = 0x10000;
  if (!*(v3 + 2))
  {
    v60 = 0;
  }

  v61 = 256;
  if (!*(v3 + 1))
  {
    v61 = 0;
  }

  v150 = v61 | *v3 | v60 | v59 | v58 | v57 | v56;
  v62 = sub_100025D2C(v150);
  if ((v62 - 1) >= 0x15)
  {
    v63 = v62 - 53;
    if (v63 > 0x28 || ((1 << v63) & 0x100001FE003) == 0 && ((1 << v63) & 0xF000000000) == 0)
    {
      v3[2];
      v3[1];
    }
  }

  static Font.Weight.regular.getter();
  v64 = type metadata accessor for Font.Design();
  (*(*(v64 - 8) + 56))(v31, 1, 1, v64);
  v65 = static Font.system(size:weight:design:)();
  sub_1000035CC(v31, &qword_1001567E0, &qword_10010F970);
  KeyPath = swift_getKeyPath();
  v67 = &v35[*(sub_10003AE84(&qword_100158448, &qword_100112D70) + 36)];
  *v67 = KeyPath;
  v67[1] = v65;
  v68 = swift_getKeyPath();
  v69 = &v35[*(sub_10003AE84(&qword_100158450, &qword_100112DA8) + 36)];
  *v69 = v68;
  v69[1] = 0x3FE4CCCCCCCCCCCDLL;
  v70 = swift_getKeyPath();
  v71 = &v35[*(v32 + 36)];
  *v71 = v70;
  *(v71 + 1) = 1;
  v71[16] = 0;
  v72 = *(v3 + 4);
  v187 = v72;
  v188 = *(v3 + 40);
  v175 = v3;
  if ((v188 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v73 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v74 = v172;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v187, &qword_100158458, &unk_100112DE0);
    (*(v173 + 8))(v74, v174);
    LOBYTE(v72) = v181;
  }

  if (v72)
  {
    v75 = 1.0;
  }

  else
  {
    v75 = 0.4;
  }

  sub_10000D5B8(v35, v38, &qword_100158400, &qword_100112CF8);
  *&v38[*(v139 + 36)] = v75;
  v76 = &v41[*(v137 + 36)];
  v77 = v76 + *(sub_10003AE84(&qword_100158460, &qword_100115570) + 28);
  static ButtonBorderShape.capsule.getter();
  *v76 = swift_getKeyPath();
  sub_10000D5B8(v38, v41, &qword_100158408, &qword_100112D00);
  v78 = &v44[*(v138 + 36)];
  v79 = &v78[*(sub_10003AE84(&qword_100158468, &unk_100112E20) + 40)];
  static ContentShapeKinds.interaction.getter();
  *v78 = 0;
  sub_10000D5B8(v41, v44, &qword_100158410, &qword_100112D08);
  sub_10003AE84(&qword_100158470, &qword_100114980);
  v80 = *(type metadata accessor for ContentShapeKinds() - 8);
  v81 = *(v80 + 72);
  v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10010DBE0;
  static ContentShapeKinds.hoverEffect.getter();
  static ContentShapeKinds.accessibility.getter();
  v181 = v83;
  v136 = v44;
  v84 = &v47[*(v176 + 36)];
  v85 = sub_10003AE84(&qword_100158478, &unk_100112E30);
  v86 = *(v85 + 40);
  sub_1000B8F8C(&qword_100158480, &type metadata accessor for ContentShapeKinds);
  sub_10003AE84(&qword_100158488, &qword_100114990);
  sub_100004880(&qword_100158490, &qword_100158488, &qword_100114990);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v87 = enum case for RoundedCornerStyle.continuous(_:);
  v88 = type metadata accessor for RoundedCornerStyle();
  v89 = *(v88 - 8);
  v90 = *(v89 + 104);
  LODWORD(v139) = v87;
  v138 = v90;
  v137 = v89 + 104;
  v90(v84, v87, v88);
  v84[*(v85 + 36)] = 0;
  sub_10000D5B8(v136, v47, &qword_100158418, &qword_100112D10);
  v91 = v140;
  static CustomHoverEffect<>.lift.getter();
  v92 = sub_1000B822C();
  v93 = sub_1000B8F8C(&qword_100158500, &type metadata accessor for LiftHoverEffect);
  v94 = v179;
  v136 = v92;
  v135 = v93;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v141 + 8))(v91, v94);
  sub_1000035CC(v47, &qword_100158420, &qword_100112D18);
  v95 = v143;
  static Material._GlassVariant.regular.getter();
  static Color.black.getter();
  v96 = v144;
  Material._GlassVariant.fixedBackgroundColor(_:)();

  v97 = *(v148 + 8);
  v98 = v149;
  v97(v95, v149);
  v99 = v145;
  Material._GlassVariant.sharpTinting(_:)();
  v97(v96, v98);
  v100 = v142;
  static Material._glass(_:)();
  v97(v99, v98);
  static _Glass.explicit(_:)();
  (*(v146 + 8))(v100, v147);
  v186 = *(v175 + 88);
  v185 = *(v175 + 10);
  v101 = v185;
  v102 = v186;

  v103 = v101;
  if ((v102 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v104 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v105 = v172;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v185, &qword_1001556F8, &qword_10010D930);
    (*(v173 + 8))(v105, v174);
    v103 = v181;
  }

  swift_getKeyPath();
  v181 = v103;
  sub_1000B8F8C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v106 = *(v103 + 16);

  if (v106 == 1)
  {

    if ((v102 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v107 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v108 = v172;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v185, &qword_1001556F8, &qword_10010D930);
      (*(v173 + 8))(v108, v174);
      v101 = v181;
    }

    swift_getKeyPath();
    v181 = v101;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v109 = *(v101 + 17);
  }

  v110 = v162;
  v111 = v178;
  _Glass.interactive(_:)();
  v112 = *(v164 + 8);
  v113 = v165;
  v112(v111, v165);
  v174 = v112;
  v114 = ButtonStyleConfiguration.isPressed.getter();
  v115 = sub_1000B7F84(v114 & 1);
  sub_1000B8CD4(v115);

  v116 = v163;
  _Glass.tintColor(_:)();

  v112(v110, v113);
  v117 = v166;
  (v138)(v166, v139, v88);
  v181 = v176;
  v182 = v179;
  v183 = v136;
  v184 = v135;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = sub_1000B8F8C(&qword_100158508, &type metadata accessor for Capsule);
  v120 = v152;
  v121 = v153;
  v122 = v167;
  v123 = v177;
  View._glassEffect<A>(_:in:)();
  sub_10002B1C0(v117);
  v174(v116, v113);
  (*(v151 + 8))(v123, v121);
  v124 = v168;
  static GlassEffectTransition.identity.getter();
  v181 = v121;
  v182 = v122;
  v183 = OpaqueTypeConformance2;
  v184 = v119;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = v156;
  v127 = v157;
  View.glassEffectTransition(_:)();
  (*(v169 + 8))(v124, v170);
  (*(v154 + 8))(v120, v127);
  v128 = v150;
  sub_100025D2C(v150);
  sub_10002B21C();
  v181 = v127;
  v182 = v125;
  swift_getOpaqueTypeConformance2();
  v129 = v155;
  v130 = v161;
  View.help(_:)();

  (*(v159 + 8))(v126, v130);
  v131 = sub_100025D2C(v128);
  if ((ButtonStyleConfiguration.isPressed.getter() & 1) == 0)
  {
    v131 = 94;
  }

  v132 = v171;
  (*(v158 + 32))(v171, v129, v160);
  result = sub_10003AE84(&qword_100158510, &qword_100112E78);
  *(v132 + *(result + 36)) = v131;
  return result;
}

uint64_t sub_10002ACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  *v8 = v2[4];
  *&v8[9] = *(v2 + 73);
  v4 = *v2;
  v5 = v2[1];
  return sub_100029718(a1, a2);
}

BOOL sub_10002AD34(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10002AD64(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (qword_100154518 != -1)
  {
    swift_once();
  }

  if (!sub_100027A90(v1, static CalculatorButtonRepresentable.swappableButtons))
  {
LABEL_5:
    if ((v1 & 0x1000000FFLL) != 0x100000003)
    {
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_30;
      }

      if (qword_100154510 != -1)
      {
        swift_once();
      }

      if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
      {
        if (v1 <= 0x24u)
        {
          if (v1 == 9)
          {
            goto LABEL_59;
          }

          if (v1 != 31)
          {
            goto LABEL_44;
          }

LABEL_62:
          if (qword_100154650 != -1)
          {
            swift_once();
          }

          v3 = &qword_100160C78;
          return *v3;
        }

        if (v1 == 37 || v1 == 56)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_39;
        }

LABEL_30:
        if (qword_100154508 != -1)
        {
          swift_once();
        }

        if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
        {
          LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
        }

        else
        {
LABEL_39:
          if ((v1 & 0x10000FF) == 0x1000001)
          {
            goto LABEL_40;
          }

          if ((v1 & 0x1000000FFLL) == 0x100000003)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_44:
      v2 = v1;
      if (v1 > 0x36u)
      {
        goto LABEL_48;
      }

      if (((1 << v1) & 0x400000003FFC08) == 0)
      {
        if (((1 << v1) & 0x3E0) == 0)
        {
          if (((1 << v1) & 0x20000000000016) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }

LABEL_59:
        if (qword_100154620 != -1)
        {
          swift_once();
        }

        v3 = &qword_100160C48;
        return *v3;
      }

LABEL_49:
      if (qword_100154638 != -1)
      {
        swift_once();
      }

      v3 = &qword_100160C60;
      return *v3;
    }
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_25;
  }

  if (qword_100154510 != -1)
  {
    swift_once();
  }

  if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
  {
    if (v1 > 0x24u)
    {
      if (v1 == 37 || v1 == 56)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v1 == 9)
      {
        goto LABEL_59;
      }

      if (v1 == 31)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (qword_100154508 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
    {
      LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
    }

    else
    {
LABEL_33:
      if ((v1 & 0x10000FF) == 0x1000001 || (v1 & 0x1000000FFLL) == 0x100000003)
      {
        goto LABEL_40;
      }
    }
  }

  v2 = v1;
  if (v1 > 0x36u)
  {
    goto LABEL_48;
  }

  if (((1 << v1) & 0x400000003FF408) != 0)
  {
    goto LABEL_49;
  }

  if (((1 << v1) & 0x3E0) != 0)
  {
    goto LABEL_59;
  }

  if (((1 << v1) & 0x800000016) == 0)
  {
LABEL_48:
    if ((v2 - 66) < 8)
    {
      goto LABEL_49;
    }

    if (v2 == 93)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

LABEL_40:
  if (qword_100154608 != -1)
  {
    swift_once();
  }

  v3 = &qword_100160C30;
  return *v3;
}

uint64_t sub_10002B1C0(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10002BA10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100157D48, qword_100112450);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10002BB14(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v6 = a4;
    v7 = a3;
    swift_once();
    a3 = v7;
    a4 = v6;
  }

  *a4 = *a3;
}

uint64_t sub_10002BBA0()
{
  v0 = type metadata accessor for ColorResource();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100154738 != -1)
  {
    swift_once();
  }

  v5 = sub_1000048C8(v0, qword_100160DA0);
  (*(v1 + 16))(v4, v5, v0);
  result = Color.init(_:)();
  qword_100160B50 = result;
  return result;
}

uint64_t sub_10002BCAC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100004078(v0, qword_100160DA0);
  sub_1000048C8(v0, qword_100160DA0);
  if (qword_100154730 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A5C8;
  return ColorResource.init(name:bundle:)();
}

id sub_10002BD58()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10015A5C8 = result;
  return result;
}

uint64_t sub_10002BDE8(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001564C0, &qword_10010F720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BEC8(uint64_t a1, char a2, void (**a3)(char *), int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  LODWORD(v41) = a4;
  v42 = *&a1;
  v43 = a3;
  v45 = type metadata accessor for LayoutSubview();
  v17 = *(v45 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v45);
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10003AE84(&qword_1001564C0, &qword_10010F720);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  v24 = type metadata accessor for LayoutSubviews();
  sub_10002703C(&qword_1001564C8, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v46[0] != v47)
  {
    v48.origin.x = a6;
    v48.origin.y = a7;
    v48.size.width = a8;
    v48.size.height = a9;
    MinX = CGRectGetMinX(v48);
    v49.origin.x = a6;
    v49.origin.y = a7;
    v49.size.width = a8;
    v49.size.height = a9;
    MinY = CGRectGetMinY(v49);
    LOBYTE(v46[0]) = a2 & 1;
    LOBYTE(v47) = LOBYTE(v41) & 1;
    sub_100027084(a5, *&v42, a2 & 1, v43, LOBYTE(v41) & 1);
    v29 = v28;
    v31 = v30;
    (*(*(v24 - 8) + 16))(v23, a5, v24);
    v32 = *(v20 + 36);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v23[v32] != v46[0])
    {
      v43 = (v17 + 16);
      v41 = v31;
      v42 = v29;
      v33 = (v17 + 8);
      while (2)
      {
        v34 = -1;
        while (1)
        {
          v35 = dispatch thunk of Collection.subscript.read();
          v36 = v44;
          v37 = v45;
          (*v43)(v44);
          v35(v46, 0);
          dispatch thunk of Collection.formIndex(after:)();
          static UnitPoint.topLeading.getter();
          LOBYTE(v46[0]) = 0;
          LOBYTE(v47) = 0;
          LayoutSubview.place(at:anchor:proposal:)();
          result = (*v33)(v36, v37);
          v38 = *(v10 + 16);
          v39 = __OFSUB__(v38, 1);
          v40 = v38 - 1;
          if (v39)
          {
            __break(1u);
            return result;
          }

          if (++v34 >= v40)
          {
            break;
          }

          MinX = v29 + MinX + *(v10 + 24);
          dispatch thunk of Collection.endIndex.getter();
          if (*&v23[v32] == v46[0])
          {
            return sub_10002BDE8(v23);
          }
        }

        v50.origin.x = a6;
        v50.origin.y = a7;
        v50.size.width = a8;
        v50.size.height = a9;
        MinX = CGRectGetMinX(v50);
        MinY = v31 + MinY + *(v10 + 24);
        dispatch thunk of Collection.endIndex.getter();
        if (*&v23[v32] != v46[0])
        {
          continue;
        }

        break;
      }
    }

    return sub_10002BDE8(v23);
  }

  return result;
}

uint64_t sub_10002C2D8(uint64_t a1, char a2, void (**a3)(char *), char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  return sub_10002BEC8(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8, a9);
}

uint64_t sub_10002C35C@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  __chkstk_darwin(v2);
  v79 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PopoverAttachmentAnchor();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  __chkstk_darwin(v5);
  v75 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ModeMenuView();
  v65 = *(v63 - 8);
  v64 = *(v65 + 64);
  __chkstk_darwin(v63);
  v61 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10003AE84(&qword_100157978, &qword_100111EB8);
  v67 = *(v66 - 8);
  v12 = *(v67 + 64);
  __chkstk_darwin(v66);
  v14 = &v61 - v13;
  v68 = sub_10003AE84(&qword_100157980, &qword_100111EC0);
  v69 = *(v68 - 8);
  v15 = *(v69 + 64);
  __chkstk_darwin(v68);
  v17 = &v61 - v16;
  v70 = sub_10003AE84(&qword_100157988, &qword_100111EC8);
  v72 = *(v70 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v70);
  v62 = &v61 - v19;
  v78 = sub_10003AE84(&qword_100157990, &unk_100111ED0);
  v20 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v22 = &v61 - v21;
  v83 = v1;
  sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  sub_10003AE84(&qword_100157998, &qword_100111EE0);
  sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
  v23 = v1;
  sub_100004880(&qword_1001579A0, &qword_100157998, &qword_100111EE0);
  v24 = v63;
  Menu.init(content:label:)();
  v25 = v1;
  v26 = v61;
  sub_1000A75C8(v25, v61);
  v27 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v28 = swift_allocObject();
  sub_1000A762C(v26, v28 + v27);
  v29 = sub_100004880(&qword_1001579A8, &qword_100157978, &qword_100111EB8);
  v30 = v66;
  View.onTapGesture(count:perform:)();

  (*(v67 + 8))(v14, v30);
  v31 = v71;
  static AccessibilityChildBehavior.contain.getter();
  v86[0] = v30;
  v86[1] = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v62;
  v34 = v68;
  View.accessibilityElement(children:)();
  (*(v73 + 8))(v31, v74);
  v35 = v34;
  (*(v69 + 8))(v17, v34);
  v36 = *(v23 + *(v24 + 28));
  v86[3] = &type metadata for ModeMenuTip;
  v86[4] = sub_10002DD60();
  v86[0] = v36;

  v37 = static Anchor.Source<A>.bounds.getter();
  v39 = v75;
  v38 = v76;
  *v75 = v37;
  v40 = v77;
  (*(v38 + 104))(v39, enum case for PopoverAttachmentAnchor.rect(_:), v77);
  v84 = v35;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v70;
  View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)();
  (*(v38 + 8))(v39, v40);
  (*(v72 + 8))(v33, v41);
  sub_1000035CC(v86, &qword_1001579B0, &qword_100111EE8);
  KeyPath = swift_getKeyPath();
  v43 = &v22[*(sub_10003AE84(&qword_1001579B8, &qword_100111F20) + 36)];
  *v43 = KeyPath;
  v43[8] = 2;
  v44 = *(v23 + 16);
  v45 = *(v23 + 24);

  v46 = v44;
  if ((v45 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v79;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v80 + 8))(v48, v81);
    v46 = v86[0];
  }

  swift_getKeyPath();
  v86[0] = v46;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v46 + 48);

  if ((v45 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v51 = v79;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v80 + 8))(v51, v81);
    v44 = v86[0];
  }

  swift_getKeyPath();
  v86[0] = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v44 + 50);

  v53 = &v22[*(v78 + 36)];
  *v53 = 11;
  v53[1] = v49;
  v53[2] = v52;
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000A7C68();
  v54 = v82;
  View.help(_:)();

  sub_1000035CC(v22, &qword_100157990, &unk_100111ED0);
  v55 = swift_getKeyPath();
  v56 = *(v24 + 24);
  v57 = (v54 + *(sub_10003AE84(&qword_1001579E8, &unk_100111FB0) + 36));
  v58 = *(sub_10003AE84(&qword_100157080, &qword_100110E08) + 28);
  v59 = type metadata accessor for LayoutDirection();
  result = (*(*(v59 - 8) + 16))(v57 + v58, v23 + v56, v59);
  *v57 = v55;
  return result;
}

uint64_t sub_10002CE70@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.menuIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002CF74()
{
  result = Image.init(_internalSystemName:)();
  qword_1001608D8 = result;
  return result;
}

uint64_t sub_10002CFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v71 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  __chkstk_darwin(v6);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModeMenuView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v64 = sub_10003AE84(&qword_100157A90, &qword_100112070);
  v12 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v14 = &v61 - v13;
  v15 = sub_10003AE84(&qword_100157A98, &qword_100112078);
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  __chkstk_darwin(v15);
  v65 = &v61 - v17;
  v70 = sub_10003AE84(&qword_100157A00, &qword_100111FD0);
  v18 = *(*(v70 - 8) + 64);
  v19 = __chkstk_darwin(v70);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v69 = &v61 - v21;
  sub_1000A75C8(v1, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v22 = static MainActor.shared.getter();
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_1000A762C(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_1000A75C8(v1, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  v27 = v26 + v23;
  v28 = v14;
  sub_1000A762C(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  Binding.init(get:set:)();
  sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
  Toggle.init(isOn:label:)();
  v29 = *(v2 + 16);
  v30 = *(v2 + 24);

  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v32 = v61;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v62 + 8))(v32, v63);
  }

  v33 = sub_10000EBC8();

  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = (v33 & 1) == 0;
  v36 = v64;
  v37 = &v14[*(v64 + 36)];
  *v37 = KeyPath;
  v37[1] = sub_1000296E4;
  v37[2] = v35;
  v38 = *v2;
  if (*(v2 + 8) == 1)
  {
    v39 = v38;
  }

  else
  {
    v40 = *v2;

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v61;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100030EDC(v38, 0);
    (*(v62 + 8))(v42, v63);
    v39 = v75;
  }

  swift_getKeyPath();
  v75 = v39;
  sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = v39[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed];

  LocalizedStringKey.init(stringLiteral:)();
  v44 = sub_10002DC7C();
  v45 = v65;
  View.help(_:)();

  sub_1000035CC(v28, &qword_100157A90, &qword_100112070);
  LocalizedStringKey.init(stringLiteral:)();
  v46 = Text.init(_:tableName:bundle:comment:)();
  v48 = v47;
  v50 = v49;
  v75 = v36;
  v76 = v44;
  swift_getOpaqueTypeConformance2();
  v51 = v67;
  v52 = v68;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v46, v48, v50 & 1);

  (*(v66 + 8))(v45, v51);
  sub_10003AE84(&qword_100157A80, &unk_100115410);
  v53 = v72;
  v54 = *(v72 + 72);
  v55 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10010DBE0;
  static AccessibilityTraits.isToggle.getter();
  static AccessibilityTraits.isButton.getter();
  v75 = v56;
  sub_100006608(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
  sub_10003AE84(&qword_100156A70, &qword_100112040);
  sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
  v57 = v71;
  v58 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v69;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v53 + 8))(v57, v58);
  sub_1000035CC(v52, &qword_100157A00, &qword_100111FD0);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000035CC(v59, &qword_100157A00, &qword_100111FD0);
}

uint64_t sub_10002D96C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v9 = v14;
  }

  swift_getKeyPath();
  v14 = v9;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v9 + 50);

  *a2 = v11;
  return result;
}

uint64_t sub_10002DB34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ModeMenuView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10002D96C(v6, a1);
}

uint64_t sub_10002DBA8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10002DC7C()
{
  result = qword_100157AA0;
  if (!qword_100157AA0)
  {
    sub_10003AECC(&qword_100157A90, &qword_100112070);
    sub_100004880(&qword_100157A78, &qword_100157A58, &qword_100112010);
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157AA0);
  }

  return result;
}

unint64_t sub_10002DD60()
{
  result = qword_100157378;
  if (!qword_100157378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157378);
  }

  return result;
}

unint64_t sub_10002DDB8()
{
  result = qword_100157360;
  if (!qword_100157360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157360);
  }

  return result;
}

uint64_t sub_10002DE10()
{
  v0 = sub_10003AE84(&qword_100157368, &qword_1001113D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Tips.MaxDisplayCount();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003AE84(&qword_100157370, &qword_1001113D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v18 = v5;
  v19 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t initializeBufferWithCopyOfBuffer for CalculatorConfigSnapshot(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10002E0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for KeyEquivalent();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SidebarButton();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10003AE84(&qword_100155948, &qword_10010DC60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_10003AE84(&qword_100155950, &qword_10010DC68);
  v28 = *(v15 - 8);
  v29 = v15;
  v16 = *(v28 + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_10006E630(v2, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_10006E694(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v33 = v2;
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

  v24 = sub_100015CAC();
  View.keyboardShortcut(_:modifiers:)();
  (*(v30 + 8))(v6, v31);
  (*(v11 + 8))(v14, v10);
  v34 = v10;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  View.accessibilityIdentifier(_:)();
  return (*(v28 + 8))(v18, v25);
}

uint64_t sub_10002E4F8()
{
  v1 = type metadata accessor for SidebarButton();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v4[v8], 1, v9))
    {
      (*(v10 + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v11 = *&v4[v8];
  }

  v12 = *&v4[v1[6]];

  v13 = *&v4[v1[7]];

  return swift_deallocObject();
}

uint64_t sub_10002E738@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_10006E028(&v5);
  *a1 = v5;
  return result;
}

uint64_t sub_10002E774()
{
  result = Image.init(systemName:)();
  qword_100160978 = result;
  return result;
}

uint64_t sub_10002E7A4@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002E7D0@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.safeAreaInsets.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorAppMode(unsigned __int8 *a1, unsigned int a2)
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

id sub_10002E894()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for CalculatorAppDebugMenuGestureProxyView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC10CalculatorP33_975093CEE8F9D0E989FB2156FC3C1A8C38CalculatorAppDebugMenuGestureProxyView_action];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10002E950(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v25 = *(a2 + 24);
  v11 = *(a2 + 16);
  v24 = v11;
  v12 = v25;

  v13 = v11;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v24, &qword_1001556F0, &unk_10010D920);
    (*(v5 + 8))(v8, v4);
    v13 = v23;
  }

  swift_getKeyPath();
  v23 = v13;
  sub_10000F258(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + 48);
  v16 = *(v13 + 56);

  if (v15 != v10 || v16 != v9)
  {

    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v24, &qword_1001556F0, &unk_10010D920);
      (*(v5 + 8))(v8, v4);
      v11 = v23;
    }

    if (*(v11 + 48) == v10 && *(v11 + 56) == v9)
    {
      *(v11 + 48) = v10;
      *(v11 + 56) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v22 - 4) = v11;
      *(&v22 - 3) = v10;
      *(&v22 - 2) = v9;
      v23 = v11;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10002ECBC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v31 = *(a2 + 24);
  v13 = *(a2 + 16);
  v30 = v13;
  v14 = v31;

  v15 = v13;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v30, &qword_1001556F0, &unk_10010D920);
    (*(v5 + 8))(v8, v4);
    v15 = v29;
  }

  swift_getKeyPath();
  v29 = v15;
  sub_10000F258(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = v15[8];
  v18 = v15[9];
  v19 = v15[10];
  v20 = v15[11];

  result = static EdgeInsets.== infix(_:_:)();
  if ((result & 1) == 0)
  {

    if ((v14 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v30, &qword_1001556F0, &unk_10010D920);
      (*(v5 + 8))(v8, v4);
      v13 = v29;
    }

    v23 = v13[8];
    v24 = v13[9];
    v25 = v13[10];
    v26 = v13[11];
    if (static EdgeInsets.== infix(_:_:)())
    {
      v13[8] = v10;
      v13[9] = v9;
      v13[10] = v12;
      v13[11] = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v28 - 6) = v13;
      *(&v28 - 5) = v10;
      *(&v28 - 4) = v9;
      *(&v28 - 3) = v12;
      *(&v28 - 2) = v11;
      v29 = v13;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10002F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F0E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_100154FA0, &unk_100110DC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100008E68(v2, &v17 - v11, &qword_100154FA0, &unk_100110DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10002F2E4()
{
  if (qword_100154698 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_10002F314()
{
  v0 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  type metadata accessor for CalculatorTipManager();
  inited = swift_initStaticObject();
  sub_10002F480();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_100050560(0, 0, v3, &unk_100111E38, v6);

  qword_100160CF8 = inited;
  return result;
}

uint64_t sub_10002F424()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002F480()
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v0 = qword_100160D68;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 BOOLForKey:v1];

    if (v2)
    {
      static Tips.showAllTipsForTesting()();
      v3 = String._bridgeToObjectiveC()();
      [v0 removeObjectForKey:v3];
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v4 = qword_100160D68;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      static Tips.resetDatastore()();
      v7 = String._bridgeToObjectiveC()();
      [v4 removeObjectForKey:v7];
    }
  }

  return static Tips.configure(_:)();
}

uint64_t sub_10002F67C(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = (a2 + *(type metadata accessor for CalculatorDetailsView() + 32));
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

    (*(v5 + 8))(v8, v4);
    v14 = v24;
  }

  swift_getKeyPath();
  v24 = v14;
  sub_10000F330(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v14 + 96);
  v17 = *(v14 + 104);

  if (v16 != v10 || v17 != v9)
  {

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v12 = v24;
    }

    if (*(v12 + 96) == v10 && *(v12 + 104) == v9)
    {
      *(v12 + 96) = v10;
      *(v12 + 104) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v23 - 4) = v12;
      *(&v23 - 3) = v10;
      *(&v23 - 2) = v9;
      v24 = v12;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10002F9C4(double *a1)
{
  v3 = *(type metadata accessor for CalculatorDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10002F67C(a1, v4);
}

uint64_t sub_10002FA34(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = a2 + *(type metadata accessor for CalculatorDetailsView() + 32);
  v14 = *v13;
  v15 = *(v13 + 8);

  v16 = v14;
  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v16 = v30;
  }

  swift_getKeyPath();
  v30 = v16;
  sub_10000F330(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v16[14];
  v19 = v16[15];
  v20 = v16[16];
  v21 = v16[17];

  result = static EdgeInsets.== infix(_:_:)();
  if ((result & 1) == 0)
  {

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v14 = v30;
    }

    v24 = v14[14];
    v25 = v14[15];
    v26 = v14[16];
    v27 = v14[17];
    if (static EdgeInsets.== infix(_:_:)())
    {
      v14[14] = v10;
      v14[15] = v9;
      v14[16] = v12;
      v14[17] = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v29 - 6) = v14;
      *(&v29 - 5) = v10;
      *(&v29 - 4) = v9;
      *(&v29 - 3) = v12;
      *(&v29 - 2) = v11;
      v30 = v14;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10002FDC8(uint64_t *a1)
{
  v3 = *(type metadata accessor for CalculatorDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10002FA34(a1, v4);
}

uint64_t sub_10002FE38(double a1, double a2, double a3, double a4)
{
  v9 = sub_10003AE84(&qword_100155658, &qword_10010D538);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for CalculatorButtonSizeCache(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v18 + *(v16 + 24);
  Date.init()();
  *v18 = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  sub_100018208(v18, v12);
  (*(v14 + 56))(v12, 0, 1, v13);
  v20 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
  swift_beginAccess();
  sub_10006780C(v12, v4 + v20);
  swift_endAccess();
  v21 = *(v4 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cacheSubject);

  PassthroughSubject.send(_:)();

  return sub_10001826C(v18);
}

uint64_t sub_10002FFEC(void *a1)
{
  v3 = v1;
  v5 = sub_10003AE84(&qword_100155640, &qword_10010D530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100017F20(a1, a1[3]);
  sub_100017ECC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14 = 0;
  type metadata accessor for CGSize(0);
  sub_100067550(&qword_100155648, type metadata accessor for CGSize);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v3[1];
    v14 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(type metadata accessor for CalculatorButtonSizeCache(0) + 24);
    LOBYTE(v15) = 2;
    type metadata accessor for Date();
    sub_100067550(&qword_100155650, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100030284()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100030CEC;

  return sub_100030428();
}

uint64_t sub_100030330(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100030DE4;

  return v7(a1);
}

uint64_t sub_100030444()
{
  if (qword_100154690 != -1)
  {
    swift_once();
  }

  v1 = sub_10003AE84(&qword_100157098, qword_100111E40);
  sub_1000048C8(v1, qword_100160CE0);
  v2 = async function pointer to Tips.Event.donate<>()[1];
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100030CEC;

  return Tips.Event.donate<>()();
}

uint64_t sub_100030528()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100030CEC;

  return sub_1000305BC(v0 + 16);
}

uint64_t sub_1000305BC(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100030F34, v3, v2);
}

uint64_t sub_100030654()
{
  v0 = sub_10003AE84(&qword_10015A3C0, &qword_100115DE0);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v13 - v3;
  v5 = swift_projectBox();
  v6 = v1[2];
  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7 = v1[1];
  v7(v4, v0);
  v8 = v14;
  swift_getKeyPath();
  v14 = v8;
  v13[1] = sub_1000FF17C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 17);

  if (v9 == 1)
  {
    v6(v4, v5, v0);
    Bindable.wrappedValue.getter();
    v7(v4, v0);
    v11 = v14;
    if (*(v14 + 17))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v13[-2] = v11;
      LOBYTE(v13[-1]) = 0;
      v14 = v11;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v14 + 17) = 0;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CalculatorKeypadButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorKeypadButton(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1000309E0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    sub_1000309EC(a1, a2, a3);
  }

  else
  {
  }
}

void sub_1000309EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_100030A3C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

void sub_100030B68(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CalculatorAppDebugMenuGestureProxyView();
  objc_msgSendSuper2(&v9, "willMoveToWindow:", a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 statusBarManager];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1000DDEE4;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_100067348;
        v8[3] = &unk_10014D5C0;
        v7 = _Block_copy(v8);

        [v5 setDebugMenuHandler:v7];
        _Block_release(v7);
      }
    }
  }
}

uint64_t sub_100030CAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100030CE4(uint64_t result, double a2, double a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t sub_100030CEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100030DE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100030EDC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

__n128 sub_100030EE8()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

double *sub_100030F20(double *result, double a2, double a3, double a4, double a5)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

uint64_t sub_100030F2C(uint64_t result, double a2, double a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t sub_100030F34()
{
  v1 = *(v0 + 96);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v0 + 16) = v3;
  *(v0 + 80) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  sub_100015064(v0 + 80, v0 + 88);

  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  Binding.wrappedValue.getter();
  if (*(v0 + 33) == 1)
  {
    v5 = *(v0 + 96);
    sub_100031158(v0 + 80);

    v7 = *(v5 + 40) * 1000000000.0;
    if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -1.0)
    {
      if (v7 < 1.84467441e19)
      {
        v8 = v7;
        v9 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
        v10 = swift_task_alloc();
        *(v0 + 128) = v10;
        *v10 = v0;
        v10[1] = sub_1000DCCA0;
        v6 = v8;

        return static Task<>.sleep(nanoseconds:)(v6);
      }

LABEL_13:
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(v6);
    }

    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v0 + 96);
  v11 = *(v0 + 104);

  *(v0 + 64) = *v12;
  *(v0 + 34) = 1;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.setter();
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  *(v0 + 35) = 1;
  Binding.wrappedValue.setter();
  sub_100031158(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000311AC()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v31 = *(v0 + 8);
  v30 = *v0;
  v7 = v30;
  v8 = v31;

  v9 = v7;
  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v30, &qword_100154810, &qword_10010DF90);
    (*(v3 + 8))(v6, v2);
    v9 = v27;
  }

  swift_getKeyPath();
  *&v27 = v9;
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v9 + 54);

  if ((v11 - 4) >= 7)
  {
    v27 = *(v1 + 2);
    v28 = *(v1 + 48);
    v29 = *(&v27 + 1);
    v25 = *(v1 + 2);
    v26 = *(v1 + 48);
    sub_100008E68(&v29, v24, &qword_100156AD0, &qword_1001102F0);
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.wrappedValue.getter();
    if (v24[0] != 11)
    {
      goto LABEL_8;
    }

    v13 = v7;
    if ((v8 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v30, &qword_100154810, &qword_10010DF90);
      (*(v3 + 8))(v6, v2);
      v13 = v25;
    }

    swift_getKeyPath();
    *&v25 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v13 + 54);

    if (v15 != 9)
    {
LABEL_8:

      if ((v8 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v16 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v30, &qword_100154810, &qword_10010DF90);
        (*(v3 + 8))(v6, v2);
      }

      v17 = sub_100031888();

      v25 = v27;
      v26 = v28;
      FocusState.wrappedValue.getter();
      if (v24[0] == 11 || v24[0] != v17)
      {
        v25 = v27;
        v26 = v28;
        FocusState.wrappedValue.getter();
        if (v24[0] == 11)
        {
          HIDWORD(v23) = v17;

          v18 = v7;
          if ((v8 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v19 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_1000035CC(&v30, &qword_100154810, &qword_10010DF90);
            (*(v3 + 8))(v6, v2);
            v18 = v25;
          }

          swift_getKeyPath();
          *&v25 = v18;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v20 = *(v18 + 54);

          LOBYTE(v17) = BYTE4(v23);
          if (v20 == 11)
          {
            goto LABEL_21;
          }
        }
      }

      v25 = v27;
      v26 = v28;
      FocusState.wrappedValue.getter();
      if (v24[0] == 11)
      {

        if ((v8 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v21 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000035CC(&v30, &qword_100154810, &qword_10010DF90);
          (*(v3 + 8))(v6, v2);
          v7 = v25;
        }

        swift_getKeyPath();
        *&v25 = v7;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v22 = *(v7 + 54);

        if (v22 == 9)
        {
          goto LABEL_21;
        }
      }

      v25 = v27;
      v26 = v28;
      FocusState.wrappedValue.getter();
      if (v24[0] != 11)
      {
LABEL_21:
        v25 = v27;
        v26 = v28;
        v24[0] = v17;
        FocusState.wrappedValue.setter();
      }
    }

    return sub_1000035CC(&v27, &qword_100156AA8, &qword_100110298);
  }

  return result;
}

uint64_t sub_100031888()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);

  v4 = CalculateExpression.format.getter();

  if (v4 == 2)
  {
    return 3;
  }

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 50) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 40))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

__n128 sub_100031A28()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  return result;
}

double *sub_100031A60(double *result, double a2, double a3, double a4, double a5)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  return result;
}

uint64_t sub_100031A6C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (v11 != 11)
  {
    v28 = *(a3 + 8);
    v12 = *a3;
    v27 = v12;
    v13 = v28;

    v14 = v12;
    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v27, &qword_100154810, &qword_10010DF90);
      (*(v6 + 8))(v10, v5);
      v14 = v26;
    }

    swift_getKeyPath();
    v26 = v14;
    sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v14 + 54);

    if (v16 == 9)
    {
      goto LABEL_8;
    }

    v17 = v12;
    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v27, &qword_100154810, &qword_10010DF90);
      (*(v6 + 8))(v10, v5);
      v17 = v26;
    }

    swift_getKeyPath();
    v26 = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v17 + 54);

    if (v19 == 10)
    {
LABEL_8:

      if ((v13 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v20 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v27, &qword_100154810, &qword_10010DF90);
        (*(v6 + 8))(v10, v5);
        v12 = v26;
      }

      swift_getKeyPath();
      v26 = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v12 + 54) != 11)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v25 - 2) = v12;
        *(&v25 - 8) = 11;
        v26 = v12;
LABEL_18:
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {

      if ((v13 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v22 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v27, &qword_100154810, &qword_10010DF90);
        (*(v6 + 8))(v10, v5);
        v12 = v26;
      }

      swift_getKeyPath();
      v26 = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v23 = *(v12 + 54);
      if (v23 == 11 || v23 != v11)
      {
        v24 = swift_getKeyPath();
        __chkstk_darwin(v24);
        *(&v25 - 2) = v12;
        *(&v25 - 8) = v11;
        v26 = v12;
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t sub_100032058(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  if ((v3 - 4) > 4)
  {
    if ((v3 - 9) < 3 || *a1 == 9)
    {
      return sub_1000311AC();
    }

    v7 = *(a3 + 32);
    v9 = *(a3 + 48);
  }

  else
  {
    v6 = *(a3 + 32);
    v8 = *(a3 + 48);
  }

  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  return FocusState.wrappedValue.setter();
}

uint64_t sub_100032104(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1000FFD88(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_100032198(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1000FFD88(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032228(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154790, &qword_100110280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000322CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000322F8()
{
  v1 = *(v0 + 16);

  sub_100030EDC(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_10003234C()
{
  sub_10003AECC(&qword_100154820, &qword_10010BB28);
  sub_100004880(&qword_100154828, &qword_100154820, &qword_10010BB28);
  sub_10000482C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032414(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003248C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000325D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10003263C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10003FA48(v2);
}

uint64_t sub_100032710()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100032790()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1000327F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10004CDFC(v4);
}

uint64_t sub_100032850(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10004C788(v4);
}

uint64_t sub_10003288C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100032974()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000329AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100032BD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100032C1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100032C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100057ED4(v4);
}

uint64_t sub_100032D34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100032DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100032EDC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032F08(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_100032F64()
{
  sub_10003AECC(&qword_100154758, &qword_10010B5A8);
  type metadata accessor for UnitConversionPopoverView();
  sub_10003AECC(&qword_100154760, &unk_10010B5B0);
  type metadata accessor for PlainButtonStyle();
  sub_100004880(&qword_100154768, &qword_100154760, &unk_10010B5B0);
  sub_10006535C(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_10006535C(&qword_100154778, type metadata accessor for UnitConversionPopoverView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000330D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10003314C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100033184()
{
  v1 = (type metadata accessor for CalculatorButtonSizeCache(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v1[8];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5 + v2, v6);

  return swift_deallocObject();
}

uint64_t sub_100033270()
{
  v1 = type metadata accessor for PPTTestCase();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  v6 = *(v0 + v4 + 16);

  v7 = *(v0 + v4 + 32);

  v8 = *(v0 + v4 + 48);
  swift_unknownObjectRelease();
  v9 = *(v0 + v4 + 56);

  return swift_deallocObject();
}

uint64_t sub_100033364()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10003339C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000333D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ScrollViewProxy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033478(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for ScrollViewProxy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003351C()
{
  v16 = type metadata accessor for PPTTestCase();
  v1 = *(v16 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (type metadata accessor for CalculatorHistoryScrollPPTTests() - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v15 = *(*v8 + 64);
  (*(v1 + 8))(v0 + v2, v16);
  v10 = *(v5 + 8);
  v10(v0 + v6, v4);
  v11 = *(v0 + v9);

  v12 = *(v0 + v9 + 16);

  v13 = *(v0 + v9 + 32);

  v10(v0 + v9 + v8[9], v4);

  return swift_deallocObject();
}

uint64_t sub_100033708()
{
  v1 = (type metadata accessor for CalculatorHistoryScrollPPTTests() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v0 + v2);
  v9 = *v8;

  v10 = *(v8 + 2);

  v11 = *(v8 + 4);

  v12 = v1[9];
  v13 = type metadata accessor for ScrollViewProxy();
  (*(*(v13 - 8) + 8))(&v8[v12], v13);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_100033884()
{
  sub_10003AECC(&qword_100155838, &qword_10010DA80);
  sub_10003AECC(&qword_100155840, &qword_10010DA88);
  sub_100004880(&qword_100155848, &qword_100155840, &qword_10010DA88);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100033978()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1000339D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100033A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100033B70()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100033F04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033FB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000344C4()
{
  sub_10003AECC(&qword_100156388, &qword_10010F418);
  sub_10003AECC(&qword_100156390, &qword_10010F420);
  sub_100004880(&qword_100156398, &qword_100156388, &qword_10010F418);
  sub_100004880(&qword_1001563A0, &qword_100156390, &qword_10010F420);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000345D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001565D0, qword_10010F780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100034708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001565D0, qword_10010F780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003484C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10003488C()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = *(v0 + v2);

  v8 = *(v0 + v2 + 16);

  v9 = *(v0 + v2 + 32);

  v10 = *(v0 + v2 + 48);

  v11 = (v0 + v2 + v1[8]);
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = *v11;

      v14 = *(v11 + 1);

      v15 = *(v12 + 32);
      v16 = type metadata accessor for EditMode();
      (*(*(v16 - 8) + 8))(&v11[v15], v16);
    }
  }

  else
  {
    v17 = *v11;
  }

  v18 = v1[9];
  v19 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v20 = *(*(v19 - 8) + 8);
  v20(v6 + v18, v19);
  v20(v6 + v1[10], v19);
  v20(v6 + v1[11], v19);

  return swift_deallocObject();
}

uint64_t sub_100034AE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100034B4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100034B84()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = (v0 + v2 + v1[8]);
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = *v10;

      v13 = *(v10 + 1);

      v14 = *(v11 + 32);
      v15 = type metadata accessor for EditMode();
      (*(*(v15 - 8) + 8))(&v10[v14], v15);
    }
  }

  else
  {
    v16 = *v10;
  }

  v17 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[9];
  v19 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v20(v5 + v1[10], v19);
  v20(v5 + v1[11], v19);
  v21 = *(v0 + v17);

  v22 = *(v0 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_100034DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001568E8, &qword_10010FA88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034E60()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = (v0 + v2 + v1[8]);
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = *v10;

      v13 = *(v10 + 1);

      v14 = *(v11 + 32);
      v15 = type metadata accessor for EditMode();
      (*(*(v15 - 8) + 8))(&v10[v14], v15);
    }
  }

  else
  {
    v16 = *v10;
  }

  v17 = v1[9];
  v18 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v19 = *(*(v18 - 8) + 8);
  v19(v5 + v17, v18);
  v19(v5 + v1[10], v18);
  v19(v5 + v1[11], v18);

  return swift_deallocObject();
}

uint64_t sub_100035094()
{
  v1 = type metadata accessor for CalculatorHistoryListView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = (v0 + v2 + v1[8]);
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = *v10;

      v13 = *(v10 + 1);

      v14 = *(v11 + 32);
      v15 = type metadata accessor for EditMode();
      (*(*(v15 - 8) + 8))(&v10[v14], v15);
    }
  }

  else
  {
    v16 = *v10;
  }

  v17 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[9];
  v19 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v20(v5 + v1[10], v19);
  v20(v5 + v1[11], v19);

  return swift_deallocObject();
}

uint64_t sub_100035388()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000353D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalculatorSizeClass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100035484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalculatorSizeClass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100035580()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000355C8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10003560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10003AE84(&qword_100156F18, qword_100110CC8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100035730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10003AE84(&qword_100156F18, qword_100110CC8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000358B0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100035908@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.appearsActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003599C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100035A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

double sub_100035B34@<D0>(uint64_t a1@<X8>)
{
  sub_100023C6C();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100035C0C(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Optional();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001577E0, &qword_100111D70);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

uint64_t sub_100035CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100035DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LayoutDirection();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100035E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001579F0, &qword_100111FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035EE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100035F54(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000AA58C(v2);
}

void sub_100035F88(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000AA29C(v2);
}

void sub_100035FBC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000A9FAC(v2);
}

uint64_t sub_100036020(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A9D04(v4);
}

uint64_t sub_10003604C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CalculatorSizeClass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_1000360F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalculatorSizeClass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003619C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100157F98, qword_100112550);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000362D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100157F98, qword_100112550);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000364BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10003652C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000B959C(v4);
}

uint64_t sub_10003655C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000365A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100154948, qword_1001130B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000366E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100154948, qword_1001130B0);
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
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000368AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000368D8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100036914@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100036940(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10003696C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100036998(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000369C4()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v30 = v0;
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 32);

  v8 = *(v0 + v2 + 48);

  v9 = *(v0 + v2 + 56);

  v10 = v1[9];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[10];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  v15 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v4 + v1[11];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = v4 + v1[12];
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  v22 = *(v4 + v1[13] + 8);

  v23 = v4 + v1[14];
  v24 = *(v23 + 8);

  v25 = *(v23 + 16);

  v26 = v1[15];
  v27 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v28 = *(*(v27 - 8) + 8);
  v28(v4 + v26, v27);
  v28(v4 + v1[16], v27);
  v28(v4 + v1[17], v27);
  v28(v4 + v1[18], v27);
  v28(v4 + v1[19], v27);
  v28(v4 + v1[20], v27);

  return swift_deallocObject();
}

uint64_t sub_100036C94@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100036CFC()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);

  v3 = *(v0 + 24);

  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 32);

  v8 = *(v0 + v2 + 48);

  v9 = *(v0 + v2 + 56);

  v10 = v1[9];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[10];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  v15 = v4 + v1[11];
  v16 = *(v15 + 8);

  v17 = *(v15 + 16);

  v18 = v4 + v1[12];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  v21 = *(v4 + v1[13] + 8);

  v22 = v4 + v1[14];
  v23 = *(v22 + 8);

  v24 = *(v22 + 16);

  v25 = v1[15];
  v26 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v27 = *(*(v26 - 8) + 8);
  v27(v4 + v25, v26);
  v27(v4 + v1[16], v26);
  v27(v4 + v1[17], v26);
  v27(v4 + v1[18], v26);
  v27(v4 + v1[19], v26);
  v27(v4 + v1[20], v26);

  return swift_deallocObject();
}

uint64_t sub_100036FCC()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UnitConversionPopoverView();
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v35 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v36 = v0;
  v8 = v0 + v7;
  v9 = *(v0 + v7);

  v10 = *(v0 + v7 + 16);

  v11 = *(v0 + v7 + 32);

  v12 = *(v0 + v7 + 48);

  v13 = *(v0 + v7 + 56);

  v14 = v5[9];
  v15 = type metadata accessor for UserInterfaceSizeClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v8 + v14, 1, v15))
  {
    (*(v16 + 8))(v8 + v14, v15);
  }

  v18 = v5[10];
  if (!v17(v8 + v18, 1, v15))
  {
    (*(v16 + 8))(v8 + v18, v15);
  }

  v19 = v8 + v5[11];
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  v22 = v8 + v5[12];
  v23 = *(v22 + 8);

  v24 = *(v22 + 16);

  v25 = *(v8 + v5[13] + 8);

  v26 = v8 + v5[14];
  v27 = *(v26 + 8);

  v28 = *(v26 + 16);

  v29 = v5[15];
  v30 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v31 = *(*(v30 - 8) + 8);
  v31(v8 + v29, v30);
  v31(v8 + v5[16], v30);
  v31(v8 + v5[17], v30);
  v31(v8 + v5[18], v30);
  v31(v8 + v5[19], v30);
  v31(v8 + v5[20], v30);
  v32 = v36 + ((v35 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  v33 = *(v32 + 8);

  return swift_deallocObject();
}

uint64_t sub_10003732C()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for ScrollViewProxy();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 80);
  v33 = *(v35 + 64);
  v37 = v0;
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = *(v0 + v2 + 56);

  v11 = v1[9];
  v12 = type metadata accessor for UserInterfaceSizeClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v15 = v1[10];
  if (!v14(v5 + v15, 1, v12))
  {
    (*(v13 + 8))(v5 + v15, v12);
  }

  v16 = (v2 + v34 + v4) & ~v4;
  v17 = (v33 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v5 + v1[11];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  v21 = v5 + v1[12];
  v22 = *(v21 + 8);

  v23 = *(v21 + 16);

  v24 = *(v5 + v1[13] + 8);

  v25 = v5 + v1[14];
  v26 = *(v25 + 8);

  v27 = *(v25 + 16);

  v28 = v1[15];
  v29 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v30 = *(*(v29 - 8) + 8);
  v30(v5 + v28, v29);
  v30(v5 + v1[16], v29);
  v30(v5 + v1[17], v29);
  v30(v5 + v1[18], v29);
  v30(v5 + v1[19], v29);
  v30(v5 + v1[20], v29);
  (*(v35 + 8))(v37 + v16, v36);

  v31 = *(v37 + v17 + 8);

  return swift_deallocObject();
}

uint64_t sub_1000376C0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037714@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003776C()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = *(v0 + v2);

  v5 = *(v0 + v2 + 16);

  v6 = *(v0 + v2 + 32);

  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 56);

  v9 = v1[9];
  v10 = type metadata accessor for UserInterfaceSizeClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v13 = v1[10];
  if (!v12(v3 + v13, 1, v10))
  {
    (*(v11 + 8))(v3 + v13, v10);
  }

  v14 = v3 + v1[11];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = v3 + v1[12];
  v18 = *(v17 + 8);

  v19 = *(v17 + 16);

  v20 = *(v3 + v1[13] + 8);

  v21 = v3 + v1[14];
  v22 = *(v21 + 8);

  v23 = *(v21 + 16);

  v24 = v1[15];
  v25 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v26 = *(*(v25 - 8) + 8);
  v26(v3 + v24, v25);
  v26(v3 + v1[16], v25);
  v26(v3 + v1[17], v25);
  v26(v3 + v1[18], v25);
  v26(v3 + v1[19], v25);
  v26(v3 + v1[20], v25);

  return swift_deallocObject();
}

uint64_t sub_100037A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100037A68()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 32);

  v8 = *(v0 + v2 + 48);

  v9 = *(v0 + v2 + 56);

  v10 = v1[9];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[10];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  v15 = v4 + v1[11];
  v16 = *(v15 + 8);

  v17 = *(v15 + 16);

  v18 = v4 + v1[12];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  v21 = *(v4 + v1[13] + 8);

  v22 = v4 + v1[14];
  v23 = *(v22 + 8);

  v24 = *(v22 + 16);

  v25 = v1[15];
  v26 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v27 = *(*(v26 - 8) + 8);
  v27(v4 + v25, v26);
  v27(v4 + v1[16], v26);
  v27(v4 + v1[17], v26);
  v27(v4 + v1[18], v26);
  v27(v4 + v1[19], v26);
  v27(v4 + v1[20], v26);

  return swift_deallocObject();
}

uint64_t sub_100037D2C()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = *(v0 + v2 + 56);

  v11 = v1[9];
  v12 = type metadata accessor for UserInterfaceSizeClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v15 = v1[10];
  if (!v14(v5 + v15, 1, v12))
  {
    (*(v13 + 8))(v5 + v15, v12);
  }

  v16 = v5 + v1[11];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = v5 + v1[12];
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  v22 = *(v5 + v1[13] + 8);

  v23 = v5 + v1[14];
  v24 = *(v23 + 8);

  v25 = *(v23 + 16);

  v26 = v1[15];
  v27 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v28 = *(*(v27 - 8) + 8);
  v28(v5 + v26, v27);
  v28(v5 + v1[16], v27);
  v28(v5 + v1[17], v27);
  v28(v5 + v1[18], v27);
  v28(v5 + v1[19], v27);
  v28(v5 + v1[20], v27);

  return swift_deallocObject();
}

uint64_t sub_100037FF8()
{
  v1 = type metadata accessor for UnitConversionPopoverView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);

  v3 = *(v0 + 24);

  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 32);

  v8 = *(v0 + v2 + 48);

  v9 = *(v0 + v2 + 56);

  v10 = v1[9];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[10];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  v15 = v4 + v1[11];
  v16 = *(v15 + 8);

  v17 = *(v15 + 16);

  v18 = v4 + v1[12];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  v21 = *(v4 + v1[13] + 8);

  v22 = v4 + v1[14];
  v23 = *(v22 + 8);

  v24 = *(v22 + 16);

  v25 = v1[15];
  v26 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v27 = *(*(v26 - 8) + 8);
  v27(v4 + v25, v26);
  v27(v4 + v1[16], v26);
  v27(v4 + v1[17], v26);
  v27(v4 + v1[18], v26);
  v27(v4 + v1[19], v26);
  v27(v4 + v1[20], v26);

  return swift_deallocObject();
}

uint64_t sub_1000382E0()
{
  sub_10003AECC(&qword_100158828, &qword_100113198);
  sub_10003AECC(&qword_100158820, &qword_100113190);
  sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
  sub_1000CECA8();
  sub_10001BAF0(&qword_100156AC0, sub_10001B814);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000383F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SheetPresentationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ToolbarItem();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_100038670(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003872C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000387DC()
{
  v1 = (type metadata accessor for UnitConversionUnitButton() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 6);

  v7 = *(v3 + 7);

  v8 = *(v3 + 8);

  v9 = *(v3 + 9);

  v10 = *(v3 + 10);

  v11 = *(v3 + 11);

  v12 = v1[16];
  v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v13 - 8) + 8))(&v3[v12], v13);

  return swift_deallocObject();
}

uint64_t sub_10003892C()
{
  sub_10003AECC(&qword_1001591A8, &unk_100113E20);
  sub_1000D5E4C();
  sub_10006345C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100038A04()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_100038A4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_100038A98(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000D8708(v2);
}

uint64_t sub_100038AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10003AE84(&qword_1001592F0, qword_1001140D8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100038BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10003AE84(&qword_1001592F0, qword_1001140D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100038D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100159458, &qword_100114528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100038E50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_100159458, &qword_100114528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100038F1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100038F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100159688, &qword_100114750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038FFC()
{
  sub_10003AECC(&qword_1001597B8, &qword_100114978);
  type metadata accessor for HighlightHoverEffect();
  sub_1000E5FF8();
  sub_1000E60DC(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000390B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10003916C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039224()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100039260(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}