void sub_1006FD53C(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for FullScreenAssetCollectionViewCell();
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for GalleryCollectionViewLayout.Attributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = fabs(*(v3 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition));
    v6 = a1;
    v7 = [v1 contentView];
    v8 = [v7 isUserInteractionEnabled];

    if (v5 < 0.5 != v8)
    {
      v9 = [v1 contentView];
      [v9 setUserInteractionEnabled:v5 < 0.5];

      [v1 setNeedsUpdateConfiguration];
    }

    v10 = [v1 contentView];
    v11 = [v10 layer];

    v12 = *(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 16);
    v13 = *(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 32);
    *&m.a = *(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform);
    *&m.c = v12;
    *&m.tx = v13;
    CATransform3DMakeAffineTransform(&v14, &m);
    [v11 setSublayerTransform:&v14];

    [v1 setLayoutMargins:{*(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins), *(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 8), *(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 16), *(v4 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 24)}];
  }
}

void sub_1006FD770()
{
  v1 = v0;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FullScreenAssetCollectionViewCell();
  objc_msgSendSuper2(&v9, "_bridgedUpdateConfigurationUsingState:", isa);

  v3 = *&v1[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  sub_100760CA8(v3, (v8 & 1) == 0);
  v4 = [*&v1[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView] layer];
  v5 = [v3 layer];
  [v5 cornerRadius];
  v7 = v6;

  [v4 setCornerRadius:v7];
}

id sub_1006FDA70(void *a1)
{
  type metadata accessor for GalleryCollectionViewLayout.Attributes();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins);
    v5 = *(v2 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 8);
    v6 = *(v2 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 16);
    v7 = *(v2 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_layoutMargins + 24);
    v8 = a1;
    [v1 setLayoutMargins:{v4, v5, v6, v7}];
    v9 = v8;
    [v3 size];
    [v1 systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
    v11 = v10;
    [v3 size];
    v13 = v12;

    if (v11 != v13)
    {
      [v3 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v3 = v16;
      [v3 size];
      [v3 setSize:v11];
    }

    return v3;
  }

  else
  {

    return a1;
  }
}

id sub_1006FDC88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenAssetCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenAssetCollectionViewCell()
{
  result = qword_100AEE510;
  if (!qword_100AEE510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006FDE08()
{
  sub_10000C720();
  if (v0 <= 0x3F)
  {
    sub_1006FDEEC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1006FDEEC()
{
  if (!qword_100AEE528)
  {
    type metadata accessor for CGSize(255);
    type metadata accessor for UIView.Invalidations.Constraints();
    sub_1006FDF78();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE528);
    }
  }
}

unint64_t sub_1006FDF78()
{
  result = qword_100ADA000;
  if (!qword_100ADA000)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA000);
  }

  return result;
}

uint64_t sub_1006FE030@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = sub_1000F24EC(&qword_100AEE658);
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v58 - v3;
  v4 = sub_1000F24EC(&qword_100AD0EA0);
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v70 = &v58 - v5;
  v6 = sub_1000F24EC(&qword_100AEE660);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  __chkstk_darwin(v6);
  v60 = &v58 - v8;
  v59 = sub_1000F24EC(&qword_100AEE668);
  v61 = *(v59 - 1);
  __chkstk_darwin(v59);
  v10 = &v58 - v9;
  v11 = sub_1000F24EC(&qword_100AEE670);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v73 = v1;
  sub_1000F24EC(&qword_100AEE678);
  sub_10000B58C(&qword_100AEE680, &qword_100AEE678);
  Form.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v15 = sub_10000B58C(&qword_100AEE688, &qword_100AEE670);
  View.navigationTitle(_:)();

  (*(v12 + 8))(v14, v11);
  v16 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v16, v18);
  v75 = v11;
  v76 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v60;
  v23 = v59;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v17 + 8))(v20, v16);
  (*(v61 + 8))(v10, v23);
  v24 = v71;
  v72 = v71;
  sub_1000F24EC(&qword_100AEE690);
  v75 = v23;
  v76 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10000B58C(&qword_100AEE698, &qword_100AEE690);
  v25 = v62;
  View.toolbar<A>(content:)();
  (*(v63 + 8))(v22, v25);
  v26 = type metadata accessor for PrintEntriesView(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26 - 8);
  sub_100701F1C(v24, &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v29 = static MainActor.shared.getter();
  v30 = *(v27 + 80);
  v63 = ~v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_100702164(&v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + ((v30 + 32) & ~v30));
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v58 - v35;
  static TaskPriority.userInitiated.getter();
  if (sub_1008C158C(2, 26, 4, 0))
  {
    v61 = type metadata accessor for _TaskModifier2();
    v62 = &v58;
    v60 = *(v61 - 8);
    __chkstk_darwin(v61);
    v59 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v75 = 0xD00000000000002BLL;
    v76 = 0x8000000100902120;
    v74 = 97;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v58 = &v58;
    v40 = __chkstk_darwin(v39);
    (*(v33 + 16))(&v58 - v35, &v58 - v35, v32, v40);
    v41 = v59;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v33 + 8))(v36, v32);
    v42 = v66;
    (*(v64 + 32))(v66, v70, v65);
    v43 = sub_1000F24EC(&qword_100AD0EA8);
    (*(v60 + 4))(&v42[*(v43 + 36)], v41, v61);
  }

  else
  {
    v44 = sub_1000F24EC(&qword_100AD0EB0);
    v45 = v66;
    v46 = &v66[*(v44 + 36)];
    v47 = type metadata accessor for _TaskModifier();
    (*(v33 + 32))(&v46[*(v47 + 20)], &v58 - v35, v32);
    *v46 = &unk_1009649C8;
    *(v46 + 1) = v31;
    v42 = v45;
    (*(v64 + 32))(v45, v70, v65);
  }

  sub_1000F24EC(&qword_100AEE5B0);
  v48 = v71;
  Bindable.wrappedValue.getter();
  sub_100705418(&v75);

  v50 = v75;
  __chkstk_darwin(v49);
  sub_100701F1C(v48, &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = (v30 + 16) & v63;
  v52 = swift_allocObject();
  sub_100702164(&v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51);
  v53 = sub_1000F24EC(&qword_100AEE6A0);
  v54 = v69;
  v55 = (v69 + *(v53 + 36));
  v56 = sub_1000F24EC(&qword_100AE84A8);
  static TaskPriority.userInitiated.getter();
  *(v55 + *(v56 + 40)) = v50;
  *v55 = &unk_1009649E0;
  v55[1] = v52;
  return (*(v67 + 32))(v54, v42, v68);
}

uint64_t sub_1006FEB50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000F24EC(&qword_100AEE6E0);
  __chkstk_darwin(v3 - 8);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v36 - v6;
  v37 = sub_1000F24EC(&qword_100AEE6E8);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v42 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v47[0] = Text.init(_:tableName:bundle:comment:)();
  v47[1] = v12;
  v48 = v13 & 1;
  v49 = v14;
  sub_1000F24EC(&qword_100AEE6F0);
  v15 = sub_1000F2A18(&qword_100AEE6F8);
  v16 = sub_1000F2A18(&qword_100AEE700);
  v17 = type metadata accessor for InlinePickerStyle();
  v18 = sub_10000B58C(&qword_100AEE708, &qword_100AEE700);
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = &protocol witness table for InlinePickerStyle;
  v19 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v15;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v11;
  Section<>.init(header:content:)();
  sub_1000F24EC(&qword_100AEE5B0);
  Bindable.wrappedValue.getter();
  v22 = v47[0];
  swift_getKeyPath();
  v47[0] = v22;
  sub_100701E78(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates);

  if (v23 == 1)
  {
    __chkstk_darwin(v24);
    sub_1006FFEEC(v47);
    sub_1000F24EC(&qword_100AEE720);
    sub_1000F24EC(&qword_100ADDAD0);
    sub_10000B58C(&qword_100AEE728, &qword_100AEE720);
    sub_1002F4F18();
    Section<>.init(footer:content:)();
    v19 = 0;
  }

  v25 = sub_1000F24EC(&qword_100AEE710);
  v26 = v41;
  (*(*(v25 - 8) + 56))(v41, v19, 1, v25);
  v27 = v7;
  v28 = *(v7 + 16);
  v29 = v37;
  v30 = v38;
  v28(v38, v21, v37);
  v31 = v39;
  sub_1000082B4(v26, v39, &qword_100AEE6E0);
  v32 = v40;
  v28(v40, v30, v29);
  v33 = sub_1000F24EC(&qword_100AEE718);
  sub_1000082B4(v31, &v32[*(v33 + 48)], &qword_100AEE6E0);
  sub_1007027EC(v26);
  v34 = *(v27 + 8);
  v34(v21, v29);
  sub_1007027EC(v31);
  return (v34)(v30, v29);
}

uint64_t sub_1006FF0D8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for InlinePickerStyle();
  v29 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AEE5B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_1000F24EC(&qword_100AEE700);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = sub_1000F24EC(&qword_100AEE6F8);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v24 = v16;
  v25 = v15;
  v22[1] = v17;
  v23 = v18;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v5 + 8))(v7, v4);
  v35 = v38;
  v36 = v39;
  v37 = v40;
  static Animation.default.getter();
  sub_1000F24EC(&qword_100AEE738);
  Binding.animation(_:)();

  v38 = v31;
  v39 = v32;
  v40 = v33;
  sub_1000F24EC(&qword_100AEE740);
  sub_10070285C();
  sub_10000B58C(&qword_100AEE750, &qword_100AEE740);
  Picker<>.init(_:selection:content:)();
  InlinePickerStyle.init()();
  v19 = sub_10000B58C(&qword_100AEE708, &qword_100AEE700);
  View.pickerStyle<A>(_:)();
  (*(v29 + 8))(v3, v1);
  (*(v26 + 8))(v10, v8);
  v31 = v8;
  v32 = v1;
  v33 = v19;
  v34 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  View.labelsHidden()();
  return (*(v28 + 8))(v14, v20);
}

uint64_t sub_1006FF584@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AEE758);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v25[-v7];
  __chkstk_darwin(v9);
  v11 = &v25[-v10];
  __chkstk_darwin(v12);
  v14 = &v25[-v13];
  LocalizedStringKey.init(stringLiteral:)();
  *v14 = Text.init(_:tableName:bundle:comment:)();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 16) = 256;
  LocalizedStringKey.init(stringLiteral:)();
  *v11 = Text.init(_:tableName:bundle:comment:)();
  *(v11 + 1) = v18;
  v11[16] = v19 & 1;
  *(v11 + 3) = v20;
  *(v11 + 16) = 257;
  v21 = *(v3 + 16);
  v21(v8, v14, v2);
  v21(v5, v11, v2);
  v21(a1, v8, v2);
  v22 = sub_1000F24EC(&qword_100AEE760);
  v21(&a1[*(v22 + 48)], v5, v2);
  v23 = *(v3 + 8);
  v23(v11, v2);
  v23(v14, v2);
  v23(v5, v2);
  return (v23)(v8, v2);
}

uint64_t sub_1006FF840@<X0>(char *a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v1 - 8);
  v49 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD2688);
  __chkstk_darwin(v3 - 8);
  v52 = v39 - v4;
  v5 = sub_1000F24EC(&qword_100AD2690);
  __chkstk_darwin(v5 - 8);
  v39[1] = v39 - v6;
  v7 = sub_1000F24EC(&qword_100AEE5B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - v9;
  v11 = sub_1000F24EC(&qword_100AD4018);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v50 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = v39 - v15;
  __chkstk_darwin(v16);
  v47 = v39 - v17;
  __chkstk_darwin(v18);
  v46 = v39 - v19;
  v20 = LocalizedStringKey.init(stringLiteral:)();
  v42 = v21;
  v43 = v20;
  v40 = v22;
  v41 = v23;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v24 = *(v8 + 8);
  v44 = v8 + 8;
  v45 = v24;
  v24(v10, v7);
  Bindable.wrappedValue.getter();
  sub_1007038FC(v52);

  static DatePickerComponents.date.getter();
  DatePicker<>.init(_:selection:in:displayedComponents:)();
  v25 = LocalizedStringKey.init(stringLiteral:)();
  v42 = v26;
  v43 = v25;
  v40 = v27;
  v41 = v28;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v45(v10, v7);
  Bindable.wrappedValue.getter();
  sub_1007041C0(v52);

  static DatePickerComponents.date.getter();
  v29 = v47;
  DatePicker<>.init(_:selection:in:displayedComponents:)();
  v30 = *(v12 + 16);
  v31 = v48;
  v32 = v46;
  v30(v48, v46, v11);
  v33 = v50;
  v34 = v29;
  v30(v50, v29, v11);
  v35 = v51;
  v30(v51, v31, v11);
  v36 = sub_1000F24EC(&qword_100AEE730);
  v30(&v35[*(v36 + 48)], v33, v11);
  v37 = *(v12 + 8);
  v37(v34, v11);
  v37(v32, v11);
  v37(v33, v11);
  return (v37)(v31, v11);
}

