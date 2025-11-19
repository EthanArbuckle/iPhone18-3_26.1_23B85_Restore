uint64_t sub_100053BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for ChecklistItemView(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10001B4A4(&qword_1000B4510, &qword_10007A650);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10001B4A4(&qword_1000B4518, &qword_10007A658);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = sub_10001B4A4(&qword_1000B4520, &qword_10007A660);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  *v22 = static VerticalAlignment.top.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_10001B4A4(&qword_1000B4528, &qword_10007A668);
  sub_100054024(a1, &v22[*(v23 + 44)]);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v24 = sub_10001B4A4(&qword_1000B4530, &qword_10007A670);
  sub_100054418(a1, &v8[*(v24 + 44)]);
  sub_100056918(a1, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChecklistItemView);
  v25 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v26 = swift_allocObject();
  sub_10005685C(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_10001E8B8(&qword_1000B4538, &qword_1000B4510, &qword_10007A650);
  View.readSize(onChange:)();

  sub_10001F870(v8, &qword_1000B4510, &qword_10007A650);
  v33 = v20;
  sub_10001F808(v22, v20, &qword_1000B4520, &qword_10007A660);
  v27 = v10[2];
  v28 = v35;
  v27(v35, v15, v9);
  v29 = v36;
  sub_10001F808(v20, v36, &qword_1000B4520, &qword_10007A660);
  v30 = sub_10001B4A4(&qword_1000B4540, &qword_10007A678);
  v27((v29 + *(v30 + 48)), v28, v9);
  v31 = v10[1];
  v31(v15, v9);
  sub_10001F870(v22, &qword_1000B4520, &qword_10007A660);
  v31(v28, v9);
  return sub_10001F870(v33, &qword_1000B4520, &qword_10007A660);
}

uint64_t sub_100054024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_10001B4A4(&qword_1000B4448, &qword_10007A4A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_10001B4A4(&qword_1000B4450, &qword_10007A4B0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v40 = &v38 - v13;
  __chkstk_darwin(v12);
  v41 = &v38 - v14;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = &v6[*(sub_10001B4A4(&qword_1000B4458, &qword_10007A4B8) + 44)];
  v16 = type metadata accessor for ChecklistItemView(0);
  v17 = *(v16 + 20);
  v39 = a1;
  v18 = *(a1 + v17 + 8);
  v19 = *(a1 + *(v16 + 28));
  *v15 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for ChecklistItemIcon(0);
  v21 = (v15 + *(v20 + 20));
  type metadata accessor for ChecklistViewModel();
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
  v22 = v18;
  v23 = v19;
  *v21 = ObservedObject.init(wrappedValue:)();
  v21[1] = v24;
  *(v15 + *(v20 + 24)) = v23;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v25 = v40;
  sub_100023628(v6, v40, &qword_1000B4448, &qword_10007A4A8);
  v26 = (v25 + *(v8 + 44));
  v27 = *(&v50[7] + 8);
  v26[4] = *(&v50[6] + 8);
  v26[5] = v27;
  v26[6] = *(&v50[8] + 8);
  v28 = *(&v50[3] + 8);
  *v26 = *(&v50[2] + 8);
  v26[1] = v28;
  v29 = *(&v50[5] + 8);
  v26[2] = *(&v50[4] + 8);
  v26[3] = v29;
  v30 = v41;
  sub_100023628(v25, v41, &qword_1000B4450, &qword_10007A4B0);
  sub_10005504C(v39, &v44);
  v31 = v42;
  sub_10001F808(v30, v42, &qword_1000B4450, &qword_10007A4B0);
  v32 = v43;
  sub_10001F808(v31, v43, &qword_1000B4450, &qword_10007A4B0);
  v33 = (v32 + *(sub_10001B4A4(&qword_1000B4550, &qword_10007A688) + 48));
  v34 = *(v46 + 13);
  *(v48 + 13) = *(v46 + 13);
  v35 = v45;
  v47[0] = v44;
  v47[1] = v45;
  v36 = v46[0];
  v48[0] = v46[0];
  *v33 = v44;
  v33[1] = v35;
  v33[2] = v36;
  *(v33 + 45) = v34;
  sub_10001F808(v47, v49, &qword_1000B44F8, qword_10007A5E8);
  sub_10001F870(v30, &qword_1000B4450, &qword_10007A4B0);
  v49[0] = v44;
  v49[1] = v45;
  v50[0] = v46[0];
  *(v50 + 13) = *(v46 + 13);
  sub_10001F870(v49, &qword_1000B44F8, qword_10007A5E8);
  return sub_10001F870(v31, &qword_1000B4450, &qword_10007A4B0);
}

uint64_t sub_100054418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for ChecklistItemBody(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v48 - v8);
  v10 = sub_10001B4A4(&qword_1000B4488, &qword_10007A518);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v48 - v14;
  v15 = type metadata accessor for ChecklistItemView(0);
  v16 = *(a1 + v15[5] + 8);
  v50 = *(a1 + v15[7]);
  v17 = [v16 titleFor:?];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *&v60 = v18;
  *(&v60 + 1) = v20;
  sub_1000235B4();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v18) = v24;
  static Font.headline.getter();
  v25 = Text.font(_:)();
  v51 = v26;
  v52 = v25;
  v53 = v27;
  v54 = v28;

  sub_100023608(v21, v23, v18 & 1);

  v29 = v49;
  sub_1000548CC(a1);
  v30 = a1 + v15[6];
  v31 = *(v30 + 16);
  v60 = *v30;
  v61 = v31;
  v32 = v16;
  v33 = v50;
  sub_10001B4A4(&qword_1000B4480, &qword_10007A510);
  State.wrappedValue.getter();
  v34 = v58;
  v35 = v59;
  *v9 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v36 = (v9 + v4[9]);
  v37 = (v9 + v4[7]);
  type metadata accessor for ChecklistViewModel();
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
  *v37 = ObservedObject.init(wrappedValue:)();
  v37[1] = v38;
  v39 = v4[8];
  v48 = v9;
  *(v9 + v39) = v33;
  *v36 = v34;
  v36[1] = v35;
  v40 = v29;
  v41 = v55;
  sub_10001F808(v29, v55, &qword_1000B4488, &qword_10007A518);
  v42 = v57;
  sub_100056918(v9, v57, type metadata accessor for ChecklistItemBody);
  v43 = v56;
  v44 = v51;
  v45 = v52;
  *v56 = v52;
  v43[1] = v44;
  LOBYTE(v33) = v53 & 1;
  *(v43 + 16) = v53 & 1;
  v43[3] = v54;
  *(v43 + 16) = 256;
  v46 = sub_10001B4A4(&qword_1000B4548, &qword_10007A680);
  sub_10001F808(v41, v43 + *(v46 + 48), &qword_1000B4488, &qword_10007A518);
  sub_100056918(v42, v43 + *(v46 + 64), type metadata accessor for ChecklistItemBody);
  sub_100056AA4(v45, v44, v33);

  sub_100056980(v48);
  sub_10001F870(v40, &qword_1000B4488, &qword_10007A518);
  sub_100056980(v42);
  sub_10001F870(v41, &qword_1000B4488, &qword_10007A518);
  sub_100023608(v45, v44, v33);
}

uint64_t sub_10005484C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ChecklistItemView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_10001B4A4(&qword_1000B4480, &qword_10007A510);
  return State.wrappedValue.setter();
}

uint64_t sub_1000548CC(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B44A8, &qword_10007A538);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_10001B4A4(&qword_1000B44B0, &qword_10007A540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ChecklistItemView(0);
  if ([*(a1 + *(v10 + 20) + 8) isCompletedFor:*(a1 + *(v10 + 28))])
  {
    *v9 = static VerticalAlignment.firstTextLineCenter.getter();
    *(v9 + 1) = 0x4008000000000000;
    v9[16] = 0;
    v11 = sub_10001B4A4(&qword_1000B44D0, &unk_10007A550);
    sub_100054ACC(a1, &v9[*(v11 + 44)]);
    *&v9[*(v6 + 36)] = 256;
    sub_10001F808(v9, v5, &qword_1000B44B0, &qword_10007A540);
    swift_storeEnumTagMultiPayload();
    sub_1000569DC();
    _ConditionalContent<>.init(storage:)();
    return sub_10001F870(v9, &qword_1000B44B0, &qword_10007A540);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000569DC();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100054ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_10001B4A4(&qword_1000B3860, &qword_100078F28);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v60 - v5;
  v7 = sub_10001B4A4(&qword_1000B44D8, &qword_10007A560);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v60 - v9;
  v11 = sub_10001B4A4(&qword_1000B44E0, &qword_10007A568);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  v15 = sub_10001B4A4(&qword_1000B44E8, &qword_10007A570);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v60 - v20;
  __chkstk_darwin(v19);
  v61 = &v60 - v22;
  v64 = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  v23 = type metadata accessor for ChecklistItemView(0);
  v24 = *(a1 + *(v23 + 20) + 8);
  v25 = *(a1 + *(v23 + 28));
  if ([v24 isSuggestedFor:v25])
  {
    v26 = [objc_opt_self() secondaryLabelColor];
    v27 = Color.init(_:)();
  }

  else
  {
    v27 = static Color.green.getter();
  }

  v28 = v27;
  sub_100023628(v6, v10, &qword_1000B3860, &qword_100078F28);
  *&v10[*(v7 + 36)] = v28;
  v29 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  sub_100023628(v10, v14, &qword_1000B44D8, &qword_10007A560);
  v31 = &v14[*(v11 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = &v21[*(v15 + 36)];
  v33 = *(sub_10001B4A4(&qword_1000B41C8, &qword_100079D98) + 28);
  v34 = enum case for Image.Scale.small(_:);
  v35 = type metadata accessor for Image.Scale();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  sub_100023628(v14, v21, &qword_1000B44E0, &qword_10007A568);
  v36 = v61;
  sub_100023628(v21, v61, &qword_1000B44E8, &qword_10007A570);
  v37 = [v24 subtitleFor:v25];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v64 = v38;
  v65 = v40;
  sub_1000235B4();
  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v40) = v44;
  LODWORD(v64) = static HierarchicalShapeStyle.secondary.getter();
  v45 = Text.foregroundStyle<A>(_:)();
  v47 = v46;
  v49 = v48;
  sub_100023608(v41, v43, v40 & 1);

  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v50 = Text.font(_:)();
  v52 = v51;
  LOBYTE(v32) = v53;
  v55 = v54;

  sub_100023608(v45, v47, v49 & 1);

  v56 = v62;
  sub_10001F808(v36, v62, &qword_1000B44E8, &qword_10007A570);
  v57 = v63;
  sub_10001F808(v56, v63, &qword_1000B44E8, &qword_10007A570);
  v58 = v57 + *(sub_10001B4A4(&qword_1000B44F0, &qword_10007A5E0) + 48);
  *v58 = v50;
  *(v58 + 8) = v52;
  LOBYTE(v32) = v32 & 1;
  *(v58 + 16) = v32;
  *(v58 + 24) = v55;
  sub_100056AA4(v50, v52, v32);

  sub_10001F870(v36, &qword_1000B44E8, &qword_10007A570);
  sub_100023608(v50, v52, v32);

  return sub_10001F870(v56, &qword_1000B44E8, &qword_10007A570);
}

double sub_10005504C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ChecklistItemView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 == 1)
  {
    Image.init(systemName:)();
    static Font.footnote.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    swift_getKeyPath();
    static HierarchicalShapeStyle.tertiary.getter();

    sub_10001B4A4(&qword_1000B4500, &qword_10007A648);
    sub_10001E8B8(&qword_1000B4508, &qword_1000B4500, &qword_10007A648);
    _ConditionalContent<>.init(storage:)();

    v8 = v5;
    v9 = v6;
    *v10 = *v7;
    *&v10[13] = *&v7[13];
  }

  else
  {
    sub_10001B4A4(&qword_1000B4500, &qword_10007A648);
    sub_10001E8B8(&qword_1000B4508, &qword_1000B4500, &qword_10007A648);
    _ConditionalContent<>.init(storage:)();
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = *v10;
  result = *&v10[13];
  *(a2 + 45) = *&v10[13];
  return result;
}

uint64_t sub_1000552DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B43E8, &qword_10007A458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005534C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v53 = &v46 - v4;
  v48 = type metadata accessor for BackgroundProminence();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v48);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = sub_10001B4A4(&qword_1000B3D88, &qword_100079898);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v49 = sub_10001B4A4(&qword_1000B46F0, &qword_10007A7B0);
  v17 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v19 = &v46 - v18;
  v52 = sub_10001B4A4(&qword_1000B46F8, &unk_10007A7B8);
  v20 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v50 = &v46 - v21;
  v22 = type metadata accessor for ChecklistItemIcon(0);
  v23 = *(v22 + 20);
  v24 = *(v22 + 24);
  v47 = v1;
  v25 = *(v1 + v24);
  v51 = *(v1 + v23 + 8);
  v26 = [v51 symbolIdentifierFor:v25];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = Image.init(_internalSystemName:)();
  View.accessibilityHidden(_:)();

  v27 = &v16[*(v13 + 44)];
  v28 = *(sub_10001B4A4(&qword_1000B3D90, &qword_1000798A0) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v27 + v28, 0, 1, v29);
  *v27 = swift_getKeyPath();
  sub_1000561F8(&qword_1000B4460, &qword_10007A4F0, &type metadata accessor for BackgroundProminence, v11);
  static BackgroundProminence.increased.getter();
  LOBYTE(v27) = static BackgroundProminence.== infix(_:_:)();
  v30 = *(v5 + 8);
  v31 = v9;
  v32 = v48;
  v30(v31, v48);
  v30(v11, v32);
  if (v27)
  {
    LODWORD(v55) = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v55 = sub_1000294A0(v25);
  }

  v33 = AnyShapeStyle.init<A>(_:)();
  sub_100023628(v16, v19, &qword_1000B3D88, &qword_100079898);
  *&v19[*(v49 + 36)] = v33;
  static Font.Weight.semibold.getter();
  v34 = type metadata accessor for Font.Design();
  v35 = v53;
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v36 = static Font.system(size:weight:design:)();
  sub_10001F870(v35, &qword_1000B3030, &qword_100077D50);
  KeyPath = swift_getKeyPath();
  v38 = v19;
  v39 = v50;
  sub_100023628(v38, v50, &qword_1000B46F0, &qword_10007A7B0);
  v40 = (v39 + *(v52 + 36));
  *v40 = KeyPath;
  v40[1] = v36;
  v41 = sub_10001B4A4(&qword_1000B4700, &qword_10007A7F8);
  v42 = v54;
  v43 = (v54 + *(v41 + 36));
  v44 = sub_10001B4A4(&qword_1000B41C8, &qword_100079D98);
  sub_100028528(v25, v43 + *(v44 + 28));
  *v43 = swift_getKeyPath();
  return sub_100023628(v39, v42, &qword_1000B46F8, &unk_10007A7B8);
}

