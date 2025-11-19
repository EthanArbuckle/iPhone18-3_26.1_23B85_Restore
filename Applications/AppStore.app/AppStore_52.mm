double sub_1005D1BA4()
{
  v0 = sub_10002849C(&qword_100970F20);
  v47 = *(v0 - 8);
  __chkstk_darwin(v0);
  v46 = &v36 - v1;
  v45 = type metadata accessor for ComponentLayoutOptions();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v36 - v4;
  v50 = sub_10002849C(qword_10097DB40);
  v42 = *(v50 - 8);
  __chkstk_darwin(v50);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v36 - v7;
  v8 = sub_10002849C(&unk_1009731F0);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v48 = type metadata accessor for PageGrid();
  v11 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Review();
  v15 = sub_1005D2298(&qword_100983808, &type metadata accessor for Review);
  ItemLayoutContext.typedModel<A>(as:)();
  v16 = v53[0];
  if (!v53[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v38 = v0;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v18 = v17;
  v37 = *(v11 + 8);
  v37(v13, v48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = v53[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v54.receiver = v21;
  v54.super_class = v20;
  v23 = objc_msgSendSuper2(&v54, "init");
  v53[3] = v14;
  v53[4] = v15;
  v53[0] = v16;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v39 + 8))(v10, v8);

  v24 = v49;
  ItemLayoutContext.state.getter();
  v25 = v43;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v37(v13, v48);
  sub_10002C0AC(v53, v51);
  v26 = v23;
  sub_10002849C(&qword_100973D50);
  swift_dynamicCast();
  v27 = v42;
  (*(v42 + 16))(v40, v24, v50);
  type metadata accessor for NilState();
  v28 = v46;
  StateLens.init(_:)();
  v29 = v52;
  v30 = v41;
  static ComponentLayoutOptions.overflowed.getter();
  sub_1005D2298(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v31 = v45;
  LOBYTE(v20) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v32 = *(v44 + 8);
  v32(v30, v31);
  sub_1005D0788(v29, v20 & 1, v20 & 1, v26);
  v34 = v33;

  (*(v47 + 8))(v28, v38);
  v32(v25, v31);
  (*(v27 + 8))(v49, v50);

  sub_100007000(v53);
  return v34;
}

uint64_t sub_1005D2298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005D22E4()
{
  v0 = sub_10002849C(&qword_100979740);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  *&v79 = &v77 - v2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10002849C(&qword_100973210);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007BB060;
  v80 = type metadata accessor for BoolUserDefaultsDebugSetting();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD00000000000001ALL;
  *(v8 + 64) = 0x800000010081C1D0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = 0x800000010081C1F0;
  *(v8 + 96) = 0;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v4 + 8);
  v85 = v3;
  v81 = v12;
  v82 = v4 + 8;
  v12(v6, v3);
  v86 = v9;
  v87 = v11;
  AnyHashable.init<A>(_:)();
  v84 = v7;
  *(v7 + 32) = v8;
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v0, qword_1009D2A68);
  v14 = type metadata accessor for LocalPreferences();
  v78 = static LocalPreferences.AppStoreKit.getter();
  v15 = ASKBuildTypeGetCurrent();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
    goto LABEL_5;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_7;
  }

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
  {
LABEL_5:

LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
LABEL_7:

    goto LABEL_8;
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
  {
  }

  else
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v76 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  static LocalPreferences.currentApplication.getter();
  Preferences.subscript.getter();

  v21 = v86;
LABEL_9:
  v22 = v13;
  v23 = *(v1 + 16);
  v24 = v79;
  v23(v79, v22, v0);
  type metadata accessor for BoolPreferencesDebugSetting();
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD00000000000001BLL;
  *(v25 + 64) = 0x800000010081C210;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *(v25 + 88) = v21 & 1;
  v23(v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v24, v0);
  v26 = (v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v26 = v78;
  v26[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v77 = v14;
  v30 = v81;
  v81(v6, v85);
  v86 = v27;
  v87 = v29;
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v24, v0);

  v31 = v84;
  *(v84 + 40) = v25;
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 56) = 0xD000000000000025;
  *(v33 + 64) = 0x800000010081C230;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0xD000000000000021;
  *(v33 + 88) = 0x800000010081C260;
  *(v33 + 96) = 0;
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  v37 = v85;
  v30(v6, v85);
  v86 = v34;
  v87 = v36;
  AnyHashable.init<A>(_:)();
  *(v32 + 48) = v33;
  v38 = swift_allocObject();
  *(v38 + 56) = 0x646F4D206F6D6544;
  *(v38 + 64) = 0xE900000000000065;
  *(v38 + 72) = 0;
  *(v38 + 80) = 0x65646F4D6F6D6564;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 0;
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v30(v6, v37);
  v86 = v39;
  v87 = v41;
  AnyHashable.init<A>(_:)();
  *(v32 + 56) = v38;
  v42 = swift_allocObject();
  v79 = xmmword_1007B15F0;
  *(v42 + 16) = xmmword_1007B15F0;
  v43 = swift_allocObject();
  *(v43 + 56) = 0xD00000000000001ALL;
  *(v43 + 64) = 0x800000010081C290;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0xD000000000000013;
  *(v43 + 88) = 0x8000000100816070;
  *(v43 + 96) = 0;
  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  v47 = v85;
  v30(v6, v85);
  v86 = v44;
  v87 = v46;
  AnyHashable.init<A>(_:)();
  v78 = v42;
  *(v42 + 32) = v43;
  v48 = static LocalPreferences.currentJSVersion.getter();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0x6E776F6E6B6E55;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  type metadata accessor for InfoDebugSetting();
  v52 = swift_allocObject();
  v52[7] = 0x697372655620534ALL;
  v52[8] = 0xEA00000000006E6FLL;
  v52[9] = v50;
  v52[10] = v51;

  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  v30(v6, v47);
  v86 = v53;
  v87 = v55;
  AnyHashable.init<A>(_:)();

  *(v42 + 40) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  type metadata accessor for DebugSection();
  v57 = swift_allocObject();
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v61 = v47;
  v30(v6, v47);
  v57[2] = v58;
  v57[3] = v60;
  v57[4] = 0;
  v57[5] = 0xE000000000000000;
  v57[6] = v84;
  *(v56 + 32) = v57;
  v62 = swift_allocObject();
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  v30(v6, v61);
  v62[2] = v63;
  v62[3] = v65;
  v62[4] = 0x697263536176614ALL;
  v62[5] = 0xEA00000000007470;
  v62[6] = v78;
  *(v56 + 40) = v62;
  return v56;
}

id sub_1005D2C2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double *sub_1005D2C84(uint64_t a1, int *a2)
{
  v30[0] = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - v12;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v30[4] == v30[2] && v30[5] == v30[3])
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_10026CF10(a1, v30[0]);
    }
  }

  v17 = COERCE_DOUBLE(sub_1005D38F4(a1, v30[0]));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10002849C(&qword_100973210);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B0B70;
  *(v28 + 32) = v27;

  return v28;
}

double sub_1005D30A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = type metadata accessor for ShelfLayoutContext();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ShelfBackground();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = type metadata accessor for Shelf.ContentType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_10002849C(&unk_1009731F0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v81 == v79 && v82 == v80)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_5:
    v29 = v67;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v30 = v68;
    ReadOnlyLens.subscript.getter();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_1005D4268(&qword_100981230, &type metadata accessor for ShelfBackground);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_6;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_5;
  }

LABEL_6:
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v76;
  v38 = v77;
  if (v36 == v76 && v37 == v77)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v42 = sub_10002849C(&qword_10097BAA8);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_10022AA64(&qword_10097BAB0, &qword_10097BAA8);
    v78 = sub_1000056E0(v43);
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

    goto LABEL_16;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41 & v28)
  {
    goto LABEL_13;
  }

LABEL_9:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == v39 && v40 == v38)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
      return sub_100268C44(v39, v38, a3, v65, v78);
    }
  }

  v54 = sub_10002849C(&qword_10098DDE8);
  v55 = v78;
  v78[3] = v54;
  v55[4] = sub_10022AA64(&unk_10098DDF0, &qword_10098DDE8);
  v78 = sub_1000056E0(v55);
  static UICollectionReusableView.elementKind.getter();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v56 = v74;
  v57 = v75;
  v58 = a3;
  v59 = v73;
  (*(v75 + 16))(v73, v58, v74);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = swift_allocObject();
  (*(v57 + 32))(v61 + v60, v59, v56);
LABEL_16:
  ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  return result;
}

uint64_t sub_1005D38F4(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = type metadata accessor for PageGrid();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf.ContentType();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      ShelfLayoutContext.supplementaryPageGrid.getter();
      static CGFloat.allColumns.getter();
      PageGrid.componentMeasuringSize(spanning:)();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView();
      v31 = sub_10066D5E0(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_100269DCC(v22, v37);
}

double *sub_1005D3D74()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10002849C(&unk_1009731F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = sub_10026D1F8();
  v20 = v11;
  if (sub_1001DFEF4())
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, enum case for Shelf.ContentType.todayCard(_:), v0);
    sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v19[3] == v19[1] && v19[4] == v19[2])
    {
      v12 = *(v1 + 8);
      v12(v3, v0);
      v12(v6, v0);
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = *(v1 + 8);
      v14(v3, v0);
      v14(v6, v0);

      if ((v13 & 1) == 0)
      {
        return v11;
      }
    }

    v15 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v20;
  }

  return v11;
}

uint64_t sub_1005D41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10026BD60(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_1005D4268(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005D42B0()
{
  result = qword_100974AE0;
  if (!qword_100974AE0)
  {
    type metadata accessor for PosterLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974AE0);
  }

  return result;
}

double sub_1005D4308()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfLayoutContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  static PosterLockupLayout.aspectRatio.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.smallestPossibleColumnWidth.getter();
  (*(v1 + 8))(v3, v0);
  AspectRatio.height(fromWidth:)();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v13;
}

double sub_1005D4540()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PosterLockupLayout.aspectRatio.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.smallestPossibleColumnWidth.getter();
  (*(v1 + 8))(v3, v0);
  AspectRatio.height(fromWidth:)();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  return v9;
}

double sub_1005D4724()
{
  v0 = type metadata accessor for PageGrid();
  v39 = *(v0 - 8);
  __chkstk_darwin(v0);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyFooterLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyFooter();
  sub_1005D4D90(&qword_100981968, &type metadata accessor for PrivacyFooter);
  ItemLayoutContext.typedModel<A>(as:)();
  v11 = v42[0];
  if (!v42[0])
  {
    return 0.0;
  }

  v33 = v0;
  v34 = v5;
  v35 = v4;
  sub_1000367E8();
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  sub_1000056A8(v12, qword_1009D10E8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v13 = v42[0];
  v14 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v32 = v11;
  PrivacyFooter.bodyText.getter();
  LinkableText.styledText.getter();

  v15 = dispatch thunk of StyledText.asAttributedString(using:)();

  v16 = type metadata accessor for Feature();
  v43 = v16;
  v44 = sub_1005D4D90(&qword_100972E50, &type metadata accessor for Feature);
  v17 = sub_1000056E0(v42);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v31 = v15;
  v18 = v14;
  isFeatureEnabled(_:)();
  sub_100007000(v42);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v8 + 8))(v10, v7);
  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v2, qword_1009CEBE8);
  (*(v36 + 16))(v37, v19, v2);
  v20 = v43;
  v21 = v44;
  v22 = sub_10002A400(v42, v43);
  v41[3] = v20;
  v41[4] = *(v21 + 8);
  v23 = sub_1000056E0(v41);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = v40;
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  swift_getKeyPath();
  v25 = v38;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v39 + 8))(v25, v33);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_1005D4D90(&unk_10098DE10, &type metadata accessor for PrivacyFooterLayout);
  v26 = v35;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;

  swift_unknownObjectRelease();

  (*(v34 + 8))(v24, v26);
  sub_100007000(v42);
  return v28;
}

uint64_t sub_1005D4D90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005D4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v8 = type metadata accessor for TertiaryIconPlacement();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v11 = 0;
  v39 = _swiftEmptyArrayStorage;
  v32 = a4;
  v33 = v5;
  do
  {
    v12 = a1 + 40 + 16 * v11;
    v13 = v11;
    while (1)
    {
      if (v13 >= v10)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      v14 = String._bridgeToObjectiveC()();
      v15 = [objc_opt_self() _systemImageNamed:v14];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v13;
      v12 += 16;
      if (v11 == v10)
      {
        a4 = v32;
        v5 = v33;
        goto LABEL_18;
      }
    }

    if (qword_10096EA70 != -1)
    {
      swift_once();
    }

    v16 = [v15 imageWithTintColor:{qword_1009D2C80, v32, v33, v34, v35}];

    if (!v16)
    {
      goto LABEL_5;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 = v40;
    a4 = v32;
    v5 = v33;
  }

  while (v11 != v10);
LABEL_18:
  sub_100005744(0, &unk_100984040);

  v17 = [v5 traitCollection];
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  v19 = NSFontAttributeName;
  v20 = [v5 font];
  *(inited + 64) = sub_10002849C(&qword_10097FC38);
  *(inited + 40) = v20;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10005DC58(inited + 32);
  v21 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithString:v23];

  v25 = [objc_allocWithZone(NSMutableAttributedString) init];
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, a4, v38);
  v29 = (*(v26 + 88))(v27, v28);
  v30 = v21;
  v31 = v24;
  if (v29 == enum case for TertiaryIconPlacement.leading(_:) || (v30 = v24, v31 = v21, v29 == enum case for TertiaryIconPlacement.trailing(_:)))
  {

    [v25 appendAttributedString:v30];
    [v25 appendAttributedString:v31];
    [v5 setAttributedText:v25];
    [v5 setNeedsLayout];
  }

  else
  {
LABEL_23:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_1005D5258()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.secondaryText.getter();
  qword_1009D2C80 = result;
  return result;
}

