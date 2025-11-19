uint64_t sub_1000B0608@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v34 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_100158178, &qword_100112758);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = sub_10003AE84(&qword_100158168, &qword_100112750);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v17 = sub_10003AE84(&qword_100158150, &qword_100112748);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v33 - v19;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4014000000000000;
  v12[16] = 0;
  v21 = sub_10003AE84(&qword_100158228, &qword_1001127C0);
  sub_1000B3B10(a1, v3, &v12[*(v21 + 44)]);
  if (qword_1001545B8 != -1)
  {
    swift_once();
  }

  v22 = qword_100160BE0;
  KeyPath = swift_getKeyPath();
  v24 = &v12[*(sub_10003AE84(&qword_100158188, &qword_100112760) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = swift_getKeyPath();
  v26 = &v12[*(v9 + 36)];
  *v26 = v25;
  v26[8] = 1;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v12, v16, &qword_100158178, &qword_100112758);
  v27 = &v16[*(v13 + 36)];
  v28 = v40;
  *(v27 + 4) = v39;
  *(v27 + 5) = v28;
  *(v27 + 6) = v41;
  v29 = v36;
  *v27 = v35;
  *(v27 + 1) = v29;
  v30 = v38;
  *(v27 + 2) = v37;
  *(v27 + 3) = v30;
  LOBYTE(v22) = static Edge.Set.all.getter();
  sub_10000D5B8(v16, v20, &qword_100158168, &qword_100112750);
  v31 = &v20[*(v17 + 36)];
  *v31 = v22;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  static AccessibilityChildBehavior.combine.getter();
  sub_1000B66C4();
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v8, v34);
  return sub_1000035CC(v20, &qword_100158150, &qword_100112748);
}

uint64_t sub_1000B09E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v56 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  if (*a2 == 1)
  {
    v24 = *(a3 + 40);
    v68 = *(a3 + 32);
    v69 = v24;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    v25 = sub_10004C418();

    Date.init()();
    (*(v6 + 56))(v23, 0, 1, v5);
    v26 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
    swift_beginAccess();
    sub_1000B61F8(v23, v25 + v26);
    swift_endAccess();

    sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BDE0;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000100107700;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
    v28 = sub_100077104(inited);
    swift_setDeallocating();
    sub_1000035CC(inited + 32, &qword_1001568C0, &qword_10010FA60);
    v29 = *(a3 + 16);
    v30 = *(a3 + 24);

    if ((v30 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v13 + 8))(v16, v12);
    }

    v32 = sub_1000574F4(v28);

    sub_100062CB8(v32);
  }

  else
  {
    v61 = v10;
    v62 = &v56 - v22;
    v64 = v6;
    v33 = *(a3 + 16);
    v34 = *(a3 + 24);

    v63 = v33;
    v60 = v34;
    if ((v34 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v35 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v13 + 8))(v16, v12);
      v33 = v68;
    }

    v59 = v16;
    swift_getKeyPath();
    v68 = v33;
    sub_1000116C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v33 + 54) == 11)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v58 = v5;
      __chkstk_darwin(KeyPath);
      *(&v56 - 2) = v33;
      *(&v56 - 8) = 11;
      v68 = v33;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v5 = v58;
    }

    v38 = *(a3 + 40);
    v68 = *(a3 + 32);
    v37 = v68;
    v69 = v38;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    sub_10004C418();

    sub_10004EAC8();

    v68 = v37;
    v69 = v38;
    State.wrappedValue.getter();
    v39 = sub_10004C418();

    v40 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
    swift_beginAccess();
    sub_100008E68(v39 + v40, v21, &qword_100154E10, &qword_10010C4C0);

    v41 = v64;
    if ((*(v64 + 48))(v21, 1, v5) == 1)
    {
      return sub_1000035CC(v21, &qword_100154E10, &qword_10010C4C0);
    }

    v57 = v38;
    v58 = v37;
    (*(v41 + 32))(v65, v21, v5);
    sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_10010DBE0;
    *(v43 + 32) = 0xD000000000000011;
    *(v43 + 40) = 0x8000000100107700;
    *(v43 + 48) = [objc_allocWithZone(NSNumber) initWithBool:0];
    *(v43 + 56) = 0x6E6F697461727564;
    *(v43 + 64) = 0xE800000000000000;
    v44 = v61;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v46 = v45;
    v47 = *(v41 + 8);
    v47(v44, v5);
    *(v43 + 72) = [objc_allocWithZone(NSNumber) initWithDouble:v46];
    v48 = sub_100077104(v43);
    swift_setDeallocating();
    sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
    swift_arrayDestroy();

    if ((v60 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v49 = v47;
      v50 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v47 = v49;
      v51 = v59;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v13 + 8))(v51, v12);
    }

    v52 = sub_1000574F4(v48);

    sub_100062CB8(v52);

    v66 = v58;
    v67 = v57;
    State.wrappedValue.getter();
    v53 = sub_10004C418();

    v47(v65, v5);
    v54 = v62;
    (*(v64 + 56))(v62, 1, 1, v5);
    v55 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
    swift_beginAccess();
    sub_1000B61F8(v54, v53 + v55);
    swift_endAccess();
  }
}

uint64_t sub_1000B13A8()
{
  v97 = sub_10003AE84(&qword_100158370, &qword_100112910);
  v95 = *(v97 - 8);
  v1 = *(v95 + 64);
  __chkstk_darwin(v97);
  v90 = &v75 - v2;
  v3 = sub_10003AE84(&qword_100158360, &qword_100112908);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v96 = &v75 - v5;
  v104 = sub_10003AE84(&qword_1001583B0, &qword_100112A48);
  v6 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v105 = &v75 - v7;
  v101 = type metadata accessor for CalculatorHistoryView();
  v80 = *(v101 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v101);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonRole();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10003AE84(&qword_100158350, &qword_100112900);
  v83 = *(v85 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v85);
  v81 = &v75 - v13;
  v100 = sub_10003AE84(&qword_100158340, &qword_1001128F8);
  v14 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v84 = &v75 - v15;
  v98 = sub_10003AE84(&qword_1001583B8, &qword_100112A50);
  v16 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v99 = &v75 - v17;
  v89 = sub_10003AE84(&qword_100158330, &qword_1001128F0);
  v18 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v76 = &v75 - v19;
  v78 = sub_10003AE84(&qword_1001583C0, &qword_100112A58);
  v20 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v87 = &v75 - v21;
  v86 = sub_10003AE84(&qword_1001582E8, &qword_1001128D0);
  v22 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v77 = &v75 - v23;
  v93 = sub_10003AE84(&qword_1001582D8, &qword_1001128C8);
  v24 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v88 = &v75 - v25;
  v26 = type metadata accessor for EditMode();
  v91 = *(v26 - 8);
  v92 = v26;
  v27 = *(v91 + 64);
  __chkstk_darwin(v26);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10003AE84(&qword_1001582C8, &qword_1001128C0);
  v30 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v94 = &v75 - v31;
  v32 = type metadata accessor for EnvironmentValues();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v0;
  v102 = v0;
  v38 = *(v0 + 8);

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v33 + 8))(v36, v32);
    v37 = v106;
  }

  swift_getKeyPath();
  v106 = v37;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v37 + 17);

  if (v40)
  {
    v41 = *(v102 + 40);
    v106 = *(v102 + 32);
    v107 = v41;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    v42 = sub_10004C418();

    v43 = *(v42 + 16);

    swift_getKeyPath();
    v106 = v43;
    sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v44 = *(v43 + 48);

    v45 = *(v44 + 16);

    if (v45)
    {
      v46 = v90;
      EditButton.init()();
      KeyPath = swift_getKeyPath();
      v48 = v97;
      v49 = (v46 + *(v97 + 36));
      v50 = *(sub_10003AE84(&qword_100158210, &qword_1001127B0) + 28);
      v51 = *(v101 + 28);
      sub_10003AE84(&qword_100157F98, qword_100112550);
      State.projectedValue.getter();
      v52 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
      (*(*(v52 - 8) + 56))(v49 + v50, 0, 1, v52);
      *v49 = KeyPath;
      v53 = v96;
      sub_10000D5B8(v46, v96, &qword_100158370, &qword_100112910);
      v54 = 0;
    }

    else
    {
      v54 = 1;
      v53 = v96;
      v48 = v97;
    }

    (*(v95 + 56))(v53, v54, 1, v48);
    v72 = &qword_100158360;
    v73 = &qword_100112908;
    sub_100008E68(v53, v105, &qword_100158360, &qword_100112908);
  }

  else
  {
    v55 = *(v101 + 28);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    v56 = v102;
    State.wrappedValue.getter();
    LOBYTE(v55) = EditMode.isEditing.getter();
    (*(v91 + 8))(v29, v92);
    if (v55)
    {
      v57 = *(v56 + 40);
      v106 = *(v56 + 32);
      v107 = v57;
      sub_10003AE84(&qword_100158090, &qword_100112650);
      State.wrappedValue.getter();
      v58 = sub_10004C418();

      swift_getKeyPath();
      v106 = v58;
      sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v59 = *(v58 + 24);

      v60 = *(v59 + 16);

      v53 = v94;
      if (v60)
      {
        v61 = v77;
        sub_1000B2270(v77);
        v62 = &qword_1001582E8;
        v63 = &qword_1001128D0;
        sub_100008E68(v61, v87, &qword_1001582E8, &qword_1001128D0);
      }

      else
      {
        v61 = v76;
        sub_1000B27C4(v76);
        v62 = &qword_100158330;
        v63 = &qword_1001128F0;
        sub_100008E68(v61, v87, &qword_100158330, &qword_1001128F0);
      }

      swift_storeEnumTagMultiPayload();
      sub_1000B72A0(&qword_1001582E0, &qword_1001582E8, &qword_1001128D0, sub_1000B7354);
      sub_1000B72A0(&qword_100158328, &qword_100158330, &qword_1001128F0, sub_1000B740C);
      v68 = v88;
      _ConditionalContent<>.init(storage:)();
      sub_1000035CC(v61, v62, v63);
      v70 = &qword_1001582D8;
      v71 = &qword_1001128C8;
      sub_100008E68(v68, v99, &qword_1001582D8, &qword_1001128C8);
      swift_storeEnumTagMultiPayload();
      sub_1000B71BC();
      sub_1000B75D0();
    }

    else
    {
      static ButtonRole.close.getter();
      v64 = v82;
      sub_1000B5984(v56, v82);
      v65 = (*(v80 + 80) + 16) & ~*(v80 + 80);
      v66 = swift_allocObject();
      sub_1000B59E8(v64, v66 + v65);
      v67 = v81;
      Button<>.init(role:action:)();
      sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900);
      v68 = v84;
      v69 = v85;
      View.accessibilityIdentifier(_:)();
      (*(v83 + 8))(v67, v69);
      v70 = &qword_100158340;
      v71 = &qword_1001128F8;
      sub_100008E68(v68, v99, &qword_100158340, &qword_1001128F8);
      swift_storeEnumTagMultiPayload();
      sub_1000B71BC();
      sub_1000B75D0();
      v53 = v94;
    }

    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v68, v70, v71);
    v72 = &qword_1001582C8;
    v73 = &qword_1001128C0;
    sub_100008E68(v53, v105, &qword_1001582C8, &qword_1001128C0);
  }

  swift_storeEnumTagMultiPayload();
  sub_1000B7130();
  sub_1000B76B8();
  _ConditionalContent<>.init(storage:)();
  return sub_1000035CC(v53, v72, v73);
}

uint64_t sub_1000B2270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for CalculatorHistoryView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v45 = v7;
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39[-v11];
  v46 = sub_10003AE84(&qword_1001582F8, &qword_1001128D8);
  v13 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v15 = &v39[-v14];
  static ButtonRole.destructive.getter();
  v16 = type metadata accessor for ButtonRole();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  sub_1000B5984(v2, v8);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_1000B59E8(v8, v18 + v17);
  v48 = v2;
  Button.init(role:action:label:)();
  v19 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v21 = &v15[*(sub_10003AE84(&qword_100158318, &qword_1001128E8) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = v2 + *(v4 + 40);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v49) = v23;
  v50 = v24;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  v41 = v52;
  v42 = v51;
  v40 = v53;
  v25 = *(v2 + 32);
  v43 = *(v2 + 40);
  v44 = v25;
  v51 = v25;
  v52 = v43;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v26 = sub_10004C418();

  swift_getKeyPath();
  v51 = v26;
  sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v27 = *(v26 + 24);

  v28 = *(v27 + 16);

  sub_1000B5984(v2, v8);
  v29 = swift_allocObject();
  sub_1000B59E8(v8, v29 + v17);
  v30 = &v15[*(sub_10003AE84(&qword_100158308, &qword_1001128E0) + 36)];
  v31 = v41;
  *v30 = v42;
  *(v30 + 1) = v31;
  v30[16] = v40;
  *(v30 + 3) = v28;
  v30[32] = 0;
  *(v30 + 5) = sub_1000B796C;
  *(v30 + 6) = v29;
  v49 = v44;
  v50 = v43;
  State.wrappedValue.getter();
  v32 = sub_10004C418();

  swift_getKeyPath();
  v49 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v33 = *(v32 + 24);

  v34 = *(v33 + 16);

  LOBYTE(v33) = v34 == 0;
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  v37 = &v15[*(v46 + 36)];
  *v37 = v35;
  v37[1] = sub_1000296E4;
  v37[2] = v36;
  sub_1000B7354();
  View.accessibilityIdentifier(_:)();
  return sub_1000035CC(v15, &qword_1001582F8, &qword_1001128D8);
}

uint64_t sub_1000B27C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for CalculatorHistoryView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v30 = sub_10003AE84(&qword_100158308, &qword_1001128E0);
  v11 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v13 = &v29 - v12;
  static ButtonRole.destructive.getter();
  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  sub_1000B5984(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1000B59E8(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  Button.init(role:action:label:)();
  v17 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(sub_10003AE84(&qword_100158318, &qword_1001128E8) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = v2 + *(v4 + 44);
  v21 = *v20;
  v22 = *(v20 + 8);
  v35 = v21;
  v36 = v22;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  v23 = v32;
  v24 = v33;
  v25 = v34;
  sub_1000B5984(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_1000B59E8(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v15);
  v27 = &v13[*(v30 + 36)];
  *v27 = v23;
  *(v27 + 1) = v24;
  v27[16] = v25;
  *(v27 + 3) = 0;
  v27[32] = 1;
  *(v27 + 5) = sub_1000B7934;
  *(v27 + 6) = v26;
  sub_1000B740C();
  View.accessibilityIdentifier(_:)();
  return sub_1000035CC(v13, &qword_100158308, &qword_1001128E0);
}

uint64_t sub_1000B2B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100158370, &qword_100112910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = *(v2 + 8);

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v36 = v2;
    v17 = v5;
    v18 = v4;
    v19 = v8;
    v20 = a1;
    v21 = v16;
    os_log(_:dso:log:_:_:)();

    a1 = v20;
    v8 = v19;
    v4 = v18;
    v5 = v17;
    v2 = v36;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
    v14 = v37;
  }

  swift_getKeyPath();
  v37 = v14;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v14 + 17);

  if (v22)
  {
    goto LABEL_6;
  }

  v23 = v2[5];
  v37 = v2[4];
  v38 = v23;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v24 = sub_10004C418();

  v25 = *(v24 + 16);

  swift_getKeyPath();
  v37 = v25;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v26 = *(v25 + 48);

  v27 = *(v26 + 16);

  if (!v27)
  {
LABEL_6:
    v33 = 1;
  }

  else
  {
    EditButton.init()();
    KeyPath = swift_getKeyPath();
    v29 = &v8[*(v4 + 36)];
    v30 = *(sub_10003AE84(&qword_100158210, &qword_1001127B0) + 28);
    v31 = *(type metadata accessor for CalculatorHistoryView() + 28);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    State.projectedValue.getter();
    v32 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    (*(*(v32 - 8) + 56))(v29 + v30, 0, 1, v32);
    *v29 = KeyPath;
    sub_10000D5B8(v8, a1, &qword_100158370, &qword_100112910);
    v33 = 0;
  }

  return (*(v5 + 56))(a1, v33, 1, v4);
}

uint64_t sub_1000B2F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v64 = sub_10003AE84(&qword_100158398, &qword_100112920);
  v3 = *(v64 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v64);
  v61 = &v54 - v5;
  v6 = sub_10003AE84(&qword_100158330, &qword_1001128F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v54 - v10;
  v11 = sub_10003AE84(&qword_1001582E8, &qword_1001128D0);
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v56 = &v54 - v13;
  v14 = sub_10003AE84(&qword_1001583A0, &qword_100112928);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = type metadata accessor for EditMode();
  v63 = *(v20 - 8);
  v21 = *(v63 + 64);
  __chkstk_darwin(v20);
  v62 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v2;
  v29 = *(v2 + 8);

  if ((v29 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    v55 = v20;
    v31 = v11;
    v32 = v19;
    v33 = v2;
    v34 = v3;
    v35 = v30;
    os_log(_:dso:log:_:_:)();

    v3 = v34;
    v2 = v33;
    v19 = v32;
    v11 = v31;
    v20 = v55;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v24 + 8))(v27, v23);
    v28 = v66;
  }

  swift_getKeyPath();
  v66 = v28;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v28 + 17);

  if (v36 == 1 && (v37 = *(type metadata accessor for CalculatorHistoryView() + 28), sub_10003AE84(&qword_100157F98, qword_100112550), v38 = v62, State.wrappedValue.getter(), LOBYTE(v37) = EditMode.isEditing.getter(), (*(v63 + 8))(v38, v20), (v37 & 1) != 0))
  {
    v63 = v3;
    v39 = *(v2 + 40);
    v66 = *(v2 + 32);
    v67 = v39;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    v40 = sub_10004C418();

    swift_getKeyPath();
    v66 = v40;
    sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v41 = *(v40 + 24);

    v42 = *(v41 + 16);

    if (v42)
    {
      v43 = v56;
      sub_1000B2270(v56);
      sub_10000D5B8(v43, v19, &qword_1001582E8, &qword_1001128D0);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    (*(v57 + 56))(v19, v44, 1, v11);
    v46 = v59;
    sub_1000B27C4(v59);
    v47 = v58;
    sub_100008E68(v19, v58, &qword_1001583A0, &qword_100112928);
    v48 = v19;
    v49 = v60;
    sub_100008E68(v46, v60, &qword_100158330, &qword_1001128F0);
    v50 = v61;
    sub_100008E68(v47, v61, &qword_1001583A0, &qword_100112928);
    v51 = sub_10003AE84(&qword_1001583A8, &unk_100112980);
    v52 = v50 + *(v51 + 48);
    *v52 = 0;
    *(v52 + 8) = 1;
    sub_100008E68(v49, v50 + *(v51 + 64), &qword_100158330, &qword_1001128F0);
    sub_1000035CC(v46, &qword_100158330, &qword_1001128F0);
    sub_1000035CC(v48, &qword_1001583A0, &qword_100112928);
    sub_1000035CC(v49, &qword_100158330, &qword_1001128F0);
    sub_1000035CC(v47, &qword_1001583A0, &qword_100112928);
    sub_10000D5B8(v50, v65, &qword_100158398, &qword_100112920);
    v45 = 0;
    v3 = v63;
  }

  else
  {
    v45 = 1;
  }

  return (*(v3 + 56))(v65, v45, 1, v64);
}

uint64_t sub_1000B36C8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = sub_10003AE84(&qword_100158290, &qword_100112898);
  v2 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v32 = &v29 - v3;
  v35 = sub_10003AE84(&qword_100158298, &qword_1001128A0);
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v35);
  v6 = &v29 - v5;
  v31 = sub_10003AE84(&qword_1001582A0, &qword_1001128A8);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ToolbarItemPlacement();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10003AE84(&qword_1001582A8, &qword_1001128B0);
  v30 = *(v13 - 8);
  v14 = v30;
  v15 = *(v30 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v39 = v1;
  sub_10003AE84(&qword_1001582B0, &qword_1001128B8);
  sub_1000B70A4();
  v29 = v17;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarLeading.getter();
  v38 = v1;
  sub_10003AE84(&qword_100158360, &qword_100112908);
  sub_1000B76B8();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.bottomBar.getter();
  v37 = v1;
  sub_10003AE84(&qword_100158380, &qword_100112918);
  sub_1000B786C();
  ToolbarItemGroup.init(placement:content:)();
  v18 = *(v34 + 48);
  v19 = *(v34 + 64);
  v20 = *(v14 + 16);
  v21 = v32;
  v22 = v13;
  v20(v32, v17, v13);
  v23 = v10;
  v24 = v10;
  v25 = v31;
  (*(v7 + 16))(&v21[v18], v23, v31);
  v26 = v33;
  v27 = v35;
  (*(v33 + 16))(&v21[v19], v6, v35);
  TupleToolbarContent.init(_:)();
  (*(v26 + 8))(v6, v27);
  (*(v7 + 8))(v24, v25);
  return (*(v30 + 8))(v29, v22);
}

