uint64_t sub_1004795D4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097F480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100479640(uint64_t a1)
{
  v2 = type metadata accessor for ActionLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v7 + 8))(v9, v6);
  sub_10065E058(a1, v5);
  ShelfLayoutContext.traitEnvironment.getter();
  static ActionLayout.estimatedMeasurements(fitting:using:in:)();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_100479810()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v45 = *(v0 - 8);
  v46 = v0;
  __chkstk_darwin(v0);
  v2 = &v41[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for ActionLayout.Metrics();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v47 = &v41[-v6];
  __chkstk_darwin(v7);
  v9 = &v41[-v8];
  v10 = type metadata accessor for PageGrid();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&unk_1009731F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41[-v15];
  type metadata accessor for Action();
  sub_100479F20(&qword_100992FB0, &type metadata accessor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v52)
  {
    return 0.0;
  }

  v51 = v52;

  sub_10002849C(&unk_100980530);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v52, *(&v53 + 1));
    v42 = SearchAdOpportunityProviding.isSearchAd.getter();
    sub_100007000(&v52);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_100479F68(&v52);
    v42 = 0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v14 + 8))(v16, v13);
  if (v52 == 1)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v43 + 8))(v12, v44);
    ItemLayoutContext.parentShelfLayoutContext.getter();
    sub_10065E058(v2, v9);
    (*(v45 + 8))(v2, v46);
    v18 = sub_100079F24();
    swift_getObjectType();
    sub_100615214(v9, v18);
    v17 = v19;

    swift_unknownObjectRelease();
    (*(v49 + 8))(v9, v50);
  }

  else
  {
    v20 = ASKDeviceTypeGetCurrent();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v49;
    if (v21 != v24 || v23 != v25)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    ItemLayoutContext.parentShelfLayoutContext.getter();
    v27 = v47;
    sub_10065E058(v2, v47);
    (*(v45 + 8))(v2, v46);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v43 + 8))(v12, v44);
    v28 = v50;
    (*(v26 + 16))(v48, v27, v50);
    v29 = sub_100079F24();
    v30 = Action.title.getter();
    v32 = v31;
    v33 = Action.artwork.getter();
    if (v33)
    {
    }

    v34 = v33 != 0;
    swift_getObjectType();
    v35 = sub_100079F24();
    swift_getObjectType();
    v36 = sub_10028F24C(v35);
    swift_unknownObjectRelease();
    v37 = v48;
    sub_100614920(v48, v29, v30, v32, v34, v36, v42 & 1);
    v17 = v38;

    swift_unknownObjectRelease();

    v39 = *(v26 + 8);
    v39(v37, v28);
    v39(v47, v28);
  }

  return v17;
}

uint64_t sub_100479F20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100479F68(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100992FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100479FD4(uint64_t a1)
{
  v59 = a1;
  v58 = sub_10002849C(&qword_100979358);
  v66.i64[0] = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v47 - v1;
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v64 = type metadata accessor for PageGrid.HorizontalMargins();
  v69 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  __chkstk_darwin(v12);
  v57 = v47 - v13;
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  sub_10002849C(&qword_100970EF0);
  v17 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v54 = v19;
  *(v19 + 16) = xmmword_1007B23A0;
  v20 = v19 + v18;
  v72 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4020000000000000;
  v70 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v62 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v65 = *(v69 + 104);
  v69 += 104;
  v26 = v64;
  v65(v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  v61 = v8;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v72 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4024000000000000;
  v70 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  v56 = v5;
  *v5 = _Q0;
  v29 = v62;
  v30 = v65;
  (v65)(v5, v62, v26);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v67;
  v63 = v20;
  v60 = v16;
  top = UIEdgeInsetsZero.top;
  v52 = left;
  v32 = v56;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v50 = 2 * v31;
  v72 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  v55 = v11;
  PageGrid.DirectionalValue.init(_:)();
  v48 = vdupq_n_s64(0x4041000000000000uLL);
  *v32 = v48;
  v33 = v64;
  v30(v32, v29, v64);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v50;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v74 = 0x4000000000000000;
  v47[1] = v34 + v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  v50 = sub_1001E8728();
  v35 = v53;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v36 = v58;
  AccessibilityConditional.value(for:)();
  v37 = *(v66.i64[0] + 8);
  v66.i64[0] += 8;
  v49 = v37;
  v37(v35, v36);
  v70 = v72;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v56;
  *v56 = v48;
  v39 = v62;
  (v65)(v38, v62, v33);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v74 = 0x4000000000000000;
  v48.i64[0] = 4 * v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v40 = v58;
  AccessibilityConditional.value(for:)();
  v49(v35, v40);
  v70 = v72;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v66 = vdupq_n_s64(0x404A000000000000uLL);
  *v38 = v66;
  v41 = v38;
  v42 = v38;
  v43 = v64;
  v44 = v65;
  (v65)(v41, v39, v64);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = v48.i64[0];
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v67 += v45;
  v72 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v42 = v66;
  (v44)(v42, v62, v43);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v54;
}

double sub_10047AC28(void *a1)
{
  v2 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E508 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v9, qword_1009D1F00);
  (*(v10 + 16))(v12, v13, v9);
  v14 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v15 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v15 = qword_100991028;
  }

  v16 = sub_1000056A8(v2, v15);
  (*(v3 + 16))(v5, v16, v2);

  (*(v3 + 32))(v8, v5, v2);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseLockupViewLayout.Metrics.offerButtonSize.setter();
  type metadata accessor for InAppPurchaseLockupViewLayout();
  sub_10047B294(&qword_100986CC0, &type metadata accessor for InAppPurchaseLockupViewLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v18 = v17;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_10047AFA8()
{
  v22 = type metadata accessor for Shelf.PresentationHints();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = ShelfLayoutContext.traitCollection.getter();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v23.receiver = v15;
  v23.super_class = v14;
  v17 = objc_msgSendSuper2(&v23, "init");
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v12(v9, v6);
  sub_10047AC28(v17);

  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10047B294(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v18 = v22;
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v0 + 8);
  v19(v2, v18);
  return (v19)(v5, v18);
}

uint64_t sub_10047B294(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10047B2DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "setBackgroundColor:", a1);
  [*(*&v1[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:a1];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setBackgroundColor:a1];
  }
}

void sub_10047B37C()
{
  v1 = OBJC_IVAR____TtC8AppStore9MediaView_reflectionView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (*&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] > 0.0)
  {
    if (v2)
    {
      return;
    }

    v3 = *(*&v0[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v3)
    {
      type metadata accessor for VideoView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale];
        v7 = v0;
        v8 = -*&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset];
        v9 = qword_10096D300;
        v10 = v3;
        if (v9 != -1)
        {
          swift_once();
        }

        v70 = *&byte_1009CE668[64];
        v71 = *&byte_1009CE668[80];
        v72 = *&byte_1009CE668[96];
        v73 = *&byte_1009CE668[112];
        v66 = *byte_1009CE668;
        v67 = *&byte_1009CE668[16];
        v68 = *&byte_1009CE668[32];
        v69 = *&byte_1009CE668[48];
        v11 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
        v12 = sub_10075DCD8(v5, &v66, v6, v8);
        v13 = *&v7[v1];
        if (v13)
        {
          type metadata accessor for MirrorView();
          v14 = v13;
          v15 = v12;
          v0 = v7;
          v16 = static NSObject.== infix(_:_:)();

          v17 = *&v7[v1];
          if ((v16 & 1) == 0)
          {
            if (v17)
            {
              [*&v7[v1] removeFromSuperview];
              v17 = *&v7[v1];
            }
          }
        }

        else
        {
          v0 = v7;
          v17 = 0;
        }

        *&v0[v1] = v12;
        v53 = v12;

        v54 = *&v0[v1];
        if (v54)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          type metadata accessor for MirrorView();
          v55 = v13;
          v56 = v54;
          v57 = static NSObject.== infix(_:_:)();

          if (v57)
          {

            v0 = v7;
LABEL_56:
            [v0 setNeedsLayout];
            return;
          }

          v0 = v7;
          v54 = *&v7[v1];
          if (v54)
          {
LABEL_42:
            [v0 addSubview:v54];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v13)
          {

            goto LABEL_56;
          }

          v55 = v13;
        }

LABEL_44:
        goto LABEL_56;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale];
        v26 = -*&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset];
        v27 = qword_10096D300;
        v28 = v3;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = v0;
        v70 = *&byte_1009CE668[64];
        v71 = *&byte_1009CE668[80];
        v72 = *&byte_1009CE668[96];
        v73 = *&byte_1009CE668[112];
        v66 = *byte_1009CE668;
        v67 = *&byte_1009CE668[16];
        v68 = *&byte_1009CE668[32];
        v69 = *&byte_1009CE668[48];
        v30 = type metadata accessor for MirrorView();
        v31 = objc_allocWithZone(v30);
        swift_unknownObjectWeakInit();
        v32 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        *&v31[v32] = [objc_allocWithZone(CALayer) init];
        *&v31[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
        v31[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v31[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = v25;
        *&v31[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = v26;
        v65.receiver = v31;
        v65.super_class = v30;
        v33 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v33 setClipsToBounds:1];
        [v33 setUserInteractionEnabled:0];
        v34 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        [*&v33[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v35) = 1.0;
        [*&v33[v34] setOpacity:v35];
        [*&v33[v34] setAnchorPoint:{0.5, 0.5}];
        v36 = qword_10096D2F8;
        v37 = *&v33[v34];
        if (v36 != -1)
        {
          swift_once();
        }

        sub_10002849C(&unk_10097A780);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v37 setActions:isa];

        v39 = *&v33[v34];
        v40 = objc_opt_self();
        v41 = v39;
        v42 = [v40 mainScreen];
        [v42 scale];
        v44 = v43;

        [v41 setContentsScale:v44];
        [*&v33[v34] setMasksToBounds:1];
        v45 = *&v33[v34];
        v64[4] = v70;
        v64[5] = v71;
        v64[6] = v72;
        v64[7] = v73;
        v64[0] = v66;
        v64[1] = v67;
        v64[2] = v68;
        v64[3] = v69;
        [v45 setTransform:v64];
        sub_1001DA558();
        v46 = [v33 layer];

        [v46 addSublayer:*&v33[v34]];
        v47 = *&v29[v1];
        if (v47)
        {
          v48 = v47;
          v49 = v33;
          v50 = v48;
          v0 = v29;
          v51 = static NSObject.== infix(_:_:)();

          v52 = *&v29[v1];
          if ((v51 & 1) == 0 && v52)
          {
            [*&v29[v1] removeFromSuperview];
            v52 = *&v29[v1];
          }
        }

        else
        {
          v0 = v29;
          v52 = 0;
        }

        *&v0[v1] = v33;
        v55 = v33;

        v58 = *&v0[v1];
        if (v58)
        {
          if (!v47)
          {
            goto LABEL_54;
          }

          v59 = v47;
          v60 = v58;
          v61 = static NSObject.== infix(_:_:)();

          if (v61)
          {

            v0 = v29;
            goto LABEL_56;
          }

          v0 = v29;
          v58 = *&v29[v1];
          if (v58)
          {
LABEL_54:
            [v0 addSubview:v58];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v47)
          {

            goto LABEL_44;
          }

          v59 = v47;
        }

        goto LABEL_56;
      }

      v24 = *&v0[v1];
    }

    else
    {
      v24 = 0;
    }

    *&v0[v1] = 0;

    if (*&v0[v1])
    {
      [v0 addSubview:?];
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    return;
  }

  v62 = v2;
  [v62 removeFromSuperview];
  v18 = *&v0[v1];
  *&v0[v1] = 0;

  v19 = *&v0[v1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v0;
  type metadata accessor for MirrorView();
  v63 = v62;
  v21 = v19;
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    if (*&v20[v1])
    {
      [v20 addSubview:?];
      goto LABEL_16;
    }

LABEL_17:
    v23 = v62;
    goto LABEL_18;
  }

LABEL_16:
  v23 = v63;
LABEL_18:
}

uint64_t (*sub_10047BB70(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  v4 = OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_10047D26C;
}

id sub_10047BD30()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v1 = OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount;
  v6 = sub_1000CC354(v2, v3, v4, v5, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*&v0[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] setFrame:?];
  [v0 bounds];
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  result = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (result)
  {
    return [result setFrame:{MinX, MaxY, Width, *&v0[v1]}];
  }

  return result;
}

uint64_t sub_10047BF34()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_10047BF98(void *a1)
{
  sub_10047D0EC(a1);
}

uint64_t (*sub_10047BFE4(uint64_t **a1))()
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
  v2[4] = sub_10047BB70(v2);
  return sub_1000C2700;
}

uint64_t sub_10047C054()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10047D224(&qword_100986D90, v1, type metadata accessor for MediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10047C0C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10047D224(&qword_100986D90, v5, type metadata accessor for MediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10047C154(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_10047D224(&qword_100986D90, v3, type metadata accessor for MediaView);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10047C210(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100028004();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

char *sub_10047C298(uint64_t a1)
{
  v2 = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v3 = &v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  v3[8] = 1;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 32);
  v4[32] = v6;
  if ((v6 & 1) == 0)
  {
    v2 = [objc_allocWithZone(UIBackgroundExtensionView) init];
    [v2 setAutomaticallyPlacesContentView:0];
  }

  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UberContentContainer();
  result = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (*&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    v8 = result;
    [result addSubview:?];
    return v8;
  }

  return result;
}

uint64_t (*sub_10047C428(uint64_t *a1))()
{
  v3 = OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_10047C4AC;
}

void sub_10047C4B0(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView);
      v4 = v3;
      v5 = [v4 superview];
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        sub_100028004();
        v8 = v7;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v4 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *(v17 + v16);
    *(v17 + v16) = v3;
    v19 = v3;
    sub_10047C6C8(v18);

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 8);
        sub_100028004();
        v14 = v13;
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v24 = *(v22 + v21);
    *(v22 + v21) = v3;
    v23 = v3;
    sub_10047C6C8(v24);

    v20 = v24;
  }
}

void sub_10047C6C8(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    type metadata accessor for VideoView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView);
    v18 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_100028004();
      v11 = v2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v14 = v4;
    goto LABEL_12;
  }

  sub_100028004();
  v18 = v4;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    type metadata accessor for ArtworkView();
    if (swift_dynamicCastClass())
    {
      v15 = v4;
      ArtworkView.frameUpdatesImageSize.setter();
    }

    [v4 setContentMode:2];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v16 = *&v2[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView];
    if (v16)
    {
      v17 = v16;
      [v17 setContentView:v4];
    }

    else
    {

      [v2 addSubview:v4];
    }

    v13 = v4;
    goto LABEL_19;
  }

LABEL_10:
  v13 = v18;
LABEL_19:
}

