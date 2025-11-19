void sub_100127A68(void *a1, char a2)
{
  sub_1000C773C(&qword_1002D1AB8);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong || (v5 = [Strong objectAtIndexedSubscript:1], Strong, !v5))
  {
    v17 = [a1 waveformViewController];
    if (v17)
    {
      v16 = v17;
      [v17 bringAuxWaveformViewControllerToFront:0];
LABEL_15:

      sub_100127D04(a1);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
LABEL_8:
    v13 = [a1 waveformViewController];
    if (v13)
    {
      v14 = v13;
      Bindable.wrappedValue.getter();
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v18 + 24);

      if (v15 == 1)
      {
        v16 = v5;
      }

      else
      {
        v16 = 0;
      }

      [v14 bringAuxWaveformViewControllerToFront:v16];

      goto LABEL_15;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = [a1 waveformViewController];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  [v6 addAuxWaveformViewController:v5];

  v8 = [v5 waveformViewController];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = [a1 waveformViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 zoomingDelegate];

    [v9 setZoomingDelegate:v12];
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

LABEL_20:
  __break(1u);
}

void sub_100127D04(void *a1)
{
  sub_1000C773C(&qword_1002D1AB8);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v8 + 24);

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v8 + 40);
  v3 = *(v8 + 48);

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v8 + 49);

  [a1 updateColorStatesSelected:v1 == 0 muted:(v3 ^ 1u) & (v2 == 0) trimMode:v4];
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v6 = [Strong objectAtIndexedSubscript:1];

    if (v6)
    {
      [v6 updateColorStatesSelected:v1 == 1 muted:(v3 ^ 1u) & (v2 == 1) trimMode:v4];
    }
  }
}

void sub_100127F4C(uint64_t a1)
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.autoupdatingCurrent.getter();
  Locale.numberingSystem.getter();
  v12 = Locale.NumberingSystem.identifier.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v15 = v12 == 1635149156 && v14 == 0xE400000000000000;
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = 6907950;
LABEL_7:

    v17 = 0xE300000000000000;
    goto LABEL_8;
  }

  v16 = 7495982;
  if (v12 == 1650553441 && v14 == 0xE400000000000000)
  {
    goto LABEL_7;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

LABEL_8:
  sub_1000C773C(&qword_1002D1AB8);
  Bindable.wrappedValue.getter();
  v18 = v32;
  swift_getKeyPath();
  v32 = v18;
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v18 + 40);
  v20 = *(v18 + 48);

  if ((v20 & 1) != 0 || v19 != a1)
  {
    if (!__OFADD__(a1, 1))
    {
      v31 = a1 + 1;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v26;
      v24 = 0x6465646E756F722ELL;
      v25 = 0xE800000000000000;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    if (!__OFADD__(a1, 1))
    {
      v31 = a1 + 1;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;

      v32 = v21;
      v33 = v23;
      v24 = 0x6465646E756F722ELL;
      v25 = 0xEE006873616C732ELL;
LABEL_14:
      String.append(_:)(*&v24);
      v27._countAndFlagsBits = v16;
      v27._object = v17;
      String.append(_:)(v27);

      return;
    }
  }

  __break(1u);
}

BOOL sub_1001282E4()
{
  sub_1000C773C(&qword_1002D1AB8);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v4 + 33);

  if (v0)
  {
    return 1;
  }

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 49);

  if (v2 != 1)
  {
    return 0;
  }

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v4 + 16);

  return v3 == 1;
}

uint64_t sub_100128460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = type metadata accessor for RCMultipleWaveformsView(0);
  v105 = *(v3 - 8);
  v4 = *(v105 + 64);
  __chkstk_darwin(v3 - 8, v5);
  v6 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000C773C(&qword_1002D1B60);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94, v7);
  v92 = (&v84 - v8);
  v97 = sub_1000C773C(&qword_1002D1B68);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97, v9);
  v106 = &v84 - v10;
  v100 = sub_1000C773C(&qword_1002D1B70);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100, v11);
  v96 = &v84 - v12;
  v13 = sub_1000C773C(&qword_1002D1B78);
  v102 = *(v13 - 8);
  v103 = v13;
  __chkstk_darwin(v13, v14);
  v99 = &v84 - v15;
  v16 = sub_1000C773C(&qword_1002D1B80);
  v107 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v101 = &v84 - v18;
  v19 = sub_1000C773C(&qword_1002D1AB8);
  Bindable.wrappedValue.getter();
  v20 = v113;
  swift_getKeyPath();
  v113 = v20;
  v21 = sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v110 = v19;
  Bindable.wrappedValue.getter();
  v22 = v113;
  swift_getKeyPath();
  v113 = v22;
  v108 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v24 = [Strong objectAtIndexedSubscript:0], Strong, v24))
  {
    v85 = 0x8000000100231930;
    v104 = v2;
    v87 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100129E08(v2, v87);
    v25 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v26 = (v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = *(v105 + 80);
    v27 = swift_allocObject();
    v28 = v25;
    v89 = v25;
    v88 = type metadata accessor for RCMultipleWaveformsView;
    sub_10012A1C8(v6, v27 + v25, type metadata accessor for RCMultipleWaveformsView);
    *(v27 + v26) = v24;
    v113 = v24;
    v114 = sub_10012A6E0;
    v115 = v27;
    v116 = 0;
    v117 = 0;
    v118 = v24;
    v29 = v24;
    v30 = v104;
    Bindable.wrappedValue.getter();
    v31 = v111;
    swift_getKeyPath();
    v86 = v16;
    v111 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v31 + 16);

    v111 = v32;
    v33 = v30;
    v34 = v30;
    v35 = v87;
    sub_100129E08(v33, v87);
    v105 = v26;
    v36 = swift_allocObject();
    sub_10012A1C8(v35, v36 + v28, type metadata accessor for RCMultipleWaveformsView);
    *(v36 + v26) = v29;
    v37 = v29;
    v91 = sub_1000C773C(&qword_1002D1B90);
    v38 = sub_100008034(&qword_1002D1B98, &qword_1002D1B90);
    v39 = v92;
    View.onChange<A>(of:initial:_:)();

    Bindable.wrappedValue.getter();
    v40 = v113;
    swift_getKeyPath();
    v113 = v40;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = v40[3];

    v111 = v41;
    sub_100129E08(v34, v35);
    v42 = v105;
    v43 = swift_allocObject();
    v44 = v89;
    v45 = v35;
    v46 = v88;
    sub_10012A1C8(v45, v43 + v89, v88);
    *(v43 + v42) = v37;
    v84 = v37;
    v113 = v91;
    v114 = &type metadata for Int;
    v115 = v38;
    v116 = &protocol witness table for Int;
    v91 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v94;
    View.onChange<A>(of:initial:_:)();

    v93[1](v39, v48);
    v49 = v104;
    Bindable.wrappedValue.getter();
    v50 = v113;
    swift_getKeyPath();
    v113 = v50;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v51 = v50[5];
    LOBYTE(v41) = *(v50 + 48);

    v111 = v51;
    v112 = v41;
    v52 = v87;
    sub_100129E08(v49, v87);
    v53 = v105;
    v54 = swift_allocObject();
    sub_10012A1C8(v52, v54 + v44, v46);
    v55 = v84;
    *(v54 + v53) = v84;
    v93 = v55;
    v56 = v52;
    v92 = sub_1000C773C(&qword_1002D1BA0);
    v113 = v48;
    v114 = &type metadata for Int;
    v115 = OpaqueTypeConformance2;
    v116 = &protocol witness table for Int;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = sub_10001E568();
    v59 = v96;
    v60 = v97;
    v61 = v106;
    View.onChange<A>(of:initial:_:)();

    (*(v95 + 8))(v61, v60);
    v62 = v104;
    Bindable.wrappedValue.getter();
    v63 = v113;
    swift_getKeyPath();
    v113 = v63;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v61) = v63[49];

    LOBYTE(v111) = v61;
    v64 = v62;
    sub_100129E08(v62, v56);
    v65 = v105;
    v66 = swift_allocObject();
    sub_10012A1C8(v56, v66 + v89, v88);
    v67 = v93;
    *(v66 + v65) = v93;
    v106 = v67;
    v113 = v60;
    v114 = v92;
    v115 = v57;
    v116 = v58;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v99;
    v70 = v100;
    View.onChange<A>(of:initial:_:)();

    (*(v98 + 8))(v59, v70);
    v71 = v64;
    Bindable.wrappedValue.getter();
    v72 = v113;
    swift_getKeyPath();
    v113 = v72;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v65) = v72[32];

    LOBYTE(v111) = v65;
    v73 = swift_allocObject();
    *(v73 + 16) = 0xD000000000000019;
    v74 = v85;
    *(v73 + 24) = v85;
    v113 = v70;
    v114 = &type metadata for Bool;
    v115 = v68;
    v116 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v75 = v101;
    v76 = v103;
    v16 = v86;
    View.onChange<A>(of:initial:_:)();

    (*(v102 + 8))(v69, v76);
    v77 = static Alignment.bottomTrailing.getter();
    v79 = v78;
    v80 = v75 + *(v16 + 36);
    sub_100129260(v71, 0xD000000000000019, v74, v80);

    v81 = (v80 + *(sub_1000C773C(&qword_1002D1BB0) + 36));
    *v81 = v77;
    v81[1] = v79;
    sub_10002F264(v75, v109);
    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  return (*(v107 + 56))(v109, v82, 1, v16);
}

uint64_t sub_100129138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.InvalidationReason();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  (*(v5 + 104))(v8, enum case for Tips.InvalidationReason.actionPerformed(_:), v4);
  sub_1000DD994();

  Tip.invalidate(reason:)();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_100129260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000C773C(&qword_1002D1BB8);
  __chkstk_darwin(v8, v9);
  v11 = &v43 - v10;
  v12 = sub_1000C773C(&qword_1002D1BC0);
  v43 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v43 - v18;
  if (sub_1001282E4())
  {
    v20 = *(v43 + 56);

    return v20(a4, 1, 1, v12);
  }

  else
  {
    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v22 = sub_1000C773C(&qword_1002D1BC8);
    sub_100129604(a1, a2, a3, &v11[*(v22 + 44)]);
    v23 = static Edge.Set.bottom.getter();
    v24 = [objc_opt_self() sharedStyleProvider];
    [v24 annotationViewHeight];

    EdgeInsets.init(_all:)();
    v25 = &v11[*(v8 + 36)];
    *v25 = v23;
    *(v25 + 1) = v26;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    v25[40] = 0;
    sub_1000C773C(&qword_1002D1BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100241790;
    v31 = static Edge.Set.trailing.getter();
    *(inited + 32) = v31;
    v32 = static Edge.Set.bottom.getter();
    *(inited + 33) = v32;
    v33 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v31)
    {
      v33 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v32)
    {
      v33 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_10001DBEC(v11, v16, &qword_1002D1BB8);
    v42 = &v16[*(v12 + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    sub_10001DBEC(v16, v19, &qword_1002D1BC0);
    sub_10001DBEC(v19, a4, &qword_1002D1BC0);
    return (*(v43 + 56))(a4, 0, 1, v12);
  }
}

uint64_t sub_100129604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v76 = a3;
  v75 = a2;
  v73 = a4;
  v66 = type metadata accessor for RCSegmentedSwitch();
  __chkstk_darwin(v66, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000C773C(&qword_1002D1BD8);
  __chkstk_darwin(v67, v8);
  v70 = &v61 - v9;
  v69 = sub_1000C773C(&qword_1002D1BE0);
  v11 = __chkstk_darwin(v69, v10);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v68 = &v61 - v15;
  __chkstk_darwin(v14, v16);
  v71 = &v61 - v17;
  sub_1000C773C(&qword_1002D1AB8);
  Bindable.wrappedValue.getter();
  v18 = v81;
  swift_getKeyPath();
  v81 = v18;
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v18 + 34);

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v74 = 0;
  if ((v19 & 1) == 0)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v22 = v89;
    v23 = v91;
    v24 = v93;
    v25 = v94;
    LOBYTE(v81) = v90;
    LOBYTE(v77) = v92;
    v74 = v90;
    v26 = v92;

    v20 = v75;
    v21 = v27;
  }

  v62 = v24;
  v75 = v22;
  v63 = v23;
  v76 = v26;
  *&v64 = v20;
  *(&v64 + 1) = v21;
  v65 = v25;
  v61 = *(type metadata accessor for RCMultipleWaveformsView(0) + 20);
  sub_1000C773C(&qword_1002D1BE8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100241790;
  sub_100127F4C(0);
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  *(v28 + 48) = 1;
  sub_100127F4C(1);
  *(v28 + 56) = v31;
  *(v28 + 64) = v32;
  *(v28 + 72) = 1;
  Bindable.wrappedValue.getter();
  v33 = v81;
  swift_getKeyPath();
  v81 = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + 32);

  Bindable.wrappedValue.getter();
  v35 = v81;
  swift_getKeyPath();
  v81 = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v35 + 24);

  *&v7[*(v66 + 36)] = swift_getKeyPath();
  sub_1000C773C(&unk_1002D1BF0);
  swift_storeEnumTagMultiPayload();
  sub_1000CC430(a1 + v61, v7);
  *(v7 + 5) = v28;
  v7[48] = v34;
  *(v7 + 7) = v36;
  *&v77 = sub_1000D4788(_swiftEmptyArrayStorage);
  sub_1000C773C(&qword_1002D1478);
  State.init(wrappedValue:)();
  v37 = v82;
  *(v7 + 8) = v81;
  *(v7 + 9) = v37;
  Bindable.wrappedValue.getter();
  v38 = v81;
  swift_getKeyPath();
  v81 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v36) = *(v38 + 34);

  if (v36)
  {
    v39 = 0.5;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v70;
  sub_10012A1C8(v7, v70, type metadata accessor for RCSegmentedSwitch);
  *(v40 + *(v67 + 36)) = v39;
  Bindable.wrappedValue.getter();
  v41 = v81;
  swift_getKeyPath();
  v81 = v41;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v41 + 34);

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v45 = v40;
  v46 = v68;
  sub_10001DBEC(v45, v68, &qword_1002D1BD8);
  v47 = (v46 + *(v69 + 36));
  *v47 = KeyPath;
  v47[1] = sub_10001C484;
  v47[2] = v44;
  v48 = v71;
  sub_10001DBEC(v46, v71, &qword_1002D1BE0);
  v49 = v72;
  sub_10000B46C(v48, v72, &qword_1002D1BE0);
  v50 = v64;
  v77 = v64;
  v51 = *(&v64 + 1);
  *&v78 = v75;
  v52 = v74;
  v53 = v63;
  *(&v78 + 1) = v74;
  *&v79 = v63;
  v54 = v62;
  *(&v79 + 1) = v76;
  *&v80 = v62;
  v55 = v65;
  *(&v80 + 1) = v65;
  v56 = v78;
  v57 = v73;
  *v73 = v64;
  v57[1] = v56;
  v58 = v80;
  v57[2] = v79;
  v57[3] = v58;
  v59 = sub_1000C773C(&qword_1002D1C00);
  sub_10000B46C(v49, v57 + *(v59 + 48), &qword_1002D1BE0);
  sub_10000B46C(&v77, &v81, &qword_1002D1C08);
  sub_100003CBC(v48, &qword_1002D1BE0);
  sub_100003CBC(v49, &qword_1002D1BE0);
  v81 = v50;
  v82 = v51;
  v83 = v75;
  v84 = v52;
  v85 = v53;
  v86 = v76;
  v87 = v54;
  v88 = v55;
  return sub_100003CBC(&v81, &qword_1002D1C08);
}