uint64_t sub_1000B3B10@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  LODWORD(v38) = a1;
  v40 = a3;
  v5 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v39 = &v34 - v7;
  v8 = sub_10003AE84(&qword_100158230, &qword_100112830);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v42 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v34 - v12;
  sub_1000B3F60(v4, &v53);
  v13 = *(&v53 + 1);
  v35 = v53;
  v14 = v54;
  v15 = BYTE2(v54);
  v37 = type metadata accessor for CalculatorHistoryView();
  v16 = *(v37 + 48);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v36 = a2;
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v53) = v15;
  *&v48[5] = v50;
  *&v48[21] = v51;
  *&v48[37] = v52;
  LOBYTE(a2) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(v44 + 3) = *v48;
  *(&v44[1] + 3) = *&v48[16];
  v49 = 0;
  *&v43 = v35;
  *(&v43 + 1) = v13;
  LOWORD(v44[0]) = v14;
  BYTE2(v44[0]) = v15;
  *(&v44[2] + 3) = *&v48[32];
  *&v44[3] = *&v48[45];
  BYTE8(v44[3]) = a2;
  *&v45 = v17;
  *(&v45 + 1) = v18;
  *&v46 = v19;
  *(&v46 + 1) = v20;
  v47 = 0;
  sub_10003AE84(&qword_100158238, &qword_100112838);
  sub_1000B6D5C();
  v21 = v41;
  View.accessibilityHidden(_:)();
  v57 = v44[3];
  v58 = v45;
  v59 = v46;
  v60 = v47;
  v53 = v43;
  v54 = v44[0];
  v55 = v44[1];
  v56 = v44[2];
  sub_1000035CC(&v53, &qword_100158238, &qword_100112838);
  sub_1000B41BC(&v43);
  v22 = v43;
  v23 = *(&v44[0] + 1);
  v38 = *&v44[0];
  LOBYTE(v13) = v44[1];
  v24 = v36 + *(v37 + 44);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v25 = type metadata accessor for Font.Design();
  v26 = v39;
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  v27 = static Font.system(size:weight:design:)();
  sub_1000035CC(v26, &qword_1001567E0, &qword_10010F970);
  KeyPath = swift_getKeyPath();
  v29 = v42;
  sub_100008E68(v21, v42, &qword_100158230, &qword_100112830);
  v30 = v29;
  v31 = v40;
  sub_100008E68(v30, v40, &qword_100158230, &qword_100112830);
  v32 = v31 + *(sub_10003AE84(&qword_100158288, &qword_100112890) + 48);
  *v32 = v22;
  LOBYTE(v31) = v38;
  *(v32 + 16) = v38;
  *(v32 + 24) = v23;
  *(v32 + 32) = v13;
  *(v32 + 40) = KeyPath;
  *(v32 + 48) = v27;
  sub_1000B7000(v22, *(&v22 + 1), v31);

  sub_1000035CC(v41, &qword_100158230, &qword_100112830);
  sub_1000B703C(v22, *(&v22 + 1), v31);

  return sub_1000035CC(v42, &qword_100158230, &qword_100112830);
}

double sub_1000B3F60@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1001543F0 != -1)
    {
      swift_once();
    }

    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v8, v4);
    v15 = v9;
    v16 = 0;
    v17 = 1;
    v18 = 0;
  }

  else
  {
    if (qword_1001543E8 != -1)
    {
      swift_once();
    }

    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v10 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v8, v4);
    v15 = v10;
    v16 = 0;
    v17 = 1;
    v18 = 1;
  }

  sub_10003AE84(&qword_100158280, &unk_100113690);
  sub_1000B6F7C();
  _ConditionalContent<>.init(storage:)();
  result = *&v19;
  v12 = v20;
  v13 = v21;
  *a2 = v19;
  *(a2 + 16) = v12;
  *(a2 + 18) = v13;
  return result;
}

double sub_1000B41BC@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000B42D4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001581C0, &qword_100112788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_1000B4458(&v9[-v4]);
  v10 = a1;
  sub_10003AE84(&qword_1001581C8, &qword_100112790);
  sub_1000B6A0C();
  v6 = sub_10003AECC(&qword_100158218, &qword_1001127B8);
  v7 = sub_100004880(&qword_100158220, &qword_100158218, &qword_1001127B8);
  v11 = v6;
  v12 = v7;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1000035CC(v5, &qword_1001581C0, &qword_100112788);
}

uint64_t sub_1000B4458@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for KeyEquivalent();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  __chkstk_darwin(v2);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CalculatorHistoryView();
  v72 = *(v68 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v68);
  v78 = v6;
  v79 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for EditMode();
  v70 = *(v71 - 8);
  v7 = *(v70 + 64);
  __chkstk_darwin(v71);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CalculatorHistoryListView();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10003AE84(&qword_1001581F0, &qword_1001127A8);
  v13 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v67 = &v66 - v14;
  v75 = sub_10003AE84(&qword_1001581E8, &qword_1001127A0);
  v74 = *(v75 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = &v66 - v16;
  v85 = sub_10003AE84(&qword_1001581E0, &qword_100112798);
  v17 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v76 = &v66 - v18;
  v82 = sub_10003AE84(&qword_1001583C8, &qword_100112A60);
  v19 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v83 = &v66 - v20;
  v84 = sub_10003AE84(&qword_1001583D0, &qword_100112A68);
  v21 = *(v84 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v84);
  v24 = &v66 - v23;
  v26 = *(v1 + 32);
  v25 = *(v1 + 40);
  v88 = v1;
  v89 = v26;
  v27 = v25;
  v90 = v25;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v28 = sub_10004C418();

  v29 = *(v28 + 16);

  swift_getKeyPath();
  v89 = v29;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v30 = *(v29 + 48);

  v31 = *(v30 + 16);

  if (v31)
  {
    type metadata accessor for CalculatorViewModel();
    sub_1000116C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    *v12 = Environment.init<A>(_:)();
    v12[8] = v32 & 1;
    type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
    sub_1000116C0(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper);
    *(v12 + 2) = Environment.init<A>(_:)();
    v12[24] = v33 & 1;
    type metadata accessor for CalculatorHistoryViewModel(0);
    sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    *(v12 + 4) = Environment.init<A>(_:)();
    v12[40] = v34 & 1;
    type metadata accessor for CalculatorToolbarViewModel();
    sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
    *(v12 + 6) = Environment.init<A>(_:)();
    v12[56] = v35 & 1;
    v36 = v9[8];
    *&v12[v36] = swift_getKeyPath();
    sub_10003AE84(&qword_1001566B0, &qword_100112A70);
    swift_storeEnumTagMultiPayload();
    v37 = v9[9];
    v89 = 0x4031000000000000;
    sub_1000103CC();
    ScaledMetric.init(wrappedValue:)();
    v38 = v9[10];
    v89 = 0x4032000000000000;
    ScaledMetric.init(wrappedValue:)();
    v39 = v9[11];
    v89 = 0x4037000000000000;
    ScaledMetric.init(wrappedValue:)();
    v89 = v26;
    v90 = v27;
    State.wrappedValue.getter();
    sub_10004C418();

    sub_1000116C0(&qword_100158200, type metadata accessor for CalculatorHistoryListView);
    v40 = v67;
    View.environment<A>(_:)();

    sub_1000B799C(v12);
    KeyPath = swift_getKeyPath();
    v42 = (v40 + *(v87 + 36));
    v43 = *(sub_10003AE84(&qword_100158210, &qword_1001127B0) + 28);
    v44 = *(v68 + 28);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    v45 = v88;
    State.projectedValue.getter();
    v46 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    (*(*(v46 - 8) + 56))(v42 + v43, 0, 1, v46);
    *v42 = KeyPath;
    v47 = v69;
    State.wrappedValue.getter();
    LOBYTE(KeyPath) = EditMode.isEditing.getter();
    (*(v70 + 8))(v47, v71);
    LOBYTE(v89) = KeyPath & 1;
    v48 = v79;
    sub_1000B5984(v45, v79);
    v49 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v50 = swift_allocObject();
    sub_1000B59E8(v48, v50 + v49);
    v51 = sub_1000B6BF4();
    v52 = v73;
    v53 = v87;
    View.onChange<A>(of:initial:_:)();

    sub_1000035CC(v40, &qword_1001581F0, &qword_1001127A8);
    v54 = v77;
    static KeyEquivalent.delete.getter();
    sub_1000B5984(v88, v48);
    v55 = swift_allocObject();
    sub_1000B59E8(v48, v55 + v49);
    v89 = v53;
    v90 = &type metadata for Bool;
    v91 = v51;
    v92 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v56 = v76;
    v57 = v75;
    View.onKeyPress(_:action:)();

    (*(v80 + 8))(v54, v81);
    (*(v74 + 8))(v52, v57);
    sub_1000B5984(v88, v48);
    v58 = swift_allocObject();
    sub_1000B59E8(v48, v58 + v49);
    v59 = (v56 + *(v85 + 36));
    *v59 = 0;
    v59[1] = 0;
    v59[2] = sub_1000B7B14;
    v59[3] = v58;
    sub_100008E68(v56, v83, &qword_1001581E0, &qword_100112798);
    swift_storeEnumTagMultiPayload();
    v60 = sub_10003AECC(&qword_100158150, &qword_100112748);
    v61 = sub_1000B66C4();
    v89 = v60;
    v90 = v61;
    swift_getOpaqueTypeConformance2();
    sub_1000B6AD4();
    _ConditionalContent<>.init(storage:)();
    return sub_1000035CC(v56, &qword_1001581E0, &qword_100112798);
  }

  else
  {
    sub_1000B0608(0, v24);
    v63 = v84;
    (*(v21 + 16))(v83, v24, v84);
    swift_storeEnumTagMultiPayload();
    v64 = sub_10003AECC(&qword_100158150, &qword_100112748);
    v65 = sub_1000B66C4();
    v89 = v64;
    v90 = v65;
    swift_getOpaqueTypeConformance2();
    sub_1000B6AD4();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v24, v63);
  }
}

uint64_t sub_1000B50BC()
{
  v0 = sub_10003AE84(&qword_100158218, &qword_1001127B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_1000B36C8(&v6 - v3);
  sub_100004880(&qword_100158220, &qword_100158218, &qword_1001127B8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000B51E0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156660, &qword_10010F7C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100008E68(a1, &v6 - v4, &qword_100156660, &qword_10010F7C0);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_1000B5288(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    v11 = *(a3 + 16);
    v12 = *(a3 + 24);

    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v10, v5);
      v11 = v16;
    }

    swift_getKeyPath();
    v16 = v11;
    sub_1000116C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v11 + 54) != 11)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v15 - 2) = v11;
      *(&v15 - 8) = 11;
      v16 = v11;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000B54EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for CalculatorHistoryView() + 28);
  sub_10003AE84(&qword_100157F98, qword_100112550);
  State.wrappedValue.getter();
  LOBYTE(v7) = EditMode.isEditing.getter();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_1000B564C();
    v8 = &enum case for KeyPress.Result.handled(_:);
  }

  else
  {
    v8 = &enum case for KeyPress.Result.ignored(_:);
  }

  v9 = *v8;
  v10 = type metadata accessor for KeyPress.Result();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_1000B564C()
{
  v1 = v0;
  v7 = *(v0 + 32);
  v9 = *(v0 + 40);
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  sub_10004C418();

  v2 = sub_10004E228();

  v3 = type metadata accessor for CalculatorHistoryView();
  if (v2)
  {
    v4 = *(v3 + 36);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = (v1 + v4);
  v8 = *v5;
  v10 = *(v5 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B5724(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = *(a1 + 40);
  v17[0] = *(a1 + 32);
  v17[1] = v10;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v11 = sub_10004C418();

  v12 = *(v11 + 16);

  swift_getKeyPath();
  v17[0] = v12;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v13 = *(v12 + 48);

  v14 = *(v13 + 16);

  if (!v14)
  {
    (*(v3 + 104))(v9, enum case for EditMode.inactive(_:), v2);
    v16 = *(type metadata accessor for CalculatorHistoryView() + 28);
    (*(v3 + 16))(v7, v9, v2);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    State.wrappedValue.setter();
    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_1000B5984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B59E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5A64(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CalculatorHistoryView() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B5AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x28206574656C6544;
  v6._object = 0xE800000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v7 = sub_10004C418();

  swift_getKeyPath();
  sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(v7 + 24);

  v9 = *(v8 + 16);

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1000B5CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  sub_10004C418();

  sub_10004E65C();
}

uint64_t sub_1000B5D54(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CalculatorHistoryView() + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B5DC8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000B5E48(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v1 = sub_10004C418();

  v2 = *(v1 + 16);
  sub_100044EA4();
  sub_10004EAC8();
}

uint64_t sub_1000B5EC0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  sub_10000362C();
  sub_100091C5C(0);
}

uint64_t sub_1000B6050()
{

  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  Binding.wrappedValue.getter();
  if (v1 == 1)
  {
    Binding.wrappedValue.setter();
  }
}

uint64_t sub_1000B6104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  v9 = sub_10003AE84(&qword_1001583E0, &qword_100112B08);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(sub_10003AE84(&qword_1001583E8, &unk_100112B10) + 36));
  *v10 = sub_1000B7DEC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_1000B61F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B6268()
{
  result = qword_1001580F0;
  if (!qword_1001580F0)
  {
    sub_10003AECC(&qword_1001580C0, &qword_100112680);
    sub_1000B62F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001580F0);
  }

  return result;
}

unint64_t sub_1000B62F4()
{
  result = qword_1001580F8;
  if (!qword_1001580F8)
  {
    sub_10003AECC(&qword_1001580B8, &qword_100112678);
    sub_1000B6380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001580F8);
  }

  return result;
}

unint64_t sub_1000B6380()
{
  result = qword_100158100;
  if (!qword_100158100)
  {
    sub_10003AECC(&qword_1001580B0, &qword_100112670);
    sub_100004880(&qword_100158108, &qword_100158110, &qword_100112738);
    sub_100004880(&qword_100158118, &qword_1001580E8, &qword_100112700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158100);
  }

  return result;
}

unint64_t sub_1000B6464()
{
  result = qword_100158120;
  if (!qword_100158120)
  {
    sub_10003AECC(&qword_100158098, &qword_100112658);
    sub_100004880(&qword_100158128, &qword_100158130, &qword_100112740);
    sub_1000B651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158120);
  }

  return result;
}

unint64_t sub_1000B651C()
{
  result = qword_100158138;
  if (!qword_100158138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158138);
  }

  return result;
}

unint64_t sub_1000B6570()
{
  result = qword_100158140;
  if (!qword_100158140)
  {
    sub_10003AECC(&qword_1001580D8, &qword_100112698);
    sub_1000B65FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158140);
  }

  return result;
}

unint64_t sub_1000B65FC()
{
  result = qword_100158148;
  if (!qword_100158148)
  {
    sub_10003AECC(&qword_1001580E0, &qword_1001126A0);
    sub_10003AECC(&qword_100158150, &qword_100112748);
    sub_1000B66C4();
    swift_getOpaqueTypeConformance2();
    sub_1000B651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158148);
  }

  return result;
}

unint64_t sub_1000B66C4()
{
  result = qword_100158158;
  if (!qword_100158158)
  {
    sub_10003AECC(&qword_100158150, &qword_100112748);
    sub_1000B6750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158158);
  }

  return result;
}

unint64_t sub_1000B6750()
{
  result = qword_100158160;
  if (!qword_100158160)
  {
    sub_10003AECC(&qword_100158168, &qword_100112750);
    sub_1000B67DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158160);
  }

  return result;
}

unint64_t sub_1000B67DC()
{
  result = qword_100158170;
  if (!qword_100158170)
  {
    sub_10003AECC(&qword_100158178, &qword_100112758);
    sub_1000B6894();
    sub_100004880(&qword_1001581A0, &qword_1001581A8, &qword_100112778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158170);
  }

  return result;
}

unint64_t sub_1000B6894()
{
  result = qword_100158180;
  if (!qword_100158180)
  {
    sub_10003AECC(&qword_100158188, &qword_100112760);
    sub_100004880(&qword_100158190, &qword_100158198, &unk_100112768);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158180);
  }

  return result;
}

unint64_t sub_1000B6978()
{
  result = qword_1001581B0;
  if (!qword_1001581B0)
  {
    sub_10003AECC(&qword_1001580A8, &qword_100112668);
    sub_1000B6268();
    sub_1000B6464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581B0);
  }

  return result;
}

unint64_t sub_1000B6A0C()
{
  result = qword_1001581D0;
  if (!qword_1001581D0)
  {
    sub_10003AECC(&qword_1001581C0, &qword_100112788);
    sub_10003AECC(&qword_100158150, &qword_100112748);
    sub_1000B66C4();
    swift_getOpaqueTypeConformance2();
    sub_1000B6AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581D0);
  }

  return result;
}

unint64_t sub_1000B6AD4()
{
  result = qword_1001581D8;
  if (!qword_1001581D8)
  {
    sub_10003AECC(&qword_1001581E0, &qword_100112798);
    sub_10003AECC(&qword_1001581E8, &qword_1001127A0);
    sub_10003AECC(&qword_1001581F0, &qword_1001127A8);
    sub_1000B6BF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581D8);
  }

  return result;
}

unint64_t sub_1000B6BF4()
{
  result = qword_1001581F8;
  if (!qword_1001581F8)
  {
    sub_10003AECC(&qword_1001581F0, &qword_1001127A8);
    type metadata accessor for CalculatorHistoryListView();
    type metadata accessor for CalculatorHistoryViewModel(255);
    sub_1000116C0(&qword_100158200, type metadata accessor for CalculatorHistoryListView);
    sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158208, &qword_100158210, &qword_1001127B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581F8);
  }

  return result;
}

unint64_t sub_1000B6D5C()
{
  result = qword_100158240;
  if (!qword_100158240)
  {
    sub_10003AECC(&qword_100158238, &qword_100112838);
    sub_1000B6DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158240);
  }

  return result;
}

unint64_t sub_1000B6DE8()
{
  result = qword_100158248;
  if (!qword_100158248)
  {
    sub_10003AECC(&qword_100158250, &qword_100112840);
    sub_1000B6E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158248);
  }

  return result;
}

unint64_t sub_1000B6E74()
{
  result = qword_100158258;
  if (!qword_100158258)
  {
    sub_10003AECC(&qword_100158260, &qword_100112848);
    sub_1000B6EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158258);
  }

  return result;
}

unint64_t sub_1000B6EF8()
{
  result = qword_100158268;
  if (!qword_100158268)
  {
    sub_10003AECC(&qword_100158270, &unk_100112850);
    sub_1000B6F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158268);
  }

  return result;
}

unint64_t sub_1000B6F7C()
{
  result = qword_100158278;
  if (!qword_100158278)
  {
    sub_10003AECC(&qword_100158280, &unk_100113690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158278);
  }

  return result;
}

uint64_t sub_1000B7000(uint64_t a1, uint64_t a2, char a3)
{
  sub_10006564C(a1, a2, a3 & 1);
}

uint64_t sub_1000B703C(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000C6AC(a1, a2, a3 & 1);
}

unint64_t sub_1000B70A4()
{
  result = qword_1001582B8;
  if (!qword_1001582B8)
  {
    sub_10003AECC(&qword_1001582B0, &qword_1001128B8);
    sub_1000B7130();
    sub_1000B76B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582B8);
  }

  return result;
}

unint64_t sub_1000B7130()
{
  result = qword_1001582C0;
  if (!qword_1001582C0)
  {
    sub_10003AECC(&qword_1001582C8, &qword_1001128C0);
    sub_1000B71BC();
    sub_1000B75D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582C0);
  }

  return result;
}

unint64_t sub_1000B71BC()
{
  result = qword_1001582D0;
  if (!qword_1001582D0)
  {
    sub_10003AECC(&qword_1001582D8, &qword_1001128C8);
    sub_1000B72A0(&qword_1001582E0, &qword_1001582E8, &qword_1001128D0, sub_1000B7354);
    sub_1000B72A0(&qword_100158328, &qword_100158330, &qword_1001128F0, sub_1000B740C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582D0);
  }

  return result;
}

uint64_t sub_1000B72A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    sub_1000116C0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B7354()
{
  result = qword_1001582F0;
  if (!qword_1001582F0)
  {
    sub_10003AECC(&qword_1001582F8, &qword_1001128D8);
    sub_1000B740C();
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582F0);
  }

  return result;
}

unint64_t sub_1000B740C()
{
  result = qword_100158300;
  if (!qword_100158300)
  {
    sub_10003AECC(&qword_100158308, &qword_1001128E0);
    sub_1000B7498();
    sub_1000B757C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158300);
  }

  return result;
}

unint64_t sub_1000B7498()
{
  result = qword_100158310;
  if (!qword_100158310)
  {
    sub_10003AECC(&qword_100158318, &qword_1001128E8);
    sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158310);
  }

  return result;
}

unint64_t sub_1000B757C()
{
  result = qword_100158320;
  if (!qword_100158320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158320);
  }

  return result;
}

unint64_t sub_1000B75D0()
{
  result = qword_100158338;
  if (!qword_100158338)
  {
    sub_10003AECC(&qword_100158340, &qword_1001128F8);
    sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900);
    sub_1000116C0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158338);
  }

  return result;
}

unint64_t sub_1000B76B8()
{
  result = qword_100158358;
  if (!qword_100158358)
  {
    sub_10003AECC(&qword_100158360, &qword_100112908);
    sub_1000B773C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158358);
  }

  return result;
}

unint64_t sub_1000B773C()
{
  result = qword_100158368;
  if (!qword_100158368)
  {
    sub_10003AECC(&qword_100158370, &qword_100112910);
    sub_1000116C0(&qword_100158378, &type metadata accessor for EditButton);
    sub_100004880(&qword_100158208, &qword_100158210, &qword_1001127B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158368);
  }

  return result;
}

unint64_t sub_1000B786C()
{
  result = qword_100158388;
  if (!qword_100158388)
  {
    sub_10003AECC(&qword_100158380, &qword_100112918);
    sub_100004880(&qword_100158390, &qword_100158398, &qword_100112920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158388);
  }

  return result;
}

uint64_t sub_1000B799C(uint64_t a1)
{
  v2 = type metadata accessor for CalculatorHistoryListView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B7A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CalculatorHistoryView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1000B7AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for CalculatorHistoryView() - 8) + 80);

  return sub_1000B54EC(a1);
}

uint64_t sub_1000B7B2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculatorHistoryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

__n128 sub_1000B7BA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B7BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000B7BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B7C4C()
{
  result = qword_1001583D8;
  if (!qword_1001583D8)
  {
    sub_10003AECC(&qword_100158078, &qword_1001125F0);
    sub_10003AECC(&qword_100158068, &qword_1001125E0);
    sub_10003AECC(&qword_100158060, &qword_1001125D8);
    sub_100004880(&qword_100158088, &qword_100158060, &qword_1001125D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000116C0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001583D8);
  }

  return result;
}

uint64_t sub_1000B7DEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1000B6050();
}

unint64_t sub_1000B7DF8()
{
  result = qword_1001583F0;
  if (!qword_1001583F0)
  {
    sub_10003AECC(&qword_1001583E8, &unk_100112B10);
    sub_100004880(&qword_1001583F8, &qword_1001583E0, &qword_100112B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001583F0);
  }

  return result;
}

__n128 sub_1000B7EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000B7ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
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