uint64_t sub_1006FFD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v14(v13, a1, v10);
  v14(v9, v13, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  a5(v9);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1006FFEEC@<X0>(uint64_t *a1@<X8>)
{
  sub_1000F24EC(&qword_100AEE5B0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_100701E78(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v8 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid);

  if (v2)
  {
    result = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    result = Text.init(_:tableName:bundle:comment:)();
    v5 = v7 & 1;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100700024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_1000F24EC(&qword_100AEE6A8);
  __chkstk_darwin(v25);
  v23 = &v21 - v3;
  v24 = sub_1000F24EC(&qword_100AEE6B0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v21 = sub_1000F24EC(&qword_100AEE6B8);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v21 - v8;
  static ToolbarItemPlacement.cancellationAction.getter();
  v28 = a1;
  sub_1000F24EC(&qword_100AEE6C0);
  v10 = sub_1000F2A18(&qword_100AE3638);
  v11 = sub_10000B58C(&qword_100AE3640, &qword_100AE3638);
  v29 = v10;
  v30 = v11;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v27 = a1;
  sub_1000F24EC(&qword_100AEE6C8);
  v12 = sub_1000F2A18(&qword_100AEE6D0);
  v13 = sub_10000B58C(&qword_100AEE6D8, &qword_100AEE6D0);
  v29 = v12;
  v30 = v13;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v14 = *(v25 + 48);
  v15 = v23;
  v16 = v21;
  (*(v7 + 16))(v23, v9, v21);
  v17 = v22;
  v18 = &v15[v14];
  v19 = v24;
  (*(v22 + 16))(v18, v5, v24);
  TupleToolbarContent.init(_:)();
  (*(v17 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_100700408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = type metadata accessor for KeyboardShortcut();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrintEntriesView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000F24EC(&qword_100AE3638);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  static ButtonRole.cancel.getter();
  sub_100701F1C(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_100702164(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button<>.init(role:action:)();
  static KeyboardShortcut.cancelAction.getter();
  sub_10000B58C(&qword_100AE3640, &qword_100AE3638);
  View.keyboardShortcut(_:)();
  (*(v3 + 8))(v5, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1007006E8(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD6FE8);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrintEntriesView(0);
  sub_1000082B4(a1 + *(v12 + 20), v7, &qword_100AD6FE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100700970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v26 = type metadata accessor for KeyboardShortcut();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrintEntriesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v23 = sub_1000F24EC(&qword_100AEE6D0);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v21 - v8;
  v10 = LocalizedStringKey.init(stringLiteral:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_100701F1C(v22, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_100702164(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v27 = v10;
  v28 = v12;
  v29 = v14 & 1;
  v30 = v16;
  v31 = 0x7265746E697270;
  v32 = 0xE700000000000000;
  sub_1000F24EC(&qword_100AD3FC0);
  sub_10000B58C(&qword_100AD3FD0, &qword_100AD3FC0);
  Button.init(action:label:)();

  static KeyboardShortcut.defaultAction.getter();
  sub_10000B58C(&qword_100AEE6D8, &qword_100AEE6D0);
  v19 = v23;
  View.keyboardShortcut(_:)();
  (*(v24 + 8))(v3, v26);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_100700CCC(uint64_t a1)
{
  v2 = type metadata accessor for WithCurrentHostingControllerAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PrintEntriesView(0);
  sub_1003D89CC(v5);
  v8 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100700DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  type metadata accessor for MainActor();
  v3[4] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[5] = v5;
  v3[6] = v4;

  return _swift_task_switch(sub_100700E68, v5, v4);
}

uint64_t sub_100700E68()
{
  sub_1000F24EC(&qword_100AEE5B0);
  Bindable.wrappedValue.getter();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100700F1C;

  return sub_100704800();
}

uint64_t sub_100700F1C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1002D836C, v3, v2);
}

uint64_t sub_100701060(uint64_t a1)
{
  v1[3] = a1;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1007010F8, v3, v2);
}

uint64_t sub_1007010F8()
{
  sub_1000F24EC(&qword_100AEE5B0);
  Bindable.wrappedValue.getter();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003FCB9C;

  return sub_100705688();
}

void sub_1007011AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrintEntriesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v5;
    v14 = a2;
    v15 = a1;
    v16 = [v15 presentingViewController];
    v17 = v16;
    if (!v16)
    {
      v17 = v15;
    }

    v27 = v16;
    sub_1003D897C(v13);
    DismissAction.callAsFunction()();
    (*(v11 + 8))(v13, v10);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = v14;
    v20 = v28;
    sub_100701F1C(v19, v28);
    type metadata accessor for MainActor();
    v21 = v17;
    v22 = static MainActor.shared.getter();
    v23 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = &protocol witness table for MainActor;
    sub_100702164(v20, v25 + v23);
    *(v25 + v24) = v21;
    sub_1003E9628(0, 0, v9, &unk_100964A30, v25);
  }
}

uint64_t sub_1007014A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_100701598, v8, v7);
}

uint64_t sub_100701598()
{
  sub_1000F24EC(&qword_100AEE5B0);
  Bindable.wrappedValue.getter();
  v0[13] = v0[2];
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v2;
  v0[16] = v1;

  return _swift_task_switch(sub_10070164C, v2, v1);
}

uint64_t sub_10070164C()
{
  (*(v0[7] + 104))(v0[8], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[6]);

  v1 = swift_task_alloc();
  v0[17] = v1;
  v2 = sub_1000F24EC(&qword_100AD4D90);
  *v1 = v0;
  v1[1] = sub_100701758;
  v3 = v0[13];
  v4 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v4, sub_10070273C, v3, v2);
}

uint64_t sub_100701758()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = v2[15];
    v5 = v2[16];

    return _swift_task_switch(sub_1007018AC, v4, v5);
  }
}

uint64_t sub_1007018AC()
{

  v0[18] = v0[3];
  v1 = v0[11];
  v2 = v0[12];

  return _swift_task_switch(sub_100701920, v1, v2);
}

uint64_t sub_100701920()
{

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[5];
  v3 = qword_100B30290;
  sub_1001A9F04(v1, 1, v2, 0, 0);

  v4 = v0[1];

  return v4();
}

void *sub_100701A08()
{
  v0 = sub_1000F24EC(&qword_100AEE590);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = type metadata accessor for PrintEntriesView(0);
  __chkstk_darwin(v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PrintEntriesViewModel();
  swift_allocObject();
  sub_1007066D0();
  sub_100701E78(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  Bindable<A>.init(wrappedValue:)();
  v10 = *(v7 + 20);
  *&v9[v10] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD6FE8);
  swift_storeEnumTagMultiPayload();
  v11 = *(v7 + 24);
  *&v9[v11] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B0);
  swift_storeEnumTagMultiPayload();
  v17 = v9;
  sub_100701E78(&qword_100AEE5A0, type metadata accessor for PrintEntriesView);
  NavigationStack.init<>(root:)();
  (*(v1 + 16))(v3, v6, v0);
  sub_10000B58C(&qword_100AEE5A8, &qword_100AEE590);
  v18 = AnyView.init<A>(_:)();
  v12 = UIHostingController.init(rootView:)();
  v13 = [v12 traitCollection];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 5)
  {
    [v12 setPreferredContentSize:{380.0, 400.0}];
  }

  (*(v1 + 8))(v6, v0);
  sub_100701EC0(v9);
  return v12;
}

uint64_t sub_100701D6C()
{
  type metadata accessor for PrintEntriesViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100701DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrintEntriesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100701E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100701EC0(uint64_t a1)
{
  v2 = type metadata accessor for PrintEntriesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100701F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrintEntriesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100701FA8()
{
  sub_1007020D4(319, &unk_100AEE620, type metadata accessor for PrintEntriesViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    sub_1007020D4(319, &qword_100AD7070, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1007020D4(319, &qword_100AE2750, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007020D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100702164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrintEntriesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007021C8()
{
  v2 = *(type metadata accessor for PrintEntriesView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032EC8;

  return sub_100700DD0(v4, v5, v0 + v3);
}

uint64_t sub_1007022A4()
{
  v2 = *(type metadata accessor for PrintEntriesView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032ECC;

  return sub_100701060(v0 + v3);
}

uint64_t sub_100702380()
{
  v1 = type metadata accessor for PrintEntriesView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_1000F24EC(&qword_100AEE5B0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 20);
  sub_1000F24EC(&qword_100AD6FE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  sub_1000F24EC(&qword_100AE27B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10070256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10070261C(uint64_t a1)
{
  v4 = *(type metadata accessor for PrintEntriesView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1007014A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100702770(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PrintEntriesView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1007027EC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AEE6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10070285C()
{
  result = qword_100AEE748;
  if (!qword_100AEE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE748);
  }

  return result;
}

unint64_t sub_1007028B0()
{
  result = qword_100AEE768;
  if (!qword_100AEE768)
  {
    sub_1000F2A18(&qword_100AEE6A0);
    sub_1000F2A18(&qword_100AD0EA0);
    sub_1000F2A18(&qword_100AEE660);
    sub_1000F2A18(&qword_100AEE690);
    sub_1000F2A18(&qword_100AEE668);
    sub_1000F2A18(&qword_100AEE670);
    sub_10000B58C(&qword_100AEE688, &qword_100AEE670);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AEE698, &qword_100AEE690);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE84C0, &qword_100AE84A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE768);
  }

  return result;
}

uint64_t sub_100702B30()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEE770);
  sub_10000617C(v0, qword_100AEE770);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100702BA4()
{
  swift_getKeyPath();
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates);
}

uint64_t sub_100702C4C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100702DB4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *a1;
  swift_beginAccess();
  return sub_1000082B4(v2 + v5, a2, &unk_100AD4790);
}

uint64_t sub_100702E8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  return sub_1000082B4(v5 + v6, a3, &unk_100AD4790);
}

uint64_t sub_100702F90(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1000082B4(v2 + v8, v7, &unk_100AD4790);
  LOBYTE(a2) = sub_100706CAC(v7, a1);
  sub_100004F84(v7, &unk_100AD4790);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000082B4(a1, v7, &unk_100AD4790);
    swift_beginAccess();
    sub_100041B1C(v7, v2 + v8);
    swift_endAccess();
  }

  return sub_100004F84(a1, &unk_100AD4790);
}

uint64_t sub_1007031E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000082B4(a1, &v11 - v8, &unk_100AD4790);
  return a5(v9);
}

uint64_t sub_1007032C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_100221D8C(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_100703328()
{
  swift_getKeyPath();
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid);
}

uint64_t sub_1007033E4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1007034C0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1007035D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17 = a1;
  v3 = sub_1000F24EC(&unk_100AD4790);
  v4 = __chkstk_darwin(v3 - 8);
  v16 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  swift_getKeyPath();
  v19 = v1;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedStart;
  swift_beginAccess();
  sub_1000082B4(v2 + v8, v7, &unk_100AD4790);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(v17, v7, v9);
  }

  swift_getKeyPath();
  v18 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries;
  swift_beginAccess();
  v13 = v2 + v12;
  v14 = v16;
  sub_1000082B4(v13, v16, &unk_100AD4790);
  if (v11(v14, 1, v9) == 1)
  {
    (*(v10 + 16))(v17, v2 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_minFallback, v9);
    if (v11(v14, 1, v9) != 1)
    {
      sub_100004F84(v14, &unk_100AD4790);
    }
  }

  else
  {
    (*(v10 + 32))(v17, v14, v9);
  }

  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100004F84(v7, &unk_100AD4790);
  }

  return result;
}

uint64_t sub_1007038FC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v40 = sub_1000F24EC(&qword_100AD2680);
  __chkstk_darwin(v40);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = &v37 - v5;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v44 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  swift_getKeyPath();
  v46 = v1;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries;
  swift_beginAccess();
  sub_1000082B4(v2 + v17, v10, &unk_100AD4790);
  v18 = *(v12 + 48);
  v19 = v18(v10, 1, v11);
  v43 = v12;
  if (v19 == 1)
  {
    (*(v12 + 16))(v16, v2 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_minFallback, v11);
    if (v18(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
  }

  swift_getKeyPath();
  v45 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries;
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v42;
  sub_1000082B4(v21, v42, &unk_100AD4790);
  if (v18(v22, 1, v11) == 1)
  {
    v23 = v43;
    v24 = v2 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_maxFallback;
    v25 = v44;
    (*(v43 + 16))(v44, v24, v11);
    if (v18(v22, 1, v11) != 1)
    {
      sub_100004F84(v22, &unk_100AD4790);
    }
  }

  else
  {
    v23 = v43;
    v25 = v44;
    (*(v43 + 32))(v44, v22, v11);
  }

  sub_100706FF0(&qword_100AD2698, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v27 = v23;
    v28 = *(v23 + 32);
    v29 = v39;
    v28(v39, v16, v11);
    v30 = v38;
    v31 = v40;
    v28((v29 + *(v40 + 48)), v25, v11);
    sub_1000082B4(v29, v30, &qword_100AD2680);
    v32 = *(v31 + 48);
    v33 = v41;
    v28(v41, v30, v11);
    v34 = *(v27 + 8);
    v34(v30 + v32, v11);
    sub_100021CEC(v29, v30, &qword_100AD2680);
    v35 = *(v31 + 48);
    v36 = sub_1000F24EC(&qword_100AD2688);
    v28(&v33[*(v36 + 36)], (v30 + v35), v11);
    return (v34)(v30, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100703E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17 = a1;
  v3 = sub_1000F24EC(&unk_100AD4790);
  v4 = __chkstk_darwin(v3 - 8);
  v16 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  swift_getKeyPath();
  v19 = v1;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedEnd;
  swift_beginAccess();
  sub_1000082B4(v2 + v8, v7, &unk_100AD4790);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(v17, v7, v9);
  }

  swift_getKeyPath();
  v18 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries;
  swift_beginAccess();
  v13 = v2 + v12;
  v14 = v16;
  sub_1000082B4(v13, v16, &unk_100AD4790);
  if (v11(v14, 1, v9) == 1)
  {
    (*(v10 + 16))(v17, v2 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_maxFallback, v9);
    if (v11(v14, 1, v9) != 1)
    {
      sub_100004F84(v14, &unk_100AD4790);
    }
  }

  else
  {
    (*(v10 + 32))(v17, v14, v9);
  }

  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100004F84(v7, &unk_100AD4790);
  }

  return result;
}

uint64_t sub_1007041C0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v46 = sub_1000F24EC(&qword_100AD2680);
  __chkstk_darwin(v46);
  v47 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = v44 - v5;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v53 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v44 - v15;
  __chkstk_darwin(v17);
  v19 = v44 - v18;
  __chkstk_darwin(v20);
  v52 = v44 - v21;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel___observationRegistrar;
  v56 = v2;
  v50 = sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  v51 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries;
  swift_beginAccess();
  sub_1000082B4(v2 + v23, v10, &unk_100AD4790);
  v24 = *(v12 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    (*(v12 + 16))(v19, v2 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_minFallback, v11);
    if (v24(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
  }

  sub_1007035D8(v16);
  v49 = sub_100706FF0(&qword_100AD2698, &type metadata accessor for Date);
  v25 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v26 = *(v12 + 8);
  v27 = (v25 & 1) == 0;
  if (v25)
  {
    v28 = v19;
  }

  else
  {
    v28 = v16;
  }

  if (v27)
  {
    v16 = v19;
  }

  v44[0] = *(v12 + 8);
  v44[1] = v12 + 8;
  v26(v28, v11);
  v29 = *(v12 + 32);
  v30 = v52;
  v29(v52, v16, v11);
  swift_getKeyPath();
  v55 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries;
  swift_beginAccess();
  v32 = v53;
  sub_1000082B4(v2 + v31, v53, &unk_100AD4790);
  if (v24(v32, 1, v11) == 1)
  {
    v33 = v54;
    (*(v12 + 16))(v54, v2 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_maxFallback, v11);
    if (v24(v32, 1, v11) != 1)
    {
      sub_100004F84(v32, &unk_100AD4790);
    }
  }

  else
  {
    v33 = v54;
    v29(v54, v32, v11);
  }

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v35 = v30;
    v36 = v45;
    v29(v45, v35, v11);
    v37 = v46;
    v29((v36 + *(v46 + 48)), v33, v11);
    v38 = v47;
    sub_1000082B4(v36, v47, &qword_100AD2680);
    v39 = *(v37 + 48);
    v40 = v48;
    v29(v48, v38, v11);
    v41 = v44[0];
    (v44[0])(v38 + v39, v11);
    sub_100021CEC(v36, v38, &qword_100AD2680);
    v42 = *(v37 + 48);
    v43 = sub_1000F24EC(&qword_100AD2688);
    v29(&v40[*(v43 + 36)], (v38 + v42), v11);
    return v41(v38, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100704800()
{
  v1[10] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_1000F24EC(&unk_100AD5BE0);
  v1[15] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v4;
  v1[23] = v3;

  return _swift_task_switch(sub_100704998, v4, v3);
}

uint64_t sub_100704998()
{
  v1 = v0[20];
  v2 = v0[10];
  swift_getKeyPath();
  v0[8] = v2;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries;
  swift_beginAccess();
  sub_1000082B4(v2 + v3, v1, &unk_100AD4790);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);
  v6 = v5(v1, 1, v4);
  sub_100004F84(v1, &unk_100AD4790);
  if (v6 == 1)
  {
LABEL_4:
    (*(v0[12] + 104))(v0[13], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[11]);

    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_100704D20;
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    v13 = v0[10];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v12, sub_100706C90, v13, v11);
  }

  v16 = v0[19];
  v7 = v0[10];
  swift_getKeyPath();
  v0[9] = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries;
  swift_beginAccess();
  sub_1000082B4(v7 + v8, v16, &unk_100AD4790);
  if (v5(v16, 1, v4) == 1)
  {
    sub_100004F84(v0[19], &unk_100AD4790);
    goto LABEL_4;
  }

  sub_100004F84(v0[19], &unk_100AD4790);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100704D20()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = v2[22];
    v5 = v2[23];

    return _swift_task_switch(sub_100704E70, v4, v5);
  }
}

uint64_t sub_100704E70()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  v6 = *(v5 + 48);
  sub_100021CEC(v4, v2, &unk_100AD4790);
  sub_100021CEC(v4 + v6, v1, &unk_100AD4790);
  sub_1000082B4(v2, v3, &unk_100AD4790);
  sub_1007031A8(v3);
  sub_1000082B4(v1, v3, &unk_100AD4790);
  sub_100703298(v3);
  sub_100004F84(v1, &unk_100AD4790);
  sub_100004F84(v0[18], &unk_100AD4790);

  v7 = v0[1];

  return v7();
}

unint64_t sub_100704FDC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = (&v36 - v4);
  __chkstk_darwin(v5);
  v7 = (&v36 - v6);
  __chkstk_darwin(v8);
  v39 = &v36 - v9;
  __chkstk_darwin(v10);
  v12 = (&v36 - v11);
  __chkstk_darwin(v13);
  v15 = (&v36 - v14);
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v17(v12, 1, 1, v16);
  v18 = static JournalDataUtilities.fetchEntries(from:to:fetchLimit:context:)();
  sub_100004F84(v12, &unk_100AD4790);
  sub_100004F84(v15, &unk_100AD4790);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v39;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_19:
    v17(v20, 1, 1, v16);

    v34 = v38;
    v17(v38, 1, 1, v16);
    v33 = v34;
    v32 = v37;
LABEL_20:
    v35 = *(sub_1000F24EC(&unk_100AD5BE0) + 48);
    sub_100021CEC(v20, v32, &unk_100AD4790);
    return sub_100021CEC(v33, v32 + v35, &unk_100AD4790);
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v20 = v39;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_3:
  v21 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = (v18 & 0xC000000000000001);
  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = *(v18 + 8 * result + 32);
LABEL_8:
  v24 = v23;
  v15 = &selRef_setRegion_;
  v25 = [v23 entryDate];

  if (v25)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v17(v7, v26, 1, v16);
  v20 = v39;
  result = sub_100021CEC(v7, v39, &unk_100AD4790);
  if (v12)
  {
    goto LABEL_24;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v18 + 32);
LABEL_14:
    v28 = v27;

    v29 = [v28 v15[53]];

    if (v29)
    {
      v30 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = 0;
      v32 = v37;
    }

    else
    {
      v31 = 1;
      v32 = v37;
      v30 = v36;
    }

    v17(v30, v31, 1, v16);
    v33 = v38;
    sub_100021CEC(v30, v38, &unk_100AD4790);
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100705418@<X0>(uint64_t *a1@<X8>)
{
  v10 = a1;
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2);
  v4 = &v9 - v3;
  sub_1000F24EC(&qword_100AE2C70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100942000;
  swift_getKeyPath();
  v12 = v1;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v12) = *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates);
  sub_10070285C();
  AnyHashable.init<A>(_:)();
  swift_getKeyPath();
  v12 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedStart;
  swift_beginAccess();
  sub_1000082B4(v1 + v6, v4, &unk_100AD4790);
  sub_100706BDC();
  AnyHashable.init<A>(_:)();
  swift_getKeyPath();
  v11 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedEnd;
  swift_beginAccess();
  sub_1000082B4(v1 + v7, v4, &unk_100AD4790);
  result = AnyHashable.init<A>(_:)();
  *v10 = v5;
  return result;
}

uint64_t sub_100705688()
{
  v1[4] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;
  v1[10] = v3;

  return _swift_task_switch(sub_10070577C, v4, v3);
}

uint64_t sub_10070577C()
{
  (*(v0[6] + 104))(v0[7], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[5]);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100705874;
  v2 = v0[7];
  v3 = v0[4];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 13, v2, sub_100706BA8, v3, &type metadata for Bool);
}

uint64_t sub_100705874()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  v3 = v2[10];
  v4 = v2[9];
  if (v0)
  {
    v5 = sub_100705B74;
  }

  else
  {
    v5 = sub_100705A18;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100705A18()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 104);
  if (v2 == *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid))
  {
    *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid) = v2;
  }

  else
  {
    v3 = *(v0 + 32);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    *(v0 + 24) = v3;
    sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100705B74()
{

  if (qword_100AD0288 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEE770);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "PrintEntriesViewController.fetchEntryCount error %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  v7 = v0[4];

  v8 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid;
  if (*(v7 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid))
  {
    v9 = v0[4];
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v0[2] = v9;
    sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v7 + v8) = 0;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100705DF4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  swift_getKeyPath();
  v23[1] = a1;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates))
  {
    sub_1007035D8(v10);
    v17 = type metadata accessor for Date();
    v18 = *(*(v17 - 8) + 56);
    v18(v10, 0, 1, v17);
    sub_100703E9C(v7);
    v18(v7, 0, 1, v17);
    v19 = static JournalDataUtilities.getValidEntriesCount(from:to:fetchLimit:context:)();
    sub_100004F84(v7, &unk_100AD4790);
    result = sub_100004F84(v10, &unk_100AD4790);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v21 = type metadata accessor for Date();
    v22 = *(*(v21 - 8) + 56);
    v22(v16, 1, 1, v21);
    v22(v13, 1, 1, v21);
    v19 = static JournalDataUtilities.getValidEntriesCount(from:to:fetchLimit:context:)();
    sub_100004F84(v13, &unk_100AD4790);
    result = sub_100004F84(v16, &unk_100AD4790);
    if (v2)
    {
      return result;
    }
  }

  *a2 = v19 != 0;
  return result;
}

uint64_t sub_100706104@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  swift_getKeyPath();
  v16[1] = a1;
  sub_100706FF0(&qword_100AEE598, type metadata accessor for PrintEntriesViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates))
  {
    sub_1007035D8(v9);
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 56);
    v11(v9, 0, 1, v10);
    sub_100703E9C(v6);
    v11(v6, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v13(v9, 1, 1, v12);
    v13(v6, 1, 1, v12);
  }

  v14 = static JournalDataUtilities.getTimelineEntriesIDs(from:to:fetchLimit:context:)();
  sub_100004F84(v6, &unk_100AD4790);
  result = sub_100004F84(v9, &unk_100AD4790);
  *a2 = v14;
  return result;
}

uint64_t sub_100706368()
{
  v1 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_minFallback;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_maxFallback, v2);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedStart, &unk_100AD4790);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedEnd, &unk_100AD4790);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries, &unk_100AD4790);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries, &unk_100AD4790);
  v4 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrintEntriesViewModel()
{
  result = qword_100AEE7E8;
  if (!qword_100AEE7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100706540()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100008F84();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10070667C()
{
  result = qword_100AEEA78;
  if (!qword_100AEEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEA78);
  }

  return result;
}

uint64_t sub_1007066D0()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Calendar();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  *(v1 + 16) = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v23 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel_minFallback;
  static Date.now.getter();
  static Calendar.current.getter();
  (*(v3 + 104))(v5, enum case for Calendar.Component.month(_:), v2);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v24);
  (*(v10 + 8))(v12, v9);
  v16 = *(v10 + 48);
  if (v16(v15, 1, v9) == 1)
  {
    static Date.now.getter();
    if (v16(v15, 1, v9) != 1)
    {
      sub_100004F84(v15, &unk_100AD4790);
    }
  }

  else
  {
    (*(v10 + 32))(v1 + v23, v15, v9);
  }

  static Date.now.getter();
  *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__dates) = 0;
  v17 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedStart;
  v18 = *(v10 + 56);
  v18(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedStart, 1, 1, v9);
  v18(v1 + v17, 1, 1, v9);
  v19 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedEnd;
  v18(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__selectedEnd, 1, 1, v9);
  v18(v1 + v19, 1, 1, v9);
  v20 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries;
  v18(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__minFromEntries, 1, 1, v9);
  v18(v1 + v20, 1, 1, v9);
  v21 = OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries;
  v18(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__maxFromEntries, 1, 1, v9);
  v18(v1 + v21, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC7Journal21PrintEntriesViewModel__areSelectedDatesValid) = 1;
  ObservationRegistrar.init()();
  return v1;
}