uint64_t sub_1005D52F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentThread];
  v13 = [v12 isMainThread];

  if (v13)
  {
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    Promise.resolve(_:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1000076C0();
    v15 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1005D5B40;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CAA00;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1005D5B48(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v18 + 8))(v4, v2);
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_1005D569C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1005D5790()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10098DE28);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for AdvertActionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AdInteractionAction.adActionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1005D5AD0(v6);
    sub_10002849C(&qword_1009764A0);
    (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
    return Promise.__allocating_init(value:)();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    type metadata accessor for PromotedContentAdvertInteractionMetricsReporter();
    v15[0] = v15[1];
    v12 = swift_allocObject();
    type metadata accessor for PromotedContentMetricCollector();
    swift_unknownObjectRetain();
    *(v12 + 16) = static PromotedContentMetricCollector.shared.getter();
    type metadata accessor for PromotedContentInteractionTypeProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = v15[0];
    *(v12 + 24) = v13;
    sub_10002849C(&qword_1009764A0);
    v14 = Promise.__allocating_init()();

    sub_10018E8D8(v10, sub_1005D5B38, v14);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
    return v14;
  }
}

uint64_t sub_1005D5AD0(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098DE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005D5B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005D5B90(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v6 = type metadata accessor for TodayCard.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditorialDisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v14 = EditorialDisplayOptions.suppressLockup.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    result = TodayCard.overlay.getter();
    if (result)
    {
      v16 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v17 = v60[0];
      if (v60[0])
      {
        v52 = &v5[qword_1009CEC80];
        v18 = v5[qword_1009CEC80 + 8];
        TodayCardOverlay.kind.getter();
        v55 = v17;
        if ((v18 & 1) != 0 || (v19 = TodayCardOverlay.Kind.rawValue.getter(), v19 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v51 = v7;
          v48 = v16;
          v20 = TodayCardOverlay.kind.getter();
          v21 = sub_100472F04(v20);
          v49 = v22;
          v50 = v21;
          v53 = &v5[qword_1009CEC88];
          v54 = *&v5[qword_1009CEC88];
          if (v54)
          {
            v23 = v53[1];
            ObjectType = swift_getObjectType();
            v47 = v6;
            v25 = *(v23 + 16);
            swift_unknownObjectRetain();
            v26 = v25(ObjectType, v23);
            [v26 removeFromSuperview];

            v27 = swift_getObjectType();
            v28 = v25(v27, v23);
            [v28 _setContinuousCornerRadius:0.0];

            v29 = v25(v27, v23);
            v6 = v47;
            v30 = v29;
            v31 = [v29 layer];

            [v31 setMaskedCorners:15];
          }

          v32 = v50;
          v33 = swift_getObjectType();
          v34 = v49;
          v35 = *(v49 + 16);
          swift_unknownObjectRetain();
          v36 = v35(v33, v34);
          v37 = v36;
          v38 = 20.0;
          if (v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
          {
            v38 = 0.0;
          }

          [v36 _setContinuousCornerRadius:v38];
          v39 = [v37 layer];
          [v39 setMaskedCorners:12];

          v40 = [v5 contentView];
          [v40 addSubview:v37];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v41 = v48;
          v42 = TodayCardOverlay.kind.getter();
          v44 = v52;
          v43 = v53;
          *v52 = v42;
          *(v44 + 8) = 0;
          *v43 = v32;
          v43[1] = v34;
          v16 = v41;
          swift_unknownObjectRelease();
          v7 = v51;
        }

        swift_weakAssign();
        if (*&v5[qword_1009CEC88])
        {
          v45 = *&v5[qword_1009CEC88 + 8];
          v54 = swift_getObjectType();
          v60[3] = type metadata accessor for TodayCardOverlay();
          v60[4] = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay);
          v60[0] = v16;
          swift_unknownObjectRetain();

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v46 = v58;
          inject<A, B>(_:from:)();
          (*(v45 + 112))(v60, v46, v56, v9, v57, v59, v54, v45);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_100007000(v60);
        }

        sub_1005D7298();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1005D6114(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v55 = a3;
  v54 = a2;
  v6 = type metadata accessor for TodayCard.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditorialDisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v14 = EditorialDisplayOptions.suppressLockup.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    result = TodayCard.overlay.getter();
    if (result)
    {
      v16 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v17 = v58[0];
      if (v58[0])
      {
        v50 = &v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind];
        v18 = v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
        TodayCardOverlay.kind.getter();
        v53 = v17;
        if ((v18 & 1) != 0 || (v19 = TodayCardOverlay.Kind.rawValue.getter(), v19 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v47 = v6;
          v49 = v7;
          v20 = TodayCardOverlay.kind.getter();
          v21 = sub_100472F04(v20);
          v51 = v22;
          v52 = v21;
          v23 = &v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay];
          v24 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay];
          if (v24)
          {
            v25 = v23[1];
            ObjectType = swift_getObjectType();
            v27 = *(v25 + 16);
            swift_unknownObjectRetain();
            v28 = v27(ObjectType, v25);
            [v28 removeFromSuperview];
          }

          v46 = v24;
          v48 = v23;
          v29 = swift_getObjectType();
          v30 = v51;
          v31 = *(v51 + 16);
          swift_unknownObjectRetain();
          v32 = v31(v29, v30);
          v33 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
          v34 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
          v35 = *&v33[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
          *&v33[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v32;
          v36 = v32;

          [v36 setAnchorPoint:{0.0, 1.0}];
          v37 = *&v33[v34];
          if (v37)
          {
            v58[0] = 0x3FF0000000000000;
            v58[1] = 0;
            v58[2] = 0;
            v59 = 0x3FF0000000000000;
            v60 = 0;
            v61 = 0;
            [v37 setTransform:v58];
          }

          [v33 addSubview:v36];
          [v36 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          [v5 _continuousCornerRadius];
          [v36 _setContinuousCornerRadius:?];
          v38 = [v36 layer];
          [v38 setMaskedCorners:12];
          v39 = v52;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v40 = TodayCardOverlay.kind.getter();
          v42 = v50;
          v41 = v51;
          *v50 = v40;
          *(v42 + 8) = 0;
          v43 = v48;
          *v48 = v39;
          v43[1] = v41;
          swift_unknownObjectRelease();
          v7 = v49;
          v6 = v47;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay])
        {
          v44 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8];
          v52 = swift_getObjectType();
          v59 = type metadata accessor for TodayCardOverlay();
          v60 = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay);
          v58[0] = v16;
          swift_unknownObjectRetain();

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v45 = v56;
          inject<A, B>(_:from:)();
          (*(v44 + 112))(v58, v45, v54, v9, v55, v57, v52, v44);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_100007000(v58);
        }

        sub_1004EB9C0();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1005D6674(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for TodayCard.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditorialDisplayOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v15 = EditorialDisplayOptions.suppressLockup.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    result = TodayCard.overlay.getter();
    if (result)
    {
      v17 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v52 = v58[0];
      if (v58[0])
      {
        v50 = a3;
        v51 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
        v18 = v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind + 8];
        TodayCardOverlay.kind.getter();
        if ((v18 & 1) != 0 || (v19 = TodayCardOverlay.Kind.rawValue.getter(), v19 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v47 = v7;
          v49 = v8;
          v45 = v17;
          v20 = TodayCardOverlay.kind.getter();
          v21 = sub_100472F04(v20);
          v23 = v22;
          v44 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
          v24 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
          v43[1] = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
          swift_unknownObjectRetain();
          sub_1006865EC();
          v25 = swift_getObjectType();
          v26 = *(v23 + 16);
          swift_unknownObjectRetain();
          v48 = v21;
          v46 = v23;
          v27 = v26(v25, v23);
          v28 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
          v29 = *&v24[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
          *&v24[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v27;
          v30 = v27;

          [v30 setAnchorPoint:{0.0, 1.0}];
          v31 = *&v24[v28];
          if (v31)
          {
            v58[0] = 0x3FF0000000000000;
            v58[1] = 0;
            v58[2] = 0;
            v59 = 0x3FF0000000000000;
            v60 = 0;
            v61 = 0;
            [v31 setTransform:v58];
          }

          [v24 addSubview:v30];
          [v30 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          v57.receiver = v5;
          v57.super_class = ObjectType;
          objc_msgSendSuper2(&v57, "_continuousCornerRadius");
          [v30 _setContinuousCornerRadius:?];
          v32 = [v30 layer];
          if (v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6)
          {
            v33 = [v5 traitCollection];
            v34 = UITraitCollection.prefersAccessibilityLayouts.getter();

            if (v34)
            {
              v35 = 12;
            }

            else
            {
              v35 = 15;
            }
          }

          else
          {
            v35 = 12;
          }

          v17 = v45;
          [v32 setMaskedCorners:v35];
          v36 = v48;
          swift_unknownObjectRelease();

          [v5 setNeedsLayout];
          swift_unknownObjectRelease();
          v37 = TodayCardOverlay.kind.getter();
          v38 = v51;
          *v51 = v37;
          *(v38 + 8) = 0;
          v39 = v44;
          v40 = v46;
          *v44 = v36;
          v39[1] = v40;
          swift_unknownObjectRelease();
          v8 = v49;
          v7 = v47;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
        {
          v41 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
          ObjectType = swift_getObjectType();
          v59 = type metadata accessor for TodayCardOverlay();
          v60 = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay);
          v58[0] = v17;
          swift_unknownObjectRetain();

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v42 = v55;
          inject<A, B>(_:from:)();
          (*(v41 + 112))(v58, v42, v53, v10, v50, v56, ObjectType, v41);
          swift_unknownObjectRelease();

          (*(v8 + 8))(v10, v7);
          sub_100007000(v58);
        }

        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

id sub_1005D6C20(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = type metadata accessor for TodayCard.Style();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for PageGrid();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v55 = a3;
  v17(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = a1;
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v14, &v5[v19]);
  swift_endAccess();
  v56 = a2;
  sub_1004EAB3C(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = TodayCard.backgroundColor.getter();
    if (!v22)
    {
      sub_100028BB8();
      v22 = static UIColor.todayCardDefaultBackground.getter();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = *&v5[qword_1009CEC70];
  TodayCard.heading.getter();
  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  TodayCard.style.getter();
  v27 = TodayCard.Style.cardHeadingTextColor.getter();
  v28 = v18;
  v29 = *(v9 + 8);
  v29(v11, v58);
  [v24 setTextColor:v27];

  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_1009CEC78];
  v32 = v28;
  TodayCard.title.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v31 setText:v34];

  TodayCard.style.getter();
  v35 = TodayCard.Style.cardTitleTextColor.getter();
  v29(v11, v58);
  v36 = v32;
  [v31 setTextColor:v35];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v56;
  v39 = v55;
  if (v37)
  {
    v40 = v37;
    v41 = TodayCard.backgroundColor.getter();
    if (!v41)
    {
      sub_100028BB8();
      v41 = static UIColor.todayCardDefaultBackground.getter();
    }

    v42 = v41;
    [v40 setBackgroundColor:v41];
  }

  v43 = [v5 contentView];
  v44 = [v5 traitCollection];
  if (v38 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v44 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v43 setLayoutMargins:{v46, v48, v50, v52}];
  sub_1005D5B90(v36, v39, v38, v57);
  return [v5 setNeedsLayout];
}

uint64_t sub_1005D711C(uint64_t a1)
{
  sub_10002C0AC(a1, v7);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for TodayCard();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = TodayCard.overlay.getter();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + qword_1009CEC88);
      if (v5)
      {
        v7[3] = type metadata accessor for TodayCardOverlay();
        v7[4] = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay);
        v7[0] = v4;
        v6[3] = swift_getObjectType();
        v6[0] = v5;
        swift_unknownObjectRetain_n();

        tryToFetch(artworkFor:into:on:asPartOf:)();
        swift_unknownObjectRelease();

        sub_100007000(v6);
        return sub_10002B894(v7, &unk_10097DBE0);
      }
    }
  }

  return result;
}

void sub_1005D7298()
{
  sub_1004EB9C0();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_1009CEC70] text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_1009CEC78] text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_1009CEC88])
  {
    v12 = *&v0[qword_1009CEC88 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10002849C(&unk_100984350);
      swift_arrayDestroy();
      sub_10002849C(&unk_100977380);
      sub_10015872C();
      BidirectionalCollection<>.joined(separator:)();

      v31 = String._bridgeToObjectiveC()();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100033E38(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_100033E38((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[2 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1005D75AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_10098DE30;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_10098DE30;
  [*&v15[qword_10098DE30] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v20, &unk_1009711D0);
  sub_10002B894(v21, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_1005D780C()
{
  v1 = *&v0[qword_10098DE30];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_1005D7860(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  ArtworkView.image.setter();
}

uint64_t sub_1005D78F8()
{
  type metadata accessor for CondensedAdLockupWithIconBackground();
  sub_1005D83D4(&qword_10098B2A8, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v1)
  {
    CondensedAdLockupWithIconBackground.lockup.getter();
  }

  return result;
}

uint64_t sub_1005D7994(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_1005D6C20(a1, a2, a3, a4);
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaSingleLockup();
  if (swift_dynamicCastClass())
  {
    v9 = TodayCardMediaSingleLockup.condensedAdLockupWithIconBackground.getter();
    sub_10003A82C(v9, a3, a4);

    sub_1005D6C20(a1, a2, a3, a4);
    [v4 setNeedsLayout];
  }
}

uint64_t sub_1005D7A78(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005D711C(a1);
  v10 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A833C(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10002B894(v5, &qword_10097DBD0);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_10003BA9C(a1, v9);
  return (*(v7 + 8))(v9, v6);
}

void sub_1005D7C58(uint64_t a1)
{
  if (*(v1 + qword_1009CEC88))
  {
    v3 = *(v1 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = *(v1 + qword_10098DE30);
  ArtworkView.image.setter();
  type metadata accessor for ArtworkView();
  sub_1005D83D4(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v7 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  v8 = *(*(v6 + OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.image.setter();

  v9 = *(*(v6 + v7) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void (*sub_1005D7DEC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_1005D83C8;
}

void sub_1005D7EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v14);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for TodayCard();
      if (swift_dynamicCast())
      {
        TodayCard.media.getter();

        TodayCardMedia.impressionMetrics.getter();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10002B894(v6, &qword_100973D30);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          ImpressionsCalculator.addElement(_:at:)();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Class sub_1005D8148(uint64_t a1)
{
  sub_10002849C(&qword_1009701B0);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_10098DE30);
  *(v2 + 16) = xmmword_1007B10D0;
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

void sub_1005D81FC(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", isa);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell()
{
  result = qword_10098DE60;
  if (!qword_10098DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005D83D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005D8420()
{
  v1 = v0;
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.purchasesLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewTableCell();
  }

  if (v7 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return type metadata accessor for MediumLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return type metadata accessor for LargeLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
  {
    return type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
  {
    return type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.action(_:))
  {
    return type metadata accessor for ActionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.artwork(_:))
  {
    return type metadata accessor for ArtworkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.paragraph(_:))
  {
    return type metadata accessor for ParagraphCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.annotation(_:))
  {
    return type metadata accessor for AnnotationCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.footnote(_:))
  {
    return type metadata accessor for FootnoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    return type metadata accessor for TitledParagraphCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    return type metadata accessor for EditorialCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.videoCard(_:))
  {
    return type metadata accessor for VideoCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.brick(_:))
  {
    return type metadata accessor for BrickCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productCapability(_:))
  {
    return type metadata accessor for ProductCapabilityCell();
  }

  if (v7 == enum case for Shelf.ContentType.reviews(_:) || v7 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    return type metadata accessor for ProductReviewCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    return type metadata accessor for LinkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.quote(_:))
  {
    return type metadata accessor for QuoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    return type metadata accessor for HorizontalRuleCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.framedArtwork(_:))
  {
    return type metadata accessor for FramedArtworkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.screenshots(_:))
  {
    return type metadata accessor for ScreenshotShelfCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appShowcase(_:))
  {
    return type metadata accessor for AppShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
  {
    return type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    return type metadata accessor for AppTrailerLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    return type metadata accessor for ProductPageLinkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    return type metadata accessor for FramedVideoCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productDescription(_:))
  {
    return type metadata accessor for ProductDescriptionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.banner(_:))
  {
    return type metadata accessor for BannerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    return type metadata accessor for ScreenshotsLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    return type metadata accessor for RoundedButtonCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    return type metadata accessor for TitledButtonStackCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
  {
    return type metadata accessor for LargeHeroBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.upsellBreakout(_:))
  {
    return type metadata accessor for UpsellBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    return type metadata accessor for SmallBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    return type metadata accessor for EditorialStoryCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    return type metadata accessor for MixedMediaLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    return type metadata accessor for ArcadeFooterCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialQuote(_:))
  {
    return type metadata accessor for EditorialQuoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
    return type metadata accessor for ArcadeShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    return type metadata accessor for GameCenterActivityFeedCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
  {
    return type metadata accessor for ArcadeDownloadPackCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
  {
    return type metadata accessor for GameCenterReengagementCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
  {
    return type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    return type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
  {
    return type metadata accessor for AchievementSummaryCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    return type metadata accessor for PosterLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    return type metadata accessor for SmallContactCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
  {
    return type metadata accessor for PreorderDisclaimerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    return type metadata accessor for PrivacyHeaderCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyFooter(_:))
  {
    return type metadata accessor for PrivacyFooterCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return type metadata accessor for PrivacyTypeCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyCategory(_:))
  {
    return type metadata accessor for PrivacyCategoryCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyDefinition(_:))
  {
    return type metadata accessor for PrivacyDefinitionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    return type metadata accessor for AppEventCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.heroCarousel(_:))
  {
    return type metadata accessor for HeroCarouselCollectionViewCell();
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t Shelf.ContentType.layoutManagedMultiColumnMargin.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.annotation(_:) || v7 == enum case for Shelf.ContentType.productCapability(_:) || v7 == enum case for Shelf.ContentType.productPageLink(_:) || v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return 0x403E000000000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_1005D8F34(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_1005D9478()
{
  [*&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setAlpha:0.0];
  v1 = [v0 buttonTray];
  [v1 setAlpha:0.0];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_1005DAD94;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100007A08;
  v12 = &unk_1008CAAC8;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1005DAD9C;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100504C5C;
  v12 = &unk_1008CAB18;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.2];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_1005D9648()
{
  v1 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v1 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v2 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v3 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  sub_1005DAC94(v3);

  [*&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setHidden:1];
  v4 = [v0 buttonTray];
  [v4 setHidden:1];
}

void sub_1005D9740()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeDownloadPackViewController();
  v7.receiver = v0;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_10002A400(&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  dispatch thunk of BasePresenter.didLoad()();
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode:2];
}

void sub_1005D9918(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArcadeDownloadPackViewController();
  v16.receiver = v2;
  v16.super_class = v12;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v8);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v9 + 8))(v11, v8);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v5 + 8))(v7, v4);
    PendingPageRender.appearTime.setter();
  }

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  [v14 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v15 = [v13 defaultCenter];
  [v15 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_1005D9C28(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&qword_1009729C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArcadeDownloadPackViewController();
  v22.receiver = v2;
  v22.super_class = v15;
  objc_msgSendSuper2(&v22, "viewWillDisappear:", a1 & 1);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v12 + 104))(v14, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v11);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v12 + 8))(v14, v11);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v20 + 8))(v6, v21);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v16 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    PendingPageRender.disappearTime.setter();
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  [v18 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v19 = [v17 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_1005DA02C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_10002A400(&v15[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v15[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, *a5, v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1005DA198(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v6 + 8))(v8, v5);
}

void sub_1005DA2C4()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1005DA3F4()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView + 8];
  ObjectType = swift_getObjectType();
  [v5 bounds];
  [v3 convertRect:v5 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v1 view];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v1 buttonTray];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 buttonTray];
  [v16 convertRect:v26 fromCoordinateSpace:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  CGRectGetMinY(v39);
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  CGRectGetMinY(v40);
  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  CGRectGetWidth(v41);
  BasePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.viewBounds.setter();

  v35 = BasePresenter.impressionsCalculator.getter();
  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    (*(v4 + 8))(v35, v36, ObjectType, v4);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1005DA6B8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setAlpha:1.0];
  v5 = [a1 buttonTray];
  [v5 setAlpha:1.0];
}

id sub_1005DA900()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005DA9D4(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000F40E0(v5);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

void sub_1005DAB14()
{
  [*&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setHidden:0];
  v1 = [v0 buttonTray];
  [v1 setHidden:0];
}

void sub_1005DAB90()
{
  type metadata accessor for JUContentUnavailableViewController();
  sub_1005DAC3C();
  swift_errorRetain();

  v0 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  sub_1005DAC94(v0);
}

unint64_t sub_1005DAC3C()
{
  result = qword_10098E240;
  if (!qword_10098E240)
  {
    type metadata accessor for BasePresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E240);
  }

  return result;
}

id sub_1005DAC94(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    static ViewControllerContainment.add(_:to:frame:)();
    v9 = *&v1[v3] == 0;

    return [v1 setModalInPresentation:v9];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1005DADE0()
{
  result = qword_10098E248;
  if (!qword_10098E248)
  {
    type metadata accessor for HttpTemplateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E248);
  }

  return result;
}

uint64_t sub_1005DAE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HttpTemplateController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_textFields] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction] = 0;
  v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_hasRequiredParameters] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_templateAction] = a1;
  v6 = &v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_actionSender];
  *v6 = 0u;
  v6[1] = 0u;
  v11.receiver = v5;
  v11.super_class = v4;

  v7 = objc_msgSendSuper2(&v11, "init");
  v8 = sub_100766654(a2);
  v9 = sub_1005D01FC(v8, 1, a2);

  return v9;
}

void sub_1005DAF78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v84 = type metadata accessor for InstallationType();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for LegacyAppState();
  v110 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v79 - v10;
  v99 = sub_10002849C(&qword_100975D18);
  v108 = *(v99 - 8);
  __chkstk_darwin(v99);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v79 - v14;
  __chkstk_darwin(v15);
  v109 = &v79 - v16;
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v23 = *a1;
  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v24 = aBlock;
  v101 = v113;
  type metadata accessor for UpdateStore();
  inject<A, B>(_:from:)();
  v79 = aBlock;
  v25 = &_swiftEmptySetSingleton;
  v119 = &_swiftEmptySetSingleton;
  v111 = sub_100399438(_swiftEmptyArrayStorage);
  v118 = &_swiftEmptySetSingleton;
  v26 = *(v23 + 16);
  v100 = v6;
  v87 = v7;
  v102 = v24;
  if (v26)
  {
    v107 = v19;
    v27 = v99;
    v93 = &v22[*(v99 + 48)];
    ObjectType = swift_getObjectType();
    v28 = v23 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v91 = *(v108 + 72);
    v103 = v106 + 8;
    v95 = v12;
    v90 = v12 + 8;
    v108 = v7 + 32;
    v29 = (v7 + 8);
    v89 = (v110 + 11);
    v88 = enum case for LegacyAppState.paused(_:);
    v86 = (v110 + 1);
    v85 = (v110 + 12);
    v30 = _swiftEmptyArrayStorage;
    v31 = v27;
    v32 = v106;
    v33 = v22;
    v94 = v22;
    do
    {
      v105 = v28;
      v106 = v26;
      sub_1005DDC08(v28, v33);
      v35 = *v93;
      v36 = *(v93 + 1);
      v37 = v107;
      v38 = &v107[*(v31 + 48)];
      v104 = *v108;
      (v104)(v107, v33, v6);
      *v38 = v35;
      *(v38 + 1) = v36;
      v39 = v109;
      sub_1005DDC08(v37, v109);
      v40 = (v39 + *(v31 + 48));
      v41 = *v40;
      v42 = v40[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100033E38(0, *(v30 + 2) + 1, 1, v30);
      }

      v44 = *(v30 + 2);
      v43 = *(v30 + 3);
      if (v44 >= v43 >> 1)
      {
        v30 = sub_100033E38((v43 > 1), v44 + 1, 1, v30);
      }

      *(v30 + 2) = v44 + 1;
      v110 = v30;
      v45 = &v30[2 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v46 = *v29;
      v6 = v100;
      (*v29)(v109, v100);
      v47 = v107;
      sub_1005DDC08(v107, v32);

      v48 = v96;
      sub_100081B4C(v96, v32);
      v46(v48, v6);
      sub_1005DDC08(v47, v32);
      v49 = &v32[*(v31 + 48)];
      v50 = *v49;
      v51 = v49[1];
      v52 = v95;
      sub_1005DDC08(v47, v95);

      (v104)(v48, v52, v6);
      v53 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v53;
      sub_10005268C(v48, v50, v51, isUniquelyReferenced_nonNull_native);

      v111 = aBlock;
      v46(v32, v6);
      dispatch thunk of AppStateController.stateMachine(forApp:)();
      swift_getObjectType();
      v55 = v97;
      dispatch thunk of AppStateMachine.currentState.getter();
      swift_unknownObjectRelease();
      v56 = v98;
      v57 = (*v89)(v55, v98);
      if (v57 == v88)
      {
        (*v85)(v55, v56);
        v34 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        (*(*(v34 - 8) + 8))(v55, v34);
        sub_1005DDC08(v47, v32);

        sub_100081B4C(v48, v32);
        v46(v48, v6);
        sub_10002B894(v47, &qword_100975D18);
      }

      else
      {
        sub_10002B894(v47, &qword_100975D18);
        (*v86)(v55, v56);
      }

      v33 = v94;
      v28 = v105 + v91;
      v26 = v106 - 1;
      v30 = v110;
      v31 = v99;
    }

    while (v106 != 1);
    v25 = v119;
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v58 = v25 + 56;
  v59 = 1 << v25[32];
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v25 + 7);
  v62 = (v59 + 63) >> 6;
  v108 = v87 + 16;
  LODWORD(v107) = enum case for InstallationType.update(_:);
  v105 = v87 + 8;
  v106 = (v81 + 104);
  v104 = (v81 + 8);
  v109 = v25;

  v63 = 0;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  while (v61)
  {
    v67 = v63;
    v68 = v87;
    v69 = v109;
LABEL_22:
    v70 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v71 = v100;
    (*(v68 + 16))(v64, *(v69 + 48) + *(v68 + 72) * (v70 | (v67 << 6)), v100);
    swift_getObjectType();
    (*v106)(v65, v107, v66);
    dispatch thunk of AppStateController.setWaiting(for:installationType:)();
    (*(v87 + 8))(v64, v71);
    (*v104)(v65, v66);
  }

  v68 = v87;
  v69 = v109;
  while (1)
  {
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v67 >= v62)
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      v73 = v118;
      v74 = swift_allocObject();
      v74[2] = v111;
      v74[3] = v69;
      v75 = v101;
      v74[4] = v102;
      v74[5] = v75;
      v76 = v80;
      v74[6] = v73;
      v74[7] = v76;
      v116 = sub_1005DDC78;
      v117 = v74;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_1005DC244;
      v115 = &unk_1008CABD0;
      v77 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v78 = v79;
      [v79 updateAllWithOrder:isa completionBlock:v77];
      swift_unknownObjectRelease();

      _Block_release(v77);
      return;
    }

    v61 = *&v58[8 * v67];
    ++v63;
    if (v61)
    {
      v63 = v67;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1005DBA3C(char a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v106 = a6;
  v107 = a7;
  ObjectType = a4;
  v13 = type metadata accessor for ActionOutcome();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for AdamId();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v102 = v89 - v22;
  __chkstk_darwin(v23);
  v103 = v89 - v24;
  __chkstk_darwin(v25);
  v99 = v89 - v26;
  v101 = v27;
  __chkstk_darwin(v28);
  v98 = v89 - v29;
  v112 = &_swiftEmptySetSingleton;
  v92 = v14;
  v93 = v13;
  v91 = v16;
  v95 = a8;
  v96 = v18;
  v94 = a5;
  if ((a1 & 1) == 0)
  {
    v112 = a5;

LABEL_22:
    v90 = a9;
    v56 = *(v55 + 7);
    v98 = v55 + 56;
    v57 = 1 << v55[32];
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v97 = (v57 + 63) >> 6;
    v109 = v110 + 16;
    v99 = (v110 + 32);
    v105 = v110 + 8;
    v102 = v55;

    v60 = 0;
    v61 = v103;
    while (v59)
    {
      v62 = v60;
      v63 = v102;
LABEL_31:
      v64 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v65 = v110;
      v66 = *(v110 + 16);
      v67 = v100;
      v68 = v108;
      v66(v100, *(v63 + 48) + *(v110 + 72) * (v64 | (v62 << 6)), v108);
      v69 = v106;
      ObjectType = swift_getObjectType();
      v66(v61, v67, v68);
      v70 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v71 = swift_allocObject();
      v72 = v107;
      *(v71 + 16) = v69;
      *(v71 + 24) = v72;
      (*(v65 + 32))(v71 + v70, v61, v68);
      swift_unknownObjectRetain();
      dispatch thunk of AppStateController.refreshDataSources(for:completion:)();

      (*(v65 + 8))(v67, v68);
    }

    v63 = v102;
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v62 >= v97)
      {
        break;
      }

      v59 = *&v98[8 * v62];
      ++v60;
      if (v59)
      {
        v60 = v62;
        goto LABEL_31;
      }
    }

    v73 = v94;
    if (*(v63 + 16) <= v94[2] >> 3)
    {
      v111 = v94;

      sub_1005DC838(v63);

      v74 = v111;
    }

    else
    {

      v74 = sub_1005DCA54(v63, v73);
    }

    v75 = v96;
    if (*(v95 + 16) <= v74[2] >> 3)
    {
      v111 = v74;
      sub_1005DC838(v95);
      v76 = v111;
    }

    else
    {
      v76 = sub_1005DCA54(v95, v74);
    }

    v77 = 0;
    v78 = 1 << *(v76 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & v76[7];
    v81 = (v78 + 63) >> 6;
    while (v80)
    {
      v82 = v77;
LABEL_47:
      v83 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v84 = v110;
      v85 = v108;
      (*(v110 + 16))(v75, v76[6] + *(v110 + 72) * (v83 | (v82 << 6)), v108);
      swift_getObjectType();
      AppStateController.clearWaiting(for:)();
      (*(v84 + 8))(v75, v85);
    }

    while (1)
    {
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v82 >= v81)
      {

        v87 = v92;
        v86 = v93;
        v88 = v91;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        Promise.resolve(_:)();
        (*(v87 + 8))(v88, v86);
        return;
      }

      v80 = v76[v82 + 7];
      ++v77;
      if (v80)
      {
        v77 = v82;
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v105 = a2;
  if (!(a2 >> 62))
  {
    v109 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v109)
    {
      goto LABEL_4;
    }

LABEL_21:
    v55 = &_swiftEmptySetSingleton;
    goto LABEL_22;
  }

  v109 = _CocoaArrayWrapper.endIndex.getter();
  if (!v109)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v109 >= 1)
  {
    v30 = 0;
    v31 = v105;
    v32 = v105 & 0xC000000000000001;
    v97 = v110 + 16;
    v90 = v110 + 32;
    v89[1] = v110 + 8;
    v33 = &selRef_numberOfSegments;
    v34 = ObjectType;
    v89[0] = v105 & 0xC000000000000001;
    v35 = v110;
    while (1)
    {
      v36 = v32 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v31 + 8 * v30 + 32);
      v37 = v36;
      if ([v36 status] == 1)
      {
        break;
      }

LABEL_7:
      if (v109 == ++v30)
      {
        v55 = v112;
        goto LABEL_22;
      }
    }

    v38 = [v37 v33[231]];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (*(v34 + 16))
    {
      v42 = sub_1000072B8(v39, v41);
      v44 = v43;

      if (v44)
      {
        v45 = *(v34 + 56) + *(v35 + 72) * v42;
        v46 = *(v35 + 16);
        v47 = v99;
        v48 = v108;
        v46(v99, v45, v108);
        v49 = v98;
        (*(v35 + 32))(v98, v47, v48);
        v50 = v102;
        v46(v102, v49, v48);
        v51 = v103;
        sub_100081B4C(v103, v50);

        v52 = *(v35 + 8);
        v52(v51, v48);
        v53 = v49;
        v32 = v89[0];
        v54 = v48;
        v33 = &selRef_numberOfSegments;
        v52(v53, v54);
        v34 = ObjectType;
LABEL_17:
        v31 = v105;
        goto LABEL_7;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_52:
  __break(1u);
}

void sub_1005DC244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_100005744(0, &qword_10098E258);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = a4;
  v6(a2, v7, a4);
}

id sub_1005DC2FC(unint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_10002849C(&qword_10096FE60);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v42 = type metadata accessor for AdamId();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UpdatesSorter.Ordering();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = v10;
    v37 = v9;
    v38 = v6;
    v40 = v8;
    v13 = 0;
    v8 = (a1 & 0xC000000000000001);
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 updateState];
      if (v16 > 4 || ((1 << v16) & 0x19) == 0)
      {
      }

      else
      {
        v6 = &v45;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v13;
      if (v9 == i)
      {
        v18 = v45;
        v8 = v40;
        v9 = v37;
        v6 = v38;
        v10 = v35;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_21:
  v19 = v41;
  (*(v10 + 104))(v41, enum case for UpdatesSorter.Ordering.pendingUpdates(_:), v9);
  v20 = static UpdatesSorter.sorted(updates:ordering:)();
  (*(v10 + 8))(v19, v9);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v18;
    if (v21)
    {
      goto LABEL_23;
    }

LABEL_39:
    v22 = _swiftEmptyArrayStorage;
LABEL_40:

    v33 = sub_1002A63D8(v22);

    v45 = v33;
    Promise.resolve(_:)();
  }

LABEL_38:
  v21 = _CocoaArrayWrapper.endIndex.getter();
  v35 = v18;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_23:
  v18 = 0;
  v40 = v20 & 0xFFFFFFFFFFFFFF8;
  v41 = (v20 & 0xC000000000000001);
  v38 = v6 + 4;
  v22 = _swiftEmptyArrayStorage;
  v39 = v5;
  v37 = v20;
  while (1)
  {
    if (v41)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v40 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v20 + 8 * v18 + 32);
    }

    v6 = v23;
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v23 storeItemIdentifier];
    AdamId.init(value:)();
    result = [v6 bundleIdentifier];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = &v5[*(v44 + 48)];
    (*v38)(v5, v8, v42);
    *v30 = v27;
    v30[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1000350F4(0, *(v22 + 2) + 1, 1, v22);
    }

    v32 = *(v22 + 2);
    v31 = *(v22 + 3);
    if (v32 >= v31 >> 1)
    {
      v22 = sub_1000350F4(v31 > 1, v32 + 1, 1, v22);
    }

    v5 = v39;

    *(v22 + 2) = v32 + 1;
    sub_1005DDD74(v5, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32);
    v18 = (v18 + 1);
    v20 = v37;
    if (v24 == v21)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

void sub_1005DC838(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1002C88DC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_10002B894(v5, &qword_100972A80);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_1005DCA54(uint64_t a1, void *a2)
{
  v5 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for AdamId();
  __chkstk_darwin(v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v65 - v14);
  __chkstk_darwin(v16);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_10002B894(v30, &qword_100972A80);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1005DDD24(&qword_100970CD8, &type metadata accessor for AdamId);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, a2[6] + v84 * v24, v11);
    v35 = sub_1005DDD24(&qword_100972728, &type metadata accessor for AdamId);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_10002B894(v24, &qword_100972A80);
        a2 = sub_10039F8CC(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_1005DD4B8(v63, v65, v80, v24, &v89);
  a2 = v64;

LABEL_52:
  sub_100081680();
  return a2;
}

void sub_1005DD4B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for AdamId();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10002B894(v11, &qword_100972A80);
          v45 = v61;

          sub_10039F8CC(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1005DDD24(&qword_100970CD8, &type metadata accessor for AdamId);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1005DDD24(&qword_100972728, &type metadata accessor for AdamId);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1005DD98C()
{
  sub_10002849C(&qword_10098E260);
  v0 = Promise.__allocating_init()();
  updated = UpdateAllAction.ordering.getter();
  if (updated)
  {
    v5[0] = updated;
    Promise.resolve(_:)();
  }

  else
  {
    type metadata accessor for UpdateStore();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v2 = v5[0];
    v5[4] = sub_1005DDD6C;
    v5[5] = v0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100527B5C;
    v5[3] = &unk_1008CAC20;
    v3 = _Block_copy(v5);

    [v2 getUpdatesWithCompletionBlock:v3];
    _Block_release(v3);
  }

  return v0;
}

uint64_t sub_1005DDAD4(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0);
  v3 = Promise.__allocating_init()();
  sub_1005DD98C();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  v5 = sub_100005744(0, &qword_1009729E0);
  swift_retain_n();

  v7[3] = v5;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v7);
  return v3;
}

uint64_t sub_1005DDC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DDCA8()
{
  type metadata accessor for AdamId();
  swift_getObjectType();
  return AppStateController.clearWaiting(for:)();
}

uint64_t sub_1005DDD24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005DDD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005DDE00()
{
  result = qword_10098E268;
  if (!qword_10098E268)
  {
    type metadata accessor for OfferStateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E268);
  }

  return result;
}

uint64_t sub_1005DDE60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LegacyAppState();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v24 - v6;
  v27 = sub_10002849C(&unk_100974490);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v33 = &v24 - v7;
  v26 = type metadata accessor for AdamId();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0);
  v29 = Promise.__allocating_init()();
  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_getObjectType();
  OfferStateAction.adamId.getter();
  dispatch thunk of AppStateController.stateMachine(forApp:)();
  swift_unknownObjectRelease();
  v11 = v10;
  v12 = v27;
  v13 = v28;
  (*(v8 + 8))(v11, v26);
  inject<A, B>(_:from:)();
  v14 = OfferStateAction.defaultAction.getter();
  swift_getObjectType();
  OfferStateAction.includeBetaApps.getter();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  if ((LegacyAppState.isBuyable.getter() & 1) == 0 && (LegacyAppState.isUpdatable.getter() & 1) == 0)
  {
    v18 = v31;
    v17 = v32;
    v21 = v25;
    (*(v31 + 16))(v25, v13, v32);
    if ((*(v18 + 88))(v21, v17) == enum case for LegacyAppState.openable(_:))
    {
      (*(v18 + 96))(v21, v17);

      v22 = type metadata accessor for OpenableDestination();
      (*(*(v22 - 8) + 8))(v21, v22);
      v23 = OfferStateAction.openAction.getter();
      if (v23)
      {
        v16 = v23;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v18 + 8))(v21, v17);
    }

    v16 = v14;
    goto LABEL_7;
  }

  v15 = OfferStateAction.buyAction.getter();
  if (v15)
  {
    v16 = v15;
  }

  else
  {

    v16 = v14;
  }

  v18 = v31;
  v17 = v32;
LABEL_7:
  sub_1005D0214(v16, 1, a2);

  v19 = v29;
  Promise.pipe(to:)();

  swift_unknownObjectRelease();

  (*(v18 + 8))(v13, v17);
  (*(v30 + 8))(v33, v12);
  return v19;
}

double sub_1005DE30C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicTextAppearance();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = type metadata accessor for LabelPlaceholder();
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v38 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  sub_1005DF9A8(&qword_1009D2C88, v43);
  v44 = v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn];
  sub_1005DF9A8(v43, v45);
  v18 = *&v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  v45[14] = type metadata accessor for DynamicTypeLabel();
  v45[15] = &protocol witness table for UILabel;
  v45[11] = v18;
  v42 = *&v2[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  v19 = v18;
  Measurable.placeable.getter();
  sub_1005DFA04(v43);
  v20 = [v2 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {
    v21 = 1;
  }

  else
  {
    v37[3] = v15;
    v22._object = 0x800000010080E210;
    v22._countAndFlagsBits = 0xD000000000000016;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = localizedString(_:comment:)(v22, v23);
    v37[1] = v24._object;
    v37[2] = v24._countAndFlagsBits;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for FontUseCase();
    sub_1000056A8(v25, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v26 = *(v39 + 8);
    v26(v6, v4);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v26(v9, v4);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v26(v12, v4);
    LabelPlaceholder.Options.init(rawValue:)();
    v27 = v38;
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v29 = v28;
    sub_10002A400(v46, v46[3]);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v31 = v30;
    sub_10002A400(v45, v45[3]);
    AnyDimension.value(with:)();
    v33 = v32;
    (*(v40 + 8))(v27, v41);
    v21 = v31 + v29 + v33 > a1;
  }

  sub_10034AB28(v21, v43);
  sub_10002A400(v43, v43[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v35 = v34;

  sub_100007000(v43);
  sub_1005DFA58(v45);
  return v35;
}

void sub_1005DE7D0()
{
  qword_1009D2CA0 = &type metadata for Double;
  unk_1009D2CA8 = &protocol witness table for Double;
  qword_1009D2C88 = 0x4030000000000000;
  qword_1009D2CD0 = &type metadata for Double;
  unk_1009D2CD8 = &protocol witness table for Double;
  qword_1009D2CB8 = 0x4020000000000000;
  byte_1009D2CB0 = 1;
}

char *sub_1005DE80C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
  v19 = sub_10002849C(&qword_10098E2C0);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn] = 0;
  if (qword_10096DF68 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  v21 = sub_1000056A8(v20, qword_1009D0DB8);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = type metadata accessor for StarRatingControl();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = 0;
  *&v25[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating] = 0;
  v26 = &v25[OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin];
  *v26 = xmmword_1007D6F40;
  *(v26 + 1) = xmmword_1007D6F40;
  v46.receiver = v25;
  v46.super_class = v24;
  v27 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setContentMode:3];
  *&v29[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl] = v29;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  sub_100005744(0, &qword_100970180);
  v38 = v37;
  v39 = static UIColor.primaryText.getter();
  [v38 setTextColor:v39];

  [v35 addSubview:*&v35[v36]];
  v40 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl]];
  v41 = *&v35[v40];
  sub_100005744(0, &qword_10097CD40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;

  v43 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v42 addAction:v43 forControlEvents:4096];

  return v35;
}

uint64_t sub_1005DED38()
{
  v0 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10002849C(&qword_10098E2C8);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = sub_10002849C(&qword_10098E2C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
    swift_beginAccess();
    sub_1005DFAB4(v11 + v12, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_10002B894(v5, &qword_10098E2C8);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      ObjectGraphPair.value.getter();
      dispatch thunk of RateAction.rating.setter();

      ObjectGraphPair.objectGraph.getter();
      v13 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();

      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {
        (*(v7 + 8))(v9, v6);

        return sub_10002B894(v2, &unk_100972A00);
      }

      else
      {
        ObjectGraphPair.value.getter();
        v15 = ObjectGraphPair.objectGraph.getter();
        sub_1005FA250(v16[1], 1, v15, v2);

        (*(v7 + 8))(v9, v6);

        return (*(v14 + 8))(v2, v13);
      }
    }
  }

  return result;
}

uint64_t sub_1005DF1BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DynamicTextAppearance();
  v55 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v54 = &v49 - v13;
  v14 = type metadata accessor for LabelPlaceholder();
  v57 = *(v14 - 8);
  v58 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v56 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65.receiver = v1;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, "layoutSubviews", v15);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  v19 = v18;
  v59 = *&v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl];
  v62[0] = v59;
  v60 = type metadata accessor for StarRatingControl();
  Measurable.placeable.getter();
  v20 = &selRef_setRequiresColorStatistics_;
  v21 = [v1 traitCollection];
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {

    sub_100007000(v64);
  }

  else
  {
    v53 = v3;
    v50 = "L AdFetch returns Mock Ad";
    v35._object = 0x800000010080E210;
    v35._countAndFlagsBits = 0xD000000000000016;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v37 = localizedString(_:comment:)(v35, v36);
    object = v37._object;
    countAndFlagsBits = v37._countAndFlagsBits;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for FontUseCase();
    sub_1000056A8(v38, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v39 = *(v55 + 8);
    v40 = v5;
    v41 = v53;
    v39(v40, v53);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v39(v8, v41);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v39(v11, v41);
    LabelPlaceholder.Options.init(rawValue:)();
    v42 = v56;
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v44 = v43;
    sub_10002A400(v64, v64[3]);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v46 = v45;
    sub_10002A400(&qword_1009D2C88, qword_1009D2CA0);
    AnyDimension.value(with:)();
    v48 = v47;

    (*(v57 + 8))(v42, v58);
    sub_100007000(v64);
    v20 = &selRef_setRequiresColorStatistics_;
    if (v19 >= v46 + v44 + v48)
    {
      v23 = v50 | 0x8000000000000000;
      v22 = 0xD000000000000016;
      goto LABEL_7;
    }
  }

  v22 = 0x525F4F545F504154;
  v23 = 0xEB00000000455441;
LABEL_7:
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v22, v24);
  v25 = String._bridgeToObjectiveC()();

  [v17 setText:v25];

  sub_1005DF9A8(&qword_1009D2C88, v62);
  v63 = v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn];
  sub_1005DF9A8(v62, v64);
  v64[14] = type metadata accessor for DynamicTypeLabel();
  v64[15] = &protocol witness table for UILabel;
  v64[11] = v17;
  v61 = v59;
  v26 = v17;
  Measurable.placeable.getter();
  sub_1005DFA04(v62);
  [v1 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v1 v20[35]];
  sub_10034AEB0(v33, v28, v30, v32);

  return sub_1005DFA58(v64);
}

uint64_t type metadata accessor for ProductTapToRateView()
{
  result = qword_10098E2A8;
  if (!qword_10098E2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005DF89C()
{
  sub_1005DF944();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005DF944()
{
  if (!qword_10098E2B8)
  {
    sub_10002D1A8(&qword_10098E2C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098E2B8);
    }
  }
}

uint64_t sub_1005DFAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098E2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1005DFB24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v11 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v13 = static Placeholder.titleText.getter();
  v15 = sub_10025084C(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_1005DFC84()
{
  v1 = type metadata accessor for LayoutRect();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BrickLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for BrickLayout();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_10096D058 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009CDFB0);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder];
  v31 = type metadata accessor for ArtworkView();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_100261828();
    v17 = v13;
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = v18;
  v25 = v13;
  v19 = v15;
  BrickLayout.init(metrics:artworkView:labelView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  BrickLayout.placeChildren(relativeTo:in:)();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_1005DFFF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005E009C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v5 = static Placeholder.titleText.getter();
  v7 = sub_10025084C(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1005E017C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = static String.isNilOrEmpty(_:)();

  return (v2 & 1) == 0;
}

uint64_t sub_1005E01D8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ShelfLayoutContext.isFirstShelf.getter();
  if (result)
  {
    if (a1())
    {
      if (qword_10096E6D0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for StaticDimension();
      v10 = sub_1000056A8(v9, qword_1009D2490);
      a2[3] = v9;
      a2[4] = &protocol witness table for StaticDimension;
      v11 = sub_1000056E0(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      ShelfLayoutContext.contentPageGrid.getter();
      PageGrid.interRowSpace.getter();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      a2[3] = &type metadata for CGFloat;
      a2[4] = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1005E03E4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticDimension();
  v3 = sub_1000056A8(v2, qword_1009D2460);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_1000056E0(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

uint64_t ChartOrCategoryBrickContext.init(model:in:)(uint64_t a1)
{
  sub_10002C0AC(a1, v3);
  ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
  return sub_100007000(a1);
}

uint64_t sub_1005E0518@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FontUseCase();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1005E0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E0668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E06DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E0750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E07C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChartOrCategoryBrickContext.BrickType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.standard(_:))
  {
    v10 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
    a1[3] = v10;
    a1[4] = sub_1005E1120(&qword_10098E310, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
    v11 = sub_1000056E0(a1);
    if (qword_10096E418 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for FontUseCase();
    v13 = sub_1000056A8(v12, qword_1009D1BC8);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v13, v12);
    v15 = v10[5];
    if (qword_10096E420 != -1)
    {
      swift_once();
    }

    v16 = sub_1000056A8(v12, qword_1009D1BE0);
    v14((v11 + v15), v16, v12);
    v17 = v10[6];
    if (qword_10096E428 != -1)
    {
      swift_once();
    }

    v18 = sub_1000056A8(v12, qword_1009D1BF8);
    v14((v11 + v17), v18, v12);
    v19 = v10[7];
    if (qword_10096E430 != -1)
    {
      swift_once();
    }

    v20 = sub_1000056A8(v12, qword_1009D1C10);
    v14((v11 + v19), v20, v12);
    v21 = v10[8];
    if (qword_10096E438 != -1)
    {
      swift_once();
    }

    v22 = sub_1000056A8(v12, qword_1009D1C28);
    v14((v11 + v21), v22, v12);
    v23 = v10[9];
    if (qword_10096E440 != -1)
    {
      swift_once();
    }

    v24 = qword_1009D1C40;
LABEL_29:
    v35 = sub_1000056A8(v12, v24);
    return (v14)(v11 + v23, v35, v12);
  }

  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.search(_:))
  {
    v25 = type metadata accessor for SearchChartOrCategoryBrickFontStyles(0);
    a1[3] = v25;
    a1[4] = sub_1005E1120(&qword_10098E318, type metadata accessor for SearchChartOrCategoryBrickFontStyles);
    v11 = sub_1000056E0(a1);
    if (qword_10096E418 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for FontUseCase();
    v26 = sub_1000056A8(v12, qword_1009D1BC8);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v26, v12);
    v27 = v25[5];
    if (qword_10096E420 != -1)
    {
      swift_once();
    }

    v28 = sub_1000056A8(v12, qword_1009D1BE0);
    v14((v11 + v27), v28, v12);
    v29 = v25[6];
    if (qword_10096E448 != -1)
    {
      swift_once();
    }

    v30 = sub_1000056A8(v12, qword_1009D1C58);
    v14((v11 + v29), v30, v12);
    v31 = v25[7];
    if (qword_10096E450 != -1)
    {
      swift_once();
    }

    v32 = sub_1000056A8(v12, qword_1009D1C70);
    v14((v11 + v31), v32, v12);
    v33 = v25[8];
    if (qword_10096E458 != -1)
    {
      swift_once();
    }

    v34 = sub_1000056A8(v12, qword_1009D1C88);
    v14((v11 + v33), v34, v12);
    v23 = v25[9];
    if (qword_10096E460 != -1)
    {
      swift_once();
    }

    v24 = qword_1009D1CA0;
    goto LABEL_29;
  }

  v37 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
  a1[3] = v37;
  a1[4] = sub_1005E1120(&qword_10098E310, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
  v38 = sub_1000056E0(a1);
  if (qword_10096E418 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for FontUseCase();
  v40 = sub_1000056A8(v39, qword_1009D1BC8);
  v41 = *(*(v39 - 8) + 16);
  v41(v38, v40, v39);
  v42 = v37[5];
  if (qword_10096E420 != -1)
  {
    swift_once();
  }

  v43 = sub_1000056A8(v39, qword_1009D1BE0);
  v41((v38 + v42), v43, v39);
  v44 = v37[6];
  if (qword_10096E428 != -1)
  {
    swift_once();
  }

  v45 = sub_1000056A8(v39, qword_1009D1BF8);
  v41((v38 + v44), v45, v39);
  v46 = v37[7];
  if (qword_10096E430 != -1)
  {
    swift_once();
  }

  v47 = sub_1000056A8(v39, qword_1009D1C10);
  v41((v38 + v46), v47, v39);
  v48 = v37[8];
  if (qword_10096E438 != -1)
  {
    swift_once();
  }

  v49 = sub_1000056A8(v39, qword_1009D1C28);
  v41((v38 + v48), v49, v39);
  v50 = v37[9];
  if (qword_10096E440 != -1)
  {
    swift_once();
  }

  v51 = sub_1000056A8(v39, qword_1009D1C40);
  v41((v38 + v50), v51, v39);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1005E1120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005E11A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1005E1224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1005E1294()
{
  result = type metadata accessor for FontUseCase();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1005E1328(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for PerformanceTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v46 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v35 - v11;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_articleViewController);
  type metadata accessor for ArticleDiffablePageViewController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v45 = v15;
    v18 = [v17 collectionView];
    if (v18)
    {
      v44 = v18;
      sub_10002C0AC(a2, v49);
      v43 = ObjectType;
      v38 = *(v8 + 16);
      v38(v14, a1, v7);
      v37 = a1;
      v19 = *(v8 + 80);
      v20 = (v19 + 64) & ~v19;
      v40 = v9 + 7;
      v42 = v17;
      v21 = swift_allocObject();
      sub_100005A38(v49, v21 + 16);
      *(v21 + 56) = v44;
      v36 = *(v8 + 32);
      v41 = v21;
      v36(v21 + v20, v14, v7);
      *(v21 + ((v9 + 7 + v20) & 0xFFFFFFFFFFFFFFF8)) = v43;
      sub_10002C0AC(a2, v48);
      v22 = v47;
      v23 = v37;
      v24 = v38;
      v38(v47, v37, v7);
      v25 = swift_allocObject();
      v39 = v25;
      sub_100005A38(v48, v25 + 16);
      v26 = v25 + ((v19 + 56) & ~v19);
      v27 = v36;
      v36(v26, v22, v7);
      v28 = v46;
      v24(v46, v23, v7);
      v29 = (v19 + 24) & ~v19;
      v30 = (v40 + v29) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      *(v31 + 16) = v42;
      v27(v31 + v29, v28, v7);
      *(v31 + v30) = v43;
      v32 = v45;
      v33 = v44;
      sub_10021CE9C(sub_1005E1DC8, v41, sub_1001FE008, v39, sub_1005E1E5C, v31);
    }

    else
    {
      sub_10002A400(a2, a2[3]);
      dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
      v34 = v45;
    }
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

void sub_1005E1778(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  sub_10002A400(a1, a1[3]);
  if (sub_10021DCD4(a2))
  {
    [a2 setContentOffset:{0.0, 0.0}];
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x2074736554;
    v10._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = PerformanceTestCase.name.getter();
    MetatypeMetadata = &type metadata for String;
    v16[0] = v11;
    v16[1] = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v16);
    v13._countAndFlagsBits = 0xD000000000000013;
    v13._object = 0x8000000100807810;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = a4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v16);
    v14._countAndFlagsBits = 0xD00000000000002BLL;
    v14._object = 0x8000000100807830;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    MetatypeMetadata = sub_1005E1EEC();
    v16[0] = a2;
    a2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v16);
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    UIScrollView.perform(_:using:)(a3, a1);
  }

  else
  {
    sub_10002A400(a1, a1[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

BOOL sub_1005E1A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = *(a1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController);
  if (v6)
  {
    type metadata accessor for JULoadingViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v9 = v7 == 0;
  v10 = type metadata accessor for OSLogger();
  sub_1000056A8(v10, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2074736554;
  v11._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v20[0] = v12;
  v20[1] = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v14._object = 0x8000000100807A90;
  v14._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v20[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v15._countAndFlagsBits = 0x646165527369202CLL;
  v15._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v20[0]) = v7 == 0;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v16._object = 0x800000010081C520;
  v16._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v17 = sub_10002849C(&qword_100979948);
  MetatypeMetadata = sub_10002849C(&unk_100979950);
  v20[0] = v17;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v9;
}

void sub_1005E1DC8()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1005E1778((v0 + 16), v3, v0 + v2, v4);
}

BOOL sub_1005E1E5C()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005E1A80(v3, v0 + v2, v4);
}

unint64_t sub_1005E1EEC()
{
  result = qword_100978E50;
  if (!qword_100978E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978E50);
  }

  return result;
}

id sub_1005E2138(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];

    [v1 setNeedsLayout];
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10018E7F4;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10006F094;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008CADE8;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v8 performWithoutAnimation:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    return [isEscapingClosureAtFileLocation removeFromSuperview];
  }

  return result;
}

void sub_1005E2328()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

char *sub_1005E244C(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
    result = swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *&v4[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY];
      result = *(*(v6 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v8 = *&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
      *&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v7;
      if (v7 != v8)
      {
        return [result setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for UberCollectionViewCell()
{
  result = qword_10098E488;
  if (!qword_10098E488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E2634()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1005E26CC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1005E271C()
{
  sub_100028BB8();
  result = static UIColor.secondaryText.getter();
  qword_10098E498 = result;
  return result;
}

char *sub_1005E2750(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v84 = type metadata accessor for SystemImage();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v15;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter();
  v23 = &v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_id];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_itemType;
  v25 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = &v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_labelMaxWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_truncationLegibilityThreshold];
  *v27 = 0;
  v27[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_allowsTruncation] = 2;
  swift_beginAccess();
  v88 = *(v12 + 16);
  v88(v21, &v5[v22], v11);
  v28 = MetadataRibbonStarRatingViewLayout.Metrics.numberOfStars.getter();
  v87 = v12;
  v29 = *(v12 + 8);
  v89 = v11;
  v91 = v12 + 8;
  v90 = v29;
  v29(v21, v11);
  v30 = type metadata accessor for RatingView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v32 = &v31[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v32 = 0;
  v32[8] = 1;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = v28;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v33 = qword_100982C88;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v31[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 3;
  *v32 = 0;
  v32[8] = 1;
  v31[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 0;
  v34 = type metadata accessor for StarRow();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(v28, 1, 3, 0, 1, 0, 0);
  v31[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v37 = objc_allocWithZone(v34);
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(v28, 0, 3, 0, 1, 0, 0);
  v96.receiver = v31;
  v96.super_class = v30;
  v38 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v39 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v40 = *&v38[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v41 = *&v40[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v40[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v38[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v42 = v40;
  sub_1003A3A64(v41);

  if (*&v38[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v38 addSubview:?];
  }

  [v38 addSubview:*&v38[v39]];

  *&v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView] = v38;
  type metadata accessor for DynamicTypeLabel();
  v43 = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel] = v43;
  v44 = &v5[v22];
  v45 = v89;
  v88(v18, v44, v89);
  v46 = v43;
  v47 = MetadataRibbonStarRatingViewLayout.Metrics.ratingCountLabelLineBreakMode.getter();
  v90(v18, v45);
  [v46 setLineBreakMode:v47];

  v48 = type metadata accessor for MetadataRibbonStarRatingView();
  v95.receiver = v5;
  v95.super_class = v48;
  v49 = objc_msgSendSuper2(&v95, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v53 = v49;
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v54 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel;
  v55 = qword_10096EA80;
  v56 = *&v53[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setTextColor:qword_10098E498];

  v57 = *&v53[v54];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for MetadataRibbonTextStyle();
  v59 = sub_1000056A8(v58, qword_1009D36F8);
  v93 = v58;
  v94 = sub_1005E49C4(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
  v60 = sub_1000056E0(v92);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  v61 = *&v53[v54];
  v62 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  v81 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  v63 = v89;
  v88(v18, &v53[v62], v89);
  v64 = v61;
  v65 = MetadataRibbonStarRatingViewLayout.Metrics.ratingCountLabelNumberOfLines.getter();
  v90(v18, v63);
  [v64 setNumberOfLines:v65];

  [v53 addSubview:*&v53[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView]];
  [v53 addSubview:*&v53[v54]];
  v66 = v85;
  static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter();
  v67 = [v53 traitCollection];
  v68 = type metadata accessor for Feature();
  v93 = v68;
  v94 = sub_1005E49C4(&qword_100972E50, &type metadata accessor for Feature);
  v69 = sub_1000056E0(v92);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.search_tags(_:), v68);
  LOBYTE(v68) = isFeatureEnabled(_:)();
  sub_100007000(v92);
  if (v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = [objc_opt_self() configurationWithPointSize:4 weight:v70 scale:10.0];
  v72 = v83;
  v73 = v82;
  v74 = v84;
  (*(v83 + 104))(v82, enum case for SystemImage.star(_:), v84);
  v75 = [v71 configurationWithTraitCollection:v67];
  v76 = static SystemImage.load(_:with:)();

  (*(v72 + 8))(v73, v74);
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];

  v77 = v86;
  MetadataRibbonStarRatingViewLayout.Metrics.withStarSize(_:)();
  v90(v66, v63);
  v78 = v81;
  swift_beginAccess();
  (*(v87 + 40))(&v53[v78], v77, v63);
  swift_endAccess();

  return v53;
}

uint64_t sub_1005E331C()
{
  v1 = type metadata accessor for LayoutRect();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MetadataRibbonStarRatingViewLayout();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonStarRatingView();
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView];
  v26 = type metadata accessor for RatingView();
  v27 = &protocol witness table for UIView;
  v25 = v11;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel];
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = &protocol witness table for UILabel;
  v22 = v12;
  v13 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v13], v3);
  v14 = v11;
  v15 = v12;
  MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v16 = v19;
  MetadataRibbonStarRatingViewLayout.placeChildren(relativeTo:in:)();
  (*(v20 + 8))(v16, v21);
  return (*(v7 + 8))(v9, v18);
}

double sub_1005E3618(uint64_t a1)
{
  v18[0] = a1;
  v2 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonStarRatingViewLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView);
  v18[12] = type metadata accessor for RatingView();
  v18[13] = &protocol witness table for UIView;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel);
  v18[7] = type metadata accessor for DynamicTypeLabel();
  v18[8] = &protocol witness table for UILabel;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)();
  MetadataRibbonStarRatingViewLayout.measurements(fitting:in:)();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_1005E38F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataRibbonStarRatingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MetadataRibbonStarRatingView()
{
  result = qword_10098E4E0;
  if (!qword_10098E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E3A44()
{
  type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  if (v0 <= 0x3F)
  {
    sub_1000315A0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1005E3B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98);
}

uint64_t sub_1005E3BB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98);
  return swift_endAccess();
}

uint64_t sub_1005E3C90(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1005E3D5C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1005E3E20()
{
  v1 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1005E3E64(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1005E3F14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90);
}

uint64_t sub_1005E3F7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90);
  return swift_endAccess();
}

double sub_1005E404C(uint64_t a1, void *a2)
{
  v51 = a1;
  v58 = type metadata accessor for MetadataRibbonStarRatingViewLayout();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for LabelPlaceholder();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DynamicTextAppearance();
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v53 = &v43 - v11;
  v12 = type metadata accessor for SystemImage();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter();
  MetadataRibbonStarRatingViewLayout.Metrics.numberOfStars.getter();
  v56 = a2;
  v20 = [a2 traitCollection];
  v21 = type metadata accessor for Feature();
  v64 = v21;
  v65 = sub_1005E49C4(&qword_100972E50, &type metadata accessor for Feature);
  v22 = sub_1000056E0(v63);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21);
  LOBYTE(v21) = isFeatureEnabled(_:)();
  sub_100007000(v63);
  if (v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  v24 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:10.0];
  (*(v13 + 104))(v15, enum case for SystemImage.star(_:), v12);
  v25 = [v24 configurationWithTraitCollection:v20];
  v26 = static SystemImage.load(_:with:)();

  (*(v13 + 8))(v15, v12);
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];

  v27 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v44 = LayoutViewPlaceholder.init(representing:)();
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for MetadataRibbonTextStyle();
  v29 = sub_1000056A8(v28, qword_1009D36F8);
  v64 = v28;
  v65 = sub_1005E49C4(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
  v30 = sub_1000056E0(v63);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v31 = v46;
  v32 = *(v46 + 8);
  v33 = v6;
  v34 = v54;
  v32(v33, v54);
  v43 = v32;
  sub_100007000(v63);
  MetadataRibbonStarRatingViewLayout.Metrics.ratingCountLabelNumberOfLines.getter();
  v35 = v53;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v32(v9, v34);
  MetadataRibbonItem.labelText.getter();
  (*(v31 + 16))(v9, v35, v34);
  LabelPlaceholder.Options.init(rawValue:)();
  v36 = v49;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v50 + 8))(v36, v52);
  v61 = v27;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v60 = v44;
  sub_10002C0AC(v63, v59);
  v37 = v47;
  v38 = v48;
  (*(v47 + 16))(v45, v19, v48);

  v39 = v55;
  MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)();
  MetadataRibbonStarRatingViewLayout.measurements(fitting:in:)();
  v41 = v40;

  (*(v57 + 8))(v39, v58);
  sub_100007000(v63);
  v43(v35, v34);
  (*(v37 + 8))(v19, v38);
  return v41;
}

uint64_t sub_1005E4904()
{
  v1 = v0;
  MetadataRibbonItem.starRating.getter();
  v3 = v2;
  MetadataRibbonItem.labelText.getter();
  v5 = v4;
  sub_1003A2E44(v3);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  [v1 setNeedsLayout];
}

uint64_t sub_1005E49C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005E4A10()
{
  result = qword_10098E4F0;
  if (!qword_10098E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E4F0);
  }

  return result;
}

unint64_t sub_1005E4A68()
{
  result = qword_10098E4F8;
  if (!qword_10098E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E4F8);
  }

  return result;
}

uint64_t sub_1005E4AE0()
{
  v0 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100005644(v5, qword_1009D2D28);
  sub_1000056A8(v5, qword_1009D2D28);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1005E4C44()
{
  v0 = sub_10002849C(&qword_10098E578);
  sub_100005644(v0, qword_1009D2D40);
  sub_1000056A8(v0, qword_1009D2D40);
  sub_10002849C(&qword_10098E598);
  return Regex.init(_regexString:version:)();
}

uint64_t sub_1005E4CD4()
{
  v0 = sub_10002849C(&qword_10098C598);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v7 + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1005E4F44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1005767D4;

  return sub_1005E5F1C(a1);
}

unint64_t sub_1005E4FF0()
{
  result = qword_10098E500;
  if (!qword_10098E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E500);
  }

  return result;
}

unint64_t sub_1005E5044()
{
  result = qword_10098E508;
  if (!qword_10098E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E508);
  }

  return result;
}

unint64_t sub_1005E509C()
{
  result = qword_10098E510;
  if (!qword_10098E510)
  {
    sub_10002D1A8(&qword_10098E518);
    sub_1005E5044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E510);
  }

  return result;
}

uint64_t sub_1005E5120(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1005E52E4();
  *v5 = v2;
  v5[1] = sub_10015A5C8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1005E51DC()
{
  result = qword_10098E520;
  if (!qword_10098E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E520);
  }

  return result;
}

unint64_t sub_1005E5234()
{
  result = qword_10098E528;
  if (!qword_10098E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E528);
  }

  return result;
}

unint64_t sub_1005E528C()
{
  result = qword_10098E530;
  if (!qword_10098E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E530);
  }

  return result;
}

unint64_t sub_1005E52E4()
{
  result = qword_10098E538;
  if (!qword_10098E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E538);
  }

  return result;
}

unint64_t sub_1005E533C()
{
  result = qword_10098E540;
  if (!qword_10098E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E540);
  }

  return result;
}

uint64_t sub_1005E5390()
{
  v0 = sub_10002849C(&qword_10098E5A8);
  __chkstk_darwin(v0);
  sub_10019D8BC();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v1);
  swift_getKeyPath();
  sub_10002849C(&qword_10098E5B0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_1005E54B0()
{
  result = qword_10098E548;
  if (!qword_10098E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E548);
  }

  return result;
}

unint64_t sub_1005E5504()
{
  result = qword_10098E550;
  if (!qword_10098E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E550);
  }

  return result;
}

unint64_t sub_1005E555C()
{
  result = qword_10098E558;
  if (!qword_10098E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E558);
  }

  return result;
}

uint64_t sub_1005E55B0()
{
  sub_1005E5EC8();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005E561C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096EA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000056A8(v2, qword_1009D2D28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1005E5708(uint64_t a1)
{
  v2 = sub_10019D8BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1005E5758()
{
  result = qword_10098E570;
  if (!qword_10098E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E570);
  }

  return result;
}

uint64_t sub_1005E57B0(uint64_t a1)
{
  v2 = sub_1005E555C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1005E581C(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    _StringGuts.grow(_:)(38);

    v7 = 0xD000000000000024;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v7 = 0xD00000000000001DLL;
  }

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  String.append(_:)(v5);
  return v7;
}

uint64_t sub_1005E58D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v47 = a3;
  v9 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_10002849C(&qword_10098E578);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_10002849C(&qword_10098E580);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v19 - 8);
  sub_10002849C(&qword_10098C590);
  LocalizedStringResource.init(stringLiteral:)();
  v46 = EntityProperty<>.init(title:)();

  LocalizedStringResource.init(stringLiteral:)();
  v20 = EntityProperty<>.init(title:)();
  v21 = qword_10096EA90;
  v42 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v12, qword_1009D2D40);
  sub_100097060(&qword_10098E588, &qword_10098E578);
  dispatch thunk of RegexComponent.regex.getter();
  v45 = a1;
  String.subscript.getter();
  Regex.wholeMatch(in:)();
  (*(v13 + 8))(v15, v12);

  v22 = sub_10002849C(&qword_10098E590);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10002B894(v18, &qword_10098E580);

    v24 = 0;
    v25 = a2;
    v26 = v45;
    v27 = v45;
  }

  else
  {
    Regex.Match.output.getter();

    (*(v23 + 8))(v18, v22);
    v27 = static String._fromSubstring(_:)();
    v25 = v40;

    v24 = 1;
    v26 = v45;
  }

  v28 = v43;
  if (!v44)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v44)
  {
    v29 = v44;
  }

  v48 = v28;
  v49 = v29;

  EntityProperty.wrappedValue.setter();
  v30 = v11;
  sub_1000417F0(v47, v11);
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10002B894(v11, &qword_100982460);
    v33 = sub_1005E581C(v24, v27, v25);
    v35 = v34;
  }

  else
  {
    v33 = URL.absoluteString.getter();
    v35 = v36;
    (*(v32 + 8))(v30, v31);
  }

  v48 = v33;
  v49 = v35;
  v37 = v42;
  EntityProperty.wrappedValue.setter();
  sub_10002B894(v47, &qword_100982460);

  v38 = v46;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v38;
  a6[5] = v37;
  return result;
}

unint64_t sub_1005E5EC8()
{
  result = qword_10098E5A0;
  if (!qword_10098E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5A0);
  }

  return result;
}

uint64_t sub_1005E5F1C(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10002849C(&qword_100982460);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1005E5FB8, 0, 0);
}

uint64_t sub_1005E5FB8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100144638(0, v2, 0);
    v3 = type metadata accessor for URL();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_1005E58D8(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (*&v10 >= *&v9 >> 1)
      {
        sub_100144638((*&v9 > 1uLL), *&v10 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * *&v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      *(v11 + 3) = *(v0 + 32);
      *(v11 + 4) = v13;
      *(v11 + 2) = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1005E61AC()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10098E5D0 = type metadata accessor for OSLogger();
  unk_10098E5D8 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_10098E5B8);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1005E62F0(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0);
  v5 = Promise.__allocating_init()();
  sub_100005744(0, &qword_10098D1A0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v6 = v11[0];
  sub_1005E6490(v11[0]);
  sub_1005E7310(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_1005E7348(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_100005744(0, &qword_1009729E0);
  swift_retain_n();

  v9 = static OS_dispatch_queue.main.getter();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v11);
  return v5;
}

id sub_1005E6490(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&unk_10098D500);
  v10 = Promise.__allocating_init()();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    Promise.resolve(_:)();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_100005744(0, &qword_1009729E0);
      v25 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_1005E73E4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008CAF88;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1005E73F0(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v25;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_10096EA98 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_10098E5B8, qword_10098E5D0);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_1005E7390();
      swift_allocError();
      Promise.reject(_:)();
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005E69BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v39 = a1;
  v34 = a3;
  v40 = a2;
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FlowOrigin();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowAnimationBehavior();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowPresentationContext();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v20 - 8);
  v22 = &v31 - v21;
  v23 = type metadata accessor for FlowPage();
  v26 = __chkstk_darwin(v23);
  if (*v39 == 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = type metadata accessor for ReferrerData();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v42 = type metadata accessor for ReviewSummaryReportConcernAction();
    v41 = v34;

    static ActionMetrics.notInstrumented.getter();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v31 + 104))(v35, enum case for FlowAnimationBehavior.infer(_:), v32);
    (*(v33 + 104))(v37, enum case for FlowOrigin.inapp(_:), v36);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v29 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005D01FC(v29, 1, v38);
    Promise.pipe(to:)();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    Promise.resolve(_:)();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1005E6F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_1005E7438;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100080D48;
  v11 = &unk_1008CAFB0;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_1005E7464;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100669D64;
  v11 = &unk_1008CAFD8;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

uint64_t sub_1005E712C()
{
  if (qword_10096EA98 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098E5B8, qword_10098E5D0);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_1000056E0(v3);
  (*(*(v2 - 8) + 16))(v0);
  static LogMessage.safe(_:)();
  sub_10003D444(v3);
  Logger.error(_:)();

  LOBYTE(v3[0]) = 0;
  return Promise.resolve(_:)();
}

unint64_t sub_1005E7390()
{
  result = qword_10098E5E8;
  if (!qword_10098E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5E8);
  }

  return result;
}

uint64_t sub_1005E73F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005E7480()
{
  result = qword_10098E5F0;
  if (!qword_10098E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayCardGrid.SizeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGrid.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1005E764C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1005E7660(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

Swift::Int sub_1005E7680()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
  }

  else
  {
    v1 = qword_1007D9080[(v1 - 4)];
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1005E76F8()
{
  v1 = *v0;
  if ((v1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
  }

  else
  {
    v1 = qword_1007D9080[(v1 - 4)];
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1005E7754()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
  }

  else
  {
    v1 = qword_1007D9080[(v1 - 4)];
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1005E77C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1005E7834()
{
  result = qword_10098E5F8;
  if (!qword_10098E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5F8);
  }

  return result;
}

uint64_t sub_1005E7888()
{
  v0 = sub_10002849C(&qword_10097AAF8);
  sub_100005644(v0, qword_1009D2D58);
  sub_1000056A8(v0, qword_1009D2D58);
  type metadata accessor for DeviceType(0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1005E7908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100144148(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 16);

    if (v6 >= 2)
    {
      break;
    }

    v7 = *&v5;
LABEL_16:
    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    if (*&v17 >= *&v16 >> 1)
    {
      sub_100144148((*&v16 > 1uLL), *&v17 + 1, 1);
    }

    ++v3;
    *&_swiftEmptyArrayStorage[2] = *&v17 + 1;
    _swiftEmptyArrayStorage[*&v17 + 4] = v7;
    if (v3 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v7 = *&v5;
  if ((result & 1) == 0)
  {
    result = sub_100548D00(v5);
    v7 = *&result;
  }

  v9 = 0;
  v10 = *&v7 + 32;
  while (1)
  {
    v11 = v9 + 1;
    v12 = v6 - (v9 + 1);
    if (__OFSUB__(v6, v9 + 1))
    {
      break;
    }

    if (v9 != v12)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(*&v7 + 16);
      if (v9 >= v13)
      {
        goto LABEL_22;
      }

      if (v12 >= v13)
      {
        goto LABEL_23;
      }

      v14 = *&v7 + v9;
      v15 = *(v14 + 32);
      *(v14 + 32) = *(v10 + v12);
      *(v10 + v12) = v15;
    }

    v9 = v11;
    if (v6 >> 1 == v11)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1005E7AA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10002849C(&qword_10096FD10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10002849C(&qword_10096FD08);
      v7 = swift_allocObject();
      v8 = j__malloc_size_2(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1005E7B90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10002849C(&qword_10096FC68);
      v8 = swift_allocObject();
      v9 = j__malloc_size_2(v8);
      *(v8 + 2) = v5;
      *(v8 + 3) = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1005E7CA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10002849C(&qword_100973210);
      v9 = swift_allocObject();
      v10 = j__malloc_size_2(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1005E7DBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10002849C(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size_2(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1005E7F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_10002849C(&qword_10096FD90);
      v8 = swift_allocObject();
      v9 = j__malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      *(v8 + 2) = v5;
      *(v8 + 3) = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1005E8030()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - v2;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v9 = v8;
  result = (*(v5 + 8))(v7, v4);
  v11 = floor(v9);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v13 = *(v23[1] + 16);

  if (!v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = v13 / v12;
  v15 = v13 % v12;
  if (v15)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v14;
  }

  if (v16 < 0)
  {
    goto LABEL_26;
  }

  for (i = _swiftEmptyArrayStorage; v16; --v16)
  {
    if (v15 && v16 == 1)
    {
      v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v18 + 16) = v15;
      v19 = (v18 + 32);
      v20 = v15;
    }

    else
    {
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_22;
      }

      v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v18 + 16) = v12;
      v19 = (v18 + 32);
      v20 = v12;
    }

    memset(v19, 4, v20);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100033BB8(0, *(i + 2) + 1, 1, i);
      i = result;
    }

    v22 = *(i + 2);
    v21 = *(i + 3);
    if (v22 >= v21 >> 1)
    {
      result = sub_100033BB8((v21 > 1), v22 + 1, 1, i);
      i = result;
    }

    *(i + 2) = v22 + 1;
    *&i[v22 + 4] = v18;
  }

  return i;
}

double *sub_1005E834C()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002849C(&qword_10096FC70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = &off_1008AE908;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_1008AE958;
      }

      else
      {
        v10 = &off_1008AE930;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_100033BB8((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

double *sub_1005E8518()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  v6 = (v4 + 1) >> 1;
  v7 = v4 & 1;
  do
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v6 == 1 && v7)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_100033BB8(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v5 = sub_100033BB8((v10 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_1008AE9A8;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_100033BB8(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v13 = *(v5 + 3);
      v12 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        v5 = sub_100033BB8((v13 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_1008AE980;
    }

    *(v5 + 2) = v12;
    *&v5[v11 + 4] = v8;
    --v6;
  }

  while (v6);
  return v5;
}

double *sub_1005E8744(double *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10002849C(&qword_10096FC78);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

double *sub_1005E87E0(uint64_t a1)
{
  v49 = a1;
  v43 = type metadata accessor for TodaySectionDisplayOptions.GroupDisplayStyle();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Shelf.ContentsMetadata();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v47 = type metadata accessor for TodaySectionDisplayOptions();
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096EAA0 != -1)
  {
    swift_once();
  }

  v13 = sub_10002849C(&qword_10097AAF8);
  sub_1000056A8(v13, qword_1009D2D58);
  type metadata accessor for DeviceType(0);
  Preferences.subscript.getter();

  v14 = v50;
  if (!v50)
  {
    v14 = ASKDeviceTypeGetCurrent();
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    v19 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v20 ^ 1;
  }

  v21 = ShelfLayoutContext.traitCollection.getter();
  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v19 & 1) != 0 || (v22)
  {
    goto LABEL_15;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v23 = *(v6 + 8);
  v23(v11, v5);
  v24 = v48;
  if ((*(v2 + 88))(v4, v48) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v2 + 8))(v4, v24);
LABEL_15:
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v6 + 8))(v8, v5);
    v32 = v50[2];

    v33 = sub_1005E8744(&off_1008AEA20, v32);

    return v33;
  }

  (*(v2 + 96))(v4, v24);
  v25 = v42;
  v26 = v46;
  v27 = v47;
  (*(v42 + 32))(v46, v4, v47);
  v28 = v44;
  TodaySectionDisplayOptions.groupDisplayStyle.getter();
  v29 = v43;
  v30 = (*(v45 + 88))(v28, v43);
  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    v31 = sub_1005E834C();
LABEL_19:
    v33 = v31;

    (*(v25 + 8))(v26, v27);
    return v33;
  }

  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
  {
    v31 = sub_1005E8518();
    goto LABEL_19;
  }

  v35 = enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:);
  v36 = v25;
  v37 = v30;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v38 = (v36 + 8);
  ReadOnlyLens.subscript.getter();

  v23(v8, v5);
  if (v37 == v35)
  {
    v39 = v50[2];

    v33 = sub_1005E8744(&off_1008AE9D0, v39);

    (*v38)(v46, v47);
  }

  else
  {
    v40 = v50[2];

    v33 = sub_1005E8744(&off_1008AE9F8, v40);

    (*v38)(v46, v47);
    (*(v45 + 8))(v44, v29);
  }

  return v33;
}

uint64_t sub_1005E8E90()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (v4 < 0xA)
  {
    return *(&off_1008CB1D0 + v4);
  }

  v6 = ((v4 - 7) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  v5 = &off_1008AEF40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v5 = sub_100033BB8(0, 4, 1, &off_1008AEF40);
  }

  v7 = 0;
  v8 = v6 >> 1;
  do
  {
    if (v7 % 3 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = *(&off_1008AEF40 + v7 % 3 + 4);
    v9 = *(v5 + 2);
    v10 = *(v5 + 3);

    if (v9 >= v10 >> 1)
    {
      v5 = sub_100033BB8((v10 > 1), v9 + 1, 1, v5);
    }

    ++v7;
    *(v5 + 2) = v9 + 1;
    *&v5[v9 + 4] = v6;
  }

  while (v8 != v7);
  v11 = v4 % 3;
  if (!(v4 % 3))
  {
    return v5;
  }

  v12 = *(v6 + 16);
  if (v12 < v11)
  {
    __break(1u);
LABEL_21:
    result = sub_100548CEC(v5);
    v5 = result;
    goto LABEL_15;
  }

  if (v12 == v11)
  {
  }

  else
  {
    sub_1005E7B90(v6, v6 + 32, 0, (2 * v11) | 1);
    v6 = v13;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v9 < *(v5 + 2))
  {
    *&v5[v9 + 4] = v6;

    return v5;
  }

  __break(1u);
  return result;
}

double *sub_1005E9128()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v13[1] + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) >> 1;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v6 - 1 == v5 && (v4 & 1) != 0)
      {
        if (v5)
        {
          v9 = &off_1008AEFF0;
        }

        else
        {
          v9 = &off_1008AEFC8;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v5)
        {
          v9 = &off_1008AEF78;
        }

        else
        {
          v9 = &off_1008AEFA0;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_9:
          v7 = sub_100033BB8(0, *(v7 + 2) + 1, 1, v7);
        }
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_100033BB8((v10 > 1), v11 + 1, 1, v7);
      }

      ++v5;
      *(v7 + 2) = v11 + 1;
      *&v7[v11 + 4] = v9;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

double *sub_1005E9328()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002849C(&qword_10096FC70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = &off_1008AF018;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_1008AF040;
      }

      else
      {
        v10 = &off_1008AF068;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_100033BB8((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

double *sub_1005E94F4()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v11[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002849C(&qword_10096FC70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = &off_1008AF090;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v4 >> 1) - 1 != v6 || (v4)
      {
        if (v6)
        {
          v9 = &off_1008AF0B8;
        }

        else
        {
          v9 = &off_1008AF0E0;
        }
      }

      else if (v6)
      {
        v9 = &off_1008AF130;
      }

      else
      {
        v9 = &off_1008AF108;
      }

      if (v7 >> 1 <= v8)
      {
        v5 = sub_100033BB8((v7 > 1), v8 + 1, 1, v5);
      }

      ++v6;
      *(v5 + 16) = v8 + 1;
      *(v5 + 8 * v8 + 32) = v9;
    }

    while (v4 >> 1 != v6);
  }

  return v5;
}

double *sub_1005E9704()
{
  v0 = type metadata accessor for TodaySectionDisplayOptions.GroupDisplayStyle();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Shelf.ContentsMetadata();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v38 - v8;
  v9 = type metadata accessor for TodaySectionDisplayOptions();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageGrid.Breakpoint();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PageGrid();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v17, v14);
  if (v19 <= 1.0)
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v50 + 8))(v6, v4);
    v35 = *(v51 + 16);

    return sub_1005E8744(&off_1008AF158, v35);
  }

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.activeBreakPoint.getter();
  v20(v17, v14);
  if (qword_10096E998 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v11, qword_1009D2A98);
  v21 = static PageGrid.Breakpoint.== infix(_:_:)();
  (*(v45 + 8))(v13, v11);
  v22 = v46;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v23 = v47;
  ReadOnlyLens.subscript.getter();

  (*(v50 + 8))(v22, v4);
  v25 = v48;
  v24 = v49;
  if ((*(v48 + 88))(v23, v49) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v25 + 8))(v23, v24);
    return sub_1005E9128();
  }

  (*(v25 + 96))(v23, v24);
  v26 = v41;
  v27 = v39;
  v28 = v23;
  v29 = v42;
  (*(v41 + 32))(v39, v28, v42);
  v30 = v40;
  TodaySectionDisplayOptions.groupDisplayStyle.getter();
  v32 = v43;
  v31 = v44;
  v33 = (*(v43 + 88))(v30, v44);
  if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    if (v21)
    {
      v34 = sub_1005E9328();
    }

    else
    {
      v34 = sub_1005E94F4();
    }
  }

  else
  {
    if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
    {
      goto LABEL_11;
    }

    if (v33 != enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:))
    {
      v37 = sub_1005E9128();
      (*(v32 + 8))(v30, v31);
      goto LABEL_14;
    }

    if ((v21 & 1) == 0)
    {
LABEL_11:
      v34 = sub_1005E9128();
    }

    else
    {
      v34 = sub_1005E8E90();
    }
  }

  v37 = v34;
LABEL_14:
  (*(v26 + 8))(v27, v29);
  return v37;
}