uint64_t sub_1000B7F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_1000B7F84(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Solarium.isEnabled.getter() & 1) != 0 || (a1 & 1) == 0)
  {
    v25 = v2[56];
    v10 = *(v2 + 6);
    v24 = v10;
    v11 = v25;

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v24, &qword_100154810, &qword_10010DF90);
      (*(v5 + 8))(v8, v4);
      v10 = v23;
    }

    swift_getKeyPath();
    v23 = v10;
    sub_1000B8F8C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v13 = *(v10 + 72);

    v14 = 0x1000000000000;
    if (!v2[6])
    {
      v14 = 0;
    }

    v15 = 0x10000000000;
    if (!v2[5])
    {
      v15 = 0;
    }

    v16 = &_mh_execute_header;
    if (!v2[4])
    {
      v16 = 0;
    }

    v17 = 0x1000000;
    if (!v2[3])
    {
      v17 = 0;
    }

    v18 = 0x10000;
    if (!v2[2])
    {
      v18 = 0;
    }

    v19 = 256;
    if (!v2[1])
    {
      v19 = 0;
    }

    v20 = sub_100025D2C(v19 | *v2 | v18 | v17 | v16 | v15 | v14);
    v9 = sub_10002AD34(v20, v13);
  }

  else
  {
    return 1;
  }

  return v9;
}

unint64_t sub_1000B822C()
{
  result = qword_100158498;
  if (!qword_100158498)
  {
    sub_10003AECC(&qword_100158420, &qword_100112D18);
    sub_1000B82E4();
    sub_100004880(&qword_1001584F8, &qword_100158478, &unk_100112E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158498);
  }

  return result;
}

unint64_t sub_1000B82E4()
{
  result = qword_1001584A0;
  if (!qword_1001584A0)
  {
    sub_10003AECC(&qword_100158418, &qword_100112D10);
    sub_1000B839C();
    sub_100004880(&qword_1001584F0, &qword_100158468, &unk_100112E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584A0);
  }

  return result;
}

unint64_t sub_1000B839C()
{
  result = qword_1001584A8;
  if (!qword_1001584A8)
  {
    sub_10003AECC(&qword_100158410, &qword_100112D08);
    sub_100026BA8();
    sub_100004880(&qword_1001584E8, &qword_100158460, &qword_100115570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584A8);
  }

  return result;
}

uint64_t sub_1000B8454(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0x1000000FFLL;
  if ((a1 & 0x1000000000000) != 0 || v2 == 0x100000003)
  {
    if (qword_100154518 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.swappableButtons))
    {
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_40;
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
          if (qword_100154658 != -1)
          {
            swift_once();
          }

          v3 = &qword_100160C80;
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
          goto LABEL_43;
        }

LABEL_40:
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
LABEL_43:
          if ((v1 & 0x10000FF) == 0x1000001 || v2 == 0x100000003)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_44:
      v4 = v1;
      if (v1 > 0x36u)
      {
        goto LABEL_48;
      }

      if (((1 << v1) & 0x400000003FF408) == 0)
      {
        if (((1 << v1) & 0x3E0) == 0)
        {
          if (((1 << v1) & 0x800000016) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_28;
        }

LABEL_59:
        if (qword_100154628 != -1)
        {
          swift_once();
        }

        v3 = &qword_100160C50;
        return *v3;
      }

LABEL_49:
      if (qword_100154640 != -1)
      {
        swift_once();
      }

      v3 = &qword_100160C68;
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
      goto LABEL_27;
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
LABEL_27:
      if ((v1 & 0x10000FF) == 0x1000001)
      {
        goto LABEL_28;
      }

      if (v2 == 0x100000003)
      {
        goto LABEL_62;
      }
    }
  }

  v4 = v1;
  if (v1 > 0x36u)
  {
    goto LABEL_48;
  }

  if (((1 << v1) & 0x400000003FFC08) != 0)
  {
    goto LABEL_49;
  }

  if (((1 << v1) & 0x3E0) != 0)
  {
    goto LABEL_59;
  }

  if (((1 << v1) & 0x20000000000016) == 0)
  {
LABEL_48:
    if ((v4 - 66) < 8)
    {
      goto LABEL_49;
    }

    if (v4 == 93)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

LABEL_28:
  if (qword_100154610 != -1)
  {
    swift_once();
  }

  v3 = &qword_100160C38;
  return *v3;
}

uint64_t sub_1000B8890(uint64_t a1)
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
          if (qword_100154648 != -1)
          {
            swift_once();
          }

          v3 = &qword_100160C70;
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
        if (qword_100154618 != -1)
        {
          swift_once();
        }

        v3 = &qword_100160C40;
        return *v3;
      }

LABEL_49:
      if (qword_100154630 != -1)
      {
        swift_once();
      }

      v3 = &qword_100160C58;
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
  if (qword_100154600 != -1)
  {
    swift_once();
  }

  v3 = &qword_100160C28;
  return *v3;
}

uint64_t sub_1000B8CD4(char a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = v1[72];
  v8 = *(v1 + 8);
  v24 = v8;
  if (v25 == 1)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      v9 = 0x1000000000000;
      if (!v1[6])
      {
        v9 = 0;
      }

      v10 = 0x10000000000;
      if (!v1[5])
      {
        v10 = 0;
      }

      v11 = &_mh_execute_header;
      if (!v1[4])
      {
        v11 = 0;
      }

      v12 = 0x1000000;
      if (!v1[3])
      {
        v12 = 0;
      }

      v13 = 0x10000;
      if (!v1[2])
      {
        v13 = 0;
      }

      v14 = 256;
      if (!v1[1])
      {
        v14 = 0;
      }

      return sub_1000B8890(v14 | *v1 | v13 | v12 | v11 | v10 | v9);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v24, &qword_100158458, &unk_100112DE0);
    (*(v4 + 8))(v7, v3);
    if (v23[15] != 1)
    {
      goto LABEL_3;
    }
  }

  if (v1[5] == 1)
  {
    if (qword_100154660 != -1)
    {
      swift_once();
    }

    return qword_100160C88;
  }

  else
  {
    if (v1[6])
    {
      v17 = 0x1000000000000;
    }

    else
    {
      v17 = 0;
    }

    if (v1[4])
    {
      v18 = &_mh_execute_header;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0x1000000;
    if (!v1[3])
    {
      v19 = 0;
    }

    v20 = 0x10000;
    if (!v1[2])
    {
      v20 = 0;
    }

    v21 = 256;
    if (!v1[1])
    {
      v21 = 0;
    }

    v22 = v21 | *v1 | v20 | v19 | v18 | v17;
    if (a1)
    {
      return sub_1000B8454(v22);
    }

    else
    {
      return sub_10002AD64(v22);
    }
  }
}

uint64_t sub_1000B8F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B8FD4()
{
  result = qword_100158518;
  if (!qword_100158518)
  {
    sub_10003AECC(&qword_100158510, &qword_100112E78);
    sub_10003AECC(&qword_100158438, &qword_100112D30);
    sub_10003AECC(&qword_100158430, &qword_100112D28);
    sub_10003AECC(&qword_100158428, &qword_100112D20);
    type metadata accessor for Capsule();
    sub_10003AECC(&qword_100158420, &qword_100112D18);
    type metadata accessor for LiftHoverEffect();
    sub_1000B822C();
    sub_1000B8F8C(&qword_100158500, &type metadata accessor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_1000B8F8C(&qword_100158508, &type metadata accessor for Capsule);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158520, &qword_100158528, &qword_100112ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158518);
  }

  return result;
}

void sub_1000B9224()
{
  v0 = type metadata accessor for CalculatorNetworkManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = type metadata accessor for NWPathMonitor();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v3 + 24) = NWPathMonitor.init()();
  ObservationRegistrar.init()();
  sub_1000B99EC();
  qword_100160D28 = v3;
}

uint64_t sub_1000B929C()
{
  swift_getKeyPath();
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000B933C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B944C()
{
  swift_getKeyPath();
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
}

uint64_t sub_1000B94F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_1000B959C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t CalculatorNetworkManager.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC10Calculator24CalculatorNetworkManager___observationRegistrar;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 24);

  NWPathMonitor.cancel()();

  v4 = *(v1 + 24);

  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v1 + v2, v5);
  return v1;
}

uint64_t type metadata accessor for CalculatorNetworkManager()
{
  result = qword_100158560;
  if (!qword_100158560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CalculatorNetworkManager.__deallocating_deinit()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC10Calculator24CalculatorNetworkManager___observationRegistrar;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 3);

  NWPathMonitor.cancel()();

  v4 = *(v1 + 3);

  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v1[v2], v5);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1000B9944()
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

void sub_1000B99EC()
{
  v1 = v0;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_100050560(0, 0, v13, &unk_100112F98, v15);

  swift_getKeyPath();
  v19 = v1;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v1[3];
  sub_10000A84C();

  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_1000B9FB4(&qword_100158690, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10003AE84(&qword_100158698, &qword_100112FA0);
  sub_1000B9FFC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWPathMonitor.start(queue:)();
}

uint64_t sub_1000B9DB4()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 24);
  swift_allocObject();
  swift_weakInit();

  sub_1000BA2FC(sub_1000BA2F4);
  NWPathMonitor.pathUpdateHandler.setter();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B9F00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030CEC;

  return sub_1000B9D94(a1, v4, v5, v6);
}

uint64_t sub_1000B9FB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B9FFC()
{
  result = qword_1001586A0;
  if (!qword_1001586A0)
  {
    sub_10003AECC(&qword_100158698, &qword_100112FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001586A0);
  }

  return result;
}

uint64_t sub_1000BA060()
{
  v0 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for NWPath.Status();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    NWPath.status.getter();
    (*(v5 + 104))(v9, enum case for NWPath.Status.satisfied(_:), v4);
    v14 = static NWPath.Status.== infix(_:_:)();
    v15 = *(v5 + 8);
    v15(v9, v4);
    v15(v11, v4);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    if (v14)
    {
      v18 = &unk_100112FC0;
    }

    else
    {
      v18 = &unk_100112FB0;
    }

    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v13;
    sub_100050560(0, 0, v3, v18, v19);
  }

  return result;
}

uint64_t sub_1000BA2FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000BA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BA3A4, v6, v5);
}

uint64_t sub_1000BA3A4()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[2] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000BA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BA5AC, v6, v5);
}

uint64_t sub_1000BA5AC()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 16) == 1)
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[2] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000BA71C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_1000BA514(a1, v4, v5, v6);
}

uint64_t sub_1000BA7D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_1000BA30C(a1, v4, v5, v6);
}

uint64_t sub_1000BA884()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