unint64_t sub_100129DB0()
{
  result = qword_1002D1B88;
  if (!qword_1002D1B88)
  {
    type metadata accessor for _RCMultipleWaveformsViewController.RCMultipleWaveformsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1B88);
  }

  return result;
}

uint64_t sub_100129E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCMultipleWaveformsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100129E6C()
{
  v1 = (type metadata accessor for RCMultipleWaveformsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1000C773C(&qword_1002D1AB8);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100014B64(v5 + v1[7]);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10012A0A8(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10012A170@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10012A1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10012A28C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

unint64_t sub_10012A2BC()
{
  result = qword_1002D1C40;
  if (!qword_1002D1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C40);
  }

  return result;
}

unint64_t sub_10012A328()
{
  result = qword_1002D1C50;
  if (!qword_1002D1C50)
  {
    sub_1000C7784(&qword_1002D1C58);
    sub_10012A3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C50);
  }

  return result;
}

unint64_t sub_10012A3AC()
{
  result = qword_1002D1C60;
  if (!qword_1002D1C60)
  {
    sub_1000C7784(&qword_1002D1B80);
    sub_1000C7784(&qword_1002D1B78);
    sub_1000C7784(&qword_1002D1B70);
    sub_1000C7784(&qword_1002D1B68);
    sub_1000C7784(&qword_1002D1BA0);
    sub_1000C7784(&qword_1002D1B60);
    sub_1000C7784(&qword_1002D1B90);
    sub_100008034(&qword_1002D1B98, &qword_1002D1B90);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001E568();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100008034(&qword_1002D1C68, &qword_1002D1BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C60);
  }

  return result;
}

unint64_t sub_10012A604()
{
  result = qword_1002D1C70;
  if (!qword_1002D1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C70);
  }

  return result;
}

unint64_t sub_10012A658()
{
  result = qword_1002D1C78;
  if (!qword_1002D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserIDContext(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UserIDContext(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10012A998()
{
  result = qword_1002D1C80;
  if (!qword_1002D1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C80);
  }

  return result;
}

unint64_t sub_10012A9F0()
{
  result = qword_1002D1C88;
  if (!qword_1002D1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C88);
  }

  return result;
}

uint64_t sub_10012AAD0()
{
  v1 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v1 - 8, v2);
  v3 = *v0;
  v4 = v0[1];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100231CD0;
  v5._countAndFlagsBits = 0xD000000000000032;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v6);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  return LocalizedStringResource.init(stringInterpolation:)();
}

uint64_t sub_10012ACA8()
{
  v1 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v1 - 8, v2);
  v3 = *v0;
  v4 = v0[1];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100231E90;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v6);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  return LocalizedStringResource.init(stringInterpolation:)();
}

unint64_t sub_10012AD7C()
{
  result = qword_1002D1C90;
  if (!qword_1002D1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C90);
  }

  return result;
}

unint64_t sub_10012ADD4()
{
  result = qword_1002D1C98;
  if (!qword_1002D1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C98);
  }

  return result;
}

unint64_t sub_10012AE2C()
{
  result = qword_1002D1CA0;
  if (!qword_1002D1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CA0);
  }

  return result;
}

unint64_t sub_10012AE84()
{
  result = qword_1002D1CA8;
  if (!qword_1002D1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CA8);
  }

  return result;
}

unint64_t sub_10012AEDC()
{
  result = qword_1002D1CB0;
  if (!qword_1002D1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CB0);
  }

  return result;
}

Swift::Int sub_10012AF30()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10012AF74()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_10012AFD4()
{
  result = qword_1002D1CB8;
  if (!qword_1002D1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CB8);
  }

  return result;
}

unint64_t sub_10012B02C()
{
  result = qword_1002D1CC0;
  if (!qword_1002D1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CC0);
  }

  return result;
}

unint64_t sub_10012B084()
{
  result = qword_1002D1CC8;
  if (!qword_1002D1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CC8);
  }

  return result;
}

unint64_t sub_10012B0DC()
{
  result = qword_1002D1CD0;
  if (!qword_1002D1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CD0);
  }

  return result;
}

void sub_10012B144(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 recordingWithUniqueID:v9];

  if (v10)
  {
    v11 = [v10 url];
    if (v11)
    {
      v12 = v11;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 32))(a2, v8, v4);
      if ([v10 localAssetIsCurrent])
      {
LABEL_6:

        return;
      }

      (*(v5 + 8))(a2, v4);
    }

    sub_1000FC520();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_1000FC520();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();
}

id sub_10012B320(uint64_t a1)
{
  v2 = [objc_opt_self() sharedService];
  v6 = 0;
  LODWORD(a1) = [v2 endAccessSessionWithToken:a1 error:&v6];

  v3 = v6;
  if (a1)
  {

    return v3;
  }

  else
  {
    v5 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10012B430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = *(type metadata accessor for TranscriptionData(0) - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10012B5DC, 0, 0);
}

uint64_t sub_10012B5DC()
{
  v0[16] = sub_1000E724C(v0[3]);
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_10012B730;
  v3 = v0[15];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];

  return sub_10012BF50(v3, v6, v4, v5);
}

uint64_t sub_10012B730()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10012BE98;
  }

  else
  {
    *(v2 + 160) = objc_opt_self();
    v3 = sub_10012B888;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012B888()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v6 = v5;
  (*(v3 + 8))(v2, v4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[2] = 0;
  LODWORD(v1) = [v1 rc_updateFile:v6 withTranscriptionData:isa error:v0 + 2];

  v8 = v0[2];
  if (v1)
  {
    v9 = v0[12];
    v10 = v0[10];
    v27 = v0[9];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[4];
    sub_10012D314(v0[3], v9);
    v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v17 = swift_allocObject();
    v0[21] = v17;
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = v13;
    sub_1000FC4BC(v9, v17 + v16);
    v18 = v8;
    v19 = v14;

    v0[22] = [v19 context];
    (*(v12 + 104))(v27, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v20 = swift_task_alloc();
    v0[23] = v20;
    *v20 = v0;
    v20[1] = sub_10012BB64;
    v21 = v0[9];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_10012D378, v17, &type metadata for () + 8);
  }

  else
  {
    v23 = v0[16];
    v22 = v0[17];
    v24 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000D4388(v23, v22);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10012BB64()
{
  v2 = *v1;
  v2[24] = v0;

  v3 = v2[22];
  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v4 = sub_10012BDD0;
  }

  else
  {
    v6 = v2[8];
    v5 = v2[9];
    v7 = v2[7];

    (*(v6 + 8))(v5, v7);
    v4 = sub_10012BD14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012BD14()
{
  sub_1000D4388(v0[16], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012BDD0()
{
  v1 = v0[16];
  v2 = v0[17];

  sub_1000D4388(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10012BE98()
{
  sub_1000D4388(v0[16], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10012BF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10012C014, 0, 0);
}

uint64_t sub_10012C014()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v8 = v4;

  v0[10] = [v8 context];
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = type metadata accessor for URL();
  *v9 = v0;
  v9[1] = sub_10012C174;
  v11 = v0[8];
  v12 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v11, sub_10012D984, v7, v10);
}

uint64_t sub_10012C174()
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = v0;

  v4 = v2[10];
  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    return _swift_task_switch(sub_10012C32C, 0, 0);
  }

  else
  {
    v5 = v2[8];
    v8 = v2 + 6;
    v6 = v2[6];
    v7 = v8[1];

    (*(v7 + 8))(v5, v6);

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_10012C32C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10012C398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000C773C(&unk_1002D4AC0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 recordingWithUniqueID:v10];

  if (v11)
  {
    [v11 updateAudioFutureWithLocalAsset];
    sub_10012D314(a4, v9);
    v12 = type metadata accessor for TranscriptionData(0);
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    sub_10012D3EC(v11, v9);
    sub_10012D864(v9);
    [a1 saveIfNecessary];
  }

  else
  {
    sub_1000FC520();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10012C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  v11 = *(sub_1000C773C(&unk_1002D4AC0) - 8);
  v8[9] = v11;
  v8[10] = *(v11 + 64);
  v8[11] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[12] = v12;
  *v12 = v8;
  v12[1] = sub_10012C6A4;

  return sub_10012CBFC(a1, a2, a3, a4);
}

uint64_t sub_10012C6A4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10012C7FC, 0, 0);
  }
}

uint64_t sub_10012C7FC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  sub_10012D8CC(v0[2], v1);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[13] = v10;
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v6;
  sub_10012D9A4(v1, v10 + v9);
  v11 = v7;

  v0[14] = [v11 context];
  (*(v5 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_10012C984;
  v13 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_10012DA14, v10, &type metadata for () + 8);
}

uint64_t sub_10012C984()
{
  v2 = *v1;
  v2[16] = v0;

  v3 = v2[14];
  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = sub_10012CB78;
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];

    (*(v6 + 8))(v5, v7);
    v4 = sub_10012CB08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012CB08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012CB78()
{
  v1 = *(v0 + 16);

  sub_10012D864(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10012CBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for URL();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10012CD14;

  return sub_10012BF50(v9, a2, a3, a4);
}

uint64_t sub_10012CD14()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10012CFC0;
  }

  else
  {
    *(v2 + 64) = objc_opt_self();
    v3 = sub_10012CE38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012CE38@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[8];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[3];
  URL._bridgeToObjectiveC()(a1);
  v7 = v6;
  (*(v4 + 8))(v3, v5);
  v8 = [v2 rc_transcriptionDataForURL:v7];

  if (v8)
  {
    v9 = v1[7];
    v10 = v1[2];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_1000D4334(v11, v13);
    sub_1000E63C0(v11, v13, v10);
    sub_1000D4388(v11, v13);
    sub_1000D4388(v11, v13);
    if (v9)
    {

      v14 = v1[1];
      goto LABEL_7;
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v1[2];
  v17 = type metadata accessor for TranscriptionData(0);
  (*(*(v17 - 8) + 56))(v16, v15, 1, v17);

  v14 = v1[1];
LABEL_7:

  return v14();
}

uint64_t sub_10012CFC0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10012D024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 recordingWithUniqueID:v6];

  if (v7)
  {
    if (sub_10012D3EC(v7, a4))
    {
      [a1 saveIfNecessary];
    }
  }

  else
  {
    sub_1000FC520();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

void sub_10012D0EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 recordingWithUniqueID:v9];

  if (v10)
  {
    v11 = [v10 url];
    if (v11)
    {
      v12 = v11;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 32))(a2, v8, v4);
      v13 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v14 = String._bridgeToObjectiveC()();

      LOBYTE(v12) = [v13 fileExistsAtPath:v14];

      if (v12)
      {
LABEL_6:

        return;
      }

      (*(v5 + 8))(a2, v4);
    }

    sub_1000FC520();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_1000FC520();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();
}

uint64_t sub_10012D314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012D3EC(void *a1, uint64_t a2)
{
  v40 = a1;
  v3 = type metadata accessor for AttributedString.Index();
  v38 = *(v3 - 8);
  v5 = __chkstk_darwin(v3, v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v35 = &v33 - v8;
  v36 = type metadata accessor for AttributedString.CharacterView();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C773C(&unk_1002D4AC0);
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v33 - v19;
  v21 = type metadata accessor for TranscriptionData(0);
  v22 = *(*(v21 - 8) + 48);
  v39 = v22(a2, 1, v21);
  sub_10012D8CC(a2, v20);
  if (v22(v20, 1, v21) == 1)
  {
    sub_10012D864(v20);
    v23 = 0;
  }

  else
  {
    (*(v13 + 16))(v16, &v20[*(v21 + 20)], v12);
    sub_1000FC460(v20);
    AttributedString.characters.getter();
    (*(v13 + 8))(v16, v12);
    sub_10012D93C(&qword_1002D1CD8, &type metadata accessor for AttributedString.CharacterView);
    v25 = v35;
    v24 = v36;
    dispatch thunk of Collection.startIndex.getter();
    v26 = v37;
    dispatch thunk of Collection.endIndex.getter();
    sub_10012D93C(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *(v38 + 8);
    v28(v26, v3);
    v28(v25, v3);
    (*(v34 + 8))(v11, v24);
    v23 = v27 ^ 1;
  }

  v29 = v39;
  v30 = v39 != 1;
  v31 = v40;
  if (((v30 ^ [v40 hasBeenTranscribed]) & 1) == 0 && (v23 & 1) == objc_msgSend(v31, "transcriptionContentExists"))
  {
    return 0;
  }

  [v31 setHasBeenTranscribed:v29 != 1];
  [v31 setTranscriptionContentExists:v23 & 1];
  return 1;
}

uint64_t sub_10012D864(uint64_t a1)
{
  v2 = sub_1000C773C(&unk_1002D4AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012D8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D4AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012D93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012D9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D4AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012DAA8()
{
  result = qword_1002D1CE8;
  if (!qword_1002D1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CE8);
  }

  return result;
}

unint64_t sub_10012DB00()
{
  result = qword_1002D1CF0;
  if (!qword_1002D1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CF0);
  }

  return result;
}

unint64_t sub_10012DBD8()
{
  result = qword_1002D1CF8;
  if (!qword_1002D1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1CF8);
  }

  return result;
}

uint64_t sub_10012DC2C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8DA8);
  sub_100018D90(v0, qword_1002E8DA8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10012DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  sub_1000C773C(&qword_1002D5FA0);
  v4[25] = swift_task_alloc();
  v5 = type metadata accessor for IntentFile();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v8;
  v4[35] = v7;

  return _swift_task_switch(sub_10012DE20, v8, v7);
}

uint64_t sub_10012DE20()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  IntentParameter.wrappedValue.getter();
  IntentFile.fileURL.getter();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[25];

    sub_1000EA894(v7);
    sub_10012EC24();
    swift_allocError();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[30] + 32))(v0[31], v0[25], v0[29]);
    AppDependency.wrappedValue.getter();
    IntentParameter.wrappedValue.getter();
    v10 = v0[19];
    v11 = v0[20];
    v0[36] = v11;
    v0[37] = static MainActor.shared.getter();
    v12 = swift_task_alloc();
    v0[38] = v12;
    *v12 = v0;
    v12[1] = sub_10012E02C;
    v13 = v0[31];

    return sub_1001A09B8((v0 + 2), v13, v10, v11);
  }
}