unint64_t sub_100706BDC()
{
  result = qword_100AEEA80;
  if (!qword_100AEEA80)
  {
    sub_1000F2A18(&unk_100AD4790);
    sub_100706FF0(&unk_100AEE080, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEA80);
  }

  return result;
}

uint64_t sub_100706CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000F24EC(&unk_100AD5BE0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000082B4(a1, &v21 - v13, &unk_100AD4790);
  sub_1000082B4(a2, &v14[v15], &unk_100AD4790);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000082B4(v14, v10, &unk_100AD4790);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100706FF0(&qword_100AD5BF0, &type metadata accessor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100004F84(v14, &unk_100AD4790);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100004F84(v14, &unk_100AD5BE0);
    v17 = 1;
    return v17 & 1;
  }

  sub_100004F84(v14, &unk_100AD4790);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100706FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007071E0()
{
  v1 = v0;
  v2 = UICellConfigurationState.isFocused.getter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
    if (v4 && (v5 = [v4 indexPathsForSelectedItems]) != 0)
    {
      v6 = v5;
      type metadata accessor for IndexPath();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);

      if ((v8 > 1) | v2 & 1)
      {
        goto LABEL_9;
      }
    }

    else if (v2)
    {
LABEL_9:
      [v0 bounds];
      v37 = CGRectInset(v36, 4.0, 4.0);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      v15 = OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer;
      v16 = OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView;
      v17 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView];
      v18 = *&v1[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer];
      v19 = [v17 layer];
      [v19 cornerRadii];

      v20 = sub_100266838(v34, x, y, width, height);
      [v18 setPath:v20];

      [*&v1[v15] setFillColor:0];
      v21 = *&v1[v15];
      v22 = objc_opt_self();
      v23 = v21;
      v24 = [v22 tintColor];
      v25 = [v24 CGColor];

      [v23 setStrokeColor:v25];
      [*&v1[v15] setLineWidth:4.0];
      v26 = *&v1[v16];
      v27 = *&v1[v15];
      v28 = [v26 layer];
      [v28 cornerRadii];

      [v27 setCornerRadii:&v33];
      v29 = *&v1[v16];
      v30 = *&v1[v15];
      v31 = [v29 layer];
      v32 = [v31 cornerCurve];

      [v30 setCornerCurve:v32];
      [*&v1[v15] setHidden:0];
      return swift_unknownObjectRelease();
    }

    v9 = [v0 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 5 && (UICellConfigurationState.isSelected.getter() & 1) != 0)
    {
      goto LABEL_9;
    }

    [*&v0[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer] setHidden:1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1007075A0()
{
  v1 = type metadata accessor for AssetType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView;
  if (!*&v0[OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView])
  {
    v7 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset];
    if (v7)
    {
      v8 = *&v7[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      if (v8)
      {
        v40 = v3;
        v9 = v0;
        v43 = v8;
        type metadata accessor for JournalEntryAssetMO();
        v10 = v7;
        if (MinimumSupportedVersion.isEditingSupported.getter())
        {
          type metadata accessor for CanvasAssetDeleteView();
          v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v12 = *&v0[v6];
          *&v0[v6] = v11;
          v13 = v11;

          v14 = v13;
          v15 = [v14 superview];
          if (v15)
          {
          }

          else
          {
            [v9 addSubview:v14];
            [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
            v19 = [v14 widthAnchor];
            v20 = [v19 constraintEqualToConstant:44.0];

            [v20 setActive:1];
            [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
            v21 = [v14 heightAnchor];
            v22 = [v14 widthAnchor];
            v23 = [v21 constraintEqualToAnchor:v22 multiplier:1.0];

            [v23 setActive:1];
            v24 = [v14 superview];
            v39 = v11;
            if (v24)
            {
              v25 = v24;
              [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
              v26 = [v14 topAnchor];
              v27 = [v25 topAnchor];
              v28 = v10;
              v29 = [v26 constraintEqualToAnchor:v27];

              [v29 setConstant:0.0];
              [v29 setActive:1];

              v10 = v28;
              v11 = v39;
            }

            v30 = [v14 superview];
            if (v30)
            {
              v31 = v30;
              [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
              v32 = [v14 trailingAnchor];
              v33 = [v31 trailingAnchor];
              v34 = v10;
              v35 = [v32 constraintEqualToAnchor:v33];

              [v35 setConstant:0.0];
              [v35 setActive:1];

              v10 = v34;
              v11 = v39;
            }

            v36 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v37 = &v14[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
            *v37 = sub_10070916C;
            v37[1] = v36;
          }

          (*(v2 + 104))(v5, enum case for AssetType.audio(_:), v40);
          sub_10009761C();
          v7 = v14;
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v43 == v41 && v44 == v42)
          {
            v38 = 1;
          }

          else
          {
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          (*(v2 + 8))(v5, v40);

          [v7 setIsAccessibilityElement:v38 & 1];

          sub_100809C10(v11, v9, DebugData.init(name:), 0);
        }

        else
        {
          v17 = *&v0[v6];
          if (v17)
          {
            v18 = v17;
            [v18 removeFromSuperview];

            v7 = v10;
          }
        }
      }

      else
      {
        v16 = v7;
      }
    }
  }
}

void sub_100707B60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10058E904(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100707BE0()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10043C168;
    *(v4 + 24) = v3;
    v17 = sub_100028EF4;
    v18 = v4;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001A7D4;
    v16 = &unk_100A79BC0;
    v5 = _Block_copy(&v13);
    v6 = v1;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v17 = sub_10043C170;
      v18 = v7;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_100006C7C;
      v16 = &unk_100A79C10;
      v8 = _Block_copy(&v13);
      v9 = v6;

      v10 = swift_allocObject();
      v10[2] = sub_100707ED8;
      v10[3] = 0;
      v10[4] = v0;
      v17 = sub_10043C178;
      v18 = v10;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_10003264C;
      v16 = &unk_100A79C60;
      v11 = _Block_copy(&v13);
      v12 = v0;

      [v2 animateWithDuration:4 delay:v8 options:v11 animations:0.0 completion:0.0];

      _Block_release(v11);
      _Block_release(v8);
    }
  }

  else if ((v0[OBJC_IVAR____TtC7Journal10MosaicCell_isEditing] & 1) == 0)
  {
    *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView] = 0;
  }
}

void sub_100707ED8(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView;
    if (*(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView))
    {
      v3 = a1;
      [*(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView) removeFromSuperview];
      a1 = v3;
      v4 = *(v3 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + v2) = 0;
  }
}

uint64_t sub_100707F50()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Journal10MosaicCell_overflowView;
  if (!*&v0[OBJC_IVAR____TtC7Journal10MosaicCell_overflowView])
  {
    v8 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail + 8];
    v9 = [objc_allocWithZone(type metadata accessor for CanvasAssetOverflowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_1001353BC(v8);

    v10 = *&v1[v7];
    *&v1[v7] = v9;
    v11 = v9;

    v12 = v11;
    [v1 addSubview:v12];
    (*(v3 + 104))(v6, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v2);
    v13 = JournalFeatureFlags.isEnabled.getter();
    (*(v3 + 8))(v6, v2);
    v14 = [v12 superview];
    v15 = v14;
    if (v13)
    {
      v16 = -6.0;
      v17 = 6.0;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v14)
      {
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        v18 = [v12 topAnchor];
        v19 = [v15 topAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];

        [v20 setConstant:2.0];
        [v20 setActive:1];
      }

      v21 = [v12 superview];
      if (v21)
      {
        v22 = v21;
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        v23 = [v12 leadingAnchor];
        v24 = [v22 leadingAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];

        [v25 setConstant:2.0];
        [v25 setActive:1];
      }

      v26 = [v12 superview];
      v17 = 2.0;
      if (!v26)
      {
        goto LABEL_12;
      }

      v15 = v26;
      v16 = -2.0;
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v12 trailingAnchor];
    v28 = [v15 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:v16];
    [v29 setActive:1];

LABEL_12:
    v30 = [v12 layer];

    v31 = [*&v1[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView] layer];
    [v31 cornerRadii];
    v36 = v39;
    v37 = v38;
    v34 = v41;
    v35 = v40;

    v38 = v37;
    v39 = v36;
    v40 = v35;
    v41 = v34;
    [v30 setCornerRadii:&v38];

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = &v12[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_tapCompletion];
    *v33 = sub_100709164;
    v33[1] = v32;
  }

  return result;
}

void sub_100708430()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 16))(ObjectType, v4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double *sub_1007084F8()
{
  v1 = OBJC_IVAR____TtC7Journal10MosaicCell____lazy_storage___mosaicAccessibilityCustomActions;
  if (*(v0 + OBJC_IVAR____TtC7Journal10MosaicCell____lazy_storage___mosaicAccessibilityCustomActions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell____lazy_storage___mosaicAccessibilityCustomActions);
  }

  else
  {
    v2 = sub_100708560(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

double *sub_100708560(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_showResizeMenu);
  v3 = "@0:8@16";
  v4 = &selRef_initWithName_managedObjectModel_;
  if (v2 == 2 || (v2 & 1) == 0)
  {
    p_aBlock = 0;
  }

  else
  {
    if (qword_100AD08C8 != -1)
    {
      swift_once();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_allocWithZone(UIAccessibilityCustomAction);

    v7 = String._bridgeToObjectiveC()();
    v33 = sub_10070915C;
    v34 = v5;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_1004B7420;
    v32 = &unk_100A79B20;
    v8 = _Block_copy(&aBlock);
    p_aBlock = [v6 initWithName:v7 actionHandler:v8];

    _Block_release(v8);
  }

  if (*(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView))
  {
    if (qword_100AD0830 != -1)
    {
      swift_once();
    }

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UIAccessibilityCustomAction);

    v12 = String._bridgeToObjectiveC()();
    v33 = sub_100709154;
    v34 = v10;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_1004B7420;
    v32 = &unk_100A79AF8;
    v13 = _Block_copy(&aBlock);
    v14 = [v11 initWithName:v12 actionHandler:v13];

    _Block_release(v13);
  }

  else
  {
    v14 = 0;
  }

  if (qword_100AD0808 != -1)
  {
LABEL_25:
    swift_once();
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = objc_allocWithZone(UIAccessibilityCustomAction);

  v17 = String._bridgeToObjectiveC()();
  v33 = sub_10070914C;
  v34 = v15;
  aBlock = _NSConcreteStackBlock;
  v30 = *(v3 + 148);
  v31 = sub_1004B7420;
  v32 = &unk_100A79AD0;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 *(v4 + 648)];

  _Block_release(v18);

  v28[4] = p_aBlock;
  v28[5] = v14;
  v28[6] = v19;
  v20 = _swiftEmptyArrayStorage;
  aBlock = _swiftEmptyArrayStorage;
  v21 = v14;
  v14 = v19;
  v22 = p_aBlock;
  v23 = 0;
  v4 = 3;
LABEL_14:
  if (v23 <= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = v23;
  }

  while (v23 != 3)
  {
    if (v24 == v23)
    {
      __break(1u);
      goto LABEL_25;
    }

    v25 = v28[v23++ + 4];
    if (v25)
    {
      v26 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v3 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      p_aBlock = &aBlock;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = aBlock;
      goto LABEL_14;
    }
  }

  sub_1000F24EC(&qword_100AEEB10);
  swift_arrayDestroy();

  return v20;
}

BOOL sub_100708A38()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *&Strong[OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset];
      if (v6)
      {
        swift_getObjectType();
        v7 = swift_conformsToProtocol2();
        if (v7)
        {
          v8 = v7;
          *(v5 + OBJC_IVAR____TtC7Journal14CanvasGridView_wantsContextMenuDismissalPreview) = 0;
          v9 = type metadata accessor for TaskPriority();
          (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
          type metadata accessor for MainActor();
          v10 = v6;
          swift_unknownObjectRetain();
          v11 = static MainActor.shared.getter();
          v12 = swift_allocObject();
          v12[2] = v11;
          v12[3] = &protocol witness table for MainActor;
          v12[4] = v5;
          v12[5] = v10;
          v12[6] = v8;
          sub_1003E9628(0, 0, v2, &unk_10095E410, v12);
        }
      }

      swift_unknownObjectRelease();
    }
  }

  return Strong != 0;
}

BOOL sub_100708C1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      v2 = v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        ObjectType = swift_getObjectType();
        (*(v3 + 16))(ObjectType, v3);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return Strong != 0;
}

BOOL sub_100708CEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10058E904(Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return Strong != 0;
}

id sub_100708EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MosaicCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100708FBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView);
  sub_1005307DC(v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 8);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100709080()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView);
  sub_1005307DC(v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 24);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

void sub_100709174()
{
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer;
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeInset) = 0x4010000000000000;
  v2 = v0 + OBJC_IVAR____TtC7Journal10MosaicCell_index;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) = 0;
  v3 = v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_showResizeMenu) = 2;
  *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell____lazy_storage___mosaicAccessibilityCustomActions) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1007092B8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_100B303D8];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id sub_1007093C8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1 && (v2 = objc_opt_self(), v3 = [v2 secondaryLabelColor], v4 = objc_msgSend(v1, "imageWithTintColor:renderingMode:", v3, 2), v1, v3, v4))
  {
    v5 = [objc_opt_self() textAttachmentWithImage:v4];
    v6 = [objc_opt_self() attributedStringWithAttachment:v5];
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940050;
    *(inited + 32) = NSFontAttributeName;
    v8 = qword_100AD03E0;
    v9 = NSFontAttributeName;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_100B303D8;
    v11 = sub_1000065A8(0, &qword_100AD2A78);
    *(inited + 40) = v10;
    *(inited + 64) = v11;
    *(inited + 72) = NSForegroundColorAttributeName;
    v12 = v10;
    v13 = NSForegroundColorAttributeName;
    v14 = [v2 secondaryLabelColor];
    *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70);
    *(inited + 80) = v14;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_1000F24EC(&unk_100AD9210);
    swift_arrayDestroy();
    v15 = objc_allocWithZone(NSMutableAttributedString);
    v16 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100006B5C(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithString:v16 attributes:isa];

    [v18 appendAttributedString:v6];
    return v18;
  }

  else
  {
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 initWithString:v21];

    return v22;
  }
}

id sub_100709744()
{
  v1 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1007097B8(void *a1)
{
  v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_previousSizeType] = 8;
  v3 = &v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_durationText];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_hasTranscription] = 0;
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView] = 0;
  v4 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton;
  type metadata accessor for PlaybackButton();
  *&v1[v4] = sub_100083FB0(0);
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerLabel] = 0;
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___bulletAndTranscriptImageAttributedString] = 0;
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint] = 0;
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AudioAssetTranscriptionGridView();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_100085208();
  }

  return v6;
}

void sub_1007098F0()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1003E9628(0, 0, v2, &unk_100964DC8, v8);
  }
}

uint64_t sub_100709A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100709ADC, v6, v5);
}

uint64_t sub_100709ADC()
{
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  withObservationTracking<A>(_:onChange:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100709BB4()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v7(ObjectType, v5);
  swift_unknownObjectRelease();
  if (v5)
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    v10 = *(v8 + 136);
    swift_unknownObjectRetain();
    v10(v9, v8);
    swift_unknownObjectRelease();
  }

  sub_100421E20();
  v11 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton);
  v12 = *(v4 + 8);
  v13 = swift_getObjectType();
  v14 = *(v12 + 24);
  swift_unknownObjectRetain();
  LODWORD(v12) = v14(v13, v12) & 1;
  swift_unknownObjectRelease();
  v15 = v11[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
  v11[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v12;
  if (v12 != v15)
  {
    [v11 setNeedsUpdateConfiguration];
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v3, &unk_10094F340, v18);
}

void sub_100709DEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer;
    v3 = *(Strong + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    swift_unknownObjectRetain();
    LOBYTE(v3) = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3)
    {
      sub_100709BB4();
    }

    else
    {
      sub_100421CC8();
      v6 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton];
      v7 = *(v2 + 8);
      v8 = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      LODWORD(v7) = v9(v8, v7) & 1;
      swift_unknownObjectRelease();
      v10 = v6[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
      v6[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v7;
      if (v7 != v10)
      {
        [v6 setNeedsUpdateConfiguration];
      }
    }
  }
}

uint64_t sub_100709F30()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_previousSizeType);
  if (v9 == 8 || (result = sub_10003C2FC(*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType), v9), (result & 1) == 0))
  {
    sub_1000065A8(0, &qword_100AD6210);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000B40A8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A79CC0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006B5C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double *sub_10070A3D0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AudioAssetTranscriptionGridView();
  v3 = objc_msgSendSuper2(&v17, "accessibilityCustomActions");
  if (v3)
  {
    v4 = v3;
    sub_1000065A8(0, &qword_100AD86C0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v18 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = *&v0[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton];
  if (v6[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] == 1)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v7 = [v6 currentImage];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v9 = objc_allocWithZone(UIAccessibilityCustomAction);
  v10 = v0;
  v11 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10070AAA4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B7420;
  aBlock[3] = &unk_100A79D60;
  v12 = _Block_copy(aBlock);
  v13 = [v9 initWithName:v11 image:v7 actionHandler:v12];

  _Block_release(v12);

  v14 = v13;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v18;
}

uint64_t sub_10070A718(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer;
  v4 = *(a2 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v4) = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_100709BB4();
  }

  else
  {
    sub_100421CC8();
    v7 = *(a2 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton);
    v8 = *(v3 + 8);
    v9 = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    LODWORD(v8) = v10(v9, v8) & 1;
    swift_unknownObjectRelease();
    v11 = v7[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
    v7[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v8;
    if (v8 != v11)
    {
      [v7 setNeedsUpdateConfiguration];
    }
  }

  return 1;
}

void sub_10070A834()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint);
}

id sub_10070A8E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAssetTranscriptionGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10070A9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100709A44(a1, v4, v5, v6);
}

void sub_10070AABC(char a1)
{
  v3 = [v1 standardAppearance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 _titleControlHidden];

    if (v5 == (a1 & 1))
    {
      return;
    }
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  v6 = [v1 standardAppearance];
  if (!v6)
  {
    v6 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v7 = v6;
  [v6 _setTitleControlHidden:a1 & 1];
  [v1 setStandardAppearance:v7];
}

uint64_t sub_10070ABC0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEEB98);
  v1 = sub_10000617C(v0, qword_100AEEB98);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10070AC88(void *a1)
{
  static JournalDataUtilities.deleteAllLocalData(context:)();
  if (!v1)
  {
    sub_10048EC28(a1);
  }
}