uint64_t sub_100055894(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundProminence();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.backgroundProminence.setter();
}

uint64_t sub_100055960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_10001B4A4(&qword_1000B46D0, &qword_10007A788);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v65 - v5;
  v7 = sub_10001B4A4(&qword_1000B46D8, &unk_10007A790);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v78 = &v65 - v9;
  v10 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v77 = &v65 - v12;
  v13 = type metadata accessor for ConstellationContentView();
  v80 = *(v13 - 8);
  v14 = *(v80 + 64);
  __chkstk_darwin(v13);
  v79 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ConstellationContentParagraphStyle();
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = *(v71 + 64);
  __chkstk_darwin(v16);
  v73 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001B4A4(&qword_1000B46E0, &unk_10007A7A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v65 - v21;
  v23 = type metadata accessor for ConstellationContentAttributes();
  v75 = *(v23 - 8);
  v76 = v23;
  v24 = *(v75 + 64);
  __chkstk_darwin(v23);
  v81 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BackgroundProminence();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v65 - v32;
  v34 = type metadata accessor for ChecklistItemBody(0);
  v35 = *(v34 + 20);
  v36 = *(v34 + 24);
  v74 = v34;
  v37 = *(a1 + v36);
  v70 = *(a1 + v35 + 8);
  if ([v70 isSuggestedFor:v37])
  {
    v68 = v3;
    v69 = v6;
    v67 = a1;
    sub_1000561F8(&qword_1000B4460, &qword_10007A4F0, &type metadata accessor for BackgroundProminence, v33);
    static BackgroundProminence.increased.getter();
    v38 = static BackgroundProminence.== infix(_:_:)();
    v39 = *(v27 + 8);
    v39(v31, v26);
    v39(v33, v26);
    v66 = v13;
    if (v38)
    {
      v40 = static Color.white.getter();
    }

    else
    {
      v42 = [objc_opt_self() secondaryLabelColor];
      v40 = Color.init(_:)();
    }

    v43 = v40;
    v44 = v77;
    v45 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v46 = type metadata accessor for Locale.Language();
    v83 = 0u;
    v84 = 0u;
    v85 = 0;
    (*(*(v46 - 8) + 56))(v22, 1, 1, v46);

    defaultParagraphSpacing.getter();
    (*(v71 + 104))(v73, enum case for ConstellationContentParagraphStyle.newline(_:), v72);
    ConstellationContentAttributes.init(font:foregroundColor:accentColor:titleGradientStyle:textAlignment:paragraphSpacing:paragraphStyle:numberOfLines:lineBreakMode:symbolScale:useForegroundColorForSymbol:displayLinkStyle:typeSettingLanguage:supportsLinks:)();
    v47 = v70;
    v48 = [v70 bodyContentFor:v37];
    sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
    v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = [v37 language];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = [v47 assetsBaseURLFor:v37];
    v77 = v43;
    if (v50)
    {
      v51 = v50;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = type metadata accessor for URL();
    (*(*(v53 - 8) + 56))(v44, v52, 1, v53);
    v54 = [v37 assetFileInfoManager];
    v55 = v75;
    v56 = v76;
    v57 = v78;
    v58 = v81;
    (*(v75 + 16))(v78, v81, v76);
    (*(v55 + 56))(v57, 0, 1, v56);
    v59 = (v67 + *(v74 + 28));
    v60 = *v59;
    v61 = v59[1];
    v62 = v79;
    ConstellationContentView.init(rawContent:language:assetsBaseURL:assetFileInfoManager:attributes:size:maxWidth:textIsSelectable:delegate:)();
    v63 = v80;
    v64 = v66;
    (*(v80 + 16))(v69, v62, v66);
    swift_storeEnumTagMultiPayload();
    sub_100057890(&qword_1000B46E8, &type metadata accessor for ConstellationContentView);
    _ConditionalContent<>.init(storage:)();

    (*(v63 + 8))(v62, v64);
    return (*(v55 + 8))(v58, v56);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100057890(&qword_1000B46E8, &type metadata accessor for ConstellationContentView);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000561F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001B4A4(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_10001F808(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

BOOL sub_1000563F8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_10005685C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000568E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100056980(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemBody(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000569DC()
{
  result = qword_1000B44B8;
  if (!qword_1000B44B8)
  {
    sub_10001E860(&qword_1000B44B0, &qword_10007A540);
    sub_10001E8B8(&qword_1000B44C0, &qword_1000B44C8, &qword_10007A548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B44B8);
  }

  return result;
}

uint64_t sub_100056AA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100056ABC()
{
  v1 = type metadata accessor for ChecklistItemView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ContentSizeCategory();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[6] + 16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100056CBC()
{
  sub_100056DA0(319, &unk_1000B45C8, &type metadata accessor for BackgroundProminence, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003D47C();
    if (v1 <= 0x3F)
    {
      sub_100024368();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100056DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100056E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_10001B4A4(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100056EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_10001B4A4(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100056FB0()
{
  sub_100056DA0(319, &unk_1000B45C8, &type metadata accessor for BackgroundProminence, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003D47C();
    if (v1 <= 0x3F)
    {
      sub_100024368();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100057080()
{
  result = qword_1000B4698;
  if (!qword_1000B4698)
  {
    sub_10001E860(&qword_1000B43F8, &qword_10007A468);
    sub_10005710C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4698);
  }

  return result;
}

unint64_t sub_10005710C()
{
  result = qword_1000B46A0;
  if (!qword_1000B46A0)
  {
    sub_10001E860(&qword_1000B43E8, &qword_10007A458);
    sub_100057198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46A0);
  }

  return result;
}

unint64_t sub_100057198()
{
  result = qword_1000B46A8;
  if (!qword_1000B46A8)
  {
    sub_10001E860(&qword_1000B43F0, &qword_10007A460);
    sub_1000573B8(&qword_1000B46B0, &qword_1000B46B8, &qword_10007A6D8, sub_100057250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46A8);
  }

  return result;
}

unint64_t sub_100057250()
{
  result = qword_1000B46C0;
  if (!qword_1000B46C0)
  {
    sub_10001E860(&qword_1000B46C8, qword_10007A6E0);
    sub_10001E8B8(&qword_1000B4420, &qword_1000B4410, &qword_10007A480);
    sub_10001E8B8(&qword_1000B4428, &qword_1000B4400, &qword_10007A470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46C0);
  }

  return result;
}

uint64_t sub_1000573B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100057434()
{
  result = qword_1000B4718;
  if (!qword_1000B4718)
  {
    sub_10001E860(&qword_1000B4720, &qword_10007A808);
    sub_100057890(&qword_1000B46E8, &type metadata accessor for ConstellationContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4718);
  }

  return result;
}

unint64_t sub_1000574F4()
{
  result = qword_1000B4728;
  if (!qword_1000B4728)
  {
    sub_10001E860(&qword_1000B4700, &qword_10007A7F8);
    sub_1000575AC();
    sub_10001E8B8(&qword_1000B4768, &qword_1000B41C8, &qword_100079D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4728);
  }

  return result;
}

unint64_t sub_1000575AC()
{
  result = qword_1000B4730;
  if (!qword_1000B4730)
  {
    sub_10001E860(&qword_1000B46F8, &unk_10007A7B8);
    sub_100057664();
    sub_10001E8B8(&qword_1000B3830, &qword_1000B3838, &unk_100078F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4730);
  }

  return result;
}

unint64_t sub_100057664()
{
  result = qword_1000B4738;
  if (!qword_1000B4738)
  {
    sub_10001E860(&qword_1000B46F0, &qword_10007A7B0);
    sub_10005771C();
    sub_10001E8B8(&qword_1000B4758, &qword_1000B4760, &unk_10007A810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4738);
  }

  return result;
}

unint64_t sub_10005771C()
{
  result = qword_1000B4740;
  if (!qword_1000B4740)
  {
    sub_10001E860(&qword_1000B3D88, &qword_100079898);
    sub_1000577D4();
    sub_10001E8B8(&qword_1000B4750, &qword_1000B3D90, &qword_1000798A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4740);
  }

  return result;
}

unint64_t sub_1000577D4()
{
  result = qword_1000B4748;
  if (!qword_1000B4748)
  {
    sub_10001E860(&qword_1000B3860, &qword_100078F28);
    sub_100057890(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4748);
  }

  return result;
}

uint64_t sub_100057890(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000578F4()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v17 - v5;
  if (*(v0 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) == 1)
  {
    result = (*((swift_isaMask & *v0) + 0xB0))(result);
    if (result)
    {
      v7 = TPSAnalyticsViewMethodAppForeground;

      v8 = OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask;
      if (*(v0 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
      {
        v9 = *(v0 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask);

        Task.cancel()();
      }

      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = v0;
      v12 = v7;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v11;
      v14[5] = v12;
      v15 = sub_100058840(0, 0, v6, &unk_10007A870, v14);
      v16 = *(v1 + v8);
      *(v1 + v8) = v15;
    }
  }

  return result;
}

void *sub_100057AD4(void *a1)
{
  v2 = v1;
  v4 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v18 - v7;
  if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) == 1)
  {
    result = (*((swift_isaMask & *v1) + 0xB0))(result);
    if (result)
    {

      v9 = OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask;
      if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
      {
        v10 = *(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask);

        Task.cancel()();
      }

      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = v1;
      v13 = a1;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v12;
      v15[5] = v13;
      v16 = sub_100058840(0, 0, v8, &unk_10007A848, v15);
      v17 = *(v2 + v9);
      *(v2 + v9) = v16;
    }
  }

  return result;
}

void sub_100057CAC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask);

    Task.cancel()();
  }

  if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) == 1)
  {
    v4 = (*((swift_isaMask & *v1) + 0xB0))();
    if (v4)
    {
      v5 = v4;
      v6 = TPSAnalyticsContentStyleLandingPage;
      v7 = [v5 identifier];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v8 = [a1 viewMethod];
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v9 = objc_opt_self();
      v10 = [v1 traitCollection];
      v11 = [v9 analyticsViewModeForTraitCollection:v10];

      v12 = [v9 eventWithContentID:v6 collectionID:v7 correlationID:0 clientConditionID:0 viewMethod:v8 viewMode:v11];
      [v12 log];
    }
  }
}

id sub_100057F48()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  [v1 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TipsTOCViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100058100(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod] = 0;
  v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount] = 1;
  *&v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TipsTOCViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1000581B8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TipsTOCViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount] = 1;
  v3 = OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod;
  v4 = *&v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod];
  if (v4)
  {
    v5 = v4;
    sub_100057AD4(v5);

    v6 = *&v1[v3];
    *&v1[v3] = 0;
  }

  else
  {
    sub_100057AD4(TPSAnalyticsViewMethodViewAppear);
  }
}

uint64_t sub_100058430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_100058524, v10, v9);
}

uint64_t sub_100058524()
{
  v1 = *(v0 + 48);
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_100058608;
  v6 = *(v0 + 48);

  return sub_10005917C(v2, v4, 0, 0, 1);
}

uint64_t sub_100058608()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_100059790;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_10005879C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10005879C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  v4 = v0[3];

  v5 = [objc_opt_self() proxyWithViewMethod:v4];
  sub_100057CAC(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100058840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100058C18(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100058C88(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100058C88(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100058C88(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100058B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005978C;

  return sub_100058430(a1, v4, v5, v7, v6);
}

uint64_t sub_100058C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058C88(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058CF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100058DE8;

  return v7(a1);
}

uint64_t sub_100058DE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100058EE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058F18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005978C;

  return sub_100058CF0(a1, v5);
}

uint64_t sub_100058FD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100059088;

  return sub_100058CF0(a1, v5);
}

uint64_t sub_100059088()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10005917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10005927C, 0, 0);
}

uint64_t sub_10005927C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100059634(&qword_1000B47B8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100059634(&qword_1000B47C0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10005940C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10005940C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000595C8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000595C8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100059634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005967C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000596C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100059088;

  return sub_100058430(a1, v4, v5, v7, v6);
}

unint64_t sub_100059798()
{
  result = qword_1000B47C8;
  if (!qword_1000B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47C8);
  }

  return result;
}

unint64_t sub_1000597F0()
{
  result = qword_1000B47D0;
  if (!qword_1000B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47D0);
  }

  return result;
}

uint64_t sub_1000598A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = IntentParameter.projectedValue.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000598CC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  sub_10005B184(v9, qword_1000B6F00);
  sub_1000421A4(v9, qword_1000B6F00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100059AE4(uint64_t a1, uint64_t a2)
{
  v2[31] = a1;
  v2[32] = a2;
  v3 = *(*(sub_10001B4A4(&unk_1000B3380, &qword_100079940) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for IntentSystemContext.Source();
  v2[34] = v4;
  v5 = *(v4 - 8);
  v2[35] = v5;
  v6 = *(v5 + 64) + 15;
  v2[36] = swift_task_alloc();
  v7 = sub_10001B4A4(&qword_1000B4808, &qword_10007A9E0);
  v2[37] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v9 = *(*(sub_10001B4A4(&qword_1000B4810, &qword_10007A9E8) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v10 = type metadata accessor for IntentSystemContext();
  v2[42] = v10;
  v11 = *(v10 - 8);
  v2[43] = v11;
  v12 = *(v11 + 64) + 15;
  v2[44] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v2[45] = v13;
  v14 = *(v13 - 8);
  v2[46] = v14;
  v15 = *(v14 + 64) + 15;
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_100059D20, 0, 0);
}

uint64_t sub_100059D20()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v51 = *(v0 + 328);
  v52 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v55 = *(v0 + 296);
  v57 = *(v0 + 376);
  v5 = *(v0 + 280);
  v53 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = objc_opt_self();
  IntentParameter.wrappedValue.getter();
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 168);

  v11 = String._bridgeToObjectiveC()();

  v12 = [v7 URLWithTipIdentifier:0 collectionIdentifier:v11 referrer:TPSAnalyticsLaunchTypeAppShortcuts];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100046694(_swiftEmptyArrayStorage);
  *(v0 + 240) = v6;
  sub_10004E77C();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v1 + 8))(v2, v52);
  (*(v5 + 104))(v3, enum case for IntentSystemContext.Source.spotlight(_:), v53);
  (*(v5 + 56))(v3, 0, 1, v53);
  v13 = *(v55 + 48);
  sub_10005B078(v51, v4);
  sub_10005B078(v3, v4 + v13);
  v14 = *(v5 + 48);
  v15 = v4;
  if (v14(v4, 1, v53) != 1)
  {
    v18 = *(v0 + 272);
    sub_10005B078(*(v0 + 304), *(v0 + 312));
    v19 = v14(v4 + v13, 1, v18);
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = *(v0 + 312);
    if (v19 != 1)
    {
      v56 = *(v0 + 304);
      v25 = *(v0 + 280);
      v26 = *(v0 + 288);
      v27 = *(v0 + 272);
      (*(v25 + 32))(v26, v15 + v13, v27);
      sub_10005B100();
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v25 + 8);
      v28(v26, v27);
      sub_10001F870(v21, &qword_1000B4810, &qword_10007A9E8);
      sub_10001F870(v20, &qword_1000B4810, &qword_10007A9E8);
      v28(v22, v27);
      sub_10001F870(v56, &qword_1000B4810, &qword_10007A9E8);
      if ((v54 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v24 = *(v0 + 272);
    v23 = *(v0 + 280);
    sub_10001F870(*(v0 + 320), &qword_1000B4810, &qword_10007A9E8);
    sub_10001F870(v20, &qword_1000B4810, &qword_10007A9E8);
    (*(v23 + 8))(v22, v24);
LABEL_6:
    sub_10001F870(*(v0 + 304), &qword_1000B4808, &qword_10007A9E0);
    goto LABEL_9;
  }

  v16 = *(v0 + 328);
  v17 = *(v0 + 272);
  sub_10001F870(*(v0 + 320), &qword_1000B4810, &qword_10007A9E8);
  sub_10001F870(v16, &qword_1000B4810, &qword_10007A9E8);
  if (v14(v15 + v13, 1, v17) != 1)
  {
    goto LABEL_6;
  }

  sub_10001F870(*(v0 + 304), &qword_1000B4810, &qword_10007A9E8);
LABEL_8:
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v32;
  *(v0 + 184) = v33;
  sub_10003CD0C((v0 + 176), (v0 + 208));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100045EDC((v0 + 208), v29, v31, isUniquelyReferenced_nonNull_native);

LABEL_9:
  v35 = [objc_opt_self() clientBundleIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = *(v0 + 368);
    v38 = *(v0 + 360);
    v39 = *(v0 + 264);
    (*(v37 + 16))(v39, *(v0 + 376), v38);
    (*(v37 + 56))(v39, 0, 1, v38);
    v40 = AFIsPersistentSiriAvailable();
    v41.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if ((*(v37 + 48))(v39, 1, v38) == 1)
    {
      v43 = 0;
    }

    else
    {
      v44 = *(v0 + 360);
      v45 = *(v0 + 368);
      v46 = *(v0 + 264);
      URL._bridgeToObjectiveC()(v42);
      v43 = v47;
      (*(v45 + 8))(v46, v44);
    }

    v48 = [objc_allocWithZone(INCAppLaunchRequest) initWithBundleIdentifier:v36 options:v41.super.isa URL:v43 userActivity:0 retainsSiri:v40];
    *(v0 + 384) = v48;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_10005A380;
    v49 = swift_continuation_init();
    *(v0 + 136) = sub_10001B4A4(&qword_1000B4818, &qword_10007A9F0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10005A690;
    *(v0 + 104) = &unk_1000A41D8;
    *(v0 + 112) = v49;
    [v48 performWithCompletionHandler:v0 + 80];
    v35 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v35);
}

uint64_t sub_10005A380()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_10005A590;
  }

  else
  {
    v3 = sub_10005A490;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005A490()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  v13 = v0[36];
  v14 = v0[33];
  v10 = v0[31];
  static IntentResult.result<>()();

  (*(v4 + 8))(v1, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10005A590()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  v13 = v0[38];
  v14 = v0[36];
  v15 = v0[33];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];
  v11 = v0[49];

  return v10();
}

uint64_t sub_10005A690(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10001F8D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10001B4A4(&qword_1000B4828, &qword_10007A9F8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10005A75C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B2B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000421A4(v2, qword_1000B6F00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10005A814()
{
  v0 = sub_10001B4A4(&qword_1000B4830, &qword_10007AA00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10001B4A4(&qword_1000B4838, &qword_10007AA08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010008CC40;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4210, &qword_100079E88);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10005A9B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100059088;

  return sub_100059AE4(a1, v4);
}

uint64_t sub_10005AA50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005AB4C();
  *a1 = result;
  return result;
}

uint64_t sub_10005AA78(uint64_t a1)
{
  v2 = sub_10004E77C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10005AB4C()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  __chkstk_darwin(v0);
  v33 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001B4A4(&qword_1000B47F8, &qword_10007A9B8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = v30 - v7;
  v8 = sub_10001B4A4(&unk_1000B4D80, &qword_10007A9C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v37 = v30 - v10;
  v36 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  v30[0] = v30 - v23;
  v30[1] = sub_10001B4A4(&qword_1000B4800, &qword_10007A9C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v11 + 104);
  v25(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v36);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v20 + 56))(v37, 1, 1, v19);
  v38 = 0u;
  v39 = 0u;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v14, v24, v36);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v26 = v31;
  IntentDialog.init(_:)();
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 0, 1, v27);
  v28(v32, 1, 1, v27);
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_100022F14();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_10005B078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B4810, &qword_10007A9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B100()
{
  result = qword_1000B4820;
  if (!qword_1000B4820)
  {
    type metadata accessor for IntentSystemContext.Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4820);
  }

  return result;
}

uint64_t sub_10005B158@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = IntentParameter.projectedValue.getter();
  *a2 = result;
  return result;
}

uint64_t *sub_10005B184(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10005B214(uint64_t a1, void *a2)
{
  v4 = sub_10001B4A4(&qword_1000B4878, &unk_10007AB50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v17[-v6];
  type metadata accessor for CollectionListViewModel();
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v8 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v18 = a1;
  v19 = a2;
  sub_10001B4A4(&qword_1000B48A8, &qword_10007ABA8);
  v9 = sub_10001E860(&qword_1000B48B0, &qword_10007ABB0);
  v10 = sub_1000603BC();
  v20 = v9;
  v21 = v10;
  swift_getOpaqueTypeConformance2();
  List.init(selection:content:)();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = &v7[*(v4 + 36)];
  *v12 = sub_100060524;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a2;
  static Published.subscript.getter();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  v15 = v13;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  sub_1000600FC();
  sub_1000601B4();
  View.onChange<A>(of:initial:_:)();

  return sub_10001F870(v7, &qword_1000B4878, &unk_10007AB50);
}

uint64_t sub_10005B514(char *a1, char *a2)
{
  v4 = sub_10001B4A4(&qword_1000B48B0, &qword_10007ABB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  sub_10005B6C0(a1, a2, &v12[-v6]);
  v8 = &v7[*(v4 + 36)];
  v9 = *(sub_10001B4A4(&qword_1000B3708, &qword_100078CC8) + 28);
  v10 = type metadata accessor for Text.Case();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *v8 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static VerticalEdge.Set.all.getter();
  sub_1000603BC();
  View.listRowSeparator(_:edges:)();
  return sub_10001F870(v7, &qword_1000B48B0, &qword_10007ABB0);
}

uint64_t sub_10005B6C0@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v5 = sub_10001B4A4(&qword_1000B48E8, &qword_10007ACE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v77 - v8;
  v87 = sub_10001B4A4(&qword_1000B48F0, &qword_10007ACE8);
  v85 = *(v87 - 1);
  v10 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v77 - v11;
  v12 = sub_10001B4A4(&qword_1000B48F8, &qword_10007ACF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v98 = &v77 - v17;
  v18 = sub_10001B4A4(&qword_1000B4900, &qword_10007ACF8);
  v89 = *(v18 - 8);
  v19 = *(v89 + 64);
  v20 = __chkstk_darwin(v18);
  v97 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v100 = &v77 - v22;
  v88 = sub_10001B4A4(&qword_1000B4908, &qword_10007AD00);
  v86 = *(v88 - 8);
  v23 = *(v86 + 64);
  v24 = __chkstk_darwin(v88);
  v96 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v99 = &v77 - v26;
  v27 = sub_10001B4A4(&qword_1000B4910, &qword_10007AD08);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v94 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v77 - v31;
  v33 = sub_10001B4A4(&qword_1000B4918, &qword_10007AD10);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v93 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v77 - v37;
  v39 = sub_10001B4A4(&qword_1000B4920, qword_10007AD18);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v92 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v90 = &v77 - v43;
  sub_10005DC98(a1, a2);
  v91 = v38;
  sub_10005E7D0(a1, a2, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v101 >> 62)
  {
    v67 = _CocoaArrayWrapper.endIndex.getter();

    if (v67)
    {
      goto LABEL_3;
    }

LABEL_8:
    v66 = 1;
    goto LABEL_9;
  }

  v44 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v44)
  {
    goto LABEL_8;
  }

LABEL_3:
  v79 = v18;
  v81 = v32;
  v78 = v16;
  v82 = v5;
  v80 = v9;
  v83 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a2;
  v46 = a2;
  sub_10001B4A4(&qword_1000B3478, &unk_1000783E0);
  sub_10001B4A4(&qword_1000B4928, &unk_10007ADC0);
  sub_10001E8B8(&qword_1000B4930, &qword_1000B3478, &unk_1000783E0);
  sub_100060814();
  ForEach<>.init(_:id:content:)();
  sub_10005C108(a1, v46, v100);
  if ([objc_opt_self() isPhoneUI])
  {
    v47 = v84;
    sub_10005C4F4(a1, v46, v84);
    v48 = v85;
    v49 = v98;
    v50 = v47;
    v51 = v87;
    (*(v85 + 32))(v98, v50, v87);
    v52 = 0;
  }

  else
  {
    v52 = 1;
    v49 = v98;
    v51 = v87;
    v48 = v85;
  }

  (*(v48 + 56))(v49, v52, 1, v51);
  v53 = v86;
  v54 = *(v86 + 16);
  v55 = v96;
  v56 = v88;
  v54(v96, v99, v88);
  v57 = v89;
  v87 = *(v89 + 16);
  v58 = v79;
  (v87)(v97, v100, v79);
  v59 = v49;
  v60 = v78;
  sub_10001F808(v59, v78, &qword_1000B48F8, &qword_10007ACF0);
  v61 = v80;
  v54(v80, v55, v56);
  v62 = sub_10001B4A4(&qword_1000B4958, &qword_10007ADE0);
  v63 = v97;
  (v87)(v61 + *(v62 + 48), v97, v58);
  sub_10001F808(v60, v61 + *(v62 + 64), &qword_1000B48F8, &qword_10007ACF0);
  sub_10001F870(v98, &qword_1000B48F8, &qword_10007ACF0);
  v64 = *(v57 + 8);
  v64(v100, v58);
  v65 = *(v53 + 8);
  v65(v99, v56);
  sub_10001F870(v60, &qword_1000B48F8, &qword_10007ACF0);
  v64(v63, v58);
  v65(v96, v56);
  v32 = v81;
  sub_100060A0C(v61, v81);
  v66 = 0;
  v5 = v82;
  v6 = v83;
LABEL_9:
  (*(v6 + 56))(v32, v66, 1, v5);
  v68 = v90;
  v69 = v92;
  sub_10001F808(v90, v92, &qword_1000B4920, qword_10007AD18);
  v70 = v91;
  v71 = v93;
  sub_10001F808(v91, v93, &qword_1000B4918, &qword_10007AD10);
  v72 = v94;
  sub_10001F808(v32, v94, &qword_1000B4910, &qword_10007AD08);
  v73 = v32;
  v74 = v95;
  sub_10001F808(v69, v95, &qword_1000B4920, qword_10007AD18);
  v75 = sub_10001B4A4(&qword_1000B4960, &qword_10007ADE8);
  sub_10001F808(v71, v74 + *(v75 + 48), &qword_1000B4918, &qword_10007AD10);
  sub_10001F808(v72, v74 + *(v75 + 64), &qword_1000B4910, &qword_10007AD08);
  sub_10001F870(v73, &qword_1000B4910, &qword_10007AD08);
  sub_10001F870(v70, &qword_1000B4918, &qword_10007AD10);
  sub_10001F870(v68, &qword_1000B4920, qword_10007AD18);
  sub_10001F870(v72, &qword_1000B4910, &qword_10007AD08);
  sub_10001F870(v71, &qword_1000B4918, &qword_10007AD10);
  return sub_10001F870(v69, &qword_1000B4920, qword_10007AD18);
}

uint64_t sub_10005C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v3 = type metadata accessor for Prominence();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v31 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  v12 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v14 = &v31 - v13;
  v15 = sub_10001B4A4(&qword_1000B4980, &qword_10007AE30);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v20;
  sub_1000235B4();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v39 = v21;
  v40 = v22;
  v25 = v24 & 1;
  v41 = v24 & 1;
  v42 = v26;
  (*(v4 + 104))(v7, enum case for Prominence.increased(_:), v3);
  View.headerProminence(_:)();
  (*(v4 + 8))(v7, v3);
  sub_100023608(v21, v23, v25);

  KeyPath = swift_getKeyPath();
  v28 = &v14[*(v31 + 36)];
  *v28 = KeyPath;
  *(v28 + 1) = 0;
  v28[16] = 1;
  v37 = v34;
  v38 = v35;
  sub_10001B4A4(&qword_1000B4988, &qword_10007AE38);
  sub_1000419B8();
  sub_100060BA8();
  Section<>.init(header:content:)();
  v29 = v32;
  Section<>.collapsible(_:)();
  return (*(v33 + 8))(v19, v29);
}

uint64_t sub_10005C4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v3 = type metadata accessor for Prominence();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v32 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  v12 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v14 = &v32 - v13;
  v15 = sub_10001B4A4(&qword_1000B4968, &qword_10007ADF0);
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v20;
  sub_1000235B4();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v40 = v21;
  v41 = v22;
  v25 = v24 & 1;
  LOBYTE(v42) = v24 & 1;
  v43 = v26;
  (*(v4 + 104))(v7, enum case for Prominence.increased(_:), v3);
  View.headerProminence(_:)();
  (*(v4 + 8))(v7, v3);
  sub_100023608(v21, v23, v25);

  KeyPath = swift_getKeyPath();
  v28 = &v14[*(v32 + 36)];
  *v28 = KeyPath;
  *(v28 + 1) = 0;
  v28[16] = 1;
  v38 = v35;
  v39 = v36;
  sub_10001B4A4(&qword_1000B4970, &qword_10007AE28);
  sub_1000419B8();
  v29 = sub_100060B4C();
  v40 = &type metadata for GuidedHelpListItemView;
  v41 = &type metadata for String;
  v42 = v29;
  v43 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v30 = v33;
  Section<>.collapsible(_:)();
  return (*(v34 + 8))(v19, v30);
}

uint64_t sub_10005C924(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v27 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v26 = *(v13 + 8);
  v26(v17, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  aBlock[4] = sub_1000605A4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A4370;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006055C(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v25;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);
  return (v26)(v19, v27);
}

uint64_t sub_10005CD04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      a2;
      static Published.subscript.setter();
      return sub_10002E43C();
    }
  }

  return result;
}

uint64_t sub_10005CE18(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v48 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v49 = &v44 - v18;
  v19 = a2[1];
  if (v19)
  {
    v20 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = a4;
    static Published.subscript.getter();

    v21 = aBlock[0];
    v44 = v7;
    v45 = v6;
    v46 = v16;
    if (aBlock[0] >> 62)
    {
LABEL_21:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22)
      {
LABEL_4:
        v23 = 0;
        v56 = (v21 & 0xC000000000000001);
        while (1)
        {
          if (v56)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          if (UserGuide.identifier.getter() == v20 && v19 == v27)
          {
            break;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            goto LABEL_16;
          }

          ++v23;
          if (v26 == v22)
          {
            goto LABEL_22;
          }
        }

LABEL_16:

        v30 = v46;
        v29 = v47;
        v31 = *&v47[OBJC_IVAR___CollectionListViewModel_userGuideHandler];
        if (v31)
        {
          v32 = *&v47[OBJC_IVAR___CollectionListViewModel_userGuideHandler + 8];

          v31(v25);
          sub_10001E970(v31);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v22 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_4;
      }
    }

LABEL_22:

    v30 = v46;
    v29 = v47;
    if (v20 == 0xD000000000000011 && v19 == 0x800000010008CCF0 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v33 = *&v29[OBJC_IVAR___CollectionListViewModel_supportFlowHandler];
      if (v33)
      {
        v34 = *&v29[OBJC_IVAR___CollectionListViewModel_supportFlowHandler + 8];

        v33(0, 0);
        sub_10001E970(v33);
      }

LABEL_27:
      sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
      v35 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v36 = v49;
      + infix(_:_:)();
      v37 = v51;
      v56 = *(v50 + 8);
      v56(v30, v51);
      v38 = swift_allocObject();
      *(v38 + 16) = v48;
      *(v38 + 24) = v29;
      aBlock[4] = sub_10006053C;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002086C;
      aBlock[3] = &unk_1000A4320;
      v39 = _Block_copy(aBlock);
      v40 = v29;

      v41 = v52;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10006055C(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
      sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
      v42 = v54;
      v43 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v39);

      (*(v44 + 8))(v42, v43);
      (*(v53 + 8))(v41, v55);
      return (v56)(v36, v37);
    }
  }

  return result;
}

uint64_t sub_10005D444(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  a2;
  static Published.subscript.setter();
  return sub_10002E43C();
}

double sub_10005D4BC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_10002FFE4())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = a2;
  }

  sub_10001B4A4(&qword_1000B4840, &qword_10007AAC8);
  sub_10001E8B8(&qword_1000B4848, &qword_1000B4840, &qword_10007AAC8);
  _ConditionalContent<>.init(storage:)();
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_10005D5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10005D654(a2, a3, a4);
  v6 = *(sub_10001B4A4(&qword_1000B4850, &qword_10007AAD0) + 36);
  v7 = type metadata accessor for ScrollViewProxy();
  v8 = *(*(v7 - 8) + 16);

  return v8(a4 + v6, a1, v7);
}

uint64_t sub_10005D654@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v53 = a3;
  v4 = type metadata accessor for SidebarListStyle();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10001B4A4(&qword_1000B4858, &qword_10007AAD8);
  v8 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v46 = &v42 - v9;
  v50 = sub_10001B4A4(&qword_1000B4860, &qword_10007AAE0);
  v10 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v51 = &v42 - v11;
  v49 = type metadata accessor for InsetGroupedListStyle();
  v43 = *(v49 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v49);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001B4A4(&qword_1000B4868, &qword_10007AAE8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v48 = sub_10001B4A4(&qword_1000B4870, qword_10007AAF0);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v23 = &v42 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v54;
  sub_10005B214(v47, a2);
  if (v24 == 1)
  {
    InsetGroupedListStyle.init()();
    v25 = sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    v26 = sub_10001E860(&qword_1000B3390, &unk_100077F30);
    v27 = sub_1000600FC();
    v28 = sub_1000601B4();
    v54 = v25;
    v55 = v26;
    v56 = v27;
    v57 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v49;
    View.listStyle<A>(_:)();
    (*(v43 + 8))(v14, v30);
    (*(v16 + 8))(v19, v15);
    v31 = v48;
    (*(v20 + 16))(v51, v23, v48);
    swift_storeEnumTagMultiPayload();
    v54 = v15;
    v55 = v30;
    v56 = OpaqueTypeConformance2;
    v57 = &protocol witness table for InsetGroupedListStyle;
    swift_getOpaqueTypeConformance2();
    sub_100060230();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v23, v31);
  }

  else
  {
    SidebarListStyle.init()();
    v33 = sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    v34 = sub_10001E860(&qword_1000B3390, &unk_100077F30);
    v35 = sub_1000600FC();
    v36 = sub_1000601B4();
    v54 = v33;
    v55 = v34;
    v56 = v35;
    v57 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v45;
    v39 = v46;
    View.listStyle<A>(_:)();
    (*(v44 + 8))(v7, v38);
    (*(v16 + 8))(v19, v15);
    v54 = static Color.clear.getter();
    v40 = AnyView.init<A>(_:)();
    v41 = v51;
    *(v39 + *(v52 + 36)) = v40;
    sub_10001F808(v39, v41, &qword_1000B4858, &qword_10007AAD8);
    swift_storeEnumTagMultiPayload();
    v54 = v15;
    v55 = v49;
    v56 = v37;
    v57 = &protocol witness table for InsetGroupedListStyle;
    swift_getOpaqueTypeConformance2();
    sub_100060230();
    _ConditionalContent<>.init(storage:)();
    return sub_10001F870(v39, &qword_1000B4858, &qword_10007AAD8);
  }
}

