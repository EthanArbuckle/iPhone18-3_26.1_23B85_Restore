uint64_t sub_100099E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin(v3);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorKeypadView();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  v8 = v6 - 8;
  v55 = v6 - 8;
  __chkstk_darwin(v6 - 8);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10003AE84(&qword_100157510, &qword_1001118D8);
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v11 = &v48 - v10;
  v61 = sub_10003AE84(&qword_100157518, &qword_1001118E0);
  v12 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v62 = &v48 - v13;
  v58 = sub_10003AE84(&qword_100157520, &qword_1001118E8);
  v14 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v57 = &v48 - v15;
  v60 = a1;
  sub_100019C94(v11);
  v52 = static Animation.easeInOut(duration:)();
  v16 = (a1 + *(v8 + 48));
  v18 = v16[1];
  v63 = *v16;
  v17 = v63;
  v64 = v18;
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();
  v19 = v65;
  swift_getKeyPath();
  v63 = v19;
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 16);
  v21 = v54;

  v22 = &v11[*(v53 + 36)];
  *v22 = v52;
  v22[8] = v20;
  v63 = v17;
  v64 = v18;
  State.wrappedValue.getter();
  type metadata accessor for CalculatorKeypadViewModel(0);
  sub_10009FE4C();
  v23 = v62;
  View.environment<A>(_:)();

  sub_1000035CC(v11, &qword_100157510, &qword_1001118D8);
  v24 = v60;
  sub_1000A0564(v60, v21, type metadata accessor for CalculatorKeypadView);
  v25 = *(v56 + 80);
  v26 = (v25 + 16) & ~v25;
  v56 = v7;
  v27 = v25;
  v28 = swift_allocObject();
  sub_10009FFE4(v21, v28 + v26);
  v29 = &v23[*(v61 + 36)];
  *v29 = sub_1000A0048;
  *(v29 + 1) = v28;
  v30 = v24;
  v31 = v24 + *(v55 + 32);
  v32 = *v31;
  v33 = *(v31 + 8);

  if ((v33 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v49;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v50 + 8))(v35, v51);
    v32 = v63;
  }

  swift_getKeyPath();
  v63 = v32;
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v32 + 48);

  LOBYTE(v63) = v36;
  sub_1000A0564(v30, v21, type metadata accessor for CalculatorKeypadView);
  v53 = v27;
  v37 = swift_allocObject();
  sub_10009FFE4(v21, v37 + v26);
  sub_1000A0138();
  sub_10000482C();
  v38 = v57;
  v39 = v62;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v39, &qword_100157518, &qword_1001118E0);
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = 1;
  v42 = (v38 + *(sub_10003AE84(&qword_100157590, &qword_100111998) + 36));
  *v42 = KeyPath;
  v42[1] = sub_100023DFC;
  v42[2] = v41;
  sub_1000A0564(v30, v21, type metadata accessor for CalculatorKeypadView);
  v43 = swift_allocObject();
  sub_10009FFE4(v21, v43 + v26);
  v44 = swift_getKeyPath();
  v45 = (v38 + *(v58 + 36));
  *v45 = v44;
  v45[1] = sub_1000A027C;
  v45[2] = v43;
  v45[3] = 0;
  static EventModifiers.shift.getter();
  sub_1000A0564(v60, v21, type metadata accessor for CalculatorKeypadView);
  v46 = swift_allocObject();
  sub_10009FFE4(v21, v46 + v26);
  sub_1000A037C();
  View._onModifierKeysChanged(mask:initial:_:)();

  return sub_1000035CC(v38, &qword_100157520, &qword_1001118E8);
}

_BYTE *sub_10009A5B4(_BYTE *result, uint64_t a2)
{
  if (*result != 94)
  {
    v2 = (a2 + *(type metadata accessor for CalculatorKeypadView() + 52));
    v3 = *v2;
    v4 = *(v2 + 1);
    sub_10003AE84(&qword_1001575D0, &qword_100111A50);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10009A630(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for CalculatorKeypadView() + 40));
  v6 = *v4;
  v7 = v4[1];
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();
  sub_1000AE8F0(v3);
}

uint64_t sub_10009A6B0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CalculatorKeypadView();
  v12 = *(v11 + 24);
  v29 = a3;
  v13 = (a3 + v12);
  v14 = *v13;
  LODWORD(a3) = *(v13 + 8);

  v28 = v7;
  if (a3 == 1)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    HIDWORD(v27) = a1;
    v16 = a2;
    v17 = v15;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v18 = *(v7 + 8);
    v18(v10, v6);

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    a2 = v16;
    a1 = HIDWORD(v27);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v18(v10, v6);
    v14 = v30;
  }

  swift_getKeyPath();
  v30 = v14;
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v14 + 50);

  if (v20 == 1)
  {
    v21 = (v29 + *(v11 + 28));
    v22 = *v21;
    v23 = *(v21 + 8);

    if ((v23 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v28 + 8))(v10, v6);
    }

    v25 = sub_100074054();
  }

  else
  {
    v25 = 0;
  }

  sub_100058F8C(a1, a2 & 1, v25);
}

uint64_t sub_10009AA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static EventModifiers.shift.getter();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v9)
  {
    goto LABEL_5;
  }

  v10 = (a3 + *(type metadata accessor for CalculatorKeypadView() + 24));
  v11 = *v10;
  v12 = *(v10 + 8);

  v13 = v11;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v13 = v34;
  }

  swift_getKeyPath();
  v34 = v13;
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + 54);

  if (v15 != 4)
  {

    v23 = v11;
    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v23 = v34;
    }

    swift_getKeyPath();
    v34 = v23;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v25 = *(v23 + 72);

    v26 = *(v25 + 16);
    v27 = (v25 + 32);
    while (v26)
    {
      v28 = *v27++;
      --v26;
      if (v28 == 28)
      {
      }
    }

    if (v12)
    {
      sub_10005FA64(28);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      sub_10005FA64(28);

      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v11 = v33;
    }

    v20 = *(v11 + 52);
    if (v20 == 1)
    {
      goto LABEL_9;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v32 - 2) = v11;
    *(&v32 - 8) = 1;
    v33 = v11;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
LABEL_5:
    v16 = (a3 + *(type metadata accessor for CalculatorKeypadView() + 24));
    v11 = *v16;
    v17 = *(v16 + 8);

    if (v17)
    {
      sub_10005FC0C(0x1Cu);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      sub_10005FC0C(0x1Cu);

      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v11 = v34;
    }

    v20 = *(v11 + 52);
    if (v20 == 1)
    {
LABEL_9:
      *(v11 + 52) = v20;
    }

    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    *(&v32 - 2) = v11;
    *(&v32 - 8) = 1;
    v34 = v11;
    sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10009B174@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v145 = a3;
  v130 = type metadata accessor for OpacityTransition();
  v129 = *(v130 - 8);
  v9 = *(v129 + 64);
  v10 = __chkstk_darwin(v130);
  v127 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = v121 - v12;
  v138 = sub_10003AE84(&qword_1001575F0, &qword_100111AE8);
  v13 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v131 = (v121 - v14);
  v136 = sub_10003AE84(&qword_100157710, &qword_100111BA0);
  v15 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v137 = v121 - v16;
  v17 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v144 = v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v143 = v121 - v21;
  v142 = type metadata accessor for CalculatorSizeClass(0);
  v22 = *(*(v142 - 8) + 64);
  v23 = __chkstk_darwin(v142);
  v126 = v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v123 = v121 - v26;
  __chkstk_darwin(v25);
  v132 = v121 - v27;
  v28 = type metadata accessor for EnvironmentValues();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10003AE84(&qword_100157718, &qword_100111BA8);
  v33 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v125 = v121 - v34;
  v35 = type metadata accessor for CalculatorKeypadView();
  v36 = a2 + v35[8];
  v37 = *v36;
  LODWORD(v38) = *(v36 + 8);
  v139 = a5;
  v140 = v29;
  v141 = v38;
  v134 = a4;
  v135 = a2;
  v124 = v28;
  if ((a1 & 1) == 0)
  {

    v46 = v37;
    if ((v38 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v47 = static Log.runtimeIssuesLog.getter();
      LODWORD(v38) = v141;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v32, v28);
      v46 = v146;
    }

    v123 = v46;
    v125 = *(v145 + 16);
    v48 = (a2 + v35[10]);
    v50 = *v48;
    v49 = v48[1];
    v146 = v50;
    v147 = v49;
    sub_10003AE84(&qword_100157528, &qword_1001118F0);
    State.wrappedValue.getter();

    if (v38)
    {
      v146 = v37;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      LOBYTE(v38) = v141;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v32, v28);
    }

    if (v125 >= 1)
    {
      v122 = *(*(v145 + 32) + 16);

      v89 = v37;
      if ((v38 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v38 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        LOBYTE(v38) = v141;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v29 + 8))(v32, v28);
        v89 = v146;
      }

      sub_10001B504(v89);
      v91 = v90;

      v92 = v37;
      if ((v38 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v93 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v29 + 8))(v32, v28);
        v92 = v146;
      }

      v94 = v143;
      sub_10000D594(v143);
      v121[1] = v35[5];
      v95 = v144;
      sub_10000D594(v144);
      v96 = type metadata accessor for UserInterfaceSizeClass();
      v97 = *(*(v96 - 8) + 56);
      v98 = v132;
      v97(v132, 1, 1, v96);
      v99 = *(v142 + 20);
      v97((v98 + v99), 1, 1, v96);
      sub_10006E758(v94, v98);
      sub_10006E758(v95, v98 + v99);
      sub_1000D399C(v92, 1, v98);
      v101 = v100;

      sub_1000A05CC(v98, type metadata accessor for CalculatorSizeClass);

      if ((v141 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v102 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v140 + 8))(v32, v124);
      }

      v103 = v143;
      v104 = v135;
      sub_10000D594(v143);
      v105 = v144;
      sub_10000D594(v144);
      v106 = v126;
      v97(v126, 1, 1, v96);
      v107 = *(v142 + 20);
      v97((v106 + v107), 1, 1, v96);
      sub_10006E758(v103, v106);
      sub_10006E758(v105, v106 + v107);
      v108 = sub_10003C9A0(v106);
      v109 = [objc_opt_self() currentDevice];
      v110 = [v109 userInterfaceIdiom];

      v111 = 61.0;
      if (v108)
      {
        v111 = 45.0;
      }

      if (v110)
      {
        v112 = v111;
      }

      else
      {
        v112 = 28.0;
      }

      sub_1000A05CC(v106, type metadata accessor for CalculatorSizeClass);
      v113 = v131;
      v114 = v125;
      *v131 = v123;
      *(v113 + 8) = v114;
      *(v113 + 16) = v122;
      *(v113 + 24) = v91;
      *(v113 + 32) = v101;
      *(v113 + 40) = v112;
      v115 = *(sub_10003AE84(&qword_100157608, &qword_100111B00) + 44);

      sub_10009E9B8(v145, v134, v104, 0, sub_1000A10AC, v113 + v115);

      v116 = v128;
      OpacityTransition.init()();
      v117 = v129;
      v118 = v130;
      (*(v129 + 16))(v127, v116, v130);
      sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition);
      v119 = AnyTransition.init<A>(_:)();
      (*(v117 + 8))(v116, v118);
      v120 = v137;
      *(v113 + *(v138 + 36)) = v119;
      v86 = &qword_1001575F0;
      v87 = &qword_100111AE8;
      sub_100008E68(v113, v120, &qword_1001575F0, &qword_100111AE8);
      swift_storeEnumTagMultiPayload();
      sub_1000A0780(&qword_100157720, &qword_100157718, &qword_100111BA8, sub_1000A0BB4);
      sub_1000A069C();
      _ConditionalContent<>.init(storage:)();
      v88 = v113;
      return sub_1000035CC(v88, v86, v87);
    }

    goto LABEL_42;
  }

  v39 = v37;
  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v40 = a4;
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a4 = v40;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v140 + 8))(v32, v28);
    v39 = v146;
  }

  v131 = v39;
  v42 = *(v145 + 16);
  v43 = (a2 + v35[10]);
  v45 = *v43;
  v44 = v43[1];
  v146 = v45;
  v147 = v44;
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();

  if (v38)
  {
    v146 = v37;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    v130 = v32;
    v52 = v42;
    v53 = v51;
    os_log(_:dso:log:_:_:)();

    v42 = v52;
    v32 = v130;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v140 + 8))(v32, v28);
  }

  if (!*(a4 + 16))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v42 < 1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v55 = *(*(a4 + 32) + 16);
  v56 = *(*(v145 + 32) + 16);
  v57 = __OFADD__(v55, v56);
  v58 = v55 + v56;
  if (!v57)
  {
    v129 = v58;
    v130 = v42;

    v59 = v37;
    if ((v38 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v60 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v140 + 8))(v32, v28);
      v59 = v146;
    }

    sub_10001B504(v59);
    v62 = v61;

    v63 = v37;
    if ((v38 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v64 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v140 + 8))(v32, v28);
      v63 = v146;
    }

    v65 = v143;
    sub_10000D594(v143);
    v128 = v35[5];
    v66 = v144;
    sub_10000D594(v144);
    v67 = type metadata accessor for UserInterfaceSizeClass();
    v68 = *(*(v67 - 8) + 56);
    v69 = v132;
    v68(v132, 1, 1, v67);
    v70 = *(v142 + 20);
    v68((v69 + v70), 1, 1, v67);
    sub_10006E758(v65, v69);
    sub_10006E758(v66, v69 + v70);
    sub_1000D399C(v63, 0, v69);
    v72 = v71;

    sub_1000A05CC(v69, type metadata accessor for CalculatorSizeClass);

    if ((v141 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v73 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v140 + 8))(v32, v124);
    }

    v74 = v143;
    v75 = v135;
    sub_10000D594(v143);
    v76 = v144;
    sub_10000D594(v144);
    v77 = v123;
    v68(v123, 1, 1, v67);
    v78 = *(v142 + 20);
    v68((v77 + v78), 1, 1, v67);
    sub_10006E758(v74, v77);
    sub_10006E758(v76, v77 + v78);
    LOBYTE(v78) = sub_10003C9A0(v77);
    v79 = [objc_opt_self() currentDevice];
    v80 = [v79 userInterfaceIdiom];

    v81 = 45.0;
    if (v78)
    {
      v81 = 22.0;
    }

    if (v80)
    {
      v82 = v81;
    }

    else
    {
      v82 = 28.0;
    }

    sub_1000A05CC(v77, type metadata accessor for CalculatorSizeClass);
    v83 = v125;
    v84 = v130;
    *v125 = v131;
    *(v83 + 8) = v84;
    *(v83 + 16) = v129;
    *(v83 + 24) = v62;
    *(v83 + 32) = v72;
    *(v83 + 40) = v82;
    v85 = *(v133 + 44);

    sub_10009C370(v145, v134, v75, 1, v83 + v85);

    v86 = &qword_100157718;
    v87 = &qword_100111BA8;
    sub_100008E68(v83, v137, &qword_100157718, &qword_100111BA8);
    swift_storeEnumTagMultiPayload();
    sub_1000A0780(&qword_100157720, &qword_100157718, &qword_100111BA8, sub_1000A0BB4);
    sub_1000A069C();
    _ConditionalContent<>.init(storage:)();
    v88 = v83;
    return sub_1000035CC(v88, v86, v87);
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10009C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v38 = a5;
  v37 = type metadata accessor for OpacityTransition();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v37);
  v36 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v31 - v11;
  v13 = type metadata accessor for CalculatorKeypadView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10003AE84(&qword_100157740, &qword_100111BB8);
  v34 = *(v17 - 8);
  v35 = v17;
  v18 = *(v34 + 64);
  __chkstk_darwin(v17);
  v20 = v31 - v19;
  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = sub_10001B698(*(a1 + 16), 0);
  if (sub_10001B71C(&v39, v22 + 32, v21, 0, v21) != v21)
  {
    __break(1u);
LABEL_4:
    v22 = &_swiftEmptyArrayStorage;
  }

  v39 = v22;
  v31[1] = swift_getKeyPath();
  sub_1000A0564(v32, v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_10009FFE4(v16, v25 + v23);
  v26 = v25 + v24;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = v33 & 1;

  sub_10003AE84(&qword_1001576D8, &qword_100111B88);
  sub_10003AE84(&qword_100157750, &qword_100111BC0);
  sub_100004880(&qword_1001576E0, &qword_1001576D8, &qword_100111B88);
  sub_100004880(&qword_100157748, &qword_100157750, &qword_100111BC0);
  ForEach<>.init(_:id:content:)();
  OpacityTransition.init()();
  v27 = v37;
  (*(v7 + 16))(v36, v12, v37);
  sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition);
  v28 = AnyTransition.init<A>(_:)();
  (*(v7 + 8))(v12, v27);
  v29 = v38;
  (*(v34 + 32))(v38, v20, v35);
  result = sub_10003AE84(&qword_100157730, &qword_100111BB0);
  *(v29 + *(result + 36)) = v28;
  return result;
}