void sub_10070ACB8(void *a1)
{
  type metadata accessor for JournalEntryMO();
  sub_100710B54(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
  v3 = static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)();
  if (v1)
  {
    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AEEB98);
    v5 = a1;
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v8 = 136315394;
      v11 = [v5 recordID];
      v12 = [v11 recordName];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100008458(v13, v15, &v21);

      *(v8 + 4) = v16;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v17;
      *v9 = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error processing fetched JournalEntryMO record %s: %@", v8, 0x16u);
      sub_10012B714(v9);

      sub_10000BA7C(v10);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v18 = qword_100ACFE28;
    v19 = v3;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = *(qword_100B2F9E0 + 16);
    sub_10077718C(v19, a1);
  }

  else
  {
  }
}

void sub_10070AFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100B2F9E0 + 16);
}

uint64_t sub_10070B088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[10] = v10;
  v7[11] = v12;

  return _swift_task_switch(sub_10070B18C, v10, v12);
}

uint64_t sub_10070B18C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = *(v0 + 32);
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v8 = v6;
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_10070B2C8;
  v11 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_1007142EC, v7, &type metadata for () + 8);
}

uint64_t sub_10070B2C8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_10070B4E8;
  }

  else
  {
    v8 = sub_10070B484;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10070B484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10070B4E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10070B54C(uint64_t a1, void *a2)
{
  v4 = static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)();
  if (!v2)
  {
    if (v4)
    {
      v5 = qword_100AD0290;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000617C(v7, qword_100AEEB98);
      v8 = a2;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v11 = 136315650;
        v12 = _typeName(_:qualified:)();
        v41 = v10;
        v44 = v6;
        v14 = sub_100008458(v12, v13, &v45);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        v15 = CKRecord.recordType.getter();
        v17 = sub_100008458(v15, v16, &v45);

        *(v11 + 14) = v17;
        *(v11 + 22) = 2080;
        v18 = [v8 recordID];
        v19 = [v18 recordName];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v6 = v44;
        v23 = sub_100008458(v20, v22, &v45);

        *(v11 + 24) = v23;
        _os_log_impl(&_mh_execute_header, v9, v41, "Found existing %s object for %s record with id %s. Resolving differences.", v11, 0x20u);
        swift_arrayDestroy();
      }

      dispatch thunk of static ManagedObjectCloudKitSyncing.resolveDifferences(object:record:)();
    }

    else
    {
      if (qword_100AD0290 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000617C(v24, qword_100AEEB98);
      v25 = a2;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v28 = 136315650;
        v29 = _typeName(_:qualified:)();
        log = v26;
        v42 = v27;
        v31 = sub_100008458(v29, v30, &v45);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2080;
        v32 = CKRecord.recordType.getter();
        v34 = sub_100008458(v32, v33, &v45);

        *(v28 + 14) = v34;
        *(v28 + 22) = 2080;
        v35 = [v25 recordID];
        v36 = [v35 recordName];

        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = sub_100008458(v37, v39, &v45);

        *(v28 + 24) = v40;
        v26 = log;
        _os_log_impl(&_mh_execute_header, log, v42, "Creating new %s object for %s record with id %s.", v28, 0x20u);
        swift_arrayDestroy();
      }
    }
  }
}

uint64_t sub_10070B9E4(uint64_t a1)
{
  v2 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v14 = v9;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    do
    {
      v14(v5, v10, v2);
      CKDatabase.RecordZoneChange.Modification.record.getter();
      (*(v8 - 8))(v5, v2);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      --v6;
    }

    while (v6);
    v7 = v15;
  }

  v12 = sub_1002AFE54(v7);

  return v12;
}

uint64_t sub_10070BB78(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10070BCF0, v1, 0);
}

uint64_t sub_10070BCF0()
{
  v81 = v0;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v1 = ProtectedData.isAvailable.getter();

  if (v1)
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v2 = v0[6];
    v3 = qword_100B2F9E0;
    v0[22] = qword_100B2F9E0;
    v4 = *(*(v3 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v0[23] = v4;
    v5 = v4;
    v6 = [v2 recordID];
    v7 = [v6 recordName];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v0[24] = v8;
    v0[25] = v10;
    v11 = CKRecord.recordType.getter();
    v13 = v12;
    if (qword_100AD0068 != -1)
    {
      swift_once();
    }

    if (qword_100B2FC60 == v11 && *algn_100B2FC68 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v14 = v0[21];
      v15 = v0[12];
      v16 = v0[13];
      v17 = v0[6];

      v18 = swift_allocObject();
      v0[26] = v18;
      *(v18 + 16) = v17;
      *(v18 + 24) = v5;
      (*(v16 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v15);
      v5;
      v19 = v17;
      v20 = swift_task_alloc();
      v0[27] = v20;
      *v20 = v0;
      v20[1] = sub_10070C79C;
      v21 = v0[21];

      return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_100710B38, v18, &type metadata for () + 8);
    }

    if (qword_100AD0070 != -1)
    {
      swift_once();
    }

    if (qword_100B2FC70 == v11 && *algn_100B2FC78 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v38 = v0[7];

      v0[28] = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      if (v38)
      {
        swift_getObjectType();
        v39 = dispatch thunk of Actor.unownedExecutor.getter();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v0[29] = v39;
      v0[30] = v41;
      v42 = sub_10070C8F8;
LABEL_29:

      return _swift_task_switch(v42, v39, v41);
    }

    if (qword_100AD0078 != -1)
    {
      swift_once();
    }

    if (qword_100B2FC80 == v11 && *algn_100B2FC88 == v13)
    {

LABEL_38:
      v44 = v0[7];
      v0[53] = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      if (v44)
      {
        swift_getObjectType();
        v39 = dispatch thunk of Actor.unownedExecutor.getter();
        v41 = v45;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v0[54] = v39;
      v0[55] = v41;
      v42 = sub_10070D844;
      goto LABEL_29;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_38;
    }

    if (qword_100AD0050 != -1)
    {
      swift_once();
    }

    v46 = qword_100B2FC28;
    v47 = CKRecord.recordType.getter();
    if (*(v46 + 16))
    {
      v49 = sub_100094E98(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = (*(v46 + 56) + 16 * v49);
        v53 = *v52;
        v0[73] = *v52;
        v54 = v52[1];
        if (qword_100AD0290 != -1)
        {
          swift_once();
        }

        v55 = v0[6];
        v0[74] = sub_10000617C(v0[8], qword_100AEEB98);
        v56 = v55;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *v59 = 136315394;
          v60 = _typeName(_:qualified:)();
          v62 = sub_100008458(v60, v61, &v80);

          *(v59 + 4) = v62;
          *(v59 + 12) = 2080;
          v63 = CKRecord.recordType.getter();
          v65 = sub_100008458(v63, v64, &v80);

          *(v59 + 14) = v65;
          _os_log_impl(&_mh_execute_header, v57, v58, "Using %s to process %s record", v59, 0x16u);
          swift_arrayDestroy();
        }

        v66 = v0[7];
        v67 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
        v68 = swift_task_alloc();
        v0[75] = v68;
        *v68 = v0;
        v68[1] = sub_10070E394;
        v69 = v0[6];

        return sub_10070B088(v66, v67, v69, v5, v53, v54);
      }
    }

    else
    {
    }

    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v70 = v0[6];
    sub_10000617C(v0[8], qword_100AEEB98);
    v71 = v70;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v80 = v75;
      *v74 = 136446210;
      v76 = CKRecord.recordType.getter();
      v78 = sub_100008458(v76, v77, &v80);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "Unhandled Record Type %{public}s during CloudKit fetch", v74, 0xCu);
      sub_10000BA7C(v75);
    }
  }

  else
  {
    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v22 = v0[6];
    sub_10000617C(v0[8], qword_100AEEB98);
    v23 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[6];
      v27 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v27 = 136315394;
      v28 = CKRecord.recordType.getter();
      v30 = sub_100008458(v28, v29, &v80);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = [v26 recordID];
      v32 = [v31 recordName];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_100008458(v33, v35, &v80);

      *(v27 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "Device is locked, skipping fetch for %s record %s", v27, 0x16u);
      swift_arrayDestroy();
    }
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_10070C79C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[21];
    v5 = v2[12];
    v6 = v2[13];
    v7 = v2[7];
    (*(v6 + 8))(v4, v5);

    return _swift_task_switch(sub_10071432C, v7, 0);
  }
}

uint64_t sub_10070C8F8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = swift_allocObject();
  *(v0 + 248) = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  *(v0 + 616) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v5 + 104);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v4);
  v8 = v3;

  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  v10 = sub_1000F24EC(&qword_100ADF608);
  *(v0 + 280) = v10;
  *v9 = v0;
  v9[1] = sub_10070CA5C;
  v11 = *(v0 + 160);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 32, v11, sub_1003444F0, v6, v10);
}

uint64_t sub_10070CA5C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[20];
    v5 = v2[12];
    v6 = v2[13];
    v7 = *(v6 + 8);
    v2[36] = v7;
    v2[37] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[29];
    v9 = v2[30];

    return _swift_task_switch(sub_10070CBAC, v8, v9);
  }
}

uint64_t sub_10070CBAC()
{
  v1 = v0[7];
  v0[38] = v0[4];
  return _swift_task_switch(sub_10070CBD0, v1, 0);
}

uint64_t sub_10070CBD0()
{
  v1 = v0[38];
  if (v1)
  {
    v2 = v1;

    v0[45] = v0[38];
    v3 = v0[7];
    v4 = *(v0[22] + 16);
    v0[46] = v4;
    v5 = v4;
    if (v3)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v0[47] = v6;
    v0[48] = v8;
    v13 = sub_10070D1AC;
  }

  else
  {
    v9 = v0[7];
    v10 = *(v0[22] + 16);
    v0[39] = v10;
    v11 = v10;
    if (v9)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v12;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v0[40] = v6;
    v0[41] = v8;
    v13 = sub_10070CCE4;
  }

  return _swift_task_switch(v13, v6, v8);
}

uint64_t sub_10070CCE4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 616);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 152);
  v8 = *(v0 + 96);
  v9 = swift_allocObject();
  *(v0 + 336) = v9;
  v9[2] = v1;
  v9[3] = v5;
  v9[4] = v4;
  v9[5] = v6;
  v2(v7, v3, v8);
  v10 = v6;

  v11 = v1;
  v12 = swift_task_alloc();
  *(v0 + 344) = v12;
  *v12 = v0;
  v12[1] = sub_10070CE2C;
  v13 = *(v0 + 280);
  v14 = *(v0 + 152);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 40, v14, sub_100710AE8, v9, v13);
}

uint64_t sub_10070CE2C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 288))(*(v2 + 152), *(v2 + 96));

    v4 = *(v2 + 320);
    v5 = *(v2 + 328);

    return _swift_task_switch(sub_10070CF80, v4, v5);
  }
}

uint64_t sub_10070CF80()
{
  v1 = *(v0 + 56);

  *(v0 + 352) = *(v0 + 40);

  return _swift_task_switch(sub_10070CFF4, v1, 0);
}

uint64_t sub_10070CFF4()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    *(v0 + 360) = v1;
    v2 = *(v0 + 56);
    v3 = *(*(v0 + 176) + 16);
    *(v0 + 368) = v3;
    v4 = v3;
    if (v2)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(v0 + 376) = v5;
    *(v0 + 384) = v7;

    return _swift_task_switch(sub_10070D1AC, v5, v7);
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 616);
    v10 = *(v0 + 184);
    v11 = *(v0 + 136);
    v12 = *(v0 + 96);
    v13 = *(v0 + 48);
    v14 = swift_allocObject();
    *(v0 + 408) = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v8(v11, v9, v12);
    v15 = v10;
    v16 = v13;
    v17 = swift_task_alloc();
    *(v0 + 416) = v17;
    *v17 = v0;
    v17[1] = sub_10070D620;
    v18 = *(v0 + 136);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_100710B08, v14, &type metadata for () + 8);
  }
}

uint64_t sub_10070D1AC()
{
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v19 = *(v0 + 256);
  v18 = *(v0 + 616);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 88);
  v17 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = sub_10000617C(v6, qword_100B2FF80);
  (*(v5 + 16))(v4, v8, v6);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v0 + 392) = v10;
  *(v10 + 2) = v7;
  *(v10 + 3) = v1;
  *(v10 + 4) = v2;
  (*(v5 + 32))(&v10[v9], v4, v6);
  v19(v3, v18, v17);
  v11 = v2;
  v12 = v7;
  v13 = v1;
  v14 = swift_task_alloc();
  *(v0 + 400) = v14;
  *v14 = v0;
  v14[1] = sub_10070D388;
  v15 = *(v0 + 144);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, sub_1006C4A48, v10, &type metadata for () + 8);
}

uint64_t sub_10070D388()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 288))(*(v2 + 144), *(v2 + 96));

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);

    return _swift_task_switch(sub_10070D4D4, v4, v5);
  }
}

uint64_t sub_10070D4D4()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10070D540, v1, 0);
}

uint64_t sub_10070D540()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10070D620()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[36];
    v5 = v2[17];
    v6 = v2[12];
    v7 = v2[7];
    v4(v5, v6);

    return _swift_task_switch(sub_10070D774, v7, 0);
  }
}

uint64_t sub_10070D774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10070D844()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = swift_allocObject();
  *(v0 + 448) = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  *(v0 + 620) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v5 + 104);
  *(v0 + 456) = v7;
  *(v0 + 464) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v4);
  v8 = v3;

  v9 = swift_task_alloc();
  *(v0 + 472) = v9;
  v10 = sub_1000F24EC(&qword_100AE5110);
  *(v0 + 480) = v10;
  *v9 = v0;
  v9[1] = sub_10070D9A8;
  v11 = *(v0 + 128);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v11, sub_10048EF30, v6, v10);
}

uint64_t sub_10070D9A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    v5 = v2[12];
    v6 = v2[13];
    v7 = *(v6 + 8);
    v2[61] = v7;
    v2[62] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[54];
    v9 = v2[55];

    return _swift_task_switch(sub_10070DAF8, v8, v9);
  }
}

uint64_t sub_10070DAF8()
{
  v1 = v0[7];
  v0[63] = v0[2];
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[65] = v4;
  v0[64] = v2;

  return _swift_task_switch(sub_10070DB94, v2, v4);
}

uint64_t sub_10070DB94()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 620);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = swift_allocObject();
  *(v0 + 528) = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v1(v6, v2, v7);
  v9 = v5;

  v10 = swift_task_alloc();
  *(v0 + 536) = v10;
  *v10 = v0;
  v10[1] = sub_10070DCCC;
  v11 = *(v0 + 480);
  v12 = *(v0 + 120);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v12, sub_100710A98, v8, v11);
}

uint64_t sub_10070DCCC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 488))(*(v2 + 120), *(v2 + 96));

    v4 = *(v2 + 520);
    v5 = *(v2 + 512);

    return _swift_task_switch(sub_10070DE24, v5, v4);
  }
}

uint64_t sub_10070DE24()
{
  v1 = v0[7];
  v0[68] = v0[3];
  return _swift_task_switch(sub_10070DE48, v1, 0);
}

uint64_t sub_10070DE48()
{
  if (*(v0 + 504) | *(v0 + 544))
  {
    v12 = *(v0 + 424);
    v13 = *(v0 + 56);
    v14 = *(*(v0 + 176) + 16);
    *(v0 + 552) = v14;
    v15 = v14;
    v16 = swift_task_alloc();
    *(v0 + 560) = v16;
    *v16 = v0;
    v16[1] = sub_10070E038;
    v17 = *(v0 + 184);
    v18 = *(v0 + 48);

    return sub_100758068(v13, v12, v18, v17);
  }

  else
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 620);
    v3 = *(v0 + 184);
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 48);
    v7 = swift_allocObject();
    *(v0 + 568) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v3;
    v1(v4, v2, v5);
    v8 = v3;
    v9 = v6;
    v10 = swift_task_alloc();
    *(v0 + 576) = v10;
    *v10 = v0;
    v10[1] = sub_10070E240;
    v11 = *(v0 + 112);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100710AB8, v7, &type metadata for () + 8);
  }
}

uint64_t sub_10070E038()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 56);

  return _swift_task_switch(sub_10070E160, v2, 0);
}

uint64_t sub_10070E160()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10070E240()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[61];
    v5 = v2[14];
    v6 = v2[12];
    v7 = v2[7];
    v4(v5, v6);

    return _swift_task_switch(sub_10071432C, v7, 0);
  }
}

uint64_t sub_10070E394()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_10070E4C0;
  }

  else
  {
    v4 = sub_10071432C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10070E4C0()
{
  v19 = v0;
  v1 = *(v0 + 48);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 184);
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v5 = 136446978;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008458(v7, v8, &v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = CKRecord.recordType.getter();
    v12 = sub_100008458(v10, v11, &v18);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2112;
    v13 = [v4 recordID];
    *(v5 + 24) = v13;
    *v6 = v13;
    *(v5 + 32) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 34) = v14;
    v6[1] = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed to process %{public}s record update for recordID %@. Error: %@", v5, 0x2Au);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10070E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  return _swift_task_switch(sub_10070E7A0, v3, 0);
}

uint64_t sub_10070E7A0()
{
  v73 = v0;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v1 = ProtectedData.isAvailable.getter();

  if (v1)
  {
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    v2 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v0[25] = v2;
    sub_1000F24EC(&qword_100AEEBB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100942000;
    v4 = type metadata accessor for JournalEntryMO();
    v5 = v2;
    *(inited + 32) = static JournalEntryMO.recordType.getter();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = &off_100A849C0;
    v7 = type metadata accessor for JournalEntryAssetMO();
    *(inited + 64) = static JournalEntryAssetMO.recordType.getter();
    *(inited + 72) = v8;
    *(inited + 80) = v7;
    *(inited + 88) = &off_100A849E0;
    v9 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
    *(inited + 96) = static JournalEntryAssetFileAttachmentMO.recordType.getter();
    *(inited + 104) = v10;
    *(inited + 112) = v9;
    *(inited + 120) = &off_100A84A00;
    v11 = sub_100364264(inited);
    swift_setDeallocating();
    sub_1000F24EC(&qword_100AEEBB8);
    swift_arrayDestroy();
    if (*(v11 + 16))
    {
      v12 = sub_100094E98(v0[22], v0[23]);
      if (v13)
      {
        v14 = v0[24];
        v15 = (*(v11 + 56) + 16 * v12);
        v16 = *v15;
        v0[26] = *v15;
        v17 = v15[1];

        v18 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
        v70 = (*(v17 + 8) + **(v17 + 8));
        v19 = swift_task_alloc();
        v0[27] = v19;
        *v19 = v0;
        v19[1] = sub_10070F034;
        v20 = v0[21];

        return v70(v14, v18, v20, v5, v16, v17);
      }
    }

    if (qword_100AD0050 != -1)
    {
      swift_once();
    }

    v35 = qword_100B2FC28;
    if (*(qword_100B2FC28 + 16))
    {
      v36 = sub_100094E98(v0[22], v0[23]);
      if (v37)
      {
        v38 = (*(v35 + 56) + 16 * v36);
        v39 = *v38;
        v0[28] = *v38;
        v40 = v38[1];
        if (qword_100AD0290 != -1)
        {
          swift_once();
        }

        v41 = v0[21];
        v42 = type metadata accessor for Logger();
        v0[29] = sub_10000617C(v42, qword_100AEEB98);

        v43 = v41;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v0[22];
          v68 = v0[23];
          v69 = v0[21];
          v47 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v47 = 136315650;
          v48 = _typeName(_:qualified:)();
          v71 = v40;
          v50 = sub_100008458(v48, v49, &v72);

          *(v47 + 4) = v50;
          *(v47 + 12) = 2080;
          *(v47 + 14) = sub_100008458(v46, v68, &v72);
          *(v47 + 22) = 2080;
          v51 = [v69 recordName];
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v55 = v52;
          v40 = v71;
          v56 = sub_100008458(v55, v54, &v72);

          *(v47 + 24) = v56;
          _os_log_impl(&_mh_execute_header, v44, v45, "%s will delete %s record with ID %s", v47, 0x20u);
          swift_arrayDestroy();
        }

        v57 = v0[24];
        v58 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
        v59 = swift_task_alloc();
        v0[30] = v59;
        *v59 = v0;
        v59[1] = sub_10070F494;
        v60 = v0[21];

        return dispatch thunk of static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(v57, v58, v60, v5, v39, v40);
      }
    }

    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000617C(v61, qword_100AEEB98);

    v25 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v62))
    {
      v64 = v0[22];
      v63 = v0[23];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_100008458(v64, v63, &v72);
      _os_log_impl(&_mh_execute_header, v25, v62, "Can't delete unknown %{public}s record", v65, 0xCu);
      sub_10000BA7C(v66);
    }
  }

  else
  {
    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v22 = v0[21];
    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AEEB98);
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[21];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v72 = v29;
      *v28 = 136315138;
      v30 = [v27 recordName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_100008458(v31, v33, &v72);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "ProtectedData isn't available, skipping deletion for recordID %s", v28, 0xCu);
      sub_10000BA7C(v29);
    }
  }

  v67 = v0[1];

  return v67();
}