void sub_10047C90C()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for UberContentContainer();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  MinX = CGRectGetMinX(v39);
  [v0 bounds];
  MinY = CGRectGetMinY(v40);
  v4 = OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY;
  v5 = MinY + *&v0[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
  [v0 bounds];
  Width = CGRectGetWidth(v41);
  [v0 bounds];
  Height = CGRectGetHeight(v42);
  v8 = *&v0[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView];
  if (v8)
  {
    v9 = v8;
    [v9 setFrame:{MinX, v5, Width, Height}];
    v43.origin.x = MinX;
    v43.origin.y = v5;
    v43.size.width = Width;
    v43.size.height = Height;
    v10 = CGRectGetWidth(v43);
    v44.origin.x = MinX;
    v44.origin.y = v5;
    v44.size.width = Width;
    v44.size.height = Height;
    v11 = CGRectGetHeight(v44);
    v12 = 0.0;
    if (v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets + 32])
    {
      v13 = 0.0;
    }

    else
    {
      v14 = [v1 traitCollection];
      [v14 layoutDirection];

      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      v12 = sub_1000CC354(0.0, 0.0, v10, v11, v15, v16);
      v13 = v17;
      v10 = v18;
      v11 = v19;
    }

    v20 = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    [v20 setFrame:{v12, v13, v10, v11}];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] setFrame:{MinX, v5, Width, Height}];
  }

  v21 = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  if (v21)
  {
    type metadata accessor for VideoView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      if (v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride + 8])
      {
        v24 = v21;
        [v1 bounds];
        MidY = CGRectGetMidY(v45);
      }

      else
      {
        MidY = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        v26 = v21;
      }

      [v1 bounds];
      MidX = CGRectGetMidX(v46);
      v28 = MidY - *&v1[v4];
      v29 = v23 + qword_1009D21B8;
      v30 = *(v23 + qword_1009D21B8);
      v31 = *(v23 + qword_1009D21B8 + 8);
      v32 = *(v23 + qword_1009D21B8 + 16);
      *v29 = MidX;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      if ((v32 & 1) != 0 || (MidX == v30 ? (v33 = v28 == v31) : (v33 = 0), !v33))
      {
        sub_1004E1028();
      }

      v34 = *&v1[v4];
      v35 = (v23 + qword_1009D21B0);
      v36 = *(v23 + qword_1009D21B0);
      v37 = *(v23 + qword_1009D21B0 + 16);
      *v35 = 0;
      v35[1] = 0;
      v35[2] = v34;
      v35[3] = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v36), vceqq_f64(v37, v34)))) & 1) == 0)
      {
        sub_1004E2320();
      }
    }
  }
}

id sub_10047CCC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberContentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047CD68()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_10047CDC0(void *a1)
{
  sub_10047D0EC(a1);
}

uint64_t (*sub_10047CDF8(uint64_t **a1))()
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
  v2[4] = sub_10047C428(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10047CE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10047CEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10047CF28(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

void sub_10047D0EC(void *a1)
{
  if (a1)
  {
    sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView);
    v3 = a1;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      sub_100028004();
      v6 = v1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        [v3 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v8 = a1;
  sub_10047C6C8(v9);
}

uint64_t sub_10047D224(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10047D278(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E600 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for StaticDimension();
  sub_1000056A8(v13, qword_1009D20F8);
  swift_getObjectType();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView();
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SmallLockupLayout.Metrics();
  v15 = sub_1000056A8(v14, qword_1009D3798);
  sub_10070B598(v15, a7);
  return a1;
}

uint64_t sub_10047D45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_10002849C(&unk_100973230);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_10002849C(&unk_100973240);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = type metadata accessor for OfferStyle();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = type metadata accessor for OfferEnvironment();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_10002849C(&unk_1009701A0);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = type metadata accessor for OfferTint();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_1004F3190(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10002B894(v8, &unk_100973AD0);
  v23[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v23 setNeedsLayout];
  sub_10002B894(v11, &unk_100970150);
  sub_10002B894(v14, &unk_100970160);
  sub_10002B894(v17, &qword_100973AE0);
  return sub_10002B894(v21, &unk_100973230);
}

uint64_t sub_10047D89C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return v3 ^ a2[1] ^ 1u;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 ^ a2[1] ^ 1u;
  }

  return result;
}

uint64_t sub_10047D8E4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for ComponentLayoutOptions();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_100986DE8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for ProductReview.ReviewSource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ProductReview();
  sub_10047F094(&qword_100971EE0, &type metadata accessor for ProductReview);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v46)
  {
    ProductReview.source.getter();
    v20 = (*(v16 + 88))(v18, v15);
    if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
    {

      return (*(v16 + 8))(v18, v15);
    }

    else
    {
      if (v20 == enum case for ProductReview.ReviewSource.user(_:))
      {
        (*(v16 + 96))(v18, v15);
        v41 = *v18;
        v21 = v45;
        v22 = sub_100784D2C();
        ItemLayoutContext.state.getter();
        StateLens.init(_:)();
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == 1) & !sub_10047EE88();
        v26 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_10006C318();
        v27 = v44;
        StateLens<A>.currentValue.getter();
        v28 = sub_10047EC1C(a1, v46);
        swift_getKeyPath();
        StateLens<A>.subscript.getter();

        v29 = v46;
        v30 = sub_100079F24();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_100779FE0(v41, v31 | v28 & 1, v29, v30, v42);
        swift_unknownObjectRelease();
        [v22 setHidden:0];

        (*(v43 + 8))(v14, v27);
      }

      else
      {
        if (v20 == enum case for ProductReview.ReviewSource.reviewSummary(_:))
        {
          (*(v16 + 96))(v18, v15);
          v42 = *v18;
          v32 = sub_100784D4C();
          ItemLayoutContext.state.getter();
          StateLens.init(_:)();
          swift_getKeyPath();
          sub_10006C318();
          v33 = v44;
          StateLens<A>.subscript.getter();

          v34 = v46;
          if (v46 == 2)
          {
            ItemLayoutContext.componentLayoutOptions.getter();
            v35 = v39;
            static ComponentLayoutOptions.overflowed.getter();
            sub_10047F094(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
            v36 = v41;
            v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_100624488(v42, v34 & 1, 0, 0);
          [v32 setHidden:0];

          (*(v43 + 8))(v11, v33);
        }

        else
        {
          (*(v16 + 8))(v18, v15);
        }

        v21 = v45;
      }

      [v21 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_10047DFD0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Shelf.PresentationHints();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v8 - 8);
  v42 = sub_10002849C(&qword_100971EC0);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v36 - v11;
  v12 = sub_10002849C(&qword_100986DF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  type metadata accessor for ProductReview();
  sub_10047F094(&qword_100971EE0, &type metadata accessor for ProductReview);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v43)
  {
    v21 = type metadata accessor for ProductReview.ReviewSource();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    sub_10002B894(v17, &qword_100986DF0);
    goto LABEL_15;
  }

  v40 = a1;

  ProductReview.source.getter();

  v18 = type metadata accessor for ProductReview.ReviewSource();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_10047F024(v17, v14);
  v20 = (*(v19 + 88))(v14, v18);
  if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v19 + 8))(v14, v18);
LABEL_15:
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    v43 = v32;
    sub_10047F094(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758);
    sub_100135DA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  if (v20 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v20;
    (*(v19 + 8))(v14, v18);
    if (v28 == v27)
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v29 = v43;
      v30 = UITraitCollection.isSizeClassCompact.getter();

      if (v30)
      {
        v31 = sub_100784D4C();
        if (([*(*&v31[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          ItemLayoutContext.mutableState.getter();
          v33 = v37;
          WritableStateLens.init(_:)();
          sub_10006C318();
          v34 = v42;
          WritableStateLens<A>.updateValue(_:)();
          sub_10002849C(&qword_100975748);
          type metadata accessor for SelectableShelfComponentViewReaction();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1007B1E00;
          static SelectableShelfComponentViewReaction.propagate.getter();
          static SelectableShelfComponentViewReaction.deselect.getter();
          static SelectableShelfComponentViewReaction.reapply.getter();
          v43 = v35;
          sub_10047F094(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
          sub_10002849C(&qword_100975758);
          sub_100135DA0();
          dispatch thunk of SetAlgebra.init<A>(_:)();

          return (*(v39 + 8))(v33, v34);
        }
      }
    }

    goto LABEL_15;
  }

  (*(v19 + 8))(v14, v18);
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  swift_getKeyPath();
  sub_10006C318();
  WritableStateLens<A>.subscript.getter();

  v22 = v43;
  if (!sub_10047EE88())
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_10047F094(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v23 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v24 = *(v38 + 8);
    v24(v4, v2);
    v24(v7, v2);
    if (v23)
    {
      if ((v22 == 2) | v22 & 1)
      {
        WritableStateLens<A>.updateValue(_:)();
      }
    }
  }

  sub_10002849C(&qword_100975748);
  type metadata accessor for SelectableShelfComponentViewReaction();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B1E00;
  static SelectableShelfComponentViewReaction.propagate.getter();
  static SelectableShelfComponentViewReaction.deselect.getter();
  static SelectableShelfComponentViewReaction.reapply.getter();
  v43 = v25;
  sub_10047F094(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();

  return (*(v39 + 8))(v41, v42);
}

uint64_t sub_10047E9F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10047EA50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10047EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10047EBC4(uint64_t a1)
{
  result = sub_10047F094(&qword_100986DE0, type metadata accessor for GenericProductReviewCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10047EC1C(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ComponentLayoutOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  ItemLayoutContext.componentLayoutOptions.getter();
  static ComponentLayoutOptions.overflowed.getter();
  sub_10047F094(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    if (v17 > 1.0 || v21 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_10047EE88()
{
  v0 = sub_10002849C(&unk_1009731D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v1 + 8))(v3, v0);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_10097C550);
  if (swift_dynamicCast())
  {
    sub_100005A38(v7, v9);
    sub_10002A400(v9, v9[3]);
    v4 = dispatch thunk of ClickableModel.clickAction.getter();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_100007000(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10002B894(v7, &qword_10097C558);
    return 0;
  }

  return v5;
}

uint64_t sub_10047F024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100986DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047F094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14descr1008AC371O5StateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1008AC371O5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10047F250()
{
  result = qword_100986DF8;
  if (!qword_100986DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986DF8);
  }

  return result;
}

unint64_t sub_10047F2A8()
{
  result = qword_100986E00;
  if (!qword_100986E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986E00);
  }

  return result;
}

uint64_t sub_10047F2FC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D10A0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v28 = v1[13];
  v28(v3, enum case for FontSource.useCase(_:), v0);
  v27 = type metadata accessor for StaticDimension();
  v37 = v27;
  v38 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v36);
  v34 = v0;
  v35 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v33);
  v26 = v1[2];
  v26(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v24 = v1 + 1;
  v25 = v12;
  v12(v3, v0);
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v4, qword_1009D10B8);
  v21[0] = v7;
  v21[1] = v8;
  v7(v3, v13, v4);
  v14 = v28;
  v28(v3, v9, v0);
  v23 = v10;
  v15 = v27;
  v34 = v27;
  v35 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v33);
  v22 = v9;
  v31 = v0;
  v32 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v30);
  v17 = v26;
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18 = v25;
  v25(v3, v0);
  (v21[0])(v3, v13, v4);
  v14(v3, v22, v0);
  v31 = v15;
  v32 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v30);
  v29[3] = v0;
  v29[4] = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v29);
  v17(v19, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18(v3, v0);
  xmmword_1009D1DD0 = vdupq_n_s64(0x4044000000000000uLL);
  unk_1009D1DE0 = xmmword_1007B2C20;
  xmmword_1009D1DF0 = xmmword_1007CF330;
  sub_100005A38(&v33, &unk_1009D1E28);
  sub_100005A38(&v36, &unk_1009D1E00);
  return sub_100005A38(&v30, &unk_1009D1E50);
}

char *sub_10047F72C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for CornerStyle();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Separator.Position();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Separator();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v71 - v15;
  v16 = type metadata accessor for DirectionalTextAlignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v20 - 8);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v24 = type metadata accessor for ItemLayoutContext();
  (*(*(v24 - 8) + 56))(&v4[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  v74 = v17;
  v75 = xmmword_1009D1DD0;
  *&v4[v25] = xmmword_1009D1DD0;
  v73 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias;
  v86 = v4;
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for FontUseCase();
  v27 = sub_1000056A8(v26, qword_1009D10A0);
  v28 = *(v26 - 8);
  v72 = *(v28 + 16);
  v72(v22, v27, v26);
  v71 = *(v28 + 56);
  v71(v22, 0, 1, v26);
  v29 = enum case for DirectionalTextAlignment.none(_:);
  v30 = *(v74 + 104);
  v30(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v31 = type metadata accessor for DynamicTypeLabel();
  v74 = v16;
  v32 = v31;
  v33 = objc_allocWithZone(v31);
  *&v86[v73] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v73 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v26, qword_1009D10B8);
  v72(v22, v34, v26);
  v71(v22, 0, 1, v26);
  v30(v19, v29, v74);
  v35 = objc_allocWithZone(v32);
  v36 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37 = v86;
  *&v86[v73] = v36;
  v38 = &v37[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_insets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v38 = UIEdgeInsetsZero.top;
  v38[1] = left;
  v38[2] = bottom;
  v38[3] = right;
  v42 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v76 + 104))(v79, enum case for Separator.Position.bottom(_:), v77);
  v88[3] = type metadata accessor for ZeroDimension();
  v88[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v88);
  static ZeroDimension.zero.getter();
  v43 = v78;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v44 = v80;
  Separator.withLeadingInset(_:)();
  v46 = v81;
  v45 = v82;
  (*(v81 + 8))(v43, v82);
  v47 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v48 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v49 = *(v46 + 40);
  v50 = v47;
  v49(&v47[v48], v44, v45);
  swift_endAccess();

  *&v37[v42] = v50;
  *&v37[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  v87.receiver = v37;
  v87.super_class = v51;
  v52 = objc_msgSendSuper2(&v87, "initWithFrame:", a1, a2, a3, a4);
  v53 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView;
  v54 = *&v52[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView];
  sub_100005744(0, &qword_100970180);
  v55 = v52;
  v56 = v54;
  static UIColor.placeholderBackground.getter();
  ArtworkView.backgroundColor.setter();

  v57 = *&v52[v53];
  v58 = v83;
  dispatch thunk of RoundedCornerView.cornerStyle.getter();
  ArtworkView.setCorner(radius:style:)();

  (*(v84 + 8))(v58, v85);
  v59 = [v55 contentView];
  [v59 addSubview:*&v52[v53]];

  v60 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias;
  v61 = *&v55[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias];
  v62 = static UIColor.primaryText.getter();
  [v61 setTextColor:v62];

  v63 = [v55 contentView];
  [v63 addSubview:*&v55[v60]];

  v64 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName;
  v65 = *&v55[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName];
  v66 = static UIColor.secondaryText.getter();
  [v65 setTextColor:v66];

  v67 = [v55 contentView];
  [v67 addSubview:*&v55[v64]];

  v68 = [v55 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v69 = [v55 contentView];
  [v69 addSubview:*&v55[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView]];

  return v55;
}

uint64_t sub_100480108()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Separator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  v40.receiver = v1;
  v40.super_class = v10;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v11 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView];
  [v1 bounds];
  v12 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v11[v12], v6);
  Separator.frame(forBoundingRect:in:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  [v11 setFrame:{v14, v16, v18, v20}];
  v21 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  sub_1001A0C90(&xmmword_1009D1DD0, v37);
  v30 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView];
  v37[24] = type metadata accessor for ArtworkView();
  v37[25] = &protocol witness table for UIView;
  v37[21] = v30;
  v31 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias];
  v38 = type metadata accessor for DynamicTypeLabel();
  v39 = &protocol witness table for UILabel;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName];
  v37[30] = &protocol witness table for UILabel;
  v37[31] = v31;
  v37[29] = v38;
  v37[26] = v32;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v23, v25, v27, v29);
  (*(v3 + 8))(v5, v2);
  return sub_10025AB54(v37);
}