Swift::Int HistoryPresentationStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_1000BA944()
{
  result = qword_1001586A8;
  if (!qword_1001586A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001586A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HistoryPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t type metadata accessor for UnitConversionPopoverView()
{
  result = qword_100158738;
  if (!qword_100158738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BAAC0()
{
  sub_100013F2C(319, &qword_100156648, type metadata accessor for CalculatorViewModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100013F2C(319, &qword_100156650, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100013F2C(319, &qword_1001557F0, type metadata accessor for CalculatorLayout, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000BAE10(319, &qword_100158748, &type metadata for Bool, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_100013F2C(319, &qword_1001549C8, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000BAD0C();
            if (v5 <= 0x3F)
            {
              sub_1000BAD70();
              if (v6 <= 0x3F)
              {
                sub_1000BAE10(319, &unk_100158760, &type metadata for String, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_100010420();
                  if (v8 <= 0x3F)
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
  }
}

void sub_1000BAD0C()
{
  if (!qword_100158750)
  {
    sub_10003AECC(&qword_100154C40, &qword_10010CFA0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100158750);
    }
  }
}

void sub_1000BAD70()
{
  if (!qword_100158758)
  {
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10001BAF0(&qword_100157818, sub_10001BB68);
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100158758);
    }
  }
}

void sub_1000BAE10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000BAE94(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1000BAFA8(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &qword_1001588F0;
  while (1)
  {
    v5 = *(v29 + 16 * v1 + 8);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 16 * v1 + 8);
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_100004880(&qword_1001588F8, v3, &qword_100113308);
      for (i = 0; i != v15; ++i)
      {
        sub_10003AE84(v3, &qword_100113308);
        v19 = v3;
        v20 = sub_1000ADD1C(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1000BB2A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 54);
  return result;
}

uint64_t sub_1000BB374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

id sub_1000BB46C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

id sub_1000BB550()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + *(type metadata accessor for UnitConversionPopoverView() + 44));
  v8 = *(v7 + 2);
  v26 = *v7;
  v27 = v8;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v9 = v25;
  if (v25)
  {
    v10 = v24;
    v11 = *(v0 + 16);
    v12 = *(v1 + 24);

    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
    }

    v14 = sub_100074054();

    v15 = *(v14 + 16);

    v16 = sub_1000A9728();

    if (*(v16 + 16))
    {
      v17 = sub_10007519C(v10, v9);
      v19 = v18;

      if (v19)
      {
        v20 = *(v16 + 56) + 16 * v17;
        v21 = *(v20 + 8);
        v22 = *v20;

        return v22;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000BB78C@<X0>(char *a1@<X8>)
{
  v202 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v151 = *(v2 - 8);
  v152 = v2;
  v3 = *(v151 + 64);
  __chkstk_darwin(v2);
  v150 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnitConversionPopoverView();
  v199 = *(v5 - 8);
  v6 = *(v199 + 64);
  __chkstk_darwin(v5);
  v200 = v7;
  v208 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v191 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v190 = &v149 - v12;
  v188 = type metadata accessor for CalculatorSizeClass(0);
  v13 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v189 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for SearchPresentationToolbarBehavior();
  v177 = *(v179 - 8);
  v15 = *(v177 + 64);
  __chkstk_darwin(v179);
  v176 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v17 = *(v154 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v154);
  v153 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchFieldPlacement();
  v158 = *(v20 - 8);
  v159 = v20;
  v21 = *(v158 + 64);
  __chkstk_darwin(v20);
  v23 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_10003AE84(&qword_1001587D0, &qword_100113140);
  v157 = *(v203 - 8);
  v24 = *(v157 + 64);
  __chkstk_darwin(v203);
  v26 = &v149 - v25;
  v164 = sub_10003AE84(&qword_1001587D8, &qword_100113148);
  v160 = *(v164 - 8);
  v27 = *(v160 + 64);
  __chkstk_darwin(v164);
  v204 = &v149 - v28;
  v165 = sub_10003AE84(&qword_1001587E0, &qword_100113150);
  v163 = *(v165 - 8);
  v29 = *(v163 + 64);
  __chkstk_darwin(v165);
  v161 = &v149 - v30;
  v170 = sub_10003AE84(&qword_1001587E8, &qword_100113158);
  v167 = *(v170 - 8);
  v31 = *(v167 + 64);
  __chkstk_darwin(v170);
  v162 = &v149 - v32;
  v171 = sub_10003AE84(&qword_1001587F0, &qword_100113160);
  v33 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v168 = &v149 - v34;
  v35 = sub_10003AE84(&qword_1001587F8, &qword_100113168);
  v172 = *(v35 - 8);
  v173 = v35;
  v36 = *(v172 + 64);
  __chkstk_darwin(v35);
  v169 = &v149 - v37;
  v166 = sub_10003AE84(&qword_100158800, &qword_100113170);
  v38 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v175 = &v149 - v39;
  v174 = sub_10003AE84(&qword_100158808, &qword_100113178);
  v40 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v180 = &v149 - v41;
  v178 = sub_10003AE84(&qword_100158810, &qword_100113180);
  v42 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v182 = &v149 - v43;
  v181 = sub_10003AE84(&qword_100158818, &qword_100113188);
  v44 = *(*(v181 - 8) + 64);
  __chkstk_darwin(v181);
  v183 = &v149 - v45;
  v207 = sub_10003AE84(&qword_100158820, &qword_100113190);
  v46 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v207);
  v206 = &v149 - v47;
  v198 = sub_10003AE84(&qword_100158828, &qword_100113198);
  v196 = *(v198 - 8);
  v48 = *(v196 + 64);
  __chkstk_darwin(v198);
  v194 = &v149 - v49;
  v197 = sub_10003AE84(&qword_100158830, &qword_1001131A0);
  v195 = *(v197 - 8);
  v50 = *(v195 + 64);
  v51 = __chkstk_darwin(v197);
  v192 = &v149 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v193 = &v149 - v53;
  v209 = v1;
  sub_10003AE84(&qword_100158838, &qword_1001131A8);
  v54 = sub_10003AECC(&qword_100158840, &qword_1001131B0);
  v55 = sub_1000C29F8();
  *&v221 = v54;
  *(&v221 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v156 = v26;
  NavigationStack.init<>(root:)();
  v205 = v5;
  v56 = (v1 + *(v5 + 56));
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[2];
  v186 = v58;
  v187 = v57;
  *&v214 = v57;
  *(&v214 + 1) = v58;
  v185 = v59;
  *&v215 = v59;
  v184 = sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.projectedValue.getter();
  v155 = *(&v221 + 1);
  v60 = [objc_opt_self() currentDevice];
  v61 = [v60 userInterfaceIdiom];

  v201 = v1;
  if (v61)
  {
    v62 = v153;
    static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
    v63 = v23;
    static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
    (*(v17 + 8))(v62, v154);
  }

  else
  {
    v63 = v23;
    static SearchFieldPlacement.automatic.getter();
  }

  LocalizedStringKey.init(stringLiteral:)();
  v64 = Text.init(_:tableName:bundle:comment:)();
  v66 = v65;
  v68 = v67 & 1;
  v154 = sub_100004880(&qword_100158888, &qword_1001587D0, &qword_100113140);
  v69 = v156;
  View.searchable(text:placement:prompt:)();
  sub_10000C6AC(v64, v66, v68);

  (*(v158 + 8))(v63, v159);
  v70 = v203;
  (*(v157 + 8))(v69, v203);
  v71 = v201;
  v72 = v201 + *(v205 + 52);
  v73 = *v72;
  v74 = *(v72 + 8);
  LOBYTE(v72) = *(v72 + 16);
  LOBYTE(v221) = v73;
  *(&v221 + 1) = v74;
  LOBYTE(v222) = v72;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v221 = v214;
  LOBYTE(v222) = v215;
  LOBYTE(v210) = 4;
  v75 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  *&v214 = v70;
  *(&v214 + 1) = v154;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_10001BAF0(&qword_100157818, sub_10001BB68);
  v78 = v161;
  v79 = v164;
  v80 = v204;
  View.searchFocused<A>(_:equals:)();

  (*(v160 + 8))(v80, v79);
  v81 = v176;
  static SearchPresentationToolbarBehavior.avoidHidingContent.getter();
  *&v221 = v79;
  *(&v221 + 1) = v75;
  v204 = v75;
  *&v222 = OpaqueTypeConformance2;
  *(&v222 + 1) = v77;
  swift_getOpaqueTypeConformance2();
  v82 = v162;
  v83 = v165;
  View.searchPresentationToolbarBehavior(_:)();
  (*(v177 + 8))(v81, v179);
  (*(v163 + 8))(v78, v83);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v84 = v168;
  (*(v167 + 32))(v168, v82, v170);
  v85 = (v84 + *(v171 + 36));
  v86 = v219;
  v85[4] = v218;
  v85[5] = v86;
  v85[6] = v220;
  v87 = v215;
  *v85 = v214;
  v85[1] = v87;
  v88 = v217;
  v85[2] = v216;
  v85[3] = v88;
  sub_1000CE1DC();
  v89 = v169;
  View.allowsSecureDrawing(_:)();
  sub_1000035CC(v84, &qword_1001587F0, &qword_100113160);
  LOBYTE(v80) = static Edge.Set.top.getter();
  v90 = v205;
  v91 = *(v205 + 36);
  sub_10003DC4C(v71 + v91);
  EdgeInsets.init(_all:)();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v175;
  (*(v172 + 32))(v175, v89, v173);
  v101 = &v100[*(v166 + 36)];
  *v101 = v80;
  *(v101 + 1) = v93;
  *(v101 + 2) = v95;
  *(v101 + 3) = v97;
  *(v101 + 4) = v99;
  v101[40] = 0;
  v102 = v190;
  sub_100008E68(v71 + v91, v190, &qword_100154948, qword_1001130B0);
  v103 = v191;
  sub_100008E68(v71 + *(v90 + 40), v191, &qword_100154948, qword_1001130B0);
  v104 = type metadata accessor for UserInterfaceSizeClass();
  v105 = *(*(v104 - 8) + 56);
  v106 = v189;
  v105(v189, 1, 1, v104);
  v107 = *(v188 + 20);
  v105((v106 + v107), 1, 1, v104);
  sub_10006E758(v102, v106);
  sub_10006E758(v103, v106 + v107);
  sub_10003DC4C(v106);
  sub_10006E7C8(v106);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v108 = v100;
  v109 = v180;
  sub_10000D5B8(v108, v180, &qword_100158800, &qword_100113170);
  v110 = (v109 + *(v174 + 36));
  v111 = v226;
  v110[4] = v225;
  v110[5] = v111;
  v110[6] = v227;
  v112 = v222;
  *v110 = v221;
  v110[1] = v112;
  v113 = v224;
  v110[2] = v223;
  v110[3] = v113;
  if (qword_1001545E8 != -1)
  {
    swift_once();
  }

  v114 = qword_100160C10;
  v115 = static Edge.Set.all.getter();
  v116 = v182;
  sub_10000D5B8(v109, v182, &qword_100158808, &qword_100113178);
  v117 = v116 + *(v178 + 36);
  *v117 = v114;
  *(v117 + 8) = v115;
  v118 = v208;
  sub_1000CEB08(v71, v208);
  v119 = *(v199 + 80);
  v120 = (v119 + 16) & ~v119;
  v121 = v200 + v120;
  v122 = swift_allocObject();
  sub_1000D1EAC(v118, v122 + v120, type metadata accessor for UnitConversionPopoverView);
  v123 = v116;
  v124 = v183;
  sub_10000D5B8(v123, v183, &qword_100158810, &qword_100113180);
  v125 = (v124 + *(v181 + 36));
  *v125 = sub_1000CEB6C;
  v125[1] = v122;
  v125[2] = 0;
  v125[3] = 0;
  sub_1000CEB08(v71, v118);
  v205 = v119;
  v203 = v121;
  v126 = swift_allocObject();
  sub_1000D1EAC(v118, v126 + v120, type metadata accessor for UnitConversionPopoverView);
  v127 = v206;
  sub_10000D5B8(v124, v206, &qword_100158818, &qword_100113188);
  v128 = (v127 + *(v207 + 36));
  *v128 = 0;
  v128[1] = 0;
  v128[2] = sub_1000CEBC8;
  v128[3] = v126;
  v129 = *v71;
  LOBYTE(v126) = *(v71 + 8);

  if ((v126 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v130 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v131 = v150;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v151 + 8))(v131, v152);
    v129 = v210;
  }

  swift_getKeyPath();
  v210 = v129;
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v132 = *(v129 + 54);

  LOBYTE(v210) = v132;
  v133 = v208;
  sub_1000CEB08(v71, v208);
  v134 = swift_allocObject();
  v200 = type metadata accessor for UnitConversionPopoverView;
  sub_1000D1EAC(v133, v134 + v120, type metadata accessor for UnitConversionPopoverView);
  v191 = sub_1000CECA8();
  v135 = sub_10001BAF0(&qword_100156AC0, sub_10001B814);
  v199 = v120;
  v136 = v194;
  v137 = v207;
  v138 = v204;
  v139 = v206;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v139, &qword_100158820, &qword_100113190);
  v210 = v187;
  v211 = v186;
  v212 = v185;
  State.wrappedValue.getter();
  sub_1000CEB08(v71, v133);
  v140 = swift_allocObject();
  sub_1000D1EAC(v133, v140 + v199, v200);
  v210 = v137;
  v211 = v138;
  v212 = v191;
  v213 = v135;
  swift_getOpaqueTypeConformance2();
  v141 = v192;
  v142 = v198;
  View.onChange<A>(of:initial:_:)();

  (*(v196 + 8))(v136, v142);
  v143 = v195;
  v144 = *(v195 + 16);
  v145 = v193;
  v146 = v197;
  v144(v193, v141, v197);
  v147 = *(v143 + 8);
  v147(v141, v146);
  v144(v202, v145, v146);
  return (v147)(v145, v146);
}

uint64_t sub_1000BCD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v62 = a2;
  v3 = type metadata accessor for KeyPress.Phases();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnitConversionPopoverView();
  v58 = *(v6 - 8);
  v59 = (v6 - 8);
  v68 = *(v58 + 64);
  __chkstk_darwin(v6 - 8);
  v65 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ButtonRole();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10003AE84(&qword_1001588C8, &qword_100113268);
  v11 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v56 = &v52 - v12;
  v13 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v67 = &v52 - v15;
  v16 = type metadata accessor for PlainListStyle();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10003AE84(&qword_100158860, &qword_1001131C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v52 - v22;
  v24 = sub_10003AE84(&qword_1001588D0, &qword_100113270);
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = *(v53 + 64);
  __chkstk_darwin(v24);
  v27 = &v52 - v26;
  v66 = sub_10003AE84(&qword_100158840, &qword_1001131B0);
  v28 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v30 = &v52 - v29;
  *v23 = static HorizontalAlignment.leading.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v31 = sub_10003AE84(&qword_1001588D8, &qword_100113278);
  sub_1000BD570(a1, &v23[*(v31 + 44)]);
  PlainListStyle.init()();
  v32 = sub_100004880(&qword_100158868, &qword_100158860, &qword_1001131C0);
  View.listStyle<A>(_:)();
  (*(v55 + 8))(v19, v16);
  sub_1000035CC(v23, &qword_100158860, &qword_1001131C0);
  v69 = v20;
  v70 = v16;
  v33 = v65;
  v71 = v32;
  v72 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeConformance2();
  v34 = v54;
  View.accessibilityIdentifier(_:)();
  v35 = v52;
  v36 = v27;
  v37 = v56;
  (*(v53 + 8))(v36, v34);
  v38 = v67;
  sub_100008E68(v35 + *(v59 + 11), v67, &qword_100154948, qword_1001130B0);
  v39 = *(v66 + 36);
  v59 = v30;
  v40 = &v30[v39];
  v41 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  sub_1000CEFE4(v38, v40);
  LODWORD(v20) = *(sub_10003AE84(&qword_100158878, &qword_1001131C8) + 36);
  static ButtonRole.confirm.getter();
  sub_1000CEB08(v35, v33);
  v42 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v43 = swift_allocObject();
  sub_1000D1EAC(v33, v43 + v42, type metadata accessor for UnitConversionPopoverView);
  Button<>.init(role:action:)();
  if (qword_100154528 != -1)
  {
    swift_once();
  }

  v44 = qword_100160B50;
  KeyPath = swift_getKeyPath();
  v46 = (v37 + *(v60 + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  sub_1000CF06C();

  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v37, &qword_1001588C8, &qword_100113268);
  sub_1000035CC(v67, &qword_100154948, qword_1001130B0);
  if (qword_1001546D0 != -1)
  {
    swift_once();
  }

  v47 = v61;
  static KeyPress.Phases.down.getter();
  v48 = v65;
  sub_1000CEB08(v35, v65);
  v49 = swift_allocObject();
  sub_1000D1EAC(v48, v49 + v42, type metadata accessor for UnitConversionPopoverView);
  sub_1000C29F8();
  v50 = v59;
  View.onKeyPress(keys:phases:action:)();

  (*(v63 + 8))(v47, v64);
  return sub_1000035CC(v50, &qword_100158840, &qword_1001131B0);
}

uint64_t sub_1000BD570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v79 = sub_10003AE84(&qword_100158918, &qword_100113320);
  v3 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v76 = &v69 - v4;
  v80 = sub_10003AE84(&qword_100158920, &qword_100113328);
  v74 = *(v80 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v80);
  v75 = &v69 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10003AE84(&qword_100158928, &qword_100113330);
  v11 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v13 = &v69 - v12;
  v14 = sub_10003AE84(&qword_100158930, &qword_100113338);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v77 = sub_10003AE84(&qword_100158938, &qword_100113340);
  v18 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v20 = &v69 - v19;
  v21 = type metadata accessor for UnitConversionPopoverView();
  v22 = a1;
  v23 = (a1 + *(v21 + 56));
  v24 = *v23;
  v25 = *(v23 + 2);
  v86[0] = v24;
  *&v86[1] = v25;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v27 = v82;
  v26 = v83;

  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_1000BDF78(v86);
    memcpy(v17, v86, 0x17AuLL);
    swift_storeEnumTagMultiPayload();
    sub_100008E68(v86, &v82, &qword_100158940, &qword_100113348);
    sub_10003AE84(&qword_100158940, &qword_100113348);
    sub_1000CF9AC();
    v29 = sub_10003AECC(&qword_1001589C0, &qword_100113390);
    v30 = sub_10003AECC(&qword_1001589C8, &qword_100113398);
    v31 = sub_1000CFDA4();
    v32 = sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
    v33 = sub_1000CFEFC();
    v82 = v32;
    v83 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82 = v29;
    v83 = v30;
    v84 = v31;
    v85 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100008E68(v20, v13, &qword_100158938, &qword_100113340);
    swift_storeEnumTagMultiPayload();
    sub_1000CFFB4();
    sub_1000D00EC();
    v35 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v86, &qword_100158940, &qword_100113348);
    sub_1000035CC(v20, &qword_100158938, &qword_100113340);
    v36 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
    v37 = *(*(v36 - 8) + 56);
    v38 = v35;
  }

  else
  {
    v39 = v10;
    v69 = v14;
    v70 = v20;
    v71 = v13;
    v40 = v80;
    v41 = v22;
    v42 = (v22 + *(v21 + 52));
    v43 = *v42;
    v44 = *(v42 + 1);
    LOBYTE(v42) = v42[16];
    LOBYTE(v86[0]) = v43;
    *(&v86[0] + 1) = v44;
    LOBYTE(v86[1]) = v42;
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.wrappedValue.getter();
    v45 = v76;
    if (v82 <= 0xBu && ((1 << v82) & 0x920) != 0)
    {
      goto LABEL_7;
    }

    v52 = *(v41 + 16);
    v53 = *(v41 + 24);

    if ((v53 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v72 + 8))(v39, v73);
    }

    v55 = sub_100074054();

    v56 = *(v55 + 16);

    swift_getKeyPath();
    *&v86[0] = v56;
    sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v57 = *(v56 + 32);

    v58 = v57 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v58)
    {
LABEL_7:
      v46 = sub_1000BB550();
      if (!v46)
      {
        v50 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
        return (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
      }

      v48 = v46;
      sub_1000BEA9C(v46, v47, v45);
      sub_100008E68(v45, v71, &qword_100158918, &qword_100113320);
      swift_storeEnumTagMultiPayload();
      sub_1000CFFB4();
      sub_1000D00EC();
      v49 = v81;
      _ConditionalContent<>.init(storage:)();

      sub_1000035CC(v45, &qword_100158918, &qword_100113320);
      v36 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
      v37 = *(*(v36 - 8) + 56);
      v38 = v49;
    }

    else
    {
      v59 = v75;
      sub_1000BE340(v75);
      v60 = v74;
      (*(v74 + 16))(v17, v59, v40);
      swift_storeEnumTagMultiPayload();
      sub_10003AE84(&qword_100158940, &qword_100113348);
      sub_1000CF9AC();
      v61 = sub_10003AECC(&qword_1001589C0, &qword_100113390);
      v62 = sub_10003AECC(&qword_1001589C8, &qword_100113398);
      v63 = sub_1000CFDA4();
      v64 = sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
      v65 = sub_1000CFEFC();
      *&v86[0] = v64;
      *(&v86[0] + 1) = v65;
      v66 = swift_getOpaqueTypeConformance2();
      *&v86[0] = v61;
      *(&v86[0] + 1) = v62;
      *&v86[1] = v63;
      *(&v86[1] + 1) = v66;
      swift_getOpaqueTypeConformance2();
      v67 = v70;
      _ConditionalContent<>.init(storage:)();
      sub_100008E68(v67, v71, &qword_100158938, &qword_100113340);
      swift_storeEnumTagMultiPayload();
      sub_1000CFFB4();
      sub_1000D00EC();
      v68 = v81;
      _ConditionalContent<>.init(storage:)();
      sub_1000035CC(v67, &qword_100158938, &qword_100113340);
      (*(v60 + 8))(v75, v40);
      v36 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
      v37 = *(*(v36 - 8) + 56);
      v38 = v68;
    }
  }

  return v37(v38, 0, 1, v36);
}

void *sub_1000BDF78@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for UnitConversionPopoverView();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) == 1)
  {
    v36 = *(v2 + 16);
  }

  else
  {
    v10 = *(v2 + 16);

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v12 = sub_100074054();

  v13 = *(v12 + 16);

  v14 = v2 + *(v3 + 56);
  v15 = *v14;
  v16 = *(v14 + 16);
  v35[0] = v15;
  *&v35[1] = v16;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  sub_1000AB4DC(v34[0], v34[1]);
  v18 = v17;

  if (*(v18 + 16))
  {
    v19 = v30;
    sub_1000CEB08(v2, v30);
    v20 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    sub_1000D1EAC(v19, v21 + v20, type metadata accessor for UnitConversionPopoverView);
    v22 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v32[0] = 0;
    v34[0] = sub_1000D1F54;
    v34[1] = v21;
    LOBYTE(v34[2]) = v22;
    v34[3] = v23;
    v34[4] = v24;
    v34[5] = v25;
    v34[6] = v26;
    LOBYTE(v34[7]) = 0;
    sub_1000D1FD8(v34);
  }

  else
  {

    sub_1000C8974(v32);
    memcpy(v34, v32, 0x179uLL);
    sub_1000D1FE4(v34);
  }

  memcpy(v33, v34, sizeof(v33));
  sub_10003AE84(&qword_100158958, &qword_100113350);
  sub_10003AE84(&qword_1001589A8, &qword_100113380);
  sub_1000CFA38();
  sub_1000CFCEC();
  _ConditionalContent<>.init(storage:)();
  return memcpy(v31, v35, 0x17AuLL);
}

uint64_t sub_1000BE340@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v51 = type metadata accessor for UnitConversionPopoverView();
  v49 = *(v51 - 8);
  v2 = *(v49 + 8);
  __chkstk_darwin(v51);
  v58 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_1001589D8, &qword_1001133A0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v52 = &v47 - v10;
  v56 = sub_10003AE84(&qword_1001589C0, &qword_100113390);
  v11 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v55 = &v47 - v12;
  v13 = *(v1 + 16);
  v50 = v1;
  v14 = *(v1 + 24);

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  v16 = sub_100074054();

  v17 = *(v16 + 16);

  swift_getKeyPath();
  *&v59 = v17;
  sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v18 = *(v17 + 32);

  v19 = v50;
  v20 = v51;
  v21 = v50 + *(v51 + 48);
  v22 = *(v21 + 16);
  v62 = *v21;
  v63 = v22;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.projectedValue.getter();
  v47 = v59;
  v23 = v60;
  v24 = v61;
  v25 = v58;
  sub_1000CEB08(v19, v58);
  v26 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v27 = swift_allocObject();
  v49 = type metadata accessor for UnitConversionPopoverView;
  v28 = sub_1000D1EAC(v25, v27 + v26, type metadata accessor for UnitConversionPopoverView);
  v48 = v2;
  v61 = v24;
  *&v62 = v18;
  v59 = v47;
  v60 = v23;
  __chkstk_darwin(v28);
  *(&v47 - 4) = &v62;
  *(&v47 - 3) = sub_1000D0218;
  v45 = v27;
  sub_10003AE84(&qword_100158A30, &qword_1001133C8);
  sub_1000D022C();
  v29 = v52;
  List.init(selection:content:)();

  v30 = v19 + *(v20 + 52);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 16);
  LOBYTE(v59) = v31;
  *(&v59 + 1) = v32;
  LOBYTE(v60) = v30;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v59 = v62;
  LOBYTE(v60) = v63;
  LOBYTE(v62) = 7;
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0);
  sub_10001BAF0(&qword_100157818, sub_10001BB68);
  v33 = v54;
  v34 = v55;
  View.focused<A>(_:equals:)();

  (*(v53 + 8))(v29, v33);
  v35 = v19;
  v36 = v58;
  sub_1000CEB08(v35, v58);
  v37 = swift_allocObject();
  v38 = sub_1000D1EAC(v36, v37 + v26, v49);
  v39 = (v34 + *(v56 + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_1000D04C4;
  v39[3] = v37;
  __chkstk_darwin(v38);
  static HorizontalAlignment.center.getter();
  sub_10003AE84(&qword_1001589C8, &qword_100113398);
  v40 = sub_1000CFDA4();
  v41 = sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
  v42 = sub_1000CFEFC();
  *&v59 = v41;
  *(&v59 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v40;
  v46 = OpaqueTypeConformance2;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  return sub_1000035CC(v34, &qword_1001589C0, &qword_100113390);
}

uint64_t sub_1000BEA9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a3;
  v29 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v29);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnitConversionPopoverView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v30 = sub_10003AE84(&qword_100158B48, &qword_100113530);
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v30);
  v17 = &v29 - v16;
  sub_1000CEB08(v4, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_1000D1EAC(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for UnitConversionPopoverView);
  v32 = sub_1000D0640;
  v33 = v19;
  v20 = a1;

  static AccessibilityChildBehavior.contain.getter();
  v21 = sub_10003AE84(&qword_100158A18, &qword_1001133B8);
  v22 = sub_100004880(&qword_100158A20, &qword_100158A18, &qword_1001133B8);
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v10, v29);

  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  LOBYTE(v19) = v26;
  v32 = v21;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  v27 = v30;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v23, v25, v19 & 1);

  return (*(v14 + 8))(v17, v27);
}

void sub_1000BEE1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v265 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v263 = v3;
  v264 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v257 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KeyEquivalent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v257 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v257 - v14;
  KeyPress.key.getter();
  static KeyEquivalent.downArrow.getter();
  sub_1000CEBE0(&qword_1001588E8, &type metadata accessor for KeyEquivalent);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v13, v8);
  if (v16)
  {
    v17(v15, v8);
    v18 = *v1;
    v19 = *(v1 + 8);

    v20 = v18;
    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v264 + 8))(v7, v263);
      v20 = v273;
    }

    KeyPath = swift_getKeyPath();
    v23 = &unk_100155000;
    *&v273 = v20;
    sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v20 + 54);

    if (v24 <= 5)
    {
      if (v24 != 4)
      {
        if (v24 == 5)
        {

          if ((v19 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v25 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v264 + 8))(v7, v263);
            v18 = v273;
          }

          swift_getKeyPath();
          *&v273 = v18;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v18 + 54) != 8)
          {
            v26 = swift_getKeyPath();
            __chkstk_darwin(v26);
            *(&v257 - 2) = v18;
            *(&v257 - 8) = 8;
            *&v273 = v18;
LABEL_28:
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            goto LABEL_171;
          }

          goto LABEL_170;
        }

        goto LABEL_171;
      }

      v121 = type metadata accessor for UnitConversionPopoverView();
      v122 = v2 + *(v121 + 56);
      v123 = *v122;
      v124 = *(v122 + 16);
      v273 = v123;
      v274 = v124;
      sub_10003AE84(&qword_100158880, &unk_1001131D0);
      State.wrappedValue.getter();
      v126 = v270;
      v125 = v271;

      v127 = HIBYTE(v125) & 0xF;
      if ((v125 & 0x2000000000000000) == 0)
      {
        v127 = v126 & 0xFFFFFFFFFFFFLL;
      }

      if (v127)
      {

        if ((v19 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v128 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
          v18 = v273;
        }

        swift_getKeyPath();
        *&v273 = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v18 + 54) == 6)
        {
          goto LABEL_170;
        }

        v129 = 6;
        goto LABEL_169;
      }

      v262 = v121;
      v174 = *(v2 + 16);
      v175 = *(v2 + 24);

      LODWORD(v261) = v175;
      if ((v175 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v176 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
      }

      v177 = sub_100074054();

      v178 = *(v177 + 16);

      swift_getKeyPath();
      *&v273 = v178;
      v260 = sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v179 = *(v178 + 32);

      if (v179 >> 62)
      {
        v180 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v180 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v180)
      {

        if ((v19 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v181 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
          v18 = v270;
        }

        swift_getKeyPath();
        v270 = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v18 + 54) != 7)
        {
          sub_100058740(7);
        }

        if ((v261 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v182 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
        }

        v183 = sub_100074054();

        v184 = *(v183 + 16);

        swift_getKeyPath();
        v270 = v184;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v113 = *(v184 + 32);

        if (!(v113 >> 62))
        {
          v135 = v262;
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_133;
          }

          goto LABEL_241;
        }

LABEL_240:
        v254 = _CocoaArrayWrapper.endIndex.getter();
        v135 = v262;
        if (v254)
        {
LABEL_133:
          if ((v113 & 0xC000000000000001) == 0)
          {
            if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v185 = *(v113 + 32);
LABEL_136:
              v186 = v185;

              v187 = CalculateUnit.id.getter();
              v189 = v188;

LABEL_242:
              v255 = v2 + *(v135 + 48);
              v256 = *(v255 + 16);
              v268 = *v255;
              v269 = v256;
              v266 = v187;
              v267 = v189;
              sub_10003AE84(&qword_1001588C0, &qword_100113210);
              State.wrappedValue.setter();
              goto LABEL_171;
            }

            __break(1u);
            goto LABEL_252;
          }

LABEL_250:
          v185 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_136;
        }

LABEL_241:

        v187 = 0;
        v189 = 0;
        goto LABEL_242;
      }

      if ((v19 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v224 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
        v18 = v270;
      }

      swift_getKeyPath();
      v270 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v18 + 54) == 5)
      {
        goto LABEL_170;
      }

      v129 = 5;
LABEL_169:
      sub_100058740(v129);
      goto LABEL_170;
    }

    if (v24 != 6)
    {
      if (v24 == 11)
      {

        if ((v19 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v35 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
          v18 = v273;
        }

        swift_getKeyPath();
        *&v273 = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v18 + 54) != 5)
        {
          v36 = swift_getKeyPath();
          __chkstk_darwin(v36);
          *(&v257 - 2) = v18;
          *(&v257 - 8) = 5;
          *&v273 = v18;
          goto LABEL_28;
        }

LABEL_170:
      }

LABEL_171:
      v225 = enum case for KeyPress.Result.ignored(_:);
      v226 = type metadata accessor for KeyPress.Result();
      (*(*(v226 - 8) + 104))(v265, v225, v226);
      return;
    }

    v130 = *(v2 + 16);
    v131 = *(v2 + 24);

    if ((v131 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v132 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v264 + 8))(v7, v263);
    }

    v133 = sub_100074054();

    v134 = *(v133 + 16);

    v135 = type metadata accessor for UnitConversionPopoverView();
    v136 = v2 + *(v135 + 56);
    v137 = *v136;
    v138 = *(v136 + 16);
    v273 = v137;
    v274 = v138;
    sub_10003AE84(&qword_100158880, &unk_1001131D0);
    State.wrappedValue.getter();
    sub_1000AB4DC(v270, v271);
    v140 = v139;

    v7 = sub_1000BAFA8(v140);

    v141 = v7 >> 62;
    if (v7 >> 62)
    {
      v142 = _CocoaArrayWrapper.endIndex.getter();
      if (!v142)
      {
        goto LABEL_214;
      }
    }

    else
    {
      v142 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v142)
      {
        goto LABEL_214;
      }
    }

    v113 = &v257;
    __chkstk_darwin(v142);
    *(&v257 - 2) = v2;
    sub_1000BAE94(sub_1000D3618, (&v257 - 4), v7);
    if (v144)
    {
      goto LABEL_160;
    }

    v113 = v143 + 1;
    if (!__OFADD__(v143, 1))
    {
      if (v141)
      {
        v145 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v145 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v113 < v145)
      {
        if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v113 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v113 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v216 = *(v7 + 8 * v113 + 32);
LABEL_163:
            v217 = v216;
LABEL_164:
            v218 = v217;

            v219 = CalculateUnit.id.getter();
            v221 = v220;

            v222 = v2 + *(v135 + 48);
            v223 = *(v222 + 16);
            v273 = *v222;
            v274 = v223;
            v270 = v219;
            v271 = v221;
            sub_10003AE84(&qword_1001588C0, &qword_100113210);
            State.wrappedValue.setter();
            goto LABEL_171;
          }

          __break(1u);
          goto LABEL_250;
        }

LABEL_247:
        v217 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_164;
      }