uint64_t sub_10005DC98(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001B4A4(&qword_1000B49D8, &qword_10007AFA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_10001B4A4(&qword_1000B49E0, qword_10007AFB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v17;
  if (v17)
  {
    __chkstk_darwin(v12);
    *(&v16 - 4) = v13;
    *(&v16 - 3) = v14;
    *(&v16 - 2) = a2;
    sub_10001B4A4(&qword_1000B49F8, &qword_10007B020);
    sub_100060EDC();
    Section<>.init(content:)();
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_100060E4C();
    _ConditionalContent<>.init(storage:)();

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100060E4C();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10005DF34(void *a1, uint64_t a2, void *a3)
{
  sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000792A0;
  *(v6 + 32) = a1;
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a1;
  v9 = a3;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  sub_10001B4A4(&qword_1000B4A08, &qword_10007B028);
  sub_10001E8B8(&qword_1000B49C8, &qword_1000B3468, &qword_10007AF20);
  sub_1000611A0();
  sub_100060F60();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005E094@<X0>(id *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v68 = a3;
  v66 = type metadata accessor for CollectionListItemView();
  v5 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v7 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_10001B4A4(&qword_1000B49C0, &qword_10007AF28);
  v64 = *(v67 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v67);
  v63 = v61 - v9;
  v10 = sub_10001B4A4(&qword_1000B4A28, &qword_10007B060);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  v14 = sub_10001B4A4(&qword_1000B2BE0, qword_10007B030);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v61 - v16);
  v18 = sub_10001B4A4(&qword_1000B4A30, &unk_10007B068);
  v62 = *(v18 - 8);
  v19 = *(v62 + 8);
  __chkstk_darwin(v18);
  v21 = v61 - v20;
  v65 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = a2;
  static Published.subscript.getter();

  if (v69 == 1)
  {
    v23 = v65;
    sub_100020A98(v22, v23, v17);
    v24 = v17 + *(v14 + 36);
    v24[32] = 0;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    v25 = [v23 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_100061208(v17, v21);
    v29 = &v21[*(sub_10001B4A4(&qword_1000B2BE8, &unk_100077850) + 36)];
    *v29 = v26;
    *(v29 + 1) = v28;
    v29[16] = 1;
    v30 = v62;
    (*(v62 + 2))(v13, v21, v18);
    swift_storeEnumTagMultiPayload();
    v31 = sub_1000610A4();
    v69 = v14;
    v70 = &type metadata for String;
    v71 = v31;
    v72 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v32 = sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView);
    v69 = v66;
    v70 = &type metadata for String;
    v71 = v32;
    v72 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 1))(v21, v18);
  }

  else
  {
    v61[0] = v14;
    v61[1] = v10;
    v61[2] = v18;
    v62 = v13;
    *v7 = swift_getKeyPath();
    sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
    swift_storeEnumTagMultiPayload();
    v34 = v66;
    v35 = *(v66 + 20);
    *(v7 + v35) = swift_getKeyPath();
    sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
    swift_storeEnumTagMultiPayload();
    v36 = (v7 + v34[6]);
    type metadata accessor for CollectionListViewModel();
    sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
    v37 = v22;
    v38 = v65;
    *v36 = ObservedObject.init(wrappedValue:)();
    v36[1] = v39;
    *(v7 + v34[8]) = v38;
    v40 = v38;
    v41 = [v40 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = [v40 title];
    if (v45)
    {
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;
    }

    else
    {

      v46 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = (v7 + v34[7]);
    *v49 = v42;
    v49[1] = v44;
    v49[2] = v46;
    v49[3] = v48;
    v50 = [v40 identifier];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = v7;
    v55 = v63;
    sub_100060D7C(v54, v63, type metadata accessor for CollectionListItemView);
    v56 = v55 + *(sub_10001B4A4(&qword_1000B2BF0, &qword_10007AF30) + 36);
    *v56 = v51;
    *(v56 + 8) = v53;
    *(v56 + 16) = 1;
    v57 = v64;
    v58 = v67;
    (*(v64 + 16))(v62, v55, v67);
    swift_storeEnumTagMultiPayload();
    v59 = sub_1000610A4();
    v69 = v61[0];
    v70 = &type metadata for String;
    v71 = v59;
    v72 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v60 = sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView);
    v69 = v34;
    v70 = &type metadata for String;
    v71 = v60;
    v72 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v57 + 8))(v55, v58);
  }
}

uint64_t sub_10005E7D0@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v62 = a3;
  v64 = sub_10001B4A4(&qword_1000B49D0, qword_10007AF38);
  v4 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v6 = &v53 - v5;
  v7 = type metadata accessor for Prominence();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  v12 = *(*(v61 - 1) + 64);
  __chkstk_darwin(v61);
  v14 = &v53 - v13;
  v15 = sub_10001B4A4(&qword_1000B49B0, &qword_10007AEE8);
  v16 = *(v15 - 8);
  v55 = v15;
  v56 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v54 = &v53 - v18;
  v63 = sub_10001B4A4(&qword_1000B49B8, &qword_10007AEF0);
  v58 = *(v63 - 8);
  v19 = *(v58 + 64);
  __chkstk_darwin(v63);
  v57 = &v53 - v20;
  v21 = type metadata accessor for Locale();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = a2;
  static Published.subscript.getter();

  v25 = v65;
  if (v65)
  {
    v53 = v6;
    v26 = [v65 tipIdentifiers];
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);

    if (v28)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v65 = String.init(localized:table:bundle:locale:comment:)();
      v66 = v29;
      sub_1000235B4();
      v30 = Text.init<A>(_:)();
      v32 = v31;
      v65 = v30;
      v66 = v31;
      v34 = v33 & 1;
      LOBYTE(v67) = v33 & 1;
      v68 = v35;
      (*(v8 + 104))(v11, enum case for Prominence.increased(_:), v7);
      View.headerProminence(_:)();
      (*(v8 + 8))(v11, v7);
      sub_100023608(v30, v32, v34);

      KeyPath = swift_getKeyPath();
      v37 = v55;
      v38 = v61;
      v39 = &v14[v61[9]];
      *v39 = KeyPath;
      *(v39 + 1) = 0;
      v39[16] = 1;
      __chkstk_darwin(KeyPath);
      v41 = v59;
      v40 = v60;
      *(&v53 - 4) = v25;
      *(&v53 - 3) = v41;
      *(&v53 - 2) = v40;
      v42 = sub_10001B4A4(&qword_1000B4940, &unk_10007ADD0);
      v43 = sub_1000419B8();
      v44 = sub_100060914();
      v45 = v54;
      Section<>.init(header:content:)();
      v46 = v57;
      Section<>.collapsible(_:)();
      (*(v56 + 8))(v45, v37);
      v47 = v58;
      v48 = v63;
      (*(v58 + 16))(v53, v46, v63);
      swift_storeEnumTagMultiPayload();
      v65 = v38;
      v66 = v42;
      v67 = &type metadata for EmptyView;
      v68 = v43;
      v69 = v44;
      v70 = &protocol witness table for EmptyView;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();

      return (*(v47 + 8))(v46, v48);
    }
  }

  swift_storeEnumTagMultiPayload();
  v50 = sub_10001E860(&qword_1000B4940, &unk_10007ADD0);
  v51 = sub_1000419B8();
  v52 = sub_100060914();
  v65 = v61;
  v66 = v50;
  v67 = &type metadata for EmptyView;
  v68 = v51;
  v69 = v52;
  v70 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10005EEA4(void *a1, uint64_t a2, void *a3)
{
  sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000792A0;
  *(v6 + 32) = a1;
  swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v8 = a1;
  v9 = a3;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  sub_10001B4A4(&qword_1000B49C0, &qword_10007AF28);
  sub_10001E8B8(&qword_1000B49C8, &qword_1000B3468, &qword_10007AF20);
  type metadata accessor for CollectionListItemView();
  sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005F078@<X0>(void **a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a3;
  v7 = type metadata accessor for CollectionListItemView();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  *v10 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  v12 = v7[5];
  *(v10 + v12) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v13 = (v10 + v7[6]);
  type metadata accessor for CollectionListViewModel();
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v14 = a2;
  v15 = v11;
  *v13 = ObservedObject.init(wrappedValue:)();
  v13[1] = v16;
  *(v10 + v7[8]) = v15;
  v17 = v15;
  v18 = [v17 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [v17 title];
  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = (v10 + v7[7]);
  *v26 = v19;
  v26[1] = v21;
  v26[2] = v23;
  v26[3] = v25;
  v27 = [v34 identifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_100060D7C(v10, a4, type metadata accessor for CollectionListItemView);
  result = sub_10001B4A4(&qword_1000B2BF0, &qword_10007AF30);
  v32 = a4 + *(result + 36);
  *v32 = v28;
  *(v32 + 8) = v30;
  *(v32 + 16) = 1;
  return result;
}

uint64_t sub_10005F300@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = type metadata accessor for Prominence();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v54);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = sub_10001B4A4(&qword_1000B49B0, &qword_10007AEE8);
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  __chkstk_darwin(v16);
  v53 = &v46 - v18;
  v19 = sub_10001B4A4(&qword_1000B49B8, &qword_10007AEF0);
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  __chkstk_darwin(v19);
  v55 = &v46 - v21;
  v22 = *a1;
  if ([v22 isYourTips])
  {
    v23 = *(v57 + 56);

    return v23(a4, 1, 1, v19);
  }

  else
  {
    v47 = v19;
    v25 = [v22 title];
    v51 = a3;
    v52 = a4;
    v49 = v16;
    v50 = a2;
    v48 = v12;
    if (v25 || (v25 = [v22 text]) != 0)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v58 = v27;
    v59 = v29;
    sub_1000235B4();
    v30 = Text.init<A>(_:)();
    v32 = v31;
    v58 = v30;
    v59 = v31;
    v34 = v33 & 1;
    v60 = v33 & 1;
    v61 = v35;
    v36 = v54;
    (*(v8 + 104))(v11, enum case for Prominence.increased(_:), v54);
    View.headerProminence(_:)();
    (*(v8 + 8))(v11, v36);
    sub_100023608(v30, v32, v34);

    KeyPath = swift_getKeyPath();
    v38 = &v15[*(v48 + 36)];
    *v38 = KeyPath;
    *(v38 + 1) = 0;
    v38[16] = 1;
    __chkstk_darwin(KeyPath);
    v40 = v50;
    v39 = v51;
    *(&v46 - 4) = v22;
    *(&v46 - 3) = v40;
    *(&v46 - 2) = v39;
    sub_10001B4A4(&qword_1000B4940, &unk_10007ADD0);
    sub_1000419B8();
    sub_100060914();
    v41 = v53;
    Section<>.init(header:content:)();
    v42 = v55;
    v43 = v49;
    Section<>.collapsible(_:)();
    (*(v56 + 8))(v41, v43);
    v44 = v52;
    v45 = v47;
    (*(v57 + 32))(v52, v42, v47);
    return (*(v57 + 56))(v44, 0, 1, v45);
  }
}

uint64_t sub_10005F7FC(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 collections];
  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a3;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  sub_10001B4A4(&qword_1000B49C0, &qword_10007AF28);
  sub_10001E8B8(&qword_1000B49C8, &qword_1000B3468, &qword_10007AF20);
  type metadata accessor for CollectionListItemView();
  sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005F9D4@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for CollectionListItemView();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  *v8 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  v10 = v5[5];
  *(v8 + v10) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v11 = (v8 + v5[6]);
  type metadata accessor for CollectionListViewModel();
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v12 = a2;
  v13 = v9;
  *v11 = ObservedObject.init(wrappedValue:)();
  v11[1] = v14;
  *(v8 + v5[8]) = v13;
  v15 = v13;
  v16 = [v15 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [v15 title];
  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {

    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (v8 + v5[7]);
  *v24 = v17;
  v24[1] = v19;
  v24[2] = v21;
  v24[3] = v23;
  v25 = [v15 identifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = v33;
  sub_100060D7C(v8, v33, type metadata accessor for CollectionListItemView);
  result = sub_10001B4A4(&qword_1000B2BF0, &qword_10007AF30);
  v31 = v29 + *(result + 36);
  *v31 = v26;
  *(v31 + 8) = v28;
  *(v31 + 16) = 1;
  return result;
}

uint64_t sub_10005FC5C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  sub_10001B4A4(&qword_1000B3488, &qword_10007AE70);
  sub_10001B4A4(&qword_1000B49A0, &qword_10007AE78);
  sub_10001E8B8(&qword_1000B49A8, &qword_1000B3488, &qword_10007AE70);
  type metadata accessor for UserGuideListItemView();
  sub_10006055C(&qword_1000B4998, type metadata accessor for UserGuideListItemView);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005FE38@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UserGuideListItemView();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  *v10 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v7[7]) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v12 = (v10 + v7[8]);
  type metadata accessor for CollectionListViewModel();
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v13 = a2;
  v14 = v11;
  *v12 = ObservedObject.init(wrappedValue:)();
  v12[1] = v15;
  *(v10 + v7[9]) = v14;
  v16 = UserGuide.identifier.getter();
  v18 = v17;
  sub_100060D7C(v10, a3, type metadata accessor for UserGuideListItemView);
  result = sub_10001B4A4(&qword_1000B2BF8, &qword_100077860);
  v20 = a3 + *(result + 36);
  *v20 = v16;
  *(v20 + 8) = v18;
  *(v20 + 16) = 1;
  return result;
}

uint64_t sub_100060004@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CollectionListViewModel();
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v4 = a1;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0xD000000000000011;
  *(a2 + 24) = 0x800000010008CCF0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_1000600B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000600FC()
{
  result = qword_1000B4880;
  if (!qword_1000B4880)
  {
    sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    sub_10001E8B8(&qword_1000B4888, &qword_1000B4890, qword_10007AB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4880);
  }

  return result;
}

unint64_t sub_1000601B4()
{
  result = qword_1000B4898;
  if (!qword_1000B4898)
  {
    sub_10001E860(&qword_1000B3390, &unk_100077F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4898);
  }

  return result;
}

unint64_t sub_100060230()
{
  result = qword_1000B48A0;
  if (!qword_1000B48A0)
  {
    sub_10001E860(&qword_1000B4858, &qword_10007AAD8);
    sub_10001E860(&qword_1000B4868, &qword_10007AAE8);
    type metadata accessor for SidebarListStyle();
    sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    sub_10001E860(&qword_1000B3390, &unk_100077F30);
    sub_1000600FC();
    sub_1000601B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3C48, &qword_1000B3C50, qword_1000795E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48A0);
  }

  return result;
}