uint64_t sub_10009C7C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v9 = type metadata accessor for CalculatorKeypadView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_10003AE84(&qword_100157658, &qword_100111B18);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  result = __chkstk_darwin(v16);
  v22 = v39 - v21;
  v23 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v23 >= *(a4 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v43 = v20;
  v44 = v19;
  v45 = v18;
  v46 = a5;
  v49 = *(a4 + 8 * v23 + 32);
  v47 = result;
  sub_1000A0564(a2, v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v24 = *(v10 + 80);
  v41 = a2;
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  sub_10009FFE4(v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);

  sub_10003AE84(&qword_1001576E8, &qword_100111B90);
  v27 = sub_10003AE84(&qword_100157678, &qword_100111B28);
  v40 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v27;
  sub_100004880(&qword_1001576F0, &qword_1001576E8, &qword_100111B90);
  v39[1] = v11;
  sub_1000A09C0();
  sub_100023E08();
  v42 = v28;
  result = ForEach<>.init(_:content:)();
  v29 = v47;
  *&v22[*(v47 + 36)] = 0x4008000000000000;
  if (v23 < *(v48 + 16))
  {
    v49 = *(v48 + 8 * v23 + 32);
    v30 = v22;
    v31 = v29;
    v32 = v40;
    sub_1000A0564(v41, v40, type metadata accessor for CalculatorKeypadView);
    v33 = swift_allocObject();
    sub_10009FFE4(v32, v33 + v25);

    v34 = v43;
    ForEach<>.init(_:content:)();
    *(v34 + *(v31 + 36)) = 0x4000000000000000;
    v35 = v44;
    sub_100008E68(v30, v44, &qword_100157658, &qword_100111B18);
    v36 = v45;
    sub_100008E68(v34, v45, &qword_100157658, &qword_100111B18);
    v37 = v46;
    sub_100008E68(v35, v46, &qword_100157658, &qword_100111B18);
    v38 = sub_10003AE84(qword_100157758, &qword_100111BC8);
    sub_100008E68(v36, v37 + *(v38 + 48), &qword_100157658, &qword_100111B18);
    sub_1000035CC(v34, &qword_100157658, &qword_100111B18);
    sub_1000035CC(v30, &qword_100157658, &qword_100111B18);
    sub_1000035CC(v36, &qword_100157658, &qword_100111B18);
    return sub_1000035CC(v35, &qword_100157658, &qword_100111B18);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10009CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v99 = a4;
  v97 = a3;
  v100 = a2;
  v88 = type metadata accessor for OpacityTransition();
  v87 = *(v88 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v88);
  v85 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v86 = &v76 - v12;
  v13 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v93 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v76 - v17;
  v18 = type metadata accessor for CalculatorSizeClass(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for EnvironmentValues();
  v89 = *(v91 - 8);
  v22 = *(v89 + 64);
  __chkstk_darwin(v91);
  v90 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10003AE84(&qword_1001575F0, &qword_100111AE8);
  v24 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v26 = &v76 - v25;
  v94 = sub_10003AE84(&qword_1001575F8, &qword_100111AF0);
  v27 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v96 = &v76 - v28;
  v95 = sub_10003AE84(&qword_100157600, &qword_100111AF8);
  v29 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v31 = (&v76 - v30);
  v32 = type metadata accessor for CalculatorKeypadView();
  v33 = v32[10];
  v101 = a1;
  v34 = (a1 + v33);
  v36 = *v34;
  v35 = v34[1];
  v103 = v36;
  v104 = v35;
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();
  v37 = v102;
  swift_getKeyPath();
  v103 = v37;
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v37 + 16);

  if (v38 <= 1 && v38)
  {

LABEL_7:
    *v31 = static HorizontalAlignment.center.getter();
    v31[1] = a6;
    *(v31 + 16) = 0;
    v40 = sub_10003AE84(&qword_1001576C8, &qword_100111B58);
    sub_10009D7AC(v101, v100, v97, v99 & 1, v31 + *(v40 + 44), a6);
    v41 = &qword_100157600;
    v42 = &qword_100111AF8;
    sub_100008E68(v31, v96, &qword_100157600, &qword_100111AF8);
    swift_storeEnumTagMultiPayload();
    sub_100004880(&qword_100157618, &qword_100157600, &qword_100111AF8);
    sub_1000A069C();
    _ConditionalContent<>.init(storage:)();
    v43 = v31;
    return sub_1000035CC(v43, v41, v42);
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_7;
  }

  v83 = a5;
  v44 = v101 + v32[8];
  v45 = *v44;
  v46 = *(v44 + 8);

  v84 = v18;
  v82 = v46;
  v81 = v26;
  if (v46 == 1)
  {
    if (*(v100 + 16))
    {
      v79 = *(v100 + 16);
      v78 = *(*(v100 + 32) + 16);

      v48 = v45;
      v80 = v45;
LABEL_13:
      v54 = v99 ^ 1;
      v55 = v92;
      sub_10000D594(v92);
      v76 = v32[5];
      v56 = v93;
      sub_10000D594(v93);
      v57 = type metadata accessor for UserInterfaceSizeClass();
      v58 = *(*(v57 - 8) + 56);
      v58(v21, 1, 1, v57);
      v59 = *(v84 + 20);
      v58(&v21[v59], 1, 1, v57);
      sub_10006E758(v55, v21);
      sub_10006E758(v56, &v21[v59]);
      v77 = v54;
      sub_1000D399C(v48, v54 & 1, v21);
      v61 = v60;

      sub_1000A05CC(v21, type metadata accessor for CalculatorSizeClass);

      if ((v82 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v62 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v63 = v90;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v89 + 8))(v63, v91);
        v45 = v103;
      }

      v64 = v92;
      v65 = v101;
      sub_10000D594(v92);
      v66 = v93;
      sub_10000D594(v93);
      v58(v21, 1, 1, v57);
      v67 = *(v84 + 20);
      v58(&v21[v67], 1, 1, v57);
      sub_10006E758(v64, v21);
      sub_10006E758(v66, &v21[v67]);
      v68 = sub_1000D3BAC(v45, v77 & 1, v21);

      sub_1000A05CC(v21, type metadata accessor for CalculatorSizeClass);
      v69 = v81;
      v70 = v79;
      *v81 = v80;
      *(v69 + 8) = v70;
      *(v69 + 16) = v78;
      *(v69 + 24) = a6;
      *(v69 + 32) = v61;
      *(v69 + 40) = v68;
      v71 = *(sub_10003AE84(&qword_100157608, &qword_100111B00) + 44);

      sub_10009E9B8(v100, v97, v65, v99 & 1, sub_1000A0B94, v69 + v71);

      v72 = v86;
      OpacityTransition.init()();
      v73 = v87;
      v74 = v88;
      (*(v87 + 16))(v85, v72, v88);
      sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition);
      v75 = AnyTransition.init<A>(_:)();
      (*(v73 + 8))(v72, v74);
      *(v69 + *(v98 + 36)) = v75;
      v41 = &qword_1001575F0;
      v42 = &qword_100111AE8;
      sub_100008E68(v69, v96, &qword_1001575F0, &qword_100111AE8);
      swift_storeEnumTagMultiPayload();
      sub_100004880(&qword_100157618, &qword_100157600, &qword_100111AF8);
      sub_1000A069C();
      _ConditionalContent<>.init(storage:)();
      v43 = v69;
      return sub_1000035CC(v43, v41, v42);
    }
  }

  else
  {
    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v90;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v51 = *(v89 + 8);
    result = v51(v50, v91);
    if (*(v100 + 16))
    {
      v79 = *(v100 + 16);
      v80 = v103;
      v78 = *(*(v100 + 32) + 16);

      static os_log_type_t.fault.getter();
      v52 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v53 = v90;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v51(v53, v91);
      v48 = v103;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009D7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v126 = a2;
  v116 = a5;
  v123 = type metadata accessor for OpacityTransition();
  v132 = *(v123 - 8);
  v10 = *(v132 + 64);
  v11 = __chkstk_darwin(v123);
  v122 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v103 - v13;
  v14 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v134 = &v103 - v19;
  v133 = type metadata accessor for CalculatorSizeClass(0);
  v20 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10003AE84(&qword_1001575F0, &qword_100111AE8);
  v28 = *(*(v119 - 8) + 64);
  v29 = __chkstk_darwin(v119);
  v115 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v114 = &v103 - v32;
  v33 = __chkstk_darwin(v31);
  v113 = (&v103 - v34);
  __chkstk_darwin(v33);
  v120 = (&v103 - v35);
  v36 = type metadata accessor for CalculatorKeypadView();
  v37 = *(v36 + 32);
  v135 = a1;
  v38 = a1 + v37;
  v39 = *v38;
  LODWORD(a1) = *(v38 + 8);

  v131 = a1;
  v127 = a3;
  v124 = v27;
  v125 = v23;
  v117 = v24;
  if (a1 == 1)
  {
    if (*(a3 + 16))
    {
      v111 = *(a3 + 16);
      v110 = *(*(a3 + 32) + 16);

      v41 = v39;
      v112 = v39;
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  static os_log_type_t.fault.getter();
  v42 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v43 = v127;
  EnvironmentValues.init()();
  swift_getAtKeyPath();

  v44 = v27;
  v45 = *(v24 + 8);
  result = v45(v44, v23);
  if (!*(v43 + 16))
  {
    goto LABEL_16;
  }

  v111 = *(v43 + 16);
  v112 = v136;
  v110 = *(*(v43 + 32) + 16);

  static os_log_type_t.fault.getter();
  v46 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v47 = v124;
  EnvironmentValues.init()();
  swift_getAtKeyPath();

  v45(v47, v125);
  v41 = v136;
LABEL_6:
  v118 = a4;
  v48 = a4 ^ 1;
  v49 = v134;
  sub_10000D594(v134);
  v128 = *(v36 + 20);
  sub_10000D594(v18);
  v50 = type metadata accessor for UserInterfaceSizeClass();
  v51 = *(*(v50 - 8) + 56);
  v51(v22, 1, 1, v50);
  v52 = *(v133 + 20);
  v129 = v51;
  v51(&v22[v52], 1, 1, v50);
  sub_10006E758(v49, v22);
  sub_10006E758(v18, &v22[v52]);
  v130 = v48;
  sub_1000D399C(v41, v48 & 1, v22);
  v54 = v53;

  sub_1000A05CC(v22, type metadata accessor for CalculatorSizeClass);

  v55 = v39;
  if ((v131 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v56 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v57 = v124;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v117 + 8))(v57, v125);
    v55 = v136;
  }

  v58 = v134;
  v59 = v135;
  sub_10000D594(v134);
  sub_10000D594(v18);
  v60 = v129;
  v129(v22, 1, 1, v50);
  v61 = *(v133 + 20);
  v60(&v22[v61], 1, 1, v50);
  sub_10006E758(v58, v22);
  v109 = v18;
  sub_10006E758(v18, &v22[v61]);
  v62 = sub_1000D3BAC(v55, v130 & 1, v22);

  sub_1000A05CC(v22, type metadata accessor for CalculatorSizeClass);
  v63 = v120;
  v64 = v111;
  *v120 = v112;
  *(v63 + 1) = v64;
  *(v63 + 2) = v110;
  v63[3] = a6;
  *(v63 + 4) = v54;
  v63[5] = v62;
  v110 = sub_10003AE84(&qword_100157608, &qword_100111B00);
  v65 = *(v110 + 44);

  v66 = v126;
  sub_10009E560(v126, v127, v59, v118 & 1);

  v67 = v121;
  OpacityTransition.init()();
  v68 = v132;
  v69 = *(v132 + 16);
  v70 = v123;
  v112 = v132 + 16;
  v111 = v69;
  v69(v122, v67, v123);
  v108 = sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition);
  v71 = AnyTransition.init<A>(_:)();
  v107 = *(v68 + 8);
  v107(v67, v70);
  *(v63 + *(v119 + 36)) = v71;

  v132 = v68 + 8;
  if (!v131)
  {
    static os_log_type_t.fault.getter();
    v73 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v74 = v126;
    v75 = v124;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v76 = *(v117 + 8);
    result = v76(v75, v125);
    if (*(v74 + 16))
    {
      v105 = *(v74 + 16);
      v106 = v136;
      v104 = *(*(v74 + 32) + 16);

      static os_log_type_t.fault.getter();
      v77 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v78 = v124;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v76(v78, v125);
      v72 = v136;
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  if (!*(v66 + 16))
  {
    goto LABEL_17;
  }

  v105 = *(v66 + 16);
  v104 = *(*(v66 + 32) + 16);

  v72 = v39;
  v106 = v39;
LABEL_13:
  v79 = v134;
  sub_10000D594(v134);
  v80 = v109;
  sub_10000D594(v109);
  v81 = v129;
  v129(v22, 1, 1, v50);
  v82 = *(v133 + 20);
  v81(&v22[v82], 1, 1, v50);
  sub_10006E758(v79, v22);
  sub_10006E758(v80, &v22[v82]);
  sub_1000D399C(v72, v130 & 1, v22);
  v84 = v83;

  sub_1000A05CC(v22, type metadata accessor for CalculatorSizeClass);

  v85 = v123;
  if ((v131 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v86 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v87 = v124;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v117 + 8))(v87, v125);
    v39 = v136;
  }

  v89 = v134;
  v88 = v135;
  sub_10000D594(v134);
  sub_10000D594(v80);
  v90 = v129;
  v129(v22, 1, 1, v50);
  v91 = *(v133 + 20);
  v90(&v22[v91], 1, 1, v50);
  sub_10006E758(v89, v22);
  sub_10006E758(v80, &v22[v91]);
  v92 = sub_1000D3BAC(v39, v130 & 1, v22);

  sub_1000A05CC(v22, type metadata accessor for CalculatorSizeClass);
  v93 = v113;
  v94 = v105;
  *v113 = v106;
  *(v93 + 8) = v94;
  *(v93 + 16) = v104;
  *(v93 + 24) = a6;
  *(v93 + 32) = v84;
  *(v93 + 40) = v92;
  v95 = *(v110 + 44);

  sub_10009E9B8(v126, v127, v88, v118 & 1, sub_1000A0A78, v93 + v95);

  v96 = v121;
  OpacityTransition.init()();
  v111(v122, v96, v85);
  v97 = AnyTransition.init<A>(_:)();
  v107(v96, v85);
  v98 = v120;
  *(v93 + *(v119 + 36)) = v97;
  v99 = v114;
  sub_100008E68(v98, v114, &qword_1001575F0, &qword_100111AE8);
  v100 = v115;
  sub_100008E68(v93, v115, &qword_1001575F0, &qword_100111AE8);
  v101 = v116;
  sub_100008E68(v99, v116, &qword_1001575F0, &qword_100111AE8);
  v102 = sub_10003AE84(&qword_1001576D0, &unk_100111B60);
  sub_100008E68(v100, v101 + *(v102 + 48), &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v93, &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v98, &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v100, &qword_1001575F0, &qword_100111AE8);
  return sub_1000035CC(v99, &qword_1001575F0, &qword_100111AE8);
}

uint64_t sub_10009E560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for CalculatorKeypadView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *(a2 + 16);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = sub_10001B698(*(a2 + 16), 0);
  if (sub_10001B71C(&v18, v12 + 32, v11, 0, v11) != v11)
  {
    __break(1u);
LABEL_4:
    v12 = &_swiftEmptyArrayStorage;
  }

  v18 = v12;
  swift_getKeyPath();
  sub_1000A0564(a3, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_10009FFE4(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = a4 & 1;

  sub_10003AE84(&qword_1001576D8, &qword_100111B88);
  sub_10003AE84(&qword_100157658, &qword_100111B18);
  sub_100004880(&qword_1001576E0, &qword_1001576D8, &qword_100111B88);
  sub_1000A0860();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10009E7A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CalculatorKeypadView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8 - 8);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(a3 + 16))
  {
    v15[1] = *(a3 + 8 * v12 + 32);
    sub_1000A0564(a2, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    sub_10009FFE4(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

    sub_10003AE84(&qword_1001576E8, &qword_100111B90);
    sub_10003AE84(&qword_100157678, &qword_100111B28);
    sub_100004880(&qword_1001576F0, &qword_1001576E8, &qword_100111B90);
    sub_1000A09C0();
    sub_100023E08();
    ForEach<>.init(_:content:)();
    result = sub_10003AE84(&qword_100157658, &qword_100111B18);
    *(a4 + *(result + 36)) = 0x4008000000000000;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009E9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v19[2] = a5;
  v10 = type metadata accessor for CalculatorKeypadView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_10001B698(*(a1 + 16), 0);
  if (sub_10001B71C(&v20, v14 + 32, v13, 0, v13) != v13)
  {
    __break(1u);
LABEL_4:
    v14 = &_swiftEmptyArrayStorage;
  }

  v20 = v14;
  swift_getKeyPath();
  sub_1000A0564(a3, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  sub_10009FFE4(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = a1;
  *(v17 + 8) = a2;
  *(v17 + 16) = a4 & 1;

  sub_10003AE84(&qword_1001576D8, &qword_100111B88);
  sub_10003AE84(&qword_100157658, &qword_100111B18);
  sub_100004880(&qword_1001576E0, &qword_1001576D8, &qword_100111B88);
  sub_1000A0860();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10009EBEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CalculatorKeypadView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8 - 8);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(a3 + 16))
  {
    v15[1] = *(a3 + 8 * v12 + 32);
    sub_1000A0564(a2, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    sub_10009FFE4(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

    sub_10003AE84(&qword_1001576E8, &qword_100111B90);
    sub_10003AE84(&qword_100157678, &qword_100111B28);
    sub_100004880(&qword_1001576F0, &qword_1001576E8, &qword_100111B90);
    sub_1000A09C0();
    sub_100023E08();
    ForEach<>.init(_:content:)();
    result = sub_10003AE84(&qword_100157658, &qword_100111B18);
    *(a4 + *(result + 36)) = 0x4000000000000000;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009EDF8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalculatorKeypadView();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v70 = a1[2];
  v71 = v14;
  v15 = a1[3];
  v68 = a1[4];
  v69 = v15;
  v16 = a1[5];
  v66 = a1[6];
  v67 = v16;
  v17 = a2 + *(v6 + 48);
  v18 = *(v17 + 16);
  v75 = *v17;
  v76 = v18;
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  State.wrappedValue.getter();
  v19 = v73;
  v20 = v74;
  v63 = v6;
  v21 = *(v6 + 24);
  v65 = a2;
  v22 = (a2 + v21);
  v23 = *v22;
  LOBYTE(a1) = *(v22 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v23 = v75;
  }

  v25 = 0x1000000000000;
  if (!v66)
  {
    v25 = 0;
  }

  v26 = 0x10000000000;
  if (!v67)
  {
    v26 = 0;
  }

  v27 = &_mh_execute_header;
  if (!v68)
  {
    v27 = 0;
  }

  v28 = 0x1000000;
  if (!v69)
  {
    v28 = 0;
  }

  v29 = 0x10000;
  if (!v70)
  {
    v29 = 0;
  }

  v30 = 256;
  if (!v71)
  {
    v30 = 0;
  }

  v59 = v27 | v26 | v25;
  v60 = v30 | v13 | v29 | v28;
  v31 = sub_100025D2C(v60 | v59);
  v32 = sub_100025E90(v31);
  v64 = v13;
  if (v32)
  {
    v33 = v32;
    v34 = *(v23 + 16);
    sub_10001B0D8();

    v35 = CalculateExpression.allowedOperations.getter();

    LOBYTE(v34) = sub_1000266E4(v33, v35);

    v36 = v34 ^ 1;
  }

  else
  {

    v36 = 0;
  }

  type metadata accessor for CalculatorViewModel();
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  v58 = Environment.init<A>(_:)();
  LOBYTE(v75) = v37 & 1;
  type metadata accessor for CalculatorKeypadViewModel(0);
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel);
  v38 = Environment.init<A>(_:)();
  LOBYTE(v73) = v39 & 1;
  KeyPath = swift_getKeyPath();
  v72 = 0;
  v41 = v36 & 1;
  v42 = v75;
  v43 = v73;
  v44 = v65;
  v45 = v62;
  sub_1000A0564(v65, v62, type metadata accessor for CalculatorKeypadView);
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = swift_allocObject();
  sub_10009FFE4(v45, v47 + v46);
  v48 = v44 + *(v63 + 52);
  v49 = *v48;
  v50 = *(v48 + 8);
  LOBYTE(v75) = v49;
  *(&v75 + 1) = v50;
  sub_10003AE84(&qword_1001575D0, &qword_100111A50);
  State.wrappedValue.getter();
  v51 = v73;
  result = sub_100025D2C(v60 | v59);
  *a3 = v58;
  *(a3 + 8) = v42;
  v53 = v51 != result || v51 == 94;
  v54 = 0.0;
  *(a3 + 16) = v38;
  if (!v53)
  {
    v54 = 1.0;
  }

  *(a3 + 24) = v43;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 57) = v64;
  v55 = v70;
  *(a3 + 58) = v71;
  *(a3 + 59) = v55;
  v56 = v68;
  *(a3 + 60) = v69;
  *(a3 + 61) = v56;
  v57 = v66;
  *(a3 + 62) = v67;
  *(a3 + 63) = v57;
  *(a3 + 64) = v19;
  *(a3 + 72) = v20;
  *(a3 + 80) = v41;
  *(a3 + 88) = sub_1000A1240;
  *(a3 + 96) = 0;
  *(a3 + 104) = sub_1000A0AF8;
  *(a3 + 112) = v47;
  *(a3 + 120) = v54;
  return result;
}

uint64_t sub_10009F344(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for CalculatorKeypadView() + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  result = State.wrappedValue.getter();
  if (v15 != v2 || v16 != v3)
  {
    State.wrappedValue.setter();
    if (qword_100154448 != -1)
    {
      swift_once();
    }

    v10 = (qword_100160980 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache);
    swift_beginAccess();
    v11 = type metadata accessor for CalculatorButtonSizeCache(0);
    v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
    v13 = 0.0;
    v14 = 0.0;
    if (!v12)
    {
      v13 = *v10;
      v14 = v10[1];
    }

    return sub_10002FE38(v13, v14, v2, v3);
  }

  return result;
}

uint64_t sub_10009F4A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalculatorKeypadView();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v70 = a1[2];
  v71 = v14;
  v15 = a1[3];
  v68 = a1[4];
  v69 = v15;
  v16 = a1[5];
  v66 = a1[6];
  v67 = v16;
  v17 = a2 + *(v6 + 44);
  v18 = *(v17 + 16);
  v75 = *v17;
  v76 = v18;
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  State.wrappedValue.getter();
  v19 = v73;
  v20 = v74;
  v63 = v6;
  v21 = *(v6 + 24);
  v65 = a2;
  v22 = (a2 + v21);
  v23 = *v22;
  LOBYTE(a1) = *(v22 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v23 = v75;
  }

  v25 = 0x1000000000000;
  if (!v66)
  {
    v25 = 0;
  }

  v26 = 0x10000000000;
  if (!v67)
  {
    v26 = 0;
  }

  v27 = &_mh_execute_header;
  if (!v68)
  {
    v27 = 0;
  }

  v28 = 0x1000000;
  if (!v69)
  {
    v28 = 0;
  }

  v29 = 0x10000;
  if (!v70)
  {
    v29 = 0;
  }

  v30 = 256;
  if (!v71)
  {
    v30 = 0;
  }

  v59 = v27 | v26 | v25;
  v60 = v30 | v13 | v29 | v28;
  v31 = sub_100025D2C(v60 | v59);
  v32 = sub_100025E90(v31);
  v64 = v13;
  if (v32)
  {
    v33 = v32;
    v34 = *(v23 + 16);
    sub_10001B0D8();

    v35 = CalculateExpression.allowedOperations.getter();

    LOBYTE(v34) = sub_1000266E4(v33, v35);

    v36 = v34 ^ 1;
  }

  else
  {

    v36 = 0;
  }

  type metadata accessor for CalculatorViewModel();
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  v58 = Environment.init<A>(_:)();
  LOBYTE(v75) = v37 & 1;
  type metadata accessor for CalculatorKeypadViewModel(0);
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel);
  v38 = Environment.init<A>(_:)();
  LOBYTE(v73) = v39 & 1;
  KeyPath = swift_getKeyPath();
  v72 = 0;
  v41 = v36 & 1;
  v42 = v75;
  v43 = v73;
  v44 = v65;
  v45 = v62;
  sub_1000A0564(v65, v62, type metadata accessor for CalculatorKeypadView);
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = swift_allocObject();
  sub_10009FFE4(v45, v47 + v46);
  v48 = v44 + *(v63 + 52);
  v49 = *v48;
  v50 = *(v48 + 8);
  LOBYTE(v75) = v49;
  *(&v75 + 1) = v50;
  sub_10003AE84(&qword_1001575D0, &qword_100111A50);
  State.wrappedValue.getter();
  v51 = v73;
  result = sub_100025D2C(v60 | v59);
  *a3 = v58;
  *(a3 + 8) = v42;
  v53 = v51 != result || v51 == 94;
  v54 = 0.0;
  *(a3 + 16) = v38;
  if (!v53)
  {
    v54 = 1.0;
  }

  *(a3 + 24) = v43;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 57) = v64;
  v55 = v70;
  *(a3 + 58) = v71;
  *(a3 + 59) = v55;
  v56 = v68;
  *(a3 + 60) = v69;
  *(a3 + 61) = v56;
  v57 = v66;
  *(a3 + 62) = v67;
  *(a3 + 63) = v57;
  *(a3 + 64) = v19;
  *(a3 + 72) = v20;
  *(a3 + 80) = v41;
  *(a3 + 88) = sub_1000A1240;
  *(a3 + 96) = 0;
  *(a3 + 104) = sub_1000A0AB0;
  *(a3 + 112) = v47;
  *(a3 + 120) = v54;
  return result;
}

uint64_t sub_10009F9F4(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for CalculatorKeypadView() + 44));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  result = State.wrappedValue.getter();
  if (v15 != v2 || v16 != v3)
  {
    State.wrappedValue.setter();
    if (qword_100154448 != -1)
    {
      swift_once();
    }

    v10 = qword_100160980 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
    swift_beginAccess();
    v11 = type metadata accessor for CalculatorButtonSizeCache(0);
    v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
    v13 = 0.0;
    v14 = 0.0;
    if (!v12)
    {
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
    }

    return sub_10002FE38(v2, v3, v13, v14);
  }

  return result;
}

void sub_10009FB80()
{
  sub_10009FDCC(319, &qword_100155310, &qword_100154948, qword_1001130B0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100013EC8(319, &qword_100156648, type metadata accessor for CalculatorViewModel, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100013EC8(319, &qword_100156650, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100013EC8(319, &qword_1001557F0, type metadata accessor for CalculatorLayout, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100013EC8(319, &qword_1001574A8, type metadata accessor for CalculatorKeypadViewModel, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100013EC8(319, &qword_1001574B0, type metadata accessor for CGSize, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10009FDCC(319, &unk_1001574B8, &qword_100157438, qword_100111838, &type metadata accessor for State);
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

void sub_10009FDCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10003AECC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10009FE4C()
{
  result = qword_100157530;
  if (!qword_100157530)
  {
    sub_10003AECC(&qword_100157510, &qword_1001118D8);
    sub_10009FF04();
    sub_100004880(&qword_100157568, &qword_100157570, &qword_100111938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157530);
  }

  return result;
}

unint64_t sub_10009FF04()
{
  result = qword_100157538;
  if (!qword_100157538)
  {
    sub_10003AECC(&qword_100157540, &qword_100111920);
    sub_100004880(&qword_100157548, &qword_100157550, &qword_100111928);
    sub_100004880(&qword_100157558, &qword_100157560, &qword_100111930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157538);
  }

  return result;
}

uint64_t sub_10009FFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorKeypadView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1000A0048(_BYTE *a1)
{
  v3 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009A5B4(a1, v4);
}

uint64_t sub_1000A00B8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009A630(a1, a2, v6);
}

unint64_t sub_1000A0138()
{
  result = qword_100157578;
  if (!qword_100157578)
  {
    sub_10003AECC(&qword_100157518, &qword_1001118E0);
    sub_10003AECC(&qword_100157510, &qword_1001118D8);
    type metadata accessor for CalculatorKeypadViewModel(255);
    sub_10009FE4C();
    sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100157580, &qword_100157588, &qword_100111968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157578);
  }

  return result;
}

uint64_t sub_1000A027C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009A6B0(a1, a2, v6);
}

uint64_t sub_1000A02FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009AA24(a1, a2, v6);
}

unint64_t sub_1000A037C()
{
  result = qword_100157598;
  if (!qword_100157598)
  {
    sub_10003AECC(&qword_100157520, &qword_1001118E8);
    sub_1000A0434();
    sub_100004880(&qword_1001575B8, &qword_1001575C0, &qword_1001119A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157598);
  }

  return result;
}

unint64_t sub_1000A0434()
{
  result = qword_1001575A0;
  if (!qword_1001575A0)
  {
    sub_10003AECC(&qword_100157590, &qword_100111998);
    sub_10003AECC(&qword_100157518, &qword_1001118E0);
    sub_1000A0138();
    sub_10000482C();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001575A8, &qword_1001575B0, &qword_1001119A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001575A0);
  }

  return result;
}

uint64_t sub_1000A0564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A05CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A062C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100157560, &qword_100111930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A069C()
{
  result = qword_100157620;
  if (!qword_100157620)
  {
    sub_10003AECC(&qword_1001575F0, &qword_100111AE8);
    sub_1000A0780(&qword_100157628, &qword_100157608, &qword_100111B00, sub_1000A0830);
    sub_100004880(&qword_1001576B8, &qword_1001576C0, &qword_100111B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157620);
  }

  return result;
}

uint64_t sub_1000A0780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    sub_100004880(&qword_100157630, &qword_100157638, &qword_100111B08);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A0860()
{
  result = qword_100157650;
  if (!qword_100157650)
  {
    sub_10003AECC(&qword_100157658, &qword_100111B18);
    sub_1000A0944(&qword_100157660, &qword_100157668, &qword_100111B20, sub_1000A09C0);
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157650);
  }

  return result;
}

uint64_t sub_1000A0944(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1000A09C0()
{
  result = qword_100157670;
  if (!qword_100157670)
  {
    sub_10003AECC(&qword_100157678, &qword_100111B28);
    sub_1000157B4();
    sub_100004880(&qword_1001576A8, &qword_1001576B0, &unk_100111B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157670);
  }

  return result;
}

uint64_t sub_1000A0B10(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1000A0BB4()
{
  result = qword_100157728;
  if (!qword_100157728)
  {
    sub_10003AECC(&qword_100157730, &qword_100111BB0);
    sub_1000A0C6C();
    sub_100004880(&qword_1001576B8, &qword_1001576C0, &qword_100111B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157728);
  }

  return result;
}

unint64_t sub_1000A0C6C()
{
  result = qword_100157738;
  if (!qword_100157738)
  {
    sub_10003AECC(&qword_100157740, &qword_100111BB8);
    sub_100004880(&qword_100157748, &qword_100157750, &qword_100111BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157738);
  }

  return result;
}

uint64_t sub_1000A0D34(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);

  return a2(a1, v2 + v5, v7, v8, v9);
}

uint64_t sub_1000A0DFC()
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

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *&v4[v1[6]];

  v14 = *&v4[v1[7]];

  v15 = *&v4[v1[8]];

  v16 = &v4[v1[10]];
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = *&v4[v1[11] + 16];

  v20 = *&v4[v1[12] + 16];

  v21 = *&v4[v1[13] + 8];

  v22 = *(v0 + v12);

  v23 = *(v0 + v12 + 8);

  return swift_deallocObject();
}

uint64_t sub_1000A10CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  return sub_10009EBEC(a1, v2 + v6, *v7, a2);
}

uint64_t sub_1000A118C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculatorKeypadView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000A1244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000A128C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A1324(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for Optional();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001577E0, &qword_100111D70);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v16[-v10];
  static VerticalAlignment.bottom.getter();
  v12 = *(a1 + 24);
  v17 = v3;
  v18 = v12;
  v19 = v1;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v9, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v9, v4);
  sub_100020EE8(v11, v4, WitnessTable);
  return (v14)(v11, v4);
}