uint64_t sub_10012E02C()
{
  *(*v1 + 312) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10012E300;
  }

  else
  {
    v4 = sub_10012E184;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10012E184()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return _swift_task_switch(sub_10012E1F0, v1, v2);
}

uint64_t sub_10012E1F0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  sub_100014B64(v0 + 56);
  v4 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v4;
  *(v0 + 128) = *(v0 + 48);
  sub_10012EC78();
  static IntentResult.result<A>(value:)();
  (*(v2 + 8))(v1, v3);
  *(v0 + 136) = *(v0 + 16);
  sub_10012ECCC(v0 + 136);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10012E300()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return _swift_task_switch(sub_10012E36C, v1, v2);
}

uint64_t sub_10012E36C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  (*(v2 + 8))(v1, v3);
  sub_100014B64((v0 + 7));

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012E420@<X0>(uint64_t a1@<X8>)
{
  if (qword_1002CDE18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100018D90(v2, qword_1002E8DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10012E4C8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_10012DC90(a1, v4, v5, v6);
}

uint64_t sub_10012E57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10012E658();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10012E5A8(uint64_t a1)
{
  v2 = sub_10012DBD8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10012E5F4()
{
  result = qword_1002D1D00;
  if (!qword_1002D1D00)
  {
    sub_1000C7784(&qword_1002D1D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1D00);
  }

  return result;
}

uint64_t sub_10012E658()
{
  v0 = sub_1000C773C(&unk_1002D3840);
  __chkstk_darwin(v0 - 8, v1);
  v42 = &v32 - v2;
  v41 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002CF820);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v32 - v9;
  v11 = sub_1000C773C(&qword_1002D1D10);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = sub_1000C773C(&qword_1002D07A8);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v32 - v17;
  v36 = &v32 - v17;
  v19 = type metadata accessor for LocalizedStringResource();
  v39 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v37 = sub_1000C773C(&qword_1002D1D18);
  LocalizedStringResource.init(stringLiteral:)();
  v22 = *(v20 + 56);
  v38 = v20 + 56;
  v40 = v22;
  v22(v18, 1, 1, v19);
  v23 = type metadata accessor for IntentFile();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_1000C773C(&qword_1002D1D20);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100241790;
  static UTType.mpeg4Audio.getter();
  static UTType.audio.getter();
  v24 = type metadata accessor for IntentDialog();
  v25 = *(v24 - 8);
  v34 = *(v25 + 56);
  v35 = v25 + 56;
  v34(v10, 1, 1, v24);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v3 + 104);
  v32 = v3 + 104;
  v33 = v27;
  v28 = v41;
  v27(v6, enum case for InputConnectionBehavior.default(_:), v41);
  v29 = v36;
  v37 = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_1000C773C(&qword_1002D1D28);
  LocalizedStringResource.init(stringLiteral:)();
  v40(v29, 1, 1, v39);
  v30 = type metadata accessor for String.IntentInputOptions();
  v45 = 0;
  v46 = 0;
  (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
  v34(v10, 1, 1, v24);
  v33(v6, v26, v28);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1000C773C(&qword_1002D1D30);
  v43 = 0xD000000000000025;
  v44 = 0x8000000100231FD0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v37;
}

unint64_t sub_10012EC24()
{
  result = qword_1002D1D38;
  if (!qword_1002D1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1D38);
  }

  return result;
}

unint64_t sub_10012EC78()
{
  result = qword_1002D1D40;
  if (!qword_1002D1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1D40);
  }

  return result;
}

uint64_t sub_10012ED20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10012ED84()
{
  v1 = *(v0[28] + 16);
  v0[29] = v1;
  if ([v1 status])
  {
    sub_1001334F0();
    swift_allocError();
    *v2 = 4;
    *(v2 + 8) = 5;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }

  else
  {
    v3 = v0[28];
    v4 = *(v3 + 24);
    v5 = *v3;
    v0[30] = sub_1001336D0(*v3, v4);
    v0[31] = v6;
    v0[32] = v7;
    v0[33] = sub_100133A18(v5, v4);
    v0[34] = v8;
    v0[35] = v9;
    sub_100133BB0(v5, v4);
    v0[36] = v10;
    v0[37] = v11;
    v0[38] = v12;
    v15 = swift_task_alloc();
    v0[39] = v15;
    *v15 = v0;
    v15[1] = sub_10012EF78;

    return sub_100133D60((v0 + 23), v5, v4);
  }
}

uint64_t sub_10012EF78()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10012F758;
  }

  else
  {
    v2 = sub_10012F08C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012F08C()
{
  v1 = v0;
  v3 = v0 + 184;
  v2 = *(v0 + 184);
  if (!v2)
  {
    v21 = *(v0 + 296);
    v20 = *(v0 + 304);
    v22 = *(v0 + 288);
    v78 = *(v0 + 280);
    v13 = *(v0 + 264);
    v76 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_1001334F0();
    swift_allocError();
    *v23 = 3;
    *(v23 + 8) = 5;
    swift_willThrow();
    v17 = v22;
    v18 = v21;
    v19 = v20;
    goto LABEL_21;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 320);
  v6 = *(v0 + 272);
  v7 = *(v0 + 232);
  *(v0 + 144) = v2;
  v8 = *(v0 + 208);
  *(v0 + 152) = *(v0 + 192);
  *(v0 + 168) = v8;
  v9 = *(v0 + 160);
  *(v0 + 328) = v9;
  sub_1001340FC(v6, v4, v9, v7);
  if (v5)
  {
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = *(v0 + 288);
    v78 = *(v0 + 280);
    v13 = *(v0 + 264);
    v76 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);

    v17 = v12;
    v18 = v11;
    v19 = v10;
LABEL_21:
    sub_1001340AC(v17, v18, v19);

    v59 = *(v1 + 8);

    return v59();
  }

  v24 = (v0 + 240);
  v25 = *(*(v0 + 224) + 8);
  if (![v25 canAddOutput:*(v0 + 240)])
  {
    v55 = 1;
LABEL_19:
    v56 = *v24;
LABEL_20:
    v70 = *(v0 + 296);
    v73 = *(v0 + 304);
    v57 = *(v0 + 288);
    v78 = *(v0 + 280);
    v13 = *(v0 + 264);
    v76 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_1001334F0();
    swift_allocError();
    *v58 = v56;
    *(v58 + 8) = v55;
    swift_willThrow();

    v17 = v57;
    v18 = v70;
    v19 = v73;
    goto LABEL_21;
  }

  v26 = *(v0 + 248);
  v27 = *(v0 + 232);

  if (![v27 canAddInput:v26])
  {
    v55 = 0;
    v24 = (v0 + 248);
    goto LABEL_19;
  }

  v79 = (v0 + 264);
  v28 = *(v0 + 264);
  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = *(v0 + 232);

  [v25 addOutput:v30];
  [v31 addInput:v29];
  if (([v25 canAddOutput:v28] & 1) == 0)
  {
    v55 = 1;
    v56 = *v79;
    goto LABEL_20;
  }

  v32 = *(v0 + 272);
  v33 = *(v0 + 232);

  if (![v33 canAddInput:v32])
  {
    v55 = 0;
    v56 = *(v0 + 272);
    goto LABEL_20;
  }

  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v36 = *(v0 + 232);

  [v25 addOutput:v35];
  [v36 addInput:v34];
  v37 = v9;
  if (([v36 canAddInput:v37] & 1) == 0)
  {
    v60 = *(v0 + 296);
    v74 = *(v0 + 304);
    v61 = *(v0 + 288);
    v78 = *(v0 + 280);
    v13 = *(v0 + 264);
    v76 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_1001334F0();
    swift_allocError();
    *v62 = v37;
    *(v62 + 8) = 0;
    swift_willThrow();

    v17 = v61;
    v18 = v60;
    v19 = v74;
    goto LABEL_21;
  }

  v38 = *(v0 + 288);
  v39 = *(v1 + 232);

  [v39 addInput:v37];
  if (v38)
  {
    v41 = *(v1 + 296);
    v40 = *(v1 + 304);
    v42 = *(v1 + 288);
    sub_100134470(v42, v41, v40);
    v43 = v42;
    if ([v25 canAddOutput:v43])
    {
      v44 = *(v1 + 232);

      v45 = v41;
      if ([v44 canAddInput:v45])
      {
        v46 = *(v1 + 232);

        [v25 addOutput:v43];
        [v46 addInput:v45];

        goto LABEL_14;
      }

      v75 = v40;
      v67 = 0;
      v63 = (v1 + 296);
    }

    else
    {
      v75 = v40;
      v63 = (v1 + 288);
      v67 = 1;
    }

    v64 = *v63;
    v69 = *(v1 + 296);
    v71 = *(v1 + 304);
    v68 = *(v1 + 288);
    v78 = *(v1 + 280);
    v13 = *(v1 + 264);
    v76 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_1001334F0();
    swift_allocError();
    *v65 = v64;
    *(v65 + 8) = v67;
    swift_willThrow();

    v17 = v68;
    v18 = v69;
    v19 = v71;
    goto LABEL_21;
  }

LABEL_14:
  v47 = *(v1 + 304);
  v48 = *(v1 + 280);
  v49 = *(v1 + 256);
  v51 = *(v1 + 224);
  v50 = *(v1 + 232);
  v72 = *(v1 + 240);
  v77 = *(v1 + 288);
  v80 = *v79;
  [v25 startReading];
  [v50 startWriting];
  epoch = kCMTimeZero.epoch;
  *(v1 + 352) = kCMTimeZero.value;
  *(v1 + 360) = *&kCMTimeZero.timescale;
  *(v1 + 368) = epoch;
  [v50 startSessionAtSourceTime:v1 + 352];
  v53 = swift_task_alloc();
  *(v1 + 336) = v53;
  *(v53 + 16) = v72;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = v80;
  *(v53 + 64) = v48;
  *(v53 + 72) = v3 - 40;
  *(v53 + 80) = v77;
  *(v53 + 96) = v47;
  v54 = swift_task_alloc();
  *(v1 + 344) = v54;
  *v54 = v1;
  v54[1] = sub_10012F7F4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10012F758()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  sub_1001340AC(*(v0 + 288), *(v0 + 296), *(v0 + 304));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10012F7F4()
{

  return _swift_task_switch(sub_10012F90C, 0, 0);
}

uint64_t sub_10012F90C()
{
  v1 = v0[29];
  v0[2] = v0;
  v0[3] = sub_10012FA20;
  v2 = swift_continuation_init();
  v0[17] = sub_1000C773C(&qword_1002D1DB0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100130D90;
  v0[13] = &unk_100291618;
  v0[14] = v2;
  [v1 finishWritingWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10012FA20()
{

  return _swift_task_switch(sub_10012FB00, 0, 0);
}

uint64_t sub_10012FB00()
{
  v1 = [*(v0 + 232) status];
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v16 = *(v0 + 280);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  if (v1 == 2)
  {

    sub_1001340AC(v5, v3, v4);
  }

  else
  {
    v15 = *(v0 + 256);
    v12 = [*(v0 + 232) error];
    sub_1001334F0();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 4;
    swift_willThrow();

    sub_1001340AC(v5, v3, v4);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10012FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  *(v8 + 88) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 32) = a2;
  sub_1000C773C(&unk_1002D1D90);
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10012FD80, 0, 0);
}

uint64_t sub_10012FD80()
{
  v1 = v0[16];
  v2 = v0[12];
  v50 = v0[11];
  v51 = v0[13];
  v3 = v0[8];
  v48 = v0[9];
  v49 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v53 = type metadata accessor for TaskPriority();
  v52 = *(*(v53 - 8) + 56);
  v52(v1, 1, 1, v53);
  v7 = *v3;
  v45 = *(v3 + 1);
  v46 = *(v3 + 2);
  v47 = *(v3 + 3);
  v0[2] = *(v3 + 4);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  v10 = *v3;
  v9 = v3[1];
  *(v8 + 88) = v3[2];
  *(v8 + 56) = v10;
  *(v8 + 72) = v9;
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v7;
  v15 = v45;
  v16 = v46;
  v17 = v47;
  sub_10000B46C((v0 + 2), (v0 + 3), &qword_1002D1DA0);
  sub_1001304E0(v1, &unk_100246CE0, v8);
  sub_100003CBC(v1, &unk_1002D1D90);
  v52(v1, 1, 1, v53);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v48;
  v18[5] = v49;
  v18[6] = v50;
  v19 = v48;
  v20 = v49;
  v21 = v50;
  sub_1001304E0(v1, &unk_100246CF0, v18);
  sub_100003CBC(v1, &unk_1002D1D90);
  v52(v1, 1, 1, v53);
  v23 = *v2;
  v22 = *(v2 + 1);
  v24 = *(v2 + 2);
  v25 = *(v2 + 3);
  v26 = *(v2 + 4);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v29 = *v2;
  v28 = v2[1];
  *(v27 + 64) = *(v2 + 4);
  *(v27 + 32) = v29;
  *(v27 + 48) = v28;
  v30 = v23;
  v31 = v22;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  sub_1001304E0(v1, &unk_100246D00, v27);
  sub_100003CBC(v1, &unk_1002D1D90);
  if (v51)
  {
    v36 = v0[15];
    v35 = v0[16];
    v38 = v0[13];
    v37 = v0[14];
    v52(v35, 1, 1, v53);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v38;
    v39[5] = v37;
    v39[6] = v36;
    v40 = v38;
    v41 = v37;
    v42 = v36;
    sub_1001304E0(v35, &unk_100246D10, v39);
    sub_100003CBC(v35, &unk_1002D1D90);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_100130118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return _swift_task_switch(sub_10013013C, 0, 0);
}

uint64_t sub_10013013C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  *(v0 + 16) = *(v2 + 4);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  v17 = *(v0 + 32);
  v8 = *v2;
  v9 = v2[2];
  v7[2] = v2[1];
  v7[3] = v9;
  v7[1] = v8;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_10000B46C(v0 + 16, v0 + 24, &qword_1002D1DA0);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *(v14 + 16) = v17;
  *(v14 + 32) = v1;
  *(v14 + 40) = sub_1001349F0;
  *(v14 + 48) = v7;
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1001302D8;

  return withCheckedContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000020, 0x80000001002320B0, sub_100134B2C, v14, &type metadata for () + 8);
}

uint64_t sub_1001302D8()
{

  return _swift_task_switch(sub_1001303F0, 0, 0);
}

uint64_t sub_1001303F0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100130450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4 > 0.0)
  {
    v5 = *(a4 + 32);
    os_unfair_lock_lock((v5 + 24));
    CMTime.seconds.getter();
    *(v5 + 16) = v6 / v4;

    os_unfair_lock_unlock((v5 + 24));
  }
}