unint64_t sub_1000603BC()
{
  result = qword_1000B48B8;
  if (!qword_1000B48B8)
  {
    sub_10001E860(&qword_1000B48B0, &qword_10007ABB0);
    sub_100060474();
    sub_10001E8B8(&qword_1000B3728, &qword_1000B3708, &qword_100078CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B8);
  }

  return result;
}

unint64_t sub_100060474()
{
  result = qword_1000B48C0;
  if (!qword_1000B48C0)
  {
    sub_10001E860(&qword_1000B48C8, &qword_10007ABB8);
    sub_10001E8B8(&qword_1000B48D0, &qword_1000B48D8, &unk_10007ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48C0);
  }

  return result;
}

uint64_t sub_100060544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006055C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000605D8(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_1000606E8(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B48E0, &qword_10007ACD8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10006077C(a1, &v6 - v4);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10006077C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B48E0, &qword_10007ACD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100060814()
{
  result = qword_1000B4938;
  if (!qword_1000B4938)
  {
    sub_10001E860(&qword_1000B4928, &unk_10007ADC0);
    sub_10001E860(&qword_1000B3CE8, &qword_100079728);
    sub_10001E860(&qword_1000B4940, &unk_10007ADD0);
    sub_1000419B8();
    sub_100060914();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4938);
  }

  return result;
}

unint64_t sub_100060914()
{
  result = qword_1000B4948;
  if (!qword_1000B4948)
  {
    sub_10001E860(&qword_1000B4940, &unk_10007ADD0);
    type metadata accessor for CollectionListItemView();
    sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4948);
  }

  return result;
}