LABEL_160:
      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_247;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v216 = *(v7 + 32);
        goto LABEL_163;
      }

      __break(1u);
      goto LABEL_212;
    }

    goto LABEL_224;
  }

  static KeyEquivalent.upArrow.getter();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17(v13, v8);
  if ((v27 & 1) == 0)
  {
    static KeyEquivalent.leftArrow.getter();
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17(v13, v8);
    if (v37)
    {
      v17(v15, v8);
      v38 = *v1;
      v39 = *(v1 + 8);

      if ((v39 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v40 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
        v38 = v273;
      }

      swift_getKeyPath();
      *&v273 = v38;
      sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *(v38 + 54);

      if (v41 != 8)
      {
        goto LABEL_171;
      }

      v15 = *(v2 + 16);
      v42 = *(v2 + 24);

      LODWORD(v262) = v42;
      if ((v42 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v43 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
      }

      v44 = sub_100074054();

      v45 = *(v44 + 16);

      swift_getKeyPath();
      *&v273 = v45;
      v13 = sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v46 = *(v45 + 16);

      v47 = [v46 categories];

      sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v48);
      *(&v257 - 2) = v2;
      sub_1000BAE94(sub_1000CF1C4, (&v257 - 4), v17);
      v50 = v49;
      LOBYTE(v47) = v51;

      if (v47)
      {
        goto LABEL_171;
      }

      v8 = v50 - 1;
      if (__OFSUB__(v50, 1))
      {
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_62;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_171;
      }

      if ((v262 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v52 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
        v15 = v273;
      }

      v53 = sub_100074054();

      v54 = *(v53 + 16);

      swift_getKeyPath();
      *&v273 = v54;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v55 = *(v54 + 16);

      v56 = [v55 categories];

      v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if ((v57 & 0xC000000000000001) != 0)
      {
        goto LABEL_225;
      }

      if (v8 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_61:
        v87 = *(v57 + 8 * v8 + 32);
LABEL_62:
        v88 = v87;

        v89 = CalculateUnitCategory.id.getter();
        v91 = v90;

        v92 = type metadata accessor for UnitConversionPopoverView();
        v93 = v2 + *(v92 + 44);
        v94 = *(v93 + 16);
        v273 = *v93;
        v274 = v94;
        v270 = v89;
        v271 = v91;
        sub_10003AE84(&qword_1001588C0, &qword_100113210);
        State.wrappedValue.setter();
        v95 = v2 + *(v92 + 48);
        v96 = *(v95 + 16);
        v273 = *v95;
        v274 = v96;
        v270 = 0;
        v271 = 0;
        State.wrappedValue.setter();
        goto LABEL_171;
      }

      __break(1u);
    }

    static KeyEquivalent.rightArrow.getter();
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17(v13, v8);
    if (v58)
    {
      v17(v15, v8);
      v59 = *v2;
      v60 = *(v2 + 8);

      if ((v60 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v61 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
        v59 = v273;
      }

      swift_getKeyPath();
      *&v273 = v59;
      sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v62 = *(v59 + 54);

      if (v62 != 8)
      {
        goto LABEL_171;
      }

      v63 = *(v2 + 16);
      v64 = *(v2 + 24);

      LODWORD(v262) = v64;
      if ((v64 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v65 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
      }

      v66 = sub_100074054();

      v67 = *(v66 + 16);

      swift_getKeyPath();
      *&v273 = v67;
      sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v68 = *(v67 + 16);

      v69 = [v68 categories];

      sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
      v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v71);
      *(&v257 - 2) = v2;
      sub_1000BAE94(sub_1000D35FC, (&v257 - 4), v70);
      v73 = v72;
      LOBYTE(v69) = v74;

      if (v69)
      {
        goto LABEL_171;
      }

      v8 = v73 + 1;
      if (!__OFADD__(v73, 1))
      {

        if ((v262 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v75 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
        }

        v76 = sub_100074054();

        v77 = *(v76 + 16);

        swift_getKeyPath();
        *&v273 = v77;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v78 = *(v77 + 16);

        v79 = [v78 categories];

        v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        if (!(v80 >> 62))
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_55:

          if (v8 >= v81)
          {
            goto LABEL_171;
          }

          if ((v262 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v82 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v264 + 8))(v7, v263);
          }

          v83 = sub_100074054();

          v84 = *(v83 + 16);

          swift_getKeyPath();
          *&v273 = v84;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v85 = *(v84 + 16);

          v86 = [v85 categories];

          v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          if ((v57 & 0xC000000000000001) != 0)
          {
            goto LABEL_225;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

          if (v8 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_253:
            __break(1u);
            goto LABEL_254;
          }

          goto LABEL_61;
        }

LABEL_246:
        v81 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_55;
      }

LABEL_245:
      __break(1u);
      goto LABEL_246;
    }

    static KeyEquivalent.space.getter();
    v146 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17(v13, v8);
    if (v146)
    {
      v17(v15, v8);
    }

    else
    {
      static KeyEquivalent.return.getter();
      v190 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17(v13, v8);
      v17(v15, v8);
      if ((v190 & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    v191 = *v2;
    v192 = *(v2 + 8);

    if ((v192 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v193 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v264 + 8))(v7, v263);
      v191 = v273;
    }

    swift_getKeyPath();
    *&v273 = v191;
    sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v194 = *(v191 + 54);

    if ((v194 - 6) > 2)
    {
      goto LABEL_171;
    }

    v195 = v2 + *(type metadata accessor for UnitConversionPopoverView() + 48);
    v196 = *(v195 + 16);
    v273 = *v195;
    v274 = v196;
    sub_10003AE84(&qword_1001588C0, &qword_100113210);
    State.wrappedValue.getter();
    if (!v271)
    {
      goto LABEL_171;
    }

    v197 = *(v2 + 16);
    v198 = *(v2 + 24);

    if ((v198 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v199 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v264 + 8))(v7, v263);
    }

    v200 = sub_100074054();

    v201 = *(v200 + 16);

    swift_getKeyPath();
    *&v273 = v201;
    sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v202 = *(v201 + 16);

    v203 = String._bridgeToObjectiveC()();

    v204 = [v202 findUnitWithName:v203];

    if (!v204)
    {
      goto LABEL_171;
    }

    v205 = *(v2 + 65);
    v206 = CalculateUnit.id.getter();
    v208 = v207;
    if (v205 == 1)
    {

      if ((v198 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v209 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
      }

      sub_100074054();

      v210 = sub_100072328();

      v211 = CalculateUnit.id.getter();
      v213 = v212;

      if (v206 != v211 || v208 != v213)
      {
        v214 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v214 & 1) == 0)
        {

          if ((v198 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v215 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v264 + 8))(v7, v263);
          }

          sub_100074054();

          sub_1000726F8(v204);
LABEL_202:

          v244 = *(v2 + 56);
          v245 = *(v2 + 64);
          *&v273 = *(v2 + 48);
          *(&v273 + 1) = v244;
          LOBYTE(v274) = v245;
          LOBYTE(v270) = 0;

          sub_10003AE84(&qword_100155868, &qword_10010DB60);
          Binding.wrappedValue.setter();

          goto LABEL_203;
        }

        goto LABEL_203;
      }
    }

    else
    {

      if ((v198 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v236 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
      }

      sub_100074054();

      v237 = sub_100072148();

      v238 = CalculateUnit.id.getter();
      v240 = v239;

      if (v206 != v238 || v208 != v240)
      {
        v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v242 & 1) == 0)
        {

          if ((v198 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v243 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v264 + 8))(v7, v263);
          }

          sub_100074054();

          sub_1000733A8(v204);
          goto LABEL_202;
        }

LABEL_203:

        goto LABEL_171;
      }
    }

    goto LABEL_214;
  }

  v17(v15, v8);
  v18 = *v1;
  v28 = *(v1 + 8);

  v29 = v18;
  if ((v28 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v264 + 8))(v7, v263);
    v29 = v273;
  }

  swift_getKeyPath();
  *&v273 = v29;
  v31 = sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v29 + 54);

  if (v32 > 6)
  {
    if (v32 == 7)
    {
      LODWORD(v262) = v28;
      v147 = (v2 + *(type metadata accessor for UnitConversionPopoverView() + 48));
      KeyPath = *v147;
      v17 = v147[1];
      v148 = v147[2];
      *&v273 = KeyPath;
      *(&v273 + 1) = v17;
      v261 = v148;
      v274 = v148;
      sub_10003AE84(&qword_1001588C0, &qword_100113210);
      State.wrappedValue.getter();
      v23 = v271;
      v260 = v270;
      v149 = *(v2 + 16);
      v150 = *(v2 + 24);

      if ((v150 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v151 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
      }

      v152 = sub_100074054();

      v113 = *(v152 + 16);

      v2 = swift_getKeyPath();
      *&v273 = v113;
      sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v141 = *(v113 + 32);

      if (!(v141 >> 62))
      {
        if (!*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_213;
        }

LABEL_97:
        if ((v141 & 0xC000000000000001) != 0)
        {
          v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_100;
        }

        if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v153 = *(v141 + 32);
LABEL_100:
          v154 = v153;

          v155 = CalculateUnit.id.getter();
          v157 = v156;

          if (!v23)
          {
            if (v157)
            {
              goto LABEL_214;
            }

            goto LABEL_215;
          }

          if (v157)
          {
            if (v260 == v155 && v23 == v157)
            {
            }

            else
            {
              v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v235 & 1) == 0)
              {
                goto LABEL_171;
              }
            }

            goto LABEL_215;
          }

LABEL_214:

          goto LABEL_171;
        }

        __break(1u);
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

LABEL_212:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_213:

        if (v23)
        {
          goto LABEL_214;
        }

LABEL_215:

        if ((v262 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v250 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
          v18 = v270;
        }

        swift_getKeyPath();
        v270 = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v18 + 54) != 4)
        {
          sub_100058740(4);
        }

        v270 = KeyPath;
        v271 = v17;
        v272 = v261;
        v268 = 0uLL;
        State.wrappedValue.setter();
        goto LABEL_171;
      }

      goto LABEL_97;
    }

    v8 = v28;
    if (v32 != 8)
    {
      if (v32 == 11)
      {

        if ((v28 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v33 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
          v18 = v273;
        }

        swift_getKeyPath();
        *&v273 = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v18 + 54) == 4)
        {
          goto LABEL_170;
        }

        v34 = swift_getKeyPath();
        __chkstk_darwin(v34);
        *(&v257 - 2) = v18;
        *(&v257 - 8) = 4;
        *&v273 = v18;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      goto LABEL_171;
    }

    v158 = sub_1000BB550();
    if (!v158)
    {
      goto LABEL_171;
    }

    v160 = v158;
    v161 = v159;
    v261 = v31;
    v162 = (v2 + *(type metadata accessor for UnitConversionPopoverView() + 48));
    v163 = v162[1];
    v164 = v162[2];
    v260 = *v162;
    *&v273 = v260;
    *(&v273 + 1) = v163;
    v274 = v164;
    v262 = sub_10003AE84(&qword_1001588C0, &qword_100113210);
    State.wrappedValue.getter();
    v165 = v270;
    v2 = v271;
    if (v161 >> 62)
    {
      v251 = v270;
      v252 = _CocoaArrayWrapper.endIndex.getter();
      v165 = v251;
      if (v252)
      {
        goto LABEL_108;
      }
    }

    else if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_108:
      *(&v258 + 1) = v165;
      v259 = v164;
      v166 = v163;
      if ((v161 & 0xC000000000000001) != 0)
      {
        v167 = v160;
        v168 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_111;
      }

      if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v167 = v160;
        v168 = *(v161 + 32);
LABEL_111:
        v169 = v168;
        v170 = CalculateUnit.id.getter();
        v172 = v171;

        v160 = v167;
        v163 = v166;
        if (v2)
        {
          v164 = v259;
          if (v172)
          {
            if (*(&v258 + 1) == v170 && v2 == v172)
            {
            }

            else
            {
              v241 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v241 & 1) == 0)
              {
LABEL_236:

                goto LABEL_171;
              }
            }

            goto LABEL_230;
          }

LABEL_229:

          goto LABEL_171;
        }

        v164 = v259;
        if (v172)
        {
LABEL_235:

          goto LABEL_236;
        }

LABEL_230:

        if ((v8 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v253 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v264 + 8))(v7, v263);
          v18 = v273;
        }

        swift_getKeyPath();
        *&v273 = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v18 + 54) != 4)
        {
          sub_100058740(4);
        }

        *&v273 = v260;
        *(&v273 + 1) = v163;
        v274 = v164;
        v270 = 0;
        v271 = 0;

        State.wrappedValue.setter();

        goto LABEL_235;
      }

      __break(1u);
      goto LABEL_245;
    }

    if (v2)
    {
      goto LABEL_229;
    }

    goto LABEL_230;
  }

  if (v32 == 5)
  {

    if ((v28 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v173 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v264 + 8))(v7, v263);
      v18 = v273;
    }

    swift_getKeyPath();
    *&v273 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v18 + 54) == 4)
    {
      goto LABEL_170;
    }

    v129 = 4;
    goto LABEL_169;
  }

  LODWORD(v262) = v28;
  if (v32 != 6)
  {
    goto LABEL_171;
  }

  v97 = *(v2 + 16);
  v98 = *(v2 + 24);

  if ((v98 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v99 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v264 + 8))(v7, v263);
  }

  v100 = sub_100074054();

  v101 = *(v100 + 16);

  v102 = type metadata accessor for UnitConversionPopoverView();
  v103 = v2 + *(v102 + 56);
  v104 = *v103;
  v105 = *(v103 + 16);
  v273 = v104;
  v274 = v105;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  sub_1000AB4DC(v270, v271);
  v107 = v106;

  v108 = sub_1000BAFA8(v107);

  if (v108 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_214;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_214;
  }

  v261 = v31;
  v109 = (v2 + *(v102 + 48));
  v111 = *v109;
  v110 = v109[1];
  v112 = v109[2];
  *&v258 = v111;
  *&v273 = v111;
  *(&v273 + 1) = v110;
  *(&v258 + 1) = v110;
  v259 = v112;
  v274 = v112;
  v113 = sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v114 = v270;
  v115 = v271;
  v257 = v108 & 0xC000000000000001;
  v260 = v113;
  if ((v108 & 0xC000000000000001) != 0)
  {
    v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_239;
    }

    v116 = *(v108 + 32);
  }

  v117 = v116;
  v118 = CalculateUnit.id.getter();
  v120 = v119;

  if (v115)
  {
    if (v114 == v118 && v115 == v120)
    {

LABEL_176:

      if ((v262 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v229 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v264 + 8))(v7, v263);
        v18 = v273;
      }

      swift_getKeyPath();
      *&v273 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v18 + 54) != 4)
      {
        sub_100058740(4);
      }

      v273 = v258;
      v274 = v259;
      v270 = 0;
      v271 = 0;
      goto LABEL_207;
    }

    v228 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v228)
    {
      goto LABEL_176;
    }
  }

  else
  {
  }

  __chkstk_darwin(v227);
  *(&v257 - 2) = v2;
  sub_1000BAE94(sub_1000CF1E4, (&v257 - 4), v108);
  if (v231)
  {
    goto LABEL_214;
  }

  v232 = __OFSUB__(v230, 1);
  v233 = v230 - 1;
  if (v232)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  if ((v233 & 0x8000000000000000) != 0)
  {
    goto LABEL_214;
  }

  if (v257)
  {
    v234 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_206:
    v246 = v234;

    v247 = CalculateUnit.id.getter();
    v249 = v248;

    v273 = v258;
    v274 = v259;
    v270 = v247;
    v271 = v249;
LABEL_207:
    State.wrappedValue.setter();
    goto LABEL_171;
  }

  if (v233 < *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v234 = *(v108 + 8 * v233 + 32);
    goto LABEL_206;
  }

LABEL_255:
  __break(1u);
}

uint64_t sub_1000C1E78()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnitConversionPopoverView();
  v8 = (v0 + *(v7 + 56));
  v9 = v8[1];
  v11 = v8[2];
  *&v34 = *v8;
  v10 = v34;
  *(&v34 + 1) = v9;
  v35 = v11;

  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  String.removeAll(keepingCapacity:)(0);
  v31 = v10;
  v32 = v9;
  v33 = v11;
  v29 = v36;
  v30 = v37;
  State.wrappedValue.setter();

  v12 = *v0;
  v13 = *(v0 + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v12 = v34;
  }

  swift_getKeyPath();
  *&v34 = v12;
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + 54) == 8)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v28 = v3;
    __chkstk_darwin(KeyPath);
    *(&v27 - 2) = v12;
    *(&v27 - 8) = 8;
    *&v34 = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v3 = v28;
  }

  v16 = v1[2];
  v17 = *(v1 + 24);

  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  v19 = sub_100074054();

  swift_getKeyPath();
  *&v34 = v19;
  sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 32);

  v21 = CalculateUnitCategory.id.getter();
  v23 = v22;

  v24 = (v1 + *(v7 + 44));
  v25 = *(v24 + 2);
  v34 = *v24;
  v35 = v25;
  v31 = v21;
  v32 = v23;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  return State.wrappedValue.setter();
}

uint64_t sub_1000C2300(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  LODWORD(a1) = *(a1 + 8);

  if (a1 == 1)
  {

    v8 = v7;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = *(v3 + 8);
    v10(v6, v2);
    v8 = v19;

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10(v6, v2);
    v7 = v19;
  }

  v12 = *(v7 + 16);

  swift_getKeyPath();
  v19 = v12;
  sub_1000CEBE0(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 40);

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  swift_getKeyPath();
  v19 = v8;
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v8 + 54);
  if (v15 != 11 && v15 == v14)
  {
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v18 - 2) = v8;
  *(&v18 - 8) = v14;
  v19 = v8;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000C2698(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v9 = type metadata accessor for UnitConversionPopoverView();
  v10 = a3 + v9[13];
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  LOBYTE(v31) = *v10;
  v11 = v31;
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v13;
  LOBYTE(v29) = a2;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.wrappedValue.setter();
  v14 = (a3 + v9[12]);
  v15 = *(v14 + 2);
  v31 = *v14;
  v32 = v15;
  v29 = 0;
  v30 = 0;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.setter();
  LOBYTE(v31) = v11;
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v13;
  result = FocusState.wrappedValue.getter();
  if (v29 == 5)
  {
    v17 = *(a3 + 16);
    v18 = *(a3 + 24);

    if ((v18 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v28 + 8))(v8, v5);
    }

    v20 = sub_100074054();

    swift_getKeyPath();
    *&v31 = v20;
    sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v20 + 32);

    v22 = CalculateUnitCategory.id.getter();
    v24 = v23;

    v25 = (a3 + v9[11]);
    v26 = *(v25 + 2);
    v31 = *v25;
    v32 = v26;
    v29 = v22;
    v30 = v24;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000C297C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for UnitConversionPopoverView() + 48));
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  return State.wrappedValue.setter();
}

unint64_t sub_1000C29F8()
{
  result = qword_100158848;
  if (!qword_100158848)
  {
    sub_10003AECC(&qword_100158840, &qword_1001131B0);
    sub_1000C2AB0();
    sub_100004880(&qword_100158870, &qword_100158878, &qword_1001131C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158848);
  }

  return result;
}

unint64_t sub_1000C2AB0()
{
  result = qword_100158850;
  if (!qword_100158850)
  {
    sub_10003AECC(&qword_100158858, &qword_1001131B8);
    sub_10003AECC(&qword_100158860, &qword_1001131C0);
    type metadata accessor for PlainListStyle();
    sub_100004880(&qword_100158868, &qword_100158860, &qword_1001131C0);
    swift_getOpaqueTypeConformance2();
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158850);
  }

  return result;
}

uint64_t sub_1000C2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnitConversionPopoverView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_100158D38, &qword_100113770);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = sub_10003AE84(&qword_100158D40, &qword_100113778);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v45 - v22;
  sub_1000CEB08(a1, v11);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  sub_1000D1EAC(v11, v25 + v24, type metadata accessor for UnitConversionPopoverView);
  v50 = sub_1000D1840;
  v51 = v25;
  static AccessibilityChildBehavior.contain.getter();
  v26 = sub_10003AE84(&qword_100158D48, &qword_100113780);
  v27 = sub_100004880(&qword_100158D50, &qword_100158D48, &qword_100113780);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v7, v3);

  LocalizedStringKey.init(stringLiteral:)();
  v28 = Text.init(_:tableName:bundle:comment:)();
  v30 = v29;
  LOBYTE(v25) = v31;
  v50 = v26;
  v51 = v27;
  swift_getOpaqueTypeConformance2();
  v48 = v23;
  v32 = v46;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v28, v30, v25 & 1);

  v47[1](v16, v32);
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  v33 = qword_100160C08;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = v48;
  sub_100008E68(v48, v21, &qword_100158D40, &qword_100113778);
  v40 = v21;
  v47 = v21;
  v41 = v49;
  sub_100008E68(v40, v49, &qword_100158D40, &qword_100113778);
  v42 = v41 + *(sub_10003AE84(&qword_100158D58, &qword_100113788) + 48);
  v43 = v46;
  *v42 = v33;
  *(v42 + 8) = v43;
  *(v42 + 16) = v34;
  *(v42 + 24) = v35;
  *(v42 + 32) = v36;
  *(v42 + 40) = v37;
  *(v42 + 48) = v38;

  sub_1000035CC(v39, &qword_100158D40, &qword_100113778);

  return sub_1000035CC(v47, &qword_100158D40, &qword_100113778);
}