uint64_t sub_10070F034(char a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10070F14C, v2, 0);
}

uint64_t sub_10070F14C()
{
  v31 = v0;
  if (*(v0 + 256))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 168);
    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AEEB98);

    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    v7 = &selRef_initWithName_managedObjectModel_;
    if (os_log_type_enabled(v5, v6))
    {
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = *(v0 + 168);
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v11 = 136315650;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100008458(v12, v13, &v30);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = v9;
      v7 = &selRef_initWithName_managedObjectModel_;
      *(v11 + 14) = sub_100008458(v15, v8, &v30);
      *(v11 + 22) = 2080;
      v16 = [v10 recordName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_100008458(v17, v19, &v30);

      *(v11 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s couldn't find object for deleted %s record with id %s. Adding to undeleted objects", v11, 0x20u);
      swift_arrayDestroy();
    }

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 200);
    v22 = *(v0 + 168);
    v1 = *(qword_100B2F9E0 + 16);
    v23 = [v22 v7[368]];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = OBJC_IVAR____TtC7Journal13CoreDataStack_lockUnDeletedObjects;
    [*&v1[OBJC_IVAR____TtC7Journal13CoreDataStack_lockUnDeletedObjects] lock];
    swift_beginAccess();

    sub_100286DEC(&v30, v24, v26);
    swift_endAccess();

    [*&v1[v27] unlock];
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10070F494()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_10070F620;
  }

  else
  {
    v4 = sub_10070F5C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10070F5C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10070F620()
{
  v23 = v0;
  v1 = *(v0 + 168);

  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = *(v0 + 168);
    v21 = *(v0 + 200);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136446978;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008458(v8, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_100008458(v5, v19, &v22);
    *(v6 + 22) = 2080;
    v11 = [v20 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100008458(v12, v14, &v22);

    *(v6 + 24) = v15;
    *(v6 + 32) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 34) = v16;
    *v7 = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed to delete %{public}s record with ID %s. Error: %@", v6, 0x2Au);
    sub_10012B714(v7);

    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10070F8A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10070FA38, v1, 0);
}

uint64_t sub_10070FA38()
{
  v91 = v0;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v1 = ProtectedData.isAvailable.getter();

  if ((v1 & 1) == 0)
  {
    if (qword_100AD0290 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000617C(v53, qword_100AEEB98);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Device is locked, skipping fetch operation", v56, 2u);
    }

LABEL_25:

    v57 = *(v0 + 8);

    return v57();
  }

  if (qword_100AD0290 != -1)
  {
LABEL_47:
    swift_once();
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = type metadata accessor for Logger();
  sub_10000617C(v7, qword_100AEEB98);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v8(v2, v6, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (!v11)
  {

    v59 = *(v15 + 8);
    v59(v13, v14);
    v59(v12, v14);
    goto LABEL_29;
  }

  v83 = v10;
  log = v9;
  v16 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  *v16 = 136315394;
  v17 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  sub_10070B9E4(v17);

  v81 = *(v15 + 8);
  v81(v12, v14);
  v18 = Dictionary.description.getter();
  v20 = v19;

  v21 = sub_100008458(v18, v20, &v89);

  *(v16 + 4) = v21;
  buf = v16;
  *(v16 + 12) = 2080;
  v22 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  v23 = sub_100363C14(_swiftEmptyArrayStorage);
  v88 = *(v22 + 16);
  if (!v88)
  {
LABEL_20:
    v47 = *(v0 + 104);
    v48 = *(v0 + 88);

    v49 = Dictionary.description.getter();
    v51 = v50;

    v81(v47, v48);
    v52 = sub_100008458(v49, v51, &v89);

    *(buf + 14) = v52;
    _os_log_impl(&_mh_execute_header, log, v83, "Handle fetched record zone changes.\nModifications: %s\nDeletions: %s", buf, 0x16u);
    swift_arrayDestroy();

LABEL_29:
    v60 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
    *(v0 + 120) = v60;
    v61 = *(v60 + 16);
    *(v0 + 128) = v61;
    if (v61)
    {
      v62 = *(v0 + 32);
      v63 = *(v0 + 40);
      v64 = *(v63 + 80);
      *(v0 + 240) = v64;
      *(v0 + 136) = *(v63 + 72);
      v65 = *(v63 + 16);
      *(v0 + 144) = v65;
      *(v0 + 152) = 0;
      v66 = *(v0 + 48);
      v65(v66, v60 + ((v64 + 32) & ~v64), v62);
      v67 = CKDatabase.RecordZoneChange.Modification.record.getter();
      *(v0 + 160) = v67;
      (*(v63 + 8))(v66, v62);
      v68 = swift_task_alloc();
      *(v0 + 168) = v68;
      *v68 = v0;
      v68[1] = sub_1007102F4;

      return sub_10070BB78(v67);
    }

    v69 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
    *(v0 + 176) = v69;
    v70 = *(v69 + 16);
    *(v0 + 184) = v70;
    if (v70)
    {
      v71 = *(v0 + 56);
      v72 = *(v0 + 64);
      v73 = *(v72 + 80);
      *(v0 + 244) = v73;
      *(v0 + 192) = *(v72 + 72);
      v74 = *(v72 + 16);
      *(v0 + 200) = v74;
      *(v0 + 208) = 0;
      v75 = *(v0 + 72);
      v74(v75, v69 + ((v73 + 32) & ~v73), v71);
      v76 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      *(v0 + 216) = v76;
      v77 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
      v79 = v78;
      *(v0 + 224) = v78;
      (*(v72 + 8))(v75, v71);
      v80 = swift_task_alloc();
      *(v0 + 232) = v80;
      *v80 = v0;
      v80[1] = sub_10071073C;

      return sub_10070E77C(v76, v77, v79);
    }

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v54 = *(qword_100B2F9E0 + 16);
    sub_1006F0764();
    goto LABEL_25;
  }

  v24 = 0;
  v25 = *(v0 + 64);
  v86 = v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v87 = v25;
  v85 = (v25 + 8);
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    (*(v87 + 16))(*(v0 + 80), v86 + *(v87 + 72) * v24, *(v0 + 56));
    v26 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
    v28 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v23;
    v31 = sub_100094E98(v26, v28);
    v32 = v23[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_44;
    }

    v35 = v30;
    if (v23[3] < v34)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v30)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1008222E0();
      v23 = v90;
      if (v35)
      {
LABEL_14:

        goto LABEL_18;
      }
    }

LABEL_16:
    v23[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v23[6] + 16 * v31);
    *v38 = v26;
    v38[1] = v28;
    *(v23[7] + 8 * v31) = 0;
    v39 = v23[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_46;
    }

    v23[2] = v41;
LABEL_18:
    v42 = v23[7];
    v43 = *(v42 + 8 * v31);
    v40 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v40)
    {
      goto LABEL_45;
    }

    ++v24;
    v45 = *(v0 + 80);
    v46 = *(v0 + 56);
    *(v42 + 8 * v31) = v44;
    (*v85)(v45, v46);
    if (v88 == v24)
    {
      goto LABEL_20;
    }
  }

  sub_10081D8B4(v34, isUniquelyReferenced_nonNull_native);
  v23 = v90;
  v36 = sub_100094E98(v26, v28);
  if ((v35 & 1) == (v37 & 1))
  {
    v31 = v36;
    if (v35)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1007102F4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 24);

  return _swift_task_switch(sub_10071041C, v2, 0);
}

uint64_t sub_10071041C()
{
  v1 = *(v0 + 152) + 1;
  if (v1 == *(v0 + 128))
  {

    v2 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
    *(v0 + 176) = v2;
    v3 = *(v2 + 16);
    *(v0 + 184) = v3;
    if (v3)
    {
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      v6 = *(v5 + 80);
      *(v0 + 244) = v6;
      *(v0 + 192) = *(v5 + 72);
      v7 = *(v5 + 16);
      *(v0 + 200) = v7;
      *(v0 + 208) = 0;
      v8 = *(v0 + 72);
      v7(v8, v2 + ((v6 + 32) & ~v6), v4);
      v9 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      *(v0 + 216) = v9;
      v10 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
      v12 = v11;
      *(v0 + 224) = v11;
      (*(v5 + 8))(v8, v4);
      v13 = swift_task_alloc();
      *(v0 + 232) = v13;
      *v13 = v0;
      v13[1] = sub_10071073C;

      return sub_10070E77C(v9, v10, v12);
    }

    else
    {

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v20 = *(qword_100B2F9E0 + 16);
      sub_1006F0764();

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    *(v0 + 152) = v1;
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    (*(v0 + 144))(v15, *(v0 + 120) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 136) * v1, v17);
    v18 = CKDatabase.RecordZoneChange.Modification.record.getter();
    *(v0 + 160) = v18;
    (*(v16 + 8))(v15, v17);
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_1007102F4;

    return sub_10070BB78(v18);
  }
}

uint64_t sub_10071073C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 24);

  return _swift_task_switch(sub_100710888, v2, 0);
}

uint64_t sub_100710888()
{
  v1 = *(v0 + 208) + 1;
  if (v1 == *(v0 + 184))
  {

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v2 = *(qword_100B2F9E0 + 16);
    sub_1006F0764();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 208) = v1;
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    (*(v0 + 200))(v5, *(v0 + 176) + ((*(v0 + 244) + 32) & ~*(v0 + 244)) + *(v0 + 192) * v1, v7);
    v8 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 216) = v8;
    v9 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
    v11 = v10;
    *(v0 + 224) = v10;
    (*(v6 + 8))(v5, v7);
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v12[1] = sub_10071073C;

    return sub_10070E77C(v8, v9, v11);
  }
}

uint64_t sub_100710B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100710B9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100710DAC, v1, 0);
}

uint64_t sub_100710DAC()
{
  v88 = v0;
  if (qword_100AD0290 != -1)
  {
LABEL_42:
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 16);
  v6 = type metadata accessor for Logger();
  *(v0 + 168) = sub_10000617C(v6, qword_100AEEB98);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  if (v10)
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    v16 = *(CKSyncEngine.Event.FetchedDatabaseChanges.modifications.getter() + 16);

    v17 = *(v14 + 8);
    v17(v11, v13);
    *(v15 + 4) = v16;
    *(v15 + 12) = 2048;
    v18 = *(CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter() + 16);

    v17(v12, v13);
    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring %ld database modifications and processing %ld deletions", v15, 0x16u);
  }

  else
  {
    v19 = *(v14 + 8);
    v19(*(v0 + 152), *(v0 + 136));
    v19(v11, v13);
  }

  v20 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
  *(v0 + 176) = v20;
  v21 = *(v20 + 16);
  *(v0 + 184) = v21;
  if (v21)
  {
    v22 = 0;
    *(v0 + 280) = *(*(v0 + 96) + 80);
    *(v0 + 284) = enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:);
    *(v0 + 288) = enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:);
    *(v0 + 292) = enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:);
    *(v0 + 296) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    while (1)
    {
      *(v0 + 192) = v22;
      v24 = *(v0 + 176);
      if (v22 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v25 = *(v0 + 284);
      v26 = *(v0 + 96);
      v27 = *(v0 + 80);
      v28 = *(v26 + 16);
      v29 = *(v0 + 56);
      v30 = *(v0 + 64);
      v28(*(v0 + 128), v24 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v26 + 72) * v22, *(v0 + 88));
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v31 = (*(v30 + 88))(v27, v29);
      if (v31 == v25)
      {
        break;
      }

      if (v31 == *(v0 + 288))
      {
        v28(*(v0 + 112), *(v0 + 128), *(v0 + 88));
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v0 + 112);
        v60 = *(v0 + 88);
        v61 = *(v0 + 96);
        if (v58)
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          v64 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
          v65 = *(v61 + 8);
          v65(v59, v60);
          *(v62 + 4) = v64;
          *v63 = v64;
          _os_log_impl(&_mh_execute_header, v56, v57, "zone was purged zoneID: %@", v62, 0xCu);
          sub_10012B714(v63);
        }

        else
        {

          v65 = *(v61 + 8);
          v65(v59, v60);
        }

        *(v0 + 216) = v65;
        if (qword_100ACFE28 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 296);
        v79 = *(v0 + 40);
        v78 = *(v0 + 48);
        v80 = *(v0 + 32);
        v81 = qword_100B2F9E0;
        *(v0 + 224) = qword_100B2F9E0;
        v82 = *(*(v81 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
        *(v0 + 232) = v82;
        v83 = swift_allocObject();
        *(v0 + 240) = v83;
        *(v83 + 16) = v82;
        (*(v79 + 104))(v78, v77, v80);
        v82;
        v84 = swift_task_alloc();
        *(v0 + 248) = v84;
        *v84 = v0;
        v84[1] = sub_10071226C;
        v85 = *(v0 + 48);

        return NSManagedObjectContext.perform<A>(schedule:_:)(v84, v85, sub_100714310, v83, &type metadata for () + 8);
      }

      if (v31 == *(v0 + 292))
      {
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "encryptedDataReset local cached data will be re-uploaded to the server to minimize data loss", v68, 2u);
        }

        if (qword_100ACFE28 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 24);
        v70 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
        v71 = swift_task_alloc();
        *(v0 + 272) = v71;
        *v71 = v0;
        v71[1] = sub_100712F04;

        return sub_10034EA1C(v69, v70);
      }

      v28(*(v0 + 104), *(v0 + 128), *(v0 + 88));
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 128);
      v37 = *(v0 + 96);
      v36 = *(v0 + 104);
      v38 = *(v0 + 88);
      if (v34)
      {
        v39 = swift_slowAlloc();
        v86 = v35;
        v87 = swift_slowAlloc();
        v40 = v87;
        *v39 = 136315138;
        CKDatabase.DatabaseChange.Deletion.reason.getter();
        v41 = String.init<A>(describing:)();
        v43 = v42;
        v44 = *(v37 + 8);
        v44(v36, v38);
        v45 = sub_100008458(v41, v43, &v87);

        *(v39 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v32, v33, "fetchedDatabaseChanges unknown deletion reason: %s", v39, 0xCu);
        sub_10000BA7C(v40);

        v44(v86, v38);
      }

      else
      {

        v23 = *(v37 + 8);
        v23(v36, v38);
        v23(v35, v38);
      }

      (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
      v22 = *(v0 + 192) + 1;
      if (v22 == *(v0 + 184))
      {
        goto LABEL_26;
      }
    }

    v28(*(v0 + 120), *(v0 + 128), *(v0 + 88));
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 120);
    v50 = *(v0 + 88);
    v51 = *(v0 + 96);
    if (v48)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
      v55 = *(v51 + 8);
      v55(v49, v50);
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "zone %@ was deleted", v52, 0xCu);
      sub_10012B714(v53);
    }

    else
    {

      v55 = *(v51 + 8);
      v55(v49, v50);
    }

    *(v0 + 200) = v55;
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v74 = *(v0 + 24);
    v75 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
    v76 = swift_task_alloc();
    *(v0 + 208) = v76;
    *v76 = v0;
    v76[1] = sub_10071186C;

    return sub_10034DA98(v74, v75);
  }

  else
  {
LABEL_26:

    v73 = *(v0 + 8);

    return v73();
  }
}

uint64_t sub_10071186C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10071197C, v1, 0);
}

uint64_t sub_10071197C()
{
  v67 = v0;
  (*(v0 + 200))(*(v0 + 128), *(v0 + 88));
  v1 = *(v0 + 192) + 1;
  if (v1 == *(v0 + 184))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  while (1)
  {
    *(v0 + 192) = v1;
    v5 = *(v0 + 176);
    if (v1 >= *(v5 + 16))
    {
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_27;
    }

    v6 = *(v0 + 284);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v7 + 16);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v9(*(v0 + 128), v5 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v7 + 72) * v1, *(v0 + 88));
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v12 = (*(v11 + 88))(v8, v10);
    if (v12 == v6)
    {
      break;
    }

    if (v12 == *(v0 + 288))
    {
      v9(*(v0 + 112), *(v0 + 128), *(v0 + 88));
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 112);
      v41 = *(v0 + 88);
      v42 = *(v0 + 96);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        v45 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
        v46 = *(v42 + 8);
        v46(v40, v41);
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "zone was purged zoneID: %@", v43, 0xCu);
        sub_10012B714(v44);
      }

      else
      {

        v46 = *(v42 + 8);
        v46(v40, v41);
      }

      *(v0 + 216) = v46;
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v56 = *(v0 + 296);
      v58 = *(v0 + 40);
      v57 = *(v0 + 48);
      v59 = *(v0 + 32);
      v60 = qword_100B2F9E0;
      *(v0 + 224) = qword_100B2F9E0;
      v61 = *(*(v60 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      *(v0 + 232) = v61;
      v62 = swift_allocObject();
      *(v0 + 240) = v62;
      *(v62 + 16) = v61;
      (*(v58 + 104))(v57, v56, v59);
      v61;
      v63 = swift_task_alloc();
      *(v0 + 248) = v63;
      *v63 = v0;
      v63[1] = sub_10071226C;
      v64 = *(v0 + 48);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v63, v64, sub_100714310, v62, &type metadata for () + 8);
    }

    if (v12 == *(v0 + 292))
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "encryptedDataReset local cached data will be re-uploaded to the server to minimize data loss", v49, 2u);
      }

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 24);
      v51 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v52 = swift_task_alloc();
      *(v0 + 272) = v52;
      *v52 = v0;
      v52[1] = sub_100712F04;

      return sub_10034EA1C(v50, v51);
    }

    v9(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 128);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);
    if (v15)
    {
      v20 = swift_slowAlloc();
      v65 = v16;
      v66 = swift_slowAlloc();
      v21 = v66;
      *v20 = 136315138;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v22 = String.init<A>(describing:)();
      v24 = v23;
      v25 = *(v18 + 8);
      v25(v17, v19);
      v26 = sub_100008458(v22, v24, &v66);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "fetchedDatabaseChanges unknown deletion reason: %s", v20, 0xCu);
      sub_10000BA7C(v21);

      v25(v65, v19);
    }

    else
    {

      v4 = *(v18 + 8);
      v4(v17, v19);
      v4(v16, v19);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    v1 = *(v0 + 192) + 1;
    if (v1 == *(v0 + 184))
    {
      goto LABEL_2;
    }
  }

  v9(*(v0 + 120), *(v0 + 128), *(v0 + 88));
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 120);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    v36 = *(v32 + 8);
    v36(v30, v31);
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "zone %@ was deleted", v33, 0xCu);
    sub_10012B714(v34);
  }

  else
  {

    v36 = *(v32 + 8);
    v36(v30, v31);
  }

  *(v0 + 200) = v36;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_37;
  }