uint64_t sub_100060A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B48E8, &qword_10007ACE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060A7C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100060AB0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100060AE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100060B14(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_100060B4C()
{
  result = qword_1000B4978;
  if (!qword_1000B4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4978);
  }

  return result;
}

unint64_t sub_100060BA8()
{
  result = qword_1000B4990;
  if (!qword_1000B4990)
  {
    sub_10001E860(&qword_1000B4988, &qword_10007AE38);
    type metadata accessor for UserGuideListItemView();
    sub_10006055C(&qword_1000B4998, type metadata accessor for UserGuideListItemView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4990);
  }

  return result;
}

uint64_t sub_100060CA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = UserGuide.identifier.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_100060D10(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = String._bridgeToObjectiveC()();
  [v4 setIdentifier:v5];
}

uint64_t sub_100060D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100060DF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100060E4C()
{
  result = qword_1000B49E8;
  if (!qword_1000B49E8)
  {
    sub_10001E860(&qword_1000B49D8, &qword_10007AFA8);
    sub_100060EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49E8);
  }

  return result;
}

unint64_t sub_100060EDC()
{
  result = qword_1000B49F0;
  if (!qword_1000B49F0)
  {
    sub_10001E860(&qword_1000B49F8, &qword_10007B020);
    sub_100060F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49F0);
  }

  return result;
}