id sub_1004804B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallGameCenterPlayerCollectionViewCell()
{
  result = qword_100986E30;
  if (!qword_100986E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004805C0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10048069C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_100480708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_100480774(uint64_t a1)
{
  result = sub_10048079C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10048079C()
{
  result = qword_100986E40;
  if (!qword_100986E40)
  {
    type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986E40);
  }

  return result;
}

void sub_1004807F4()
{
  v1 = type metadata accessor for Separator.Position();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Separator();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v41 - v6;
  v7 = type metadata accessor for DirectionalTextAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  v15 = *(*(v14 - 8) + 56);
  v54 = v0;
  v15(v0 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  v43 = xmmword_1009D1DD0;
  *(v54 + v16) = xmmword_1009D1DD0;
  v42 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias;
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D10A0);
  v19 = *(v17 - 8);
  v41 = *(v19 + 16);
  v41(v12, v18, v17);
  v20 = *(v19 + 56);
  v20(v12, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v8 + 104);
  v44 = v8 + 104;
  v45 = v7;
  v22(v53, enum case for DirectionalTextAlignment.none(_:), v7);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = objc_allocWithZone(v23);
  *(v54 + v42) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v17, qword_1009D10B8);
  v41(v12, v26, v17);
  v20(v12, 0, 1, v17);
  v22(v53, v21, v45);
  v27 = objc_allocWithZone(v23);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v54;
  *(v54 + v25) = v28;
  v30 = (v29 + OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_insets);
  v31 = *&UIEdgeInsetsZero.bottom;
  *v30 = *&UIEdgeInsetsZero.top;
  v30[1] = v31;
  v32 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v46 + 104))(v49, enum case for Separator.Position.bottom(_:), v47);
  v55[3] = type metadata accessor for ZeroDimension();
  v55[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v55);
  static ZeroDimension.zero.getter();
  v33 = v48;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v34 = v50;
  Separator.withLeadingInset(_:)();
  v36 = v51;
  v35 = v52;
  (*(v51 + 8))(v33, v52);
  v37 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v39 = *(v36 + 40);
  v40 = v37;
  v39(&v37[v38], v34, v35);
  swift_endAccess();

  *(v29 + v32) = v40;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100480E28(uint64_t a1)
{
  v2 = v1;
  if (a1 >= 1)
  {
    [v2 setLineSpacing:a1];
    v4 = [v2 font];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
      v7 = v6;

      v8 = [objc_allocWithZone(NSNumber) initWithDouble:a1 - v7];
      v9 = sub_100194454();
      *(&v23 + 1) = v9;
      *&v22 = v8;
      v10 = [v2 _defaultAttributes];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_10006F0F0();
        v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v12;
        if (v9)
        {
          sub_100056164(&v22, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          sub_100051368(v20, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
          v21 = v12;
          if (v12)
          {
LABEL_6:
            v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_12:
            [v2 _setDefaultAttributes:{v14.super.isa, v19}];

            return;
          }
        }

        else
        {
          sub_10003D444(&v22);
          sub_1000DAC3C(NSBaselineOffsetAttributeName, v20);
          sub_10003D444(v20);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        v14.super.isa = 0;
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  [v1 setLineSpacing:0];
  v22 = 0u;
  v23 = 0u;
  v15 = [v1 _defaultAttributes];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for Key(0);
  sub_10006F0F0();
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v17;
  sub_10003D444(&v22);
  sub_1000DAC3C(NSBaselineOffsetAttributeName, v20);
  sub_10003D444(v20);
  if (v21)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 _setDefaultAttributes:v18.super.isa];
}

uint64_t sub_1004810FC()
{
  sub_10002849C(&unk_100993620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B23A0;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_1000836E4(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_100986E48 = v7;
  return result;
}

double sub_10048120C@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_100296374(v5, v4), v5, (v4 & 1) != 0) || (, sub_10002849C(&qword_100986EA8), Box.read<A>(with:)(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_100005744(0, &qword_1009744B0);
    *&v8 = v7;
    sub_100056164(&v8, a2);
  }

  return result;
}

void sub_1004814CC(void *a1@<X8>)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v22 - v9;
  v11 = [v1 activityType];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  if (sub_100296374(v11, *&v1[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v13 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_100005744(0, &qword_1009744B0);
    *a1 = v13;
    return;
  }

  v14 = dispatch_semaphore_create(0);
  v22 = *&v1[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v23 = a1;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v14;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

  sub_1000C36CC(v24);

  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, v3);
  OS_dispatch_semaphore.wait(timeout:)();
  v18(v10, v3);
  v19 = v23;

  sub_10002849C(&qword_100986EA8);
  Box.read<A>(with:)();

  v20 = *&v24[0];
  v19[3] = sub_100005744(0, &qword_1009744B0);
  if (v20)
  {

    *v19 = v20;
  }

  else
  {
    v21 = [objc_allocWithZone(UIImage) init];

    *v19 = v21;
  }
}

Swift::Int sub_1004817F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v6 = type metadata accessor for Artwork.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AspectRatio();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return OS_dispatch_semaphore.signal()();
  }

  v18 = Strong;
  if (!a1)
  {

    return OS_dispatch_semaphore.signal()();
  }

  v39 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig;
  v38 = a1;

  ArtworkLoaderConfig.size.getter();
  v20 = v19;
  v22 = v21;

  v40 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v20, v22}];
  [v40 setOpaque:0];
  AspectRatio.init(_:_:)();
  v23 = AspectRatio.isSquare.getter();
  (*(v14 + 8))(v16, v13);
  if (v23)
  {
    if (v18[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v24 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
    }

    else
    {
      v24 = &enum case for Artwork.Style.roundedRect(_:);
    }

    (*(v7 + 104))(v12, *v24, v6);
  }

  else
  {
    (*(v7 + 104))(v9, enum case for Artwork.Style.unadorned(_:), v6);
  }

  v26 = v40;
  ArtworkView.style.setter();
  v27 = v38;
  ArtworkView.image.setter();
  sub_100005744(0, &qword_100986EB0);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  ArtworkLoaderConfig.scale.getter();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100481E58;
  *(v33 + 24) = v32;
  aBlock[4] = sub_100481EA8;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002FDC2C;
  aBlock[3] = &unk_1008C4740;
  v34 = _Block_copy(aBlock);
  v35 = v26;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v37 - 2) = v36;

    Box.write(with:)();

    OS_dispatch_semaphore.signal()();
  }

  return result;
}

id sub_100481D7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100481E58()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_100481EB0(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

void sub_100481F04(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_100482308;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_100007A08;
      v41 = &unk_1008C4790;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_1004823B4;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10007FFE8;
      v41 = &unk_1008C47E0;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100482308()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

id sub_1004823D0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10048256C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 player];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentItem];

    if (v5)
    {
      v7 = v5;
      sub_100482CC4();
      v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 addObserver:v0 selector:"playerItemDidPlayToEndWithNotification:" name:v2 object:v5];

  return swift_unknownObjectRelease();
}

id sub_100482B14(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  v12 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v12 setPlayer:v11];

  (*(v3 + 8))(v6, v2);
  *(v12 + OBJC_IVAR____TtC8AppStore20PlayerViewController_autoplay) = 1;

  [v12 setAllowsPictureInPicturePlayback:0];
  [v12 setUpdatesNowPlayingInfoCenter:0];
  [v12 setAllowsVideoFrameAnalysis:0];

  return v12;
}

unint64_t sub_100482CC4()
{
  result = qword_100986EF8;
  if (!qword_100986EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100986EF8);
  }

  return result;
}

uint64_t sub_100482D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v100 = a5;
  v101 = a4;
  v112 = a3;
  v113 = a2;
  v108 = a7;
  v109 = a8;
  v106 = a1;
  v107 = a6;
  v97 = type metadata accessor for AppPlatform();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Shelf.ContentsMetadata();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ProductMediaMetadata();
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DynamicTypeSize();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ProductReview.ReviewSource();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10002849C(&qword_100970EE8);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v82 - v15;
  v16 = type metadata accessor for Shelf.ContentType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PageGrid.Direction();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v105 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v26 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v26);
  v99 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_100031660(v113, &v82 - v29, &unk_10098FFB0);
  v98 = v26;
  v31 = *(v26 + 48);
  v113 = v30;
  sub_100031660(v112, &v30[v31], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v112 = v21;
  v32 = *(v21 + 104);
  v33 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v115)
  {
    v33 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v34 = *v33;
  v110 = v25;
  v111 = v20;
  v32(v25, v34, v20);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v35 = v17;
  v36 = (*(v17 + 88))(v19, v16);
  if (v36 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v36 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      if (*(v114 + 16))
      {
        sub_10002C0AC(v114 + 32, &v115);

        sub_10002849C(&qword_100973D50);
        type metadata accessor for ProductReview();
        v49 = swift_dynamicCast();
        v45 = v110;
        if (v49)
        {
          v50 = v85;
          ProductReview.source.getter();
          v51 = v86;
          v52 = v87;
          v53 = (*(v86 + 88))(v50, v87);
          if (v53 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v51 + 8))(v50, v52);
            v48 = v111;
            v47 = v112;
            (*(v112 + 16))(v105, v45, v111);
            if (qword_10096DB10 != -1)
            {
              swift_once();
            }

            PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
          }

          else
          {
            v48 = v111;
            v47 = v112;
            v76 = v105;
            if (v53 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v78 = v82;
              PageEnvironment.dynamicTypeSize.getter();
              (*(v47 + 16))(v76, v45, v48);
              sub_1001E6E40(v78, 0);
              PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();

              (*(v83 + 8))(v78, v84);
              (*(v47 + 8))(v45, v48);
              sub_10002B894(v113, &qword_100974650);
              return (*(v51 + 8))(v50, v52);
            }

            (*(v51 + 8))(v50, v52);
            v77 = v82;
            PageEnvironment.dynamicTypeSize.getter();
            (*(v47 + 16))(v76, v45, v48);
            sub_1001E6E40(v77, 1);
            PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();

            (*(v83 + 8))(v77, v84);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v45 = v110;
      }

      v115 = v100;
      v69 = v113;
      v70 = v99;
      sub_100031660(v113, v99, &qword_100974650);
      v71 = *(v98 + 48);
      sub_10010E37C();
      PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
      (*(v112 + 8))(v45, v111);
      sub_10002B894(v69, &qword_100974650);
      sub_10002B894(v70 + v71, &unk_10098FFB0);
      v72 = v70;
      v73 = &unk_10098FFB0;
      return sub_10002B894(v72, v73);
    }

    if (v36 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v115 = v100;
      v65 = v113;
      v66 = v99;
      sub_100031660(v113, v99, &qword_100974650);
      v67 = *(v98 + 48);
      sub_10010E37C();
      PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
      (*(v112 + 8))(v110, v111);
      sub_10002B894(v65, &qword_100974650);
      sub_10002B894(v66 + v67, &unk_10098FFB0);
      sub_10002B894(v66, &unk_10098FFB0);
      return (*(v35 + 8))(v19, v16);
    }

    v57 = v88;
    static PageGrid.DirectionalValue<>.zero.getter();
    v58 = v89;
    static PageGrid.DirectionalValue<>.zero.getter();
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    sub_1001ABF90(v57, v58);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v59 = *(v90 + 8);
    v60 = v58;
    v61 = v91;
    v59(v60, v91);
    v59(v57, v61);
LABEL_22:
    (*(v54 + 8))(v56, v55);
LABEL_45:
    v73 = &qword_100974650;
    v72 = v113;
    return sub_10002B894(v72, v73);
  }

  swift_getKeyPath();
  v37 = v102;
  ReadOnlyLens.subscript.getter();

  v38 = v103;
  v39 = v104;
  if ((*(v103 + 88))(v37, v104) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v38 + 8))(v37, v39);
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_10096ED30 != -1)
    {
      swift_once();
    }

    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    goto LABEL_22;
  }

  (*(v38 + 96))(v37, v39);
  v40 = v94;
  v41 = v92;
  v42 = v93;
  (*(v94 + 32))(v92, v37, v93);
  ProductMediaMetadata.platform.getter();
  v43 = v95;
  MediaPlatform.appPlatform.getter();

  v44 = (*(v96 + 88))(v43, v97);
  v45 = v110;
  v46 = v105;
  if (v44 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v44 == enum case for AppPlatform.pad(_:))
  {
    v62 = ProductMediaMetadata.hasPortraitMedia.getter();
    v64 = v111;
    v63 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (v62)
    {
      if (qword_10096EEF0 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_10096ED30 == -1)
    {
LABEL_38:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v40 + 8))(v41, v42);
      (*(v63 + 8))(v45, v64);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v44 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (ProductMediaMetadata.hasPortraitMedia.getter())
    {
      v48 = v111;
      v47 = v112;
      (*(v112 + 16))(v46, v45, v111);
      if (qword_10096CE88 != -1)
      {
        swift_once();
      }

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v40 + 8))(v41, v42);
LABEL_36:
      (*(v47 + 8))(v45, v48);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v44 == enum case for AppPlatform.watch(_:))
  {
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_10096D678 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v44 == enum case for AppPlatform.tv(_:) || v44 == enum case for AppPlatform.mac(_:) || v44 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (qword_10096ED30 == -1)
    {
LABEL_44:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v40 + 8))(v41, v42);
      (*(v74 + 8))(v45, v75);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v115 = v100;
  v79 = v113;
  v80 = v99;
  sub_100031660(v113, v99, &qword_100974650);
  v81 = *(v98 + 48);
  sub_10010E37C();
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  (*(v40 + 8))(v41, v42);
  (*(v112 + 8))(v45, v111);
  sub_10002B894(v79, &qword_100974650);
  sub_10002B894(v80 + v81, &unk_10098FFB0);
  sub_10002B894(v80, &unk_10098FFB0);
  return (*(v96 + 8))(v95, v97);
}

uint64_t sub_100484328@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v23 = a5;
  v24 = a2;
  v25 = a4;
  v26 = a6;
  v29 = a3;
  v27 = a7;
  v28 = a8;
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  sub_100031660(a1, &v22 - v17, &unk_10098FFB0);
  sub_100031660(v24, &v18[*(v13 + 48)], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v24 = v10;
  if ((*(v10 + 88))(v12, v9) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v30 = v25;
    v31 = v23;
    sub_100031660(v18, v15, &qword_100974650);
    v19 = *(v13 + 48);
    sub_100484938();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    sub_10002B894(v18, &qword_100974650);
    sub_10002B894(&v15[v19], &unk_10098FFB0);
    return sub_10002B894(v15, &unk_10098FFB0);
  }

  else
  {
    v30 = v25;
    sub_100031660(v18, v15, &qword_100974650);
    v21 = *(v13 + 48);
    sub_10010E37C();
    PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    sub_10002B894(v18, &qword_100974650);
    sub_10002B894(&v15[v21], &unk_10098FFB0);
    sub_10002B894(v15, &unk_10098FFB0);
    return (*(v24 + 8))(v12, v9);
  }
}

uint64_t sub_100484704()
{
  sub_100484938();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1004847E8()
{
  sub_100484938();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1004848CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10048498C();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_100484938()
{
  result = qword_100986F00;
  if (!qword_100986F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986F00);
  }

  return result;
}

unint64_t sub_10048498C()
{
  result = qword_100986F08;
  if (!qword_100986F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986F08);
  }

  return result;
}