uint64_t sub_1001304E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v21 - v10;
  sub_10000B46C(a1, v21 - v10, &unk_1002D1D90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100003CBC(v11, &unk_1002D1D90);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();
}

uint64_t sub_1001306F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10013071C, 0, 0);
}

uint64_t sub_10013071C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10013081C;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000020, 0x80000001002320B0, sub_100134B2C, v2, &type metadata for () + 8);
}

uint64_t sub_10013081C()
{

  return _swift_task_switch(sub_100020288, 0, 0);
}

uint64_t sub_100130954()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100130A3C;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x29287472617473, 0xE700000000000000, sub_1001348C0, v2, &type metadata for () + 8);
}

uint64_t sub_100130A3C()
{

  return _swift_task_switch(sub_100134B24, 0, 0);
}

uint64_t sub_100130B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100130B78, 0, 0);
}

uint64_t sub_100130B78()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100130C78;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000020, 0x80000001002320B0, sub_100134824, v2, &type metadata for () + 8);
}

uint64_t sub_100130C78()
{

  return _swift_task_switch(sub_100134B24, 0, 0);
}

uint64_t sub_100130D90(uint64_t a1)
{
  v1 = *sub_10000AACC((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100130DC4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = sub_1000C773C(&qword_1002D1DB8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v24 - v14;
  (*(v12 + 16))(&v24 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = sub_100134828;
  v18[6] = v17;
  v18[7] = a5;
  v18[8] = v25;
  aBlock[4] = sub_100134894;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_100291730;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = a3;
  v22 = a4;

  sub_1000D0DAC(a5);

  [v21 requestMediaDataWhenReadyOnQueue:v22 usingBlock:v19];
  _Block_release(v19);
}

uint64_t sub_100130FFC(void *a1, id a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5, void (*a6)(CMTimeValue, void, CMTimeEpoch))
{
  result = [a2 isReadyForMoreMediaData];
  if (result)
  {
    while (1)
    {
      v11 = [a1 copyNextSampleBuffer];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      [a2 appendSampleBuffer:v11];
      if (a6)
      {

        CMSampleBufferGetPresentationTimeStamp(&v13, v12);
        a6(v13.value, *&v13.timescale, v13.epoch);

        sub_1000338B4(a6);
      }

      else
      {
      }

      result = [a2 isReadyForMoreMediaData];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    return a4([a2 markAsFinished]);
  }

  return result;
}

void sub_100131108()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001316F8(0);
  v6 = 0;
  v7 = *(v5 + 16);
  while (1)
  {
    if (v7 == v6)
    {
LABEL_5:

      return;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6++, v0);
    v8 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    v12 = [v8 initWithURL:v11 options:0];

    v13 = [objc_allocWithZone(RCSpatialAsset) initWithAsset:v12];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1001312C0(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002D1DB8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v29 - v13;
  v15 = *(a2 + 32);
  v16 = *a2;
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v30 = *(a2 + 8);
  v31 = v18;
  v32 = v17;
  v33 = v15;
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a2 + 32);
  (*(v11 + 32))(v20 + v19, v14, v10);
  aBlock[4] = sub_1001348C8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_100291780;
  v22 = _Block_copy(aBlock);
  v23 = v16;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v33;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100134A08(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C773C(&unk_1002D1080);
  sub_100015864(&qword_1002D1DD0, &unk_1002D1080);
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v37 + 8))(v6, v27);
  (*(v34 + 8))(v9, v36);
}

uint64_t sub_100131694(uint64_t a1)
{
  [*(a1 + 24) appendTimedMetadataGroup:*(a1 + 8)];
  [*(a1 + 16) markAsFinished];
  sub_1000C773C(&qword_1002D1DB8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001316F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C773C(&qword_1002D5FA0);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for URL();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 tracks];
  sub_1000067AC(0, &unk_1002D1DF0);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    goto LABEL_28;
  }

  for (result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); result > a1; result = _CocoaArrayWrapper.endIndex.getter())
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
        __break(1u);
        return result;
      }

      v17 = *(v15 + 8 * a1 + 32);
    }

    v18 = v17;

    v19 = [v18 segments];

    sub_1000067AC(0, &qword_1002CFC90);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    result = v20;
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v38;
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_9;
    }

LABEL_32:
    v35 = result;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    result = v35;
    a1 = v38;
    if (!v21)
    {
LABEL_33:
      v24 = _swiftEmptyArrayStorage;
LABEL_34:

      return v24;
    }

LABEL_9:
    v45 = v11;
    v22 = 0;
    v42 = result & 0xFFFFFFFFFFFFFF8;
    v43 = result & 0xC000000000000001;
    v40 = (v37 + 56);
    v23 = (v37 + 48);
    v24 = _swiftEmptyArrayStorage;
    v39 = (v37 + 32);
    v41 = v10;
    while (1)
    {
      if (v43)
      {
        v10 = result;
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v42 + 16))
        {
          goto LABEL_27;
        }

        v10 = result;
        v25 = *(result + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v11 = v21;
      v28 = [v25 sourceURL];
      if (v28)
      {
        v29 = v28;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v15 = v45;
      (*v40)(a1, v30, 1, v45);
      v31 = v41;
      sub_1000EA824(a1, v41);
      if ((*v23)(v31, 1, v15) == 1)
      {
        sub_100003CBC(v31, &qword_1002D5FA0);
      }

      else
      {
        v32 = *v39;
        (*v39)(v44, v31, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1000F2888(0, *(v24 + 2) + 1, 1, v24);
        }

        v34 = *(v24 + 2);
        v33 = *(v24 + 3);
        if (v34 >= v33 >> 1)
        {
          v24 = sub_1000F2888(v33 > 1, v34 + 1, 1, v24);
        }

        *(v24 + 2) = v34 + 1;
        v32(&v24[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34], v44, v45);
        a1 = v38;
      }

      result = v10;
      ++v22;
      v21 = v11;
      if (v27 == v11)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100131C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_1000C773C(&qword_1002D5FA0);
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100131E14, 0, 0);
}

uint64_t sub_100131E14()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = objc_opt_self();
  v0[25] = v4;
  v5 = [v4 defaultManager];
  v6 = RCRecordingsDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = *(v3 + 8);
  v0[26] = v10;
  v0[27] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45 = v10;
  v10(v1, v2);
  v0[9] = 0;
  v11 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v9 create:1 error:v0 + 9];

  v12 = v0[9];
  v13 = v0[23];
  v46 = v0[22];
  if (v11)
  {
    v44 = v0[21];
    v14 = v0[20];
    v16 = v0[17];
    v15 = v0[18];
    v41 = v0[16];
    v42 = v0[19];
    v43 = v0[12];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v12;

    UUID.init()();
    UUID.uuidString.getter();
    (*(v16 + 8))(v15, v41);
    URL.appendingPathComponent(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v45(v13, v42);
    v18 = *(v43 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_composition);
    v19 = *(v14 + 16);
    v0[28] = v19;
    v0[29] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v44, v46, v42);
    v20 = *(v43 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_metadata);

    sub_100132F3C(v18, v44, v20, v0 + 2);
    v23 = v0[12];
    v24 = v0[2];
    v25 = v0[3];
    v0[30] = v24;
    v0[31] = v25;
    v27 = v0[4];
    v26 = v0[5];
    v0[32] = v27;
    v0[33] = v26;
    v28 = v0[6];
    v29 = v0[7];
    v0[8] = v28;
    v30 = v23 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter;
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    v34 = *(v30 + 24);
    *v30 = v24;
    *(v30 + 8) = v25;
    *(v30 + 16) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *(v30 + 40) = v29;
    v35 = v24;
    v36 = v25;
    v37 = v27;
    v38 = v26;
    sub_10000B46C((v0 + 8), (v0 + 11), &qword_1002D1DA0);
    sub_100133490(v31, v32, v33, v34);
    v39 = swift_task_alloc();
    v0[34] = v39;
    *v39 = v0;
    v39[1] = sub_1001323A8;

    return sub_10012ED64();
  }

  else
  {
    v21 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1001323A8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100132710;
  }

  else
  {
    v2 = sub_1001324E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001324E8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  (*(v0 + 224))(v7, *(v0 + 176), v5);
  (*(v6 + 56))(v7, 0, 1, v5);
  v8(v7, 0);

  sub_100003CBC(v0 + 64, &qword_1002D1DA0);
  v9 = *(v0 + 200);
  sub_100003CBC(*(v0 + 120), &qword_1002D5FA0);
  v10 = [v9 defaultManager];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  *(v0 + 80) = 0;
  LODWORD(v1) = [v10 removeItemAtURL:v12 error:v0 + 80];

  v14 = *(v0 + 80);
  if (v1)
  {
    v15 = v14;
  }

  else
  {
    v16 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  v19 = *(v0 + 152);
  v17(*(v0 + 176), v19);
  v17(v18, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100132710()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);

  sub_100003CBC(v0 + 64, &qword_1002D1DA0);
  v4 = *(v0 + 280);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  (*(*(v0 + 160) + 56))(v5, 1, 1, *(v0 + 152));
  swift_errorRetain();
  v6(v5, v4);

  v7 = *(v0 + 200);
  sub_100003CBC(*(v0 + 120), &qword_1002D5FA0);
  v8 = [v7 defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  *(v0 + 80) = 0;
  LODWORD(v6) = [v8 removeItemAtURL:v10 error:v0 + 80];

  v12 = *(v0 + 80);
  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v14 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 192);
  v17 = *(v0 + 152);
  v15(*(v0 + 176), v17);
  v15(v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

void sub_100132AC0()
{
  v1 = (v0 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter);
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter);
  if (v2)
  {
    v4 = v1[3];
    v3 = v1[4];
    v5 = v1[1];
    v6 = v1[2];
    v7 = v2;
    v8 = v5;
    v9 = v6;
    v10 = v4;

    os_unfair_lock_lock(v3 + 6);
    os_unfair_lock_unlock(v3 + 6);
  }
}

id sub_100132BA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSpatialExporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100132C60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100132C74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100132CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100132D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002001C;

  return sub_100131C6C(a1, v4, v5, v6, v7, v8);
}

id sub_100132DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 fileType:a2 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

void sub_100132F3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a1;
  v46 = a3;
  v48 = a2;
  v39 = a4;
  v47 = type metadata accessor for URL();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47, v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10, v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8, v13);
  v14 = sub_1000067AC(0, &qword_1002D1070);
  v42 = "with(composition:queue:)";
  v43 = v14;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_100134A08(&qword_1002CDFC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000C773C(&unk_1002D1E10);
  sub_100015864(&qword_1002CDFD0, &unk_1002D1E10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000C773C(&unk_1002D1E20);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v17 = objc_allocWithZone(AVAssetReader);
  v50 = 0;
  v18 = v45;
  v19 = [v17 initWithAsset:v18 error:&v50];
  v20 = v50;
  if (!v19)
  {
    v30 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    (*(v49 + 8))(v48, v47);
    goto LABEL_5;
  }

  v21 = v19;
  v45 = v15;
  v22 = v48;
  v23 = v40;
  v24 = v47;
  (*(v49 + 16))(v40, v48, v47);
  v25 = objc_allocWithZone(AVAssetWriter);
  v26 = v20;
  v27 = AVFileTypeQuickTimeMovie;
  v28 = v41;
  v29 = sub_100132DE8(v23, v27);
  if (v28)
  {

    (*(v49 + 8))(v22, v24);

    v15 = v45;
LABEL_5:

    return;
  }

  v31 = v29;

  v32 = v31;
  [v18 duration];

  CMTime.seconds.getter();
  v34 = v33;
  if (v46)
  {
    sub_1000067AC(0, &qword_1002D13B0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 setMetadata:isa];
  }

  (*(v49 + 8))(v48, v47);

  v36 = v39;
  *v39 = v18;
  v36[1] = v21;
  v37 = v45;
  v36[2] = v32;
  v36[3] = v37;
  v36[4] = v16;
  v36[5] = v34;
}

void *sub_100133490(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001334F0()
{
  result = qword_1002D1DA8;
  if (!qword_1002D1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1DA8);
  }

  return result;
}

id sub_100133544()
{
  sub_1000C773C(&unk_1002D1E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100241D40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for UInt32;
  *(inited + 48) = 1633772320;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v2;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 48000;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v3;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v4;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 96;
  sub_1000D40DC(inited);
  swift_setDeallocating();
  sub_1000C773C(&qword_1002CEC90);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(AVAudioFormat);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithSettings:isa];

  return v7;
}

uint64_t sub_1001336D0(void *a1, void *a2)
{
  v4 = [a1 tracks];
  sub_1000067AC(0, &unk_1002D1DF0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    sub_1001334F0();
    swift_allocError();
    *v20 = 2;
    *(v20 + 8) = 5;
    swift_willThrow();
    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v2 = v7;

    v8 = [objc_allocWithZone(AVAudioFormat) initStandardFormatWithSampleRate:2 channels:48000.0];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100133544();
      if (v10)
      {
        v23 = v10;
        a2;
        v11 = [v9 settings];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = objc_allocWithZone(AVAssetReaderTrackOutput);
        v13 = v2;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v15 = v13;
        v22 = v13;
        v2 = [v12 initWithTrack:v13 outputSettings:isa];

        v21 = AVMediaTypeAudio;
        v16 = [v23 settings];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = objc_allocWithZone(AVAssetWriterInput);
        v18 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v17 initWithMediaType:v21 outputSettings:v18];

        return v2;
      }
    }

    sub_1001334F0();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 5;
    swift_willThrow();

    return v2;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100133A18(void *a1, void *a2)
{
  v3 = [a1 tracks];
  sub_1000067AC(0, &unk_1002D1DF0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_1001334F0();
    swift_allocError();
    *v9 = 2;
    *(v9 + 8) = 5;
    swift_willThrow();
    return v4;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = objc_allocWithZone(AVAssetReaderTrackOutput);
    a2;
    v4 = [v8 initWithTrack:v7 outputSettings:0];
    [objc_allocWithZone(AVAssetWriterInput) initWithMediaType:AVMediaTypeAudio outputSettings:0];

    return v4;
  }

  __break(1u);
  return result;
}

void sub_100133BB0(void *a1, void *a2)
{
  v4 = [a1 tracks];
  sub_1000067AC(0, &unk_1002D1DF0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= 2)
  {
    v7 = [a1 tracks];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v9 = *(v8 + 40);
LABEL_7:
      v10 = v9;

      v11 = objc_allocWithZone(AVAssetReaderTrackOutput);
      a2;
      [v11 initWithTrack:v10 outputSettings:0];
      [objc_allocWithZone(AVAssetWriterInput) initWithMediaType:AVMediaTypeAudio outputSettings:0];

      return;
    }

    __break(1u);
  }
}