uint64_t sub_1000A155C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v89 = type metadata accessor for Color.RGBColorSpace();
  v88 = *(v89 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin(v89);
  v90 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for EnvironmentValues();
  v98 = *(v100 - 8);
  v9 = *(v98 + 64);
  __chkstk_darwin(v100);
  v96 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10003AE84(&qword_1001577E8, &qword_100111D78);
  v11 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v91 = v86 - v12;
  v113 = sub_10003AE84(&qword_1001577F0, &qword_100111D80);
  v13 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v93 = v86 - v14;
  v107 = sub_10003AE84(&qword_1001577F8, &unk_100111D88);
  v105 = *(v107 - 8);
  v15 = *(v105 + 64);
  __chkstk_darwin(v107);
  v114 = v86 - v16;
  v110 = sub_10003AE84(&qword_1001577E0, &qword_100111D70);
  v109 = *(v110 - 8);
  v17 = *(v109 + 64);
  v18 = __chkstk_darwin(v110);
  v108 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v106 = v86 - v20;
  v115 = a2;
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v86 - v24;
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  v26 = type metadata accessor for ModifiedContent();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = v86 - v33;
  v86[0] = a1;
  v35 = *a1;
  v94 = *(a1 + 8);
  v35(v32);
  static Font.footnote.getter();
  v112 = a3;
  v126 = a3;
  WitnessTable = swift_getWitnessTable();
  View.font(_:)();

  (*(v22 + 8))(v25, v21);
  v37 = sub_1000A274C();
  v124 = WitnessTable;
  v125 = v37;
  v38 = swift_getWitnessTable();
  v102 = v34;
  v95 = v38;
  sub_100020EE8(v31, v26, v38);
  v101 = v27;
  v39 = v27;
  v40 = v86[0];
  v41 = *(v39 + 8);
  v104 = v31;
  v103 = v26;
  v99 = v39 + 8;
  v97 = v41;
  v41(v31, v26);
  v132 = *(v40 + 24);
  v131 = *(v40 + 16);
  v42 = v131;
  LODWORD(a1) = v132;

  v43 = v42;
  v87 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v96;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v131, &qword_100154810, &qword_10010DF90);
    (*(v98 + 8))(v45, v100);
    v43 = *&v127[0];
  }

  v46 = *(v43 + 16);

  swift_getKeyPath();
  *&v127[0] = v46;
  v86[1] = sub_10001831C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v46 + 24);

  static Color.white.getter();
  v48 = *(v40 + 32);
  v130 = *(v40 + 40);
  v49 = *(v40 + 56);
  v128 = *(v40 + 48);
  v129 = v48;
  v50 = swift_allocObject();
  v51 = v112;
  *(v50 + 16) = v115;
  *(v50 + 24) = v51;
  v52 = *(v40 + 48);
  *(v50 + 64) = *(v40 + 32);
  *(v50 + 80) = v52;
  *(v50 + 96) = *(v40 + 64);
  v53 = *(v40 + 16);
  *(v50 + 32) = *v40;
  *(v50 + 48) = v53;
  (*(v88 + 104))(v90, enum case for Color.RGBColorSpace.sRGB(_:), v89);
  sub_100008E68(&v131, v127, &qword_100154810, &qword_10010DF90);

  v89 = v49;

  sub_100008E68(&v129, v127, &qword_1001556F0, &unk_10010D920);
  sub_100015064(&v128, v127);
  Color.init(_:white:opacity:)();
  v54 = v91;
  CalculateExpressionStackView.init(expression:textAlignment:textColor:rowCount:separatorColor:operationCallback:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = (v54 + *(v92 + 36));
  v56 = v127[1];
  *v55 = v127[0];
  v55[1] = v56;
  v55[2] = v127[2];
  sub_1000A27BC();
  v57 = v93;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v54, &qword_1001577E8, &qword_100111D78);
  v120 = sub_1000238F8();
  v121 = v58;
  LOBYTE(v122) = v59;
  LOBYTE(v119[0]) = 3;
  v60 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v61 = sub_1000A2878();
  v62 = sub_1000239A8();
  View.focused<A>(_:equals:)();

  sub_1000035CC(v57, &qword_1001577F0, &qword_100111D80);

  if ((v87 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v63 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v64 = v96;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v131, &qword_100154810, &qword_10010DF90);
    (*(v98 + 8))(v64, v100);
    v42 = v120;
  }

  v65 = *(v42 + 16);

  swift_getKeyPath();
  v120 = v65;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *(v65 + 24);

  v67 = CalculateExpression.postfixStack.getter();

  v119[0] = v67;
  v68 = swift_allocObject();
  v69 = v112;
  *(v68 + 16) = v115;
  *(v68 + 24) = v69;
  v70 = *(v40 + 48);
  *(v68 + 64) = *(v40 + 32);
  *(v68 + 80) = v70;
  *(v68 + 96) = *(v40 + 64);
  v71 = *(v40 + 16);
  *(v68 + 32) = *v40;
  *(v68 + 48) = v71;
  sub_100008E68(&v131, &v120, &qword_100154810, &qword_10010DF90);

  sub_100008E68(&v129, &v120, &qword_1001556F0, &unk_10010D920);
  sub_100015064(&v128, &v120);
  v115 = sub_10003AE84(&qword_100157820, &qword_100111DC0);
  v120 = v113;
  v121 = v60;
  v122 = v61;
  v123 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_1000A2940();
  v74 = v106;
  v75 = v107;
  v76 = v114;
  View.onChange<A>(of:initial:_:)();

  (*(v105 + 8))(v76, v75);
  v77 = v104;
  v78 = v102;
  v79 = v103;
  (*(v101 + 16))(v104, v102, v103);
  v119[0] = v77;
  v80 = v109;
  v81 = v108;
  v82 = v110;
  (*(v109 + 16))(v108, v74, v110);
  v119[1] = v81;
  v120 = v75;
  v118[0] = v79;
  v118[1] = v82;
  v116 = v95;
  v121 = v115;
  v122 = OpaqueTypeConformance2;
  v123 = v73;
  v117 = swift_getOpaqueTypeConformance2();
  sub_100022AFC(v119, 2uLL, v118);
  v83 = *(v80 + 8);
  v83(v74, v82);
  v84 = v97;
  v97(v78, v79);
  v83(v81, v82);
  return v84(v77, v79);
}