uint64_t sub_1000C3108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a1;
  v101 = a3;
  v4 = type metadata accessor for UnitConversionPopoverView();
  v96 = *(v4 - 8);
  v5 = *(v96 + 64);
  __chkstk_darwin(v4);
  v104 = v6;
  v100 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ScrollViewProxy();
  v98 = *(v99 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v99);
  v95 = v8;
  v97 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v90 = type metadata accessor for ContentMarginPlacement();
  *&v89 = *(v90 - 8);
  v9 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ScrollIndicatorVisibility();
  v86 = *(v87 - 8);
  v11 = *(v86 + 64);
  __chkstk_darwin(v87);
  v74 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003AE84(&qword_100158D60, &qword_100113790);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v73 - v16;
  v79 = sub_10003AE84(&qword_100158D68, &qword_100113798);
  v75 = *(v79 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v79);
  v20 = &v73 - v19;
  v84 = sub_10003AE84(&qword_100158D70, &qword_1001137A0);
  v80 = *(v84 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v84);
  v76 = &v73 - v22;
  v83 = sub_10003AE84(&qword_100158D78, &qword_1001137A8);
  v81 = *(v83 - 8);
  v23 = *(v81 + 64);
  __chkstk_darwin(v83);
  v77 = &v73 - v24;
  v85 = sub_10003AE84(&qword_100158D80, &qword_1001137B0);
  v82 = *(v85 - 8);
  v25 = *(v82 + 64);
  __chkstk_darwin(v85);
  v78 = &v73 - v26;
  v102 = sub_10003AE84(&qword_100158D88, &qword_1001137B8);
  v27 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v103 = &v73 - v28;
  v93 = sub_10003AE84(&qword_100158D90, &qword_1001137C0);
  v92 = *(v93 - 8);
  v29 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v73 - v30;
  static Axis.Set.horizontal.getter();
  v107 = a2;
  sub_10003AE84(&qword_100158D98, &qword_1001137C8);
  sub_1000D18C8();
  ScrollView.init(_:showsIndicators:content:)();
  v94 = v4;
  v31 = *(v4 + 52);
  v106 = a2;
  v32 = (a2 + v31);
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v32) = v32[16];
  LOBYTE(v108) = v33;
  *(&v108 + 1) = v34;
  LOBYTE(v109) = v32;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v108 = v111;
  LOBYTE(v109) = v112;
  LOBYTE(v111) = 5;
  v35 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v36 = sub_100004880(&qword_100158DC8, &qword_100158D60, &qword_100113790);
  v37 = sub_10001BAF0(&qword_100157818, sub_10001BB68);
  View.focused<A>(_:equals:)();

  (*(v14 + 8))(v17, v13);
  v38 = v74;
  static ScrollIndicatorVisibility.hidden.getter();
  sub_10003AE84(&qword_100158DD0, &qword_1001137E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v40 = static Axis.Set.vertical.getter();
  *(inited + 32) = v40;
  v41 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v41;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v40)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v41)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v108 = v13;
  *(&v108 + 1) = v35;
  v109 = v36;
  v110 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v76;
  v44 = v79;
  View.scrollIndicators(_:axes:)();
  (*(v86 + 8))(v38, v87);
  (*(v75 + 8))(v20, v44);
  static Edge.Set.horizontal.getter();
  v45 = v88;
  static ContentMarginPlacement.scrollContent.getter();
  *&v108 = v44;
  *(&v108 + 1) = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v77;
  v48 = v84;
  View.contentMargins(_:_:for:)();
  (*(v89 + 8))(v45, v90);
  (*(v80 + 8))(v43, v48);
  *&v108 = v48;
  *(&v108 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v78;
  v50 = v83;
  View.scrollEdgeEffectDisabled(_:)();
  (*(v81 + 8))(v47, v50);
  if (qword_1001546D8 != -1)
  {
    swift_once();
  }

  v51 = xmmword_1001586B8;
  v52 = *(v82 + 32);
  v90 = *(&xmmword_1001586B8 + 8);
  v89 = unk_1001586D0;
  v53 = v103;
  v52(v103, v49, v85);
  v54 = &v53[*(v102 + 36)];
  *v54 = v51;
  *(v54 + 24) = v89;
  *(v54 + 8) = v90;
  v55 = v106;
  v56 = (v106 + *(v94 + 44));
  v57 = *(v56 + 2);
  v108 = *v56;
  v109 = v57;

  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  *&v90 = *(&v111 + 1);
  v108 = v111;
  v58 = v98;
  v94 = *(v98 + 16);
  v59 = v97;
  v60 = v99;
  (v94)(v97, v105, v99);
  v61 = v100;
  sub_1000CEB08(v55, v100);
  v62 = *(v58 + 80);
  v63 = *(v96 + 80);
  v64 = (v62 + 16) & ~v62;
  *&v89 = v64;
  v65 = (v95 + v63 + v64) & ~v63;
  v96 = v62 | v63;
  v66 = swift_allocObject();
  v98 = *(v58 + 32);
  (v98)(v66 + v64, v59, v60);
  v95 = type metadata accessor for UnitConversionPopoverView;
  sub_1000D1EAC(v61, v66 + v65, type metadata accessor for UnitConversionPopoverView);
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_1000D1A10();
  sub_10007BBE4(&qword_100158BF8);
  v67 = v91;
  v68 = v103;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v68, &qword_100158D88, &qword_1001137B8);
  (v94)(v59, v105, v60);
  sub_1000CEB08(v106, v61);
  v69 = swift_allocObject();
  (v98)(v69 + v89, v59, v60);
  sub_1000D1EAC(v61, v69 + v65, v95);
  v70 = v101;
  (*(v92 + 32))(v101, v67, v93);
  result = sub_10003AE84(&qword_100158DF0, &qword_1001137F0);
  v72 = (v70 + *(result + 36));
  *v72 = sub_1000D35F8;
  v72[1] = v69;
  v72[2] = 0;
  v72[3] = 0;
  return result;
}

uint64_t sub_1000C3EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  static VerticalAlignment.center.getter();
  LODWORD(v16) = 0;
  sub_1000CEBE0(&qword_100158E00, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10003AE84(&qword_100158E08, &qword_100113800);
  sub_1000D1D18();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v4 = *(type metadata accessor for UnitConversionPopoverView() + 72);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = (a1 + *(sub_10003AE84(&qword_100158DB0, &qword_1001137D0) + 36));
  *v5 = v16;
  v5[1] = v17;
  v5[2] = v18;
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_10003AE84(&qword_100158D98, &qword_1001137C8);
  v15 = a1 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1000C40EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for UnitConversionPopoverView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v14 = sub_100074054();

  v15 = *(v14 + 16);

  swift_getKeyPath();
  v23 = v15;
  sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 16);

  v17 = [v16 categories];

  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v18;
  sub_1000CEB08(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1000D1EAC(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for UnitConversionPopoverView);
  sub_10003AE84(&qword_100158E28, &qword_100113810);
  sub_10003AE84(&qword_100158E20, &qword_100113808);
  sub_100004880(&qword_100158E30, &qword_100158E28, &qword_100113810);
  sub_100004880(&qword_100158E18, &qword_100158E20, &qword_100113808);
  sub_1000D0570(&qword_100158E38, &qword_1001551E0, CalculateUnitCategory_ptr);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000C4504@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for UnitConversionPopoverView();
  v6 = v5 - 8;
  v38 = *(v5 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for UnitConversionCategoryButton(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 displayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v15;
  v37 = v14;

  v16 = a2 + *(v6 + 52);
  v17 = *(v16 + 16);
  v42 = *v16;
  v43 = v17;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v19 = v40;
  v18 = v41;
  v20 = CalculateUnitCategory.id.getter();
  if (v18)
  {
    if (v19 == v20 && v18 == v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v22 = 0;
  }

  sub_1000CEB08(a2, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  sub_1000D1EAC(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for UnitConversionPopoverView);
  v25 = v36;
  *v11 = v37;
  *(v11 + 1) = v25;
  v11[16] = v22 & 1;
  *(v11 + 3) = sub_1000D1E48;
  *(v11 + 4) = v24;
  v26 = *(v8 + 28);
  *&v42 = 0x4018000000000000;
  sub_1000103CC();
  v27 = v12;
  ScaledMetric.init(wrappedValue:)();
  v28 = *(v8 + 32);
  *&v42 = 0x4028000000000000;
  ScaledMetric.init(wrappedValue:)();
  v29 = CalculateUnitCategory.id.getter();
  v31 = v30;
  v32 = v11;
  v33 = v39;
  sub_1000D1EAC(v32, v39, type metadata accessor for UnitConversionCategoryButton);
  result = sub_10003AE84(&qword_100158E20, &qword_100113808);
  v35 = (v33 + *(result + 52));
  *v35 = v29;
  v35[1] = v31;
  return result;
}

uint64_t sub_1000C47FC(uint64_t a1, uint64_t a2)
{
  v3 = CalculateUnitCategory.id.getter();
  v5 = v4;
  v6 = (a2 + *(type metadata accessor for UnitConversionPopoverView() + 44));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (!v14)
  {

    goto LABEL_9;
  }

  if (v3 == v13 && v14 == v5)
  {
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    CalculateUnitCategory.id.getter();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000C491C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for UnitConversionPopoverView() + 44));
  v4 = *v2;
  v5 = *(v2 + 2);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_10007BBE4(&qword_100158C00);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_1000C4A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v66 = a2;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v64 = v2;
  v65 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnitConversionPopoverView();
  v56 = *(v6 - 8);
  v54 = *(v56 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v63 = *(v60 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v60);
  v53 = &v51 - v10;
  v62 = sub_10003AE84(&qword_100158B10, &qword_1001134D8);
  v59 = *(v62 - 8);
  v11 = *(v59 + 64);
  v12 = __chkstk_darwin(v62);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v51 - v14;
  v15 = type metadata accessor for AccessibilityTraits();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10003AE84(&qword_100158B18, &qword_1001134E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v51 - v24;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  v67 = v26;
  v68 = v27;
  v30 = v29 & 1;
  v69 = v29 & 1;
  v70 = v31;
  static AccessibilityTraits.isHeader.getter();
  v51 = v25;
  View.accessibilityAddTraits(_:)();
  (*(v16 + 8))(v19, v15);
  sub_10000C6AC(v26, v28, v30);

  sub_1000CEB08(v57, v8);
  v32 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v33 = swift_allocObject();
  sub_1000D1EAC(v8, v33 + v32, type metadata accessor for UnitConversionPopoverView);
  v34 = v53;
  Button.init(action:label:)();
  v35 = v61;
  PlainButtonStyle.init()();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
  sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  v36 = v55;
  v37 = v60;
  v38 = v64;
  View.buttonStyle<A>(_:)();
  (*(v65 + 8))(v35, v38);
  (*(v63 + 8))(v34, v37);
  v39 = v52;
  sub_100008E68(v25, v52, &qword_100158B18, &qword_1001134E0);
  v41 = v58;
  v40 = v59;
  v42 = *(v59 + 16);
  v43 = v36;
  v44 = v36;
  v45 = v62;
  v42(v58, v43, v62);
  v46 = v66;
  sub_100008E68(v39, v66, &qword_100158B18, &qword_1001134E0);
  v47 = sub_10003AE84(&qword_100158B20, &qword_1001134E8);
  v48 = v46 + *(v47 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  v42((v46 + *(v47 + 64)), v41, v45);
  v49 = *(v40 + 8);
  v49(v44, v45);
  sub_1000035CC(v51, &qword_100158B18, &qword_1001134E0);
  v49(v41, v45);
  return sub_1000035CC(v39, &qword_100158B18, &qword_1001134E0);
}

uint64_t sub_1000C5090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_10003AE84(&qword_100158A90, &qword_100113408);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  *v9 = static Axis.Set.horizontal.getter();
  v10 = sub_10003AE84(&qword_100158A98, &qword_100113410);
  sub_1000C5458(a1, &v9[*(v10 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v9[*(sub_10003AE84(&qword_100158AA0, &qword_100113418) + 36)];
  v12 = v47;
  *v11 = v46;
  v11[1] = v12;
  v11[2] = v48;
  if (qword_100154588 != -1)
  {
    swift_once();
  }

  v13 = qword_100160BB0;
  KeyPath = swift_getKeyPath();
  v15 = &v9[*(sub_10003AE84(&qword_100158AA8, &qword_100113450) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = qword_1001546C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_100160D20;
  v18 = swift_getKeyPath();
  v19 = &v9[*(sub_10003AE84(&qword_100158AB0, &qword_100113488) + 36)];
  *v19 = v18;
  v19[1] = v17;

  LOBYTE(v17) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v9[*(sub_10003AE84(&qword_100158AB8, &qword_100113490) + 36)];
  *v28 = v17;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v29 = &v9[*(v3 + 36)];
  *v29 = v17;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  v34 = qword_100160C08;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52;
  v43 = v54;
  v44 = v53;
  sub_100008E68(v9, v7, &qword_100158A90, &qword_100113408);
  v39 = v45;
  sub_100008E68(v7, v45, &qword_100158A90, &qword_100113408);
  v40 = v39 + *(sub_10003AE84(&qword_100158AC0, &qword_100113498) + 48);
  *v40 = v34;
  *(v40 + 8) = v35;
  *(v40 + 16) = v36;
  *(v40 + 24) = v37;
  *(v40 + 32) = v38;
  v41 = v43;
  *(v40 + 40) = v44;
  *(v40 + 48) = v41;

  sub_1000035CC(v9, &qword_100158A90, &qword_100113408);

  return sub_1000035CC(v7, &qword_100158A90, &qword_100113408);
}

uint64_t sub_1000C5458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v66 = a1;
  v60 = sub_10003AE84(&qword_100158AC8, &unk_1001134A0);
  v2 = *(*(v60 - 8) + 64);
  v3 = __chkstk_darwin(v60);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v53 - v5;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v62 = sub_10003AE84(&qword_100158AD0, &unk_1001152D0);
  v14 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v53 - v15;
  v16 = sub_10003AE84(&qword_100158AD8, &qword_1001134B0);
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v53 - v21;
  v55 = sub_10003AE84(&qword_100158AE0, &qword_1001134B8);
  v22 = *(*(v55 - 8) + 64);
  v23 = __chkstk_darwin(v55);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v53 - v26;
  *v27 = static VerticalAlignment.center.getter();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = sub_10003AE84(&qword_100158AE8, &qword_1001134C0);
  v29 = *(v28 + 44);
  v58 = v27;
  v30 = &v27[v29];
  v31 = v66;
  sub_1000C4A00(v66, v30);
  *v25 = static VerticalAlignment.center.getter();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v32 = *(v28 + 44);
  v57 = v25;
  sub_1000C4A00(v31, &v25[v32]);
  v33 = v7;
  v34 = v7[13];
  v34(v13, enum case for DynamicTypeSize.xSmall(_:), v6);
  v34(v11, enum case for DynamicTypeSize.accessibility2(_:), v6);
  sub_1000CEBE0(&qword_100158AF0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v36 = v7[4];
    v37 = v56;
    v36(v56, v13, v6);
    v38 = v60;
    v36((v37 + *(v60 + 48)), v11, v6);
    v66 = v20;
    v39 = v63;
    sub_100008E68(v37, v63, &qword_100158AC8, &unk_1001134A0);
    v54 = v16;
    v40 = *(v38 + 48);
    v41 = v61;
    v36(v61, v39, v6);
    v42 = v33[1];
    v42(v39 + v40, v6);
    sub_10000D5B8(v37, v39, &qword_100158AC8, &unk_1001134A0);
    v36((v41 + *(v62 + 36)), (v39 + *(v38 + 48)), v6);
    v42(v39, v6);
    sub_100004880(&qword_100158AF8, &qword_100158AE0, &qword_1001134B8);
    sub_100004880(&qword_100158B00, &qword_100158AD0, &unk_1001152D0);
    v43 = v64;
    v44 = v57;
    View.dynamicTypeSize<A>(_:)();
    sub_1000035CC(v41, &qword_100158AD0, &unk_1001152D0);
    sub_1000035CC(v44, &qword_100158AE0, &qword_1001134B8);
    v45 = v58;
    sub_100008E68(v58, v44, &qword_100158AE0, &qword_1001134B8);
    v46 = v59;
    v47 = *(v59 + 16);
    v48 = v66;
    v49 = v54;
    v47(v66, v43, v54);
    v50 = v65;
    sub_100008E68(v44, v65, &qword_100158AE0, &qword_1001134B8);
    v51 = sub_10003AE84(&qword_100158B08, &unk_1001134C8);
    v47((v50 + *(v51 + 48)), v48, v49);
    v52 = *(v46 + 8);
    v52(v43, v49);
    sub_1000035CC(v45, &qword_100158AE0, &qword_1001134B8);
    v52(v48, v49);
    return sub_1000035CC(v44, &qword_100158AE0, &qword_1001134B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C5AC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a2;
  v104 = a1;
  v96 = a5;
  v94 = type metadata accessor for ScrollViewProxy();
  v107 = *(v94 - 8);
  v105 = *(v107 + 64);
  __chkstk_darwin(v94);
  v93 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnitConversionPopoverView();
  v102 = *(v8 - 8);
  v9 = *(v102 + 64);
  v10 = v8 - 8;
  v101 = v8 - 8;
  __chkstk_darwin(v8 - 8);
  v89 = v9;
  v11 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10003AE84(&qword_1001589D8, &qword_1001133A0);
  v84 = *(v83 - 8);
  v12 = *(v84 + 64);
  __chkstk_darwin(v83);
  v14 = &v80 - v13;
  v85 = sub_10003AE84(&qword_100158B50, &qword_100113538);
  v86 = *(v85 - 8);
  v15 = *(v86 + 64);
  __chkstk_darwin(v85);
  v81 = &v80 - v16;
  v90 = sub_10003AE84(&qword_100158B58, &qword_100113540);
  v91 = *(v90 - 8);
  v17 = *(v91 + 8);
  __chkstk_darwin(v90);
  v82 = &v80 - v18;
  v103 = sub_10003AE84(&qword_100158B60, &qword_100113548);
  v19 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v106 = &v80 - v20;
  KeyPath = swift_getKeyPath();
  v22 = a4 + *(v10 + 56);
  v23 = *(v22 + 16);
  v118 = *v22;
  v119 = v23;

  v92 = sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.projectedValue.getter();
  v80 = v115;
  v24 = v116;
  v25 = v117;
  v97 = v11;
  sub_1000CEB08(a4, v11);
  v88 = *(v102 + 80);
  v100 = v9 + ((v88 + 16) & ~v88);
  v26 = (v88 + 16) & ~v88;
  v99 = v26;
  v102 = v88 | 7;
  v27 = swift_allocObject();
  v98 = type metadata accessor for UnitConversionPopoverView;
  sub_1000D1EAC(v11, v27 + v26, type metadata accessor for UnitConversionPopoverView);
  v117 = v25;
  *&v118 = a3;
  v87 = a3;
  v115 = v80;
  v116 = v24;
  v110 = &v118;
  v111 = KeyPath;
  v112 = sub_1000D06C4;
  v113 = v27;
  sub_10003AE84(&qword_100158A30, &qword_1001133C8);
  sub_1000D022C();
  List.init(selection:content:)();

  v109 = a4;
  static HorizontalAlignment.center.getter();
  v28 = sub_10003AE84(&qword_100158B68, &qword_100113580);
  v29 = sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0);
  v30 = sub_10003AECC(&qword_100158B70, &qword_100113588);
  v31 = sub_100004880(&qword_100158B78, &qword_100158B70, &qword_100113588);
  *&v115 = v30;
  *(&v115 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v81;
  v34 = v83;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  (*(v84 + 8))(v14, v34);
  v108 = a4;
  static HorizontalAlignment.center.getter();
  v35 = sub_10003AE84(&qword_100158B80, &qword_100113590);
  *&v115 = v34;
  *(&v115 + 1) = v28;
  v116 = v29;
  v117 = OpaqueTypeConformance2;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_1000D0764();
  v36 = v82;
  v37 = v85;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  (*(v86 + 8))(v33, v37);
  v38 = a4 + *(v101 + 60);
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v38) = *(v38 + 16);
  LOBYTE(v115) = v39;
  *(&v115 + 1) = v40;
  LOBYTE(v116) = v38;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v114 = 8;
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  *&v115 = v37;
  *(&v115 + 1) = v35;
  v116 = v78;
  v117 = v79;
  swift_getOpaqueTypeConformance2();
  sub_10001BAF0(&qword_100157818, sub_10001BB68);
  v41 = v106;
  v42 = v90;
  View.focused<A>(_:equals:)();

  (*(v91 + 1))(v36, v42);
  v43 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v44 = a4;
  v45 = v97;
  sub_1000CEB08(a4, v97);
  v46 = swift_allocObject();
  v47 = v98;
  sub_1000D1EAC(v45, v46 + v99, v98);
  v48 = &v41[*(sub_10003AE84(&qword_100158BE0, &qword_1001135C0) + 36)];
  *v48 = v43;
  v48[1] = sub_1000D0A20;
  v48[2] = v46;
  v49 = v107;
  v50 = *(v107 + 16);
  v90 = v107 + 16;
  v91 = v50;
  v51 = v93;
  v52 = v94;
  v50(v93, v104, v94);
  v53 = v44;
  sub_1000CEB08(v44, v45);
  v54 = *(v49 + 80);
  v55 = v49;
  v56 = (v54 + 16) & ~v54;
  v57 = (v105 + v88 + v56) & ~v88;
  v58 = (v89 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = *(v55 + 32);
  v107 = v55 + 32;
  v89 = v60;
  v60(v59 + v56, v51, v52);
  v61 = v97;
  sub_1000D1EAC(v97, v59 + v57, v47);
  v62 = (v59 + v58);
  v63 = v95;
  v64 = v87;
  *v62 = v95;
  v62[1] = v64;
  v65 = &v106[*(v103 + 36)];
  *v65 = sub_1000D0A90;
  v65[1] = v59;
  v65[2] = 0;
  v65[3] = 0;
  v66 = v53 + *(v101 + 52);
  v67 = *(v66 + 16);
  v115 = *v66;
  v116 = v67;
  v68 = v64;

  v69 = v63;
  State.wrappedValue.getter();
  v115 = v118;
  v70 = v61;
  sub_1000CEB08(v53, v61);
  v91(v51, v104, v52);
  v71 = &v100[v54] & ~v54;
  v72 = (v105 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  sub_1000D1EAC(v70, v73 + v99, v98);
  v89(v73 + v71, v51, v52);
  v74 = (v73 + v72);
  *v74 = v69;
  v74[1] = v68;

  v75 = v69;
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_1000D0C30();
  sub_10007BBE4(&qword_100158BF8);
  v76 = v106;
  View.onChange<A>(of:initial:_:)();

  return sub_1000035CC(v76, &qword_100158B60, &qword_100113548);
}

uint64_t sub_1000C66CC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v108 = type metadata accessor for UnitConversionPopoverView();
  v8 = *(v108 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v108);
  v10 = type metadata accessor for EnvironmentValues();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  __chkstk_darwin(v10);
  v97 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UnitConversionUnitButton();
  v13 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10003AE84(&qword_100158A68, &unk_1001133E0);
  v16 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v106 = &v94 - v17;
  v107 = sub_10003AE84(&qword_100158A50, &qword_1001133D8);
  v18 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v20 = &v94 - v19;
  v21 = sub_10003AE84(&qword_100158B40, &qword_1001134F8);
  v112 = *(v21 - 8);
  v113 = v21;
  v22 = *(v112 + 64);
  __chkstk_darwin(v21);
  v109 = &v94 - v23;
  v111 = sub_10003AE84(&qword_100158A40, &qword_1001133D0);
  v24 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v110 = &v94 - v25;
  v26 = [a1 displayName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v28;
  v103 = v27;

  v29 = [a1 shortName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v31;
  v101 = v30;

  if (a2)
  {
    v32 = 0;
  }

  else
  {
    v95 = v8;
    v94 = CalculateUnit.id.getter();
    v34 = v33;
    v35 = *(v4 + 16);
    v36 = *(v4 + 24);
    v37 = *(v4 + 65) == 1;
    v96 = a3;
    if (v37)
    {

      if ((v36 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v38 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v39 = v97;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v98 + 8))(v39, v99);
      }

      sub_100074054();

      v40 = sub_100072148();
    }

    else
    {

      if ((v36 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v41 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v42 = v97;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v98 + 8))(v42, v99);
      }

      sub_100074054();

      v40 = sub_100072328();
    }

    v43 = v40;

    v44 = CalculateUnit.id.getter();
    v46 = v45;

    if (v94 == v44 && v34 == v46)
    {
      v32 = 1;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = v95;
  }

  sub_1000CEB08(v4, &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v48 = swift_allocObject();
  sub_1000D1EAC(&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for UnitConversionPopoverView);
  *(v48 + ((v9 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  a1;
  v49 = static Font.body.getter();
  v50 = static Font.footnote.getter();
  v51 = v102;
  *v15 = v103;
  *(v15 + 1) = v51;
  v52 = v100;
  *(v15 + 2) = v101;
  *(v15 + 3) = v52;
  v15[32] = v32 & 1;
  v15[33] = 0;
  *(v15 + 5) = sub_1000D05B4;
  *(v15 + 6) = v48;
  *(v15 + 7) = v49;
  *(v15 + 8) = v50;
  if (qword_100154570 != -1)
  {
    swift_once();
  }

  *(v15 + 9) = qword_100160B98;
  v53 = qword_100154578;

  v54 = v106;
  if (v53 != -1)
  {
    swift_once();
  }

  *(v15 + 10) = qword_100160BA0;
  v55 = qword_100154580;

  if (v55 != -1)
  {
    swift_once();
  }

  *(v15 + 11) = qword_100160BA8;
  v56 = *(v104 + 56);
  *&v116 = 0x4043000000000000;
  sub_1000103CC();

  ScaledMetric.init(wrappedValue:)();
  v57 = CalculateUnit.id.getter();
  v59 = v58;
  sub_1000D1EAC(v15, v54, type metadata accessor for UnitConversionUnitButton);
  v60 = (v54 + *(v105 + 52));
  *v60 = v57;
  v60[1] = v59;
  v61 = CalculateUnit.id.getter();
  v63 = v62;
  v64 = *(v4 + 16);
  v65 = *(v4 + 24);
  if (*(v4 + 65) == 1)
  {

    if ((v65 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v66 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v67 = v97;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v98 + 8))(v67, v99);
    }

    sub_100074054();

    v68 = sub_100072328();
  }

  else
  {

    if ((v65 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v69 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v70 = v97;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v98 + 8))(v70, v99);
    }

    sub_100074054();

    v68 = sub_100072148();
  }

  v71 = v68;

  v72 = CalculateUnit.id.getter();
  v74 = v73;

  if (v61 == v72 && v63 == v74)
  {
    v75 = 1;
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v76 = v109;
  v77 = v107;

  KeyPath = swift_getKeyPath();
  v79 = swift_allocObject();
  *(v79 + 16) = v75 & 1;
  sub_10000D5B8(v54, v20, &qword_100158A68, &unk_1001133E0);
  v80 = &v20[*(v77 + 36)];
  *v80 = KeyPath;
  v80[1] = sub_1000296EC;
  v80[2] = v79;
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  static VerticalEdge.Set.all.getter();
  sub_1000D03E0();
  View.listRowSeparatorTint(_:edges:)();
  sub_1000035CC(v20, &qword_100158A50, &qword_1001133D8);
  v81 = CalculateUnit.id.getter();
  v83 = v82;
  v84 = v4 + *(v108 + 48);
  v85 = *(v84 + 16);
  v116 = *v84;
  v117 = v85;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v115)
  {
    if (v81 == v114 && v115 == v83)
    {

LABEL_41:
      if (qword_1001545F8 != -1)
      {
        swift_once();
      }

      v87 = &qword_100160C20;
      goto LABEL_47;
    }

    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v86)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  if (qword_1001545F0 != -1)
  {
    swift_once();
  }

  v87 = &qword_100160C18;
LABEL_47:
  v89 = v112;
  v88 = v113;
  v90 = *v87;

  v91 = AnyView.init<A>(_:)();
  v92 = v110;
  (*(v89 + 32))(v110, v76, v88);
  *(v92 + *(v111 + 36)) = v91;
  static VerticalEdge.Set.top.getter();
  sub_1000D02EC();
  View.listRowSeparator(_:edges:)();
  return sub_1000035CC(v92, &qword_100158A40, &qword_1001133D0);
}

uint64_t sub_1000C72A0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100158A80, &qword_1001133F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_10003AE84(&qword_100158B70, &qword_100113588);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_10003AE84(&qword_100158D30, &qword_100113768);
  sub_1000C2BFC(a1, &v9[*(v10 + 44)]);
  static ScrollEdgeEffectStyle.automatic.getter();
  v11 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  static Edge.Set.all.getter();
  sub_100004880(&qword_100158B78, &qword_100158B70, &qword_100113588);
  View.scrollEdgeEffectStyle(_:for:)();
  sub_1000035CC(v5, &qword_100158A80, &qword_1001133F8);
  return sub_1000035CC(v9, &qword_100158B70, &qword_100113588);
}

uint64_t sub_1000C747C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100158A80, &qword_1001133F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v52 - v6;
  v8 = sub_10003AE84(&qword_100158B90, &qword_100113598);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = sub_10003AE84(&qword_100158C08, &qword_1001135C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = a1 + *(type metadata accessor for UnitConversionPopoverView() + 44);
  v18 = *(v17 + 16);
  v56 = *v17;
  v57 = v18;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (!v55)
  {
    goto LABEL_7;
  }

  if (v54 != 0x79636E6572727543 || v55 != 0xE800000000000000)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_6;
    }

LABEL_7:
    v50 = 1;
    return (*(v13 + 56))(a2, v50, 1, v12);
  }

LABEL_6:
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = sub_10003AE84(&qword_100158C10, &qword_1001135D0);
  sub_1000CB690(a1, &v11[*(v20 + 44)]);
  v21 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v11[*(sub_10003AE84(&qword_100158BB8, &qword_1001135A8) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v11[*(sub_10003AE84(&qword_100158BA8, &qword_1001135A0) + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  KeyPath = swift_getKeyPath();
  v42 = &v11[*(v8 + 36)];
  v43 = sub_10003AE84(&qword_100158BD8, &qword_1001135B8);
  v53 = v12;
  v44 = a2;
  v45 = *(v43 + 28);
  v46 = enum case for ColorScheme.dark(_:);
  v47 = type metadata accessor for ColorScheme();
  v48 = v42 + v45;
  a2 = v44;
  (*(*(v47 - 8) + 104))(v48, v46, v47);
  *v42 = KeyPath;
  static ScrollEdgeEffectStyle.automatic.getter();
  v49 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v49 - 8) + 56))(v7, 0, 1, v49);
  static Edge.Set.all.getter();
  sub_1000D0824();
  v12 = v53;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_1000035CC(v7, &qword_100158A80, &qword_1001133F8);
  sub_1000035CC(v11, &qword_100158B90, &qword_100113598);
  (*(v13 + 32))(v44, v16, v12);
  v50 = 0;
  return (*(v13 + 56))(a2, v50, 1, v12);
}

double sub_1000C78E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CalculatorSizeClass(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HorizontalAlignment.trailing.getter();
  ViewDimensions.subscript.getter();
  v16 = v15;
  v17 = type metadata accessor for UnitConversionPopoverView();
  sub_100008E68(a2 + *(v17 + 36), v9, &qword_100154948, qword_1001130B0);
  sub_100008E68(a2 + *(v17 + 40), v7, &qword_100154948, qword_1001130B0);
  v18 = type metadata accessor for UserInterfaceSizeClass();
  v19 = *(*(v18 - 8) + 56);
  v19(v14, 1, 1, v18);
  v20 = *(v11 + 28);
  v19(&v14[v20], 1, 1, v18);
  sub_10006E758(v9, v14);
  sub_10006E758(v7, &v14[v20]);
  if (sub_10003DC4C(v14))
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 8.0;
  }

  sub_10006E7C8(v14);
  return v16 - v21;
}

id sub_1000C7AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (*(a2 + 65) == 1)
  {

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
    }

    sub_100074054();

    v13 = sub_100072148();
  }

  else
  {

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
    }

    sub_100074054();

    v13 = sub_100072328();
  }

  v15 = v13;

  v16 = CalculateUnit.id.getter();
  v18 = v17;

  v23[0] = v16;
  v23[1] = v18;
  static UnitPoint.top.getter();
  ScrollViewProxy.scrollTo<A>(_:anchor:)();

  result = [a3 unitType];
  if (result == 16)
  {

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
    }

    v21 = sub_100074054();

    v22 = *(v21 + 24);

    sub_1000521F4();
  }

  return result;
}

uint64_t sub_1000C7E28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for UnitConversionPopoverView() + 44));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v57 = *v10;
  v58 = v12;
  v59 = v13;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v56)
  {
    if (v55 == 0x79636E6572727543 && v56 == 0xE800000000000000)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v15 = *(a1 + 16);
    v16 = *(a1 + 24);

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      v52 = v7;
      v18 = v6;
      v19 = a2;
      v20 = v17;
      os_log(_:dso:log:_:_:)();

      a2 = v19;
      v6 = v18;
      v7 = v52;
      v21 = v54;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v21, v6);
    }

    v22 = sub_100074054();

    v23 = *(v22 + 24);

    sub_100051FD4();
  }

LABEL_9:
  v57 = v11;
  v58 = v12;
  v59 = v13;
  State.wrappedValue.getter();
  v24 = v56;
  if (v56)
  {
    v52 = a2;
    v25 = v55;
    v26 = *(a1 + 16);
    v27 = *(a1 + 24);

    if ((v27 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v29 = v54;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v29, v6);
    }

    v30 = sub_100074054();

    swift_getKeyPath();
    v57 = v30;
    sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + 32);

    v32 = CalculateUnitCategory.id.getter();
    v34 = v33;

    if (v25 == v32 && v24 == v34)
    {

LABEL_16:
      if (*(a1 + 65) == 1)
      {

        if ((v27 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v36 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v37 = v54;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v37, v6);
        }

        sub_100074054();

        v38 = sub_100072148();
      }

      else
      {

        if ((v27 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v46 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v47 = v54;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v47, v6);
        }

        sub_100074054();

        v38 = sub_100072328();
      }

      v48 = v38;

      v49 = CalculateUnit.id.getter();
      v51 = v50;

      v57 = v49;
      v58 = v51;
      static UnitPoint.top.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_16;
    }
  }

  v39 = v53;
  if (!(v53 >> 62))
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_22;
    }