LABEL_27:
  v53 = *(v0 + 24);
  v54 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v55 = swift_task_alloc();
  *(v0 + 208) = v55;
  *v55 = v0;
  v55[1] = sub_10071186C;

  return sub_10034DA98(v53, v54);
}

uint64_t sub_10071226C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 256) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100713900;
  }

  else
  {
    v7 = sub_100712418;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100712418()
{
  v1 = *(v0 + 24);
  v2 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_1007124F4;

  return sub_10034DA98(v1, v2);
}

uint64_t sub_1007124F4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100712604, v1, 0);
}

uint64_t sub_100712604()
{
  v70 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);

  v1(v2, v3);
  v4 = *(v0 + 192) + 1;
  if (v4 == *(v0 + 184))
  {
LABEL_2:

    v5 = *(v0 + 8);

    return v5();
  }

  while (1)
  {
    *(v0 + 192) = v4;
    v8 = *(v0 + 176);
    if (v4 >= *(v8 + 16))
    {
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_27;
    }

    v9 = *(v0 + 284);
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = *(v10 + 16);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v12(*(v0 + 128), v8 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v10 + 72) * v4, *(v0 + 88));
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v15 = (*(v14 + 88))(v11, v13);
    if (v15 == v9)
    {
      break;
    }

    if (v15 == *(v0 + 288))
    {
      v12(*(v0 + 112), *(v0 + 128), *(v0 + 88));
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 112);
      v44 = *(v0 + 88);
      v45 = *(v0 + 96);
      if (v42)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
        v49 = *(v45 + 8);
        v49(v43, v44);
        *(v46 + 4) = v48;
        *v47 = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "zone was purged zoneID: %@", v46, 0xCu);
        sub_10012B714(v47);
      }

      else
      {

        v49 = *(v45 + 8);
        v49(v43, v44);
      }

      *(v0 + 216) = v49;
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 296);
      v61 = *(v0 + 40);
      v60 = *(v0 + 48);
      v62 = *(v0 + 32);
      v63 = qword_100B2F9E0;
      *(v0 + 224) = qword_100B2F9E0;
      v64 = *(*(v63 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      *(v0 + 232) = v64;
      v65 = swift_allocObject();
      *(v0 + 240) = v65;
      *(v65 + 16) = v64;
      (*(v61 + 104))(v60, v59, v62);
      v64;
      v66 = swift_task_alloc();
      *(v0 + 248) = v66;
      *v66 = v0;
      v66[1] = sub_10071226C;
      v67 = *(v0 + 48);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v66, v67, sub_100714310, v65, &type metadata for () + 8);
    }

    if (v15 == *(v0 + 292))
    {
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "encryptedDataReset local cached data will be re-uploaded to the server to minimize data loss", v52, 2u);
      }

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 24);
      v54 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v55 = swift_task_alloc();
      *(v0 + 272) = v55;
      *v55 = v0;
      v55[1] = sub_100712F04;

      return sub_10034EA1C(v53, v54);
    }

    v12(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 128);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);
    if (v18)
    {
      v23 = swift_slowAlloc();
      v68 = v19;
      v69 = swift_slowAlloc();
      v24 = v69;
      *v23 = 136315138;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = *(v21 + 8);
      v28(v20, v22);
      v29 = sub_100008458(v25, v27, &v69);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "fetchedDatabaseChanges unknown deletion reason: %s", v23, 0xCu);
      sub_10000BA7C(v24);

      v28(v68, v22);
    }

    else
    {

      v7 = *(v21 + 8);
      v7(v20, v22);
      v7(v19, v22);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    v4 = *(v0 + 192) + 1;
    if (v4 == *(v0 + 184))
    {
      goto LABEL_2;
    }
  }

  v12(*(v0 + 120), *(v0 + 128), *(v0 + 88));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 120);
  v34 = *(v0 + 88);
  v35 = *(v0 + 96);
  if (v32)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    v39 = *(v35 + 8);
    v39(v33, v34);
    *(v36 + 4) = v38;
    *v37 = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "zone %@ was deleted", v36, 0xCu);
    sub_10012B714(v37);
  }

  else
  {

    v39 = *(v35 + 8);
    v39(v33, v34);
  }

  *(v0 + 200) = v39;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_37;
  }

LABEL_27:
  v56 = *(v0 + 24);
  v57 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v58 = swift_task_alloc();
  *(v0 + 208) = v58;
  *v58 = v0;
  v58[1] = sub_10071186C;

  return sub_10034DA98(v56, v57);
}

uint64_t sub_100712F04()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100713014, v1, 0);
}

uint64_t sub_100713014()
{
  v67 = v0;
  (*(*(v0 + 96) + 8))(*(v0 + 128), *(v0 + 88));
  v1 = *(v0 + 192) + 1;
  if (v1 == *(v0 + 184))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  while (1)
  {
    *(v0 + 192) = v1;
    v5 = *(v0 + 176);
    if (v1 >= *(v5 + 16))
    {
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_27;
    }

    v6 = *(v0 + 284);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v7 + 16);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v9(*(v0 + 128), v5 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v7 + 72) * v1, *(v0 + 88));
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v12 = (*(v11 + 88))(v8, v10);
    if (v12 == v6)
    {
      break;
    }

    if (v12 == *(v0 + 288))
    {
      v9(*(v0 + 112), *(v0 + 128), *(v0 + 88));
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 112);
      v41 = *(v0 + 88);
      v42 = *(v0 + 96);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        v45 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
        v46 = *(v42 + 8);
        v46(v40, v41);
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "zone was purged zoneID: %@", v43, 0xCu);
        sub_10012B714(v44);
      }

      else
      {

        v46 = *(v42 + 8);
        v46(v40, v41);
      }

      *(v0 + 216) = v46;
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v56 = *(v0 + 296);
      v58 = *(v0 + 40);
      v57 = *(v0 + 48);
      v59 = *(v0 + 32);
      v60 = qword_100B2F9E0;
      *(v0 + 224) = qword_100B2F9E0;
      v61 = *(*(v60 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      *(v0 + 232) = v61;
      v62 = swift_allocObject();
      *(v0 + 240) = v62;
      *(v62 + 16) = v61;
      (*(v58 + 104))(v57, v56, v59);
      v61;
      v63 = swift_task_alloc();
      *(v0 + 248) = v63;
      *v63 = v0;
      v63[1] = sub_10071226C;
      v64 = *(v0 + 48);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v63, v64, sub_100714310, v62, &type metadata for () + 8);
    }

    if (v12 == *(v0 + 292))
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "encryptedDataReset local cached data will be re-uploaded to the server to minimize data loss", v49, 2u);
      }

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 24);
      v51 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v52 = swift_task_alloc();
      *(v0 + 272) = v52;
      *v52 = v0;
      v52[1] = sub_100712F04;

      return sub_10034EA1C(v50, v51);
    }

    v9(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 128);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);
    if (v15)
    {
      v20 = swift_slowAlloc();
      v65 = v16;
      v66 = swift_slowAlloc();
      v21 = v66;
      *v20 = 136315138;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v22 = String.init<A>(describing:)();
      v24 = v23;
      v25 = *(v18 + 8);
      v25(v17, v19);
      v26 = sub_100008458(v22, v24, &v66);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "fetchedDatabaseChanges unknown deletion reason: %s", v20, 0xCu);
      sub_10000BA7C(v21);

      v25(v65, v19);
    }

    else
    {

      v4 = *(v18 + 8);
      v4(v17, v19);
      v4(v16, v19);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    v1 = *(v0 + 192) + 1;
    if (v1 == *(v0 + 184))
    {
      goto LABEL_2;
    }
  }

  v9(*(v0 + 120), *(v0 + 128), *(v0 + 88));
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 120);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    v36 = *(v32 + 8);
    v36(v30, v31);
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "zone %@ was deleted", v33, 0xCu);
    sub_10012B714(v34);
  }

  else
  {

    v36 = *(v32 + 8);
    v36(v30, v31);
  }

  *(v0 + 200) = v36;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_37;
  }

LABEL_27:
  v53 = *(v0 + 24);
  v54 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v55 = swift_task_alloc();
  *(v0 + 208) = v55;
  *v55 = v0;
  v55[1] = sub_10071186C;

  return sub_10034DA98(v53, v54);
}

uint64_t sub_100713900()
{
  v75 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to delete all data while handling zone purge: %@", v3, 0xCu);
    sub_10012B714(v4);

    v1 = *(v0 + 232);
  }

  else
  {
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 128);
  v8 = *(v0 + 88);

  v6(v7, v8);
  v9 = *(v0 + 192) + 1;
  if (v9 == *(v0 + 184))
  {
LABEL_5:

    v10 = *(v0 + 8);

    return v10();
  }

  while (1)
  {
    *(v0 + 192) = v9;
    v13 = *(v0 + 176);
    if (v9 >= *(v13 + 16))
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_30;
    }

    v14 = *(v0 + 284);
    v15 = *(v0 + 96);
    v16 = *(v0 + 80);
    v17 = *(v15 + 16);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v17(*(v0 + 128), v13 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v15 + 72) * v9, *(v0 + 88));
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v20 = (*(v19 + 88))(v16, v18);
    if (v20 == v14)
    {
      break;
    }

    if (v20 == *(v0 + 288))
    {
      v17(*(v0 + 112), *(v0 + 128), *(v0 + 88));
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 112);
      v49 = *(v0 + 88);
      v50 = *(v0 + 96);
      if (v47)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
        v54 = *(v50 + 8);
        v54(v48, v49);
        *(v51 + 4) = v53;
        *v52 = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "zone was purged zoneID: %@", v51, 0xCu);
        sub_10012B714(v52);
      }

      else
      {

        v54 = *(v50 + 8);
        v54(v48, v49);
      }

      *(v0 + 216) = v54;
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 296);
      v66 = *(v0 + 40);
      v65 = *(v0 + 48);
      v67 = *(v0 + 32);
      v68 = qword_100B2F9E0;
      *(v0 + 224) = qword_100B2F9E0;
      v69 = *(*(v68 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      *(v0 + 232) = v69;
      v70 = swift_allocObject();
      *(v0 + 240) = v70;
      *(v70 + 16) = v69;
      (*(v66 + 104))(v65, v64, v67);
      v69;
      v71 = swift_task_alloc();
      *(v0 + 248) = v71;
      *v71 = v0;
      v71[1] = sub_10071226C;
      v72 = *(v0 + 48);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v71, v72, sub_100714310, v70, &type metadata for () + 8);
    }

    if (v20 == *(v0 + 292))
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "encryptedDataReset local cached data will be re-uploaded to the server to minimize data loss", v57, 2u);
      }

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 24);
      v59 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v60 = swift_task_alloc();
      *(v0 + 272) = v60;
      *v60 = v0;
      v60[1] = sub_100712F04;

      return sub_10034EA1C(v58, v59);
    }

    v17(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 128);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);
    if (v23)
    {
      v28 = swift_slowAlloc();
      v73 = v24;
      v74 = swift_slowAlloc();
      v29 = v74;
      *v28 = 136315138;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v30 = String.init<A>(describing:)();
      v32 = v31;
      v33 = *(v26 + 8);
      v33(v25, v27);
      v34 = sub_100008458(v30, v32, &v74);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "fetchedDatabaseChanges unknown deletion reason: %s", v28, 0xCu);
      sub_10000BA7C(v29);

      v33(v73, v27);
    }

    else
    {

      v12 = *(v26 + 8);
      v12(v25, v27);
      v12(v24, v27);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    v9 = *(v0 + 192) + 1;
    if (v9 == *(v0 + 184))
    {
      goto LABEL_5;
    }
  }

  v17(*(v0 + 120), *(v0 + 128), *(v0 + 88));
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 120);
  v39 = *(v0 + 88);
  v40 = *(v0 + 96);
  if (v37)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    v44 = *(v40 + 8);
    v44(v38, v39);
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "zone %@ was deleted", v41, 0xCu);
    sub_10012B714(v42);
  }

  else
  {

    v44 = *(v40 + 8);
    v44(v38, v39);
  }

  *(v0 + 200) = v44;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_40;
  }

LABEL_30:
  v61 = *(v0 + 24);
  v62 = sub_100710B54(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v63 = swift_task_alloc();
  *(v0 + 208) = v63;
  *v63 = v0;
  v63[1] = sub_10071186C;

  return sub_10034DA98(v61, v62);
}

char *sub_100714330()
{
  v1 = sub_1000F24EC(&qword_100AE9C10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = sub_1000F24EC(&unk_100AE9C18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  *&v0[OBJC_IVAR____TtC7Journal16SidebarPinsStore_entriesByMapPlace] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal16SidebarPinsStore_entryMapPipelineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Journal16SidebarPinsStore_entriesByMapPlaceSubscription] = 0;
  v9 = [objc_allocWithZone(PXPlacesStore) init];
  *&v0[OBJC_IVAR____TtC7Journal16SidebarPinsStore_store] = v9;
  v10 = type metadata accessor for SidebarPinsStore();
  v17.receiver = v0;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "init");
  v12 = qword_100ACF9C8;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000F24EC(&qword_100AD5B60);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000B58C(&qword_100AE9C28, &qword_100AE9C10);
  sub_100593F10();
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v4, v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000B58C(&qword_100AE9C48, &unk_100AE9C18);
  v14 = Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v5);
  *&v13[OBJC_IVAR____TtC7Journal16SidebarPinsStore_entriesByMapPlaceSubscription] = v14;

  return v13;
}

uint64_t sub_10071468C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC7Journal16SidebarPinsStore_entriesByMapPlace;

    v6 = sub_100185544(v5, v1);
    v8 = v7;

    *&v3[v4] = v1;

    sub_100714774(v6, v8);
  }

  return result;
}

uint64_t sub_100714774(unint64_t a1, unint64_t a2)
{

  v5 = sub_100891918(a2);

  v6 = v2 + OBJC_IVAR____TtC7Journal16SidebarPinsStore_entryMapPipelineDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = *(v2 + OBJC_IVAR____TtC7Journal16SidebarPinsStore_store);
  [v9 beginUpdates];
  if (!(a1 >> 62))
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    goto LABEL_6;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1000F24EC(&qword_100AE9C08);
    _bridgeCocoaArray<A>(_:)();

LABEL_6:
    sub_1000F24EC(&qword_100AE9C08);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 addItemsFromArray:isa];
  }

LABEL_7:
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_9:
      sub_1002C82B8(v5);

      v11 = Set._bridgeToObjectiveC()().super.isa;

      [v9 removeItems:v11];

      goto LABEL_12;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_9;
  }

LABEL_12:
  [v9 endUpdates];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v6 + 8);
    v14 = swift_getObjectType();
    (*(v13 + 8))(v14, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1007149C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarPinsStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100714AD0(void *a1)
{
  v32 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline;
  *(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline) = 0;
  v33 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController;
  *(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController) = 0;
  v2 = OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController;
  v27 = OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController;
  *(v1 + v2) = [objc_allocWithZone(PXPlacesMapController) init];
  v28 = OBJC_IVAR____TtC7Journal22EntryMapViewController_pinPipeline;
  *(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_pinPipeline) = 0;
  v31 = OBJC_IVAR____TtC7Journal22EntryMapViewController__mapModeBarItem;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  v30 = OBJC_IVAR____TtC7Journal22EntryMapViewController__userTrackingBarItem;
  UIViewController.ViewLoading.init()();
  v29 = OBJC_IVAR____TtC7Journal22EntryMapViewController__pitchBarItem;
  UIViewController.ViewLoading.init()();
  v3 = OBJC_IVAR____TtC7Journal22EntryMapViewController_globeIcon;
  v4 = objc_opt_self();
  v5 = [v4 tintColor];
  v6 = objc_opt_self();
  v7 = [v6 configurationWithHierarchicalColor:v5];

  v8 = [v6 configurationWithScale:2];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10 withConfiguration:v9];

  *(v1 + v3) = v12;
  v13 = v3;
  v14 = OBJC_IVAR____TtC7Journal22EntryMapViewController_trifoldMapIcon;
  v15 = [v4 tintColor];
  v16 = [v6 configurationWithHierarchicalColor:v15];

  v17 = [v6 configurationWithScale:2];
  v18 = [v16 configurationByApplyingConfiguration:v17];

  v19 = String._bridgeToObjectiveC()();
  v20 = [v11 systemImageNamed:v19 withConfiguration:v18];

  *(v1 + v14) = v20;
  v21 = (v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_mapViewObservation);
  *v21 = 0;
  v21[1] = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_needsToRemoveSelection) = 1;
  v22 = OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent;
  *(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent) = 0;

  v23 = sub_1000F24EC(&unk_100AEED40);
  v24 = *(*(v23 - 8) + 8);
  v24(v1 + v31, v23);
  v24(v1 + v30, v23);
  v24(v1 + v29, v23);

  swift_unknownObjectRelease();
  type metadata accessor for EntryMapViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100714F28(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline] = 0;
  *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController] = 0;
  v2 = OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController;
  *&v1[v2] = [objc_allocWithZone(PXPlacesMapController) init];
  *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_pinPipeline] = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  v3 = OBJC_IVAR____TtC7Journal22EntryMapViewController_globeIcon;
  v4 = objc_opt_self();
  v5 = [v4 tintColor];
  v6 = objc_opt_self();
  v7 = [v6 configurationWithHierarchicalColor:v5];

  v8 = [v6 configurationWithScale:2];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10 withConfiguration:v9];

  *&v1[v3] = v12;
  v13 = OBJC_IVAR____TtC7Journal22EntryMapViewController_trifoldMapIcon;
  v14 = [v4 tintColor];
  v15 = [v6 configurationWithHierarchicalColor:v14];

  v16 = [v6 configurationWithScale:2];
  v17 = [v15 configurationByApplyingConfiguration:v16];

  v18 = String._bridgeToObjectiveC()();
  v19 = [v11 systemImageNamed:v18 withConfiguration:v17];

  *&v1[v13] = v19;
  v20 = &v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_mapViewObservation];
  *v20 = 0;
  v20[1] = 0;
  v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_needsToRemoveSelection] = 1;
  *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent] = 0;
  *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_locationMapPinsStore] = [objc_allocWithZone(type metadata accessor for EntryMapPinsStore()) init];
  v24.receiver = v1;
  v24.super_class = type metadata accessor for EntryMapViewController();
  v21 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  [v21 setUserActivity:a1];
  [v21 setDefinesPresentationContext:1];

  return v21;
}