uint64_t sub_1000A2308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  v13 = *(a2 + 16);
  v9 = v14;

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v13, &qword_100154810, &qword_10010DF90);
    (*(v5 + 8))(v8, v4);
  }

  sub_1000604CC(a1, 0);
}

uint64_t sub_1000A2488(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v7 = *(a1 + 16);
  v14 = v7;
  v8 = v15;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v14, &qword_100154810, &qword_10010DF90);
    (*(v3 + 8))(v6, v2);
    v7 = v13;
  }

  swift_getKeyPath();
  v13 = v7;
  sub_10001831C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 54) != 11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v12 - 2) = v7;
    *(&v12 - 8) = 11;
    v13 = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A26FC(uint64_t a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_1000A1324(a1);
}

unint64_t sub_1000A274C()
{
  result = qword_100156378;
  if (!qword_100156378)
  {
    sub_10003AECC(&qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156378);
  }

  return result;
}

uint64_t sub_1000A27B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000A2308(a1, v1 + 32);
}

unint64_t sub_1000A27BC()
{
  result = qword_100157800;
  if (!qword_100157800)
  {
    sub_10003AECC(&qword_1001577E8, &qword_100111D78);
    sub_10001831C(&qword_100157808, &type metadata accessor for CalculateExpressionStackView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157800);
  }

  return result;
}

unint64_t sub_1000A2878()
{
  result = qword_100157810;
  if (!qword_100157810)
  {
    sub_10003AECC(&qword_1001577F0, &qword_100111D80);
    sub_1000A27BC();
    sub_10001831C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157810);
  }

  return result;
}

uint64_t sub_1000A2934()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A2488(v0 + 32);
}

unint64_t sub_1000A2940()
{
  result = qword_100157828;
  if (!qword_100157828)
  {
    sub_10003AECC(&qword_100157820, &qword_100111DC0);
    sub_10001831C(&qword_100154C08, &type metadata accessor for CalculateExpression);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157828);
  }

  return result;
}

uint64_t sub_1000A29F4()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  v1 = sub_100008474(0xD000000000000015, 0x80000001001072A0, 0);
  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  v4 = [v1 applicationState];
  v5 = [v4 isRestricted];

  if (v5)
  {

    return 0;
  }

  v6 = [v3 applicationState];
  v7 = [v6 isInstalled];

  if (v7)
  {

    return 1;
  }

  else
  {
    v8 = [v3 applicationState];
    v9 = [v8 isPlaceholder];

    return v9;
  }
}