unint64_t sub_100060F60()
{
  result = qword_1000B4A00;
  if (!qword_1000B4A00)
  {
    sub_10001E860(&qword_1000B4A08, &qword_10007B028);
    sub_10001E860(&qword_1000B2BE0, qword_10007B030);
    sub_1000610A4();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for CollectionListItemView();
    sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A00);
  }

  return result;
}

unint64_t sub_1000610A4()
{
  result = qword_1000B4A10;
  if (!qword_1000B4A10)
  {
    sub_10001E860(&qword_1000B2BE0, qword_10007B030);
    sub_10006055C(&qword_1000B4A18, type metadata accessor for FeaturedCollectionView);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A10);
  }

  return result;
}

unint64_t sub_1000611A0()
{
  result = qword_1000B4A20;
  if (!qword_1000B4A20)
  {
    sub_10001AC14(255, &qword_1000B2EC8, TPSCollection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A20);
  }

  return result;
}

uint64_t sub_100061208(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B2BE0, qword_10007B030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006127C()
{
  result = qword_1000B4A38;
  if (!qword_1000B4A38)
  {
    sub_10001E860(&unk_1000B4A40, &qword_10007B078);
    sub_10001E8B8(&qword_1000B4848, &qword_1000B4840, &qword_10007AAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A38);
  }

  return result;
}

void *TPSLastDisplayedContent.tipId.getter()
{
  v1 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TPSLastDisplayedContent.tipId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TPSLastDisplayedContent.collectionId.getter()
{
  v1 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100061630(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void TPSLastDisplayedContent.collectionId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id TPSLastDisplayedContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSLastDisplayedContent.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___TPSLastDisplayedContent_tipId] = 0;
  *&v0[OBJC_IVAR___TPSLastDisplayedContent_collectionId] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id TPSLastDisplayedContent.__allocating_init(collectionId:tipId:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  *&v5[OBJC_IVAR___TPSLastDisplayedContent_tipId] = 0;
  v7 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  *&v5[OBJC_IVAR___TPSLastDisplayedContent_collectionId] = 0;
  swift_beginAccess();
  *&v5[v7] = a1;
  swift_beginAccess();
  *&v5[v6] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id TPSLastDisplayedContent.init(collectionId:tipId:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  *&v2[OBJC_IVAR___TPSLastDisplayedContent_tipId] = 0;
  v7 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  *&v2[OBJC_IVAR___TPSLastDisplayedContent_collectionId] = 0;
  swift_beginAccess();
  *&v2[v7] = a1;
  swift_beginAccess();
  *&v2[v6] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

Swift::Bool __swiftcall TPSLastDisplayedContent.hasContent()()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 isRunningTest];

  if (v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 1;
  }

  v5 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  return *(v0 + v5) != 0;
}

uint64_t TPSLastDisplayedContent.description.getter()
{
  v1 = v0;
  v22 = 40;
  v23 = 0xE100000000000000;
  v2 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    _StringGuts.grow(_:)(16);

    strcpy(&v21, "collectionId: ");
    HIBYTE(v21._object) = -18;
    v5 = [v4 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    String.append(_:)(v21);
  }

  v10 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x203A6449706974;
    v18._object = 0xE700000000000000;
    String.append(_:)(v18);
  }

  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v22;
}

id TPSLastDisplayedContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall TPSLastDisplayedContent.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = String._bridgeToObjectiveC()();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = String._bridgeToObjectiveC()();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id TPSLastDisplayedContent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TPSLastDisplayedContent.init(coder:)(void *a1)
{
  v2 = v1;
  sub_10006205C();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 initWithCollectionId:v5 tipId:v6];

      return v8;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_10006205C()
{
  result = qword_1000B4B20;
  if (!qword_1000B4B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B4B20);
  }

  return result;
}

unint64_t sub_1000620FC()
{
  result = qword_1000B4C30;
  if (!qword_1000B4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C30);
  }

  return result;
}

uint64_t sub_100062150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100062208;

  return (sub_100064870)(a2, a3);
}

uint64_t sub_100062208(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_10006231C()
{
  result = qword_1000B4C38;
  if (!qword_1000B4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C38);
  }

  return result;
}

unint64_t sub_100062374()
{
  result = qword_1000B4C40;
  if (!qword_1000B4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C40);
  }

  return result;
}

uint64_t sub_1000623D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100065274;

  return sub_100064D80(a1);
}

uint64_t sub_100062478(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100065260;

  return sub_1000643A4();
}

uint64_t sub_10006251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000625DC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000625DC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1000626E0()
{
  result = qword_1000B4C50;
  if (!qword_1000B4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C50);
  }

  return result;
}

unint64_t sub_100062738()
{
  result = qword_1000B4C58;
  if (!qword_1000B4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C58);
  }

  return result;
}

unint64_t sub_100062790()
{
  result = qword_1000B4C60;
  if (!qword_1000B4C60)
  {
    sub_10001E860(&qword_1000B4C68, qword_10007B160);
    sub_100062738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C60);
  }

  return result;
}

uint64_t sub_100062814(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000620FC();
  *v6 = v2;
  v6[1] = sub_100059088;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000628C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100059088;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100062988()
{
  result = qword_1000B4C70;
  if (!qword_1000B4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C70);
  }

  return result;
}

unint64_t sub_1000629E0()
{
  result = qword_1000B4C78;
  if (!qword_1000B4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C78);
  }

  return result;
}

unint64_t sub_100062A38()
{
  result = qword_1000B4C80;
  if (!qword_1000B4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C80);
  }

  return result;
}

uint64_t sub_100062A98()
{
  v0 = sub_10001B4A4(&unk_1000B4D80, &qword_10007A9C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = type metadata accessor for TypeDisplayRepresentation();
  sub_10005B184(v15, qword_1000B6F18);
  sub_1000421A4(v15, qword_1000B6F18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v13 + 56))(v3, 1, 1, v12);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100062D74@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v51 = a2;
  v2 = sub_10001B4A4(&qword_1000B4D78, &unk_10007B4B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v52 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v42 - v6;
  v8 = sub_10001B4A4(&unk_1000B4D80, &qword_10007A9C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v50 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v42 - v13;
  __chkstk_darwin(v12);
  v16 = v42 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v48 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v42 - v22;

  v49 = v23;
  LocalizedStringResource.init(stringLiteral:)();
  v47 = v18;
  v44 = *(v18 + 56);
  v44(v16, 1, 1, v17);
  v24 = type metadata accessor for DisplayRepresentation.Image();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v45 = v25 + 56;
  v26(v7, 1, 1, v24);
  v27 = [objc_opt_self() sharedInstance];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 collectionForIdentifier:v28];

  if (v29)
  {
    v46 = v26;
    v43 = v14;
    v30 = v52;
    v31 = [v29 tocAssets];
    if (v31 && (v32 = v31, v33 = [v31 symbolId], v32, v33))
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42[0] = v35;
      v42[1] = v34;

      v36 = [v29 text];
      if (v36)
      {
        v37 = v36;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v38 = v43;
      LocalizedStringResource.init(stringLiteral:)();
      sub_10001F870(v16, &unk_1000B4D80, &qword_10007A9C0);
      v44(v38, 0, 1, v17);
      sub_100023628(v38, v16, &unk_1000B4D80, &qword_10007A9C0);
      DisplayRepresentation.Image.init(systemName:isTemplate:)();

      sub_10001F870(v7, &qword_1000B4D78, &unk_10007B4B0);
      v46(v30, 0, 1, v24);
      sub_100023628(v30, v7, &qword_1000B4D78, &unk_10007B4B0);
    }

    else
    {
    }
  }

  v39 = v47;
  v40 = v49;
  (*(v47 + 16))(v48, v49, v17);
  sub_10001F808(v16, v50, &unk_1000B4D80, &qword_10007A9C0);
  sub_10001F808(v7, v52, &qword_1000B4D78, &unk_10007B4B0);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_10001F870(v7, &qword_1000B4D78, &unk_10007B4B0);
  sub_10001F870(v16, &unk_1000B4D80, &qword_10007A9C0);
  return (*(v39 + 8))(v40, v17);
}

uint64_t sub_100063290@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_1000632A0()
{
  result = qword_1000B4C88;
  if (!qword_1000B4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C88);
  }

  return result;
}

unint64_t sub_1000632F8()
{
  result = qword_1000B4C90;
  if (!qword_1000B4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C90);
  }

  return result;
}

unint64_t sub_100063350()
{
  result = qword_1000B4C98;
  if (!qword_1000B4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C98);
  }

  return result;
}

uint64_t sub_1000633A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B2B60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000421A4(v2, qword_1000B6F18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100063450()
{
  result = qword_1000B4CA0;
  if (!qword_1000B4CA0)
  {
    sub_10001E860(&qword_1000B4CA8, &qword_10007B368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4CA0);
  }

  return result;
}

uint64_t sub_1000634B4(uint64_t a1)
{
  v2 = sub_100022F14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100063504()
{
  result = qword_1000B4CB0;
  if (!qword_1000B4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4CB0);
  }

  return result;
}

uint64_t sub_100063558@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  return sub_100062D74(v1[1], a1);
}

uint64_t sub_100063564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10005978C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100063628(uint64_t a1)
{
  v2 = sub_100063350();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100063674()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100063710, v3, v2);
}

uint64_t sub_100063710()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC4Tips14ContentFetcher_appController);
  if ([v1 contentHasLoaded])
  {
    v2 = v0[4];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    [v1 addDelegate:v5];
    v0[7] = static MainActor.shared.getter();
    v6 = swift_task_alloc();
    v0[8] = v6;
    *(v6 + 16) = v5;
    v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_100063888;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_100063888()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return _swift_task_switch(sub_1000639E8, v6, v5);
}

uint64_t sub_1000639E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

id sub_100063A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsLog();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001B4A4(&qword_1000B4D70, &qword_10007B4A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_10001B4A4(&qword_1000B4D68, &qword_10007B450);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = OBJC_IVAR____TtC4Tips14ContentFetcher_continuation;
  swift_beginAccess();
  sub_10006432C(v12, a2 + v15);
  swift_endAccess();
  v16 = *(a2 + OBJC_IVAR____TtC4Tips14ContentFetcher_appController);
  LODWORD(v15) = [v16 updatingContent];
  static TipsLog.default.getter();
  v17 = (v5 + 8);
  logDebug(_:_:)();
  if (v15)
  {
    return (*v17)(v8, v4);
  }

  (*v17)(v8, v4);
  return [v16 updateContent];
}