uint64_t sub_1004849E0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonItemViewType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Feature();
  v32[3] = v8;
  v32[4] = sub_10048540C(&qword_100972E50, &type metadata accessor for Feature);
  v9 = sub_1000056E0(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007000(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    type metadata accessor for MetadataRibbonItem();
    if (Array.isNotEmpty.getter())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          MetadataRibbonItem.viewContainerType.getter();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_100484CDC()
{
  result = sub_100484F94();
  if (!result)
  {
    type metadata accessor for AdvertsSearchResult();
    if (swift_dynamicCastClass())
    {
      v1 = type metadata accessor for AdvertsSearchResultContentView();
      v2 = &unk_10096FAE0;
      v3 = type metadata accessor for AdvertsSearchResultContentView;
    }

    else
    {
      type metadata accessor for BundleSearchResult();
      if (swift_dynamicCastClass())
      {
        v1 = type metadata accessor for BundleSearchResultContentView();
        v2 = &unk_10096FAD8;
        v3 = type metadata accessor for BundleSearchResultContentView;
      }

      else
      {
        type metadata accessor for AppSearchResult();
        if (swift_dynamicCastClass())
        {
          v1 = type metadata accessor for AppSearchResultContentView();
          v2 = &unk_10096FAD0;
          v3 = type metadata accessor for AppSearchResultContentView;
        }

        else
        {
          type metadata accessor for EditorialSearchResult();
          if (swift_dynamicCastClass())
          {
            v1 = type metadata accessor for EditorialSearchResultContentView();
            v2 = &unk_10096FAC8;
            v3 = type metadata accessor for EditorialSearchResultContentView;
          }

          else
          {
            type metadata accessor for InAppPurchaseSearchResult();
            if (swift_dynamicCastClass())
            {
              v1 = type metadata accessor for InAppPurchaseSearchResultContentView();
              v2 = &unk_10096FAC0;
              v3 = type metadata accessor for InAppPurchaseSearchResultContentView;
            }

            else
            {
              type metadata accessor for LockupCollectionSearchResult();
              if (swift_dynamicCastClass())
              {
                v1 = type metadata accessor for LockupCollectionSearchResultContentView();
                v2 = &unk_10096FAB8;
                v3 = type metadata accessor for LockupCollectionSearchResultContentView;
              }

              else
              {
                type metadata accessor for AppEventSearchResult();
                if (swift_dynamicCastClass())
                {
                  v1 = type metadata accessor for AppEventSearchResultContentView();
                  v2 = &unk_10096FAB0;
                  v3 = type metadata accessor for AppEventSearchResultContentView;
                }

                else
                {
                  type metadata accessor for GuidedSearchResult();
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v1 = type metadata accessor for GuidedSearchResultContentView();
                  v2 = &unk_10096FAA8;
                  v3 = type metadata accessor for GuidedSearchResultContentView;
                }
              }
            }
          }
        }
      }
    }

    sub_10048540C(v2, v3);
    return v1;
  }

  return result;
}

uint64_t sub_100484F94()
{
  v0 = type metadata accessor for SearchResultCondensedBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v22[-v5];
  __chkstk_darwin(v7);
  v9 = &v22[-v8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  type metadata accessor for EditorialSearchResult();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v24 = v3;
  SearchResult.condensedBehavior.getter();
  (*(v1 + 104))(v9, enum case for SearchResultCondensedBehavior.always(_:), v0);
  sub_10048540C(&qword_10096FAE8, &type metadata accessor for SearchResultCondensedBehavior);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v27 != v25 || v28 != v26)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = *(v1 + 8);
    v14(v9, v0);
    v14(v12, v0);

    v3 = v24;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_7:
    type metadata accessor for InAppPurchaseSearchResult();
    if (swift_dynamicCastClass())
    {
      SearchResult.condensedBehavior.getter();
      (*(v1 + 104))(v3, enum case for SearchResultCondensedBehavior.always(_:), v0);
      sub_10048540C(&qword_10096FAE8, &type metadata accessor for SearchResultCondensedBehavior);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v27 == v25 && v28 == v26)
      {
        v18 = *(v1 + 8);
        v18(v3, v0);
        v18(v6, v0);

LABEL_12:
        v15 = type metadata accessor for CondensedInAppPurchaseContentView();
        v16 = &unk_10096FAF0;
        v17 = type metadata accessor for CondensedInAppPurchaseContentView;
        goto LABEL_13;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = *(v1 + 8);
      v20(v3, v0);
      v20(v6, v0);

      if (v19)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v13(v12, v0);

LABEL_6:
  v15 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v16 = &unk_10096FAF8;
  v17 = type metadata accessor for CondensedEditorialSearchResultContentView;
LABEL_13:
  sub_10048540C(v16, v17);
  return v15;
}

uint64_t sub_10048540C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100485454@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v11[1];
  v7 = UITraitCollection.isSizeClassCompact.getter();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ComponentSeparator();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

char *sub_1004855DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DirectionalTextAlignment();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = type metadata accessor for WordmarkView.Alignment();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for StaticDimension();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = type metadata accessor for Wordmark();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_10096E340 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for FontUseCase();
  v53 = sub_1000056A8(v26, qword_1009D1940);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v66);
  (*(v14 + 16))(v29, v16, v13);
  StaticDimension.init(_:scaledLike:)();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_1000056E0(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v33 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v34[v35] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v34;
  v39 = ObjectType;
  v65.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemBackgroundColor];
  [v42 setBackgroundColor:v43];

  [v42 addSubview:*&v42[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView]];
  v44 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel;
  [v42 addSubview:*&v42[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel]];
  [v42 addSubview:*&v42[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView]];
  [*&v42[v44] setNumberOfLines:0];
  v45 = *&v42[v44];
  v46 = [v42 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10002849C(&qword_10097B110);
  v49 = swift_allocObject();
  v63 = xmmword_1007B10D0;
  *(v49 + 16) = xmmword_1007B10D0;
  *(v49 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v39;
  v66[0] = v42;
  v50 = v42;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v39;
  v66[0] = v50;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v66);
  return v50;
}

uint64_t sub_100485E98@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v36 = type metadata accessor for Resize.Rule();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v38 = (v34 - v5);
  __chkstk_darwin(v6);
  v37 = (v34 - v7);
  __chkstk_darwin(v8);
  v10 = (v34 - v9);
  v11 = type metadata accessor for VerticalStack();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  __chkstk_darwin(v18);
  v35 = v34 - v19;
  *(swift_allocObject() + 16) = v1;
  v20 = v1;
  VerticalStack.init(with:)();
  v41 = *&v20[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView];
  type metadata accessor for WordmarkView();
  Measurable.placeable.getter();
  VerticalStack.adding(_:with:)();
  sub_100007000(v44);
  v21 = *(v12 + 8);
  v34[0] = v11;
  v21(v14, v11);
  v34[1] = v12 + 8;
  v22 = *&v20[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v45 = type metadata accessor for DynamicTypeLabel();
  v46 = &protocol witness table for UILabel;
  v44[0] = v22;
  *(swift_allocObject() + 16) = v20;
  v23 = v20;
  v24 = v22;
  VerticalStack.adding(_:with:)();

  v21(v17, v11);
  sub_100007000(v44);
  v25 = *&v23[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView];
  v42 = type metadata accessor for ArcadeDownloadPackCategoryListView();
  v43 = sub_100486C3C();
  v41 = v25;
  *v10 = sub_1002F1298;
  v10[1] = 0;
  v26 = *(v2 + 104);
  v27 = v36;
  v26(v10, enum case for Resize.Rule.recalculated(_:), v36);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v26(v37, enum case for Resize.Rule.unchanged(_:), v27);
  v26(v38, v28, v27);
  v26(v39, v28, v27);
  v45 = type metadata accessor for Resize();
  v46 = &protocol witness table for Resize;
  sub_1000056E0(v44);
  v29 = v25;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v30 = v40;
  v31 = v34[0];
  v40[3] = v34[0];
  v30[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v30);
  v32 = v35;
  VerticalStack.adding(_:with:)();
  v21(v32, v31);
  return sub_100007000(v44);
}

uint64_t sub_100486338(int a1, id a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
  return VerticalStack.Properties.alignment.setter();
}

uint64_t sub_1004863B8(int a1, id a2)
{
  v2 = [a2 traitCollection];
  UITraitCollection.isRegularPad.getter();

  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_100486524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  ArcadeDownloadPackCategoriesPage.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = ArcadeDownloadPackCategoriesPage.categories.getter();
  sub_10049A134(v10, a2, a3, a4);

  [v4 setNeedsLayout];
  [v4 invalidateIntrinsicContentSize];
  v11 = [v4 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  return [v8 setTextAlignment:v13];
}

id sub_100486668()
{
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v1 = *&v0[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return [v1 setTextAlignment:v4];
}

id sub_100486920()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  return [v1 setTextAlignment:v7];
}

double sub_100486B0C()
{
  sub_100485E98(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

unint64_t sub_100486C3C()
{
  result = qword_100986F50;
  if (!qword_100986F50)
  {
    type metadata accessor for ArcadeDownloadPackCategoryListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986F50);
  }

  return result;
}

void sub_100486C94()
{
  v0 = type metadata accessor for DirectionalTextAlignment();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v41 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v38 = &v32 - v3;
  v36 = type metadata accessor for WordmarkView.Alignment();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StaticDimension();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = type metadata accessor for Wordmark();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_10096E340 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v32 = sub_1000056A8(v18, qword_1009D1940);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v32, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v44 = v5;
  v45 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v43);
  (*(v6 + 16))(v21, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  (*(v6 + 8))(v8, v5);
  (*(v34 + 104))(v37, enum case for WordmarkView.Alignment.leading(_:), v36);
  v22 = v35;
  v44 = v35;
  v45 = &protocol witness table for StaticDimension;
  v23 = sub_1000056E0(v43);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v25 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v9 + 8))(v11, v22);
  v26 = v42;
  v27 = v32;
  *(v42 + v33) = v25;
  v28 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v29 = v38;
  v20(v38, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v39 + 104))(v41, enum case for DirectionalTextAlignment.none(_:), v40);
  v30 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v26 + v28) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1004872AC@<X0>(char a1@<W0>, char a2@<W2>, void *a3@<X8>)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100979010);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = type metadata accessor for FontSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4064C00000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x406DC00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4038000000000000;
      a3[18] = &type metadata for Double;
      a3[19] = &protocol witness table for Double;
      a3[15] = 0x4026000000000000;
      a3[23] = &type metadata for Double;
      a3[24] = &protocol witness table for Double;
      a3[20] = 0x4038000000000000;
      a3[28] = &type metadata for Double;
      a3[29] = &protocol witness table for Double;
      a3[25] = 0x402E000000000000;
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v16 = sub_1000056A8(v6, qword_1009D32C8);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      OfferButtonMetrics.estimatedHeight.getter();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v19;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      a3[48] = &type metadata for Double;
      a3[49] = &protocol witness table for Double;
      a3[45] = 0x4028000000000000;
      a3[35] = 0;
      *(a3 + 18) = xmmword_1007CF7D0;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4069000000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x4074A00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4035000000000000;
      if (qword_10096E360 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for FontUseCase();
      v77 = sub_1000056A8(v37, qword_1009D19A0);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = type metadata accessor for StaticDimension();
      a3[18] = v70;
      a3[19] = &protocol witness table for StaticDimension;
      sub_1000056E0(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_1000056E0(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_10002849C(&qword_100973F50);
      v42 = v72;
      Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
      Conditional<>.anyDimension.getter();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      a3[28] = v70;
      a3[29] = &protocol witness table for StaticDimension;
      sub_1000056E0(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_1000056E0(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      StaticDimension.init(_:scaledLike:)();
      v71 = v41;
      v41(v15, v12);
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_1000056A8(v79, qword_1009D32C8);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      OfferButtonMetrics.estimatedHeight.getter();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v52;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      a3[48] = v43;
      a3[49] = &protocol witness table for StaticDimension;
      sub_1000056E0(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_1000056E0(v87);
      v46(v53, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      result = v71(v15, v12);
      a3[35] = 0;
      *(a3 + 18) = xmmword_1007CF7D0;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_10096E360 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for FontUseCase();
      v77 = sub_1000056A8(v21, qword_1009D19A0);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = type metadata accessor for StaticDimension();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_1000056E0(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_10002849C(&qword_100973F50);
      Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
      Conditional<>.anyDimension.getter();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_1000056E0(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v70 = v25;
      v25(v15, v12);
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_1000056A8(v79, qword_1009D32C8);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      OfferButtonMetrics.estimatedHeight.getter();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_1000056E0(v84);
      (v72)(v35, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_10096E360 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for FontUseCase();
      v81 = sub_1000056A8(v54, qword_1009D19A0);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = type metadata accessor for StaticDimension();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_1000056E0(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_1000056E0(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      StaticDimension.init(_:scaledLike:)();
      v60(v15, v12);
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_1000056A8(v79, qword_1009D32C8);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      OfferButtonMetrics.estimatedHeight.getter();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_1000056E0(v84);
      v59(v67, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_1007CF7E0;
    *&v87[37] = xmmword_1007CF7E0;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_1004881C4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v32 = sub_1000056A8(v8, qword_1009D32C8);
      (*(v9 + 16))(v11, v32, v8);
      OfferButtonMetrics.estimatedHeight.getter();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_100005A38(&v36, a3);
      *(a3 + 80) = xmmword_1007CF830;
      *(a3 + 96) = xmmword_1007CF840;
      v21 = xmmword_1007CF7E0;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v23 = sub_1000056A8(v8, qword_1009D32C8);
    (*(v9 + 16))(v11, v23, v8);
    OfferButtonMetrics.estimatedHeight.getter();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007CF850;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_1007CF820;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v27 = sub_1000056A8(v8, qword_1009D32C8);
    (*(v9 + 16))(v11, v27, v8);
    OfferButtonMetrics.estimatedHeight.getter();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007CF810;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_10096ECD8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v8, qword_1009D32C8);
  (*(v9 + 16))(v11, v12, v8);
  OfferButtonMetrics.estimatedHeight.getter();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_1007CF7F0;
  v21 = xmmword_1007CF800;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_1004886BC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_10002849C(&unk_1009732B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = &v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_10096D018 != -1)
    {
      swift_once();
    }

    v22 = qword_1009CDED0;
  }

  else
  {
    if (qword_10096D010 != -1)
    {
      swift_once();
    }

    v22 = qword_1009CDEB8;
  }

  v23 = a1;
  v24 = sub_1000056A8(v11, v22);
  sub_1000C2608(v24, v13);
  sub_10048AB14(v13, v16);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(value:)();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView] = sub_100147904(v19);
  v26 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton] = sub_1000F5284(0);
  type metadata accessor for DynamicTypeButton();
  v27 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_10096E128 != -1)
    {
      swift_once();
    }

    v28 = qword_1009D12F8;
  }

  else
  {
    if (qword_10096E118 != -1)
    {
      swift_once();
    }

    v28 = qword_1009D12C8;
  }

  v29 = sub_1000056A8(v5, v28);
  v30 = v38;
  (*(v6 + 16))(v38, v29, v5);
  (*(v6 + 32))(v10, v30, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton] = v27;
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v31 = v27;
  v32 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor:v35];

  v36 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView;
  [*&v34[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v34 addSubview:*&v34[v36]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton]];
  [*&v34[v36] addSubview:v31];

  return v34;
}

uint64_t sub_100488CB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = UITraitCollection.isSizeClassCompact.getter();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_1004872AC(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_100005744(0, &qword_100972EB0);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
      v84 = type metadata accessor for DynamicTypeButton();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_10048ABCC(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = UITraitCollection.isSizeClassCompact.getter();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_1004881C4(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_100005744(0, &qword_100972EB0);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
      v54 = type metadata accessor for DynamicTypeButton();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_10048AB78(v67);
    }

    LayoutRect.size.getter();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_1004892AC(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton);

    [v4 setAlpha:a1];
  }
}

id sub_100489334(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v150 = a8;
  v134 = a7;
  v149 = a6;
  v136 = a5;
  v135 = a4;
  v12 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v12 - 8);
  v129 = &v118 - v13;
  v130 = type metadata accessor for ImpressionMetrics();
  v131 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Artwork.Crop();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for AspectRatio();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadeSubscribePage.PageType();
  v152 = *(v19 - 8);
  v153 = v19;
  __chkstk_darwin(v19);
  v151 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for FontUseCase();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v133 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v22 - 8);
  v146 = &v118 - v23;
  v143 = type metadata accessor for OfferButtonSubtitlePosition();
  v139 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_1009701A0);
  v144 = *(v25 - 8);
  v145 = v25;
  __chkstk_darwin(v25);
  v142 = &v118 - v26;
  v27 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v27 - 8);
  v140 = &v118 - v28;
  v29 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v29 - 8);
  v132 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v122 = &v118 - v32;
  v33 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v33 - 8);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  v39 = type metadata accessor for StyledText.MediaType();
  v147 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v42 - 8);
  v44 = &v118 - v43;
  v45 = ArcadeSubscribePage.details.getter();
  if (v45)
  {
    v46 = v45;
    v47 = sub_10002849C(&unk_1009732B0);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_1003A9938(v46, v44, v150);

    sub_10002B894(v44, &unk_100975ED0);
  }

  ArcadeSubscribePage.askToBuyMessage.getter();
  if (!v48)
  {
    v147 = ArcadeSubscribePage.offerButtonAction.getter();
    v120 = ArcadeSubscribePage.subscribedOfferButtonAction.getter();
    ArcadeSubscribePage.dismissButtonTitle.getter();
    v53 = ArcadeSubscribePage.offerDisplayProperties.getter();
    v54 = &v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock];
    v55 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock];
    v56 = v136;
    *v54 = v135;
    *(v54 + 1) = v56;
    sub_10001F63C(v55);
    v57 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];

    v58 = String._bridgeToObjectiveC()();

    [v57 setTitle:v58 forState:0];

    [v57 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v119 = v53;
    if (v53)
    {
      OfferDisplayProperties.environment.getter();
      v59 = type metadata accessor for OfferEnvironment();
      v60 = *(v59 - 8);
      (*(v60 + 56))(v38, 0, 1, v59);
      sub_10048B1B0(v38, v35);
      if ((*(v60 + 88))(v35, v59) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_10096E128 != -1)
        {
          swift_once();
        }

        v61 = v138;
        v62 = sub_1000056A8(v138, qword_1009D12F8);
        v63 = v137;
        v64 = v122;
        (*(v137 + 16))(v122, v62, v61);
        (*(v63 + 56))(v64, 0, 1, v61);
        dispatch thunk of DynamicTypeButton.fontUseCase.setter();
        v66 = v150;
        v65 = v151;
LABEL_28:
        v81 = sub_10002849C(&unk_100973240);
        v82 = v140;
        (*(*(v81 - 8) + 56))(v140, 1, 1, v81);
        v83 = v139;
        v84 = v143;
        (*(v139 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
        (*(v83 + 56))(v146, 1, 1, v84);
        sub_1003A1084(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
        v85 = v142;
        AccessibilityConditional.init(value:axValue:)();
        sub_10064AFA4(v119, v147, v120, v82, v85, v66, 0, 0);

        (*(v144 + 8))(v85, v145);
        sub_10002B894(v82, &unk_100973230);
        v73 = v152;
        goto LABEL_29;
      }

      (*(v60 + 8))(v35, v59);
    }

    else
    {
      v74 = type metadata accessor for OfferEnvironment();
      (*(*(v74 - 8) + 56))(v38, 1, 1, v74);
      sub_10002B894(v38, &unk_100970160);
    }

    v65 = v151;
    if (v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style] == 1)
    {
      v66 = v150;
      if (qword_10096E128 != -1)
      {
        swift_once();
      }

      v75 = qword_1009D12F8;
    }

    else
    {
      v66 = v150;
      if (qword_10096E118 != -1)
      {
        swift_once();
      }

      v75 = qword_1009D12C8;
    }

    v76 = v138;
    v77 = sub_1000056A8(v138, v75);
    v78 = v137;
    v79 = v133;
    (*(v137 + 16))(v133, v77, v76);
    v80 = v132;
    (*(v78 + 32))(v132, v79, v76);
    (*(v78 + 56))(v80, 0, 1, v76);
    dispatch thunk of DynamicTypeButton.fontUseCase.setter();
    goto LABEL_28;
  }

  v49 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v50 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView;
  v51 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
  if (v51)
  {
    [v51 removeFromSuperview];
    v52 = *&v8[v50];
  }

  else
  {
    v52 = 0;
  }

  *&v8[v50] = v49;
  v67 = v49;

  if (v67)
  {
    [*&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v67];
  }

  v68 = *&v8[v50] != 0;
  [*&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton] setHidden:v68];
  [*&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton] setHidden:v68];
  [v8 setNeedsLayout];

  v69 = *&v8[v50];
  if (v69)
  {
    v70 = *(v69 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label);
    (*(v147 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    type metadata accessor for StyledText();
    swift_allocObject();
    v71 = v70;
    v72 = StyledText.init(rawText:rawTextType:)();
    sub_1002F6004(v72, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v65 = v151;
  v73 = v152;
LABEL_29:
  v86 = sub_10048AC20(v9, v9, a1, a2);
  v88 = v87;
  ArcadeSubscribePage.pageType.getter();
  v89 = v153;
  v90 = (*(v73 + 88))(v65, v153);
  if (v90 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v73 + 96))(v65, v89);
    v91 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v91 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    sub_1003A1084(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v92 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView;
    v93 = *&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v94 = v91;
    if (v93)
    {
      [v93 removeFromSuperview];
      v95 = *&v9[v92];
    }

    else
    {
      v95 = 0;
    }

    *&v9[v92] = v91;
    v110 = v91;

    [*&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v73 + 96))(v65, v89);
    v96 = *v65;
    v97 = v65[1];
    v98 = v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style] == 1;
    v99 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v100 = sub_100451C5C(v98);
    v101 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView;
    v102 = *&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v103 = v100;
    if (v102)
    {
      [v102 removeFromSuperview];
      v102 = *&v9[v101];
    }

    *&v9[v101] = v100;
    v110 = v100;

    [*&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    *&v110[OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator] = v134;

    *&v110[OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon] = v96;

    v111 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v110[v111] = v97;

    *&v110[OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader] = v149;

    sub_10045222C(v86, v88);

    goto LABEL_47;
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v73 + 96))(v65, v89);
    ImpressionableArtwork.art.getter();
    v104 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    Artwork.size.getter();
    v105 = v123;
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    (*(v124 + 8))(v105, v125);
    v106 = v126;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v127 + 8))(v106, v128);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v104 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    sub_1003A1084(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v107 = v129;
    ImpressionableArtwork.impressionMetrics.getter();
    v108 = v131;
    v109 = v130;
    if ((*(v131 + 48))(v107, 1, v130) == 1)
    {
      sub_10002B894(v107, &qword_100973D30);
    }

    else
    {
      v113 = v121;
      (*(v108 + 32))();
      if (v134)
      {
        ImpressionsCalculator.addElement(_:at:)();
      }

      (*(v131 + 8))(v113, v109);
    }

    v114 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView;
    v115 = *&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v116 = v104;
    if (v115)
    {
      [v115 removeFromSuperview];
      v117 = *&v9[v114];
    }

    else
    {
      v117 = 0;
    }

    *&v9[v114] = v104;
    v110 = v104;

    [*&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v73 + 8))(v65, v89);
  return [v9 setNeedsLayout];
}