void sub_100715298()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for EntryMapViewController();
  objc_msgSendSuper2(&v48, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController];
    v5 = [v4 mapView];
    [v3 addSubview:v5];

    v6 = [v4 mapView];
    sub_100013178(0.0);

    v7 = [v4 mapView];
    type metadata accessor for EntryMapMarkerAnnotationView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v7 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];

    v9 = [v4 mapView];
    [v9 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier];

    [v4 setSelectionDelegate:v1];
    [v4 setChangeDelegate:v1];
    v10 = [v4 mapView];
    v11 = [v10 observable];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v12 = PXObservable.observeChanges(using:)();
    v14 = v13;

    v15 = &v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_mapViewObservation];
    *v15 = v12;
    v15[1] = v14;
    swift_unknownObjectRelease();
    v16 = [v1 px_extendedTraitCollection];
    v17 = objc_allocWithZone(type metadata accessor for EntryMapPinRenderer());
    v18 = sub_100562600(0);
    v19 = [objc_allocWithZone(PXPlacesMapThumbnailRenderer) initWithTraitCollection:v16 informationDelegate:v18 popoverImageType:3 popoverImageOptions:0 countLabelStyle:1 thumbnailLocationCurator:0];
    v20 = *&v18[OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer];
    *&v18[OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer] = v19;
    v47 = v19;

    v21 = OBJC_IVAR____TtC7Journal22EntryMapViewController_locationMapPinsStore;
    v22 = *(*&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_locationMapPinsStore] + OBJC_IVAR____TtC7Journal17EntryMapPinsStore_store);
    v23 = objc_opt_self();
    v24 = v22;
    v25 = v18;
    v26 = [v23 sharedInstance];
    v27 = v16;
    [v26 backgroundImageSizeForType:3 usingTraitCollection:v16];
    v29 = v28;
    v31 = v30;

    v32 = [objc_allocWithZone(PXPlacesMapThumbnailClusterLayout) initWithDataSource:v24];
    v33 = v32;
    if (v32)
    {
      [v32 setHorizontalClusteringDistancePixels:v29];
      [v33 setVerticalClusteringDistancePixels:v31];
    }

    v34 = [objc_allocWithZone(PXPlacesMapInPlaceUpdatePlan) init];
    v35 = [objc_allocWithZone(type metadata accessor for JournalMapPassthroughSelectionHandler()) init];
    v36 = [objc_allocWithZone(PXPlacesMapPipeline) initWithLayout:v33 updatePlan:v34 renderer:v25 selectionHandler:v35];

    v37 = *&v1[v21];
    v38 = OBJC_IVAR____TtC7Journal22EntryMapViewController_pinPipeline;
    v39 = *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_pinPipeline];
    *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_pinPipeline] = v36;
    v40 = v37;
    v41 = v36;

    v42 = *&v1[v21];
    *&v1[v21] = v40;
    v43 = v40;

    if (*&v1[v38])
    {
      [v4 addPipeline:?];
    }

    sub_100715BA0();
    v44 = [objc_allocWithZone(MKStandardMapConfiguration) init];
    v45 = [objc_opt_self() filterExcludingAllCategories];
    [v44 setPointOfInterestFilter:v45];

    v46 = [v4 mapView];
    [v46 setPreferredConfiguration:v44];

    [v4 resumePipelines:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1007157C8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1007178E0(a2);
  }
}

void sub_10071586C(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EntryMapViewController();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline;
  if (!*&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline])
  {
    v4 = [v1 userActivity];
    v5 = objc_allocWithZone(type metadata accessor for EntryMapEntriesViewController());
    *&v5[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController____lazy_storage___model] = 0;
    *&v5[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryMapEntriesDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v5[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entriesViewType] = 1;
    *&v5[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds] = 0;
    v6 = v4;
    v7 = v1;
    v8 = sub_100013708(v6, 0);
    *&v8[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryMapEntriesDelegate + 8] = &off_100A79F40;
    swift_unknownObjectWeakAssign();
    v9 = *&v7[v3];
    *&v7[v3] = v8;
    v10 = v8;

    v11 = [objc_allocWithZone(type metadata accessor for EntryMapSheetNavigationController()) initWithRootViewController:v10];
    [v7 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_100715A2C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EntryMapViewController();
  objc_msgSendSuper2(&v6, "didMoveToParentViewController:", a1);
  if (!a1)
  {
    v3 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline;
    v4 = *&v1[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline];
    if (v4)
    {
      if (([v4 isBeingDismissed] & 1) == 0)
      {
        [v1 dismissViewControllerAnimated:0 completion:0];
        v5 = *&v1[v3];
        *&v1[v3] = 0;
      }
    }
  }
}

void sub_100715BA0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v0 navigationItem];
  v5 = [v4 standardAppearance];
  if (!v5 || (v6 = v5, v7 = [v5 _titleControlHidden], v6, (v7 & 1) == 0))
  {
    v8 = [v4 standardAppearance];
    if (!v8)
    {
      v8 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v9 = v8;
    [v8 _setTitleControlHidden:1];
    [v4 setStandardAppearance:v9];

    v4 = v9;
  }

  v10 = *&v0[OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController];
  v11 = [v10 mapView];
  [v11 setShowsCompass:1];

  v12 = [v10 mapView];
  [v12 setShowsAttribution:0];

  v13 = [v10 mapView];
  v14 = [v13 mapType];

  if (v14)
  {
    v15 = v14 == 5;
  }

  else
  {
    v15 = 1;
  }

  v16 = &OBJC_IVAR____TtC7Journal22EntryMapViewController_trifoldMapIcon;
  if (!v15)
  {
    v16 = &OBJC_IVAR____TtC7Journal22EntryMapViewController_globeIcon;
  }

  v17 = *&v0[*v16];
  sub_1000065A8(0, &qword_100AD43B0);
  v18 = v17;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v39 = v18;
  v19 = v0;
  UIBarButtonItem.init(title:image:target:action:menu:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v19;
  static UIViewController.ViewLoading.subscript.setter();
  v21 = [v10 mapView];
  v22 = objc_allocWithZone(type metadata accessor for MapUserTrackingBarButtonItem());
  v23 = sub_10018E544(v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v20;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v25 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v26 = String._bridgeToObjectiveC()();

  [v25 setTitle:v26];

  v27 = [v10 mapView];
  [v27 setPitchButtonVisibility:1];

  v28 = [v10 mapView];
  v29 = [objc_opt_self() pitchButtonWithMapView:v28];

  v30 = v29;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setVisibility:2];
  v31 = [objc_opt_self() labelColor];
  v32 = [v31 colorWithAlphaComponent:0.64];

  [v30 setTintColor:v32];
  [v30 _setControlSize:0];
  v33 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v30];

  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v24;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v35 = String._bridgeToObjectiveC()();

  [v33 setTitle:v35];

  v36 = [v34 navigationItem];
  sub_1000F24EC(&unk_100AD4780);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100941830;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v37 + 32) = v33;
  *(v37 + 40) = [objc_opt_self() fixedSpaceItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v37 + 48) = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v37 + 56) = v33;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 setRightBarButtonItems:isa];
}

void sub_10071642C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline);
  if (v3)
  {
    v6 = v3;
    v7 = sub_1007169FC(a1, a2);
    v8 = [objc_allocWithZone(CATransition) init];
    [v8 setDuration:0.4];
    [v8 setType:kCATransitionMoveIn];
    [v8 setSubtype:kCATransitionFromTop];
    v9 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionDefault];
    [v8 setTimingFunction:v9];

    v10 = v6;
    v11 = [v10 navigationController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 view];

      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = [v13 layer];

      [v14 addAnimation:v8 forKey:kCATransition];
    }

    v15 = [v10 navigationController];
    if (v15)
    {
      v16 = v15;
      sub_1000F24EC(&unk_100AD4780);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100941D60;
      *(v17 + 32) = v10;
      *(v17 + 40) = v7;
      sub_1000065A8(0, &qword_100AD4C80);
      v18 = v10;
      v19 = v7;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 setViewControllers:isa animated:0];
    }

    v21 = [v10 navigationController];

    if (!v21)
    {
      goto LABEL_21;
    }

    v22 = [v21 presentationController];

    if (!v22)
    {
      goto LABEL_21;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {
      v31 = v8;
      v8 = v10;
      v10 = v22;
LABEL_20:
      v33 = v10;

      v10 = v7;
      v7 = v33;
LABEL_21:

      *(v2 + OBJC_IVAR____TtC7Journal22EntryMapViewController_needsToRemoveSelection) = 0;
      return;
    }

    v24 = v23;
    v25 = [v23 selectedDetentIdentifier];
    v26 = v25;
    if (qword_100AD0B60 == -1)
    {
      if (!v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      swift_once();
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
    {

LABEL_17:
      [v24 setSelectedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
      v31 = v22;
      goto LABEL_20;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_17;
    }

LABEL_19:
    v31 = v8;
    v8 = v22;
    goto LABEL_20;
  }
}

void sub_100716824()
{
  v1 = [objc_allocWithZone(CATransition) init];
  [v1 setDuration:0.4];
  [v1 setType:kCATransitionReveal];
  [v1 setSubtype:kCATransitionFromBottom];
  v2 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionDefault];
  [v1 setTimingFunction:v2];

  v3 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline);
  if (!v4)
  {
LABEL_8:

    *(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_needsToRemoveSelection) = 0;
    return;
  }

  v5 = [v4 navigationController];
  if (!v5)
  {
LABEL_5:
    v9 = *(v0 + v3);
    if (v9)
    {
      v10 = [v9 navigationController];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 popViewControllerAnimated:0];

        v1 = v12;
      }
    }

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v5 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 addAnimation:v1 forKey:kCATransition];
    goto LABEL_5;
  }

  __break(1u);
}

char *sub_1007169FC(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v5 - 8);
  v44 = &v39 - v6;
  v7 = type metadata accessor for VisitAssetMetadata();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v42 = &v39 - v11;
  v12 = [v2 userActivity];
  v13 = objc_allocWithZone(type metadata accessor for EntryMapEntriesViewController());
  *&v13[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController____lazy_storage___model] = 0;
  *&v13[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryMapEntriesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entriesViewType] = 1;
  *&v13[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds] = 0;
  v14 = sub_100013708(v12, 0);
  v14[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entriesViewType] = 0;
  *&v14[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryMapEntriesDelegate + 8] = &off_100A79F40;
  swift_unknownObjectWeakAssign();
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setHidesBackButton:1];

  v17 = [v15 navigationItem];
  sub_1000065A8(0, &qword_100AD43B0);
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v50, v51).super.super.isa;
  [v17 setRightBarButtonItem:isa];

  v19 = OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds;
  *&v15[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds] = a1;

  *(sub_1004CE020() + OBJC_IVAR____TtC7Journal18EntryListViewModel_entryIDs) = *&v15[v19];

  sub_100119574();

  if (a2)
  {
    v40 = v15;
    v20 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_21;
    }

    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v44; v21; i = v44)
    {
      v23 = 0;
      v47 = a2 & 0xC000000000000001;
      v24 = (v43 + 48);
      v25 = (v43 + 32);
      v26 = _swiftEmptyArrayStorage;
      v45 = v21;
      v46 = v20;
      v41 = a2;
      while (1)
      {
        if (v47)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v20 + 16))
          {
            goto LABEL_20;
          }

          v28 = *(a2 + 8 * v23 + 32);
        }

        v29 = v28;
        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v49 = v28;
        sub_100717098(&v49, i);

        if ((*v24)(i, 1, v7) == 1)
        {
          sub_100004F84(i, &unk_100AEED20);
        }

        else
        {
          v30 = v7;
          v31 = *v25;
          v32 = v42;
          (*v25)(v42, i, v30);
          v33 = v32;
          v7 = v30;
          v31(v48, v33, v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1003E5074(0, *(v26 + 2) + 1, 1, v26);
          }

          v35 = *(v26 + 2);
          v34 = *(v26 + 3);
          if (v35 >= v34 >> 1)
          {
            v26 = sub_1003E5074(v34 > 1, v35 + 1, 1, v26);
          }

          *(v26 + 2) = v35 + 1;
          v31(v26 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35, v48, v30);
          a2 = v41;
          i = v44;
        }

        ++v23;
        v27 = v20 == v45;
        v20 = v46;
        if (v27)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_23:
    sub_1000782E4(v26);

    v15 = v40;
    v36 = [v40 navigationItem];

    v37 = String._bridgeToObjectiveC()();

    [v36 setTitle:v37];
  }

  else
  {
  }

  return v15;
}

void sub_100716FD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100716824();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController);

    v5 = [v4 mapView];
    [v5 deselectAllAnnotationsAnimated:1];
  }
}

uint64_t sub_100717098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000F24EC(&unk_100AEED30);
  __chkstk_darwin(v3 - 8);
  v48 = &v47 - v4;
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v47 - v8;
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = type metadata accessor for AssetType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&unk_100ADC680);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v18 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v24 = type metadata accessor for Locale();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v25 - 8);
  v26 = *a1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v27;
  v28 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
  swift_beginAccess();
  (*(v12 + 104))(v23, enum case for AssetType.workoutRoute(_:), v11);
  (*(v12 + 56))(v23, 0, 1, v11);
  v29 = *(v15 + 56);
  sub_100719524(v26 + v28, v17);
  sub_100719524(v23, &v17[v29]);
  v30 = *(v12 + 48);
  if (v30(v17, 1, v11) == 1)
  {
    sub_100004F84(v23, &qword_100AE4290);
    if (v30(&v17[v29], 1, v11) == 1)
    {
      sub_100004F84(v17, &qword_100AE4290);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100719524(v17, v20);
  if (v30(&v17[v29], 1, v11) == 1)
  {
    sub_100004F84(v23, &qword_100AE4290);
    (*(v12 + 8))(v20, v11);
LABEL_6:
    sub_100004F84(v17, &unk_100ADC680);
LABEL_7:

    v31 = *(v26 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8);
    v50 = *(v26 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName);
    v54 = v31;

    goto LABEL_8;
  }

  v45 = v47;
  (*(v12 + 32))(v47, &v17[v29], v11);
  sub_100719594();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v12 + 8);
  v46(v45, v11);
  sub_100004F84(v23, &qword_100AE4290);
  v46(v20, v11);
  sub_100004F84(v17, &qword_100AE4290);
  if ((v55 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v47 = *(v26 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city);
  v32 = type metadata accessor for Date();
  v33 = *(*(v32 - 8) + 56);
  v33(v51, 1, 1, v32);
  v33(v53, 1, 1, v32);
  v33(v52, 1, 1, v32);
  v34 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location;
  v35 = *(v26 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location);

  [v35 coordinate];
  [*(v26 + v34) coordinate];
  v36 = *(v26 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem);
  if (v36)
  {
    sub_1000065A8(0, &qword_100AD5A90);
    v37 = v36;
    NSCoding<>.toData.getter();
  }

  v38 = enum case for AssetSource.locationPicker(_:);
  v39 = type metadata accessor for AssetSource();
  v40 = *(v39 - 8);
  v41 = v48;
  (*(v40 + 104))(v48, v38, v39);
  (*(v40 + 56))(v41, 0, 1, v39);
  v42 = v49;
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  v43 = type metadata accessor for VisitAssetMetadata();
  return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
}

void sub_1007178E0(char a1)
{
  if ((a1 & 2) != 0)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController) mapView];
    v3 = [v2 preferredConfiguration];

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    if (v4)
    {
      v5 = &OBJC_IVAR____TtC7Journal22EntryMapViewController_trifoldMapIcon;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC7Journal22EntryMapViewController_globeIcon;
    }

    [v6 setImage:*(v1 + *v5)];
  }
}

void sub_100717A0C()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v3 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController;
  if (!*&v0[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController])
  {
    v4 = [*&v0[OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController] mapView];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    objc_allocWithZone(type metadata accessor for MapModePicker());
    v6 = v0;
    v7 = v0;
    sub_1008B5DE0(v4, sub_1007194F0, v5);
    v9 = v8;

    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    v10 = v9;
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    [v10 setPreferredContentSize:?];
    v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];

    v12 = v11;
    [v12 setModalPresentationStyle:7];
    v13 = *&v7[v3];
    *&v7[v3] = v12;
    v14 = v12;

    v15 = [v14 popoverPresentationController];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 adaptiveSheetPresentationController];

      if (v17)
      {
        v18 = String._bridgeToObjectiveC()();
        sub_1000065A8(0, &qword_100AD85C0);
        v19 = v18;
        v20 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();
        sub_1000F24EC(&unk_100AD4780);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100941D50;
        *(v21 + 32) = v20;
        v22 = v20;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 setDetents:isa];

        [v17 setLargestUndimmedDetentIdentifier:v19];
        [v17 setSelectedDetentIdentifier:v19];

        [v17 setPrefersGrabberVisible:0];
        [v17 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
      }
    }

    v24 = [v14 presentationController];
    if (v24)
    {
      v25 = v24;
      [v24 setDelegate:v10];
    }

    v26 = [v14 popoverPresentationController];
    if (v26)
    {
      v27 = v26;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      [v27 setSourceItem:aBlock[0]];
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100719514;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100023FEC;
    aBlock[3] = &unk_100A7A060;
    v30 = _Block_copy(aBlock);

    v31 = [v28 _zoomWithOptions:0 sourceItemProvider:v30];
    _Block_release(v30);
    [v14 setPreferredTransition:v31];

    v32 = [v6 traitCollection];
    v33 = [v32 horizontalSizeClass];

    if (v33 == 1)
    {
      v34 = *&v6[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline];
      if (v34)
      {
        v35 = [v34 navigationController];
        if (v35)
        {
          v36 = v35;
          v37 = [v35 presentationController];

          if (v37)
          {
            objc_opt_self();
            v38 = swift_dynamicCastObjCClass();
            if (v38)
            {
              v39 = v38;
              v40 = [v38 selectedDetentIdentifier];
              v41 = *&v6[OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent];
              *&v6[OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent] = v40;

              v42 = [v39 detents];
              sub_1000065A8(0, &qword_100AD85C0);
              v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v55 = v39;
              if (v43 >> 62)
              {
LABEL_39:
                v56 = v43 & 0xFFFFFFFFFFFFFF8;
                v57 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v56 = v43 & 0xFFFFFFFFFFFFFF8;
                v57 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v44 = 0;
              while (1)
              {
                if (v57 == v44)
                {

                  return;
                }

                if ((v43 & 0xC000000000000001) != 0)
                {
                  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v44 >= *(v56 + 16))
                  {
                    goto LABEL_38;
                  }

                  v45 = *(v43 + 8 * v44 + 32);
                }

                v46 = v45;
                if (__OFADD__(v44, 1))
                {
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                v47 = [v45 identifier];
                if (qword_100AD0B60 != -1)
                {
                  swift_once();
                }

                v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v50 = v49;
                if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
                {
                  break;
                }

                v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

                ++v44;
                if (v53)
                {
                  goto LABEL_33;
                }
              }

LABEL_33:

              [v55 setSelectedDetentIdentifier:qword_100B31158];
            }
          }
        }
      }
    }

    v54 = UIViewController.forPresenting.getter();
    [v54 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t sub_1007181E0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    return v2;
  }

  return result;
}

void sub_1007182C8()
{
  v1 = OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedMapModePickerNavigationController);
  if (v2)
  {
    v3 = v2;
    if (([v3 isBeingDismissed] & 1) == 0)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = 0;

    v5 = OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent;
    v6 = *(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_previousSheetDetent);
    if (v6 && (v7 = *(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline)) != 0)
    {
      v15 = v6;
      v8 = [v7 navigationController];
      if (v8 && (v9 = v8, v10 = [v8 presentationController], v9, v10))
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = v15;
          [v12 setSelectedDetentIdentifier:v13];

          v14 = *(v0 + v5);
          *(v0 + v5) = 0;
        }

        else
        {

          v14 = v10;
        }
      }

      else
      {

        v14 = v15;
      }
    }

    else
    {
      v14 = v3;
    }
  }
}