uint64_t sub_1005E9D74(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    return sub_1005E8030();
  }

  v11 = ShelfLayoutContext.traitCollection.getter();
  v12 = UITraitCollection.isSizeClassCompact.getter();

  if (v12)
  {
    v13 = sub_1005E87E0(a1);
  }

  else
  {
    v13 = sub_1005E9704();
  }

  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_1005E9F84(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v25 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v16 = *(v7 + 8);
  v16(v15, v6);
  v23 = v3;
  v24 = v2;
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  LODWORD(v2) = enum case for Shelf.ContentType.miniTodayCard(_:);
  sub_10002849C(&qword_10096FC70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B10D0;
  if (a1 == v2)
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v16(v12, v6);
    v18 = *(v26 + 16);

    if (v18)
    {
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v19 + 16) = v18;
      memset((v19 + 32), 4, v18);
      *(v17 + 32) = v19;
    }

    else
    {
      *(v17 + 32) = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v16(v9, v6);
    v20 = *(v26 + 16);

    if (v20)
    {
      v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v21 + 2) = v20;
      memset(v21 + 4, 5, v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    *(v17 + 32) = v21;
    (*(v23 + 8))(v5, v24);
  }

  return v17;
}

unint64_t sub_1005EA314()
{
  result = qword_10098E600;
  if (!qword_10098E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E600);
  }

  return result;
}