uint64_t sub_100133D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100133D84, 0, 0);
}

uint64_t sub_100133D84()
{
  v23 = v0;
  sub_100131108();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 spatialMetadataGroup];
    isa = [v3 items];

    if (!isa)
    {
      sub_1000067AC(0, &qword_1002D13B0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v5 = *(v0 + 32);
    v6 = *&kCMTimeZero.timescale;
    epoch = kCMTimeZero.epoch;
    [*(v0 + 24) duration];
    v25.value = kCMTimeZero.value;
    *&v25.timescale = v6;
    v25.epoch = epoch;
    CMTimeRange.init(start:end:)((v0 + 40), v25, v22);
    v8 = [objc_allocWithZone(AVTimedMetadataGroup) initWithItems:isa timeRange:v0 + 40];

    v9 = [v8 copyFormatDescription];
    v10 = [objc_allocWithZone(AVAssetWriterInput) initWithMediaType:AVMediaTypeMetadata outputSettings:0 sourceFormatHint:v9];

    v11 = [objc_allocWithZone(AVAssetWriterInputMetadataAdaptor) initWithAssetWriterInput:v10];
    v12 = [v2 asset];

    v13 = v5;
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100018D90(v14, qword_1002E8CB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22.value = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10001901C(0xD000000000000018, 0x80000001002320E0, &v22.value);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - no spatial asset found", v17, 0xCu);
      sub_100014B64(v18);
    }

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v5 = 0;
  }

  v19 = *(v0 + 16);
  *v19 = v12;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v11;
  v19[4] = v5;
  v20 = *(v0 + 8);

  return v20();
}

void sub_1001340AC(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_1001340FC(void *a1, void *a2, void *a3, void *a4)
{
  if ([a1 canAddTrackAssociationWithTrackOfInput:a2 type:AVTrackAssociationTypeAudioFallback])
  {
    [a1 addTrackAssociationWithTrackOfInput:a2 type:AVTrackAssociationTypeAudioFallback];
    sub_1000C773C(&unk_1002CE190);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002432E0;
    *(v8 + 32) = a2;
    *(v8 + 40) = a1;
    v9 = objc_allocWithZone(AVAssetWriterInputGroup);
    sub_1000067AC(0, &unk_1002D1DE0);
    v10 = a2;
    v11 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v9 initWithInputs:isa defaultInput:v10];

    if ([a4 canAddInputGroup:v13])
    {
      [a4 addInputGroup:v13];
      if ([a3 canAddTrackAssociationWithTrackOfInput:v11 type:AVTrackAssociationTypeMetadataReferent])
      {
        [a3 addTrackAssociationWithTrackOfInput:v11 type:AVTrackAssociationTypeMetadataReferent];
      }

      else
      {
        sub_1001334F0();
        swift_allocError();
        *v17 = v11;
        *(v17 + 8) = 3;
        swift_willThrow();
        v18 = v11;
      }
    }

    else
    {
      sub_1001334F0();
      swift_allocError();
      *v16 = v13;
      *(v16 + 8) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1001334F0();
    swift_allocError();
    *v14 = a2;
    *(v14 + 8) = 3;
    swift_willThrow();
    v15 = a2;
  }
}

uint64_t sub_100134350(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10002001C;

  return sub_10012FCC0(a1, a2, v6, v7, v8, v9, v10, v11);
}

id sub_100134470(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_1001344C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_100130118(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_100134594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_1001306F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10013465C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001FF1C;

  return sub_100130934(a1, v4, v5, v1 + 32);
}

uint64_t sub_10013470C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10013475C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_100130B54(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001348A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001348C8()
{
  sub_1000C773C(&qword_1002D1DB8);

  return sub_100131694(v0 + 16);
}

uint64_t sub_100134938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_100018364(a1, v4);
}

uint64_t sub_100134A08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100134A50(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100134A6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100134AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100134AF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100134B9C()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100134C30, v2, v1);
}

uint64_t sub_100134C30()
{

  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), *(v0 + 32) = v4, v3, v4))
  {

    return _swift_task_switch(sub_100134D70, 0, 0);
  }

  else
  {
    sub_1000E454C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100134DB4()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100134E48, v2, v1);
}

uint64_t sub_100134E48()
{

  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), v3, v4))
  {
    v5 = *(v0 + 16);
    v5[3] = &type metadata for RCCombineRecordingsIntentPerformer;
    v5[4] = &off_1002954F8;
    *v5 = v4;
    v6 = *(v0 + 8);
  }

  else
  {
    sub_1000E454C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_100134F94()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100135028, v2, v1);
}

uint64_t sub_100135028()
{

  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), v3, v4))
  {
    v5 = *(v0 + 16);
    v5[3] = &type metadata for RCImportRecordingIntentPerformer;
    v5[4] = &off_100295508;
    *v5 = v4;
    v6 = *(v0 + 8);
  }

  else
  {
    sub_1000E454C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

id sub_100135194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCAppIntentsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10013543C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCUserFolderRestoreInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PartialTranscriptionFormattingResult()
{
  result = qword_1002D1F10;
  if (!qword_1002D1F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100135558()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_1001355DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001355DC()
{
  if (!qword_1002D1F20)
  {
    type metadata accessor for AttributedString.Index();
    sub_100135640();
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D1F20);
    }
  }
}

unint64_t sub_100135640()
{
  result = qword_1002D1F28;
  if (!qword_1002D1F28)
  {
    type metadata accessor for AttributedString.Index();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1F28);
  }

  return result;
}

uint64_t sub_100135698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001356EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

id sub_100135740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
  }

  else
  {
    result = sub_100136468(v6, v4, *(a1 + 36), 0, a1);
    *(a2 + 8) = v6[0];
    *(a2 + 24) = v6[1];
    *(a2 + 40) = v7;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1001357E8()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3, v6);
  v8 = &v15[-v7];
  type metadata accessor for AttributedString.CharacterView();
  sub_100025578(&qword_1002D1CD8, &type metadata accessor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  sub_100025578(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v1 + 8);
  v10(v5, v0);
  v11 = 0;
  if ((v9 & 1) == 0)
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v11 = *v13;

    v12(v15, 0);
  }

  v10(v8, v0);
  return v11;
}

uint64_t sub_1001359FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024294(_swiftEmptyArrayStorage);
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v49 = a2;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = *(*(v49 + 48) + 8 * v12);
    sub_1000CC230(*(v49 + 56) + 40 * v12, &v59);
    v50 = v60;
    v51 = v59;
    v14 = v61;
    v15 = v13;
    if (!v13)
    {
LABEL_35:

      return v4;
    }

    v16 = v15;
    v8 &= v8 - 1;
    v59 = v51;
    v60 = v50;
    v61 = v14;
    if (*(a1 + 16) && (v17 = sub_10002454C(v15), (v18 & 1) != 0))
    {
      sub_1000CC230(*(a1 + 56) + 40 * v17, &v53);
      v56 = v53;
      v57 = v54;
      v58 = v55;
      if (static AnyHashable.== infix(_:_:)())
      {
LABEL_31:

        sub_1000D513C(&v56);
LABEL_32:
        sub_1000D513C(&v59);
      }

      else
      {
        sub_1000CC230(&v59, &v53);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v4;
        v20 = sub_10002454C(v16);
        v22 = v4[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_39;
        }

        v26 = v21;
        if (v4[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = v20;
            sub_1000CB92C();
            v20 = v47;
          }
        }

        else
        {
          sub_1000CA490(v25, isUniquelyReferenced_nonNull_native);
          v20 = sub_10002454C(v16);
          if ((v26 & 1) != (v27 & 1))
          {
            goto LABEL_41;
          }
        }

        v4 = v52;
        if (v26)
        {
          sub_1000CC1D4(&v53, v52[7] + 40 * v20);
          goto LABEL_31;
        }

        v52[(v20 >> 6) + 8] |= 1 << v20;
        *(v52[6] + 8 * v20) = v16;
        v41 = v52[7] + 40 * v20;
        v42 = v53;
        v43 = v54;
        *(v41 + 32) = v55;
        *v41 = v42;
        *(v41 + 16) = v43;
        sub_1000D513C(&v56);
        sub_1000D513C(&v59);
        v44 = v52[2];
        v24 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v24)
        {
          goto LABEL_40;
        }

        v52[2] = v45;
      }
    }

    else
    {
      sub_1000CC230(&v59, &v56);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *&v53 = v4;
      v29 = sub_10002454C(v16);
      v31 = v4[2];
      v32 = (v30 & 1) == 0;
      v24 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      v34 = v30;
      if (v4[3] >= v33)
      {
        if ((v28 & 1) == 0)
        {
          v46 = v29;
          sub_1000CB92C();
          v29 = v46;
        }
      }

      else
      {
        sub_1000CA490(v33, v28);
        v29 = sub_10002454C(v16);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_41;
        }
      }

      v4 = v53;
      if (v34)
      {
        sub_1000CC1D4(&v56, *(v53 + 56) + 40 * v29);

        goto LABEL_32;
      }

      *(v53 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v4[6] + 8 * v29) = v16;
      v36 = v4[7] + 40 * v29;
      v37 = v56;
      v38 = v57;
      *(v36 + 32) = v58;
      *v36 = v37;
      *(v36 + 16) = v38;
      sub_1000D513C(&v59);
      v39 = v4[2];
      v24 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v24)
      {
        goto LABEL_38;
      }

      v4[2] = v40;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_35;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for Key(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100135DD4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  result = [result text];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100028604();
  v9 = v8;

  v10 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 > a1)
  {
LABEL_21:

    return 0;
  }

  if (__OFSUB__(a1, v7))
  {
    goto LABEL_28;
  }

  if (a1 - v7 >= v9)
  {
    goto LABEL_21;
  }

  v12 = __OFSUB__(v11, v7);
  v13 = v11 < v7;
  v14 = v11 - v7;
  if (v13)
  {
    goto LABEL_21;
  }

  if (v12)
  {
LABEL_29:
    __break(1u);
  }

  if (v14 >= v9)
  {
    goto LABEL_21;
  }

  v25 = 0;
  v26 = 0;
  if (v10 <= a1)
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v15 + v16;
    if (a1 >= v15 + v16)
    {
      break;
    }