LABEL_31:
    v43 = 0;
    v45 = 0;
    goto LABEL_32;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_22:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v39 + 32);
LABEL_25:
    v42 = v41;
    v43 = CalculateUnit.id.getter();
    v45 = v44;

LABEL_32:
    v57 = v43;
    v58 = v45;
    static UnitPoint.top.getter();
    sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
    sub_10007BBE4(&qword_100158C00);
    ScrollViewProxy.scrollTo<A>(_:anchor:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C84D8(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for UnitConversionPopoverView() + 56));
  v8 = *v7;
  v9 = *(v7 + 2);
  v19 = v8;
  v20 = v9;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v11 = v18[1];
  v10 = v18[2];

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v14 = *a1;
    v15 = *(a1 + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
      v14 = v19;
    }

    swift_getKeyPath();
    *&v19 = v14;
    sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v14 + 54) != 8)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v18[-2] = v14;
      LOBYTE(v18[-1]) = 8;
      *&v19 = v14;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000C8790(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100158A80, &qword_1001133F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_10003AE84(&qword_1001589E8, &qword_1001133A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v10 = sub_10003AE84(&qword_100158A88, &qword_100113400);
  sub_1000C5090(a1, &v9[*(v10 + 44)]);
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = &v9[*(v6 + 36)];
  *v11 = a1;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  static ScrollEdgeEffectStyle.automatic.getter();
  v16 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  static Edge.Set.top.getter();
  sub_1000CFEFC();
  View.scrollEdgeEffectStyle(_:for:)();
  sub_1000035CC(v5, &qword_100158A80, &qword_1001133F8);
  return sub_1000035CC(v9, &qword_1001589E8, &qword_1001133A8);
}

double sub_1000C8974@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.center.getter();
  v33 = 0;
  sub_1000CA404(v2, &v21);
  v43 = v29;
  v44 = v30;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v46[8] = v29;
  v46[9] = v30;
  v46[4] = v25;
  v46[5] = v26;
  v46[6] = v27;
  v46[7] = v28;
  v46[0] = v21;
  v46[1] = v22;
  v45 = v31;
  v47 = v31;
  v46[2] = v23;
  v46[3] = v24;
  sub_100008E68(&v35, v20, &qword_100158E40, &unk_100113818);
  sub_1000035CC(v46, &qword_100158E40, &unk_100113818);
  *&v32[119] = v42;
  *&v32[135] = v43;
  *&v32[151] = v44;
  *&v32[55] = v38;
  *&v32[71] = v39;
  *&v32[87] = v40;
  *&v32[103] = v41;
  *&v32[7] = v35;
  *&v32[23] = v36;
  *&v32[167] = v45;
  *&v32[39] = v37;
  v5 = v33;
  if (qword_1001545B8 != -1)
  {
    swift_once();
  }

  v6 = qword_100160BE0;
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v34[55] = v24;
  *&v34[71] = v25;
  *&v34[87] = v26;
  *&v34[103] = v27;
  *&v34[7] = v21;
  *&v34[23] = v22;
  *&v34[39] = v23;
  v9 = static Edge.Set.all.getter();
  v10 = *&v32[96];
  *(a1 + 129) = *&v32[112];
  v11 = *&v32[144];
  *(a1 + 145) = *&v32[128];
  *(a1 + 161) = v11;
  *(a1 + 176) = *&v32[159];
  v12 = *&v32[32];
  *(a1 + 65) = *&v32[48];
  v13 = *&v32[80];
  *(a1 + 81) = *&v32[64];
  *(a1 + 97) = v13;
  *(a1 + 113) = v10;
  v14 = *&v32[16];
  *(a1 + 17) = *v32;
  *(a1 + 33) = v14;
  *(a1 + 49) = v12;
  v15 = *&v34[64];
  v16 = *&v34[96];
  *(a1 + 297) = *&v34[80];
  *(a1 + 313) = v16;
  v17 = *&v34[16];
  *(a1 + 217) = *v34;
  *(a1 + 233) = v17;
  v18 = *&v34[48];
  *(a1 + 249) = *&v34[32];
  *a1 = v4;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = v5;
  *(a1 + 192) = KeyPath;
  *(a1 + 200) = v6;
  *(a1 + 208) = v8;
  *(a1 + 216) = 1;
  *(a1 + 328) = *&v34[111];
  *(a1 + 265) = v18;
  *(a1 + 281) = v15;
  *(a1 + 336) = v9;
  result = 0.0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1;
  return result;
}

uint64_t sub_1000C8C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v33 = a4;
  v6 = type metadata accessor for UnitConversionPopoverView();
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  v30 = *(v28 + 64);
  __chkstk_darwin(v6);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ScrollViewProxy();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_100158E50, &qword_100113830);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v34 = a2;
  v35 = a3;
  static Axis.Set.vertical.getter();
  sub_10003AE84(&qword_100158E58, &qword_100113838);
  sub_100004880(&qword_100158E60, &qword_100158E58, &qword_100113838);
  ScrollView.init(_:showsIndicators:content:)();
  v17 = a3 + *(v7 + 56);
  v18 = *(v17 + 16);
  v37 = *v17;
  v38 = v18;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v37 = v36;
  v19 = v26;
  (*(v9 + 16))(v11, v29, v26);
  v20 = v27;
  sub_1000CEB08(a3, v27);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + *(v28 + 80) + v21) & ~*(v28 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v11, v19);
  sub_1000D1EAC(v20, v23 + v22, type metadata accessor for UnitConversionPopoverView);
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_100004880(&qword_100158E68, &qword_100158E50, &qword_100113830);
  sub_10007BBE4(&qword_100158BF8);
  v24 = v31;
  View.onChange<A>(of:initial:_:)();

  return (*(v32 + 8))(v16, v24);
}