id sub_1005EA368()
{
  if (qword_10096EC98 != -1)
  {
    swift_once();
  }

  v1 = qword_1009D32B0;
  qword_1009D2D70 = qword_1009D32B0;

  return v1;
}

char *sub_1005EA3CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage] = 0;
  type metadata accessor for DynamicTypeLabel();
  v7 = type metadata accessor for FontSource();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v33);
  if (qword_10096EAA8 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_1009D2D70;
  *v8 = qword_1009D2D70;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel] = DynamicTypeLabel.__allocating_init(customTextStyle:numberOfLines:lineBreakMode:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel;
  v18 = qword_10096EC80;
  v19 = *&v16[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_1009D3298];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_10002849C(&qword_10097B110);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B10D0;
  *(v25 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC8AppStore14SearchHintView_iconView;
  v27 = qword_10096EC90;
  v28 = *&v16[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_1009D32A8];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_1005EA968(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_10096EC98 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_1009D32B0 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    image = [v5 imageWithConfiguration:v8];
  }

  else
  {
    image = 0;
  }

  v11.value.super.isa = image;
  v11.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v11, a3);
}

uint64_t sub_1005EAABC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchHintLayout();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchHintLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_1005EAE00(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView];
  v40 = type metadata accessor for ArtworkView();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView();
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)();
  [v1 bounds];
  v25 = v28;
  SearchHintLayout.placeChildren(relativeTo:in:)();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1005EAE00@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for StaticDimension();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_10096EC98 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_1009D32B0 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_10096EAA8 != -1)
    {
      swift_once();
    }

    v26 = qword_1009D2D70;
    *v15 = qword_1009D2D70;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_1000056E0(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    StaticDimension.init(_:scaledLike:)();
    (*(v13 + 8))(v15, v12);
    static Dimensions.defaultRoundingRule.getter();
    v16 = v25;
    AnyDimension.value(in:rounded:)();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_10096EAA8 != -1)
  {
    swift_once();
  }

  v29 = qword_1009D2D70;
  *v15 = qword_1009D2D70;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  StaticDimension.init(_:scaledLike:)();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_1000056E0(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v42);
  v33(v36, v15, v12);
  StaticDimension.init(_:scaledLike:)();
  v35(v15, v12);
  return SearchHintLayout.Metrics.init(leadingMargin:trailingMargin:textLeadingMargin:iconHorizontalCenterMargin:iconSize:)();
}