LABEL_15:
    a1 = v18;
    if (v18 >= v10)
    {

      return v17;
    }
  }

  v19 = [v5 textStorage];
  v20 = [v19 attributesAtIndex:a1 effectiveRange:&v25];

  type metadata accessor for Key(0);
  sub_100025578(&qword_1002CE138, type metadata accessor for Key);
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_100136154(v21);

  if (v22)
  {
    if (v17)
    {
      v23 = sub_1001359FC(v17, v22);

      v24 = *(v23 + 16);

      if (v24)
      {

        goto LABEL_21;
      }
    }

    else
    {
      v17 = v22;
    }

    v16 = v25;
    v15 = v26;
    v18 = v26 + v25;
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_100136050(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_100135740(a1, v8);
    if (*&v8[0])
    {
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v2;
      if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_100003CBC(v9, &qword_1002D1F68);
    }

    else
    {
      sub_100003CBC(v8, &qword_1002D1F60);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100136154(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000C773C(&qword_1002CE540);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v11);
        ++v8;
        if (v4)
        {
          v8 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_10001931C(*(a1 + 56) + 32 * v12, v29);
    v28 = v13;
    sub_10001931C(v29, v27);
    v14 = v13;
    sub_100003CBC(&v28, &qword_1002D1F58);
    if (!swift_dynamicCast())
    {
      break;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    *(*(v1 + 6) + 8 * v9) = v14;
    v4 &= v4 - 1;
    v10 = *(v1 + 7) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    ++*(v1 + 2);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_100003CBC(&v24, &qword_1002D1E58);

  return 0;
}

id sub_100136468(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_1000CC230(*(a5 + 56) + 40 * a2, result);

  return v6;
}

uint64_t sub_1001364FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100136544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100136584()
{
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 playbackSpeedSliderImageColor];

  qword_1002D1F70 = v1;
}

id sub_100136960(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001369BC()
{
  v0 = sub_1000C773C(&qword_1002D1FC8);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v30 - v2;
  v4 = type metadata accessor for UISlider.TrackConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:numberOfTicks:)();
  UISlider.TrackConfiguration.neutralValue.setter();
  v9 = [objc_allocWithZone(UISlider) init];
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UISlider.trackConfiguration.setter();
  LODWORD(v10) = 0.5;
  [v9 setMinimumValue:v10];
  LODWORD(v11) = 2.0;
  [v9 setMaximumValue:v11];
  v12 = [objc_opt_self() sharedStyleProvider];
  v13 = [v12 playbackSpeedSliderMinimumValueImage];
  [v9 setMinimumValueImage:v13];

  v14 = [v12 playbackSpeedSliderMaximumValueImage];
  [v9 setMaximumValueImage:v14];

  v15 = [v9 _minValueView];
  if (v15)
  {
    if (qword_1002CDE20 != -1)
    {
      v28 = v15;
      swift_once();
      v15 = v28;
    }

    v16 = v15;
    [v15 setTintColor:qword_1002D1F70];
  }

  v17 = [v9 _maxValueView];
  if (v17)
  {
    if (qword_1002CDE20 != -1)
    {
      v29 = v17;
      swift_once();
      v17 = v29;
    }

    v18 = v17;
    [v17 setTintColor:qword_1002D1F70];
  }

  v19 = objc_opt_self();
  v20 = v9;
  v21 = [v19 mainBundle];
  v31._object = 0x8000000100232450;
  v22._object = 0x8000000100232430;
  v22._countAndFlagsBits = 0xD000000000000015;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v31);

  v24 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityLabel:v24];

  v25 = v20;
  v26 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityIdentifier:v26];

  (*(v5 + 8))(v8, v4);
  return v25;
}

id sub_100136E14()
{
  v0 = sub_1000C773C(&qword_1002D1FC8);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v28 - v2;
  v4 = type metadata accessor for UISlider.TrackConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:numberOfTicks:)();
  UISlider.TrackConfiguration.allowsTickValuesOnly.setter();
  UISlider.TrackConfiguration.neutralValue.setter();
  v9 = [objc_allocWithZone(type metadata accessor for RCLayerMixSlider()) init];
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v10 = v9;
  UISlider.trackConfiguration.setter();
  LODWORD(v11) = -1.0;
  [v10 setMinimumValue:v11];
  LODWORD(v12) = 1.0;
  [v10 setMaximumValue:v12];
  v13 = [v10 _minValueView];
  if (v13)
  {
    if (qword_1002CDE20 != -1)
    {
      v26 = v13;
      swift_once();
      v13 = v26;
    }

    v14 = v13;
    [v13 setTintColor:qword_1002D1F70];
  }

  v15 = [v10 _maxValueView];
  if (v15)
  {
    if (qword_1002CDE20 != -1)
    {
      v27 = v15;
      swift_once();
      v15 = v27;
    }

    v16 = v15;
    [v15 setTintColor:qword_1002D1F70];
  }

  v17 = objc_opt_self();
  v18 = v10;
  v19 = [v17 mainBundle];
  v29._object = 0x80000001002323F0;
  v20._object = 0x80000001002323D0;
  v20._countAndFlagsBits = 0xD000000000000010;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v29);

  v22 = String._bridgeToObjectiveC()();

  [v18 setAccessibilityLabel:v22];

  v23 = v18;
  v24 = String._bridgeToObjectiveC()();
  [v23 setAccessibilityIdentifier:v24];

  (*(v5 + 8))(v8, v4);
  return v23;
}

id sub_1001371DC()
{
  v0 = sub_1000C773C(&qword_1002D1FC8);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = type metadata accessor for UISlider.TrackConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:numberOfTicks:)();
  UISlider.TrackConfiguration.neutralValue.setter();
  v9 = [objc_allocWithZone(UISlider) init];
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UISlider.trackConfiguration.setter();
  [v9 setMinimumValue:0.0];
  LODWORD(v10) = 1.0;
  [v9 setMaximumValue:v10];
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 mainBundle];
  v21._object = 0xE000000000000000;
  v14._object = 0x8000000100232380;
  v14._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v21);

  v16 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityLabel:v16];

  v17 = v12;
  v18 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityIdentifier:v18];

  (*(v5 + 8))(v8, v4);
  return v17;
}

id sub_1001374BC(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = [v4 multitrackImageForLayerNumber:a1 rounded:0 slash:a2 & 1 circleFill:1];
  v6 = objc_opt_self();
  v7 = [v6 configurationWithScale:3];
  v8 = [v6 configurationWithWeight:7];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  if (a2)
  {
    sub_1000C773C(&unk_1002CE190);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002432E0;
    v11 = objc_opt_self();
    *(v10 + 32) = [v11 systemBackgroundColor];
    *(v10 + 40) = [v11 secondaryLabelColor];
    sub_1001376E8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v6 configurationWithPaletteColors:isa];

    v14 = [v9 configurationByApplyingConfiguration:v13];
    v9 = v14;
  }

  if (v5)
  {
    v15 = [v5 imageWithConfiguration:v9];
  }

  else
  {

    return 0;
  }

  return v15;
}

unint64_t sub_1001376E8()
{
  result = qword_1002CE530;
  if (!qword_1002CE530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002CE530);
  }

  return result;
}

id sub_1001377AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptionAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013783C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013785C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100137894()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v3 = Strong, [Strong adjustedContentInset], v3, (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v5 = v4;
      v6 = [v4 endOfDocument];
      [v5 caretRectForPosition:v6];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMaxY(v18);
      v15 = v5;
      [v15 adjustedContentInset];
      [v15 bounds];
      CGRectGetHeight(v19);
      [v15 adjustedContentInset];

      [v1 contentOffset];
      v17 = v16;

      return v17;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_100137A0C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v3 = [Strong textLayoutManager];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 endLocation];
    v6 = [v4 textViewportLayoutController];
    v7 = [v6 viewportRange];

    if (!v7)
    {
LABEL_12:
      [v4 ensureLayoutForRange:a1];

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v8 = v7;
    if ([v8 isEmpty])
    {

      goto LABEL_12;
    }

    if ([v8 containsRange:a1])
    {
    }

    else
    {
      v9 = [objc_msgSend(v8 "endLocation")];
      swift_unknownObjectRelease();

      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v8;
    v11 = [objc_allocWithZone(NSTextRange) initWithLocation:objc_msgSend(v10 endLocation:{"location"), v5}];
    swift_unknownObjectRelease();

    if (!v11)
    {
      goto LABEL_12;
    }

    [v4 ensureLayoutForRange:v11];

    swift_unknownObjectRelease();
  }

LABEL_13:
}

uint64_t sub_100137C24(CGFloat x, CGFloat y, CGFloat width, CGFloat height, uint64_t a5, uint64_t a6, CGRect *a7)
{
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*a7, v14))
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v13 = CGRectUnion(*a7, v15);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  a7->origin.x = x;
  a7->origin.y = y;
  a7->size.width = width;
  a7->size.height = height;
  return 1;
}

void sub_100137CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  *(a2 + 16) = 0;

  swift_beginAccess();
  v6 = *(a3 + 16);
  swift_beginAccess();
  *(a3 + 16) = 0;
}

uint64_t sub_100137D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100137DAC(opaqueCMSampleBuffer *a1, void *a2)
{
  if (CMSampleBufferGetNumSamples(a1) < 1)
  {
    return 0;
  }

  bufferListSize = 0;
  AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, &bufferListSize, 0, 0, 0, 0, 0, 0);
  if (AudioBufferListWithRetainedBlockBuffer != noErr.getter())
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100018D90(v11, qword_1002E8CB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_10001901C(0xD000000000000033, 0x8000000100232560, aBlock);
      *(v14 + 12) = 1024;
      *(v14 + 14) = AudioBufferListWithRetainedBlockBuffer;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s Failed to get AudioBufferlist size - error: %d", v14, 0x12u);
      sub_100014B64(v15);
    }

    goto LABEL_18;
  }

  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(NSMutableData) initWithLength:bufferListSize];
  *(v5 + 16) = v6;
  if (!v6)
  {

    return 0;
  }

  v7 = [v6 mutableBytes];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, 0, v7, bufferListSize, kCFAllocatorDefault, kCFAllocatorDefault, 0, (v8 + 16));
  if (v9 != noErr.getter())
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100018D90(v16, qword_1002E8CB0);
    v12 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10001901C(0xD000000000000033, 0x8000000100232560, aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v12, v17, "%s Failed to get AudioBufferlist - error: %d", v18, 0x12u);
    sub_100014B64(v19);
LABEL_16:

LABEL_17:

LABEL_18:

    return 0;
  }

  if (!a2)
  {
    v21 = CMSampleBufferRef.formatDescription.getter();
    if (v21)
    {
      v22 = v21;
      v10 = [objc_allocWithZone(AVAudioFormat) initWithCMAudioFormatDescription:v21];

      goto LABEL_22;
    }

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100018D90(v28, qword_1002E8CB0);
    v12 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v29))
    {
      goto LABEL_17;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10001901C(0xD000000000000033, 0x8000000100232560, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v29, "%s Failed to get streamDescription", v30, 0xCu);
    sub_100014B64(v31);
    goto LABEL_16;
  }

  v10 = a2;
LABEL_22:
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  *(v23 + 24) = v8;
  v24 = objc_allocWithZone(AVAudioPCMBuffer);
  aBlock[4] = sub_10013837C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100137D58;
  aBlock[3] = &unk_100291AD8;
  v25 = _Block_copy(aBlock);
  v26 = a2;

  v27 = [v24 initWithPCMFormat:v10 bufferListNoCopy:v7 deallocator:v25];
  _Block_release(v25);

  return v27;
}

uint64_t sub_100138384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1001384C0()
{
  if (*v0)
  {
    return 0x646C697542707061;
  }

  else
  {
    return 0x6973726556707061;
  }
}

uint64_t sub_10013850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001385F8(uint64_t a1)
{
  v2 = sub_100138804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138634(uint64_t a1)
{
  v2 = sub_100138804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  v7 = sub_1000C773C(&qword_1002D2028);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v13 - v10;
  sub_10000AACC(a1, a1[3]);
  sub_100138804();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100138804()
{
  result = qword_1002D2030;
  if (!qword_1002D2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2030);
  }

  return result;
}

uint64_t AppData.init(from:)(void *a1)
{
  result = sub_100138920(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001388D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100138920(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100138920(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2060);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000AACC(a1, a1[3]);
  sub_100138804();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100014B64(a1);
  return v8;
}

unint64_t sub_100138B08()
{
  result = qword_1002D2038;
  if (!qword_1002D2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2038);
  }

  return result;
}

unint64_t sub_100138B60()
{
  result = qword_1002D2040;
  if (!qword_1002D2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2040);
  }

  return result;
}

uint64_t sub_100138BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100138BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100138C60()
{
  result = qword_1002D2048;
  if (!qword_1002D2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2048);
  }

  return result;
}

unint64_t sub_100138CB8()
{
  result = qword_1002D2050;
  if (!qword_1002D2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2050);
  }

  return result;
}

unint64_t sub_100138D10()
{
  result = qword_1002D2058;
  if (!qword_1002D2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2058);
  }

  return result;
}