void sub_1000A2B44()
{
  sub_1000A2C20(319, &unk_100157940, type metadata accessor for CalculatorMDMRestrictionsManager);
  if (v0 <= 0x3F)
  {
    sub_1000A2C20(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LayoutDirection();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A2C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A2C74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v112 = a2;
  v3 = sub_10003AE84(&qword_1001579F0, &qword_100111FC0);
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  __chkstk_darwin(v3);
  v91 = &v85 - v5;
  v6 = sub_10003AE84(&qword_1001579F8, &qword_100111FC8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v85 - v10;
  v11 = sub_10003AE84(&qword_100157A00, &qword_100111FD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v89 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = &v85 - v15;
  v87 = type metadata accessor for Divider();
  v86 = *(v87 - 8);
  v16 = *(v86 + 64);
  v17 = __chkstk_darwin(v87);
  v97 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v85 - v19;
  v94 = type metadata accessor for EnvironmentValues();
  v93 = *(v94 - 8);
  v20 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10003AE84(&qword_100157A08, &qword_100111FD8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v109 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v113 = &v85 - v26;
  v104 = type metadata accessor for InlinePickerStyle();
  v105 = *(v104 - 8);
  v27 = *(v105 + 64);
  __chkstk_darwin(v104);
  v102 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ModeMenuView();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29 - 8);
  v99 = sub_10003AE84(&qword_100157A10, &qword_100111FE0);
  v100 = *(v99 - 8);
  v32 = *(v100 + 64);
  __chkstk_darwin(v99);
  v34 = &v85 - v33;
  v101 = sub_10003AE84(&qword_100157A18, &qword_100111FE8);
  v103 = *(v101 - 8);
  v35 = *(v103 + 64);
  __chkstk_darwin(v101);
  v98 = &v85 - v36;
  v37 = sub_10003AE84(&qword_100157A20, &qword_100111FF0);
  v107 = *(v37 - 8);
  v108 = v37;
  v38 = *(v107 + 64);
  v39 = __chkstk_darwin(v37);
  v106 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v114 = &v85 - v41;
  sub_1000A75C8(a1, &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  v43 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = &protocol witness table for MainActor;
  sub_1000A762C(&v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
  sub_1000A75C8(a1, &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = static MainActor.shared.getter();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = &protocol witness table for MainActor;
  v47 = a1;
  sub_1000A762C(&v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v43);
  Binding.init(get:set:)();
  v120 = v116;
  v121 = v117;
  v122 = v118;
  v115 = a1;
  sub_10003AE84(&qword_100157A28, &qword_100111FF8);
  sub_1000083B8();
  sub_100004880(&qword_100157A38, &qword_100157A28, &qword_100111FF8);
  Picker.init<A>(selection:content:label:)();
  v48 = v102;
  InlinePickerStyle.init()();
  v49 = sub_100004880(&qword_100157A40, &qword_100157A10, &qword_100111FE0);
  v50 = v98;
  v51 = v99;
  v52 = v104;
  View.pickerStyle<A>(_:)();
  (*(v105 + 8))(v48, v52);
  (*(v100 + 8))(v34, v51);
  v116 = v51;
  v117 = v52;
  v118 = v49;
  v119 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v53 = v101;
  View.labelsHidden()();
  (*(v103 + 8))(v50, v53);
  v54 = *(v47 + 16);
  LOBYTE(v45) = *(v47 + 24);

  if ((v45 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v56 = v92;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v93 + 8))(v56, v94);
    v54 = v116;
  }

  swift_getKeyPath();
  v116 = v54;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v54 + 48);

  if (v57 == 2)
  {

    v58 = 1;
    v59 = v113;
  }

  else
  {
    v59 = v113;
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {
      v58 = 1;
    }

    else
    {
      v61 = v95;
      Divider.init()();
      v62 = v96;
      sub_10002CFB4(v96);
      v63 = v88;
      sub_1000A552C(v88);
      v64 = v86;
      v65 = *(v86 + 16);
      v66 = v97;
      v67 = v61;
      v68 = v87;
      v65(v97, v67, v87);
      v69 = v89;
      sub_100008E68(v62, v89, &qword_100157A00, &qword_100111FD0);
      v70 = v90;
      sub_100008E68(v63, v90, &qword_1001579F8, &qword_100111FC8);
      v71 = v91;
      v65(v91, v66, v68);
      v72 = sub_10003AE84(&qword_100157A48, &qword_100112000);
      sub_100008E68(v69, &v71[*(v72 + 48)], &qword_100157A00, &qword_100111FD0);
      sub_100008E68(v70, &v71[*(v72 + 64)], &qword_1001579F8, &qword_100111FC8);
      sub_1000035CC(v63, &qword_1001579F8, &qword_100111FC8);
      sub_1000035CC(v96, &qword_100157A00, &qword_100111FD0);
      v73 = *(v64 + 8);
      v73(v95, v68);
      sub_1000035CC(v70, &qword_1001579F8, &qword_100111FC8);
      sub_1000035CC(v69, &qword_100157A00, &qword_100111FD0);
      v73(v97, v68);
      v74 = v71;
      v59 = v113;
      sub_100035E70(v74, v113);
      v58 = 0;
    }
  }

  (*(v110 + 56))(v59, v58, 1, v111);
  v76 = v106;
  v75 = v107;
  v77 = *(v107 + 16);
  v78 = v114;
  v79 = v108;
  v77(v106, v114, v108);
  v80 = v109;
  sub_100008E68(v59, v109, &qword_100157A08, &qword_100111FD8);
  v81 = v112;
  v77(v112, v76, v79);
  v82 = sub_10003AE84(&qword_100157A50, &qword_100112008);
  sub_100008E68(v80, &v81[*(v82 + 48)], &qword_100157A08, &qword_100111FD8);
  sub_1000035CC(v59, &qword_100157A08, &qword_100111FD8);
  v83 = *(v75 + 8);
  v83(v78, v79);
  sub_1000035CC(v80, &qword_100157A08, &qword_100111FD8);
  return (v83)(v76, v79);
}

uint64_t sub_1000A3A18@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
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

  v11 = *(v9 + 48);

  *a2 = v11;
  return result;
}

void sub_1000A3BE0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v12 = v17;
  }

  swift_getKeyPath();
  v17 = v12;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v12 + 48);

  sub_1000A3DB8(v15, v11);
}

void sub_1000A3DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v5 = type metadata accessor for ModeMenuView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0x657061506874616DLL;
      v15 = 0xE900000000000072;
    }

    else
    {
      v14 = 0x6D6D6172676F7270;
      v15 = 0xEA00000000007265;
    }
  }

  else
  {
    if (a2)
    {
      v14 = 0x6669746E65696373;
    }

    else
    {
      v14 = 0x6369736162;
    }

    if (a2)
    {
      v15 = 0xEA00000000006369;
    }

    else
    {
      v15 = 0xE500000000000000;
    }
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v16 = 0xE900000000000072;
      if (v14 != 0x657061506874616DLL)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = 0xEA00000000007265;
      if (v14 != 0x6D6D6172676F7270)
      {
        goto LABEL_25;
      }
    }
  }

  else if (a1)
  {
    v16 = 0xEA00000000006369;
    if (v14 != 0x6669746E65696373)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0xE500000000000000;
    if (v14 != 0x6369736162)
    {
      goto LABEL_25;
    }
  }

  if (v15 == v16)
  {

    return;
  }

LABEL_25:
  v17 = v11;
  v42[0] = v10;
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      LOBYTE(v43) = 0;
      v22 = SBSGetScreenLockStatus();
      if (v43 && v22)
      {
        sub_1000A75C8(v2, v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v24 = swift_allocObject();
        sub_1000A762C(v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
        sub_1000F7484(sub_1000A8130, v24);
      }

      else
      {
        sub_1000A6B48();
      }
    }
  }

  else
  {
    if (!a2)
    {
      v19 = *(v2 + 16);
      v20 = *(v2 + 24);

      if ((v20 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v21 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v17 + 8))(v13, v42[0]);
      }

      sub_1000560A8(0);
LABEL_31:

      return;
    }

    v25 = *v2;
    v26 = v2;
    if (*(v2 + 8) == 1)
    {
      v27 = v25;
    }

    else
    {
      v28 = *v2;

      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100030EDC(v25, 0);
      (*(v17 + 8))(v13, v42[0]);
      v27 = v43;
    }

    swift_getKeyPath();
    v43 = v27;
    sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = v27[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed];

    if (v30 == 1)
    {
      v31 = *(v26 + 16);
      v32 = *(v26 + 24);

      if ((v32 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v33 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v17 + 8))(v13, v42[0]);
      }

      sub_1000560A8(1);
    }

    else
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000048C8(v34, qword_100160D38);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Scientific mode disabled…", v37, 2u);
      }

      v38 = *(v26 + 16);
      v39 = *(v26 + 24);

      if ((v39 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v40 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v17 + 8))(v13, v42[0]);
        v38 = v43;
      }

      if (v38[49] == 4)
      {
        goto LABEL_31;
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v42[-2] = v38;
      LOBYTE(v42[-1]) = 4;
      v43 = v38;
      sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1000A4628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_10003AE84(&qword_100157AA8, &qword_100112108);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v56 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_100157AB0, &unk_100112110);
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  v14 = __chkstk_darwin(v12);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v62 = &v56 - v17;
  __chkstk_darwin(v16);
  v72 = &v56 - v18;
  v69 = sub_10003AE84(&qword_100157AB8, &qword_100115BB0);
  v73 = *(v69 - 8);
  v19 = *(v73 + 64);
  v20 = __chkstk_darwin(v69);
  v61 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v56 - v23;
  __chkstk_darwin(v22);
  v26 = &v56 - v25;
  LOBYTE(v74[0]) = 0;
  v27 = sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  sub_1000083B8();
  sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
  v71 = v26;
  PickerOption.init(value:content:)();
  LOBYTE(v74[0]) = 1;
  v60 = v27;
  PickerOption.init(value:content:)();
  v28 = *a1;
  v59 = *(a1 + 8);
  v58 = v8;
  v57 = v11;
  if (v59 == 1)
  {
    v30 = v28;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100030EDC(v28, 0);
    (*(v64 + 8))(v11, v8);
    v30 = v74[0];
  }

  swift_getKeyPath();
  v74[0] = v30;
  v31 = sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v30[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed];

  sub_100004880(&qword_100157AC0, &qword_100157AB8, &qword_100115BB0);
  v33 = 1;
  v34 = v69;
  PickerContent.disabled(_:)();
  v35 = *(v73 + 8);
  v73 += 8;
  v67 = v35;
  v35(v24, v34);
  v74[3] = &type metadata for NotesFeatureFlags;
  v74[4] = sub_10000840C();
  LOBYTE(v32) = isFeatureEnabled(_:)();
  sub_100003F80(v74);
  if (v32)
  {
    v56 = v31;
    LOBYTE(v74[0]) = 2;
    v36 = v61;
    PickerOption.init(value:content:)();
    if (v59)
    {
      v37 = v28;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v39 = v57;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100030EDC(v28, 0);
      (*(v64 + 8))(v39, v58);
      v37 = v74[0];
    }

    v34 = v69;
    v40 = v70;
    v41 = v68;
    swift_getKeyPath();
    v74[0] = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = v37[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed];

    v43 = v62;
    PickerContent.disabled(_:)();
    v67(v36, v34);
    (*(v41 + 32))(v40, v43, v12);
    v33 = 0;
  }

  v44 = 1;
  v45 = v70;
  v46 = v33;
  v47 = v68;
  (*(v68 + 56))(v70, v46, 1, v12);
  v48 = v66;
  dispatch thunk of PickerContent._identifiedView.getter();
  v49 = sub_10003AE84(&qword_100157AC8, &qword_100112148);
  v50 = *(v49 + 48);
  sub_100004880(&qword_100157AD0, &qword_100157AB0, &unk_100112110);
  dispatch thunk of PickerContent._identifiedView.getter();
  v51 = *(v49 + 64);
  v52 = v65;
  sub_100008E68(v45, v65, &qword_100157AA8, &qword_100112108);
  if ((*(v47 + 48))(v52, 1, v12) != 1)
  {
    v53 = v63;
    (*(v47 + 32))(v63, v52, v12);
    dispatch thunk of PickerContent._identifiedView.getter();
    (*(v47 + 8))(v53, v12);
    v44 = 0;
  }

  v54 = sub_10003AE84(&qword_100157AD8, &qword_100112150);
  (*(*(v54 - 8) + 56))(v48 + v51, v44, 1, v54);
  sub_1000035CC(v45, &qword_100157AA8, &qword_100112108);
  (*(v47 + 8))(v72, v12);
  return (v67)(v71, v34);
}

uint64_t sub_1000A4FB4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings);
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

uint64_t sub_1000A5190@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings);
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

uint64_t sub_1000A5368@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings);
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

uint64_t sub_1000A54C4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A552C@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v93 = *(v1 - 8);
  v94 = v1;
  v2 = *(v93 + 64);
  __chkstk_darwin(v1);
  v92 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10003AE84(&qword_100157A58, &qword_100112010);
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  __chkstk_darwin(v4);
  v86 = &v80 - v6;
  v7 = sub_10003AE84(&qword_100157A60, &qword_100112018);
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  v9 = __chkstk_darwin(v7);
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v80 - v12;
  __chkstk_darwin(v11);
  v90 = &v80 - v13;
  v14 = type metadata accessor for Locale.LanguageCode();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  __chkstk_darwin(v14);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10003AE84(&qword_100157A68, &unk_100112020);
  v17 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v19 = &v80 - v18;
  v20 = type metadata accessor for Locale.Language();
  v84 = *(v20 - 8);
  v85 = v20;
  v21 = *(v84 + 64);
  __chkstk_darwin(v20);
  v83 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Locale();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v82 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v80 - v32;
  v34 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v95 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v80 - v39;
  __chkstk_darwin(v38);
  v42 = &v80 - v41;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v43 = sub_100003D58();
  v44 = [v43 locale];

  if (v44)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v24 + 56))(v31, 0, 1, v23);
  }

  else
  {
    (*(v24 + 56))(v31, 1, 1, v23);
  }

  sub_10000D5B8(v31, v33, &qword_100155210, &qword_100111700);
  v45 = (*(v24 + 48))(v33, 1, v23);
  v46 = v97;
  if (v45)
  {
    sub_1000035CC(v33, &qword_100155210, &qword_100111700);
    (*(v46 + 56))(v42, 1, 1, v14);
  }

  else
  {
    v47 = v82;
    (*(v24 + 16))(v82, v33, v23);
    sub_1000035CC(v33, &qword_100155210, &qword_100111700);
    v48 = v83;
    Locale.language.getter();
    (*(v24 + 8))(v47, v23);
    Locale.Language.languageCode.getter();
    (*(v84 + 8))(v48, v85);
  }

  Locale.LanguageCode.init(stringLiteral:)();
  (*(v46 + 56))(v40, 0, 1, v14);
  v49 = *(v96 + 48);
  sub_100008E68(v42, v19, &qword_100157A70, &unk_100112030);
  sub_100008E68(v40, &v19[v49], &qword_100157A70, &unk_100112030);
  v50 = *(v46 + 48);
  if (v50(v19, 1, v14) == 1)
  {
    sub_1000035CC(v40, &qword_100157A70, &unk_100112030);
    sub_1000035CC(v42, &qword_100157A70, &unk_100112030);
    if (v50(&v19[v49], 1, v14) == 1)
    {
      sub_1000035CC(v19, &qword_100157A70, &unk_100112030);
LABEL_17:
      type metadata accessor for MainActor();
      v59 = static MainActor.shared.getter();
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = &protocol witness table for MainActor;
      v61 = static MainActor.shared.getter();
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = &protocol witness table for MainActor;
      Binding.init(get:set:)();
      sub_10003AE84(&qword_100156920, &qword_10010FAA0);
      sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
      v63 = v86;
      Toggle.init(isOn:label:)();
      LocalizedStringKey.init(stringLiteral:)();
      v64 = Text.init(_:tableName:bundle:comment:)();
      v66 = v65;
      v68 = v67;
      sub_100004880(&qword_100157A78, &qword_100157A58, &qword_100112010);
      v69 = v88;
      v70 = v89;
      View.accessibilityLabel(_:)();
      sub_10000C6AC(v64, v66, v68 & 1);

      (*(v87 + 8))(v63, v69);
      sub_10003AE84(&qword_100157A80, &unk_100115410);
      v71 = v93;
      v72 = *(v93 + 72);
      v73 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10010DBE0;
      static AccessibilityTraits.isToggle.getter();
      static AccessibilityTraits.isButton.getter();
      v101 = v74;
      sub_100006608(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
      sub_10003AE84(&qword_100156A70, &qword_100112040);
      sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
      v75 = v92;
      v76 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v77 = v91;
      v54 = v99;
      ModifiedContent<>.accessibilityAddTraits(_:)();
      (*(v71 + 8))(v75, v76);
      sub_1000035CC(v70, &qword_100157A60, &qword_100112018);
      v78 = v90;
      ModifiedContent<>.accessibilityIdentifier(_:)();
      sub_1000035CC(v77, &qword_100157A60, &qword_100112018);
      v53 = v100;
      sub_10000D5B8(v78, v100, &qword_100157A60, &qword_100112018);
      v52 = 0;
      return (*(v98 + 56))(v53, v52, 1, v54);
    }

    goto LABEL_14;
  }

  v51 = v95;
  sub_100008E68(v19, v95, &qword_100157A70, &unk_100112030);
  if (v50(&v19[v49], 1, v14) == 1)
  {
    sub_1000035CC(v40, &qword_100157A70, &unk_100112030);
    sub_1000035CC(v42, &qword_100157A70, &unk_100112030);
    (*(v46 + 8))(v51, v14);
LABEL_14:
    sub_1000035CC(v19, &qword_100157A68, &unk_100112020);
    goto LABEL_15;
  }

  v55 = v81;
  (*(v46 + 32))(v81, &v19[v49], v14);
  sub_100006608(&qword_100157A88, &type metadata accessor for Locale.LanguageCode);
  v56 = v51;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v46 + 8);
  v58(v55, v14);
  sub_1000035CC(v40, &qword_100157A70, &unk_100112030);
  sub_1000035CC(v42, &qword_100157A70, &unk_100112030);
  v58(v56, v14);
  sub_1000035CC(v19, &qword_100157A70, &unk_100112030);
  if (v57)
  {
    goto LABEL_17;
  }