double sub_1005EB430(void *a1)
{
  v2 = v1;
  v27[1] = a1;
  v27[2] = swift_getObjectType();
  v28 = type metadata accessor for SearchHintLayout();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchHintLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  v15 = v14;
  [v2 layoutMargins];
  sub_1005EAE00(v14, a1, v13, v16, v17);

  (*(v8 + 16))(v10, v13, v7);
  v18 = *&v2[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView];
  v36 = type metadata accessor for ArtworkView();
  v37 = &protocol witness table for UIView;
  v35 = v18;
  v19 = *&v2[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
  v33 = type metadata accessor for DynamicTypeLabel();
  v34 = &protocol witness table for UILabel;
  v32 = v19;
  v20 = *&v2[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView];
  v30 = type metadata accessor for SeparatorView();
  v31 = &protocol witness table for UIView;
  v29 = v20;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)();
  SearchHintLayout.measurements(fitting:in:)();
  v25 = v24;
  (*(v4 + 8))(v6, v28);
  (*(v8 + 8))(v13, v7);
  return v25;
}

id sub_1005EB7BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005EB880(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_1005EB9BC(void *a1, void *a2)
{
  v91 = a1;
  v96 = type metadata accessor for SearchHintLayout();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v3;
  __chkstk_darwin(v4);
  v94 = &v70 - v5;
  v90 = type metadata accessor for TextAppearance();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v70 - v8;
  __chkstk_darwin(v9);
  v81 = &v70 - v10;
  __chkstk_darwin(v11);
  v83 = &v70 - v12;
  __chkstk_darwin(v13);
  v85 = &v70 - v14;
  v86 = type metadata accessor for LabelPlaceholder();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FloatingPointRoundingRule();
  v77 = *(v97 - 8);
  __chkstk_darwin(v97);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FontSource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for StaticDimension();
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SearchHintLayout.Metrics();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v79 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v99 = &v70 - v28;
  v98 = a2;
  [a2 pageMarginInsets];
  v30 = v29;
  v32 = v31;
  if (qword_10096EAA8 != -1)
  {
    swift_once();
  }

  v33 = qword_1009D2D70;
  *v21 = qword_1009D2D70;
  v72 = enum case for FontSource.textStyle(_:);
  v71 = v19[13];
  v71(v21);
  v70 = v19 + 13;
  v109 = v18;
  v110 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(&v108);
  v73 = v19[2];
  v74 = v19 + 2;
  v73(v34, v21, v18);
  v35 = v33;
  StaticDimension.init(_:scaledLike:)();
  v75 = v19[1];
  v75(v21, v18);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v77[1](v17, v97);
  (*(v76 + 8))(v24, v22);
  v109 = &type metadata for CGFloat;
  v110 = &protocol witness table for CGFloat;
  v108 = v30;
  v106 = &type metadata for CGFloat;
  v107 = &protocol witness table for CGFloat;
  v105 = v32;
  v36 = v35;
  *v21 = v35;
  v37 = v72;
  v38 = v71;
  (v71)(v21, v72, v18);
  v104[3] = v22;
  v104[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v104);
  v102 = v18;
  v103 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(&v101);
  v40 = v73;
  v73(v39, v21, v18);
  v41 = v36;
  v77 = v41;
  StaticDimension.init(_:scaledLike:)();
  v42 = v75;
  v75(v21, v18);
  *v21 = v41;
  v38(v21, v37, v18);
  v102 = v22;
  v103 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v101);
  v100[3] = v18;
  v100[4] = &protocol witness table for FontSource;
  v43 = sub_1000056E0(v100);
  v40(v43, v21, v18);
  StaticDimension.init(_:scaledLike:)();
  v42(v21, v18);
  SearchHintLayout.Metrics.init(leadingMargin:trailingMargin:textLeadingMargin:iconHorizontalCenterMargin:iconSize:)();
  SearchHintLayout.Metrics.iconSize.getter();
  v44 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v97 = LayoutViewPlaceholder.init(representing:)();
  v45 = v78;
  TextAppearance.init()();
  v46 = objc_opt_self();
  v47 = v98;
  v48 = [v98 traitCollection];
  v49 = [v46 preferredFontForTextStyle:v77 compatibleWithTraitCollection:v48];

  v50 = v80;
  TextAppearance.withFont(_:)();

  v51 = *(v88 + 8);
  v52 = v90;
  v51(v45, v90);
  v53 = v81;
  TextAppearance.withTextAlignment(_:)();
  v51(v50, v52);
  v54 = v83;
  TextAppearance.withLineBreakMode(_:)();
  v51(v53, v52);
  v55 = [v47 traitCollection];
  v56 = [v55 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  TextAppearance.withNumberOfLines(_:)();
  v51(v54, v52);
  LabelPlaceholder.Options.init(rawValue:)();
  v57 = v91;
  v58 = v82;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v84 + 8))(v58, v86);
  swift_allocObject();
  v59 = LayoutViewPlaceholder.init(representing:)();
  v60 = v87;
  v61 = v89;
  (*(v87 + 16))(v79, v99, v89);
  v106 = v44;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  v105 = v97;
  sub_10002C0AC(&v108, v104);
  v102 = v44;
  v103 = &protocol witness table for LayoutViewPlaceholder;
  v101 = v59;

  v62 = v94;
  SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)();
  v63 = v95;
  v64 = v93;
  v65 = v96;
  (*(v95 + 16))(v93, v62, v96);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v66, v64, v65);
  swift_allocObject();
  v68 = LayoutViewPlaceholder.init(measureWith:)();

  (*(v63 + 8))(v62, v65);
  sub_100007000(&v108);
  (*(v60 + 8))(v99, v61);
  return v68;
}