unint64_t sub_10048AAC0()
{
  result = qword_100986FC8;
  if (!qword_100986FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986FC8);
  }

  return result;
}

uint64_t sub_10048AB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10048AC20(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v14)
  {
    v62 = v9;
    v15 = a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = UITraitCollection.isSizeClassCompact.getter();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v86);
        [a2 bounds];
        v21 = CGRectGetWidth(v87);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_1004872AC(v18, v15, v66);
    v29 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v65 = type metadata accessor for LinkableHeaderView();
      v61 = &protocol witness table for UIView;
    }

    else
    {
      v65 = 0;
      v61 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v63 = v8;
    v64 = a1;
    if (v33)
    {
      v60 = sub_100005744(0, &qword_100972EB0);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v60 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v79 = &protocol witness table for UIView;
    v78 = v48;
    v77 = v47;
    v49 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
    v81 = type metadata accessor for OfferButton();
    v82 = &protocol witness table for UIView;
    v80 = v49;
    v50 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
    v84 = type metadata accessor for DynamicTypeButton();
    v85 = &protocol witness table for UIView;
    v83 = v50;
    memcpy(v67, v66, 0x190uLL);
    v67[50] = v29;
    v68 = 0;
    v69 = 0;
    v70 = v65;
    v71 = v61;
    v72 = v33;
    v74 = 0;
    v73 = 0;
    v75 = v60;
    v76 = v34;
    sub_10002A400(v67, v67[3]);
    v51 = v33;
    v52 = v47;
    v53 = v49;
    v54 = v50;
    v55 = v29;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v56 = v64;
    AnyDimension.value(in:rounded:)();
    v57 = v63;
    v58 = *(v62 + 8);
    v58(v12, v63);
    sub_10048B220(v56, v67, a3, a4);
    sub_10002A400(&v67[5], v67[8]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v58(v12, v57);
    sub_10048ABCC(v67);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = UITraitCollection.isSizeClassCompact.getter();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v88);
        [a2 bounds];
        v28 = CGRectGetWidth(v89);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_1004881C4(v25, v22, v66, a3);
    v30 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = type metadata accessor for LayoutViewPlaceholder();
    v36 = v30;
    v37 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v67[42] = &protocol witness table for LayoutViewPlaceholder;
    v67[41] = v35;
    v67[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v67[47] = &protocol witness table for UIView;
    v67[46] = v39;
    v67[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v69 = &protocol witness table for UIView;
    v68 = v41;
    v67[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
    v43 = type metadata accessor for DynamicTypeButton();
    v74 = &protocol witness table for UIView;
    v73 = v43;
    v70 = v42;
    memcpy(v67, v66, 0x108uLL);
    v67[33] = v30;
    v67[34] = 0;
    v67[35] = 0;
    v67[36] = v31;
    v67[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_10048B5A8(a1, v67, a3);
    sub_10048AB78(v67);
  }

  return a3;
}

uint64_t sub_10048B1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100970160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10048B220(uint64_t a1, void *a2, double a3, double a4)
{
  *&v29 = a2 + 35;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 20, a2[23]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v13 = v12;
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_10002A400(a2 + 15, a2[18]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v14(v11, v8);
  sub_10002A400(a2 + 25, a2[28]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v14(v11, v8);
  sub_10002C0AC((a2 + 30), v38);
  v19 = *(v29 + 32);
  v20 = *(v29 + 16);
  v28 = *v29;
  v29 = v20;
  sub_10002C0AC((a2 + 40), &v41);
  sub_10002C0AC((a2 + 45), &v42);
  v37[0] = v16;
  v37[1] = v13;
  v37[2] = v18;
  v37[3] = v13;
  v39 = v29;
  *&v38[40] = v28;
  v40 = v19;
  sub_1000ECFFC(v37, v33);
  sub_10002C0AC((a2 + 60), &v34);
  sub_10002C0AC((a2 + 65), &v35);
  sub_10002C0AC((a2 + 70), &v36);
  sub_10002A400(a2 + 10, a2[13]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v14(v11, v8);
  sub_10048BB7C(a3, a1, v33);
  v24 = a4 - v22 - v23;
  sub_10005FC74((a2 + 50), &v30);
  if (v31)
  {
    sub_100005A38(&v30, v32);
    sub_10002A400(v32, v32[3]);
    Measurable.measuredSize(fitting:in:)();
    v26 = v25;
    sub_1000ED33C(v33);
    sub_1000ED36C(v37);
    v24 = v24 - v26;
    sub_100007000(v32);
  }

  else
  {
    sub_1000ED33C(v33);
    sub_1000ED36C(v37);
    sub_10002B894(&v30, &qword_100975610);
  }

  return v24;
}

double sub_10048B5A8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_10002C0AC(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_10002C0AC(a2 + 184, &v28);
  sub_10002C0AC(a2 + 224, &v29);
  v25[1] = v16;
  v25[0] = v17;
  v27 = v14;
  *&v26[40] = v15;
  sub_10048BE84(v25, v21);
  sub_10002C0AC(a2 + 344, &v22);
  sub_10002C0AC(a2 + 384, &v23);
  sub_10002C0AC(a2 + 424, &v24);
  sub_10002A400(a2, *(a2 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_10048B874(a3, a1, v21);
  sub_10005FC74(a2 + 264, &v18);
  if (v19)
  {
    sub_100005A38(&v18, v20);
    sub_10002A400(v20, v20[3]);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v20);
  }

  else
  {
    sub_10002B894(&v18, &qword_100975610);
  }

  sub_10002A400((a2 + 40), *(a2 + 64));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v12(v9, v6);
  sub_10048BEE0(v21);
  sub_10048BF34(v25);
  return a3;
}

double sub_10048B874(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a3 + 23, a3[26]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a3 + 18, a3[21]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10002A400(a3 + 28, a3[31]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 4, a3[7]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v9(v8, v5);
  }

  sub_10002A400(a3 + 33, a3[36]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 33, a3[36]);
    Measurable.measuredSize(fitting:in:)();
  }

  sub_10002A400(a3 + 28, a3[31]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 33, a3[36]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a3 + 13, a3[16]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v9(v8, v5);
    }
  }

  return a1;
}

double sub_10048BB7C(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a3 + 24, a3[27]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a3 + 19, a3[22]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10002A400(a3 + 29, a3[32]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 4, a3[7]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v9(v8, v5);
  }

  sub_10002A400(a3 + 34, a3[37]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 34, a3[37]);
    Measurable.measuredSize(fitting:in:)();
  }

  sub_10002A400(a3 + 29, a3[32]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 34, a3[37]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a3 + 14, a3[17]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_10048BF88()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SystemImage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100979010);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100005644(v11, qword_1009D1EB0);
  v12 = sub_1000056A8(v11, qword_1009D1EB0);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  Conditional<>.anyDimension.getter();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = static SystemImage.load(_:with:)();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_10096E218 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v0, qword_1009D15C8);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_100005744(0, &qword_100970180);
  v20 = static UIColor.primaryText.getter();
  sub_100005744(0, &qword_100972EB0);
  static UIView.defaultHighlightAlpha.getter();
  v22 = v21;
  sub_100005A38(&v29, v12);
  sub_100005A38(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_100005A38(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_10048C3E4()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100005644(v8, qword_1009D1EC8);
  v9 = sub_1000056A8(v8, qword_1009D1EC8);
  v10 = type metadata accessor for ZeroDimension();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v28);
  static ZeroDimension.zero.getter();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v25);
  static ZeroDimension.zero.getter();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = static SystemImage.load(_:with:)();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_10096E218 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v0, qword_1009D15C8);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_100005744(0, &qword_100972EB0);
  static UIView.defaultHighlightAlpha.getter();
  v19 = v18;
  sub_100005A38(&v28, v9);
  sub_100005A38(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_100005A38(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_10048C770@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = type metadata accessor for VerticalStack();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Resize.Rule();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v69 = (&v54 - v10);
  __chkstk_darwin(v11);
  v68 = (&v54 - v12);
  __chkstk_darwin(v13);
  v67 = (&v54 - v14);
  v15 = type metadata accessor for HorizontalStack();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = *(v3 + 120);
  v66 = v3;
  if (v24 == 1)
  {
    v58 = v21;
    HorizontalStack.init(with:)();
    sub_10002A400(v3, *(v3 + 24));
    Measurable.placeable.getter();
    sub_10048F110(v3, v73);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v73, 0x108uLL);
    v26 = v58;
    HorizontalStack.adding(_:with:)();

    sub_100007000(v74);
    v27 = *(v16 + 8);
    v56 = v16 + 8;
    v57 = v27;
    v27(v26, v15);
    sub_10002C0AC(v3 + 40, v74);
    v28 = *(v3 + 248);
    v29 = v67;
    v67[3] = &type metadata for CGFloat;
    v29[4] = &protocol witness table for CGFloat;
    *v29 = v28;
    v59 = v23;
    v30 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v32 = v71;
    v31(v29, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v32);
    v55 = v19;
    v31(v69, v33, v32);
    v60 = v16;
    v31(v70, v33, v32);
    v73[3] = type metadata accessor for Resize();
    v73[4] = &protocol witness table for Resize;
    sub_1000056E0(v73);
    v34 = v66;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    v35 = v55;
    HorizontalStack.adding(_:with:)();
    v36 = v57;
    v57(v35, v30);
    sub_100007000(v73);
    v37 = v58;
    HorizontalStack.init(with:)();
    sub_10048F110(v34, v73);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v73, 0x108uLL);
    HorizontalStack.adding(_:with:)();

    v36(v37, v30);
    v73[3] = v30;
    v73[4] = &protocol witness table for HorizontalStack;
    v39 = sub_1000056E0(v73);
    v40 = v59;
    (*(v60 + 16))(v39, v59, v30);
    v75 = v30;
    v76 = &protocol witness table for HorizontalStack;
    sub_1000056E0(v74);
    HorizontalStack.adding(_:with:)();
    v41 = v35;
    v42 = v66;
    v36(v41, v30);
    v36(v40, v30);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    HorizontalStack.init(with:)();
    sub_10002A400(v3, *(v3 + 24));
    Measurable.placeable.getter();
    sub_10048F110(v3, v73);
    v43 = swift_allocObject();
    memcpy((v43 + 16), v73, 0x108uLL);
    HorizontalStack.adding(_:with:)();

    sub_100007000(v74);
    v59 = *(v16 + 8);
    v60 = v16 + 8;
    v59(v19, v15);
    sub_10002C0AC(v3 + 40, v74);
    v44 = *(v3 + 248);
    v45 = v67;
    v67[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    *v45 = v44;
    v58 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46 = v71;
    v31(v45, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v46);
    v31(v69, v33, v46);
    v31(v70, v33, v46);
    v73[3] = type metadata accessor for Resize();
    v73[4] = &protocol witness table for Resize;
    sub_1000056E0(v73);
    v42 = v66;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    v47 = v58;
    v75 = v58;
    v76 = &protocol witness table for HorizontalStack;
    sub_1000056E0(v74);
    HorizontalStack.adding(_:with:)();
    v59(v23, v47);
  }

  sub_100007000(v73);
  v48 = v62;
  VerticalStack.init(with:)();
  sub_10048F110(v42, v73);
  v49 = swift_allocObject();
  memcpy((v49 + 16), v73, 0x108uLL);
  v50 = v64;
  v72[3] = v64;
  v72[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v72);
  VerticalStack.adding(_:with:)();

  (*(v63 + 8))(v48, v50);
  v51 = v67;
  *v67 = sub_1002F1298;
  v51[1] = 0;
  v52 = v71;
  v31(v51, enum case for Resize.Rule.recalculated(_:), v71);
  v31(v68, v33, v52);
  v31(v69, v33, v52);
  v31(v70, v33, v52);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  return sub_100007000(v74);
}

uint64_t sub_10048D0AC(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a2 + 128, v4);
  VerticalStack.Properties.topSpacing.setter();
  sub_10002C0AC(a2 + 168, v4);
  return VerticalStack.Properties.bottomSpacing.setter();
}

double sub_10048D100()
{
  v1 = type metadata accessor for Resize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v0, v0[3]);
  Measurable.placeable.getter();
  sub_10002A400(v18, v18[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100007000(v18);
  sub_10002A400(v0, v0[3]);
  v19.var0 = v6;
  v19.var1 = v8;
  v19.var2 = v10;
  v19.var3 = v12;
  if (LayoutTextView.estimatedNumberOfLines(from:)(v19) > 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  sub_10048C770(v13, v4);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_10048D2F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = type metadata accessor for Resize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v4, v4[3]);
  Measurable.placeable.getter();
  sub_10002A400(v24, v24[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100007000(v24);
  sub_10002A400(v4, v4[3]);
  v25.var0 = v14;
  v25.var1 = v16;
  v25.var2 = v18;
  v25.var3 = v20;
  if (LayoutTextView.estimatedNumberOfLines(from:)(v25) > 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  if (static HorizontalStack.Alignment.== infix(_:_:)())
  {
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
  }

  sub_10048C770(v21, v12);
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v10 + 8))(v12, v9);
}

id sub_10048D538()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_100986FD0 = result;
  return result;
}

char *sub_10048D6D8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_10048EEB4(a1, &v5[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  static UIButton.Configuration.plain()();
  v28 = type metadata accessor for UIButton.Configuration();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_100146A44(v18, v21);
    UIButton.configuration.setter();
    sub_1001AF7BC(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.configuration.setter();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView]];
  sub_10048EF18(a1);
  return v27;
}

id sub_10048DAD0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  UIButton.configuration.getter();
  v8 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_100146A44(v7, v4);
    UIButton.configuration.setter();
    sub_1001AF7BC(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

id sub_10048DCD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_10048EE60();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_100005744(0, &qword_100986BF0);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_100005744(0, &qword_100973120);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_10002C0AC(v11, v7 + 144);
      sub_10002C0AC(v11 + 40, v7 + 184);
      sub_10002C0AC(v11 + 96, v7 + 224);
      v12 = v9;
      result = [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = v15;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = type metadata accessor for HorizontalStack();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_1000056E0(a1);
  return HorizontalStack.init(with:)();
}

uint64_t sub_10048DE88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&qword_10097F848);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = type metadata accessor for FontUseCase();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_100005744(0, &qword_1009730E0);
  v30 = v1 + OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_10048EEB4(v30, v72);
  UIButton.configuration.getter();
  v33 = type metadata accessor for UIButton.Configuration();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_100146A44(v19, v73);
    UIButton.configuration.setter();
    sub_1001AF7BC(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_10048EEB4(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_10048EF74(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v47 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v35(v16, 1, v33))
  {
    sub_100146A44(v16, v73);
    UIButton.configuration.setter();
    sub_1001AF7BC(v16);
  }

  else
  {
    v48 = v68;
    sub_10048EEB4(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_10048EF74(v48, v50 + v49);
    v51 = v64;
    UIConfigurationColorTransformer.init(_:)();
    v52 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    UIButton.Configuration.imageColorTransformer.setter();
    UIButton.configuration.setter();
  }

  v53 = v69;
  UIButton.configuration.getter();
  if (v35(v53, 1, v33))
  {
    sub_100146A44(v53, v73);
    UIButton.configuration.setter();
    sub_1001AF7BC(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = String._bridgeToObjectiveC()();

    [v57 setCompositingFilter:v59];
  }

  UIButton.configuration.getter();
  if (v35(v38, 1, v33))
  {
    sub_100146A44(v38, v73);
    UIButton.configuration.setter();

    sub_10048EF18(v32);
    return sub_1001AF7BC(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v62(v74, 0);
    UIButton.configuration.setter();

    return sub_10048EF18(v32);
  }
}

uint64_t sub_10048E6F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AttributeContainer();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_1001469E0();
  v11 = a2;
  AttributeContainer.subscript.setter();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_1002F4F4C();
  return AttributeContainer.subscript.setter();
}

id sub_10048E800(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_10048E9B4(double a1, double a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_10048DCD0(v12);
      sub_10002A400(v12, v12[3]);
      [v2 layoutMargins];
      CGSize.subtracting(insets:)();
      v9 = [v2 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();

      [v2 layoutMargins];
      CGSize.adding(outsets:)();
      v6 = v10;
      sub_100007000(v12);
    }
  }

  return v6;
}

uint64_t sub_10048EBE8()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

void sub_10048ECE8()
{
  sub_1003F72D4();
  if (v0 <= 0x3F)
  {
    sub_100005744(319, &qword_1009744B0);
    if (v1 <= 0x3F)
    {
      sub_100005744(319, &qword_100970180);
      if (v2 <= 0x3F)
      {
        sub_10048EDF8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FontUseCase();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10048EDF8()
{
  if (!qword_100987098)
  {
    sub_100005744(255, &qword_1009870A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100987098);
    }
  }
}

unint64_t sub_10048EE60()
{
  result = qword_1009870F0;
  if (!qword_1009870F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009870F0);
  }

  return result;
}

uint64_t sub_10048EEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048EF18(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10048EF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10048EFD8(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_10048E800(a1, v4, v5);
}

uint64_t sub_10048F04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_10048E6F8(a1, v6, v7, v8, a2);
}

void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isRegularPad.getter();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_10048F38C(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.isRegularPad.getter();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_10048F38C(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (a1 != 744.0)
    {
      result = JUScreenClassGetPortraitWidth();
      if (v5 < a1)
      {
        return JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1 != 1133.0)
  {
    result = JUScreenClassGetLandscapeWidth();
    if (v4 < a1)
    {
      return JUScreenClassGetLandscapeWidth();
    }
  }

  return result;
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

void sub_10048F4BC(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_10002849C(&unk_1009731F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v12 = v11;
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v4 + 8))(v6, v3);
  v16 = v29;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v18 = v17;
  v15(v10, v7);
  v19 = ShelfLayoutContext.traitCollection.getter();
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v23 = objc_msgSendSuper2(&v28, "init");
  (*(*(v25 + 8) + 16))(v16, v23, v27, v12, v14);
}

uint64_t sub_10048F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v23 = a5;
  v21 = a2;
  v7 = type metadata accessor for ShelfLayoutContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100992470);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for ComponentPrefetchSizing();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  dispatch thunk of static ArtworkPrefetchingShelfComponentView.sizingForArtworkPrefetch(in:asPartOf:)();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10002B894(v13, &qword_100992470);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_10048FA60(v22);
  __chkstk_darwin(v19);
  *(&v21 - 2) = v17;
  v20._rawValue = sub_1000B40B8(sub_1000BDD2C, (&v21 - 4), v19);

  if (v20._rawValue >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v20._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    ArtworkLoader.prefetchArtwork(using:)(v20);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

double *sub_10048FA60(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1001D74CC();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_10002849C(&unk_100973200);
      ItemLayoutContext.typedModel<A>(as:)();
      if (v26)
      {
        sub_100005A38(&v25, v27);
        sub_10002A400(v27, v27[3]);
        v17 = dispatch thunk of ArtworkModelProtocol.artwork.getter();
        if (v17)
        {
          v18 = v17;
          sub_10002849C(&qword_100973210);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1007B0B70;
          *(v19 + 32) = v18;
          sub_100007000(v27);
          return v19;
        }

        sub_100007000(v27);
      }

      else
      {
        sub_10002B894(&v25, &unk_100990B70);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10048FE50@<X0>(uint64_t *a1@<X8>)
{
  ComponentPrefetchSizing.size.getter();
  ComponentPrefetchSizing.contentMode.getter();
  result = Artwork.config(_:mode:prefersLayeredImage:)();
  *a1 = result;
  return result;
}

double sub_10048FF00(uint64_t a1, uint64_t a2)
{
  v83 = *&a2;
  v3 = sub_10002849C(&unk_100973B10);
  __chkstk_darwin(v3 - 8);
  v67 = &v67 - v4;
  v5 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v5 - 8);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = type metadata accessor for LegacyAppState();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AdamId();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PageGrid.Direction();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  v19 = type metadata accessor for PageGrid();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  type metadata accessor for ProductTopLockup();
  sub_100496F64(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  v29 = v86[0];
  if (v86[0])
  {
    v73 = v9;
    v84 = v22;
    v68 = v18;
    swift_getKeyPath();
    v69 = v29;
    ItemLayoutContext.subscript.getter();

    PageGrid.containerWidth.getter();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v30(v25, v19);
    v31 = v68;
    v32 = v76;
    (*(v14 + 104))(v68, enum case for PageGrid.Direction.vertical(_:), v76);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v70 = v19;
    v72 = v20 + 8;
    v71 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v75, v31, v32);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v14 + 8))(v31, v32);
    sub_10002849C(&unk_100973AF0);
    v33 = v83;
    BaseObjectGraph.inject<A>(_:)();
    v34 = v86[0];
    swift_getObjectType();
    v35 = v77;
    v36 = v69;
    ProductTopLockup.adamId.getter();
    v76 = v34;
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    (*(v78 + 8))(v35, v79);
    swift_getObjectType();
    v37 = v80;
    dispatch thunk of AppStateMachine.currentState.getter();
    v38 = sub_100495A34();
    sub_100490E28(v36, v37, a1, v33, v86, v38, v39);
    v40 = v82;
    v41 = *(v81 + 8);
    v41(v37, v82);
    dispatch thunk of AppStateMachine.currentState.getter();
    v42 = v73;
    ProductTopLockup.primaryBanner(for:)();
    v41(v37, v40);
    v43 = type metadata accessor for ProductTopLockup.PrimaryBanner();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v74;
      sub_100031660(v50, v74, &qword_100973AC0);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &qword_100973AC0;
        v53 = v51;
      }

      else
      {
        v55 = v67;
        ProductTopLockup.PrimaryBanner.hideCriteria.getter();
        (*(v44 + 8))(v51, v43);
        v56 = type metadata accessor for HideCriteria();
        v57 = *(v56 - 8);
        if ((*(v57 + 48))(v55, 1, v56) != 1)
        {
          v58 = HideCriteria.isHidden.getter();
          (*(v57 + 8))(v55, v56);
          v48 = v58 ^ 1;
          goto LABEL_10;
        }

        v52 = &unk_100973B10;
        v53 = v55;
      }

      sub_10002B894(v53, v52);
      v48 = 1;
    }

LABEL_10:
    if (ProductTopLockup.uber.getter() && (, ((ProductTopLockup.wantsInlineUberPresentationStyle.getter() | v48) & 1) == 0))
    {
      if (qword_10096D780 != -1)
      {
        swift_once();
      }

      v60 = qword_1009CF690;
    }

    else
    {
      if (ProductTopLockup.uber.getter())
      {

        v59 = 0.0;
LABEL_22:
        sub_10002A400(v86, v86[3]);
        v63 = v84;
        PageGrid.componentMeasuringSize(spanning:)();
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        Measurable.measuredSize(fitting:in:)();
        v65 = v64;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v71(v63, v70);
        v54 = v59 + v65;
        sub_10002B894(v49, &qword_100973AC0);
        sub_100007000(v86);
        return v54;
      }

      v59 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_10096D788 != -1)
      {
        swift_once();
      }

      v60 = qword_1009CF6B8;
    }

    sub_10002A400(v60, v60[3]);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v61 = v85;
    AnyDimension.value(with:)();
    v59 = v62;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_100490994(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_100031660(v1, v11 - v8, &qword_100973AC0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_100490B80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProductTopLockup();
  sub_100496F64(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v12)
  {
    v4 = sub_10048FF00(a1, a2);
    v5 = ProductTopLockup.uber.getter();
    sub_100496188(v5, v4);

    if (ProductTopLockup.wantsInlineUberPresentationStyle.getter() & 1) != 0 && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v6 = UITraitCollection.isSizeClassRegular.getter(), v12, (v6) && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v7 = UITraitCollection.prefersAccessibilityLayouts.getter(), v12, (v7))
    {
      sub_100495A34();
      if (qword_10096E6C0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for StaticDimension();
      sub_1000056A8(v8, qword_1009D2460);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B0B70;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      dispatch thunk of AnyDimension.rawValue(in:)();
    }

    else
    {
    }
  }
}

uint64_t sub_100490E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v145 = a4;
  v146 = a2;
  v147 = a5;
  v13 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v13 - 8);
  v144 = &v119 - v14;
  v143 = type metadata accessor for OfferButtonSubtitlePosition();
  v138 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10002849C(&unk_1009701A0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v119 - v16;
  v148 = type metadata accessor for OfferButtonMetrics();
  v137 = *(v148 - 8);
  __chkstk_darwin(v148);
  v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v135);
  v19 = (&v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v153 = &v119 - v21;
  v151 = type metadata accessor for LabelPlaceholderCompatibility();
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  v149 = type metadata accessor for PageGrid();
  v26 = *(v149 - 8);
  __chkstk_darwin(v149);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v154 = v28;
  ItemLayoutContext.subscript.getter();

  v29 = a1;
  ProductTopLockup.primaryBanner(for:)();
  v146 = v8;
  v155 = v8;
  v156 = a1;
  v157 = a3;
  v158 = v145;
  v30 = COERCE_DOUBLE(sub_100490994(sub_100496EDC));
  LOBYTE(a1) = v31;
  sub_10002B894(v25, &qword_100973AC0);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_100495EA8();
  if (ProductTopLockup.wantsInlineUberPresentationStyle.getter())
  {
    v125 = v26;
    v124 = v29;
    ProductTopLockup.title.getter();
    if (qword_10096D708 != -1)
    {
      swift_once();
    }

    v34 = sub_10002849C(&unk_100980410);
    sub_1000056A8(v34, qword_1009CF548);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v160 = v167;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    if (qword_10096D880 != -1)
    {
      swift_once();
    }

    v35 = sub_10002849C(&unk_100973B30);
    sub_1000056A8(v35, qword_1009CF9D0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v166 = v167;
    v134 = v35;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v36 = type metadata accessor for Feature();
    v168 = v36;
    v132 = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature);
    v169 = v132;
    v37 = sub_1000056E0(&v167);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v131 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v133 = v36;
    v130 = v39;
    v129 = v38 + 104;
    v39(v37);
    isFeatureEnabled(_:)();
    sub_100007000(&v167);
    v40 = v150;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v41 = *(v152 + 8);
    v152 += 8;
    v128 = v41;
    v41(v40, v151);
    PageGrid.componentMeasuringSize(spanning:)();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_100079F24();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_10096D6D8 != -1)
    {
      swift_once();
    }

    v46 = v135;
    v47 = sub_1000056A8(v135, qword_1009CF4E8);
    v48 = v153;
    sub_10049700C(v47, v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v145 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    *(v48 + 24) = right;
    *v48 = 0;
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v32;
    v49 = v46[15];
    sub_100007000(v48 + v49);
    sub_100005A38(&v163, v48 + v49);
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v33;
    v50 = v46[16];
    sub_100007000(v48 + v50);
    sub_100005A38(&v163, v48 + v50);
    PageGrid.componentMeasuringSize(spanning:)();
    v51 = sub_100079F24();
    swift_getObjectType();
    v52 = sub_100430530(&v167, v48, v51);
    swift_unknownObjectRelease();
    if (v52)
    {
      PageGrid.componentMeasuringSize(spanning:)();
      sub_100079F24();
      swift_unknownObjectRelease();
      sub_10049700C(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v53 = v145;
      v19[4] = a6;
      v19[5] = v53;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v32;
      v54 = v46[15];
      sub_100007000(v19 + v54);
      sub_100005A38(&v163, v19 + v54);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v33;
      v55 = v46[16];
      sub_100007000(v19 + v55);
      sub_100005A38(&v163, v19 + v55);
      if (qword_10096D7F8 != -1)
      {
        swift_once();
      }

      v56 = sub_10002849C(&qword_100979010);
      v57 = sub_1000056A8(v56, qword_1009CF838);
      v58 = *(*(v56 - 8) + 24);
      v58(v19 + v46[7], v57, v56);
      if (qword_10096D7E8 != -1)
      {
        swift_once();
      }

      v59 = sub_1000056A8(v56, qword_1009CF808);
      v58(v19 + v46[6], v59, v56);
      if (qword_10096D810 != -1)
      {
        swift_once();
      }

      v60 = sub_1000056A8(v56, qword_1009CF880);
      v58(v19 + v46[8], v60, v56);
      if (qword_10096D7B8 != -1)
      {
        swift_once();
      }

      v61 = sub_10002849C(&unk_100980420);
      v62 = sub_1000056A8(v61, qword_1009CF778);
      (*(*(v61 - 8) + 24))(v19 + v46[13], v62, v61);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = 0x401C000000000000;
      v63 = v153;
      sub_100496FAC(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v64 = v46[9];
      sub_100007000(v19 + v64);
      sub_100005A38(&v163, v19 + v64);
      sub_100496F00(v19, v63);
      sub_10002A400(&v167, v168);
      if (qword_10096D710 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v34, qword_1009CF560);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v166 = v160;
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      dispatch thunk of LayoutTextView.font.setter();
    }

    if (qword_10096D720 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v34, qword_1009CF590);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v166 = v160;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v65 = v163;
    ProductTopLockup.developerTagline.getter();
    v66 = qword_10096D888;
    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v134, qword_1009CF9E8);
    swift_getKeyPath();
    v135 = v45;
    ItemLayoutContext.subscript.getter();

    v166 = v163;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v68 = v133;
    v164 = v133;
    v165 = v132;
    v69 = sub_1000056E0(&v163);
    v130(v69, v131, v68);
    isFeatureEnabled(_:)();
    sub_100007000(&v163);
    v70 = v150;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v128(v70, v151);
    v71 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v72 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v73 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v74 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v146 = LayoutViewPlaceholder.init(representing:)();
    v75 = sub_10032FEB0(0xD000000000000013, 0x80000001007FAB40, 0);
    [v75 size];

    swift_allocObject();
    v122 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v121 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v119 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v120 = LayoutViewPlaceholder.init(representing:)();
    ProductTopLockup.expandedOfferTitles.getter();
    v123 = v67;
    v127 = v72;
    v126 = v73;
    if (v77 == 1 || (v78 = v76, , !v78))
    {
      v79 = v74;
      v162 = 0;
      v161 = 0u;
      v160 = 0u;
      v85 = v153;
    }

    else
    {
      v79 = v74;
      sub_1000367E8();
      if (qword_10096DED8 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for FontUseCase();
      sub_1000056A8(v80, qword_1009D0C08);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v81 = v160;
      static UIFont.preferredFont(forUseWith:compatibleWith:)();

      if (qword_10096D8A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v134, qword_1009CFA30);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v159 = v160;
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      v82 = v133;
      *(&v161 + 1) = v133;
      v162 = v132;
      v83 = sub_1000056E0(&v160);
      v130(v83, v131, v82);
      isFeatureEnabled(_:)();
      sub_100007000(&v160);
      v84 = v150;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v128(v84, v151);
      v85 = v153;
      v72 = v127;
      v73 = v126;
    }

    v91 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v92 = v147;
    v147[3] = v91;
    v92[4] = sub_100496F64(&qword_100987128, type metadata accessor for ProductLockupInlineUberLayout);
    v93 = sub_1000056E0(v92);
    sub_10049700C(v85, v93, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v94 = (v93 + v91[5]);
    v94[3] = v71;
    v94[4] = &protocol witness table for LayoutViewPlaceholder;
    *v94 = v146;
    v95 = (v93 + v91[6]);
    v95[3] = v71;
    v95[4] = &protocol witness table for LayoutViewPlaceholder;
    *v95 = v73;
    v96 = (v93 + v91[7]);
    v96[3] = v71;
    v96[4] = &protocol witness table for LayoutViewPlaceholder;
    *v96 = v79;
    v97 = (v93 + v91[10]);
    v97[3] = v71;
    v97[4] = &protocol witness table for LayoutViewPlaceholder;
    *v97 = v72;
    swift_allocObject();

    v152 = v79;

    v98 = LayoutViewPlaceholder.init(representing:)();
    v99 = (v93 + v91[8]);
    v99[3] = v71;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v98;
    sub_10002C0AC(&v167, v93 + v91[9]);
    sub_10002C0AC(&v163, v93 + v91[11]);
    v100 = v93 + v91[12];
    *(v100 + 4) = 0;
    *v100 = 0u;
    *(v100 + 1) = 0u;
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v101 = v148;
    v102 = sub_1000056A8(v148, qword_1009D32F8);
    v103 = v137;
    v104 = v136;
    (*(v137 + 16))(v136, v102, v101);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v105 = v138;
    v106 = v143;
    (*(v138 + 104))(v140, enum case for OfferButtonSubtitlePosition.below(_:), v143);
    (*(v105 + 56))(v144, 1, 1, v106);
    sub_100496F64(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v107 = v139;
    AccessibilityConditional.init(value:axValue:)();
    OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
    swift_unknownObjectRelease();
    (*(v141 + 8))(v107, v142);
    (*(v103 + 8))(v104, v148);
    swift_allocObject();
    v108 = LayoutViewPlaceholder.init(representing:)();
    v109 = (v93 + v91[13]);
    v109[3] = v71;
    v109[4] = &protocol witness table for LayoutViewPlaceholder;
    *v109 = v108;
    sub_100031660(&v160, v93 + v91[14], &unk_10097E890);
    v110 = v93 + v91[15];
    *(v110 + 4) = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    v111 = (v93 + v91[16]);
    v111[3] = v71;
    v111[4] = &protocol witness table for LayoutViewPlaceholder;
    *v111 = v122;
    v112 = (v93 + v91[17]);
    v112[3] = v71;
    v112[4] = &protocol witness table for LayoutViewPlaceholder;
    *v112 = v121;
    v113 = (v93 + v91[18]);
    v113[3] = v71;
    v113[4] = &protocol witness table for LayoutViewPlaceholder;
    *v113 = v119;
    v114 = (v93 + v91[19]);
    v114[3] = v71;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;

    *v114 = v120;
    sub_10002B894(&v160, &unk_10097E890);
    sub_100007000(&v163);
    sub_100496FAC(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v125 + 8))(v154, v149);
    return sub_100007000(&v167);
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v86 = v167;
    v87 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v87)
    {
      v88 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v89 = v147;
      v147[3] = v88;
      v89[4] = sub_100496F64(&qword_100987120, type metadata accessor for ProductLockupAccessibilityLayout);
      v90 = sub_1000056E0(v89);
      sub_10049288C(v29, a3, v90, a6, a7, v32, v33);
    }

    else
    {
      v116 = type metadata accessor for ProductLockupLayout(0);
      v117 = v147;
      v147[3] = v116;
      v117[4] = sub_100496F64(&qword_100987118, type metadata accessor for ProductLockupLayout);
      v118 = sub_1000056E0(v117);
      sub_1004942C4(v29, a3, v118, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v154, v149);
  }
}

uint64_t sub_100492710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a3@<X8>)
{
  v6 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = ProductTopLockup.uber.getter();
  if (v11)
  {
  }

  v12 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
  v13 = sub_1004965F8(v8, v11 != 0, v12 & 1, a2);
  result = sub_10002B894(v8, &qword_100973AC0);
  *a3 = v13;
  return result;
}

uint64_t sub_10049288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = type metadata accessor for OfferButtonSubtitlePosition();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009701A0);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = type metadata accessor for OfferButtonMetrics();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for OfferTitleType();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10002849C(&unk_100973B20);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = type metadata accessor for LabelPlaceholderCompatibility();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FontUseCase();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000367E8();
  if (qword_10096D748 != -1)
  {
    swift_once();
  }

  v29 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v29, qword_1009CF5E8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v182[0] = v183[0];
  v146 = v29;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v30 = v183[0];
  v157 = v28;
  v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  ProductTopLockup.title.getter();
  v33 = qword_10096D878;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v35, qword_1009CF9B8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v181[0] = v183[0];
  v156 = v35;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v36 = type metadata accessor for Feature();
  v183[3] = v36;
  *&v162 = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature);
  v183[4] = v162;
  v37 = sub_1000056E0(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = isFeatureEnabled(_:)();
  sub_100007000(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_10096D758 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v146, qword_1009CF618);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v181[0] = v182[0];
  v42 = v147;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v43 = v182[0];
  v44 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v145(v42, v158);
  v130 = ProductTopLockup.developerTagline.getter();
  v45 = qword_10096D888;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_1000056A8(v156, qword_1009CF9E8);
  swift_getKeyPath();
  v127 = a2;
  ItemLayoutContext.subscript.getter();

  *&v178 = v182[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_1000056E0(v182);
  v160(v48, v161, v47);
  isFeatureEnabled(_:)();
  sub_100007000(v182);
  v49 = v163;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = ProductTopLockup.developerName.getter();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  ItemLayoutContext.subscript.getter();

  v174 = v181[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_1000056E0(v181);
  v160(v54, v161, v47);
  v55 = isFeatureEnabled(_:)();
  sub_100007000(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  ProductTopLockup.tertiaryTitle.getter();
  if (v58)
  {
    if (qword_10096D768 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v146, qword_1009CF648);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v174 = v178;
    v59 = v147;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v60 = v178;
    v61 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v145(v59, v158);
    v62 = qword_10096D890;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v156, qword_1009CFA00);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v171 = v178;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_1000056E0(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = isFeatureEnabled(_:)();
    sub_100007000(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_1000D71CC();
  ItemLayoutContext.typedState<A>(as:)();
  swift_getKeyPath();
  StateLens<A>.subscript.getter();

  v68 = v174;
  swift_getKeyPath();
  StateLens<A>.subscript.getter();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = ProductTopLockup.offerSubtitlesOverride.getter();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!ProductTopLockup.offerDisplayProperties.getter())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = OfferDisplayProperties.subtitles.getter();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_1003D7650(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_10096E110 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v70, qword_1009D12B0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v81 = v174;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096D8A8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v156, qword_1009CFA48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v168 = v174;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_1000056E0(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = isFeatureEnabled(_:)();
  sub_100007000(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v154(v84, v57);
  sub_10002A400(&v174, v176);
  if (v69)
  {
  }

  dispatch thunk of LayoutView.isHidden.setter();
  ProductTopLockup.expandedOfferTitles.getter();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_10096DEC8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v158, qword_1009D0BD8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v87 = v171;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D898 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v156, qword_1009CFA18);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v167 = v171;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_1000056E0(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = isFeatureEnabled(_:)();
    sub_100007000(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v154(v90, v57);
  }

  ProductTopLockup.expandedOfferTitles.getter();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_10096DED0 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_1000056A8(v158, qword_1009D0BF0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v95 = v168;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D8A0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v156, qword_1009CFA30);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v166 = v168;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_1000056E0(&v168);
    v160(v97, v161, v96);
    v98 = isFeatureEnabled(_:)();
    sub_100007000(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v154(v99, v94);
  }

  v100 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v165 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v164 = LayoutViewPlaceholder.init(representing:)();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_10096D6E0 != -1)
  {
    swift_once();
  }

  v102 = sub_1000056A8(v131, qword_1009CF500);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_100496F64(&qword_1009856D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  Copyable.copyWithOverrides(in:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v104 = v167;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v105 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v105 = qword_100991028;
  }

  v106 = v137;
  v107 = sub_1000056A8(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_10049700C(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = LayoutViewPlaceholder.init(representing:)();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_10002C0AC(v183, v111 + 40);
  sub_10002C0AC(v181, v111 + 80);
  sub_10002C0AC(v182, v111 + 120);
  sub_100031660(&v178, v111 + 160, &unk_10097E890);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_100496F64(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v115 = v135;
  AccessibilityConditional.init(value:axValue:)();
  v116 = v151;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = LayoutViewPlaceholder.init(representing:)();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_10002A400(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_1000056E0((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_100031660(&v171, v111 + 320, &unk_10097E890);
  sub_100031660(&v168, v111 + 360, &unk_10097E890);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_100496FAC(v153, v163);
  sub_10002B894(&v168, &unk_10097E890);
  sub_10002B894(&v171, &unk_10097E890);
  (*(v141 + 8))(v149, v150);
  sub_10002B894(&v178, &unk_10097E890);
  sub_100007000(v181);
  sub_100007000(v182);
  sub_100007000(v183);
  return sub_100007000(&v174);
}

uint64_t sub_1004942C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = type metadata accessor for OfferButtonSubtitlePosition();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009701A0);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = type metadata accessor for OfferButtonMetrics();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = type metadata accessor for OfferTitleType();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LabelPlaceholderCompatibility();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100987150);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v35 = v179[0];
  sub_10030AEE4(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_100496F64(&qword_1009856E8, type metadata accessor for ProductLockupLayout.Metrics);
  Copyable.copyWithOverrides(in:)();

  sub_100496FAC(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10002B894(v27, &unk_100987150);
  v150 = ProductTopLockup.title.getter();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  ItemLayoutContext.subscript.getter();

  v177[0] = v179[0];
  v39 = sub_10002849C(&unk_100980410);
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v174 = v179[0];
  v40 = sub_10002849C(&unk_100973B30);
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v41 = type metadata accessor for Feature();
  v179[3] = v41;
  v147 = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature);
  v179[4] = v147;
  v42 = sub_1000056E0(v179);
  v43 = *(v41 - 8);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  isFeatureEnabled(_:)();
  sub_100007000(v179);
  v45 = v149;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  ItemLayoutContext.subscript.getter();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = ProductTopLockup.developerTagline.getter();
  v127 = v48;
  v49 = qword_10096D888;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_1000056A8(v40, qword_1009CF9E8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v174 = v178[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_1000056E0(v178);
  (v151)(v54, v152, v52);
  isFeatureEnabled(_:)();
  sub_100007000(v178);
  v55 = v149;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v150(v55, v153);
  v127 = ProductTopLockup.developerName.getter();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  ItemLayoutContext.subscript.getter();

  v171[0] = v177[0];
  v144 = v51;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_1000056E0(v177);
  (v151)(v58, v152, v52);
  isFeatureEnabled(_:)();
  sub_100007000(v177);
  v127 = v57;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v59 = v153;
  v150(v55, v153);
  ProductTopLockup.tertiaryTitle.getter();
  if (v60)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v167 = v171[0];
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v61 = qword_10096D890;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v144, qword_1009CFA00);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v167 = v174;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_1000056E0(&v174);
    (v151)(v64, v152, v63);
    isFeatureEnabled(_:)();
    sub_100007000(&v174);
    v65 = v149;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = ProductTopLockup.offerSubtitlesOverride.getter();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = ProductTopLockup.offerDisplayProperties.getter();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = OfferDisplayProperties.subtitles.getter();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_1003D7650(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_10096D730;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v140, qword_1009CF5C0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v164 = v171[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  if (qword_10096D8A8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v71, qword_1009CFA48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v170 = v171[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_1000056E0(v171);
  (v151)(v80, v152, v79);
  isFeatureEnabled(_:)();
  sub_100007000(v171);
  v81 = v149;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v150(v81, v59);
  sub_10002A400(v171, v172);
  dispatch thunk of LayoutView.isHidden.setter();
  ProductTopLockup.expandedOfferTitles.getter();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_1000367E8();
    if (qword_10096DEC8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for FontUseCase();
    sub_1000056A8(v84, qword_1009D0BD8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v85 = v167;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D898 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v144, qword_1009CFA18);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v170 = v167;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_1000056E0(&v167);
    (v151)(v87, v152, v86);
    isFeatureEnabled(_:)();
    sub_100007000(&v167);
    v88 = v149;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v150(v88, v153);
  }

  ProductTopLockup.expandedOfferTitles.getter();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_1000367E8();
    if (qword_10096DED0 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for FontUseCase();
    sub_1000056A8(v92, qword_1009D0BF0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v93 = v164;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D8A0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v144, qword_1009CFA30);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v163 = v164;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_1000056E0(&v164);
    (v151)(v95, v152, v94);
    isFeatureEnabled(_:)();
    sub_100007000(&v164);
    v96 = v149;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v150(v96, v153);
  }

  v97 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v153 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v152 = LayoutViewPlaceholder.init(representing:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v98 = v170;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v99 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v99 = qword_100991028;
  }

  v100 = v143;
  v101 = sub_1000056A8(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_10049700C(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = LayoutViewPlaceholder.init(representing:)();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_10002C0AC(v179, v104 + v106[6]);
  sub_10002C0AC(v177, v104 + v106[7]);
  sub_10002C0AC(v178, v104 + v106[8]);
  sub_100031660(&v174, v104 + v106[9], &unk_10097E890);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_100496F64(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v111 = v130;
  AccessibilityConditional.init(value:axValue:)();
  v112 = v142;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = LayoutViewPlaceholder.init(representing:)();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_10002A400(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 8);
  v119 = sub_1000056E0(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_100031660(&v167, v104 + v106[13], &unk_10097E890);
  sub_100031660(&v164, v104 + v106[14], &unk_10097E890);
  LOBYTE(v115) = ProductTopLockup.hasExpandedOffer.getter();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10002B894(&v164, &unk_10097E890);
  sub_10002B894(&v167, &unk_10097E890);
  sub_10002B894(&v174, &unk_10097E890);
  sub_100007000(v177);
  sub_100007000(v178);
  sub_100007000(v179);
  sub_100496FAC(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_100007000(v171);
}

double sub_100495A34()
{
  v0 = sub_10002849C(&unk_100987160);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for ProductPageIconDimension();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductTopLockup();
  sub_100496F64(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v33 = v38;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (ProductTopLockup.wantsInlineUberPresentationStyle.getter())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = UITraitCollection.isSizeClassRegular.getter();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((UITraitCollection.isSizeClassRegular.getter() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  ProductTopLockup.iconStyle.getter();
  ProductPageIconDimension.iconSize(for:)();
  v28 = v31;

  sub_10002B894(v26, &unk_100987160);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_100495EA8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v4 = ProductTopLockup.secondaryBanner.getter();
  if (v4)
  {
    v5 = v4;
    if ((ProductTopLockup.wantsInlineUberPresentationStyle.getter() & 1) == 0)
    {
      v24 = v0;
      if (qword_10096D798 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CF708, qword_1009CF720);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v6 = *&v25[0];
      AnyDimension.value(with:)();

      v0 = v24;
    }

    v7 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
    v8 = Banner.leadingArtwork.getter();
    if (v8)
    {
    }

    Banner.buttonActions.getter();
    sub_10002849C(&qword_10096F9A8);
    v9 = Array.isNotEmpty.getter();

    if (v7)
    {
      _Q3 = xmmword_1007CFA70;
      v11 = 17.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v12 = 22.0;
      if (v8)
      {
        v12 = 15.0;
      }

      if (v9)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = v12;
      }

      v11 = 9.0;
      if (v9)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v15;
    }

    v25[0] = _Q3;
    v25[1] = _Q3;
    v26 = v11;
    v27 = v12;
    v28 = v11;
    v29 = v13;
    v30 = xmmword_1007B0C20;
    v31 = xmmword_1007B0C30;
    v20 = sub_100079F24();
    PageGrid.componentMeasuringSize(spanning:)();
    sub_10063EAAC(v5, v25, v20);
    v14 = v21;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

double sub_100496188(uint64_t a1, double a2)
{
  v4 = type metadata accessor for PageGrid();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = type metadata accessor for Uber.Style();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10002849C(&unk_100973B20);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  ItemLayoutContext.subscript.getter();

  v18 = v43;
  v19 = UITraitCollection.isSizeClassCompact.getter();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1000D71CC();
  ItemLayoutContext.typedState<A>(as:)();
  v41 = a1;
  Uber.style.getter();
  swift_getKeyPath();
  v38 = v14;
  StateLens<A>.subscript.getter();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v24 = v43;
  v25 = UITraitCollection.isSizeClassCompact.getter();

  if (v25)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v28 = v43;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_1001158BC(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

double sub_1004965F8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v61 = a4;
  v56 = a2;
  v6 = type metadata accessor for LabelPlaceholderCompatibility();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v57 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageGrid();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v11 - 8);
  v13 = (v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  sub_100031660(a1, v55 - v15, &qword_100973AC0);
  v17 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_100031660(v16, v13, &qword_100973AC0);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10002B894(v16, &qword_100973AC0);
      return 0.0;
    }

    v23 = a3;
    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v22 = *&v63[0];
  v23 = a3;
  if (ASKBagContract.enableNewATBBannerUI.getter())
  {

LABEL_8:

    sub_10002B894(v16, &qword_100973AC0);
    if ((v23 & 1) == 0)
    {
      if (qword_10096D790 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CF6E0, qword_1009CF6F8);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v24 = *&v63[0];
      AnyDimension.value(with:)();
    }

    v25 = Banner.leadingArtwork.getter();
    if (v25)
    {
    }

    Banner.buttonActions.getter();
    sub_10002849C(&qword_10096F9A8);
    v26 = Array.isNotEmpty.getter();

    if (v23)
    {
      _Q3 = xmmword_1007CFA70;
      v28 = 17.0;
      v29 = 0.0;
      v30 = 0.0;
    }

    else
    {
      v29 = 22.0;
      if (v25)
      {
        v29 = 15.0;
      }

      if (v26)
      {
        v30 = 15.0;
      }

      else
      {
        v30 = v29;
      }

      v28 = 9.0;
      if (v26)
      {
        v47 = 12.0;
      }

      else
      {
        v47 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v47;
    }

    v63[0] = _Q3;
    v63[1] = _Q3;
    v64 = v28;
    v65 = v29;
    v66 = v28;
    v67 = v30;
    v68 = xmmword_1007B0C20;
    v69 = xmmword_1007B0C30;
    v52 = sub_100079F24();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v60 + 8))(v10, v8);
    sub_10063EAAC(v21, v63, v52);
    v19 = v53;
    swift_unknownObjectRelease();

    return v19;
  }

  v55[2] = v22;
  v55[0] = Banner.message.getter();
  v55[1] = v31;
  v32 = a3 | v56;
  v33 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v35 = v34;
  (*(v60 + 8))(v10, v8);
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v76);
  if (v32)
  {
    sub_10002B894(v77, &qword_1009799E0);
    memset(v77, 0, sizeof(v77));
    v78 = 0;
  }

  v61 = v21;
  sub_1000367E8();
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for FontUseCase();
  sub_1000056A8(v36, qword_1009D0A40);
  swift_getObjectType();
  v37 = [v33 traitCollection];
  v38 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_1002020EC(v76, v63);
  v39 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v40 = LayoutViewPlaceholder.init(measureWith:)();
  v71 = v39;
  v72 = &protocol witness table for LayoutViewPlaceholder;
  v70 = v40;
  v41 = type metadata accessor for Feature();
  v62[3] = v41;
  v62[4] = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature);
  v42 = sub_1000056E0(v62);
  (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
  v43 = v38;
  isFeatureEnabled(_:)();
  sub_100007000(v62);

  v44 = v57;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v58 + 8))(v44, v59);
  swift_allocObject();
  v45 = LayoutViewPlaceholder.init(measureWith:)();
  v74 = v39;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v45;
  sub_1002F83D4(v35, v33, v63);
  v19 = v46;

  swift_unknownObjectRelease();

  sub_100202148(v63);
  sub_10020219C(v76);
  sub_10002B894(v16, &qword_100973AC0);
  return v19;
}

uint64_t sub_100496F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100496F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100496FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049700C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100497074(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton);
  sub_10006C234(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10002A400(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100007000(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t sub_1004971CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton);
  sub_10006C234(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10002A400(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_100007000(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 removeTarget:v9 action:0 forControlEvents:64];
  return swift_unknownObjectRelease();
}

id sub_100497318(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView];
  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [objc_allocWithZone(type metadata accessor for InstallProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *&v2[v4];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v4];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v4] = v10;
  v13 = v10;

  if (v13)
  {
    [v2 addSubview:v13];
  }

  [v2 setNeedsLayout];

  v14 = *&v2[v4];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler];
    v16 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler + 8];
    v17 = &v14[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    *v17 = v15;
    v17[1] = v16;
    v19 = v14;
    sub_10000827C(v15);
    sub_10001F63C(v18);

    v20 = *&v2[v4];
    if (v20)
    {
      [v20 setClipsToBounds:1];
      v5 = *&v2[v4];
      if (v5)
      {
LABEL_2:
        v6 = v5;
        dispatch thunk of RoundedCornerView.cornerRadius.getter();
        [v6 _setCornerRadius:?];

        v7 = *&v2[v4];
        if (v7)
        {
          v8 = *&v7[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress];
          *&v7[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress] = a1;
          v9 = v7;
          sub_1004B18E8(v8);
        }
      }
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1004974E4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_10001F63C(v4);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView);
  if (v5)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = &v5[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    v9 = *&v5[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    *v8 = v6;
    v8[1] = v7;
    v10 = v5;
    sub_10000827C(v6);
    sub_10001F63C(v9);
  }
}

uint64_t sub_1004975A4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v1 - 8);
  v47 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v37[-v4];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = type metadata accessor for FontSource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OfferButtonMetrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v37[-v18];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v20 = v10;
  v48 = v5;
  v21 = sub_1000056A8(v13, v19);
  (*(v14 + 16))(v16, v21, v13);
  v40 = v14;
  v41 = v13;
  (*(v14 + 32))(v46, v16, v13);
  v68[13] = &type metadata for Double;
  v68[14] = &protocol witness table for Double;
  v68[9] = &protocol witness table for Double;
  v68[10] = 0x4024000000000000;
  v68[8] = &type metadata for Double;
  v68[5] = 0x4000000000000000;
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1220);
  v39 = *(v22 - 8);
  v45 = *(v39 + 16);
  v45(v12, v23, v22);
  v24 = *(v10 + 104);
  v25 = enum case for FontSource.useCase(_:);
  v50 = v20 + 104;
  v54 = v24;
  v24(v12);
  v53 = type metadata accessor for StaticDimension();
  v68[3] = v53;
  v68[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v9;
  v67 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v65);
  v51 = *(v20 + 16);
  v52 = v20 + 16;
  v51(v26, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v49 = *(v20 + 8);
  v44 = v20 + 8;
  v49(v12, v9);
  v65[0] = 0x405C000000000000;
  v62[0] = 0x4044000000000000;
  sub_10002849C(&qword_100973F50);
  v42 = v8;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0E8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v22, qword_1009D1238);
  v45(v12, v27, v22);
  v54(v12, v25, v9);
  v66 = v53;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v9;
  v64 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v62);
  v51(v28, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v49(v12, v9);
  v62[0] = 0x405C000000000000;
  v59[0] = 0x4044000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v22, qword_1009D11F0);
  v45(v12, v29, v22);
  v54(v12, v25, v9);
  v63 = v53;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v9;
  v61 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v59);
  v51(v30, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v49(v12, v9);
  v59[0] = 0x4052000000000000;
  v56[0] = 0x4034000000000000;
  v38 = v25;
  Conditional<>.init(regularValue:compactValue:)();
  *v12 = UIFontTextStyleBody;
  *(v12 + 2) = 0;
  LODWORD(v45) = enum case for FontUseCase.preferredFont(_:);
  v39 = *(v39 + 104);
  (v39)(v12);
  v54(v12, v25, v9);
  v60 = v53;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v9;
  v58 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v56);
  v51(v31, v12, v9);
  v32 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v33 = v49;
  v49(v12, v9);
  v34 = v46;
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  *v12 = v32;
  *(v12 + 2) = 0;
  (v39)(v12, v45, v22);
  v54(v12, v38, v9);
  v57 = v53;
  v58 = &protocol witness table for StaticDimension;
  sub_1000056E0(v56);
  v55[3] = v9;
  v55[4] = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v55);
  v51(v35, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v33(v12, v9);
  InstallPageInstallingViewLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:offerButtonSize:bottomSpace:)();
  return (*(v40 + 8))(v34, v41);
}