uint64_t sub_100138E30(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_100018DC8(v6, a3);
  v7 = sub_100018D90(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_100138F2C()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100018DC8(v0, static SecondLayerRecordEvent.timeDurationGranularity);
  sub_100018D90(v0, static SecondLayerRecordEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t sub_100138FB0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100018D90(v4, a3);
}

uint64_t sub_100139048@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100018D90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t SecondLayerRecordEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C773C(&qword_1002CDFD8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecondLayerRecordEvent.eventData.setter(uint64_t a1)
{
  v3 = sub_1000C773C(&qword_1002CDFD8);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SecondLayerRecordEvent.secondLayerData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SecondLayerRecordEvent(0) + 20);
  v4 = sub_1000C773C(&qword_1002CDFE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SecondLayerRecordEvent.secondLayerData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SecondLayerRecordEvent(0) + 20);
  v4 = sub_1000C773C(&qword_1002CDFE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SecondLayerRecordEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1000C773C(&qword_1002CDFD8);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SecondLayerRecordEvent(0) + 20);
  v5 = sub_1000C773C(&qword_1002CDFE0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SecondLayerRecordEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EventData();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecondLayerRecordEvent.Model.init(eventData:secondLayerData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_100139508()
{
  if (*v0)
  {
    return 0x614C646E6F636573;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_100139554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C646E6F636573 && a2 == 0xEF61746144726579)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100139640(uint64_t a1)
{
  v2 = sub_10013985C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013967C(uint64_t a1)
{
  v2 = sub_10013985C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SecondLayerRecordEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2068);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000AACC(a1, a1[3]);
  sub_10013985C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for EventData();
  sub_100139C50(&qword_1002D2078);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9[14] = 1;
    sub_1001398B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10013985C()
{
  result = qword_1002D2070;
  if (!qword_1002D2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2070);
  }

  return result;
}

unint64_t sub_1001398B0()
{
  result = qword_1002D2080;
  if (!qword_1002D2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2080);
  }

  return result;
}

uint64_t SecondLayerRecordEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for EventData();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002D2088);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SecondLayerRecordEvent.Model(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_10013985C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v15 = v14;
  v16 = v24;
  v28 = 0;
  sub_100139C50(&qword_1002D2090);
  v17 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(v16 + 32);
  v22 = v15;
  v18(v15, v6, v17);
  v27 = 1;
  sub_100139C94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v10, v7);
  v19 = v22;
  sub_100139CE8(v22, v23);
  sub_100014B64(a1);
  return sub_100139D4C(v19);
}

uint64_t sub_100139C50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100139C94()
{
  result = qword_1002D2098;
  if (!qword_1002D2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2098);
  }

  return result;
}

uint64_t sub_100139CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecondLayerRecordEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100139D4C(uint64_t a1)
{
  v2 = type metadata accessor for SecondLayerRecordEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100139E84@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100018D90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100139F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1000C773C(&qword_1002CDFD8);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_1000C773C(&qword_1002CDFE0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_10013A02C()
{
  sub_10013A0B0();
  if (v0 <= 0x3F)
  {
    sub_10013A160();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013A0B0()
{
  if (!qword_1002D2108)
  {
    type metadata accessor for EventData();
    sub_100139C50(&qword_1002D2090);
    sub_100139C50(&qword_1002D2078);
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D2108);
    }
  }
}

void sub_10013A160()
{
  if (!qword_1002D2110)
  {
    sub_100139C94();
    sub_1001398B0();
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D2110);
    }
  }
}

uint64_t sub_10013A1F0()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10013A278()
{
  result = qword_1002D21D0;
  if (!qword_1002D21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D21D0);
  }

  return result;
}

unint64_t sub_10013A2D0()
{
  result = qword_1002D21D8;
  if (!qword_1002D21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D21D8);
  }

  return result;
}

unint64_t sub_10013A328()
{
  result = qword_1002D21E0;
  if (!qword_1002D21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D21E0);
  }

  return result;
}

uint64_t sub_10013A37C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10013A3C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10013A430@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_10013A578(a1, &v25, a3);
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v29;
  v24[5] = v30;
  v24[6] = v31;
  v24[7] = v32;
  sub_10000B46C(&v16, v15, &qword_1002D21E8);
  sub_100003CBC(v24, &qword_1002D21E8);
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v30;
  *(a2 + 80) = v29;
  *(a2 + 96) = v9;
  v10 = v32;
  *(a2 + 112) = v31;
  *(a2 + 128) = v10;
  v11 = v26;
  *(a2 + 16) = v25;
  *(a2 + 32) = v11;
  v12 = v28;
  *(a2 + 48) = v27;
  *(a2 + 64) = v12;
  result = v15[0];
  v14 = v15[2];
  *(a2 + 160) = v15[1];
  *(a2 + 176) = v14;
  *(a2 + 144) = result;
  return result;
}

uint64_t sub_10013A578@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, double a3@<D0>)
{
  v6 = objc_opt_self();
  v7 = [v6 secondaryLabelColor];
  v18 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = static Alignment.center.getter();
  v17 = v9;
  swift_getKeyPath();
  *&v36[0] = a1;
  sub_10013ACB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a1 + 24);
  v11 = [v6 secondaryLabelColor];
  v12 = Color.init(_:)();
  static UnitPoint.center.getter();
  v23[0] = v20;
  v23[1] = v21;
  *&v24 = v22;
  *(&v24 + 1) = v18;
  LOWORD(v25) = 256;
  *(&v25 + 1) = v8;
  v26 = v17;
  *v19 = v17;
  *&v27 = v10;
  *(&v27 + 1) = a3;
  *&v28 = v12;
  WORD4(v28) = 256;
  *&v29 = 0xBFF921FB54442D18;
  *(&v29 + 1) = v13;
  v30 = v14;
  *&v19[56] = v14;
  *&v19[40] = v29;
  *&v19[24] = v28;
  *&v19[8] = v27;
  v15 = v25;
  a2[2] = v24;
  a2[3] = v15;
  *a2 = v20;
  a2[1] = v21;
  a2[6] = *&v19[32];
  a2[7] = *&v19[48];
  a2[4] = *v19;
  a2[5] = *&v19[16];
  v31[0] = v10;
  *&v31[1] = a3;
  v31[2] = v12;
  v32 = 256;
  v33 = 0xBFF921FB54442D18;
  v34 = v13;
  v35 = v14;
  sub_10000B46C(v23, v36, &qword_1002D21F0);
  sub_10000B46C(&v27, v36, &qword_1002D21F8);
  sub_100003CBC(v31, &qword_1002D21F8);
  v36[0] = v20;
  v36[1] = v21;
  v37 = v22;
  v38 = v18;
  v39 = 256;
  v40 = v8;
  v41 = v17;
  return sub_100003CBC(v36, &qword_1002D21F0);
}

void sub_10013A820()
{
  Path.move(to:)();
  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  Path.closeSubpath()();
}

double sub_10013A8B8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMidX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidY(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetWidth(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetHeight(v16);
  Path.init(_:)();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_10013A9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10013AED4();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10013AA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10013AED4();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10013AAB0(uint64_t a1)
{
  v2 = sub_10013AED4();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_10013AAFC@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v3 = v5;
  result = (*(*(&type metadata for Double - 1) + 8))(&v5);
  *a1 = v3;
  return result;
}

double sub_10013AB6C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_10013AB78(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *v1;
  *a1 = *v1;
  (*(*(&type metadata for Double - 1) + 8))();
  a1[1] = v3;
  return sub_10013ABFC;
}

double sub_10013ABFC(uint64_t a1)
{
  result = *(a1 + 8);
  **(a1 + 16) = result;
  return result;
}

double sub_10013AC10@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10013ACB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

unint64_t sub_10013ACB0()
{
  result = qword_1002D0320;
  if (!qword_1002D0320)
  {
    _s9ViewModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0320);
  }

  return result;
}

unint64_t sub_10013AD18()
{
  result = qword_1002D2210;
  if (!qword_1002D2210)
  {
    sub_1000C7784(&qword_1002D2218);
    sub_100008034(&qword_1002D2220, &qword_1002D2228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2210);
  }

  return result;
}

unint64_t sub_10013AE18()
{
  result = qword_1002D2240;
  if (!qword_1002D2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2240);
  }

  return result;
}

unint64_t sub_10013AE70()
{
  result = qword_1002D2248;
  if (!qword_1002D2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2248);
  }

  return result;
}

unint64_t sub_10013AED4()
{
  result = qword_1002D2250;
  if (!qword_1002D2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2250);
  }

  return result;
}

uint64_t _s9UIKitHostCMa()
{
  result = qword_1002D2260;
  if (!qword_1002D2260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10013AFC4(double a1)
{
  _s9ViewModelCMa();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v1 + qword_1002D2258) = v3;
  sub_10013B1F8();

  ObservedObject.init(wrappedValue:)();
  v4 = UIHostingController.init(rootView:)();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10013B148()
{
  v2.receiver = v0;
  v2.super_class = _s9UIKitHostCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10013B1F8()
{
  result = qword_1002D22B0;
  if (!qword_1002D22B0)
  {
    _s9ViewModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D22B0);
  }

  return result;
}

double sub_10013B250()
{
  swift_getKeyPath();
  sub_10013ACB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_10013B2C0(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10013ACB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10013B3A8(uint64_t result, double a2)
{
  v2 = fmin(a2, 1.0);
  if (v2 < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 24) == v3)
  {
    *(result + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_10013ACB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10013B4AC()
{
  v1 = OBJC_IVAR____TtCV10VoiceMemos22RoundProgressIndicator9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa()
{
  result = qword_1002D22E8;
  if (!qword_1002D22E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013B59C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10013B63C@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_10013B67C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t EndReason.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x676B636142707061;
  }

  return 0x6975516563726F66;
}

uint64_t sub_10013B710(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x676B636142707061;
  v4 = 0xED0000646E756F72;
  if (v2 != 1)
  {
    v3 = 0x6975516563726F66;
    v4 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x676B636142707061;
  v8 = 0xED0000646E756F72;
  if (*a2 != 1)
  {
    v7 = 0x6975516563726F66;
    v8 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10013B834()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013B8E8()
{
  String.hash(into:)();
}

Swift::Int sub_10013B988()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013BA38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10VoiceMemos9EndReasonO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10013BA68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED0000646E756F72;
  v5 = 0x676B636142707061;
  if (v2 != 1)
  {
    v5 = 0x6975516563726F66;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s10VoiceMemos9EndReasonO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CBB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10013BBD8()
{
  result = qword_1002D23E8;
  if (!qword_1002D23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D23E8);
  }

  return result;
}

unint64_t sub_10013BC3C()
{
  result = qword_1002D23F0;
  if (!qword_1002D23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D23F0);
  }

  return result;
}

uint64_t sub_10013BCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10013BD50(uint64_t a1)
{
  v2 = sub_10013BF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013BD8C(uint64_t a1)
{
  v2 = sub_10013BF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionEndData.encode(to:)(void *a1, char a2)
{
  v4 = sub_1000C773C(&qword_1002D23F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10[-v7];
  sub_10000AACC(a1, a1[3]);
  sub_10013BF10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  sub_10013BF64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_10013BF10()
{
  result = qword_1002D2400;
  if (!qword_1002D2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2400);
  }

  return result;
}

unint64_t sub_10013BF64()
{
  result = qword_1002D2408;
  if (!qword_1002D2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2408);
  }

  return result;
}

void *sub_10013BFD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013C018(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_10013C018(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2438);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = sub_10000AACC(a1, a1[3]);
  sub_10013BF10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100014B64(a1);
  }

  else
  {
    sub_10013C360();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[15];
    sub_100014B64(a1);
  }

  return v8;
}

unint64_t sub_10013C18C()
{
  result = qword_1002D2410;
  if (!qword_1002D2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2410);
  }

  return result;
}

unint64_t sub_10013C1E4()
{
  result = qword_1002D2418;
  if (!qword_1002D2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2418);
  }

  return result;
}

unint64_t sub_10013C25C()
{
  result = qword_1002D2420;
  if (!qword_1002D2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2420);
  }

  return result;
}

unint64_t sub_10013C2B4()
{
  result = qword_1002D2428;
  if (!qword_1002D2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2428);
  }

  return result;
}

unint64_t sub_10013C30C()
{
  result = qword_1002D2430;
  if (!qword_1002D2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2430);
  }

  return result;
}

unint64_t sub_10013C360()
{
  result = qword_1002D2440;
  if (!qword_1002D2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2440);
  }

  return result;
}

void __swiftcall DeviceData.init(deviceModel:devicePlatform:osVersion:osInstallVariant:osBundleVersion:)(VoiceMemos::DeviceData *__return_ptr retstr, Swift::String deviceModel, VoiceMemos::DevicePlatform devicePlatform, Swift::String osVersion, VoiceMemos::OsInstallVariant osInstallVariant, Swift::String osBundleVersion)
{
  retstr->deviceModel = deviceModel;
  retstr->devicePlatform = devicePlatform;
  retstr->osVersion = osVersion;
  retstr->osInstallVariant = osInstallVariant & 1;
  retstr->osBundleVersion = osBundleVersion;
}

uint64_t UserData.userStorefrontID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UserData.userStorefrontID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DeviceData.osBundleVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeviceData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_10013C528()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0x6F6973726556736FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10013C5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013C9FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013C620(uint64_t a1)
{
  v2 = sub_10013C8A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013C65C(uint64_t a1)
{
  v2 = sub_10013C8A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000C773C(&qword_1002D2448);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_10000AACC(a1, a1[3]);
  sub_10013C8A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = *(v3 + 16);
    v11[13] = 1;
    sub_10013C8F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[11] = *(v3 + 40);
    v11[10] = 3;
    sub_10013C94C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[9] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10013C8A4()
{
  result = qword_1002D2450;
  if (!qword_1002D2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2450);
  }

  return result;
}

unint64_t sub_10013C8F8()
{
  result = qword_1002D2458;
  if (!qword_1002D2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2458);
  }

  return result;
}

unint64_t sub_10013C94C()
{
  result = qword_1002D2460;
  if (!qword_1002D2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2460);
  }

  return result;
}

double DeviceData.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10013CBD0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_10013C9FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100232690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10013CBD0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000C773C(&qword_1002D2490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v28 - v8;
  sub_10000AACC(a1, a1[3]);
  sub_10013C8A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  LOBYTE(v37[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v32 = v10;
  LOBYTE(v33) = 1;
  sub_10013D2A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = LOBYTE(v37[0]);
  LOBYTE(v37[0]) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v13;
  v30 = v14;
  v31 = v15;
  LOBYTE(v33) = 3;
  sub_10013D2FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = LOBYTE(v37[0]);
  v45 = 4;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  v21 = v16;
  v29 = v16;
  v22 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v12;
  v23 = v44;
  LOBYTE(v34) = v44;
  v24 = v30;
  *(&v34 + 1) = v30;
  *&v35 = v31;
  BYTE8(v35) = v21;
  *&v36 = v17;
  *(&v36 + 1) = v20;
  sub_10013D350(&v33, v37);
  sub_100014B64(a1);
  v37[0] = v22;
  v37[1] = v12;
  v38 = v23;
  v39 = v24;
  v40 = v31;
  v41 = v29;
  v42 = v17;
  v43 = v20;
  result = sub_10013D388(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

unint64_t sub_10013CEFC()
{
  result = qword_1002D2468;
  if (!qword_1002D2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2468);
  }

  return result;
}

unint64_t sub_10013CF54()
{
  result = qword_1002D2470;
  if (!qword_1002D2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2470);
  }

  return result;
}

uint64_t sub_10013CFA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10013CFF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DevicePlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DevicePlatform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013D1A4()
{
  result = qword_1002D2478;
  if (!qword_1002D2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2478);
  }

  return result;
}

unint64_t sub_10013D1FC()
{
  result = qword_1002D2480;
  if (!qword_1002D2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2480);
  }

  return result;
}

unint64_t sub_10013D254()
{
  result = qword_1002D2488;
  if (!qword_1002D2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2488);
  }

  return result;
}

unint64_t sub_10013D2A8()
{
  result = qword_1002D2498;
  if (!qword_1002D2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2498);
  }

  return result;
}

unint64_t sub_10013D2FC()
{
  result = qword_1002D24A0;
  if (!qword_1002D24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24A0);
  }

  return result;
}