LABEL_15:
  v52 = 1;
  v54 = v99;
  v53 = v100;
  return (*(v98 + 56))(v53, v52, 1, v54);
}

uint64_t sub_1000A6230@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A62A0(uint64_t a1)
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(a1 + *(type metadata accessor for ModeMenuView() + 28));
  (*(v3 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v2);
  sub_10002DD60();

  Tip.invalidate(reason:)();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000A63D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a4;
  if (*(a4 + 8) == 1)
  {
    v13 = v12;
  }

  else
  {
    v14 = *a4;

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100030EDC(v12, 0);
    (*(v7 + 8))(v10, v6);
    v13 = v24;
  }

  swift_getKeyPath();
  v24 = v13;
  sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v13[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed];

  if (v16 == 1)
  {
    v17 = static Animation.easeInOut.getter();
    __chkstk_darwin(v17);
    *(&v23 - 2) = a4;
    *(&v23 - 8) = v11;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v19 = *(a4 + 16);
    v20 = *(a4 + 24);

    if ((v20 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v10, v6);
      v19 = v24;
    }

    if (v19[49] != 7)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v23 - 2) = v19;
      *(&v23 - 8) = 7;
      v24 = v19;
      sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1000A67A4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  sub_100009774(a2 & 1);
}

uint64_t sub_1000A690C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v2 + 17);
  return result;
}

void sub_1000A69E8(char *a1)
{
  v1 = *a1;
  if (qword_100154728 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  sub_1000F6270(v1);
}

uint64_t sub_1000A6AA4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1000A6B48()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v49 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  if (*(v1 + 8) == 1)
  {
    v12 = v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100030EDC(v11, 0);
    (*(v7 + 8))(v10, v6);
    v12 = v50;
  }

  swift_getKeyPath();
  v50 = v12;
  sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = v12[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed];

  if (v14 != 1)
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000048C8(v20, qword_100160D38);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Math Notes disabled…", v23, 2u);
    }

    v24 = v1[2];
    v25 = *(v1 + 24);

    if ((v25 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v10, v6);
      v24 = v50;
    }

    if (v24[49] == 5)
    {
      goto LABEL_17;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v49 - 2) = v24;
    *(&v49 - 8) = 5;
    v50 = v24;
    sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    goto LABEL_27;
  }

  if ((sub_1000A29F4() & 1) == 0)
  {
    if (qword_100154390 != -1)
    {
      swift_once();
    }

    v27 = sub_1000048C8(v2, qword_1001608A8);
    sub_100008E68(v27, v5, &qword_100155078, &qword_10010DBA0);
    v28 = type metadata accessor for URL();
    v29 = (*(*(v28 - 8) + 48))(v5, 1, v28);
    sub_1000035CC(v5, &qword_100155078, &qword_10010DBA0);
    if (v29 == 1)
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000048C8(v30, qword_100160D38);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Invalid URL link attempting to prompt Notes app installation.", v33, 2u);
      }

      return;
    }

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000048C8(v35, qword_100160D38);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Notes app not installed. Prompting installation…", v38, 2u);
    }

    v39 = v1[2];
    v40 = *(v1 + 24);

    if ((v40 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v10, v6);
      v39 = v50;
    }

    if (v39[49] == 1)
    {
      goto LABEL_17;
    }

    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    *(&v49 - 2) = v39;
    *(&v49 - 8) = 1;
    v50 = v39;
    sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
LABEL_27:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v15 = objc_allocWithZone(LSApplicationRecord);
  v16 = sub_100008474(0xD000000000000015, 0x80000001001072A0, 0);
  if (v16)
  {
    v43 = v16;
    if (qword_100154380 != -1)
    {
      swift_once();
    }

    v44 = [qword_100154FD0 requiresPreflightForApplicationRecord:v43];

    if (v44)
    {
      v45 = v1[2];
      v46 = *(v1 + 24);

      if ((v46 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v47 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v7 + 8))(v10, v6);
        v45 = v50;
      }

      if (v45[49] != 2)
      {
        v48 = swift_getKeyPath();
        __chkstk_darwin(v48);
        *(&v49 - 2) = v45;
        *(&v49 - 8) = 2;
        v50 = v45;
        sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return;
      }

LABEL_17:

      return;
    }
  }

  v17 = v1[2];
  v18 = *(v1 + 24);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  sub_1000560A8(2);
}

uint64_t sub_1000A75C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A762C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7690()
{
  v1 = *(type metadata accessor for ModeMenuView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000A62A0(v2);
}

uint64_t sub_1000A7C44(uint64_t a1)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000A76F0(a1, v2 | (v1[1] << 8) | *v1);
}

unint64_t sub_1000A7C68()
{
  result = qword_1001579C0;
  if (!qword_1001579C0)
  {
    sub_10003AECC(&qword_100157990, &unk_100111ED0);
    sub_1000A7CF4();
    sub_100015A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001579C0);
  }

  return result;
}

unint64_t sub_1000A7CF4()
{
  result = qword_1001579C8;
  if (!qword_1001579C8)
  {
    sub_10003AECC(&qword_1001579B8, &qword_100111F20);
    sub_10003AECC(&qword_100157988, &qword_100111EC8);
    sub_10003AECC(&qword_100157980, &qword_100111EC0);
    sub_10003AECC(&qword_100157978, &qword_100111EB8);
    sub_100004880(&qword_1001579A8, &qword_100157978, &qword_100111EB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001579D0, &qword_1001579D8, &qword_100111F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001579C8);
  }

  return result;
}

uint64_t sub_1000A7E9C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ModeMenuView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000A3A18(v6, a1);
}

uint64_t sub_1000A7F30@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000A690C(a1);
}

void sub_1000A7F38(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000A69E8(a1);
}