id sub_1007184D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryMapViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EntryMapViewController()
{
  result = qword_100AEEC90;
  if (!qword_100AEEC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007186B0()
{
  sub_10000C298();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10071877C()
{
  v1 = v0;
  v18 = _swiftEmptySetSingleton;
  v2 = [*(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController) visibleGeotaggableFromDataSource:*(*(v0 + OBJC_IVAR____TtC7Journal22EntryMapViewController_locationMapPinsStore) + OBJC_IVAR____TtC7Journal17EntryMapPinsStore_store)];
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v3 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        sub_10001F45C(*(v3 + 48) + 40 * (v10 | (v9 << 6)), v17);
        v11.isa = AnyHashable._bridgeToObjectiveC()().isa;
        sub_100177B94(v17);
        type metadata accessor for DataAggregator.EntryPlace(0);
        v12 = swift_dynamicCastClass();
        if (v12 && *(v12 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs))
        {

          sub_100786228(v13);

          v4 = v9;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v4 = v9;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v4;
      }
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds;
    *&v14[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds] = v18;
    v16 = v14;

    *(sub_1004CE020() + OBJC_IVAR____TtC7Journal18EntryListViewModel_entryIDs) = *&v14[v15];

    sub_100119574();
  }

  else
  {
  }
}

void sub_100718B08(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    return;
  }

  v14 = v2;
  v3 = [v2 viewControllers];
  sub_1000065A8(0, &qword_100AD4C80);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_4:
      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v4 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v4 + 8 * v7 + 32);
LABEL_9:
          v9 = v8;

          v10 = a1;
          v11 = static NSObject.== infix(_:_:)();

          if (v11)
          {
            v13 = [v14 popViewControllerAnimated:1];

            v12 = v13;
          }

          else
          {
            v12 = v14;
          }

          return;
        }

        __break(1u);
        return;
      }

      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_100718CC4(void *a1)
{
  v1 = [a1 array];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100584CFC(v2);

  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_61:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v39 = _swiftEmptyArrayStorage;
    while (v6 != v7)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_55;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v11 = *&v8[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs];

      ++v7;
      if (v11 != 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1003E6DA8(0, *(v39 + 2) + 1, 1, v39);
        }

        v13 = *(v39 + 2);
        v12 = *(v39 + 3);
        if (v13 >= v12 >> 1)
        {
          v39 = sub_1003E6DA8((v12 > 1), v13 + 1, 1, v39);
        }

        *(v39 + 2) = v13 + 1;
        v39[v13 + 4] = v11;
        v7 = v10;
      }
    }

    v14 = v39;
    v42 = *(v39 + 2);
    if (v42)
    {
      v15 = 0;
      v16 = _swiftEmptyArrayStorage;
      v41 = v3;
      while (1)
      {
        if (v15 >= *(v14 + 2))
        {
          goto LABEL_56;
        }

        v3 = *&v39[v15 + 4];
        v17 = v3 >> 62;
        v18 = v3 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v16 >> 62;
        if (v16 >> 62)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
          v21 = v37 + v18;
          if (__OFADD__(v37, v18))
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = v20 + v18;
          if (__OFADD__(v20, v18))
          {
            goto LABEL_50;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v19)
        {
          goto LABEL_31;
        }

LABEL_32:
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v23 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
        v44 = v23;
        v5 = *(v22 + 16);
        v24 = *(v22 + 24);
        if (v17)
        {
          v26 = v22;
          v27 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v26;
          v25 = v27;
          if (!v27)
          {
LABEL_19:

            v3 = v41;
            v16 = v44;
            if (v18 > 0)
            {
              goto LABEL_57;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v25 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v25)
          {
            goto LABEL_19;
          }
        }

        if (((v24 >> 1) - v5) < v18)
        {
          goto LABEL_58;
        }

        v43 = v18;
        v28 = v22 + 8 * v5 + 32;
        v40 = v22;
        if (v17)
        {
          if (v25 < 1)
          {
            goto LABEL_60;
          }

          v5 = sub_10071948C();
          for (i = 0; i != v25; ++i)
          {
            sub_1000F24EC(&unk_100AEED10);
            v31 = sub_1006B35A0(v45, i, v3);
            v33 = *v32;
            (v31)(v45, 0);
            *(v28 + 8 * i) = v33;
          }

          v14 = v39;
          v29 = v43;
        }

        else
        {
          sub_1000065A8(0, &qword_100AD43F0);
          v29 = v43;
          swift_arrayInitWithCopy();
        }

        v3 = v41;
        v16 = v44;
        if (v29 > 0)
        {
          v34 = *(v40 + 16);
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_59;
          }

          *(v40 + 16) = v36;
        }

LABEL_20:
        if (++v15 == v42)
        {
          goto LABEL_52;
        }
      }

      if (!v19)
      {
        v22 = v16 & 0xFFFFFFFFFFFFFF8;
        v23 = v16;
        if (v21 <= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_31:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_32;
    }

LABEL_51:
    v16 = _swiftEmptyArrayStorage;
LABEL_52:

    v38 = sub_100891960(v16);

    sub_10071642C(v38, v3);
  }

  return result;
}

void sub_100719174()
{
  sub_10071877C();
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC7Journal22EntryMapViewController_presentedEntryTimeline];
  if (!v3)
  {
    return;
  }

  v4 = [v3 navigationController];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v21 = [v4 presentationController];

  if (!v21)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 selectedDetentIdentifier];
  v9 = v8;
  if (qword_100AD0B58 == -1)
  {
    if (!v8)
    {
LABEL_13:

      return;
    }
  }

  else
  {
    swift_once();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100719470;
  *(v17 + 24) = v16;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A79FE8;
  v18 = _Block_copy(aBlock);
  v19 = v21;

  [v7 animateChanges:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

unint64_t sub_10071948C()
{
  result = qword_100AED528;
  if (!qword_100AED528)
  {
    sub_1000F2A18(&unk_100AEED10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED528);
  }

  return result;
}

uint64_t sub_100719524(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100719594()
{
  result = qword_100ADC690;
  if (!qword_100ADC690)
  {
    type metadata accessor for AssetType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC690);
  }

  return result;
}

uint64_t sub_1007195FC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset);
  if (v9)
  {
    v23 = v9;
    Date.init()();
    v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v12 = &qword_100B2F628;
LABEL_11:
        v13 = *v12;
        v14 = *(v0 + v10);
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v2 + 16))(v5, v8, v1);
        v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v2 + 32))(v17 + v16, v5, v1);
        v18 = objc_opt_self();
        v19 = v13;

        v20 = [v18 currentTraitCollection];
        v21 = v23;
        sub_100076220(v14, 0, 1, v19, v20, sub_10071B50C, v17);

        (*(v2 + 8))(v8, v1);
      }
    }

    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v12 = &qword_100B2F630;
    goto LABEL_11;
  }

  return result;
}

void sub_1007199B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = type metadata accessor for VisitAssetMetadata();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v67 = &v54 - v11;
  v12 = sub_1000F24EC(&qword_100ADA938);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for GenericMapAssetMetadata();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC7Journal19GenericMapAssetView_mkMapView;
  v19 = *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mkMapView);
  if (v19 || (v20 = [objc_allocWithZone(MKMapView) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v21 = *(v0 + v18), *(v0 + v18) = v20, v21, (v19 = *(v0 + v18)) != 0))
  {
    v22 = *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset);
    if (v22)
    {
      v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = v17;
      v23 = v19;
      v24 = v22;
      sub_1006AAA94(v14);
      v25 = v68;
      if ((*(v68 + 48))(v14, 1, v15) == 1)
      {

        v26 = &qword_100ADA938;
        v27 = v14;
      }

      else
      {
        v56 = v24;
        v28 = v58;
        (*(v25 + 32))(v58, v14, v15);
        v29 = v25;
        GenericMapAssetMetadata.visitsData.getter();
        v31 = v65;
        v30 = v66;
        if ((*(v65 + 48))(v7, 1, v66) != 1)
        {
          v38 = v31;
          v55 = *(v31 + 32);
          v55(v67, v7, v30);
          v39 = v23;
          v40 = [v23 _panningGestureRecognizer];
          if (v40)
          {
            v41 = v30;
            v42 = v40;
            [v40 setMinimumNumberOfTouches:2];

            [v39 setShowsAttribution:0];
            sub_100005508();
            v54 = static OS_dispatch_queue.main.getter();
            v43 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v44 = v57;
            (*(v38 + 16))(v57, v67, v41);
            v45 = (*(v38 + 80) + 24) & ~*(v38 + 80);
            v46 = (v9 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
            v47 = swift_allocObject();
            *(v47 + 16) = v43;
            v55((v47 + v45), v44, v41);
            *(v47 + v46) = v39;
            aBlock[4] = sub_10071B6AC;
            aBlock[5] = v47;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006C7C;
            aBlock[3] = &unk_100A7A1A0;
            v48 = _Block_copy(aBlock);
            v49 = v39;

            v50 = v59;
            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_1000826D8();
            sub_1000F24EC(&unk_100AD6220);
            sub_100006610();
            v51 = v61;
            v52 = v64;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v53 = v54;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v48);
            (*(v63 + 8))(v51, v52);
            (*(v60 + 8))(v50, v62);
            (*(v38 + 8))(v67, v41);
            (*(v68 + 8))(v58, v15);
          }

          else
          {
            __break(1u);
          }

          return;
        }

        (*(v29 + 8))(v28, v15);

        v26 = &unk_100AEED20;
        v27 = v7;
      }

      sub_100004F84(v27, v26);
    }
  }

  *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
  v32 = *(v1 + v18);
  if (v32)
  {
    [v32 setHidden:1];
  }

  [*(v1 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView) setHidden:1];
  v33 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:0];
  v34 = *(v1 + v33);
  v35 = *((swift_isaMask & *v34) + 0x58);
  v36 = *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v37 = v34;
  v35(10, v36);
}

id sub_10071A168(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mkMapView] = 0;
  v9 = OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal19GenericMapAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset] = 0;
  v4[OBJC_IVAR____TtC7Journal19GenericMapAssetView_isInteractive] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for GenericMapAssetView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_10071A24C();

  return v10;
}

uint64_t sub_10071A24C()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView];
  [v0 addSubview:v1];
  [v1 setContentMode:2];
  [v1 setAlpha:0.0];
  [v1 setClipsToBounds:1];
  v2 = OBJC_IVAR____TtC7Journal19GenericMapAssetView_mkMapView;
  v3 = *&v0[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mkMapView];
  if (v3)
  {
    v4 = objc_allocWithZone(MKPointOfInterestFilter);
    type metadata accessor for MKPointOfInterestCategory(0);
    v5 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7 = [v4 initIncludingCategories:isa];

    [v5 setPointOfInterestFilter:v7];
    v8 = *&v0[v2];
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 clearColor];
      [v10 setBackgroundColor:v11];
    }
  }

  sub_1000F24EC(&unk_100AEBEC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100940080;
  *(v12 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v12 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v15[3] = type metadata accessor for GenericMapAssetView();
  v15[0] = v0;
  v13 = v0;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  return sub_10000BA7C(v15);
}

id sub_10071A4C4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for GenericMapAssetView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10071A510(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for GenericMapAssetView();
  v12 = *a7;
  v13 = v16.receiver;
  objc_msgSendSuper2(&v16, v12, a2, a3, a4, a5);
  v14 = *&v13[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v13 bounds];
  [v14 setFrame:?];

  v15 = *&v13[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView];
  [v13 bounds];
  [v15 setFrame:?];
}

uint64_t sub_10071A5F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(10, v3);

  return sub_1007195FC();
}

void *sub_10071A6A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset);
  v2 = v1;
  return v1;
}

void sub_10071A6D4()
{
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset);
}

id sub_10071A734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10071A7F8(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v24 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v23 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v22, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_10071B580;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7A100;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
}

void sub_10071ABA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_1000F24EC(&unk_100AD4790);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v35 = a3;
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = a2;
      v36 = v21;
      v22 = v19[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v33 = v11;
      if (v22 > 3 && v22 > 6)
      {
        v24 = 1;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v34 = a2;

      v23 = v19;

      (*(v6 + 16))(v17, v35, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      if (v24)
      {
        goto LABEL_11;
      }

      sub_100088AC8(v17, v15);
      if ((*(v6 + 48))(v15, 1, v5) == 1)
      {
        sub_100004F84(v15, &unk_100AD4790);
      }

      else
      {
        v26 = v33;
        (*(v6 + 32))(v33, v15, v5);
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v28 = v27;
        v29 = *(v6 + 8);
        v29(v9, v5);
        v29(v26, v5);
        if (v28 < 0.1)
        {
LABEL_11:
          v25 = v34;
          sub_10071B104(v20, v34);

LABEL_16:
          sub_100004F84(v17, &unk_100AD4790);

          goto LABEL_17;
        }
      }

      v30 = objc_opt_self();
      aBlock[4] = sub_10071B5E4;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A7A150;
      v31 = _Block_copy(aBlock);

      [v30 animateWithDuration:0x10000 delay:v31 options:0 animations:0.1 completion:0.0];

      _Block_release(v31);

      goto LABEL_16;
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
LABEL_17:
    v23[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
  }
}

void sub_10071B104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView);

    [v5 setImage:a2];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView);

    [v8 setAlpha:1.0];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);

    [v11 setHidden:1];
  }
}

void sub_10071B23C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    VisitAssetMetadata.latitude.getter();
    if ((v7 & 1) == 0)
    {
      VisitAssetMetadata.longitude.getter();
      if ((v8 & 1) == 0)
      {
        sub_1000F24EC(&qword_100AD64A8);
        v9 = type metadata accessor for VisitAssetMetadata();
        v10 = *(v9 - 8);
        v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100940080;
        (*(v10 + 16))(v12 + v11, a2, v9);
        v13 = sub_10032BED4(v12);
        swift_setDeallocating();
        (*(v10 + 8))(v12 + v11, v9);
        swift_deallocClassInstance();
        v14 = [objc_opt_self() currentTraitCollection];
        v15 = sub_100505EC0(v13, 0, 7u, 0, 0, 1, v14, 0);

        v16 = [v15 camera];

        [a3 setCamera:v16 animated:1];
      }
    }

    [v6 addSubview:a3];
    sub_100013178(0.0);

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      sub_100760CA8(*(v17 + OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardView), 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10071B50C(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10071A7F8(a1, v4, v5);
}

void sub_10071B580()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_10071ABA4(v2, v3, v4);
}

void sub_10071B5EC()
{
  *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mkMapView) = 0;
  v1 = OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_isInteractive) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10071B6AC()
{
  v1 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10071B23C(v3, v0 + v2, v4);
}

uint64_t sub_10071B748(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PaperMarkup();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset;
  v12 = *(v2 + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset);
  *(v2 + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset) = a1;
  v13 = a1;

  v14 = *(v2 + v11);
  if (!v14)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_100004F84(v6, &unk_100ADC5E0);
  }

  v15 = v14;
  sub_1001B845C(v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    return sub_100004F84(v6, &unk_100ADC5E0);
  }

  (*(v8 + 32))(v10, v6, v7);
  v17 = *(v2 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
  if (v17)
  {
    v18 = v17;
    sub_10049862C(v10);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_10071B9C4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADC608);
  __chkstk_darwin(v2);
  v4 = &v44 - v3;
  v5 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for PaperMarkup();
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView;
  if (*&v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView])
  {
    return;
  }

  v47 = v7;
  v48 = v4;
  v50 = &v44 - v21;
  v51 = v22;
  type metadata accessor for PaperKitDrawingCanvasView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = *&v1[v23];
  *&v1[v23] = v24;
  v26 = v24;

  [v1 addSubview:v26];
  sub_100013178(0.0);

  v27 = *&v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset];
  if (!v27)
  {

    (*(v51 + 56))(v16, 1, 1, v17);
    goto LABEL_6;
  }

  v49 = v26;
  v28 = v27;
  sub_1001B845C(v16);

  v29 = v51;
  v30 = *(v51 + 48);
  if (v30(v16, 1, v17) == 1)
  {

LABEL_6:
    sub_100004F84(v16, &unk_100ADC5E0);
    goto LABEL_7;
  }

  v45 = *(v29 + 32);
  v46 = v29 + 32;
  v45(v50, v16, v17);
  v33 = v30;
  v34 = *&v49[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  dispatch thunk of PaperMarkupViewController.markup.getter();

  v35 = v33;
  (*(v29 + 16))(v10, v50, v17);
  (*(v29 + 56))(v10, 0, 1, v17);
  v36 = *(v2 + 48);
  v37 = v48;
  sub_1001BA4DC(v13, v48);
  sub_1001BA4DC(v10, v37 + v36);
  if (v35(v37, 1, v17) == 1)
  {
    sub_100004F84(v10, &unk_100ADC5E0);
    sub_100004F84(v13, &unk_100ADC5E0);
    if (v35(v37 + v36, 1, v17) == 1)
    {
      sub_100004F84(v37, &unk_100ADC5E0);
      v38 = *(v51 + 8);
LABEL_22:
      v43 = v49;
      v38(v50, v17);

LABEL_7:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      if (v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_toolsVisible] != 1)
      {
        goto LABEL_10;
      }

LABEL_9:
      v32 = Strong;
      sub_10071C024(Strong, 1);
      Strong = v32;
LABEL_10:

      return;
    }
  }

  else
  {
    v39 = v47;
    sub_1001BA4DC(v37, v47);
    if (v35(v37 + v36, 1, v17) != 1)
    {
      v45(v19, (v37 + v36), v17);
      sub_10071C438();
      LODWORD(v46) = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = v37;
      v38 = *(v51 + 8);
      v38(v19, v17);
      sub_100004F84(v10, &unk_100ADC5E0);
      sub_100004F84(v13, &unk_100ADC5E0);
      v38(v39, v17);
      sub_100004F84(v42, &unk_100ADC5E0);
      if (v46)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    sub_100004F84(v10, &unk_100ADC5E0);
    sub_100004F84(v13, &unk_100ADC5E0);
    (*(v51 + 8))(v39, v17);
  }

  sub_100004F84(v37, &qword_100ADC608);
LABEL_18:
  v40 = v49;
  v41 = v50;
  sub_10049862C(v50);

  (*(v51 + 8))(v41, v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_toolsVisible] & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }
}