uint64_t UserData.init(userID:userIDContext:userStartMonth:userStartYear:userStorefrontID:userHashMod:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t sub_10013D428()
{
  v1 = *v0;
  v2 = 0x444972657375;
  v3 = 0x7261745372657375;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6873614872657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F43444972657375;
  if (v1 != 1)
  {
    v5 = 0x7261745372657375;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10013D510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013D87C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013D544(uint64_t a1)
{
  v2 = sub_10013D7CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013D580(uint64_t a1)
{
  v2 = sub_10013D7CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserData.encode(to:)(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D24A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000AACC(a1, a1[3]);
  sub_10013D7CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9[14] = 1;
    sub_1000D597C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10013D7CC()
{
  result = qword_1002D24B0;
  if (!qword_1002D24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24B0);
  }

  return result;
}

double UserData.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10013DA98(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_10013D87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43444972657375 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xEE0068746E6F4D74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00007261655974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002326B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6873614872657375 && a2 == 0xEB00000000646F4DLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10013DA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C773C(&qword_1002D24E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v19 - v8;
  sub_10000AACC(a1, a1[3]);
  sub_10013D7CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v29 = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v13 = v10;
  v28 = 1;
  sub_1000D5928();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 4;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v14;
  v24 = 5;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);

  v16 = v21;

  sub_100014B64(a1);

  *a2 = v13;
  *(a2 + 8) = v12;
  v18 = v22;
  *(a2 + 16) = v23;
  *(a2 + 20) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;
  return result;
}

unint64_t sub_10013DD8C()
{
  result = qword_1002D24B8;
  if (!qword_1002D24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24B8);
  }

  return result;
}

unint64_t sub_10013DDE4()
{
  result = qword_1002D24C0;
  if (!qword_1002D24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24C0);
  }

  return result;
}

__n128 sub_10013DE38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10013DE4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_10013DE94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10013DF04()
{
  result = qword_1002D24C8;
  if (!qword_1002D24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24C8);
  }

  return result;
}

unint64_t sub_10013DF5C()
{
  result = qword_1002D24D0;
  if (!qword_1002D24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24D0);
  }

  return result;
}

unint64_t sub_10013DFB4()
{
  result = qword_1002D24D8;
  if (!qword_1002D24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24D8);
  }

  return result;
}

uint64_t DevicePlatform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 5459817;
  v2 = 0x534F63616DLL;
  v3 = 0x534F6E6F69736976;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x534F64615069;
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

Swift::Int sub_10013E0A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E178()
{
  String.hash(into:)();
}

Swift::Int sub_10013E238()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013E308@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10VoiceMemos14DevicePlatformO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10013E338(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE500000000000000;
  v6 = 0x534F63616DLL;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F64615069;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t _s10VoiceMemos14DevicePlatformO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CC20, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10013E4C8()
{
  result = qword_1002D24E8;
  if (!qword_1002D24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24E8);
  }

  return result;
}

unint64_t sub_10013E52C()
{
  result = qword_1002D24F0;
  if (!qword_1002D24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24F0);
  }

  return result;
}

VoiceMemos::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CCB8, v2);

  if (v3 == 1)
  {
    v4.value = VoiceMemos_OsInstallVariant_external;
  }

  else
  {
    v4.value = VoiceMemos_OsInstallVariant_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t OsInstallVariant.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_10013E5F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C616E7265747865;
  }

  else
  {
    v2 = 0x6C616E7265746E69;
  }

  if (*a2)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x6C616E7265746E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_10013E678()
{
  result = qword_1002D24F8;
  if (!qword_1002D24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D24F8);
  }

  return result;
}

Swift::Int sub_10013E6CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E738()
{
  String.hash(into:)();
}

Swift::Int sub_10013E788()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E7F0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CCB8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10013E850(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6C616E7265747865;
  }

  else
  {
    v2 = 0x6C616E7265746E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

unint64_t sub_10013E93C()
{
  result = qword_1002D2500;
  if (!qword_1002D2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2500);
  }

  return result;
}

uint64_t sub_10013E9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10013EA34(uint64_t a1)
{
  v2 = sub_10013EBEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013EA70(uint64_t a1)
{
  v2 = sub_10013EBEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D2508);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_10013EBEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10013EBEC()
{
  result = qword_1002D2510;
  if (!qword_1002D2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2510);
  }

  return result;
}

uint64_t DebugData.init(from:)(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2518);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - v6;
  v8 = sub_10000AACC(a1, a1[3]);
  sub_10013EBEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100014B64(a1);
  return v8;
}

uint64_t sub_10013ED9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000C773C(&qword_1002D2518);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - v8;
  sub_10000AACC(a1, a1[3]);
  sub_10013EBEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = sub_100014B64(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_10013EF18(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D2508);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_10013EBEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10013F068()
{
  result = qword_1002D2530;
  if (!qword_1002D2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2530);
  }

  return result;
}

unint64_t sub_10013F0C0()
{
  result = qword_1002D2538;
  if (!qword_1002D2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2538);
  }

  return result;
}

unint64_t sub_10013F118()
{
  result = qword_1002D2540;
  if (!qword_1002D2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2540);
  }

  return result;
}

uint64_t sub_10013F2A8()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100018DC8(v0, static AppSessionStartEvent.timeDurationGranularity);
  sub_100018D90(v0, static AppSessionStartEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1000C773C(&qword_1002CDFD8);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10013F40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10013F49C(uint64_t a1)
{
  v2 = sub_10013F678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013F4D8(uint64_t a1)
{
  v2 = sub_10013F678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D2548);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_10013F678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for EventData();
  sub_100139C50(&qword_1002D2078);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10013F678()
{
  result = qword_1002D2550;
  if (!qword_1002D2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2550);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for EventData();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C773C(&qword_1002D2558);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v18 - v9;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  __chkstk_darwin(started - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_10013F678();
  v15 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v20;
    sub_100139C50(&qword_1002D2090);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v6);
    (*(v16 + 32))(v14, v21, v3);
    sub_10013F958(v14, v19);
  }

  return sub_100014B64(a1);
}

uint64_t sub_10013F958(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_10013FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10013FBA0()
{
  result = qword_1002D2680;
  if (!qword_1002D2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2680);
  }

  return result;
}

unint64_t sub_10013FBF8()
{
  result = qword_1002D2688;
  if (!qword_1002D2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2688);
  }

  return result;
}

unint64_t sub_10013FC50()
{
  result = qword_1002D2690;
  if (!qword_1002D2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2690);
  }

  return result;
}

uint64_t sub_10013FDE0()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100018DC8(v0, static SecondLayerEnableEvent.timeDurationGranularity);
  sub_100018D90(v0, static SecondLayerEnableEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t SecondLayerEnableEvent.secondLayerData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SecondLayerEnableEvent(0) + 20);
  v4 = sub_1000C773C(&qword_1002CDFE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SecondLayerEnableEvent.secondLayerData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SecondLayerEnableEvent(0) + 20);
  v4 = sub_1000C773C(&qword_1002CDFE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SecondLayerEnableEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1000C773C(&qword_1002CDFD8);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SecondLayerEnableEvent(0) + 20);
  v5 = sub_1000C773C(&qword_1002CDFE0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t sub_1001400FC(uint64_t a1)
{
  v2 = sub_100140318();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100140138(uint64_t a1)
{
  v2 = sub_100140318();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SecondLayerEnableEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2698);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000AACC(a1, a1[3]);
  sub_100140318();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for EventData();
  sub_100139C50(&qword_1002D2078);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9[14] = 1;
    sub_1001398B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100140318()
{
  result = qword_1002D26A0;
  if (!qword_1002D26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D26A0);
  }

  return result;
}

uint64_t SecondLayerEnableEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for EventData();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002D26A8);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SecondLayerEnableEvent.Model(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_100140318();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v15 = v14;
  v16 = v24;
  v28 = 0;
  sub_100139C50(&qword_1002D2090);
  v17 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(v16 + 32);
  v22 = v15;
  v18(v15, v6, v17);
  v27 = 1;
  sub_100139C94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v10, v7);
  v19 = v22;
  sub_1001406B8(v22, v23);
  sub_100014B64(a1);
  return sub_10014071C(v19);
}

uint64_t sub_1001406B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecondLayerEnableEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014071C(uint64_t a1)
{
  v2 = type metadata accessor for SecondLayerEnableEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001408B4()
{
  result = qword_1002D27D0;
  if (!qword_1002D27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D27D0);
  }

  return result;
}

unint64_t sub_10014090C()
{
  result = qword_1002D27D8;
  if (!qword_1002D27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D27D8);
  }

  return result;
}

unint64_t sub_100140964()
{
  result = qword_1002D27E0;
  if (!qword_1002D27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D27E0);
  }

  return result;
}

void __swiftcall SessionData.init(utcOffset:countryCode:iCloudAccountState:productType:)(VoiceMemos::SessionData *__return_ptr retstr, Swift::Int32 utcOffset, Swift::String countryCode, VoiceMemos::ICloudAccountState iCloudAccountState, Swift::String productType)
{
  retstr->utcOffset = utcOffset;
  retstr->countryCode = countryCode;
  retstr->iCloudAccountState = iCloudAccountState & 1;
  retstr->productType = productType;
}

uint64_t SessionData.countryCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SessionData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionData.productType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SessionData.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_100140B10()
{
  v1 = 0x657366664F637475;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x54746375646F7270;
  }

  if (*v0)
  {
    v1 = 0x437972746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100140BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100140F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100140BDC(uint64_t a1)
{
  v2 = sub_100140E54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100140C18(uint64_t a1)
{
  v2 = sub_100140E54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000C773C(&qword_1002D27E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_10000AACC(a1, a1[3]);
  sub_100140E54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[13] = *(v3 + 24);
    v11[12] = 2;
    sub_100140EA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100140E54()
{
  result = qword_1002D27F0;
  if (!qword_1002D27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D27F0);
  }

  return result;
}

unint64_t sub_100140EA8()
{
  result = qword_1002D27F8;
  if (!qword_1002D27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D27F8);
  }

  return result;
}

double SessionData.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001410D8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100140F58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002326D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001410D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C773C(&qword_1002D2828);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v19 - v8;
  sub_10000AACC(a1, a1[3]);
  sub_100140E54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v25 = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v20 = v11;
  v22 = 2;
  sub_1001415A4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIDWORD(v19) = v23;
  v21 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_100014B64(a1);
  *a2 = v10;
  *(a2 + 8) = v20;
  *(a2 + 16) = v13;
  *(a2 + 24) = BYTE4(v19);
  *(a2 + 32) = v14;
  *(a2 + 40) = v17;
  return result;
}

unint64_t sub_10014133C()
{
  result = qword_1002D2800;
  if (!qword_1002D2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2800);
  }

  return result;
}

unint64_t sub_100141394()
{
  result = qword_1002D2808;
  if (!qword_1002D2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2808);
  }

  return result;
}

uint64_t sub_1001413E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100141430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001414A0()
{
  result = qword_1002D2810;
  if (!qword_1002D2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2810);
  }

  return result;
}

unint64_t sub_1001414F8()
{
  result = qword_1002D2818;
  if (!qword_1002D2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2818);
  }

  return result;
}

unint64_t sub_100141550()
{
  result = qword_1002D2820;
  if (!qword_1002D2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2820);
  }

  return result;
}

unint64_t sub_1001415A4()
{
  result = qword_1002D2830;
  if (!qword_1002D2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2830);
  }

  return result;
}

uint64_t sub_100141628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614C646E6F636573 && a2 == 0xEF65707954726579)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001416B8(uint64_t a1)
{
  v2 = sub_100141868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001416F4(uint64_t a1)
{
  v2 = sub_100141868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SecondLayerData.encode(to:)(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D2838);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_100141868();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001418BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100141868()
{
  result = qword_1002D2840;
  if (!qword_1002D2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2840);
  }

  return result;
}

unint64_t sub_1001418BC()
{
  result = qword_1002D2848;
  if (!qword_1002D2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2848);
  }

  return result;
}

uint64_t sub_100141940(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2868);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9 - v6;
  sub_10000AACC(a1, a1[3]);
  sub_100141868();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100141BC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  return sub_100014B64(a1);
}

unint64_t sub_100141ABC()
{
  result = qword_1002D2850;
  if (!qword_1002D2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2850);
  }

  return result;
}

unint64_t sub_100141B14()
{
  result = qword_1002D2858;
  if (!qword_1002D2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2858);
  }

  return result;
}

unint64_t sub_100141B6C()
{
  result = qword_1002D2860;
  if (!qword_1002D2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2860);
  }

  return result;
}

unint64_t sub_100141BC0()
{
  result = qword_1002D2870;
  if (!qword_1002D2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2870);
  }

  return result;
}

VoiceMemos::ICloudAccountState_optional __swiftcall ICloudAccountState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CD08, v2);

  if (v3 == 1)
  {
    v4.value = VoiceMemos_ICloudAccountState_loggedOut;
  }

  else
  {
    v4.value = VoiceMemos_ICloudAccountState_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ICloudAccountState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x754F646567676F6CLL;
  }

  else
  {
    return 0x6E49646567676F6CLL;
  }
}

uint64_t sub_100141CA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x754F646567676F6CLL;
  }

  else
  {
    v3 = 0x6E49646567676F6CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x754F646567676F6CLL;
  }

  else
  {
    v5 = 0x6E49646567676F6CLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100141D54()
{
  result = qword_1002D2878;
  if (!qword_1002D2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2878);
  }

  return result;
}