id sub_1005EC638(double *a1, double *a2, double *a3)
{
  v4 = a1;
  *(v3 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v3 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsAX) = a3;
  *(v3 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v24 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v19 = v3;
    v20 = v4;
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v7 = *&v4[v6 + 4];

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v9 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v10 = RibbonBarItem.clickAction.getter();
      if (v10)
      {
        v11 = v10;
        v12 = v5;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v11;
        v15 = &v9[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
        v16 = *&v9[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
        *v15 = sub_1005EDD10;
        v15[1] = v14;

        sub_10001F63C(v16);
        v5 = v12;
        v4 = v20;
      }

      sub_1006E9210(v7, v23);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v3 = &v24;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v6;
      if (v8 == v5)
      {
        v17 = v24;
        v3 = v19;
        goto LABEL_18;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_1005ECBCC(v17);
  return [v3 setNeedsLayout];
}

id sub_1005EC90C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  static TagFacetRibbonLayout.Metrics.standard.getter();
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10096EAB0 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10098E660];
  sub_10002849C(&qword_10097B110);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B10D0;
  *(v16 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

id sub_1005ECBCC(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_1005ECD7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for LayoutRect();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFacetRibbonLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TagFacetRibbonLayout();
  v19 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v9);

  sub_1002A65F0(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_metrics], v5);
  TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  TagFacetRibbonLayout.placeChildren(relativeTo:in:)();
  (*(v18 + 8))(v4, v20);
  v13 = &v1[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    swift_endAccess();

    v14(v15);
    sub_10001F63C(v14);
    return (*(v19 + 8))(v11, v21);
  }

  else
  {
    (*(v19 + 8))(v11, v21);
    return swift_endAccess();
  }
}

double sub_1005ED0D8(uint64_t a1)
{
  v14[1] = a1;
  v2 = type metadata accessor for TagFacetRibbonLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TagFacetRibbonLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1002A65F0(v10);

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_metrics, v2);
  TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)();
  TagFacetRibbonLayout.measurements(fitting:in:)();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  return v12;
}