id sub_100063CC0(void *a1, char a2)
{
  v24 = a1;
  v4 = sub_10001B4A4(&qword_1000B4D68, &qword_10007B450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_10001B4A4(&qword_1000B4D70, &qword_10007B4A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TipsLog();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = __chkstk_darwin(v16);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    static TipsLog.default.getter();
    logDebug(_:_:)();
    (*(v17 + 8))(v21, v16);
    v22 = OBJC_IVAR____TtC4Tips14ContentFetcher_continuation;
    swift_beginAccess();
    sub_10001F808(v2 + v22, v15, &qword_1000B4D70, &qword_10007B4A8);
    if ((*(v5 + 48))(v15, 1, v4))
    {
      sub_10001F870(v15, &qword_1000B4D70, &qword_10007B4A8);
    }

    else
    {
      (*(v5 + 16))(v8, v15, v4);
      sub_10001F870(v15, &qword_1000B4D70, &qword_10007B4A8);
      CheckedContinuation.resume(returning:)();
      (*(v5 + 8))(v8, v4);
    }

    (*(v5 + 56))(v13, 1, 1, v4);
    swift_beginAccess();
    sub_10006432C(v13, v2 + v22);
    swift_endAccess();
    return [v24 removeDelegate:v2];
  }

  return result;
}

id sub_100064098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentFetcher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContentFetcher()
{
  result = qword_1000B4D50;
  if (!qword_1000B4D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064174()
{
  sub_100064214();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100064214()
{
  if (!qword_1000B4D60)
  {
    sub_10001E860(&qword_1000B4D68, &qword_10007B450);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B4D60);
    }
  }
}

__n128 sub_100064278(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100064284(uint64_t a1, int a2)
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

uint64_t sub_1000642CC(uint64_t result, int a2, int a3)
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

uint64_t sub_10006432C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B4D70, &qword_10007B4A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000643C0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[2].receiver = v1;
  v2 = type metadata accessor for ContentFetcher();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC4Tips14ContentFetcher_continuation;
  v5 = sub_10001B4A4(&qword_1000B4D68, &qword_10007B450);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC4Tips14ContentFetcher_appController] = v1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v6 = v1;
  v0[2].super_class = objc_msgSendSuper2(v0 + 1, "init");
  v7 = swift_task_alloc();
  v0[3].receiver = v7;
  *v7 = v0;
  v7[1] = sub_10006451C;

  return sub_100063674();
}

uint64_t sub_10006451C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_100064618, 0, 0);
}

id *sub_100064618()
{
  v1 = [*(v0 + 32) tipCollections];
  if (v1)
  {
    v2 = v1;
    sub_1000203F4();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }

LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);

    goto LABEL_19;
  }

  v3 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_17;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  result = sub_100028B44(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v3;
  v27 = v0;
  v8 = v4;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v7 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = [v9 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [v10 featuredTitle];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {

      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v21 = _swiftEmptyArrayStorage[2];
    v20 = _swiftEmptyArrayStorage[3];
    if (v21 >= v20 >> 1)
    {
      sub_100028B44((v20 > 1), v21 + 1, 1);
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = (v21 + 1);
    v22 = &_swiftEmptyArrayStorage[4 * v21];
    v22[4] = v12;
    v22[5] = v14;
    v22[6] = v17;
    v22[7] = v19;
    v7 = v3;
  }

  while (v8 != v6);
  v0 = v27;
  v23 = *(v27 + 32);

LABEL_19:
  v26 = *(v0 + 8);

  return v26(_swiftEmptyArrayStorage);
}

uint64_t sub_100064870(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for TipsLog();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = sub_100064970;

  return sub_1000643A4();
}

uint64_t sub_100064970(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100064AC0, 0, 0);
  }
}

void sub_100064AC0()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v27 = -v2;
    v4 = v1 + 56;
    v26 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v4 + 32 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = v0[6];
        v6 = v0[7];
        v8 = *(v5 - 3);
        v9 = *(v5 - 2);
        v11 = *(v5 - 1);
        v10 = *v5;
        v0[2] = v11;
        v0[3] = v10;
        v0[4] = v7;
        v0[5] = v6;
        sub_1000235B4();

        if (StringProtocol.localizedCaseInsensitiveContains<A>(_:)())
        {
          break;
        }

        ++v3;
        v5 += 4;
        if (v27 + v3 == 1)
        {
          goto LABEL_15;
        }
      }

      v12 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100028B44(0, v26[2] + 1, 1);
        v12 = v26;
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        sub_100028B44((v13 > 1), v14 + 1, 1);
        v12 = v26;
      }

      v12[2] = (v14 + 1);
      v26 = v12;
      v15 = &v12[4 * v14];
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v11;
      v15[7] = v10;
      v4 = v1 + 56;
    }

    while (v27 + v3);
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  v16 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];

  static TipsLog.default.getter();
  _StringGuts.grow(_:)(49);

  v22._countAndFlagsBits = v21;
  v22._object = v20;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x7275746572202D20;
  v23._object = 0xED000020676E696ELL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v24);

  log(_:_:)();

  (*(v17 + 8))(v18, v19);

  v25 = v0[1];

  v25(v26);
}

uint64_t sub_100064D80(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for TipsLog();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100064E40, 0, 0);
}

id *sub_100064E40(id *a1)
{
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v3 + 40;
  v5 = *(v3 + 16);
  v45 = v3 + 40;
LABEL_2:
  v6 = (v4 + 16 * v2);
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_25;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = objc_opt_self();

    v11 = [v10 sharedInstance];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 collectionForIdentifier:v12];

    v6 += 2;
    ++v2;
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      a1 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v7;
      v4 = v45;
      goto LABEL_2;
    }
  }

  a1 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

LABEL_26:
  v35 = a1;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v35;
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_12:
  v16 = a1;
  result = sub_100028B44(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  v19 = v16;
  v46 = v16 & 0xC000000000000001;
  v20 = v15;
  do
  {
    if (v46)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = v19[v18 + 4];
    }

    v22 = v21;
    v23 = [v21 identifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = [v22 featuredTitle];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {

      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v33 = _swiftEmptyArrayStorage[2];
    v32 = _swiftEmptyArrayStorage[3];
    if (v33 >= v32 >> 1)
    {
      sub_100028B44((v32 > 1), v33 + 1, 1);
    }

    ++v18;
    _swiftEmptyArrayStorage[2] = (v33 + 1);
    v34 = &_swiftEmptyArrayStorage[4 * v33];
    v34[4] = v24;
    v34[5] = v26;
    v34[6] = v29;
    v34[7] = v31;
    v19 = _swiftEmptyArrayStorage;
  }

  while (v20 != v18);
LABEL_27:

  v37 = v44[4];
  v36 = v44[5];
  v39 = v44[2];
  v38 = v44[3];
  static TipsLog.default.getter();
  _StringGuts.grow(_:)(49);

  v40._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x7275746572202D20;
  v41._object = 0xED000020676E696ELL;
  String.append(_:)(v41);
  v42._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v42);

  log(_:_:)();

  (*(v37 + 8))(v36, v38);

  v43 = v44[1];

  return v43(_swiftEmptyArrayStorage);
}

uint64_t sub_100065278(uint64_t a1)
{
  v44 = sub_10001B4A4(&qword_1000B4DB8, &qword_10007B5A0);
  v46 = *(v44 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v44);
  v4 = &v35 - v3;
  v5 = sub_10001B4A4(&qword_1000B4DC0, &qword_10007B5A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10004E77C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x20656D20776F6853;
  v7._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v8 = sub_100062738();
  v43 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x7370697420;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45 = *(v46 + 8);
  v46 += 8;
  v10 = v44;
  v45(v4, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000011;
  v11._object = 0x800000010008D010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000010;
  v13._object = 0x800000010008D030;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v42 = v8;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45(v4, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x800000010008D050;
  v15._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v45;
  v45(v4, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x7069742077656956;
  v18._object = 0xEE0020726F662073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v4, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x2077656956;
  v20._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x7370697420;
  v21._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v44;
  v45(v4, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._object = 0x800000010008D070;
  v23._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v45;
  v45(v4, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x49206F6420776F48;
  v26._object = 0xED00002065737520;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 63;
  v27._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v4, v22);
  sub_10001B4A4(&qword_1000B4DC8, &unk_10007B5B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10007B4E0;
  v30 = v40;
  *(v29 + 32) = v41;
  *(v29 + 40) = v30;
  v31 = v38;
  *(v29 + 48) = v39;
  *(v29 + 56) = v31;
  v32 = v36;
  *(v29 + 64) = v37;
  *(v29 + 72) = v32;
  *(v29 + 80) = v35;
  *(v29 + 88) = v28;
  v33 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v33;
}

uint64_t sub_100065AE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];

  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100065B34()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100062738();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10004E77C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  sub_10001B4A4(&qword_1000B4DA8, &qword_10007B590);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100077E80;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_100065CA4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10001B4A4(&qword_1000B4DB0, &qword_10007B598);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10007B4F0;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100065E44()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_10005AB4C();
  sub_10004E77C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v5 = static _AssistantIntent.Builder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  sub_10001B4A4(&qword_1000B4DA0, &qword_10007B560);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100077E80;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v7;
}

double sub_100065FC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  IntentParameter.wrappedValue.getter();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

id sub_1000660B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_assetsConfiguration);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = [v4 cacheIdentifierForType:a1];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() imageFromMemoryCacheForIdentifier:v5];

    result = v7;
    if (v7)
    {
      return result;
    }
  }

  else
  {
  }

  result = [v4 identifierForType:a1];
  if (result)
  {
    v9 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 getImageForIdentifier:v11];

    return v12;
  }

  return result;
}

id sub_1000662C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSSharingActivityItemSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100066364(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_tip] = a1;
  v3 = a1;
  v4 = [v3 assetFileInfoManager];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for TPSUIAppController();
    v6 = static TPSUIAppController.shared.getter();
    v7 = [v3 fullContentAssets];
    v8 = [v3 language];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = [objc_opt_self() currentTraitCollection];
    [v9 userInterfaceStyle];

    v10 = dispatch thunk of TPSUIAppController.assetConfiguration(assets:language:sizeClass:style:assetFileInfoManager:)();
  }

  else
  {
    v10 = 0;
  }

  *&v2[OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_assetsConfiguration] = v10;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for TPSSharingActivityItemSource();
  return objc_msgSendSuper2(&v12, "init");
}

id sub_1000664C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = [objc_allocWithZone(ISIcon) initWithBundleIdentifier:v1];

    v3 = [objc_allocWithZone(ISImageDescriptor) init];
    v4 = [v2 imageForDescriptor:v3];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 CGImage];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_allocWithZone(UIImage) initWithCGImage:v6];

        return v8;
      }
    }
  }

  return 0;
}

id sub_100066620()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_1000664C8();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(LPLinkMetadata) init];
  v35 = [objc_allocWithZone(NSItemProvider) initWithObject:v11];
  [v12 setIconProvider:?];
  v13 = sub_1000660B8(0);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(NSItemProvider) initWithObject:v13];
    [v12 setImageProvider:v15];
  }

  v16 = *(v0 + OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_tip);
  v17 = [v16 title];
  [v12 setTitle:v17];

  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v36 = 0xD00000000000001ELL;
  v37 = 0x800000010008C2A0;
  v18 = [v16 variantID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  URL.init(string:)();

  v24 = 0;
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    (*(v2 + 8))(v9, v1);
  }

  [v12 setURL:v24];

  v26 = [v16 bodyText];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v32 = [v16 bodyContent];
    if (!v32)
    {
      goto LABEL_9;
    }

    v33 = v32;
    v27 = [objc_opt_self() altTextRepresentationForContent:v32];

    if (!v27)
    {
      goto LABEL_9;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  (*(v2 + 8))(v5, v1);
  [v12 setOriginalURL:v30];

LABEL_9:
  return v12;
}