uint64_t sub_1000C9054()
{
  v0 = type metadata accessor for PinnedScrollableViews();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  static HorizontalAlignment.center.getter();
  sub_1000CEBE0(&qword_100158E00, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10003AE84(&qword_100158E70, &qword_100113840);
  sub_1000D2404();
  return LazyVStack.init(alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_1000C9190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = type metadata accessor for UnitConversionPopoverView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = *(a1 + 16);
  v9 = v8 - 1;
  v17[8] = 0;
  v17[9] = v8;
  swift_getKeyPath();
  sub_1000CEB08(a2, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_1000D1EAC(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for UnitConversionPopoverView);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  sub_10003AE84(&qword_100158EC0, &qword_100113888);
  sub_10003AE84(&qword_100158EC8, &qword_100113890);
  sub_1000D278C();
  v12 = sub_10003AECC(&qword_100158E80, &qword_100113848);
  v13 = sub_10003AECC(&qword_100158E88, &qword_100113850);
  v14 = sub_1000D2538();
  v15 = sub_100004880(&qword_100158EB8, &qword_100158E88, &qword_100113850);
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = &type metadata for EmptyView;
  v17[5] = v14;
  v17[6] = v15;
  v17[7] = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000C93F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10003AE84(&qword_100158EE0, &qword_100113898);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(a2 + 16))
  {
    v24 = &v21;
    v15 = *(a2 + 16 * v14 + 32);
    v16 = __chkstk_darwin(result);
    v21 = v17;
    *(&v21 - 3) = v17;
    *(&v21 - 4) = a3;
    *(&v21 - 3) = v18;
    *(&v21 - 2) = a4;
    v22 = v16;
    v19 = v17;
    v23 = v19;

    sub_1000CA170(v19, v25);
    sub_10003AE84(&qword_100158E80, &qword_100113848);
    sub_10003AE84(&qword_100158E88, &qword_100113850);
    sub_1000D2538();
    sub_100004880(&qword_100158EB8, &qword_100158E88, &qword_100113850);
    Section<>.init(header:content:)();
    v20 = v22;
    Section<>.collapsible(_:)();

    return (*(v9 + 8))(v13, v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C9678()
{
  v0 = type metadata accessor for PinnedScrollableViews();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  static HorizontalAlignment.center.getter();
  sub_1000CEBE0(&qword_100158E00, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10003AE84(&qword_100158EE8, &qword_1001138A0);
  sub_1000D28B4();
  return LazyVStack.init(alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_1000C97D0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v11 = type metadata accessor for UnitConversionPopoverView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a6;
  if (a2 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if ((v16 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v15 = a5;
        goto LABEL_3;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_8;
  }

  v15 = a5;
  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v16 - 1;
LABEL_3:
  v27 = 0;
  v28 = v16;
  v24[1] = swift_getKeyPath();
  sub_1000CEB08(a3, v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_1000D1EAC(v14, v21 + v18, type metadata accessor for UnitConversionPopoverView);
  *(v21 + v19) = v25;
  *(v21 + v20) = v15;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v22 = a1;

  sub_10003AE84(&qword_100158EC0, &qword_100113888);
  sub_10003AE84(&qword_100158F00, &qword_1001138A8);
  sub_1000D278C();
  sub_1000D2938();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000C9A10@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v107 = a6;
  v13 = sub_10003AE84(&qword_100158F38, &qword_1001138C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v111 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v101 - v17;
  v19 = sub_10003AE84(&qword_100158F30, &qword_1001138C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v116 = (&v101 - v21);
  v112 = sub_10003AE84(&qword_100158F20, &qword_1001138B8);
  v22 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v114 = &v101 - v23;
  v24 = sub_10003AE84(&qword_100158F10, &qword_1001138B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v101 - v27;
  v29 = *a1;
  v113 = v26;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v29 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v30 = *(a2 + 8 * v29 + 32);
LABEL_5:
  v31 = v30;
  v32 = static HorizontalAlignment.leading.getter();
  v33 = v116;
  *v116 = v32;
  v33[1] = 0;
  *(v33 + 16) = 0;
  v115 = v31;
  sub_1000C66CC(v31, 1, v18);
  LOBYTE(v31) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v18[*(sub_10003AE84(&qword_100158F40, &qword_1001138D0) + 36)];
  *v42 = v31;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(v31) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v43 = &v18[*(v13 + 36)];
  *v43 = v31;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v109 = a3;
  v110 = a7;
  v108 = v28;
  if (a4 == a5 && v29 == v107)
  {
    v48 = 0;
    v106 = 0;
    v107 = 0;
    v104 = 0;
    v105 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_10;
  }

  if (qword_1001545E0 != -1)
  {
    goto LABEL_24;
  }

LABEL_9:
  v56 = qword_100160C08;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v57 = v129;
  v106 = v130;
  v107 = v128;
  v58 = v131;
  v104 = v133;
  v105 = v132;
  v59 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v52 = v60;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  LOBYTE(v126[0]) = v57;
  LOBYTE(v119) = v58;
  LOBYTE(v134) = 0;
  v51 = v57;
  v49 = v59;
  v50 = v119;
  v48 = v56;

LABEL_10:
  v102 = v51;
  v103 = v50;
  v64 = sub_10003AE84(&qword_100158F48, &qword_1001138D8);
  v65 = v116 + *(v64 + 44);
  v66 = v111;
  sub_100008E68(v18, v111, &qword_100158F38, &qword_1001138C8);
  sub_100008E68(v66, v65, &qword_100158F38, &qword_1001138C8);
  v67 = v65 + *(sub_10003AE84(&qword_100158F50, &qword_1001138E0) + 48);
  v68 = v106;
  v69 = v107;
  *&v119 = v48;
  *(&v119 + 1) = v107;
  *&v120 = v51;
  *(&v120 + 1) = v106;
  *&v121 = v50;
  v71 = v104;
  v70 = v105;
  *(&v121 + 1) = v105;
  *&v122 = v104;
  *(&v122 + 1) = v49;
  *&v123 = v52;
  *(&v123 + 1) = v53;
  *&v124 = v54;
  *(&v124 + 1) = v55;
  v125 = 0;
  *(v67 + 96) = 0;
  v72 = v120;
  *v67 = v119;
  *(v67 + 16) = v72;
  v73 = v122;
  *(v67 + 32) = v121;
  *(v67 + 48) = v73;
  v74 = v124;
  *(v67 + 64) = v123;
  *(v67 + 80) = v74;
  sub_100008E68(&v119, v126, qword_100158F58, &qword_1001138E8);
  sub_1000035CC(v18, &qword_100158F38, &qword_1001138C8);
  v126[0] = v48;
  v126[1] = v69;
  v126[2] = v102;
  v126[3] = v68;
  v126[4] = v103;
  v126[5] = v70;
  v126[6] = v71;
  v126[7] = v49;
  v126[8] = v52;
  v126[9] = v53;
  v126[10] = v54;
  v126[11] = v55;
  v127 = 0;
  sub_1000035CC(v126, qword_100158F58, &qword_1001138E8);
  sub_1000035CC(v66, &qword_100158F38, &qword_1001138C8);
  v75 = CalculateUnit.id.getter();
  v77 = v76;
  v78 = type metadata accessor for UnitConversionPopoverView();
  v79 = (v109 + *(v78 + 48));
  v80 = *(v79 + 2);
  v134 = *v79;
  *&v135 = v80;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (!v118)
  {

    v81 = v108;
    goto LABEL_19;
  }

  v81 = v108;
  if (v75 != v117 || v118 != v77)
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v82)
    {
      goto LABEL_16;
    }

LABEL_19:
    v83 = static Color.clear.getter();
    goto LABEL_20;
  }

LABEL_16:
  if (qword_1001545F8 != -1)
  {
    swift_once();
  }

  v83 = qword_100160C20;

LABEL_20:
  v84 = static Edge.Set.all.getter();
  v85 = v114;
  sub_10000D5B8(v116, v114, &qword_100158F30, &qword_1001138C0);
  v86 = v85 + *(v112 + 36);
  *v86 = v83;
  *(v86 + 8) = v84;
  v87 = *(v78 + 80);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10000D5B8(v85, v81, &qword_100158F20, &qword_1001138B8);
  v88 = (v81 + *(v113 + 36));
  v89 = v135;
  *v88 = v134;
  v88[1] = v89;
  v88[2] = v136;
  LOBYTE(v87) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;

  v98 = v110;
  sub_10000D5B8(v81, v110, &qword_100158F10, &qword_1001138B0);
  result = sub_10003AE84(&qword_100158F00, &qword_1001138A8);
  v100 = v98 + *(result + 36);
  *v100 = v87;
  *(v100 + 8) = v91;
  *(v100 + 16) = v93;
  *(v100 + 24) = v95;
  *(v100 + 32) = v97;
  *(v100 + 40) = 0;
  return result;
}

uint64_t sub_1000CA170@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 displayName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (qword_1001546C0 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D20;
  v8 = qword_100154588;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_100160BB0;

  v10 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = static Edge.Set.leading.getter();
  result = EdgeInsets.init(_all:)();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  *(a2 + 80) = 0;
  *(a2 + 88) = v19;
  *(a2 + 96) = v21;
  *(a2 + 104) = v23;
  *(a2 + 112) = v25;
  *(a2 + 120) = v27;
  *(a2 + 128) = 0;
  *(a2 + 136) = v28;
  *(a2 + 144) = v30;
  *(a2 + 152) = v31;
  *(a2 + 160) = v32;
  *(a2 + 168) = v33;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_1000CA30C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for UnitConversionPopoverView() + 48));
  v4 = *v2;
  v5 = *(v2 + 2);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  static UnitPoint.center.getter();
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_10007BBE4(&qword_100158C00);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_1000CA404@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v68 = a2;
  v3 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v76 = &v68 - v5;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100154410 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
  v78 = Image.resizable(capInsets:resizingMode:)();
  (*(v9 + 8))(v12, v8);
  v13 = type metadata accessor for UnitConversionPopoverView();
  v14 = *(v13 + 68);
  v15 = v13;
  v16 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  v70 = v16;
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v92;
  v81 = v91;
  v82 = v93;
  v18 = v94;
  v79 = v92;
  v80 = v94;
  v77 = v95;
  v84 = v96;
  v83 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v104) = v17;
  LOBYTE(v111._countAndFlagsBits) = v18;
  LOBYTE(v97) = 0;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._object = 0x8000000100108D80;
  v27._countAndFlagsBits = 0x1000000000000012;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
  v71 = v15;
  v28 = (a1 + *(v15 + 56));
  v29 = *v28;
  v30 = *(v28 + 2);
  v104 = v29;
  *&v105 = v30;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v111);

  v31._countAndFlagsBits = 10256610;
  v31._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  LocalizedStringKey.init(stringInterpolation:)();
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  v35 = a1;
  v69 = a1;
  v37 = v36;
  v38 = v35 + *(v15 + 60);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v39 = type metadata accessor for Font.Design();
  v40 = *(*(v39 - 8) + 56);
  v41 = v76;
  v40(v76, 1, 1, v39);
  static Font.system(size:weight:design:)();
  sub_1000035CC(v41, &qword_1001567E0, &qword_10010F970);
  v42 = Text.font(_:)();
  v73 = v43;
  v74 = v42;
  v72 = v44;
  v75 = v45;

  sub_10000C6AC(v32, v34, v37 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v46 = Text.init(_:tableName:bundle:comment:)();
  v48 = v47;
  v50 = v49;
  v51 = v69 + *(v71 + 64);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v40(v41, 1, 1, v39);
  static Font.system(size:weight:design:)();
  sub_1000035CC(v41, &qword_1001567E0, &qword_10010F970);
  v52 = Text.font(_:)();
  v54 = v53;
  LOBYTE(v51) = v55;
  v76 = v56;

  sub_10000C6AC(v46, v48, v50 & 1);

  v57 = v72 & 1;
  v87 = v72 & 1;
  *&v97 = v78;
  *(&v97 + 1) = v81;
  LOBYTE(v98) = v79;
  *(&v98 + 1) = *v90;
  DWORD1(v98) = *&v90[3];
  *(&v98 + 1) = v82;
  LOBYTE(v99) = v80;
  *(&v99 + 1) = *v89;
  DWORD1(v99) = *&v89[3];
  *(&v99 + 1) = v77;
  *&v100 = v84;
  BYTE8(v100) = v83;
  HIDWORD(v100) = *&v88[3];
  *(&v100 + 9) = *v88;
  *&v101 = v20;
  *(&v101 + 1) = v22;
  *&v102 = v24;
  *(&v102 + 1) = v26;
  v103 = 0;
  LOBYTE(v110) = 0;
  v108 = v101;
  v109 = v102;
  v106 = v99;
  v107 = v100;
  v104 = v97;
  v105 = v98;
  v86 = v72 & 1;
  LOBYTE(v32) = v51 & 1;
  v85 = v51 & 1;
  v58 = v98;
  v59 = v68;
  *v68 = v97;
  v59[1] = v58;
  v60 = v106;
  v61 = v107;
  v62 = v109;
  v63 = v110;
  v59[4] = v108;
  v59[5] = v62;
  v59[2] = v60;
  v59[3] = v61;
  v64 = v73;
  v65 = v74;
  *(v59 + 12) = v63;
  *(v59 + 13) = v65;
  *(v59 + 14) = v64;
  *(v59 + 120) = v57;
  v66 = v76;
  *(v59 + 16) = v75;
  *(v59 + 17) = v52;
  *(v59 + 18) = v54;
  *(v59 + 152) = v32;
  *(v59 + 20) = v66;
  sub_100008E68(&v97, &v111, &qword_100158E48, &qword_100113828);
  sub_10006564C(v65, v64, v57);

  sub_10006564C(v52, v54, v32);

  sub_10000C6AC(v52, v54, v32);

  sub_10000C6AC(v65, v64, v87);

  v111._countAndFlagsBits = v78;
  v111._object = v81;
  v112 = v79;
  *v113 = *v90;
  *&v113[3] = *&v90[3];
  v114 = v82;
  v115 = v80;
  *v116 = *v89;
  *&v116[3] = *&v89[3];
  v117 = v77;
  v118 = v84;
  v119 = v83;
  *v120 = *v88;
  *&v120[3] = *&v88[3];
  v121 = v20;
  v122 = v22;
  v123 = v24;
  v124 = v26;
  v125 = 0;
  return sub_1000035CC(&v111, &qword_100158E48, &qword_100113828);
}

uint64_t sub_1000CABAC(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for UnitConversionPopoverView() + 48));
  v10 = *(v9 + 2);
  v34 = *v9;
  v35 = v10;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v12 = v33[0];
  v11 = v33[1];
  v13 = CalculateUnit.id.getter();
  if (v11)
  {
    if (v12 == v13 && v11 == v14)
    {

      goto LABEL_21;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v16 = a1[2];
  v17 = *(a1 + 24);
  if (*(a1 + 65) != 1)
  {

    if (v17)
    {
      sub_100074054();

      sub_1000733A8(a2);
      goto LABEL_12;
    }

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    sub_100074054();

    sub_1000733A8(a2);
LABEL_15:

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v18 = 0;
    goto LABEL_16;
  }

  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    sub_100074054();

    sub_1000726F8(a2);
    goto LABEL_15;
  }

  sub_100074054();

  sub_1000726F8(a2);
LABEL_12:

  v18 = 1;
LABEL_16:
  v22 = sub_100074054();

  v23 = *(v22 + 16);

  sub_1000AABE0(a2);

  v24 = *a1;
  v25 = *(a1 + 8);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v24 = v34;
  }

  v27 = *(v24 + 16);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v29 = sub_100074054();

  sub_1000D62AC(v29);

LABEL_21:
  v30 = a1[7];
  v31 = *(a1 + 64);
  *&v34 = a1[6];
  *(&v34 + 1) = v30;
  LOBYTE(v35) = v31;
  LOBYTE(v33[0]) = 0;
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000CB140(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  v9 = sub_100074054();

  v10 = *(v9 + 16);

  sub_1000AB33C();
}

uint64_t sub_1000CB2B0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000CB320(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000CB37C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10003AE84(&qword_100158C98, &qword_100113680);
  v10 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v12 = &v21 - v11;
  (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5);
  v13 = Image.resizable(capInsets:resizingMode:)();
  (*(v6 + 8))(v9, v5);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v25[38] = v29;
  *&v25[22] = v28;
  *&v25[6] = v27;
  *&v24[2] = *v25;
  v26 = 1;
  v23 = v13;
  *v24 = 1;
  *&v24[18] = *&v25[16];
  *&v24[34] = *&v25[32];
  *&v24[48] = *(&v29 + 1);
  *&v30[0] = a1;
  *(&v30[0] + 1) = a2;
  sub_10006345C();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10003AE84(&qword_100158CA8, &qword_100113688);
  sub_1000D1200();
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v14, v16, v18 & 1);

  v30[2] = *&v24[16];
  v30[3] = *&v24[32];
  v31 = *&v24[48];
  v30[0] = v23;
  v30[1] = *v24;
  sub_1000035CC(v30, &qword_100158CA8, &qword_100113688);
  v19 = v22;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_1000035CC(v12, &qword_100158C98, &qword_100113680);
  result = sub_10003AE84(&qword_100158C60, &unk_100113658);
  *(v19 + *(result + 36)) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v197 = a2;
  v179 = type metadata accessor for DynamicTypeSize();
  v178 = *(v179 - 8);
  v3 = *(v178 + 64);
  __chkstk_darwin(v179);
  v175 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v172 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_10003AE84(&qword_100158C18, &qword_100113608);
  v8 = *(*(v173 - 8) + 64);
  __chkstk_darwin(v173);
  v174 = &v151 - v9;
  v177 = sub_10003AE84(&qword_100158C20, &qword_100113610);
  v10 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v176 = &v151 - v11;
  v12 = sub_10003AE84(&qword_100158C28, &unk_100113618);
  v195 = *(v12 - 8);
  v196 = v12;
  v13 = *(v195 + 64);
  __chkstk_darwin(v12);
  v180 = &v151 - v14;
  v15 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v189 = &v151 - v17;
  v198 = type metadata accessor for Date();
  v192 = *(v198 - 8);
  v18 = *(v192 + 64);
  __chkstk_darwin(v198);
  v191 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10003AE84(&qword_100158C30, &qword_100113628);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v194 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v193 = &v151 - v24;
  v188 = sub_10003AE84(&qword_100158C38, &qword_100113630);
  v25 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v27 = &v151 - v26;
  v186 = sub_10003AE84(&qword_100158C40, &qword_100113638);
  v28 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v187 = &v151 - v29;
  v168 = type metadata accessor for PlainButtonStyle();
  v160 = *(v168 - 8);
  v30 = *(v160 + 64);
  __chkstk_darwin(v168);
  v158 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_10003AE84(&qword_100158C48, &qword_100113640);
  v157 = *(v166 - 8);
  v32 = *(v157 + 64);
  __chkstk_darwin(v166);
  v156 = &v151 - v33;
  v167 = sub_10003AE84(&qword_100158C50, &qword_100113648);
  v161 = *(v167 - 8);
  v34 = *(v161 + 64);
  __chkstk_darwin(v167);
  v159 = &v151 - v35;
  v163 = sub_10003AE84(&qword_100158C58, &qword_100113650);
  v36 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v165 = &v151 - v37;
  v171 = sub_10003AE84(&qword_100158C60, &unk_100113658);
  v38 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v155 = &v151 - v39;
  v40 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v151 - v42;
  v170 = type metadata accessor for URL();
  v169 = *(v170 - 8);
  v44 = *(v169 + 64);
  v45 = __chkstk_darwin(v170);
  v154 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v162 = &v151 - v47;
  v182 = sub_10003AE84(&qword_100158C68, &unk_100113668);
  v48 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v164 = &v151 - v49;
  v50 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v53 = &v151 - v52;
  v185 = type metadata accessor for EnvironmentValues();
  v184 = *(v185 - 8);
  v54 = *(v184 + 64);
  __chkstk_darwin(v185);
  v183 = &v151 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  v60 = &v151 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10003AE84(&qword_100158C70, &qword_100113678);
  v62 = *(*(v61 - 8) + 64);
  v63 = __chkstk_darwin(v61 - 8);
  v190 = &v151 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v199 = &v151 - v65;
  v66 = *(a1 + 16);
  v67 = a1;
  v68 = *(a1 + 24);

  v181 = v68;
  if ((v68 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v69 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v70 = v183;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v184 + 8))(v70, v185);
  }

  v71 = sub_100074054();

  v72 = *(v71 + 24);

  sub_100050A28(v53);

  if ((*(v57 + 48))(v53, 1, v56) == 1)
  {
    sub_1000035CC(v53, &qword_100154F60, &qword_10010C620);
  }

  else
  {
    (*(v57 + 32))(v60, v53, v56);
    v73 = StocksKitCurrencyCache.Provider.logo.getter();
    if (v73)
    {
      v74 = v73;
      StocksKitCurrencyCache.Provider.destination.getter();
      v75 = v169;
      v76 = v170;
      v77 = (*(v169 + 48))(v43, 1, v170);
      v153 = v74;
      if (v77 == 1)
      {
        sub_1000035CC(v43, &qword_100155078, &qword_10010DBA0);
        v78 = StocksKitCurrencyCache.Provider.name.getter();
        v79 = v155;
        sub_1000CB37C(v78, v80, v155);

        sub_100008E68(v79, v165, &qword_100158C60, &unk_100113658);
        swift_storeEnumTagMultiPayload();
        v81 = sub_100004880(&qword_100158C80, &qword_100158C48, &qword_100113640);
        v82 = sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle);
        v200 = v166;
        v201 = v168;
        v202 = v81;
        v203 = v82;
        swift_getOpaqueTypeConformance2();
        sub_1000D108C();
        v83 = v164;
        _ConditionalContent<>.init(storage:)();
        sub_1000035CC(v79, &qword_100158C60, &unk_100113658);
      }

      else
      {
        v86 = v162;
        (*(v75 + 32))(v162, v43, v76);
        v87 = (*(v75 + 16))(v154, v86, v76);
        __chkstk_darwin(v87);
        *(&v151 - 4) = v67;
        *(&v151 - 3) = v74;
        v149 = v60;
        v155 = sub_1000D108C();
        v88 = v156;
        Link.init(destination:label:)();
        v89 = v158;
        PlainButtonStyle.init()();
        v154 = sub_100004880(&qword_100158C80, &qword_100158C48, &qword_100113640);
        v152 = sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle);
        v90 = v159;
        v91 = v166;
        v92 = v168;
        View.buttonStyle<A>(_:)();
        (*(v160 + 8))(v89, v92);
        (*(v157 + 8))(v88, v91);
        v93 = v161;
        v94 = v167;
        (*(v161 + 16))(v165, v90, v167);
        swift_storeEnumTagMultiPayload();
        v200 = v91;
        v201 = v92;
        v202 = v154;
        v203 = v152;
        swift_getOpaqueTypeConformance2();
        v83 = v164;
        _ConditionalContent<>.init(storage:)();
        (*(v93 + 8))(v90, v94);
        (*(v169 + 8))(v162, v170);
      }

      v95 = v198;
      sub_100008E68(v83, v187, &qword_100158C68, &unk_100113668);
      swift_storeEnumTagMultiPayload();
      sub_1000D0F40();
      sub_1000D128C();
      _ConditionalContent<>.init(storage:)();

      sub_1000035CC(v83, &qword_100158C68, &unk_100113668);
      (*(v57 + 8))(v60, v56);
      v85 = v193;
      v84 = v95;
      goto LABEL_14;
    }

    (*(v57 + 8))(v60, v56);
  }

  v84 = v198;
  v85 = v193;
  if (qword_100154418 != -1)
  {
    swift_once();
  }

  sub_1000CB37C(0x6620216F6F686179, 0xEE0065636E616E69, v27);
  *&v27[*(v188 + 36)] = 0x3FD3333333333333;
  sub_100008E68(v27, v187, &qword_100158C38, &qword_100113630);
  swift_storeEnumTagMultiPayload();
  sub_1000D0F40();
  sub_1000D128C();
  _ConditionalContent<>.init(storage:)();
  sub_1000035CC(v27, &qword_100158C38, &qword_100113630);
LABEL_14:

  if ((v181 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v96 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v97 = v183;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v184 + 8))(v97, v185);
  }

  v98 = sub_100074054();

  v99 = *(v98 + 24);

  swift_getKeyPath();
  v200 = v99;
  sub_1000CEBE0(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v100 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
  swift_beginAccess();
  v101 = v99 + v100;
  v102 = v189;
  sub_100008E68(v101, v189, &qword_100154E10, &qword_10010C4C0);

  v103 = v192;
  if ((*(v192 + 48))(v102, 1, v84) == 1)
  {
    sub_1000035CC(v102, &qword_100154E10, &qword_10010C4C0);
    v104 = 1;
    v105 = v196;
  }

  else
  {
    (*(v103 + 32))(v191, v102, v84);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v106._countAndFlagsBits = 0x2064657461647055;
    v106._object = 0xE800000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v106);
    v107._countAndFlagsBits = sub_10006D154();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v107);

    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v108);
    LocalizedStringKey.init(stringInterpolation:)();
    v150 = 256;
    v149 = 0;
    v109 = Text.init(_:tableName:bundle:comment:)();
    v111 = v110;
    v200 = v109;
    v201 = v110;
    v113 = v112 & 1;
    LOBYTE(v202) = v112 & 1;
    v203 = v114;
    v115 = v174;
    View.accessibilityIdentifier(_:)();
    sub_10000C6AC(v109, v111, v113);

    *&v115[*(sub_10003AE84(&qword_100158CC0, &qword_1001136D0) + 36)] = 0;
    if (qword_1001545C0 != -1)
    {
      swift_once();
    }

    v116 = qword_100160BE8;
    KeyPath = swift_getKeyPath();
    v118 = &v115[*(sub_10003AE84(&qword_100158CC8, &unk_1001136D8) + 36)];
    *v118 = KeyPath;
    v118[1] = v116;
    v119 = qword_1001546B8;

    if (v119 != -1)
    {
      swift_once();
    }

    v120 = qword_100160D18;
    v121 = swift_getKeyPath();
    v122 = &v115[*(v173 + 36)];
    *v122 = v121;
    v122[1] = v120;
    v123 = v178;
    v124 = v115;
    v125 = v175;
    v126 = v179;
    (*(v178 + 104))(v175, enum case for DynamicTypeSize.medium(_:), v179);
    sub_1000D1318();

    v127 = v176;
    View.dynamicTypeSize(_:)();
    (*(v123 + 8))(v125, v126);
    sub_1000035CC(v124, &qword_100158C18, &qword_100113608);
    v128 = swift_getKeyPath();
    v129 = v127 + *(sub_10003AE84(&qword_100158CF0, &qword_100113718) + 36);
    *v129 = v128;
    *(v129 + 8) = 0;
    *(v127 + *(sub_10003AE84(&qword_100158CF8, &qword_100113720) + 36)) = 256;
    v130 = swift_getKeyPath();
    v131 = (v127 + *(v177 + 36));
    *v131 = v130;
    v131[1] = 0x3FE999999999999ALL;
    sub_1000D15FC();
    v132 = v180;
    View.lineHeightMultiple(_:)();
    sub_1000035CC(v127, &qword_100158C20, &qword_100113610);
    LOBYTE(v128) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    v140 = v139;
    (*(v103 + 8))(v191, v198);
    v105 = v196;
    v141 = v132 + *(v196 + 36);
    *v141 = v128;
    *(v141 + 8) = v134;
    *(v141 + 16) = v136;
    *(v141 + 24) = v138;
    *(v141 + 32) = v140;
    *(v141 + 40) = 0;
    sub_10000D5B8(v132, v85, &qword_100158C28, &unk_100113618);
    v104 = 0;
  }

  (*(v195 + 56))(v85, v104, 1, v105);
  v142 = v199;
  v143 = v190;
  sub_100008E68(v199, v190, &qword_100158C70, &qword_100113678);
  v144 = v194;
  sub_100008E68(v85, v194, &qword_100158C30, &qword_100113628);
  v145 = v197;
  sub_100008E68(v143, v197, &qword_100158C70, &qword_100113678);
  v146 = sub_10003AE84(&qword_100158CB8, &qword_1001136C8);
  v147 = v145 + *(v146 + 48);
  *v147 = 0;
  *(v147 + 8) = 1;
  sub_100008E68(v144, v145 + *(v146 + 64), &qword_100158C30, &qword_100113628);
  sub_1000035CC(v85, &qword_100158C30, &qword_100113628);
  sub_1000035CC(v142, &qword_100158C70, &qword_100113678);
  sub_1000035CC(v144, &qword_100158C30, &qword_100113628);
  return sub_1000035CC(v143, &qword_100158C70, &qword_100113678);
}