void sub_1005ED3F0()
{
  v0 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v35 - v1;
  v3 = type metadata accessor for ImpressionMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v47 = *&v8[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels];
      if (v47)
      {
        v11 = *&v8[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews];
        v37 = v8;
        if (v11 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {

          if (!i)
          {
            break;
          }

          v45 = v11 & 0xFFFFFFFFFFFFFF8;
          v46 = v11 & 0xC000000000000001;
          v13 = v47 & 0xFFFFFFFFFFFFFF8;
          if (v47 >= 0)
          {
            v14 = v47 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v14 = v47;
          }

          v35 = v14;
          v39 = (v4 + 32);
          v40 = (v4 + 48);
          v38 = (v4 + 8);
          v15 = 4;
          v43 = v47 & 0xC000000000000001;
          v44 = v47 >> 62;
          v41 = v47 & 0xFFFFFFFFFFFFFF8;
          v42 = i;
          v36 = v2;
          while (1)
          {
            v4 = v15 - 4;
            if (v46)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v4 >= *(v45 + 16))
              {
                goto LABEL_37;
              }

              v16 = *(v11 + 8 * v15);
            }

            v17 = v16;
            v18 = v15 - 3;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v44)
            {
              if (v4 == _CocoaArrayWrapper.endIndex.getter())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v4 == *(v13 + 16))
            {
              goto LABEL_33;
            }

            if (v43)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v4 >= *(v13 + 16))
              {
                goto LABEL_38;
              }
            }

            RibbonBarItem.impressionMetrics.getter();
            if ((*v40)(v2, 1, v3) == 1)
            {

              sub_100453E30(v2);
            }

            else
            {
              (*v39)(v6, v2, v3);
              v19 = v17;
              if ([v19 isHidden])
              {
              }

              else
              {
                [v19 frame];
                v21 = v20;
                v23 = v22;
                v25 = v24;
                v27 = v26;

                v28 = v11;
                v29 = v10;
                v30 = v3;
                v31 = v6;
                v32 = v37;
                v33 = [v37 superview];
                v34 = v32;
                v6 = v31;
                v3 = v30;
                v10 = v29;
                v11 = v28;
                v2 = v36;
                [v34 convertRect:v33 toView:{v21, v23, v25, v27}];

                ImpressionsCalculator.addElement(_:at:)();
              }

              (*v38)(v6, v3);
            }

            ++v15;
            v13 = v41;
            if (v18 == v42)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for TagFacetRibbonView()
{
  result = qword_10098E6A8;
  if (!qword_10098E6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005ED990()
{
  result = type metadata accessor for TagFacetRibbonLayout.Metrics();
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

uint64_t sub_1005EDA9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1005EDB54()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1005EDBB0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1005EDC70())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1005EDDE4;
}

uint64_t sub_1005EDD18(void *a1)
{
  sub_10002A400(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (qword_10096EAB0 != -1)
  {
    swift_once();
  }

  v3 = qword_10098E660;
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    v3;
  }

  sub_100047650(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}