uint64_t sub_1000A7F40()
{
  v1 = (type metadata accessor for ModeMenuView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100030EDC(*(v0 + v2), *(v0 + v2 + 8));
  v5 = *(v0 + v2 + 16);

  v6 = v1[8];
  v7 = type metadata accessor for LayoutDirection();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = *(v0 + v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_1000A8068(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ModeMenuView() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

void sub_1000A8130(uint64_t a1)
{
  v3 = *(type metadata accessor for ModeMenuView() - 8);
  if (!a1)
  {
    v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
    sub_1000A6B48();
  }
}

uint64_t getEnumTagSinglePayload for ModeButtonAccessibilityModifiers(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ModeButtonAccessibilityModifiers(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 1;
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

unint64_t sub_1000A82A0()
{
  result = qword_100157AE0;
  if (!qword_100157AE0)
  {
    sub_10003AECC(&qword_1001579E8, &unk_100111FB0);
    sub_10003AECC(&qword_100157990, &unk_100111ED0);
    sub_1000A7C68();
    swift_getOpaqueTypeConformance2();
    sub_100004880(qword_100157100, &qword_100157080, &qword_100110E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157AE0);
  }

  return result;
}

uint64_t sub_1000A83AC(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v6, "buildMenuWithBuilder:", a1);
  [a1 removeMenuForIdentifier:UIMenuFile];
  [a1 removeMenuForIdentifier:UIMenuFormat];
  [a1 removeMenuForIdentifier:UIMenuHide];
  [a1 removeMenuForIdentifier:UIMenuQuit];
  [a1 removeMenuForIdentifier:UIMenuFind];
  v5[4] = variable initialization expression of CalculatorHistoryRecordManager.recordsPendingAdd;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000A8534;
  v5[3] = &unk_10014C8E8;
  v3 = _Block_copy(v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuWindow fromChildrenBlock:v3];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

Class sub_1000A8534(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1000A8660();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_1000A8624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000A8660()
{
  result = qword_100157BF8;
  if (!qword_100157BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100157BF8);
  }

  return result;
}

uint64_t sub_1000A86B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ACA4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 24 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    memmove(v6, v6 + 3, 24 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1000A8754(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ACA60(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1000A87D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000ACA74(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_1000A8868()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1000A8918()
{
  v1 = v0;
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 40);
  if (v2)
  {

    return v2;
  }

  if (qword_1001546F8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = qword_100160D68;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_1000ADDA4(v28);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    swift_getKeyPath();
    *&v28[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = [*(v1 + 16) categories];
    sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v13 = v22;
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if ([v22 unitType] == 16)
        {
          goto LABEL_43;
        }

        ++v21;
        if (v23 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

LABEL_47:

    __break(1u);
    return result;
  }

  v7 = v25;
  swift_getKeyPath();
  *&v28[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = [*(v1 + 16) categories];
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_13:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (CalculateUnitCategory.id.getter() == v24 && v15 == v7)
    {

      goto LABEL_43;
    }

    v16 = v7;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      break;
    }

    ++v11;
    v7 = v16;
    if (v14 == v10)
    {
      goto LABEL_31;
    }
  }

LABEL_43:

  return v13;
}

id sub_1000A8DB8()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  if (v1)
  {

    return v1;
  }

  if (qword_1001546F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = qword_100160D68;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (!*(&v22 + 1))
    {
      sub_1000ADDA4(v23);
      goto LABEL_32;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

    v6 = v20;
    v7 = sub_1000A8918();
    v8 = [v7 units];

    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_13:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (CalculateUnit.id.getter() == v19 && v15 == v6)
      {

        return v13;
      }

      v16 = v6;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {

        return v13;
      }

      ++v11;
      v6 = v16;
      if (v14 == v10)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_31:

LABEL_32:
  v18 = sub_1000A8918();
  v13 = [v18 preferredFromUnit];

  return v13;
}

id sub_1000A9128()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  if (v1)
  {

    return v1;
  }

  if (qword_1001546F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = qword_100160D68;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (!*(&v22 + 1))
    {
      sub_1000ADDA4(v23);
      goto LABEL_32;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

    v6 = v20;
    v7 = sub_1000A8918();
    v8 = [v7 units];

    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_13:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (CalculateUnit.id.getter() == v19 && v15 == v6)
      {

        return v13;
      }

      v16 = v6;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {

        return v13;
      }

      ++v11;
      v6 = v16;
      if (v14 == v10)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_31:

LABEL_32:
  v18 = sub_1000A8918();
  v13 = [v18 preferredToUnit];

  return v13;
}

void *sub_1000A9498()
{
  v0 = type metadata accessor for CalculatorUnitConversionDataProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1000AA71C();
  qword_100160D00 = v3;
  return result;
}

id sub_1000A94D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1000A95BC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1000050A0(0, &qword_100157CE8, CalculateUnitCollection_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A9728()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);

    return v1;
  }

  v3 = v0;
  swift_getKeyPath();
  v49 = v0;
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = [*(v0 + 16) categories];
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = sub_10007746C(_swiftEmptyArrayStorage);
  if (v5 >> 62)
  {
LABEL_34:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v3;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_35:

    v40 = *(v42 + 24);
    *(v42 + 24) = v1;

    return v1;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v0;
  if (!v6)
  {
    goto LABEL_35;
  }

LABEL_5:
  v7 = 0;
  v3 = 0;
  v45 = v5 & 0xFFFFFFFFFFFFFF8;
  v46 = v5 & 0xC000000000000001;
  v43 = v6;
  v44 = v5;
  while (1)
  {
    if (v46)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v45 + 16))
      {
        goto LABEL_31;
      }

      v11 = *(v5 + 8 * v7 + 32);
    }

    v12 = v11;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v47 = v7 + 1;
    v13 = CalculateUnitCategory.id.getter();
    v48 = v14;
    v15 = [v12 units];
    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v16 >> 62))
    {
      v17 = (v16 & 0xFFFFFFFFFFFFFF8);

      goto LABEL_14;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      break;
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_14:
    v49 = v17;
    sub_1000ACDBC(&v49);

    v5 = v49;
    v18 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v1;
    v20 = v13;
    v22 = sub_10007519C(v13, v48);
    v23 = v1[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_32;
    }

    v26 = v21;
    if (v1[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v21)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1000763D4();
        if (v26)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_100075CB8(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_10007519C(v20, v48);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_37;
      }

      v22 = v27;
      if (v26)
      {
LABEL_6:

        v1 = v49;
        v8 = v49[7] + 16 * v22;
        v10 = *v8;
        v9 = *(v8 + 8);
        *v8 = v18;
        *(v8 + 8) = v5;

        goto LABEL_7;
      }
    }

    v1 = v49;
    v49[(v22 >> 6) + 8] |= 1 << v22;
    v29 = (v1[6] + 16 * v22);
    *v29 = v20;
    v29[1] = v48;
    v30 = (v1[7] + 16 * v22);
    *v30 = v18;
    v30[1] = v5;

    v31 = v1[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_33;
    }

    v1[2] = v33;
LABEL_7:
    ++v7;
    v5 = v44;
    if (v47 == v43)
    {
      goto LABEL_35;
    }
  }

  v35 = v34;
  v17 = sub_1000AC78C(v34, 0);

  sub_1000CE65C((v17 + 4), v35, v16);
  v36 = v13;
  v38 = v37;

  v39 = v38 == v35;
  v13 = v36;
  if (v39)
  {
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A9B60()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1000A9C18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1000A9CD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A9D04(v4);
}

uint64_t sub_1000A9D04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  v5 = sub_1000ABAEC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_1000A9E4C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_1000A9EF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_1000A9FAC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
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
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

void *sub_1000AA13C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1000AA1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1000AA29C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
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
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void *sub_1000AA42C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_1000AA4D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1000AA58C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
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
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void *sub_1000AA71C()
{
  v1 = v0;
  v0[2] = [objc_allocWithZone(CalculateUnitCollection) initWithLocales:0];
  v0[3] = 0;
  v32 = &_swiftEmptyArrayStorage;
  v0[4] = &_swiftEmptyArrayStorage;
  v0[5] = 0;
  v0[6] = 0;
  v0[7] = 0;
  ObservationRegistrar.init()();
  v2 = sub_1000A8918();
  v3 = CalculateUnitCategory.id.getter();
  v33 = v4;

  swift_getKeyPath();
  *&v37[0] = v1;
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = [v1[2] categories];
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (CalculateUnitCategory.id.getter() == v3 && v12 == v33)
      {

LABEL_15:

        v14 = v10;
        sub_1000A9FAC(v10);
        v15 = sub_1000A8DB8();
        sub_1000AA29C(v15);
        v16 = sub_1000A9128();
        sub_1000AA58C(v16);

        goto LABEL_20;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_15;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

LABEL_20:
  if (qword_1001546F8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v17 = qword_100160D68;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 objectForKey:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37[0] = v35;
    v37[1] = v36;
    if (!*(&v36 + 1))
    {
      break;
    }

    sub_10003AE84(&qword_100157CF0, &qword_1001123B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return v1;
    }

    v20 = 0;
    *&v37[0] = &_swiftEmptyArrayStorage;
    v21 = *(v34 + 16);
    v22 = v34 + 40;
LABEL_27:
    v23 = (v22 + 16 * v20);
    while (1)
    {
      if (v21 == v20)
      {

        sub_1000A9D04(v32);
        return v1;
      }

      if (v20 >= *(v34 + 16))
      {
        break;
      }

      ++v20;
      v24 = v23 + 2;
      v26 = *(v23 - 1);
      v25 = *v23;
      swift_getKeyPath();
      *&v35 = v1;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = v1[2];
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 findUnitWithName:{v28, v32}];

      v23 = v24;
      if (v29)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = *&v37[0];
        v22 = v34 + 40;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  sub_1000ADDA4(v37);
  return v1;
}

void sub_1000AABE0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
LABEL_44:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      goto LABEL_18;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = CalculateUnit.id.getter();
    v10 = v9;
    if (v8 == CalculateUnit.id.getter() && v10 == v11)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_17;
    }

    v13 = __OFADD__(v5++, 1);
    if (v13)
    {
      goto LABEL_43;
    }
  }

LABEL_17:

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v14 = sub_1000A87D8(v5);
  swift_endAccess();

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_18:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v2 + 32);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v36 = *(v2 + 32);
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 20)
    {
      goto LABEL_27;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 20)
  {
    goto LABEL_27;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16 = *(v2 + 32);
  if (v16 >> 62)
  {
    goto LABEL_56;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_57;
  }

LABEL_22:
  v17 = sub_1000ADF3C();
  if (!v17)
  {
    v18 = *(v2 + 32);
    if (v18 >> 62)
    {
      goto LABEL_58;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = __OFSUB__(v19, 1);
    v20 = v19 - 1;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_60:
    __break(1u);
    return;
  }

  while (1)
  {

    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v21 = *(v2 + 32);
    if (!(v21 >> 62))
    {
      goto LABEL_28;
    }

LABEL_27:
    if (v21 < 0)
    {
      v37 = *(v2 + 32);
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
    }

    else
    {
LABEL_28:
      v22 = a1;
      sub_1000AE4E0(0, 0, v22, sub_1000D3634, sub_1000AE3B4);
      swift_endAccess();

      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      if (qword_1001546F8 == -1)
      {
        goto LABEL_29;
      }
    }

    swift_once();
LABEL_29:
    v23 = qword_100160D68;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v2 + 32);
    if (v2 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v24)
    {
      goto LABEL_41;
    }

    sub_1000ACC90(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_56:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_22;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v13 = __OFSUB__(v38, 1);
    v20 = v38 - 1;
    if (v13)
    {
      goto LABEL_60;
    }

LABEL_25:
    v17 = sub_1000A87D8(v20);
  }

  v40 = v23;
  v25 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v2 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = CalculateUnit.id.getter();
    v30 = v29;

    v32 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    if (v32 >= v31 >> 1)
    {
      sub_1000ACC90((v31 > 1), v32 + 1, 1);
    }

    ++v25;
    _swiftEmptyArrayStorage[2] = v32 + 1;
    v33 = &_swiftEmptyArrayStorage[2 * v32];
    v33[4] = v28;
    v33[5] = v30;
  }

  while (v24 != v25);

  v23 = v40;
LABEL_41:
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = String._bridgeToObjectiveC()();
  [v23 setObject:isa forKey:v35];
}

uint64_t sub_1000AB310@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CalculateUnit.id.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1000AB33C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 32);
  *(v0 + 32) = _swiftEmptyArrayStorage;

  v4 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D68;
  v3 = String._bridgeToObjectiveC()();
  [v2 setURL:0 forKey:{v3, v4, v5}];
}

void sub_1000AB4DC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v48 = a1;
  v49 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return;
  }

  v3 = sub_1000A9728();
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = v3 + 64;
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v3 + 64);
  v11 = (v8 + 63) >> 6;
  v44 = v11;
  v45 = _swiftEmptyArrayStorage;
  v41 = v3 + 64;
  v42 = v3;
  while (v10)
  {
LABEL_13:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v47 = *(*(v4 + 56) + ((v5 << 10) | (16 * v13)));
    v14 = v47;
    v15 = *(&v47 + 1);

    v16 = String._bridgeToObjectiveC()();
    v46 = v14;
    v17 = [v14 contains:v16];

    if (v17)
    {
      v31 = v46;

      v30 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1000AC680(0, *(v45 + 2) + 1, 1, v45);
      }

      v33 = *(v45 + 2);
      v32 = *(v45 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v45 = sub_1000AC680((v32 > 1), v33 + 1, 1, v45);
      }

LABEL_44:

      v37 = v46;

      v11 = v44;
      v38 = v45;
      *(v45 + 2) = v34;
      v39 = &v38[16 * v33];
      *(v39 + 4) = v37;
      *(v39 + 5) = v30;
    }

    else
    {
      v50 = v47;
      __chkstk_darwin(v18);
      v40[2] = &v50;
      if (sub_1000ACB84(sub_1000AE1AC, v40, v45))
      {

        v11 = v44;
      }

      else
      {
        v43 = v6;
        *&v50 = _swiftEmptyArrayStorage;
        if (v15 >> 62)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
          if (v19)
          {
LABEL_17:
            v20 = 0;
            *&v47 = v15 & 0xC000000000000001;
            v21 = v15 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v47)
              {
                v23 = v15;
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v20 >= *(v21 + 16))
                {
                  goto LABEL_48;
                }

                v23 = v15;
                v24 = *(v15 + 8 * v20 + 32);
              }

              v25 = v24;
              v26 = v20 + 1;
              if (__OFADD__(v20, 1))
              {
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              v27 = String._bridgeToObjectiveC()();
              v28 = [v25 contains:v27];

              if (v28)
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v29 = *(v50 + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v20;
              v22 = v26 == v19;
              v15 = v23;
            }

            while (!v22);
            v30 = v50;
            v7 = v41;
            v4 = v42;
            v6 = v43;
            if ((v50 & 0x8000000000000000) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_17;
          }
        }

        v30 = _swiftEmptyArrayStorage;
        v6 = v43;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
        {
LABEL_36:
          if ((v30 & 0x4000000000000000) == 0)
          {
            if (*(v30 + 16))
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }
        }

LABEL_39:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_40:
          v35 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1000AC680(0, *(v45 + 2) + 1, 1, v45);
          }

          v33 = *(v45 + 2);
          v36 = *(v45 + 3);
          v34 = v33 + 1;
          if (v33 >= v36 >> 1)
          {
            v45 = sub_1000AC680((v36 > 1), v33 + 1, 1, v45);
          }

          goto LABEL_44;
        }

LABEL_38:

        v11 = v44;
      }
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_13;
    }
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_1000AB910()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC10Calculator36CalculatorUnitConversionDataProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorUnitConversionDataProvider()
{
  result = qword_100157C30;
  if (!qword_100157C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000ABA30()
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

uint64_t sub_1000ABAEC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1000ABD3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for SchemaV1.HistoryRecord();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v15 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v16 = *(a2 + 8 * v12);

LABEL_25:
      sub_1000AE5E8(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000ABF50(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100157D10, &qword_100112410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AC070(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100154E38, &qword_100112400);
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

void *sub_1000AC17C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10003AE84(&qword_100157D18, &qword_100112418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10003AE84(&qword_100157D20, &qword_100112420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AC2B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100157D08, &qword_100112408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1000AC3A4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003AE84(&qword_100156490, &qword_10010F550);
  v10 = *(type metadata accessor for Locale() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Locale() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000AC57C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100157CF8, &qword_1001123F0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000AC680(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100157D00, &qword_1001123F8);
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

void *sub_1000AC78C(uint64_t a1, uint64_t a2)
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

  sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1000AC814(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = v8;
    }

    v7 = sub_1000ABF50(isUniquelyReferenced_nonNull_native, v19, 1, v7);
    *v5 = v7;
  }

  result = sub_1000AC900(v9, a2, 1, a3, a4, a5);
  *v5 = v7;
  return result;
}

uint64_t *sub_1000AC900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = a5;
  v7 = a4;
  v13 = *v6;
  v14 = (v13 + 32 + 24 * a1);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v9);
  v17 = a3 - v9;
  if (v16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = *(v13 + 16);
  v16 = __OFSUB__(v18, a2);
  v19 = v18 - a2;
  if (v16)
  {
    goto LABEL_21;
  }

  result = &v14[3 * a3];
  v20 = (v13 + 32 + 24 * a2);
  if (result != v20 || result >= &v20[24 * v19])
  {
    result = memmove(result, v20, 24 * v19);
  }

  v22 = *(v13 + 16);
  v16 = __OFADD__(v22, v17);
  v23 = v22 + v17;
  if (v16)
  {
    goto LABEL_22;
  }

  *(v13 + 16) = v23;
LABEL_13:
  if (a3 > 0)
  {
    *v14 = v7;
    v14[1] = v8;
    v14[2] = a6;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:
    sub_100048EE4(v7, v8);

    __break(1u);
    return result;
  }

  sub_10004AA5C(v7, v8);
}

uint64_t sub_1000ACA74(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1000ACAD8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000ACB84(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;

      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000ACC50(void *a1, int64_t a2, char a3)
{
  result = sub_10001B24C(a1, a2, a3, *v3, &qword_100157D28, &qword_100112428, &qword_100154E28, &unk_10010C590);
  *v3 = result;
  return result;
}

char *sub_1000ACC90(char *a1, int64_t a2, char a3)
{
  result = sub_1000ACCB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000ACCB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100154E38, &qword_100112400);
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

uint64_t sub_1000ACDBC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000ADFB4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000ACE38(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1000ACE38(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000AD0C0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000ACF4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000ACF4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 8 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = [v9 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10006345C();
      v12 = StringProtocol.localizedStandardCompare<A>(_:)();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 8;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v13;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD0C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v104 = result;
    while (1)
    {
      v11 = v9 + 1;
      v105 = v9;
      if (v9 + 1 < v8)
      {
        v12 = v9;
        v109 = v8;
        v100 = v10;
        v102 = v5;
        v13 = *(*v6 + 8 * v11);
        v106 = 8 * v9;
        v14 = (*v6 + 8 * v9);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = v13;
        v9 = v16;
        v18 = [v17 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = [v9 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v111 = StringProtocol.localizedStandardCompare<A>(_:)();

        v20 = v12 + 2;
        while (1)
        {
          v11 = v109;
          if (v109 == v20)
          {
            break;
          }

          v21 = *(v15 - 1);
          v9 = *v15;
          v22 = v21;
          v23 = [v9 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = [v22 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = StringProtocol.localizedStandardCompare<A>(_:)();

          ++v20;
          ++v15;
          if ((v111 == -1) == (v25 != -1))
          {
            v11 = (v20 - 1);
            break;
          }
        }

        v10 = v100;
        v5 = v102;
        v6 = a3;
        v7 = v104;
        v26 = v106;
        if (v111 == -1)
        {
          v27 = v105;
          if (v11 < v105)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v105 < v11)
          {
            v28 = 8 * v11 - 8;
            v29 = v11;
            do
            {
              if (v27 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v30 = *(v31 + v26);
                *(v31 + v26) = *(v31 + v28);
                *(v31 + v28) = v30;
              }

              ++v27;
              v28 -= 8;
              v26 += 8;
            }

            while (v27 < v29);
          }
        }
      }

      v32 = v6[1];
      if (v11 >= v32)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v11, v105))
      {
        goto LABEL_116;
      }

      if (v11 - v105 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v105, a4))
      {
        goto LABEL_117;
      }

      if (&v105[a4] >= v32)
      {
        v33 = v6[1];
      }

      else
      {
        v33 = &v105[a4];
      }

      if (v33 < v105)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v34 = v105;
      if (v11 != v33)
      {
        break;
      }

LABEL_37:
      if (v11 < v34)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000AC57C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 2);
      v46 = *(v10 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        result = sub_1000AC57C((v46 > 1), v47 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v48;
      v49 = &v10[16 * v47];
      *(v49 + 4) = v105;
      *(v49 + 5) = v11;
      v50 = *v7;
      if (!v50)
      {
        goto LABEL_125;
      }

      v9 = v11;
      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v52 = *(v10 + 4);
            v53 = *(v10 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_57:
            if (v55)
            {
              goto LABEL_104;
            }

            v68 = &v10[16 * v48];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_107;
            }

            v74 = &v10[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_111;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v78 = &v10[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_71:
          if (v73)
          {
            goto LABEL_106;
          }

          v81 = &v10[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_109;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_78:
          v89 = v51 - 1;
          if (v51 - 1 >= v48)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v6)
          {
            goto LABEL_122;
          }

          v90 = *&v10[16 * v89 + 32];
          v91 = *&v10[16 * v51 + 40];
          sub_1000AD884((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000ADD08(v10);
          }

          if (v89 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v92 = &v10[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          result = sub_1000ADC7C(v51);
          v48 = *(v10 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v10[16 * v48 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_102;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_103;
        }

        v63 = &v10[16 * v48];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_105;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v67 >= v59)
        {
          v85 = &v10[16 * v51 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_112;
          }

          if (v54 < v88)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v104;
      if (v9 >= v8)
      {
        goto LABEL_88;
      }
    }

    v101 = v10;
    v103 = v5;
    v35 = *v6;
    v36 = *v6 + 8 * v11 - 8;
    v37 = &v105[-v11];
    v107 = v33;
    do
    {
      v110 = v36;
      v112 = v11;
      v38 = *(v35 + 8 * v11);
      v108 = v37;
      do
      {
        v39 = *v36;
        v9 = v38;
        v40 = v39;
        v41 = [v9 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v40 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v43 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v43 != -1)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_121;
        }

        v44 = *v36;
        v38 = *(v36 + 8);
        *v36 = v38;
        *(v36 + 8) = v44;
        v36 -= 8;
      }

      while (!__CFADD__(v37++, 1));
      ++v11;
      v36 = v110 + 8;
      v37 = v108 - 1;
    }

    while ((v112 + 1) != v107);
    v11 = v107;
    v10 = v101;
    v5 = v103;
    v6 = a3;
    v7 = v104;
LABEL_36:
    v34 = v105;
    goto LABEL_37;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_88:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1000ADD08(v10);
    v10 = result;
  }

  v93 = *(v10 + 2);
  if (v93 >= 2)
  {
    while (*v6)
    {
      v94 = v10;
      v10 = (v93 - 1);
      v95 = *&v94[16 * v93];
      v96 = *&v94[16 * v93 + 24];
      sub_1000AD884((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
      if (v5)
      {
      }

      if (v96 < v95)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1000ADD08(v94);
      }

      if (v93 - 2 >= *(v94 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v94[16 * v93];
      *v97 = v95;
      *(v97 + 1) = v96;
      result = sub_1000ADC7C(v93 - 1);
      v10 = v94;
      v93 = *(v94 + 2);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1000AD884(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v44 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v39 = v5;
    }

    else
    {
      __srca = v15;
LABEL_25:
      v41 = v5;
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v27;
      do
      {
        v30 = v28;
        v31 = (v28 + 1);
        v32 = *(v29 - 1);
        v29 -= 8;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = [v35 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v38 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v38 == -1)
        {
          v25 = v31 == v41;
          v4 = v30;
          if (!v25)
          {
            *v30 = *v42;
          }

          v15 = __srca;
          if (v44 <= __srca || (v5 = v42, v42 <= v6))
          {
            v39 = v42;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > __srca);
      v44 = v29;
      v39 = v41;
      v15 = __srca;
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v44 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = v17;
        v21 = [v19 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v20 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v23 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v23 != -1)
        {
          break;
        }

        v24 = v18;
        v5 = v18 + 1;
        if (v6 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v6;
        if (v15 < v44)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v24 = v15;
      v25 = v6 == v15++;
      v5 = v18;
      if (v25)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v24;
      goto LABEL_14;
    }

LABEL_35:
    v39 = v6;
  }

LABEL_38:
  if (v39 != v15 || v39 >= (v15 + ((v44 - v15 + (v44 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v39, v15, 8 * ((v44 - v15) / 8));
  }

  return 1;
}

uint64_t sub_1000ADC7C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ADD08(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void (*sub_1000ADD1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000ADD9C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ADDA4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001551B8, &qword_10010E3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000ADE0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

void sub_1000ADE44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_1000ADE7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t (*sub_1000ADEB4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1000ADF34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ADF3C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1000ACA74(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ADFC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = CalculateUnitCategory.id.getter();
  v6 = v5;
  if (v4 == CalculateUnitCategory.id.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000AE060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SchemaV1.HistoryRecord();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1000AE1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000050A0(0, &qword_1001564A8, UIApplicationShortcutItem_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AE2DC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1000D3634(result, 1);

  return sub_1000AE1CC(v4, v2, 0);
}

char *sub_1000AE3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1000AE4E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

uint64_t sub_1000AE5E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AE634()
{
  result = static Font.caption2.getter();
  qword_100160D08 = result;
  return result;
}

uint64_t sub_1000AE674()
{
  result = static Font.footnote.getter();
  qword_100160D18 = result;
  return result;
}

uint64_t sub_1000AE6B4(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = Font.bold()();

  *a3 = v4;
  return result;
}

uint64_t sub_1000AE6FC()
{
  swift_getKeyPath();
  sub_1000AEB78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000AE76C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AEB78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000AE80C(unsigned __int8 a1)
{
  result = sub_100006CE8(*(v1 + 16), a1);
  if (result)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AEB78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000AE8F0(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_1000AEB78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = sub_100006CE8(*(v1 + 16), a1);
  if ((result & 1) == 0)
  {
    if (a1 == 2)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        result = sub_100006CE8(*(v1 + 16), a1);
        if (result)
        {
          *(v1 + 16) = a1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000AEACC()
{
  v1 = OBJC_IVAR____TtC10Calculator25CalculatorKeypadViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

unint64_t sub_1000AEB78()
{
  result = qword_100157410;
  if (!qword_100157410)
  {
    type metadata accessor for CalculatorKeypadViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157410);
  }

  return result;
}

void sub_1000AEC18()
{
  type metadata accessor for CalculatorLayout(319);
  if (v0 <= 0x3F)
  {
    sub_100091544();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CalculatorSizeClass(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000AED0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v77 = type metadata accessor for AccessibilityTraits();
  v75 = *(v77 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  __chkstk_darwin(v5);
  v68 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalculatorHistoryView();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10003AE84(&qword_100158060, &qword_1001125D8);
  v15 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v17 = &v56 - v16;
  v67 = sub_10003AE84(&qword_100158068, &qword_1001125E0);
  v64 = *(v67 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin(v67);
  v20 = &v56 - v19;
  v21 = sub_10003AE84(&qword_100158070, &qword_1001125E8);
  v65 = *(v21 - 8);
  v66 = v21;
  v22 = *(v65 + 64);
  __chkstk_darwin(v21);
  v63 = &v56 - v23;
  v73 = sub_10003AE84(&qword_100158078, &qword_1001125F0);
  v24 = *(*(v73 - 8) + 64);
  v25 = __chkstk_darwin(v73);
  v69 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v72 = &v56 - v27;
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v28 = sub_10003AE84(&qword_100158080, &qword_1001125F8);
  sub_1000AF7AC(v1, &v17[*(v28 + 44)]);
  v29 = *v1;
  v30 = *(v1 + 8);

  v78 = v29;
  v60 = v30;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v10);
    v29 = v79;
  }

  v56 = v14;
  v57 = v11;
  v58 = v10;
  swift_getKeyPath();
  v79 = v29;
  v59 = sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v29 + 16);

  LOBYTE(v79) = v32;
  sub_1000B5984(v2, &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v34 = swift_allocObject();
  sub_1000B59E8(&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  v35 = sub_100004880(&qword_100158088, &qword_100158060, &qword_1001125D8);
  v36 = v62;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v17, &qword_100158060, &qword_1001125D8);
  v37 = v68;
  static AccessibilityChildBehavior.contain.getter();
  v79 = v36;
  v80 = &type metadata for Bool;
  v81 = v35;
  v82 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v63;
  v40 = v67;
  View.accessibilityElement(children:)();
  (*(v70 + 8))(v37, v71);
  (*(v64 + 8))(v20, v40);
  v79 = v40;
  v80 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v69;
  v42 = v66;
  View.accessibilityIdentifier(_:)();
  (*(v65 + 8))(v39, v42);
  v43 = _AXSAutomationEnabled();
  v44 = v74;
  v45 = v72;
  v46 = v78;
  if (!v43)
  {

    v47 = v46;
    if ((v60 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v48 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v49 = v56;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v57 + 8))(v49, v58);
      v47 = v79;
    }

    swift_getKeyPath();
    v79 = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = *(v47 + 16);
  }

  ModifiedContent<>.accessibilityHidden(_:)();
  sub_1000035CC(v41, &qword_100158078, &qword_1001125F0);
  if (_AXSAutomationEnabled())
  {
    goto LABEL_12;
  }

  if ((v60 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v52 = v56;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v57 + 8))(v52, v58);
    v46 = v79;
  }

  swift_getKeyPath();
  v79 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v46 + 16);

  if (v53 != 1)
  {
LABEL_12:
    v79 = _swiftEmptyArrayStorage;
    sub_1000116C0(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
    v54 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    static AccessibilityTraits.isModal.getter();
    v54 = v77;
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v75 + 8))(v44, v54);
  return sub_1000035CC(v45, &qword_100158078, &qword_1001125F0);
}

uint64_t sub_1000AF7AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v105 = a2;
  v98 = sub_10003AE84(&qword_100158098, &qword_100112658);
  v2 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v93 = &v87 - v3;
  v96 = sub_10003AE84(&qword_1001580A0, &qword_100112660);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v97 = &v87 - v5;
  v104 = sub_10003AE84(&qword_1001580A8, &qword_100112668);
  v6 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v99 = &v87 - v7;
  v87 = sub_10003AE84(&qword_1001580B0, &qword_100112670);
  v8 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v89 = &v87 - v9;
  v88 = sub_10003AE84(&qword_1001580B8, &qword_100112678);
  v10 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = &v87 - v11;
  v95 = sub_10003AE84(&qword_1001580C0, &qword_100112680);
  v12 = *(*(v95 - 8) + 64);
  v13 = __chkstk_darwin(v95);
  v90 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v87 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v94 = *(v16 - 8);
  v17 = *(v94 + 64);
  __chkstk_darwin(v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10003AE84(&qword_1001580C8, &qword_100112688);
  v20 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v103 = &v87 - v21;
  v22 = sub_10003AE84(&qword_1001580D0, &qword_100112690);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  v102 = sub_10003AE84(&qword_1001580D8, &qword_100112698);
  v26 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v28 = &v87 - v27;
  v29 = sub_10003AE84(&qword_1001580E0, &qword_1001126A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v87 - v31;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v33 = qword_100160D98;
  swift_getKeyPath();
  *&v108 = v33;
  sub_1000116C0(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v33 + 72) == 1)
  {
    v34 = v100;
    sub_1000B0608(1, v32);
    v35 = v34 + *(type metadata accessor for CalculatorHistoryView() + 40);
    v36 = *v35;
    v37 = *(v35 + 1);
    LOBYTE(v106) = v36;
    v107 = v37;
    sub_10003AE84(&qword_1001553F0, &unk_10010D260);
    State.projectedValue.getter();
    v38 = *(&v108 + 1);
    v39 = v109;
    v40 = &v32[*(v29 + 36)];
    *v40 = v108;
    *(v40 + 1) = v38;
    v40[16] = v39;
    v41 = &qword_1001580E0;
    v42 = &qword_1001126A0;
    sub_100008E68(v32, v25, &qword_1001580E0, &qword_1001126A0);
    swift_storeEnumTagMultiPayload();
    sub_1000B65FC();
    _ConditionalContent<>.init(storage:)();
    v43 = &qword_1001580D8;
    v44 = &qword_100112698;
    sub_100008E68(v28, v103, &qword_1001580D8, &qword_100112698);
    swift_storeEnumTagMultiPayload();
    sub_1000B6570();
    sub_1000B6978();
    _ConditionalContent<>.init(storage:)();
    v45 = v28;
LABEL_12:
    sub_1000035CC(v45, v43, v44);
    v54 = v32;
    return sub_1000035CC(v54, v41, v42);
  }

  v46 = v100;
  v47 = *v100;
  v48 = *(v100 + 8);

  if ((v48 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v94 + 8))(v19, v16);
    v47 = v108;
  }

  swift_getKeyPath();
  *&v108 = v47;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(v47 + 16);

  if ((v50 & 1) == 0)
  {
    v51 = v46 + *(type metadata accessor for CalculatorHistoryView() + 40);
    v52 = *v51;
    v53 = *(v51 + 1);
    LOBYTE(v108) = v52;
    *(&v108 + 1) = v53;
    sub_10003AE84(&qword_1001553F0, &unk_10010D260);
    State.wrappedValue.getter();
    if (v106 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1000B65FC();
      _ConditionalContent<>.init(storage:)();
      v41 = &qword_1001580D8;
      v42 = &qword_100112698;
      sub_100008E68(v28, v103, &qword_1001580D8, &qword_100112698);
      swift_storeEnumTagMultiPayload();
      sub_1000B6570();
      sub_1000B6978();
      _ConditionalContent<>.init(storage:)();
      v54 = v28;
      return sub_1000035CC(v54, v41, v42);
    }
  }

  v55 = v46[5];
  *&v108 = v46[4];
  *(&v108 + 1) = v55;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v56 = sub_10004C418();

  v57 = *(v56 + 16);

  swift_getKeyPath();
  *&v108 = v57;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v56) = *(v57 + 56);

  if (v56)
  {
    __chkstk_darwin(v58);
    sub_10003AE84(&qword_1001581B8, &qword_100112780);
    v59 = sub_10003AECC(&qword_1001581C0, &qword_100112788);
    v60 = sub_10003AECC(&qword_1001581C8, &qword_100112790);
    v61 = sub_1000B6A0C();
    v62 = sub_10003AECC(&qword_100158218, &qword_1001127B8);
    v63 = sub_100004880(&qword_100158220, &qword_100158218, &qword_1001127B8);
    *&v108 = v62;
    *(&v108 + 1) = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v108 = v59;
    *(&v108 + 1) = v60;
    *&v109 = v61;
    *(&v109 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v32 = v93;
    NavigationStack.init<>(root:)();
    v65 = v46 + *(type metadata accessor for CalculatorHistoryView() + 40);
    v66 = *v65;
    v67 = *(v65 + 1);
    LOBYTE(v106) = v66;
    v107 = v67;
    sub_10003AE84(&qword_1001553F0, &unk_10010D260);
    State.projectedValue.getter();
    v68 = *(&v108 + 1);
    v69 = v109;
    v70 = &v32[*(v98 + 36)];
    *v70 = v108;
    *(v70 + 1) = v68;
    v70[16] = v69;
    v41 = &qword_100158098;
    v42 = &qword_100112658;
    sub_100008E68(v32, v97, &qword_100158098, &qword_100112658);
    swift_storeEnumTagMultiPayload();
    sub_1000B6268();
    sub_1000B6464();
    v71 = v99;
    _ConditionalContent<>.init(storage:)();
    v43 = &qword_1001580A8;
    v44 = &qword_100112668;
    sub_100008E68(v71, v103, &qword_1001580A8, &qword_100112668);
    swift_storeEnumTagMultiPayload();
    sub_1000B6570();
    sub_1000B6978();
    _ConditionalContent<>.init(storage:)();
    v45 = v71;
    goto LABEL_12;
  }

  v73 = v89;
  ProgressView<>.init<>()();
  v74 = (v73 + *(v87 + 36));
  v75 = *(sub_10003AE84(&qword_1001580E8, &qword_100112700) + 28);
  v76 = enum case for ControlSize.small(_:);
  v77 = type metadata accessor for ControlSize();
  (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
  *v74 = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v78 = v91;
  sub_10000D5B8(v73, v91, &qword_1001580B0, &qword_100112670);
  v79 = (v78 + *(v88 + 36));
  v80 = v113;
  v79[4] = v112;
  v79[5] = v80;
  v79[6] = v114;
  v81 = v109;
  *v79 = v108;
  v79[1] = v81;
  v82 = v111;
  v79[2] = v110;
  v79[3] = v82;
  v83 = v90;
  sub_10000D5B8(v78, v90, &qword_1001580B8, &qword_100112678);
  v84 = (v83 + *(v95 + 36));
  *v84 = sub_1000B09B8;
  v84[1] = 0;
  v85 = v92;
  sub_10000D5B8(v83, v92, &qword_1001580C0, &qword_100112680);
  sub_100008E68(v85, v97, &qword_1001580C0, &qword_100112680);
  swift_storeEnumTagMultiPayload();
  sub_1000B6268();
  sub_1000B6464();
  v86 = v99;
  _ConditionalContent<>.init(storage:)();
  sub_100008E68(v86, v103, &qword_1001580A8, &qword_100112668);
  swift_storeEnumTagMultiPayload();
  sub_1000B6570();
  sub_1000B6978();
  _ConditionalContent<>.init(storage:)();
  sub_1000035CC(v86, &qword_1001580A8, &qword_100112668);
  return sub_1000035CC(v85, &qword_1001580C0, &qword_100112680);
}