uint64_t sub_100066A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100066B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for UserGuideListItemView()
{
  result = qword_1000B4E60;
  if (!qword_1000B4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100066CBC()
{
  sub_100048F3C(319, &unk_1000B4058, &type metadata accessor for ContentSizeCategory);
  if (v0 <= 0x3F)
  {
    sub_100048F3C(319, &qword_1000B2F40, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_10002076C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UserGuide();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100066DC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100066E44(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  static Published.subscript.setter();
  return sub_10002DE48();
}

uint64_t sub_100066EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v36);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001B4A4(&qword_1000B4EA0, &qword_10007B648);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = sub_10001B4A4(&qword_1000B4EA8, &qword_10007B650);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = sub_10001B4A4(&qword_1000B4EB0, &qword_10007B658);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v33 = &v32 - v21;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v22 = sub_10001B4A4(&qword_1000B4EB8, qword_10007B660);
  sub_1000672FC(v2, &v13[*(v22 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v23 = sub_10001E8B8(&qword_1000B4EC0, &qword_1000B4EA0, &qword_10007B648);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v9, v36);
  sub_10001F870(v13, &qword_1000B4EA0, &qword_10007B648);
  v24 = v35;
  static AccessibilityTraits.isButton.getter();
  v40 = v10;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  View.accessibilityAddTraits(_:)();
  (*(v37 + 8))(v24, v38);
  (*(v15 + 8))(v18, v14);
  v26 = *(v34 + *(type metadata accessor for UserGuideListItemView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v40;
  if (v40)
  {
    v28 = 0x4030000000000000;
  }

  else
  {
    v28 = 0;
  }

  v29 = v39;
  sub_100067A08(v25, v39);
  result = sub_10001B4A4(&qword_1000B4EC8, &qword_10007B6C0);
  v31 = v29 + *(result + 36);
  *v31 = 0;
  *(v31 + 8) = v28;
  *(v31 + 16) = 0;
  *(v31 + 24) = v28;
  *(v31 + 32) = v27 ^ 1;
  return result;
}

uint64_t sub_1000672FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v69 = sub_10001B4A4(&qword_1000B4ED0, &qword_10007B6C8);
  v3 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v5 = &v68 - v4;
  v6 = sub_10001B4A4(&qword_1000B4ED8, &qword_10007B6D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v68 - v8;
  v10 = sub_10001B4A4(&qword_1000B4EE0, &qword_10007B6D8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = sub_10001B4A4(&qword_1000B4EE8, &unk_10007B6E0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v75 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v70 = &v68 - v20;
  v21 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v68 - v23;
  v25 = type metadata accessor for UserGuideListItemView();
  v68 = *(a1 + *(v25 + 28));
  UserGuide.symbol.getter();
  v26 = Image.init(_internalSystemName:)();
  v73 = v26;
  v27 = type metadata accessor for Font.Design();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  v28 = static Font.system(size:weight:design:)();
  v71 = v28;
  sub_10001F870(v24, &qword_1000B3030, &qword_100077D50);
  KeyPath = swift_getKeyPath();
  v94[0] = v26;
  v94[1] = KeyPath;
  v94[2] = v28;
  sub_100067A78(a1, v94, v5);
  sub_100067F5C();
  View.accessibilityHidden(_:)();
  sub_10001F870(v5, &qword_1000B4ED0, &qword_10007B6C8);
  LOBYTE(v26) = static Edge.Set.leading.getter();
  v29 = *(a1 + *(v25 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100023628(v9, v14, &qword_1000B4ED8, &qword_10007B6D0);
  v38 = &v14[*(v11 + 44)];
  *v38 = v26;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = v70;
  sub_100023628(v14, v70, &qword_1000B4EE0, &qword_10007B6D8);
  v40 = (v39 + *(v16 + 44));
  v41 = v96;
  *v40 = v95;
  v40[1] = v41;
  v40[2] = v97;
  v82 = UserGuide.text.getter();
  v83 = v42;
  sub_1000235B4();
  v43 = Text.init<A>(_:)();
  v45 = v44;
  LOBYTE(v11) = v46;
  static Color.primary.getter();
  v47 = Text.foregroundColor(_:)();
  v49 = v48;
  LOBYTE(a1) = v50;
  v52 = v51;

  sub_100023608(v43, v45, v11 & 1);

  LOBYTE(v43) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  LOBYTE(v82) = a1 & 1;
  LOBYTE(v78) = 0;
  v61 = v75;
  sub_100023628(v39, v75, &qword_1000B4EE8, &unk_10007B6E0);
  v62 = v61;
  v63 = v74;
  sub_10001F808(v62, v74, &qword_1000B4EE8, &unk_10007B6E0);
  v64 = (v63 + *(sub_10001B4A4(&qword_1000B4F08, &unk_10007B730) + 48));
  *&v78 = v47;
  *(&v78 + 1) = v49;
  LOBYTE(v79) = a1 & 1;
  *(&v79 + 1) = *v77;
  DWORD1(v79) = *&v77[3];
  *(&v79 + 1) = v52;
  LOBYTE(v80) = v43;
  *(&v80 + 1) = *v76;
  DWORD1(v80) = *&v76[3];
  *(&v80 + 1) = v54;
  *&v81[0] = v56;
  *(&v81[0] + 1) = v58;
  *&v81[1] = v60;
  BYTE8(v81[1]) = 0;
  sub_10001F808(&v78, &v82, &qword_1000B3A30, &unk_100079258);

  v65 = v81[0];
  v64[2] = v80;
  v64[3] = v65;
  *(v64 + 57) = *(v81 + 9);
  v66 = v79;
  *v64 = v78;
  v64[1] = v66;
  v82 = v47;
  v83 = v49;
  v84 = a1 & 1;
  *v85 = *v77;
  *&v85[3] = *&v77[3];
  v86 = v52;
  v87 = v43;
  *&v88[3] = *&v76[3];
  *v88 = *v76;
  v89 = v54;
  v90 = v56;
  v91 = v58;
  v92 = v60;
  v93 = 0;
  sub_10001F870(&v82, &qword_1000B3A30, &unk_100079258);
  return sub_10001F870(v75, &qword_1000B4EE8, &unk_10007B6E0);
}

uint64_t sub_100067A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B4EB0, &qword_10007B658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067A78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v26 = sub_10001B4A4(&qword_1000B4F10, &qword_10007B740);
  v5 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v7 = (&v25 - v6);
  v8 = sub_10001B4A4(&qword_1000B39F8, &qword_100079228);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for UserGuideListItemView();
  v14 = *(a1 + *(v13 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28 == 1)
  {
    v15 = *(a1 + *(v13 + 28));
    v16 = UserGuide.gradient.getter();
    __chkstk_darwin(v16);
    *(&v25 - 2) = a2;
    static UnitPoint.topTrailing.getter();
    static UnitPoint.bottomLeading.getter();
    sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
    sub_10003B910();
    TipGradientView.init(_:startPoint:endPoint:gradientView:)();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B41C0, &qword_100079D90);
    sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228);
    sub_10004B904();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[2];
    v21 = objc_opt_self();

    v22 = [v21 systemBlueColor];
    v23 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    *v7 = v18;
    v7[1] = v19;
    v7[2] = v20;
    v7[3] = KeyPath;
    v7[4] = v23;
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B41C0, &qword_100079D90);
    sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228);
    sub_10004B904();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100067E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
}

uint64_t sub_100067EAC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100067ED8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100067F04(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100067F30(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_100067F5C()
{
  result = qword_1000B4EF0;
  if (!qword_1000B4EF0)
  {
    sub_10001E860(&qword_1000B4ED0, &qword_10007B6C8);
    sub_100067FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EF0);
  }

  return result;
}

unint64_t sub_100067FE0()
{
  result = qword_1000B4EF8;
  if (!qword_1000B4EF8)
  {
    sub_10001E860(&qword_1000B4F00, &unk_10007B720);
    sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228);
    sub_10004B904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EF8);
  }

  return result;
}

uint64_t sub_100068098@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000680C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000680F0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10006811C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_100068154()
{
  result = qword_1000B4F18;
  if (!qword_1000B4F18)
  {
    sub_10001E860(&qword_1000B4EC8, &qword_10007B6C0);
    sub_10006820C();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4F18);
  }

  return result;
}

unint64_t sub_10006820C()
{
  result = qword_1000B4F20;
  if (!qword_1000B4F20)
  {
    sub_10001E860(&qword_1000B4EB0, &qword_10007B658);
    sub_10001E860(&qword_1000B4EA0, &qword_10007B648);
    sub_10001E8B8(&qword_1000B4EC0, &qword_1000B4EA0, &qword_10007B648);
    swift_getOpaqueTypeConformance2();
    sub_10004ACB4(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4F20);
  }

  return result;
}

uint64_t sub_100068338()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F28);
  sub_1000421A4(v0, qword_1000B4F28);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006839C()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F40);
  sub_1000421A4(v0, qword_1000B4F40);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100068400()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F58);
  sub_1000421A4(v0, qword_1000B4F58);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100068464()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F70);
  sub_1000421A4(v0, qword_1000B4F70);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_1000684C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v41 = a2;
  v3 = type metadata accessor for ScrollVerticallyTestSupport();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10001B4A4(&qword_1000B5028, &qword_10007B810);
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v36);
  v9 = &v32 - v8;
  v10 = sub_10001B4A4(&qword_1000B5030, &qword_10007B818);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  v13 = sub_10001B4A4(&qword_1000B5038, &qword_10007B820);
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  __chkstk_darwin(v13);
  v42 = &v32 - v15;
  if (qword_1000B2B68 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for PPTTestCase.Name();
  sub_1000421A4(v43, qword_1000B4F28);
  sub_1000694DC(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  v32 = v5;
  sub_100069544(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = sub_10001B4A4(&qword_1000B5040, &qword_10007B828);
  v20 = sub_10001E8B8(&qword_1000B5048, &qword_1000B5040, &qword_10007B828);
  View.onTest(_:handler:)();

  if (qword_1000B2B70 != -1)
  {
    swift_once();
  }

  sub_1000421A4(v43, qword_1000B4F40);
  sub_1000694DC(v2, v6);
  v21 = swift_allocObject();
  sub_100069544(v6, v21 + v17);
  v44 = v19;
  v45 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v16;
  v24 = v35;
  v23 = v36;
  View.onTest(_:handler:)();

  (*(v34 + 8))(v9, v23);
  if (qword_1000B2B78 != -1)
  {
    swift_once();
  }

  sub_1000421A4(v43, qword_1000B4F58);
  sub_1000694DC(v2, v6);
  v25 = swift_allocObject();
  sub_100069544(v6, v25 + v17);
  v44 = v23;
  v45 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v38;
  View.onTest(_:handler:)();

  (*(v37 + 8))(v24, v27);
  if (qword_1000B2B80 != -1)
  {
    swift_once();
  }

  sub_1000421A4(v43, qword_1000B4F70);
  sub_1000694DC(v2, v6);
  v28 = swift_allocObject();
  sub_100069544(v6, v28 + v17);
  v44 = v27;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  v30 = v42;
  View.onTest(_:handler:)();

  return (*(v39 + 8))(v30, v29);
}

uint64_t sub_100068B10(uint64_t a1)
{
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScrollVerticallyTestSupport();
  v33 = *(v7 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v7 - 8);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PPTTestCase();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v37 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v35 = &v32 - v19;
  PPTTestCase.startTest()();
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v36 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v14 + 8);
  v20(v18, v13);
  (*(v10 + 16))(v12, a1, v9);
  v21 = v32;
  sub_1000694DC(v38, v32);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = (v11 + *(v33 + 80) + v22) & ~*(v33 + 80);
  v24 = swift_allocObject();
  (*(v10 + 32))(v24 + v22, v12, v9);
  sub_100069544(v21, v24 + v23);
  aBlock[4] = sub_100069834;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A45E8;
  v25 = _Block_copy(aBlock);

  v26 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100047AD0();
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
  v28 = v40;
  v27 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v35;
  v29 = v36;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v44 + 8))(v28, v27);
  (*(v42 + 8))(v26, v43);
  return (v20)(v30, v37);
}

uint64_t sub_10006907C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + *a4);
  sub_10001AC14(0, &qword_1000B2DA8, UIViewController_ptr);
  v5 = v9;
  sub_10001B4A4(&qword_1000B4F88, &qword_10007B788);
  if (swift_dynamicCast())
  {
    sub_1000692EC(v7, v10);
    sub_10001F8D0(v10, v10[3]);
    dispatch thunk of PPTTestHost.runTest(_:options:)();
    return sub_10001F914(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_100069284(v7);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000691C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  sub_10006907C(v7, v9, v10, a5);
}

uint64_t sub_100069284(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B4F90, &unk_10007B790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000692EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100069318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100069398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ScrollVerticallyTestSupport()
{
  result = qword_1000B4FF0;
  if (!qword_1000B4FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100069454()
{
  result = type metadata accessor for ScrollViewProxy();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000694DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollVerticallyTestSupport();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollVerticallyTestSupport();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000695AC()
{
  v1 = *(type metadata accessor for ScrollVerticallyTestSupport() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ScrollViewProxy();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100069678(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrollVerticallyTestSupport() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_100068B10(a1);
}

uint64_t sub_1000696DC()
{
  v1 = type metadata accessor for PPTTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for ScrollVerticallyTestSupport() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = type metadata accessor for ScrollViewProxy();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100069834()
{
  v0 = *(type metadata accessor for PPTTestCase() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(type metadata accessor for ScrollVerticallyTestSupport() - 8) + 80);
  return PPTTestCase.performScrollTest(_:)();
}

uint64_t sub_1000698F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006990C()
{
  sub_10001E860(&qword_1000B5038, &qword_10007B820);
  sub_10001E860(&qword_1000B5030, &qword_10007B818);
  sub_10001E860(&qword_1000B5028, &qword_10007B810);
  sub_10001E860(&qword_1000B5040, &qword_10007B828);
  sub_10001E8B8(&qword_1000B5048, &qword_1000B5040, &qword_10007B828);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_100069A78()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000B5050 = result;
  return result;
}

uint64_t sub_100069AD0()
{
  v0 = type metadata accessor for ImageResource();
  sub_10005B184(v0, qword_1000B6F30);
  sub_1000421A4(v0, qword_1000B6F30);
  if (qword_1000B2B88 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B5050;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100069BAC(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000B6E68 == -1)
  {
    if (qword_1000B6E70)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10006A2A8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000B6E70)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000B6E60 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10006A2C0();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000B6E50 < v11;
    if (dword_1000B6E50 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000B6E54 > a3)
      {
        return 1;
      }

      if (dword_1000B6E54 >= a3)
      {
        return dword_1000B6E58 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000B6E50 < a2;
  if (dword_1000B6E50 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100069D40(uint64_t result)
{
  v1 = qword_1000B6E70;
  if (qword_1000B6E70)
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
      qword_1000B6E70 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1000B6E50, &dword_1000B6E54, &dword_1000B6E58);
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

void sub_10006A0CC(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Set current tip to %@.", &v4, 0xCu);
}