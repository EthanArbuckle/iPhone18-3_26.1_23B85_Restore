uint64_t sub_1003AD520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003AD568()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for PageGrid.HorizontalMargins();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10002849C(&qword_100970EF0);
  type metadata accessor for PageGrid.Breakpoint();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B10D0;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100982EB8 = v6;
  return result;
}

void sub_1003AD86C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "prepareForReuse", v5);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
  sub_100146AB4();
  v9 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
  v10 = type metadata accessor for MediaView();
  v26.receiver = v9;
  v26.super_class = v10;
  objc_msgSendSuper2(&v26, "setBackgroundColor:", 0);
  v11 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  [*(*&v9[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:0];
  v12 = *&v9[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v12)
  {
    [v12 setBackgroundColor:0];
  }

  (*(v4 + 104))(v7, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v3);
  v13 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  (*(v4 + 24))(&v1[v13], v7, v3);
  swift_endAccess();
  [v1 setNeedsLayout];
  (*(v4 + 8))(v7, v3);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
  [v14 setText:0];
  v15 = (v8 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  v16 = *(v8 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_10001F63C(v16);
  v17 = *&v9[v11];
  v18 = *(v17 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v17 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v18);

  if (*(*&v9[v11] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      [v19 setUserInteractionEnabled:0];
    }
  }

  v20 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
  ArtworkView.image.setter();

  v21 = *&v9[v11];
  v22 = *(v21 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v21 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v22);

  sub_10047B37C();
  v23 = v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
  v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  if (v23 != 1)
  {
    [v14 removeFromSuperview];
  }

  v24 = v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  if ((v24 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
  }
}

uint64_t sub_1003ADB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v63 = a2;
  v61 = type metadata accessor for LargeHeroBreakoutLayout.DetailsVerticalPostion();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FontSource();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v47 - v6;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = ShelfLayoutContext.traitCollection.getter();
  v21 = UITraitCollection.isSizeClassCompact.getter();

  v55 = v15;
  v22 = *(v15 + 16);
  v54 = v19;
  v23 = v56;
  v56 = v14;
  v49 = v22;
  v22(v19, v23, v14);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v13, v7);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v28 = v27;
  v26(v10, v7);
  if ((v21 & 1) == 0)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x4083100000000000;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.columnWidth.getter();
    v35 = v34;
    v26(v13, v7);
    v33 = v35 - v25 - v28;
    v31 = v48;
    *(v48 + 3) = &type metadata for CGFloat;
    *(v31 + 4) = &protocol witness table for CGFloat;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    v30 = v59;
    goto LABEL_5;
  }

  Main = JUScreenClassGetMain();
  v30 = v59;
  v31 = v48;
  if (Main == 1)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x407E000000000000;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v33 = 1.0;
LABEL_5:
    v36 = v58;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v67 = &type metadata for Double;
  v68 = &protocol witness table for Double;
  v36 = v58;
  if (HasRoundedCorners)
  {
    v38 = 0x4083100000000000;
  }

  else
  {
    v38 = 0x4081800000000000;
  }

  v66 = v38;
  v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v33 = 1.0;
LABEL_10:
  *v31 = v33;
  (*(v36 + 104))(v31, *v32, v30);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for FontUseCase();
  v40 = sub_1000056A8(v39, qword_1009D1820);
  v41 = v52;
  (*(*(v39 - 8) + 16))(v52, v40, v39);
  (*(v50 + 104))(v41, enum case for FontSource.useCase(_:), v51);
  v65[3] = type metadata accessor for CappedSizeStaticDimension();
  v65[4] = sub_1003B0EA4(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  sub_1000056E0(v65);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  if (qword_10096DB20 != -1)
  {
    swift_once();
  }

  v43 = sub_10002849C(&unk_100982F30);
  sub_1000056A8(v43, qword_1009CFFC8);
  v64[0] = ShelfLayoutContext.traitEnvironment.getter();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v44 = v54;
  v45 = v56;
  v49(v53, v54, v56);
  (*(v36 + 16))(v57, v31, v30);
  (*(v60 + 104))(v62, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v61);
  sub_10002C0AC(&v66, v64);
  LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)();
  (*(v55 + 8))(v44, v45);
  (*(v36 + 8))(v31, v30);
  return sub_100007000(&v66);
}

uint64_t sub_1003AE3AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v48 = a3;
  v46 = type metadata accessor for LargeHeroBreakoutLayout.DetailsVerticalPostion();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FontSource();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  swift_getObjectType();
  v18 = [a2 traitCollection];
  v19 = UITraitCollection.isSizeClassCompact.getter();

  v41 = v13;
  v20 = *(v13 + 16);
  v21 = v42;
  v42 = v12;
  v22 = v12;
  v23 = v20;
  v20(v17, v21, v22);
  [a2 pageMarginInsets];
  [a2 pageMarginInsets];
  if ((v19 & 1) == 0)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x4083100000000000;
    PageTraitEnvironment.pageColumnWidth.getter();
    v27 = v26;
    PageTraitEnvironment.pageColumnMargin.getter();
    v25 = v27 - v28;
    *(v11 + 3) = &type metadata for CGFloat;
    *(v11 + 4) = &protocol witness table for CGFloat;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    goto LABEL_5;
  }

  if (JUScreenClassGetMain() == 1)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x407E000000000000;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v25 = 1.0;
LABEL_5:
    v29 = v44;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v52 = &type metadata for Double;
  v53 = &protocol witness table for Double;
  v29 = v44;
  if (HasRoundedCorners)
  {
    v31 = 0x4083100000000000;
  }

  else
  {
    v31 = 0x4081800000000000;
  }

  v51[0] = v31;
  v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v25 = 1.0;
LABEL_10:
  *v11 = v25;
  (*(v7 + 104))(v11, *v24, v29);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v32, qword_1009D1820);
  (*(*(v32 - 8) + 16))(v6, v33, v32);
  (*(v38 + 104))(v6, enum case for FontSource.useCase(_:), v39);
  v50[3] = type metadata accessor for CappedSizeStaticDimension();
  v50[4] = sub_1003B0EA4(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  sub_1000056E0(v50);
  v34 = UIContentSizeCategoryExtraExtraExtraLarge;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  if (qword_10096DB20 != -1)
  {
    swift_once();
  }

  v35 = sub_10002849C(&unk_100982F30);
  sub_1000056A8(v35, qword_1009CFFC8);
  v49 = a2;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v36 = v42;
  v23(v40, v17, v42);
  (*(v7 + 16))(v43, v11, v29);
  (*(v45 + 104))(v47, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v46);
  sub_10002C0AC(v51, &v49);
  LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)();
  (*(v41 + 8))(v17, v36);
  (*(v7 + 8))(v11, v29);
  return sub_100007000(v51);
}

void sub_1003AEAA0()
{
  v1 = sub_10002849C(&qword_100975EC8);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = v21 - v3;
  v5 = [v0 traitCollection];
  v6 = [v5 accessibilityContrast];

  v7 = v6 == 1;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v9 = *&v0[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (qword_10096DB18 != -1)
  {
    v20 = IsReduceTransparencyEnabled;
    swift_once();
    IsReduceTransparencyEnabled = v20;
  }

  v10 = v7 || IsReduceTransparencyEnabled;
  v11 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v11, qword_100982EC0);
  v21[3] = v0;
  v12 = v0;
  Conditional.evaluate(with:)();

  [v9 setTextAlignment:v21[0]];
  v13 = *&v12[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
  v14 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1003B0E34(v13 + v14, v4);
  v15 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_10002B894(v4, &qword_100975EC8);
    v17 = 0;
  }

  else
  {
    v17 = sub_1001F0C74(v10);
    (*(v16 + 8))(v4, v15);
  }

  [v9 setTextColor:v17];

  v18 = [v9 layer];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String._bridgeToObjectiveC()();

  [v18 setCompositingFilter:v19];
}

void sub_1003AED70(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a1)
  {
    sub_1003B0EA4(&qword_100973190, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_100972EB0);
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v16 = a1;
  sub_10047C6C8(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

uint64_t sub_1003AEF14()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_100982EC0);
  sub_1000056A8(v0, qword_100982EC0);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1003AEFB0()
{
  v0 = sub_10002849C(&unk_100982F30);
  sub_100005644(v0, qword_1009CFFC8);
  sub_1000056A8(v0, qword_1009CFFC8);
  sub_10002849C(&qword_100973F50);
  sub_10002849C(&qword_1009799E0);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_1003AF074(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v96 = type metadata accessor for AutomationSemantics();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v91 = &v86 - v11;
  v100 = type metadata accessor for DirectionalTextAlignment();
  v98 = *(v100 - 1);
  __chkstk_darwin(v100);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = &v86 - v14;
  v15 = type metadata accessor for FontUseCase();
  v103 = *(v15 - 8);
  __chkstk_darwin(v15);
  v97 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v86 - v18;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_1009732B0);
  __chkstk_darwin(v22 - 8);
  v24 = &v86 - v23;
  v25 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v26 = type metadata accessor for ItemLayoutContext();
  v27 = *(*(v26 - 8) + 56);
  v101 = v4;
  v27(&v4[v25], 1, 1, v26);
  v28 = type metadata accessor for MediaView();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v29[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v30 = type metadata accessor for UberContentContainer();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v32 = &v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v110.receiver = v31;
  v110.super_class = v30;
  v34 = objc_msgSendSuper2(&v110, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = v34;
  if (*&v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v34 addSubview:?];
  }

  v36 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v35;
  v109.receiver = v29;
  v109.super_class = v28;
  v37 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v37 setClipsToBounds:1];
  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  v38 = v101;
  *&v101[v36] = v37;
  v39 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *&v38[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v40 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_10096CFF0 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v19, qword_1009CDE58);
  sub_1000C2608(v41, v21);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(value:)();
  v42 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v38[v40] = sub_100147904(v24);
  v43 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v44 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v45 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  (*(*(v45 - 8) + 104))(&v38[v43], v44, v45);
  *&v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits] = 0;
  v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  *&v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{a1, a2, a3, a4}];
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E2E8 != -1)
    {
      swift_once();
    }

    v46 = qword_1009D1838;
  }

  else
  {
    if (qword_10096E2E0 != -1)
    {
      swift_once();
    }

    v46 = qword_1009D1820;
  }

  v47 = v15;
  v48 = sub_1000056A8(v15, v46);
  v49 = v102;
  v50 = v103;
  v51 = *(v103 + 16);
  v51(v102, v48, v15);
  v52 = v97;
  v51(v97, v49, v47);
  v87 = UIContentSizeCategoryExtraExtraExtraLarge;
  v53 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v98 + 104);
  v54(v99, enum case for DirectionalTextAlignment.none(_:), v100);
  v89 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v89[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v55 = v91;
  v51(v91, v52, v47);
  v56 = v47;
  v88 = *(v50 + 56);
  v88(v55, 0, 1, v47);
  v57 = v92;
  v58 = v100;
  v54(v92, v53, v100);
  v59 = v87;
  v60 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v61 = v97;
  v51(v55, v97, v56);
  v90 = v56;
  v88(v55, 0, 1, v56);
  v62 = v60;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v62 setNumberOfLines:2];
  v63 = v98;
  v64 = v99;
  (*(v98 + 16))(v57, v99, v58);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v63 + 8))(v64, v58);
  v65 = *(v103 + 8);
  v103 += 8;
  v100 = v65;
  (v65)(v61, v56);
  v66 = v101;
  *&v101[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] = v62;
  v108.receiver = v66;
  v108.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  v68 = [v67 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v69 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel;
  [*&v67[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] setNumberOfLines:2];
  v70 = *&v67[v69];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v71 = *&v67[v69];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v72 = v71;
  v73 = v94;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v104, &unk_1009711D0);
  sub_10002B894(&v106, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v74 = *(v95 + 8);
  v75 = v96;
  v74(v73, v96);
  v76 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView;
  v77 = *&v67[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
  ArtworkView.frameUpdatesImageSize.setter();

  v78 = *&v67[v76];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v79 = v78;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v104, &unk_1009711D0);
  sub_10002B894(&v106, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v74(v73, v75);
  sub_100005744(0, &qword_100970180);
  v80 = static UIColor.placeholderBackground.getter();
  [v67 setBackgroundColor:v80];

  v81 = [v67 contentView];
  v82 = [v81 layer];

  [v82 setAllowsGroupBlending:0];
  v83 = [v67 contentView];
  [v83 addSubview:*&v67[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];

  v84 = [v67 contentView];
  [v84 addSubview:*&v67[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView]];

  sub_1003AEAA0();
  (v100)(v102, v90);
  return v67;
}

void (*sub_1003AFD58(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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
  return sub_1003AFDF4;
}

void sub_1003AFDF4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_1003B0EA4(&qword_100973190, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0);
        v8 = v4;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1003B0EA4(&qword_100973190, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0);
        v13 = v4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v31 = v3;
    sub_10047C6C8(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_1003B00F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LargeHeroBreakoutLayout();
  v13 = *(v29 - 8);
  *&v14 = __chkstk_darwin(v29).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  result = objc_msgSendSuper2(&v40, "layoutSubviews", v14);
  v18 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits];
  if (v18)
  {
    v28 = v3;
    v19 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v1[v19], v6);
    swift_unknownObjectRetain();
    sub_1003AE3AC(v9, v18, v12);
    (*(v7 + 8))(v9, v6);
    v20 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v38 = type metadata accessor for MediaView();
    v39 = &protocol witness table for UIView;
    v37 = v20;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
    v35 = type metadata accessor for DynamicTypeLabel();
    v36 = &protocol witness table for UILabel;
    v34 = v21;
    v22 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
    v32 = type metadata accessor for BreakoutDetailsView(0);
    v33 = &protocol witness table for UIView;
    v31 = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)();
    v26 = [v1 contentView];
    [v26 bounds];

    LargeHeroBreakoutLayout.placeChildren(relativeTo:in:)();
    (*(v30 + 8))(v5, v28);
    v27 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
    [v1 bounds];
    [v27 setFrame:?];
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v16, v29);
  }

  return result;
}

char *sub_1003B068C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY];
    result = *(*&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v5 = *&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
    *&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v4;
    if (v4 != v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeHeroBreakoutCollectionViewCell()
{
  result = qword_100982F08;
  if (!qword_100982F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B08F0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003B09E4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

uint64_t (*sub_1003B0A58(uint64_t **a1))()
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
  v2[4] = sub_1003AFD58(v2);
  return sub_1000B4CAC;
}

double sub_1003B0AC8()
{
  [v0 bounds];

  return CGRectGetMaxY(*&v1);
}

uint64_t sub_1003B0AFC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1003B0EA4(&qword_100982F40, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1003B0B70(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1003B0EA4(&qword_100982F40, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1003B0BFC(uint64_t *a1))()
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

  v3 = v2;
  *a1 = v2;
  sub_1003B0EA4(&qword_100982F40, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1003B0CB8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1003B0E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B0EA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003B0EEC()
{
  v1 = v0;
  v27 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009732B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v20 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_10096CFF0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v27, qword_1009CDE58);
  sub_1000C2608(v21, v3);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(value:)();
  v22 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v20) = sub_100147904(v6);
  v23 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v24 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v25 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  (*(*(v25 - 8) + 104))(v1 + v23, v24, v25);
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003B1300()
{
  result = qword_100974840;
  if (!qword_100974840)
  {
    type metadata accessor for TitledButtonStackCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974840);
  }

  return result;
}

double sub_1003B135C()
{
  v0 = sub_10002849C(&qword_100970F20);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v27 - v1;
  v2 = type metadata accessor for PageGrid();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentLayoutOptions();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(qword_10097DB40);
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_10002849C(&unk_1009731F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v12 + 8))(v14, v11);

  ItemLayoutContext.state.getter();
  v19 = v27;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v31 + 8))(v4, v32);
  v20 = sub_100079F24();
  sub_10002C0AC(v40, v38);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for TitledButtonStack();
  swift_dynamicCast();
  v21 = v29;
  v22 = v30;
  (*(v29 + 16))(v28, v10, v30);
  type metadata accessor for NilState();
  v23 = v35;
  StateLens.init(_:)();
  sub_10074B640(v39, v20);
  v25 = v24;
  swift_unknownObjectRelease();
  (*(v36 + 8))(v23, v37);
  (*(v33 + 8))(v19, v34);
  (*(v21 + 8))(v10, v22);
  sub_100007000(v40);

  return v25;
}

uint64_t sub_1003B18FC()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  v8._countAndFlagsBits = static UICollectionReusableView.defaultReuseIdentifier.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  ReadOnlyLens.value.getter();
  (*(v5 + 8))(v7, v4);
  Shelf.contentType.getter();

  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v12;
}

uint64_t sub_1003B1B04(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v2) + 0x88);
  v4 = sub_10002849C(&qword_100982F98);
  v5 = sub_100097060(&qword_100982FA0, &qword_100982F98);
  return v3(v8, sub_1003B3D2C, v7, v4, v5);
}

uint64_t sub_1003B1BF8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = &type metadata for EmptyView;
  v9[2] = a2;
  v9[3] = &protocol witness table for EmptyView;
  v4 = type metadata accessor for UIHostingConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  a3[3] = v4;
  a3[4] = swift_getWitnessTable();
  sub_1000056E0(a3);
  UIHostingConfiguration.margins(_:_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003B1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *((swift_isaMask & *v5) + 0x80);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for BaseObjectGraph();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10002D1A8(&qword_100982F80);
  type metadata accessor for ModifiedContent();
  sub_10002D1A8(&qword_100982F88);
  v9 = type metadata accessor for ModifiedContent();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100097060(&unk_100993080, &qword_100982F80);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_100097060(&qword_100993090, &qword_100982F88);
  v10 = swift_getWitnessTable();
  v12(v23, sub_1003B3CD4, v13, v9, v10);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1003B1FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = type metadata accessor for ShelfLayoutContext();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DynamicTypeSize();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10002849C(&unk_1009731D0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = type metadata accessor for PageGrid();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_10002849C(&qword_100974650);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_10002849C(&unk_1009731F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  ItemLayoutContext.item.getter();
  v21 = v38;
  ReadOnlyLens.value.getter();
  (*(v39 + 8))(v9, v21);
  v39 = ItemLayoutContext.index.getter();
  v35 = a1;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v22 = ShelfLayoutContext.traitCollection.getter();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  DynamicTypeSize.init(contentSizeCategory:)();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  sub_1003B2664();
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  static ComponentFactory.makeView(for:surroundedBy:pageGrid:pageGridProvider:item:itemOffset:objectGraph:dynamicTypeSize:componentWidth:componentHeight:)();

  (*(v46 + 8))(v32, v48);
  sub_100007000(v52);
  sub_10002B894(v53, &qword_100982FA8);
  v28(v33, v30);
  sub_10002B894(&v16[v31], &unk_10098FFB0);
  sub_10002B894(v16, &unk_10098FFB0);
  sub_10002849C(&qword_100982F98);
  return ItemLayoutContext.id.getter();
}

double sub_1003B2664()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&unk_1009731F0);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComponentHeightFactory.ComponentHeight();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003B36A8(v12);
  ShelfLayoutContext.contentPageGrid.getter();
  v13 = ComponentHeightFactory.ComponentHeight.value(in:)();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    ShelfLayoutContext.shelf.getter();
    v16 = v24;
    ReadOnlyLens.value.getter();
    (*(v23 + 8))(v4, v16);
    v17 = v25;
    Shelf.contentType.getter();

    v18 = COERCE_DOUBLE(static ComponentHeightFactory.estimatedComponentHeight(for:)());
    v20 = v19;
    (*(v26 + 8))(v17, v27);
    (*(v10 + 8))(v12, v9);
    if (v20)
    {
      return 0.0;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v21 = *&v13;
    (*(v10 + 8))(v12, v9);
  }

  return v21;
}

uint64_t sub_1003B29B0@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v63 = a5;
  v57 = a2;
  v59 = a1;
  v61 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  v69 = v9;
  v10 = v9;
  v51 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v43 - v12;
  v14 = type metadata accessor for BaseObjectGraph();
  v68 = a4;
  v69 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v16 = v14;
  v45 = v14;
  v70 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v68 = OpaqueTypeMetadata2;
  v69 = v16;
  v70 = v17;
  v47 = swift_getOpaqueTypeConformance2();
  v68 = v18;
  v69 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.intentDispatcher(from:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  sub_10002D1A8(&qword_100982F80);
  v53 = type metadata accessor for ModifiedContent();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_10002D1A8(&qword_100982F88);
  v24 = type metadata accessor for ModifiedContent();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  View.metricsActivityAware(from:)();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  View.actionDispatcher<A>(from:)();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  View.intentDispatcher(from:)();
  (*(v52 + 8))(v20, v18);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1003B3CE4(&qword_100982F90, &type metadata accessor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  View.environmentObject<A>(_:)();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_100097060(&unk_100993080, &qword_100982F80);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  View.environment<A>(_:_:)();

  (*(v60 + 8))(v31, v34);
  v37 = sub_100097060(&qword_100993090, &qword_100982F88);
  v64 = WitnessTable;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v55;
  v39(v55, v36, v24);
  v41 = *(v38 + 8);
  v41(v36, v24);
  v39(v63, v40, v24);
  return (v41)(v40, v24);
}

id sub_1003B330C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell()
{
  result = qword_100982F70;
  if (!qword_100982F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B33F4()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003B34FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = type metadata accessor for FlowPreviewEnvironment.State();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return dispatch thunk of FlowPreviewEnvironment.state.setter();
}

uint64_t sub_1003B35D8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = type metadata accessor for FlowPreviewEnvironment.State();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return dispatch thunk of FlowPreviewEnvironment.state.setter();
}

uint64_t sub_1003B36A8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for DynamicTypeSize();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Shelf.ContentType();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009731F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = type metadata accessor for PageGrid();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  ShelfLayoutContext.shelf.getter();
  ReadOnlyLens.value.getter();
  v21 = *(v12 + 8);
  v21(v17, v11);
  ShelfLayoutContext.shelf.getter();
  ReadOnlyLens.value.getter();
  v21(v14, v11);
  Shelf.contentType.getter();

  v22 = v29;
  ShelfLayoutContext.surroundingShelves.getter();
  PageGrid.containerWidth.getter();
  PageGrid.containerHeight.getter();
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v23 scaledValueForValue:1.0];

  v24 = ShelfLayoutContext.traitCollection.getter();
  v25 = [v24 preferredContentSizeCategory];

  v26 = v32;
  DynamicTypeSize.init(contentSizeCategory:)();
  static ComponentHeightFactory.componentHeight(for:contentType:surroundedBy:containerSize:pageGrid:scaleFactor:dynamicTypeSize:)();

  (*(v36 + 8))(v26, v37);
  sub_10002B894(v22, &unk_10098FFB0);
  sub_10002B894(v7, &unk_10098FFB0);
  (*(v33 + 8))(v10, v34);
  return (*(v30 + 8))(v20, v31);
}

uint64_t sub_1003B3B54()
{
  v0 = type metadata accessor for ComponentHeightFactory.ComponentHeight();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1003B36A8(&v10 - v5);
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.constant(_:))
  {
    return 0;
  }

  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.aspectRatio(_:) || v7 != enum case for ComponentHeightFactory.ComponentHeight.auto(_:))
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return 1;
}

uint64_t sub_1003B3CE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003B3D3C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_1009CEC88);
    if (v18 && *&v4[qword_1009CEC88])
    {
      v19 = *&v4[qword_1009CEC88 + 8];
      v46 = *(v16 + qword_1009CEC88 + 8);
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_1009CEC70;
    v25 = *&v4[qword_1009CEC70];
    v26 = [*&v17[qword_1009CEC70] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_1009CEC78;
    v29 = *&v4[qword_1009CEC78];
    v30 = [*&v17[qword_1009CEC78] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

uint64_t sub_1003B41BC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096E1C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D14D8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003B4398()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100982FF8);
  sub_1000056A8(v4, qword_100982FF8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B4504()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_100983010);
  sub_1000056A8(v0, qword_100983010);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1003B45A0()
{
  v1 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for OfferButtonSubtitlePosition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009701A0);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_1009D0048))
  {
    v14 = *(v0 + qword_1009D0040);
    if (v14)
    {
      v19 = *(v0 + qword_100983048);

      v18 = Lockup.offerDisplayProperties.getter();
      v15 = Lockup.buttonAction.getter();
      v16 = sub_10002849C(&unk_100973240);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_1003B6FD8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
      AccessibilityConditional.init(value:axValue:)();
      sub_10064AFA4(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10002B894(v13, &unk_100973230);
    }
  }
}

uint64_t sub_1003B492C(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for OfferButtonSubtitlePosition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009701A0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_1009D0040;
  *(v1 + qword_1009D0040) = a1;

  if (*(v1 + qword_1009D0048) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_100983048);

    v21[0] = Lockup.offerDisplayProperties.getter();
    v18 = Lockup.buttonAction.getter();
    v19 = sub_10002849C(&unk_100973240);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_1003B6FD8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    return sub_10002B894(v15, &unk_100973230);
  }

  else
  {
  }
}

id sub_1003B4D08()
{
  v1 = v0;
  v2 = *&v0[qword_1009D0048];
  if (v2 && (v3 = *&v0[qword_1009D0040]) != 0)
  {
    v4 = *&v0[qword_100983030];

    Lockup.title.getter();
    if (v5)
    {
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_10096E1C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for FontUseCase();
    v8 = sub_1000056A8(v7, qword_1009D14D8);
    sub_10067A060(v2, v8, v3);
    v9 = *&v1[qword_100983040];
    InAppPurchaseLockup.descriptionText.getter();
    if (v10)
    {
      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    [v9 setText:v11];
  }

  else
  {
    [*&v0[qword_100983030] setText:0];
    sub_1002F62D8();
    [*&v0[qword_100983040] setText:0];
  }

  sub_1003B45A0();

  return [v1 setNeedsLayout];
}

char *sub_1003B4EE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DirectionalTextAlignment();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_1009D0040] = 0;
  *&v5[qword_1009D0048] = 0;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[qword_100983028] = sub_1002EB7C0(v23, 1);
  if (qword_10096E1C8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v12, qword_1009D14D8);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v62[1] = v13 + 56;
  v66 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v28;
  v28(v72);
  v29 = type metadata accessor for DynamicTypeLabel();
  v62[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v65 = qword_100983030;
  *&v5[qword_100983030] = v32;
  v33 = v67;
  v26(v67, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  v35 = sub_1002F5B8C(v33, 1, 4);
  v36 = qword_100983038;
  *&v5[qword_100983038] = v35;
  if (qword_10096E1D0 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v12, qword_1009D14F0);
  v26(v20, v37, v12);
  v66(v20, 0, 1, v12);
  v63(v72, v64, v62[0]);
  v38 = objc_allocWithZone(v30);
  v39 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = qword_100983040;
  *&v5[qword_100983040] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_100983048] = sub_1000F5284(0);
  v42 = *&v5[v65];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v44 = v68;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v74, &unk_1009711D0);
  sub_10002B894(&v76, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v45 = v70;
  v46 = *(v69 + 8);
  v46(v44, v70);
  v47 = *&v5[v36];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = v47;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v74, &unk_1009711D0);
  sub_10002B894(&v76, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v46(v44, v45);
  v49 = *&v5[v40];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v49;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v74, &unk_1009711D0);
  sub_10002B894(&v76, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v46(v44, v45);
  v73.receiver = v5;
  v73.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview:*&v51[qword_100983028]];

  v53 = [v51 contentView];
  [v53 addSubview:*&v51[qword_100983030]];

  v54 = [v51 contentView];
  [v54 addSubview:*&v51[qword_100983038]];

  v55 = qword_100983040;
  v56 = *&v51[qword_100983040];
  sub_100005744(0, &qword_100970180);
  v57 = v56;
  v58 = static UIColor.secondaryText.getter();
  [v57 setTextColor:v58];

  v59 = [v51 contentView];
  [v59 addSubview:*&v51[v55]];

  v60 = [v51 contentView];
  [v60 addSubview:*&v51[qword_100983048]];

  return v51;
}

void sub_1003B5778()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_100983048];
  v18 = &v17[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v17[v19], v100);
    sub_10002A400(v100, v100[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v21 = v20;
    v23 = v22;
    sub_100007000(v100);
    v97 = v21;
    *v18 = v21;
    v18[1] = v23;
    v96 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v96 = v18[1];
    v97 = v24;
  }

  if (qword_10096DB30 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for StaticDimension();
  sub_1000056A8(v25, qword_100982FC8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v90 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_10096DB40 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_100982FF8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_100983028];
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v32 = v31;
  v34 = v33;
  v102.origin.x = v10;
  v102.origin.y = v12;
  v102.size.width = v14;
  v102.size.height = v16;
  v87 = CGRectGetMidX(v102) + v32 * -0.5;
  v89 = v32;
  v88 = v34;
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v30 setFrame:?];
  v103.origin.x = v10;
  v103.origin.y = v12;
  v103.size.width = v14;
  v103.size.height = v16;
  v35 = CGRectGetWidth(v103) - v97 - v29;
  v36 = *&v1[qword_100983040];
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v104)}];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  CGRectGetMaxY(v105);
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  CGRectGetMinX(v106);
  [v36 lastBaselineFromBottom];
  Width = v35;
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v107.origin.x = v10;
    v107.origin.y = v12;
    v107.size.width = v14;
    v107.size.height = v16;
    v39 = CGRectGetMaxY(v107) + -20.0;
  }

  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  MaxX = CGRectGetMaxX(v108);
  v92 = v10;
  v91 = v12;
  v94 = MaxX - v97;
  v93 = v39 - v96;
  CGRect.withLayoutDirection(in:relativeTo:)();
  v42 = v41;
  v44 = v43;
  v86 = v14;
  v85 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v99.receiver = v17;
  v99.super_class = v49;
  objc_msgSendSuper2(&v99, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v98.receiver = v17;
  v98.super_class = v49;
  objc_msgSendSuper2(&v98, "setFrame:", v42, v44, v46, v48);
  sub_1000F4A10(v51, v53, v55, v57);
  if (qword_10096DB38 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_100982FE0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v59 = v58;
  v27(v7, v3);
  v60 = *&v1[qword_100983030];
  v61 = v86;
  v62 = v85;
  [v60 sizeThatFits:{v86, v85}];
  v64 = v63;
  v109.origin.y = 70.0;
  v109.origin.x = v87;
  v109.size.width = v89;
  v109.size.height = v88;
  MaxY = CGRectGetMaxY(v109);
  if (qword_10096DB28 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_100982FB0);
  static Dimensions.defaultRoundingRule.getter();
  v66 = [v60 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v68 = v67;

  [v60 firstBaselineFromTop];
  v70 = v69;
  v27(v7, v3);
  v89 = v59;
  v71 = v59 + v64 + MaxY + v68 - v70;
  v110.origin.x = v94;
  v110.origin.y = v93;
  v110.size.width = v97;
  v110.size.height = v96;
  MinY = CGRectGetMinY(v110);
  v73 = v92;
  v74 = v91;
  if (MinY >= v71)
  {
    v111.origin.x = v92;
    v111.origin.y = v91;
    v111.size.width = v61;
    v111.size.height = v62;
    CGRectGetWidth(v111);
  }

  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v61;
  v112.size.height = v62;
  CGRectGetMinX(v112);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v60 setFrame:?];
  v75 = *&v1[qword_100983038];
  [v75 sizeThatFits:{v61, v62}];
  v77 = v76;
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E1C8 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for FontUseCase();
  sub_1000056A8(v78, qword_1009D14D8);
  v79 = [v1 traitCollection];
  v80 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  [v60 lastBaselineMaxY];
  v82 = v90 + v81;
  UIFont.estimatedFirstBaseline.getter();
  v84 = v89 + v77 + v82 - v83;
  v113.origin.x = v94;
  v113.origin.y = v93;
  v113.size.width = v97;
  v113.size.height = v96;
  if (CGRectGetMinY(v113) >= v84)
  {
    v114.origin.x = v73;
    v114.origin.y = v74;
    v114.size.width = v61;
    v114.size.height = v62;
    Width = CGRectGetWidth(v114);
  }

  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v61;
  v115.size.height = v62;
  CGRectGetMinX(v115);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v75 setFrame:?];
}

void sub_1003B6114(void *a1)
{
  v1 = a1;
  sub_1003B5778();
}

uint64_t sub_1003B615C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1003B3D3C(a1, a2, a3 & 1);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v9[qword_100983028];
    sub_1002ECAFC(v15);

    *&v4[qword_1009D0048] = *&v9[qword_1009D0048];
    swift_retain_n();

    sub_1003B4D08();
  }

  return result;
}

void sub_1003B62C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for InAppPurchaseTheme();
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v50 - v14;
  v15 = type metadata accessor for TodayCard.Style();
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v50 - v18;
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v50 - v24;
  sub_1005D841C(a1, a2, a3, a4, v23);
  v26 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaInAppPurchase();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v61 = v27;
    v51 = v12;
    v52 = v26;
    v53 = v10;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    v54 = a4;
    inject<A, B>(_:from:)();
    v62 = v64;
    v63 = v5;
    [*&v5[qword_1009CEC78] setText:0];
    v57 = a1;
    TodayCard.style.getter();
    v28 = v58;
    v50 = *(v58 + 104);
    v50(v21, enum case for TodayCard.Style.dark(_:), v15);
    sub_1003B6FD8(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v64 == v66 && v65 == v67)
    {
      v29 = 1;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v30 = *(v28 + 8);
    v30(v21, v15);
    v30(v25, v15);

    if (v29)
    {
      v31 = 2;
      v32 = v63;
    }

    else
    {
      v33 = v56;
      TodayCard.style.getter();
      v34 = v55;
      v50(v55, enum case for TodayCard.Style.light(_:), v15);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v32 = v63;
      if (v64 == v66 && v65 == v67)
      {
        v30(v34, v15);
        v30(v33, v15);

        v31 = 1;
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30(v34, v15);
        v30(v33, v15);

        v31 = v35 & 1;
      }
    }

    [v32 setOverrideUserInterfaceStyle:v31];
    v36 = TodayCard.backgroundColor.getter();
    if (!v36)
    {
      sub_100005744(0, &qword_100970180);
      v36 = static UIColor.todayCardDefaultBackground.getter();
    }

    v37 = v36;
    v38 = [v32 backgroundView];
    if (v38)
    {
      v39 = v38;
      [v38 setBackgroundColor:v37];
    }

    v40 = *&v32[qword_100983028];
    v58 = TodayCardMediaInAppPurchase.lockup.getter();
    v57 = v37;
    v41 = v59;
    InAppPurchaseLockup.theme.getter();
    v42 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    v43 = v60;
    v44 = v53;
    (*(v60 + 24))(&v40[v42], v41, v53);
    swift_endAccess();
    v56 = *(v43 + 16);
    v45 = v51;
    (v56)(v51, &v40[v42], v44);
    sub_1002EBEE4(v45);
    v46 = *(v43 + 8);
    v46(v45, v44);
    v46(v41, v44);
    v47 = v57;
    [v40 setBackgroundColor:v57];
    sub_1001BCDCC(v58, v40, v62);
    (v56)(v41, &v40[v42], v44);
    sub_1002EBEE4(v41);
    v46(v41, v44);
    [v40 setNeedsLayout];

    v49 = v63;
    sub_1003B492C(v48);
    *&v49[qword_1009D0048] = TodayCardMediaInAppPurchase.lockup.getter();

    sub_1003B4D08();

    [v49 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_1003B69D8(uint64_t a1, uint64_t a2)
{
  sub_1005D7118();
  sub_10002C0AC(a1, v8);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for TodayCard();
  result = swift_dynamicCast();
  if (result)
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaInAppPurchase();
    if (swift_dynamicCastClass())
    {
      v6 = *(v2 + qword_100983028);
      v7 = TodayCardMediaInAppPurchase.lockup.getter();
      sub_1001BCDCC(v7, v6, a2);
    }
  }

  return result;
}

uint64_t sub_1003B6AD4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  if (*(v3 + qword_1009CEC88))
  {
    v5 = *(v3 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v11, v8);
  type metadata accessor for ArtworkView();
  sub_1003B6FD8(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

id sub_1003B6C24(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096DB48 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_100983010);
    v7 = v1;
    Conditional.evaluate(with:)();

    [*&v7[qword_100983030] setTextAlignment:{v8, v1}];
    [*&v7[qword_100983038] setTextAlignment:v8];
    return [*&v7[qword_100983040] setTextAlignment:v8];
  }

  return result;
}

void sub_1003B6D90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1003B6C24(a3);
}

uint64_t sub_1003B6DFC()
{
}

uint64_t sub_1003B6E8C(uint64_t a1)
{
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell()
{
  result = qword_100983078;
  if (!qword_100983078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B6FD8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1003B70B0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_1003C9368(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

char *sub_1003B71B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1009728E0) = 0x409F400000000000;
  v7 = qword_1009728F8;
  v8 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v7) = CompoundScrollObserver.init(children:)();
  *(v3 + qword_100972908) = 1;
  *(v3 + qword_100972918) = 0;
  *(v3 + qword_100972920) = 0;
  *(v3 + qword_1009728E8) = a1;
  *(v3 + qword_1009728F0) = a2;
  sub_10002849C(&qword_100983818);
  swift_allocObject();
  swift_retain_n();

  *(v3 + qword_100972900) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  if (v26[0])
  {

    ImpressionsCalculator.isVisible.setter();
  }

  *(a2 + 112) = v26[0];

  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();

  *(v3 + qword_100972910) = ImpressionsScrollObserver.init(_:)();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_1001854CC(v9, a3);
  swift_unknownObjectWeakAssign();
  v26[3] = type metadata accessor for GenericPagePresenter();
  v26[4] = &protocol witness table for BasePresenter;
  v26[0] = a1;
  v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  v12 = v10;

  v13 = v12;
  sub_1003C89B0(v26, v10 + v11);
  swift_endAccess();
  sub_1003C9368(&qword_100983820, &type metadata accessor for GenericPagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v14 = sub_10002849C(&qword_100983828);

  v15 = sub_1003C107C(v13, a1, a3, v14);
  v16 = *&v13[qword_100972918];
  *&v13[qword_100972918] = v15;

  v17 = qword_1009728F8;
  v18 = *&v13[qword_1009728F8];
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  v19 = v18;

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v20 = *&v13[v17];
  type metadata accessor for PlaybackCoordinator();
  v21 = v20;

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v22 = *&v13[v17];
  sub_1003C93B0(&qword_100983830, &qword_100983818);
  v23 = v22;

  CompoundScrollObserver.addChild(_:)();

  v24 = *&v13[v17];

  CompoundScrollObserver.addChild(_:)();

  return v13;
}

char *sub_1003B76FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009836F8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchFocusDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983700, &type metadata accessor for SearchFocusDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983708, &type metadata accessor for SearchFocusDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983710, &qword_1009836F8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B80F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009837C8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ReviewsDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009837D0, &type metadata accessor for ReviewsDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009837D8, &type metadata accessor for ReviewsDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009837E0, &qword_1009837C8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B8AE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009836A8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ProductDiffablePagePresenter();
  v48[4] = sub_1003C9368(&unk_1009836B0, &type metadata accessor for ProductDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009836C0, &type metadata accessor for ProductDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009836C8, &qword_1009836A8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B94D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009836D8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchLandingDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009836E0, &type metadata accessor for SearchLandingDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009836E8, &type metadata accessor for SearchLandingDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009836F0, &qword_1009836D8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B9ECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983718);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983720, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983728, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983730, &qword_100983718);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BA8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983738);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ArcadeDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983740, &type metadata accessor for ArcadeDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983748, &type metadata accessor for ArcadeDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983750, &qword_100983738);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BB2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983758);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983760, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983768, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&unk_100983770, &qword_100983758);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BBCA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983848);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for GenericDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983850, &type metadata accessor for GenericDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983858, &type metadata accessor for GenericDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983860, &qword_100983848);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BC69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983780);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v50[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v46;
  *(v3 + qword_1009CF3E0) = v46;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v50[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v50[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v48 = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];
  (*(ObjectType + 792))();

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v50[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v50[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v50[3] = type metadata accessor for TodayDiffablePagePresenter();
  v50[4] = sub_1003C9368(&qword_100983788, &type metadata accessor for TodayDiffablePagePresenter);
  v50[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v50, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983790, &type metadata accessor for TodayDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983798, &qword_100983780);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BD0B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009837A8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ArticleDiffablePagePresenter();
  v48[4] = sub_1003C9368(&unk_1009837B0, &type metadata accessor for ArticleDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100980400, &type metadata accessor for ArticleDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009837C0, &qword_1009837A8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BDAA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009837E8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(&_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for MSODiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009837F0, &type metadata accessor for MSODiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009837F8, &type metadata accessor for MSODiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983800, &qword_1009837E8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BE498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983898);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchResultsDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009838A0, &type metadata accessor for SearchResultsDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009838A8, &type metadata accessor for SearchResultsDiffablePagePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&unk_1009838B0, &qword_100983898);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BEE8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983878);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for TopChartDiffableSegmentPresenter();
  v48[4] = sub_1003C9368(&qword_100983880, &type metadata accessor for TopChartDiffableSegmentPresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983888, &type metadata accessor for TopChartDiffableSegmentPresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983890, &qword_100983878);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

uint64_t sub_1003BF880(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
    v8 = sub_10002849C(&unk_100974490);
    v9 = v6;

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v4, 1, v8) == 1)
    {

      return sub_10002B894(v4, &unk_100972A00);
    }

    else
    {
      v11 = *&v6[v7];

      sub_1005F9AF4(a1, 1, v11, v4);

      return (*(v10 + 8))(v4, v8);
    }
  }

  return result;
}

uint64_t sub_1003BFA4C@<X0>(uint64_t a1@<X1>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v16 = Strong;
  v17 = [Strong collectionView];

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = [v17 indexPathForItemAtPoint:{a3, a4}];
  if (!v18)
  {

    goto LABEL_10;
  }

  v19 = v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v21 = [v17 cellForItemAtIndexPath:isa];

  v22 = sub_1003BFE64(v14, a1);
  if (!v21 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {

    v27 = *(v9 + 32);
    v27(v12, v14, v8);
    v27(a2, v12, v8);
    v28 = type metadata accessor for PreviewItem();
    v29 = v28;
    *&a2[*(v28 + 20)] = v21;
LABEL_20:
    *&a2[*(v28 + 24)] = v22;
    return (*(*(v28 - 8) + 56))(a2, 0, 1, v29);
  }

  v23 = v17;
  v24 = sub_1003C0DFC(v23, v21, a3, a4);
  v26 = v25;

  if (v26)
  {
    (*(v9 + 8))(v14, v8);

LABEL_10:
    v30 = type metadata accessor for PreviewItem();
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  sub_10002849C(&qword_100980550);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B1890;
  *(v32 + 32) = IndexPath.section.getter();
  *(v32 + 40) = v24;
  IndexPath.init(arrayLiteral:)();
  v33 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v34 = *&v21[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < result)
    {
      goto LABEL_13;
    }

LABEL_18:

    v36 = 0;
    goto LABEL_19;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v24 >= result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v35 = *&v21[v33];
  if ((v35 & 0xC000000000000001) != 0)
  {

    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_19;
  }

  if (v24 < 0)
  {
    __break(1u);
  }

  else if (v24 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v35 + 8 * v24 + 32);

LABEL_19:
    (*(v9 + 8))(v14, v8);
    v28 = type metadata accessor for PreviewItem();
    v29 = v28;
    *&a2[*(v28 + 20)] = v36;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_1003BFE64(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShelfBackground();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  result = 0;
  if (!v13 || !a2)
  {
    return result;
  }

  v34 = v7;
  v15 = v3;
  v36 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v35 = ObjectType;
  dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
  v17 = type metadata accessor for ItemBackground();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_10002B894(v12, &unk_1009804F0);
  }

  else
  {
    v19 = ItemBackground.isSolidColorAdBackground.getter();
    (*(v18 + 8))(v12, v17);
    if (v19)
    {
      if (qword_10096EFB0 != -1)
      {
        swift_once();
      }

      v20 = qword_1009D3A08;
      swift_unknownObjectRelease();
      return v20;
    }
  }

  dispatch thunk of ShelfPresenter.interactiveShelfBackground(at:)();
  v21 = v36;
  v22 = *(v36 + 88);
  v23 = v22(v9, v15);
  v24 = enum case for ShelfBackground.color(_:);
  if (v23 == enum case for ShelfBackground.color(_:))
  {
    swift_unknownObjectRelease();
    (*(v21 + 96))(v9, v15);
    v25 = *v9;
    v26 = *(sub_10002849C(&qword_100972A40) + 48);
    v27 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v27 - 8) + 8))(&v9[v26], v27);
    return v25;
  }

  v32 = *(v21 + 8);
  v33 = v21 + 8;
  v32(v9, v15);
  IndexPath.section.getter();
  v28 = v34;
  dispatch thunk of ShelfPresenter.background(for:)();
  swift_unknownObjectRelease();
  if (v22(v28, v15) == v24)
  {
    (*(v21 + 96))(v28, v15);
    v25 = *v28;
    v29 = *(sub_10002849C(&qword_100972A40) + 48);
    v30 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v30 - 8) + 8))(&v28[v29], v30);
    return v25;
  }

  v32(v28, v15);
  return 0;
}

void sub_1003C02BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1003C057C(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = a2 & 1;
      *(v6 + 24) = v5;
      v8[4] = sub_1003C8A48;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100007A08;
      v8[3] = &unk_1008C0C88;
      v7 = _Block_copy(v8);

      [v4 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C06A4(char a1)
{
  v2 = sub_10002849C(&unk_100982A90);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v27 - v3;
  v5 = sub_10002849C(&unk_100974490);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AlertActionStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      type metadata accessor for Artwork();
      v15 = sub_10008754C(0x6E65537473616F54, 0xE900000000000074);
      v28 = v2;
      v16 = v15;
      v17._object = 0x8000000100810EC0;
      v17._countAndFlagsBits = 0xD000000000000012;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = localizedString(_:comment:)(v17, v18);
      v27[2] = v19._object;
      v27[3] = v19._countAndFlagsBits;
      v20._countAndFlagsBits = 0xD000000000000018;
      v20._object = 0x8000000100810EE0;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v27[1] = localizedString(_:comment:)(v20, v21)._object;
      (*(v10 + 104))(v12, enum case for AlertActionStyle.toast(_:), v9);
      v27[4] = v16;

      static ActionMetrics.notInstrumented.getter();
      v22 = type metadata accessor for AlertAction();
      swift_allocObject();
      v23 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
      type metadata accessor for BaseObjectGraph();

      inject<A, B>(_:from:)();

      v31[3] = v22;
      v31[4] = sub_1003C9368(&qword_100983868, &type metadata accessor for AlertAction);
      v31[0] = v23;
      v24 = v30;
      v25 = v28;
      (*(v30 + 104))(v4, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v28);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v24 + 8))(v4, v25);
      (*(v29 + 8))(v7, v5);
      sub_100007000(v31);
      v26 = *&v14[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference];
      *&v14[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference] = 0;
    }
  }
}

id sub_1003C0C18(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003C0D24(uint64_t a1)
{
  v3 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v1 + 32) = CompoundScrollObserver.init(children:)();
  *(v1 + 40) = &protocol witness table for CompoundScrollObserver;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = sub_100397604(&_swiftEmptyArrayStorage);
  *(v1 + 64) = sub_1003977E0(&_swiftEmptyArrayStorage);
  *(v1 + 72) = sub_1003977F4(&_swiftEmptyArrayStorage);
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_1007CAE30;
  *(v1 + 104) = 0xC020000000000000;
  *(v1 + 112) = 0;
  *(v1 + 16) = a1;
  sub_10002849C(&unk_100980500);
  swift_allocObject();
  *(v1 + 24) = TransientStateStore.init(isConcurrent:)();
  return v1;
}

unint64_t sub_1003C0DFC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v11 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    v13 = [v12 pointInside:0 withEvent:?];

    v9 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

id sub_1003C0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1003C9368(&unk_100983838, &type metadata accessor for GenericPagePresenter);
  v9 = sub_10002849C(&qword_100983828);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1003C107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003C9368(&unk_100983838, &type metadata accessor for GenericPagePresenter);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a4;

  v12 = sub_1003C0F40(v11, a1, sub_1003C8A3C, v10, a3);

  return v12;
}

char *sub_1003C1178(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetricsPipeline();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  type metadata accessor for PageFacetsPresenter();
  swift_allocObject();
  v10 = PageFacetsPresenter.init()();
  static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)();
  sub_10002849C(&qword_1009844F0);
  type metadata accessor for Dependency();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B1890;
  (*(v4 + 16))(v6, v9, v3);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for GuidedSearchPresenter();
  swift_allocObject();
  v16[1] = GuidedSearchPresenter.init()();
  Dependency.init<A>(satisfying:with:)();
  v12 = sub_10054A47C(a2, 0, 0, v11, 0x686372616573, 0xE600000000000000);

  v13 = objc_allocWithZone(type metadata accessor for SearchViewController());
  v14 = sub_100402294(v10, v12);

  (*(v4 + 8))(v9, v3);
  return v14;
}

uint64_t sub_1003C1408(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v25[3] = a5(0);
  v25[4] = sub_1003C9368(a6, a7);
  v25[0] = a1;
  *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning] = 0;
  if (sub_1005D8420())
  {
    v16 = v15;
    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph] = a3;
    sub_10002849C(&unk_100980500);
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore] = TransientStateStore.init(isConcurrent:)();
    sub_10002C0AC(v25, &a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model]);
    v17 = [objc_allocWithZone(UIScrollView) init];
    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView] = v17;
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v19 = &a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView];
    *v19 = v18;
    *(v19 + 1) = v16;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_artworkLoader] = v24;
    v23.receiver = a4;
    v23.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
    v21 = type metadata accessor for Shelf.ContentType();
    (*(*(v21 - 8) + 8))(a2, v21);
    sub_100007000(v25);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003C1668(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v610 = a8;
  v636 = a6;
  v637 = a5;
  v651 = a4;
  v650 = a3;
  v611 = a2;
  v655 = a1;
  v9 = sub_10002849C(&qword_100983508);
  __chkstk_darwin(v9 - 8);
  v609 = &v560 - v10;
  v11 = sub_10002849C(&qword_100983510);
  __chkstk_darwin(v11 - 8);
  v607 = &v560 - v12;
  v602 = type metadata accessor for DashboardLaunchContext();
  v601 = *(v602 - 8);
  __chkstk_darwin(v602);
  v603 = &v560 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v606 = type metadata accessor for IndexPath();
  v605 = *(v606 - 8);
  __chkstk_darwin(v606);
  v604 = &v560 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v633 = type metadata accessor for Shelf.ContentType();
  v632 = *(v633 - 8);
  __chkstk_darwin(v633);
  v635 = &v560 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100983518);
  __chkstk_darwin(v16 - 8);
  v600 = &v560 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v608 = &v560 - v19;
  v639 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
  v638 = *(v639 - 8);
  __chkstk_darwin(v639);
  v614 = &v560 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v634 = &v560 - v22;
  v572 = type metadata accessor for URLComponents();
  v571 = *(v572 - 8);
  __chkstk_darwin(v572);
  v563 = &v560 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v569 = type metadata accessor for RateAction.Parameter();
  v568 = *(v569 - 8);
  __chkstk_darwin(v569);
  v567 = &v560 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v570 = type metadata accessor for URLQueryItem();
  v573 = *(v570 - 8);
  __chkstk_darwin(v570);
  v564 = &v560 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v612 = &v560 - v27;
  v28 = sub_10002849C(&unk_100983520);
  __chkstk_darwin(v28 - 8);
  v613 = &v560 - v29;
  v596 = type metadata accessor for LegacyAppState();
  v595 = *(v596 - 8);
  __chkstk_darwin(v596);
  v598 = &v560 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v625 = type metadata accessor for AdamId();
  v624 = *(v625 - 8);
  __chkstk_darwin(v625);
  v623 = &v560 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v621 = type metadata accessor for PurchasesContentMode();
  v620 = *(v621 - 8);
  __chkstk_darwin(v621);
  v597 = &v560 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = type metadata accessor for Bag();
  __chkstk_darwin(v561);
  v562 = &v560 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = type metadata accessor for Dependency();
  v643 = *(v619 - 8);
  __chkstk_darwin(v619);
  v618 = &v560 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v594 = type metadata accessor for ArcadeWelcomePage.ContentType();
  v593 = *(v594 - 8);
  __chkstk_darwin(v594);
  v582 = &v560 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v630 = &v560 - v37;
  v591 = type metadata accessor for ArcadePageUrls();
  v590 = *(v591 - 8);
  __chkstk_darwin(v591);
  v580 = &v560 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v589 = &v560 - v40;
  v41 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v41 - 8);
  v579 = &v560 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v585 = &v560 - v44;
  __chkstk_darwin(v45);
  v566 = &v560 - v46;
  __chkstk_darwin(v47);
  v578 = &v560 - v48;
  __chkstk_darwin(v49);
  v599 = &v560 - v50;
  __chkstk_darwin(v51);
  v646 = &v560 - v52;
  __chkstk_darwin(v53);
  v647 = &v560 - v54;
  v584 = type metadata accessor for FlowOrigin();
  v583 = *(v584 - 8);
  __chkstk_darwin(v584);
  v577 = &v560 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v581 = &v560 - v57;
  v58 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v58 - 8);
  v631 = &v560 - v59;
  v588 = type metadata accessor for ProductDiffablePagePresenter.PageWidth();
  v587 = *(v588 - 8);
  __chkstk_darwin(v588);
  v592 = &v560 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v629 = type metadata accessor for ASKBagContract.AdPlacementBagValue();
  v628 = *(v629 - 8);
  __chkstk_darwin(v629);
  v627 = &v560 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v652 = type metadata accessor for URL();
  v649 = *(v652 - 8);
  __chkstk_darwin(v652);
  v615 = &v560 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v622 = &v560 - v64;
  __chkstk_darwin(v65);
  v565 = &v560 - v66;
  __chkstk_darwin(v67);
  v645 = &v560 - v68;
  __chkstk_darwin(v69);
  v648 = &v560 - v70;
  __chkstk_darwin(v71);
  v586 = &v560 - v72;
  __chkstk_darwin(v73);
  v641 = &v560 - v74;
  v654 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v654);
  v76 = (&v560 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v77 - 8);
  v78 = type metadata accessor for MetricsPipeline();
  v662 = *(v78 - 8);
  __chkstk_darwin(v78);
  v574 = &v560 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v576 = &v560 - v81;
  __chkstk_darwin(v82);
  v84 = &v560 - v83;
  v85 = sub_100005744(0, &qword_10098D1A0);
  type metadata accessor for BaseObjectGraph();
  v617 = v85;
  inject<A, B>(_:from:)();
  v656 = v675[0];
  v642 = sub_10002849C(&unk_100973AF0);
  inject<A, B>(_:from:)();
  v657 = v675[0];
  v640 = v675[1];
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v658 = v675[0];
  v626 = type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v663 = v675[0];
  type metadata accessor for GameCenterFriendRequestCoordinator();
  inject<A, B>(_:from:)();
  v659 = v675[0];
  v665 = v84;
  v661 = v78;
  inject<A, B>(_:from:)();
  type metadata accessor for PersonalizationDataProvider();
  BaseObjectGraph.optional<A>(_:)();
  v660 = v675[0];
  v616 = sub_10002849C(&unk_100975540);
  inject<A, B>(_:from:)();
  v86 = type metadata accessor for Restrictions();
  v653 = a7;
  v575 = v86;
  inject<A, B>(_:from:)();
  v664 = v672;
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for OSLogger();
  sub_1000056A8(v87, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  v88 = swift_allocObject();
  v644 = xmmword_1007B10D0;
  *(v88 + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v89._countAndFlagsBits = 0xD000000000000049;
  v89._object = 0x8000000100810B70;
  LogMessage.StringInterpolation.appendLiteral(_:)(v89);
  v90 = v655;
  v91 = sub_10040A6A4();
  *(&v673 + 1) = &type metadata for String;
  *&v672 = v91;
  *(&v672 + 1) = v92;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v672, &unk_1009711D0);
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v93);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100118188(v90, v76);
  v94 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v289 = *(sub_10002849C(&qword_100983688) + 48);
      v290 = v649;
      v291 = v648;
      v279 = v652;
      (*(v649 + 32))(v648, v76, v652);
      v292 = v583;
      v293 = v581;
      v294 = v584;
      (*(v583 + 32))(v581, v76 + v289, v584);
      (*(v290 + 16))(v645, v291, v279);
      v295 = v577;
      (*(v292 + 104))(v577, enum case for FlowOrigin.external(_:), v294);
      static FlowOrigin.== infix(_:_:)();
      v655 = *(v292 + 8);
      v655(v295, v294);
      sub_100031660(v637, v631, &unk_1009767C0);
      type metadata accessor for LoadingPagePresenter();
      swift_allocObject();
      v296 = v653;

      v297 = LoadingPagePresenter.init(objectGraph:pageUrl:isIncomingURL:referrerData:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v298 = sub_1003C9368(&qword_100983690, &type metadata accessor for LoadingPagePresenter);

      v299 = sub_10054A47C(v296, v297, v298, &_swiftEmptyArrayStorage, 0x50676E6964616F6CLL, 0xEB00000000656761);

      v300 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());
      sub_10023AF58(v297, v299);

      swift_unknownObjectRelease();

      v655(v293, v294);
      v284 = *(v290 + 8);
      v285 = v648;
      goto LABEL_44;
    case 2u:
      v266 = v649;
      v267 = v648;
      v268 = v76;
      v269 = v652;
      (*(v649 + 32))(v648, v268, v652);
      v270 = v645;
      (*(v266 + 16))(v645, v267, v269);
      sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0x77656956626577, 0xE700000000000000);
      v271 = objc_allocWithZone(type metadata accessor for WebViewController());
      sub_1005FC01C(v270);

      swift_unknownObjectRelease();

      (*(v266 + 8))(v267, v269);
      goto LABEL_85;
    case 3u:
      v276 = *(v76 + *(sub_10002849C(&qword_100983680) + 48));
      v277 = v649;
      v278 = v648;
      v279 = v652;
      (*(v649 + 32))(v648, v76, v652);
      v280 = v645;
      (*(v277 + 16))(v645, v278, v279);
      v281 = v651;

      v282 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0x5063696D616E7964, 0xEB00000000656761);
      v283 = objc_allocWithZone(type metadata accessor for DynamicViewController());
      sub_100649FB0(v280, v276, v650, v281, v282);

      swift_unknownObjectRelease();

      v284 = *(v277 + 8);
      v285 = v278;
LABEL_44:
      v301 = v279;
      goto LABEL_50;
    case 4u:
      sub_1001181EC(v76);
      v206 = v665;
      sub_1003C1178(v665, v653);

      swift_unknownObjectRelease();

      sub_100007000(v675);
      (*(v662 + 8))(v206, v661);
      return;
    case 5u:

      v339 = sub_10002849C(&qword_100983670);
      v340 = v647;
      sub_1000476A0(v76 + *(v339 + 48), v647, &qword_100982460);
      sub_100031660(v340, v646, &qword_100982460);
      type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter();
      swift_allocObject();
      v341 = v653;

      v342 = SearchChartsAndCategoriesDiffablePagePresenter.init(objectGraph:pageUrl:)();
      v343 = sub_1003C9368(&qword_100983678, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
      v344 = sub_10054A47C(v341, v342, v343, &_swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100810E50);
      v345 = objc_allocWithZone(type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController());

      v346 = sub_1003B9ECC(v342, v344);
      v346[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
      v347 = v346;
      v348 = [v347 navigationItem];
      [v348 setLargeTitleDisplayMode:3];

      swift_unknownObjectRelease();

      goto LABEL_53;
    case 6u:
      v364 = *v76;
      sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100810E30);
      v365 = objc_allocWithZone(type metadata accessor for GalleryViewController());
      sub_10062DC8C(v364);
      goto LABEL_83;
    case 7u:
      sub_10002849C(&qword_100983668);

      v286 = v649;
      v287 = v648;
      v288 = v652;
      (*(v649 + 32))(v648, v94, v652);
      sub_100482B14(v287);

      swift_unknownObjectRelease();

      (*(v286 + 8))(v287, v288);
      goto LABEL_85;
    case 8u:
      v383 = v76 + *(sub_10002849C(&unk_10097CCB0) + 48);
      v384 = v647;
      sub_1000476A0(v383, v647, &qword_100982460);
      sub_100031660(v384, v646, &qword_100982460);
      type metadata accessor for GenericDiffablePagePresenter();
      swift_allocObject();

      v385 = v653;

      v386 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v387 = sub_1003C9368(&qword_100983550, &type metadata accessor for GenericDiffablePagePresenter);

      v388 = sub_10054A47C(v385, v386, v387, &_swiftEmptyArrayStorage, 0x50636972656E6567, 0xEB00000000656761);

      v389 = objc_allocWithZone(type metadata accessor for GenericDiffablePageViewController());
      sub_10073BE78(v386, v388);

      swift_unknownObjectRelease();

      v122 = v384;
      goto LABEL_60;
    case 9u:
      v221 = sub_10002849C(&qword_100983608);
      v222 = v647;
      sub_1000476A0(v76 + *(v221 + 48), v647, &qword_100982460);
      sub_100031660(v222, v646, &qword_100982460);
      type metadata accessor for TopChartsDiffablePagePresenter();
      swift_allocObject();

      v223 = v653;

      v224 = TopChartsDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:)();
      v225 = sub_1003C9368(&unk_100983610, &type metadata accessor for TopChartsDiffablePagePresenter);

      v226 = sub_10054A47C(v223, v224, v225, &_swiftEmptyArrayStorage, 0x7472616843706F74, 0xED00006567615073);

      v227 = objc_allocWithZone(type metadata accessor for TopChartsDiffablePageViewController());
      sub_1002021F8(v224, v226);

      swift_unknownObjectRelease();

      v122 = v222;
      goto LABEL_60;
    case 0xAu:
      v371 = *v76;
      v372 = v76[1];
      v373 = sub_10002849C(&qword_100983590);
      v374 = v638;
      v375 = v634;
      v376 = v639;
      (*(v638 + 32))(v634, v94 + *(v373 + 64), v639);
      v377 = v614;
      (*(v374 + 16))(v614, v375, v376);
      v378 = (*(v374 + 88))(v377, v376);
      if (v378 == enum case for ShareSheetAction.ShareSheetStyle.expanded(_:))
      {
        v379 = 0;
        v380 = v662;
        v381 = v661;
        v382 = v659;
      }

      else
      {
        v380 = v662;
        v381 = v661;
        v382 = v659;
        if (v378 != enum case for ShareSheetAction.ShareSheetStyle.collapsed(_:))
        {
          (*(v638 + 8))(v614, v639);
        }

        v379 = 1;
      }

      v501 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0x6568536572616873, 0xEA00000000007465);
      v502 = objc_allocWithZone(type metadata accessor for ActivityViewController());
      sub_1005A61DC(v371, v372, v379, v501);

      swift_unknownObjectRelease();

      (*(v638 + 8))(v634, v639);
      sub_100007000(v675);
      (*(v380 + 8))(v665, v381);
      return;
    case 0xBu:
      v193 = *v76;
      v194 = v76[1];
      v195 = v76[2];
      v196 = v76[3];
      sub_100005744(0, &qword_100983588);
      v197 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100810D00);
      v198 = v193;
      v199 = v194;
      v200 = v195;
      v201 = v196;
      v202 = 0;
      goto LABEL_28;
    case 0xCu:
      v217 = *v76;
      v218 = v76[1];
      v219 = v76[2];
      v220 = v76[3];
      sub_100005744(0, &qword_100983588);
      v197 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x8000000100810CE0);
      v198 = v217;
      v199 = v218;
      v200 = v219;
      v201 = v220;
      v202 = 1;
LABEL_28:
      sub_1001944A0(v198, v199, v200, v201, v202, v197);
      goto LABEL_83;
    case 0xDu:
      v354 = sub_10002849C(&qword_1009703B8);
      v355 = v590;
      v356 = v589;
      v357 = v591;
      (*(v590 + 32))(v589, v76 + *(v354 + 48), v591);
      v358 = v658;
      ASKBagContract.fetchTimeout.getter();
      (*(v355 + 16))(v580, v356, v357);
      type metadata accessor for ArcadeDiffablePagePresenter();
      swift_allocObject();

      v359 = v653;

      v360 = ArcadeDiffablePagePresenter.init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v361 = sub_1003C9368(&qword_100983660, &type metadata accessor for ArcadeDiffablePagePresenter);

      v362 = sub_10054A47C(v359, v360, v361, &_swiftEmptyArrayStorage, 0x6150656461637261, 0xEA00000000006567);

      v363 = objc_allocWithZone(type metadata accessor for ArcadeDiffablePageViewController());
      sub_10041C770(v360, v362);

      swift_unknownObjectRelease();

      (*(v355 + 8))(v356, v357);
      goto LABEL_85;
    case 0xEu:
      v176 = *(v76 + *(sub_10002849C(&qword_100983638) + 64));
      v177 = v647;
      sub_1000476A0(v76, v647, &qword_100982460);
      sub_100031660(v177, v646, &qword_100982460);
      type metadata accessor for ArcadeSubscribePresenter();
      swift_allocObject();

      v178 = v653;

      v179 = v658;
      v180 = ArcadeSubscribePresenter.init(objectGraph:subscriptionManager:url:sidepack:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v181 = sub_1003C9368(&qword_100983640, &type metadata accessor for ArcadeSubscribePresenter);

      v182 = sub_10054A47C(v178, v180, v181, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100810DF0);

      v183 = objc_allocWithZone(type metadata accessor for ArcadeSubscribeViewController());
      sub_1005F56BC(v180, v176, v182);

      swift_unknownObjectRelease();

      goto LABEL_77;
    case 0xFu:
      v272 = *v76;
      v273 = v651;

      v274 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0x6E6974656B72616DLL, 0xED00006D65744967);
      v275 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
      sub_1005A31D0(v272, v650, v273, v274);
      goto LABEL_83;
    case 0x10u:

      v151 = sub_10002849C(&qword_100983648);
      v152 = v649;
      v153 = v76 + *(v151 + 48);
      v154 = v648;
      v155 = v652;
      (*(v649 + 32))(v648, v153, v652);
      type metadata accessor for PageFacetsPresenter();
      swift_allocObject();
      PageFacetsPresenter.init()();
      v156 = v576;
      static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)();
      (*(v152 + 16))(v645, v154, v155);
      v157 = v662;
      v158 = v661;
      (*(v662 + 16))(v574, v156, v661);
      type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter();
      swift_allocObject();
      v159 = v653;

      v160 = ArcadeSeeAllGamesDiffablePagePresenter.init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)();
      v161 = sub_1003C9368(&unk_100983650, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
      sub_10002849C(&qword_1009844F0);
      v162 = swift_allocObject();
      *(v162 + 16) = v644;

      static Dependency.satisfying<A>(_:with:)();
      v163 = sub_10054A47C(v159, v160, v161, v162, 0xD000000000000015, 0x8000000100810E10);

      v164 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController());
      sub_100283E4C(v160, v163);

      swift_unknownObjectRelease();

      v165 = *(v157 + 8);
      v165(v156, v158);
      (*(v152 + 8))(v648, v652);
      sub_100007000(v675);
      v165(v665, v158);
      return;
    case 0x11u:
      v307 = sub_10002849C(&qword_100975958);
      v308 = *(v307 + 64);
      v309 = v593;
      v310 = v630;
      v311 = v594;
      (*(v593 + 32))(v630, v76 + *(v307 + 48), v594);
      v312 = v649;
      v313 = v648;
      v314 = v652;
      (*(v649 + 32))(v648, v76 + v308, v652);
      (*(v309 + 16))(v582, v310, v311);
      (*(v312 + 16))(v645, v313, v314);
      type metadata accessor for ArcadeWelcomePagePresenter();
      swift_allocObject();

      v315 = v653;

      v316 = ArcadeWelcomePagePresenter.init(objectGraph:contentType:welcomePage:url:)();
      v317 = sub_1003C9368(&qword_100983630, &type metadata accessor for ArcadeWelcomePagePresenter);

      v318 = sub_10054A47C(v315, v316, v317, &_swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100810DD0);

      v319 = objc_allocWithZone(type metadata accessor for ArcadeWelcomeViewController());
      sub_100545918(v316, v318);

      swift_unknownObjectRelease();

      (*(v312 + 8))(v313, v314);
      (*(v309 + 8))(v630, v311);
      goto LABEL_85;
    case 0x12u:
      type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter();
      swift_allocObject();
      v366 = v653;

      v367 = ArcadeDownloadPackCategoriesPagePresenter.init(objectGraph:subscriptionStatus:)();
      v368 = sub_1003C9368(&unk_100983620, &type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter);

      v369 = sub_10054A47C(v366, v367, v368, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100810DA0);

      v370 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoriesViewController());
      sub_100549970(v367, v369);
      goto LABEL_83;
    case 0x13u:
    case 0x34u:

      swift_unknownObjectRelease();

      sub_100007000(v675);
      (*(v662 + 8))(v665, v661);
      return;
    case 0x14u:
      v320 = v649;
      (*(v649 + 32))(v648, v76, v652);
      v321 = v653;
      inject<A, B>(_:from:)();
      v322 = ASKBagContract.enabledAdPlacements.getter();

      v323 = v628;
      v324 = v627;
      v325 = v629;
      (*(v628 + 104))(v627, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v629);
      LODWORD(v654) = sub_1003B70B0(v324, v322, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_1009837A0, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

      (*(v323 + 8))(v324, v325);
      v326 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v327 = swift_allocObject();
      type metadata accessor for PromotedContentMetricCollector();
      *(v327 + 16) = static PromotedContentMetricCollector.shared.getter();
      *(&v673 + 1) = v326;
      v328 = sub_1003C9368(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
      v674 = v328;
      *&v672 = v327;
      type metadata accessor for AdvertRotationControllerProvider();
      swift_allocObject();

      v329 = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
      v655 = v329;
      sub_10002849C(&qword_1009844F0);
      v330 = swift_allocObject();
      *(v330 + 16) = v644;
      *&v672 = v329;
      static Dependency.satisfying<A>(_:with:)();
      type metadata accessor for TodayCardTriggerController();
      inject<A, B>(_:from:)();
      v331 = [objc_opt_self() sharedApplication];
      [v331 launchedToTest];

      v332 = v647;
      v333 = v652;
      (*(v320 + 16))(v647, v648, v652);
      (*(v320 + 56))(v332, 0, 1, v333);
      *(&v673 + 1) = v326;
      v674 = v328;
      *&v672 = v327;
      type metadata accessor for TodayDiffablePagePresenter();
      swift_allocObject();

      v334 = v656;

      v335 = TodayDiffablePagePresenter.init(objectGraph:pageUrl:triggerController:supportsFastImpressions:accountStore:shouldUpdateOnAccountChange:advertLifecycleMetricsReporter:isRunningPPTs:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v336 = sub_1003C9368(&qword_1009835D0, &type metadata accessor for TodayDiffablePagePresenter);

      v337 = sub_10054A47C(v321, v335, v336, v330, 0x6761507961646F74, 0xE900000000000065);

      v338 = objc_allocWithZone(type metadata accessor for TodayDiffablePageViewController());
      sub_1005633B8(v335, v337);

      swift_unknownObjectRelease();

      v284 = *(v320 + 8);
      v285 = v648;
      v301 = v652;
LABEL_50:
      v284(v285, v301);
      goto LABEL_85;
    case 0x15u:
      v349 = sub_10002849C(&qword_1009835C0);
      v340 = v647;
      sub_1000476A0(v76 + *(v349 + 48), v647, &qword_100982460);
      sub_100031660(v340, v646, &qword_100982460);
      type metadata accessor for ArticleDiffablePagePresenter();
      swift_allocObject();

      v350 = v653;

      v351 = ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();

      v352 = sub_1003C9368(&qword_1009835C8, &type metadata accessor for ArticleDiffablePagePresenter);

      v353 = sub_10054A47C(v350, v351, v352, &_swiftEmptyArrayStorage, 0x50656C6369747261, 0xEB00000000656761);

      sub_10030969C(v351, v353, v610 & 1);

      swift_unknownObjectRelease();

LABEL_53:

      v122 = v340;
      goto LABEL_60;
    case 0x16u:
      v415 = *v76;
      inject<A, B>(_:from:)();
      v416 = v672;
      v417 = ASKBagContract.familyPurchasesEnabled.getter();
      if (v415)
      {
        v655 = v416;
        sub_10002849C(&qword_100973210);
        v418 = swift_allocObject();
        *(v418 + 1) = xmmword_1007B0B70;
        *(v418 + 4) = v415;
        v419 = v415;
LABEL_104:
        v652 = v415;
        v651 = v419;
        v517 = v653;
        inject<A, B>(_:from:)();
        sub_10002849C(&qword_1009835E8);
        v670[0] = v418;
        v518 = v618;
        Dependency.init<A>(satisfying:with:)();
        dispatch thunk of BaseObjectGraph.adding(dependency:)();
        v519 = *(v643 + 8);
        v520 = v619;
        v519(v518, v619);
        type metadata accessor for ASDPurchaseHistoryContext(0);
        v670[0] = 1;
        Dependency.init<A>(satisfying:with:)();
        dispatch thunk of BaseObjectGraph.adding(dependency:)();

        v519(v518, v520);
        LOBYTE(v670[0]) = 1;
        Dependency.init<A>(satisfying:with:)();
        v521 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
        v654 = v521;

        v519(v518, v520);
        v522 = sub_10074EA28(v521);
        v650 = v523;
        inject<A, B>(_:from:)();
        v524 = v670[0];
        sub_10002C0AC(&v672, v670);
        sub_10002849C(&qword_1009835D8);
        v525 = v620;
        v526 = *(v620 + 72);
        v527 = (*(v620 + 80) + 32) & ~*(v620 + 80);
        v528 = swift_allocObject();
        *(v528 + 16) = xmmword_1007B1890;
        v529 = v528 + v527;
        v530 = *(v525 + 104);
        v531 = v621;
        v530(v529, enum case for PurchasesContentMode.all(_:), v621);
        v530(v529 + v526, enum case for PurchasesContentMode.notOnDevice(_:), v531);
        type metadata accessor for PurchasesContentPresenter();
        swift_allocObject();

        v532 = v651;
        v533 = v524;
        swift_unknownObjectRetain();
        v534 = v650;
        v535 = PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)();
        v536 = sub_1003C9368(&qword_1009835E0, &type metadata accessor for PurchasesContentPresenter);
        sub_10002849C(&qword_1009844F0);
        v537 = swift_allocObject();
        *(v537 + 16) = v644;
        v670[0] = v522;
        v670[1] = v534;

        static Dependency.satisfying<A>(_:with:)();
        v538 = sub_10054A47C(v517, v535, v536, v537, 0x6573616863727570, 0xED00006567615073);

        v539 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
        sub_10044B830(v535, v538);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_100007000(&v672);
        goto LABEL_85;
      }

      if ((v417 & 1) == 0)
      {
        v655 = v416;
        v419 = 0;
        v418 = &_swiftEmptyArrayStorage;
        goto LABEL_104;
      }

      v512 = v653;
      inject<A, B>(_:from:)();
      type metadata accessor for PurchasesPresenter();
      swift_allocObject();

      v513 = PurchasesPresenter.init(objectGraph:bag:)();
      v514 = sub_1003C9368(&unk_1009835F0, &type metadata accessor for PurchasesPresenter);
      v515 = sub_10054A47C(v512, v513, v514, &_swiftEmptyArrayStorage, 0xD000000000000014, 0x8000000100810D80);
      v516 = objc_allocWithZone(type metadata accessor for PurchasesLoadingViewController());
      sub_100424DE0(v513, v515);

      swift_unknownObjectRelease();

LABEL_65:

LABEL_84:

      goto LABEL_85;
    case 0x17u:
      v434 = *v76;
      v435 = v76[1];
      v436 = v76[2];
      v437 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0x6761506775626564, 0xE900000000000065);
      v438 = objc_allocWithZone(type metadata accessor for DebugMenuViewController());
      sub_10057FD78(v437, v434, v435, v436);
      goto LABEL_83;
    case 0x18u:
      sub_10002849C(&qword_1009835B0);
      v258 = v649;
      v259 = v648;
      v260 = v652;
      (*(v649 + 32))(v648, v76, v652);
      v261 = v653;
      inject<A, B>(_:from:)();
      (*(v258 + 16))(v645, v259, v260);
      type metadata accessor for InAppPurchaseInstallPagePresenter();
      swift_allocObject();

      swift_unknownObjectRetain();

      v262 = InAppPurchaseInstallPagePresenter.init(objectGraph:sidepack:pageUrl:appStateController:)();
      v263 = sub_1003C9368(&qword_1009835B8, &type metadata accessor for InAppPurchaseInstallPagePresenter);

      v264 = sub_10054A47C(v261, v262, v263, &_swiftEmptyArrayStorage, 0xD000000000000018, 0x8000000100810D40);

      v265 = objc_allocWithZone(type metadata accessor for InAppPurchaseInstallPageViewController());
      sub_10022F2DC(v262, v264);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v258 + 8))(v259, v260);
      goto LABEL_85;
    case 0x19u:
      v228 = *(sub_10002849C(&unk_1009835A0) + 48);
      v229 = v649;
      v230 = *(v649 + 32);
      v231 = v622;
      v232 = v76;
      v233 = v652;
      v230(v622, v232, v652);
      (*(v624 + 32))(v623, v94 + v228, v625);
      inject<A, B>(_:from:)();
      v234 = v615;
      (*(v229 + 16))(v615, v231, v233);
      swift_getObjectType();
      dispatch thunk of AppStateController.stateMachine(forApp:)();
      swift_getObjectType();
      v235 = v598;
      dispatch thunk of AppStateMachine.currentState.getter();
      v236 = v595;
      v237 = v596;
      if ((*(v595 + 88))(v235, v596) != enum case for LegacyAppState.openable(_:))
      {
        (*(v236 + 8))(v235, v237);
        goto LABEL_112;
      }

      v655 = v230;
      (*(v236 + 96))(v235, v237);
      v238 = *&v235[*(sub_10002849C(&unk_100976520) + 48)];
      v239 = type metadata accessor for OpenableDestination();
      (*(*(v239 - 8) + 8))(v235, v239);
      v240 = v613;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v241 = v568;
      v242 = v567;
      v243 = v569;
      (*(v568 + 104))(v567, enum case for RateAction.Parameter.version(_:), v569);
      RateAction.Parameter.rawValue.getter();
      (*(v241 + 8))(v242, v243);
      v244 = [v238 stringValue];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v245 = v240;
      URLQueryItem.init(name:value:)();

      v246 = *(v571 + 48);
      v247 = v572;
      v248 = v246(v240, 1, v572);
      v249 = v570;
      if (!v248)
      {
        v250 = URLComponents.queryItems.modify();
        if (*v251)
        {
          v252 = v251;
          v654 = v250;
          (*(v573 + 16))(v564, v612, v249);
          v253 = *v252;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v252 = v253;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v253 = sub_1000348CC(0, v253[2] + 1, 1, v253);
            *v252 = v253;
          }

          v256 = v253[2];
          v255 = v253[3];
          v257 = (v256 + 1);
          if (v256 >= v255 >> 1)
          {
            v651 = (v256 + 1);
            v559 = sub_1000348CC(v255 > 1, v256 + 1, 1, v253);
            v257 = v651;
            v253 = v559;
            *v252 = v559;
          }

          v247 = v572;
          v253[2] = v257;
          (*(v573 + 32))(v253 + ((*(v573 + 80) + 32) & ~*(v573 + 80)) + *(v573 + 72) * v256, v564, v249);
          v654(&v672, 0);
        }

        else
        {
          v250(&v672, 0);
          v247 = v572;
        }

        v245 = v613;
      }

      if (v246(v245, 1, v247))
      {
        (*(v573 + 8))(v612, v249);

        v540 = v566;
        (*(v649 + 56))(v566, 1, 1, v652);
LABEL_110:
        sub_10002B894(v540, &qword_100982460);
        v234 = v615;
        goto LABEL_111;
      }

      v541 = v571;
      v542 = v563;
      (*(v571 + 16))(v563, v245, v247);
      v540 = v566;
      URLComponents.url.getter();

      (*(v541 + 8))(v542, v247);
      (*(v573 + 8))(v612, v249);
      v543 = v649;
      v544 = v652;
      if ((*(v649 + 48))(v540, 1, v652) == 1)
      {
        goto LABEL_110;
      }

      v234 = v615;
      (*(v543 + 8))(v615, v544);
      (v655)(v234, v540, v544);
LABEL_111:
      sub_10002B894(v613, &unk_100983520);
LABEL_112:
      v545 = objc_allocWithZone(type metadata accessor for ComposeReviewViewController());
      URL._bridgeToObjectiveC()(v546);
      v548 = v547;
      v549 = [v545 initWithCompositionURL:v547];

      if (v549)
      {
        v550 = v549;
        v551 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0xD000000000000010, 0x8000000100810D20);
        v552 = type metadata accessor for ComposeReviewDelegate();
        v553 = objc_allocWithZone(v552);
        *&v553[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference] = 0;
        *&v553[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_objectGraph] = v551;
        v671.receiver = v553;
        v671.super_class = v552;
        v554 = objc_msgSendSuper2(&v671, "init");
        v555 = *&v554[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference];
        *&v554[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference] = v554;
        v556 = v554;

        [v550 setDelegate:v556];
        [v550 prepareWithCompletionBlock:0];

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v557 = *(v649 + 8);
        v558 = v652;
        v557(v234, v652);
        (*(v624 + 8))(v623, v625);
        v557(v622, v558);
LABEL_85:
        sub_100007000(v675);
        (*(v662 + 8))(v665, v661);
      }

      else
      {
        __break(1u);
      }

      return;
    case 0x1Au:
      type metadata accessor for ReviewsDiffablePagePresenter();
      swift_allocObject();
      v469 = v653;

      v470 = ReviewsDiffablePagePresenter.init(objectGraph:reviewsPage:preferSelectedActionTitles:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v471 = sub_1003C9368(&qword_100983598, &type metadata accessor for ReviewsDiffablePagePresenter);

      v472 = sub_10054A47C(v469, v470, v471, &_swiftEmptyArrayStorage, 0x5073776569766572, 0xEB00000000656761);

      v473 = objc_allocWithZone(type metadata accessor for ReviewsDiffablePageViewController());
      sub_10006953C(v470, v472);
      goto LABEL_80;
    case 0x1Bu:
      v134 = v599;
      sub_1000476A0(v76, v599, &qword_100982460);
      v135 = v578;
      sub_100031660(v134, v578, &qword_100982460);
      v136 = v649;
      v137 = v652;
      if ((*(v649 + 48))(v135, 1, v652) == 1)
      {
        sub_10002B894(v135, &qword_100982460);
        v138 = type metadata accessor for ASDInAppPurchaseStateProvider();
        swift_allocObject();
        swift_unknownObjectRetain();
        v139 = v656;
        v140 = ASDInAppPurchaseStateProvider.init()();
        *(&v673 + 1) = v138;
        v674 = &protocol witness table for ASDInAppPurchaseStateProvider;
        *&v672 = v140;
        type metadata accessor for AccountPresenter();
        swift_allocObject();

        v141 = v653;

        v142 = v658;
        v143 = v134;
        v144 = v659;
        v145 = AccountPresenter.init(objectGraph:accountStore:appStateController:iapStateProvider:restrictions:profilePictureDiameter:arcadeSubscriptionManager:gameCenterFriendRequestCoordinator:)();
        v146 = sub_1003C9368(&qword_100983600, &type metadata accessor for AccountPresenter);

        v147 = sub_10054A47C(v141, v145, v146, &_swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

        v148 = objc_allocWithZone(type metadata accessor for AccountViewController());
        sub_100653BDC(v145, v147);

        swift_unknownObjectRelease();

        v122 = v143;
LABEL_60:
        sub_10002B894(v122, &qword_100982460);
      }

      else
      {
        v479 = v565;
        (*(v136 + 32))(v565, v135, v137);
        v480 = v647;
        (*(v136 + 16))(v647, v479, v137);
        (*(v136 + 56))(v480, 0, 1, v137);
        type metadata accessor for GenericAccountPagePresenter();
        swift_allocObject();
        v481 = v653;

        v482 = GenericAccountPagePresenter.init(objectGraph:url:page:)();
        v483 = sub_1003C9368(&qword_100978028, &type metadata accessor for GenericAccountPagePresenter);

        v484 = sub_10054A47C(v481, v482, v483, &_swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100805770);

        v485 = type metadata accessor for GenericAccountPageViewController();
        v486 = objc_allocWithZone(v485);
        *&v486[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController] = 0;
        *&v486[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter] = v482;
        *&v486[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph] = v484;
        v669.receiver = v486;
        v669.super_class = v485;
        objc_msgSendSuper2(&v669, "initWithStyle:", 2);

        swift_unknownObjectRelease();

        (*(v136 + 8))(v479, v137);
        sub_10002B894(v134, &qword_100982460);
      }

      goto LABEL_85;
    case 0x1Cu:
      v439 = v585;
      sub_1000476A0(v76, v585, &qword_100982460);
      v440 = v579;
      sub_100031660(v439, v579, &qword_100982460);
      v441 = v649;
      v442 = v652;
      if ((*(v649 + 48))(v440, 1, v652) == 1)
      {
        v444 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v443);
        v444 = v503;
        (*(v441 + 8))(v440, v442);
      }

      v504 = v662;
      v505 = v661;
      v506 = v659;
      v507 = v658;
      v508 = [objc_allocWithZone(type metadata accessor for AccountPageViewController()) initWithAccountURL:v444];

      v509 = objc_allocWithZone(type metadata accessor for AccountPageViewControllerDelegate());
      v510 = v508;
      v511 = [v509 init];
      [v510 setDelegate:v511];

      [v510 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      sub_10002B894(v439, &qword_100982460);
      sub_100007000(v675);
      (*(v504 + 8))(v665, v505);
      return;
    case 0x1Du:
      v445 = *(sub_10002849C(&qword_100983578) + 48);
      v446 = v649;
      v447 = v648;
      v448 = v652;
      (*(v649 + 32))(v648, v76, v652);
      v449 = v76 + v445;
      v450 = v608;
      sub_1000476A0(v449, v608, &qword_100983518);
      v451 = v653;
      BaseObjectGraph.optional<A>(_:)();
      (*(v446 + 16))(v645, v447, v448);
      v452 = v450;
      sub_100031660(v450, v600, &qword_100983518);
      type metadata accessor for MSODiffablePagePresenter();
      swift_allocObject();

      v453 = MSODiffablePagePresenter.init(objectGraph:personalizationProvider:pageUrl:context:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v454 = sub_1003C9368(&qword_100983580, &type metadata accessor for MSODiffablePagePresenter);

      v455 = sub_10054A47C(v451, v453, v454, &_swiftEmptyArrayStorage, 0x656761506F736DLL, 0xE700000000000000);

      v456 = objc_allocWithZone(type metadata accessor for MSODiffablePageViewController());
      *&v456[qword_1009CE058] = 0x3FF0000000000000;
      *&v456[qword_100974F90] = 0;
      *&v456[qword_100974F98] = 0x4034000000000000;
      v456[qword_1009CE060] = 0;
      *&v456[qword_100974FA0] = 0;
      sub_1003BDAA4(v453, v455);

      swift_unknownObjectRelease();

      sub_10002B894(v452, &qword_100983518);
      (*(v446 + 8))(v648, v448);
      goto LABEL_85;
    case 0x1Eu:
      (*(v649 + 56))(v647, 1, 1, v652);
      type metadata accessor for GenericPagePresenter();
      v672 = 0u;
      v673 = 0u;
      v674 = 0;
      swift_allocObject();

      v390 = v653;

      v391 = GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v392 = sub_1003C9368(&qword_100983558, &type metadata accessor for GenericPagePresenter);

      v393 = sub_10054A47C(v390, v391, v392, &_swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100810CC0);

      v394 = objc_allocWithZone(type metadata accessor for VersionHistoryViewController());
      sub_1000557D0(v391, v393);

      swift_unknownObjectRelease();

      goto LABEL_84;
    case 0x1Fu:
      v302 = *v76;
      type metadata accessor for OnboardingPresenter();
      v303 = swift_allocObject();
      *(v303 + 16) = v302;
      *(v303 + 24) = v663;

      *(v303 + 32) = sub_10061E708(v304, v302);
      v305 = objc_allocWithZone(type metadata accessor for OnboardingViewController());

      sub_10036E328(v306, sub_1003C02A8, 0);
      if (qword_10096DA10 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakAssign();
LABEL_80:

      goto LABEL_83;
    case 0x20u:
      v184 = *v76;
      v185 = v635;
      (*(v632 + 104))(v635, enum case for Shelf.ContentType.reviews(_:), v633);

      v186 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0xD000000000000010, 0x8000000100810CA0);
      v187 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v188 = &unk_100983808;
      v189 = &type metadata accessor for Review;
      v190 = &type metadata accessor for Review;
      goto LABEL_63;
    case 0x21u:
      v184 = *v76;
      v185 = v635;
      (*(v632 + 104))(v635, enum case for Shelf.ContentType.editorsChoice(_:), v633);

      v186 = sub_10054A47C(v653, 0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x8000000100810C80);
      v187 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v188 = &unk_100983810;
      v189 = &type metadata accessor for EditorsChoice;
      v190 = &type metadata accessor for EditorsChoice;
LABEL_63:
      v395 = sub_1003C1408(v184, v185, v186, v187, v189, v188, v190);

      [v395 setModalPresentationStyle:4];

      goto LABEL_83;
    case 0x22u:
      v149 = *v76;
      v150 = v76[1];
      [objc_allocWithZone(GKLeaderboardScoreViewController) initWithGameRecord:v150 leaderboard:*v76];

      swift_unknownObjectRelease();

      goto LABEL_84;
    case 0x23u:
      type metadata accessor for PlayerProfileViewController();
      sub_100031660(v636, &v672, &unk_100981880);
      PlayerProfileViewController.__allocating_init(playerId:navigationProxy:objectGraph:)();
      goto LABEL_83;
    case 0x24u:
      v126 = *v76;
      v125 = v76[1];
      v127 = enum case for GameLayerAchievementsEntryPoint.achievementsByGame(_:);
      v128 = type metadata accessor for GameLayerAchievementsEntryPoint();
      v129 = *(v128 - 8);
      v130 = v607;
      (*(v129 + 104))(v607, v127, v128);
      (*(v129 + 56))(v130, 0, 1, v128);
      if (*(v125 + 16) == 1)
      {
      }

      type metadata accessor for GameLayerAchievementsPresenter();
      swift_allocObject();
      v131 = v126;
      GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)();
      v132 = type metadata accessor for AchievementsTheme();
      (*(*(v132 - 8) + 56))(v609, 1, 1, v132);
      v133 = objc_allocWithZone(type metadata accessor for GameLayerAchievementsViewController());
      GameLayerAchievementsViewController.init(presenter:theme:objectGraph:)();

      goto LABEL_83;
    case 0x25u:
      v115 = sub_10002849C(&unk_10097CCB0);
      v116 = v647;
      sub_1000476A0(v76 + *(v115 + 48), v647, &qword_100982460);
      sub_100031660(v116, v646, &qword_100982460);
      type metadata accessor for GenericPagePresenter();
      v672 = 0u;
      v673 = 0u;
      v674 = 0;
      swift_allocObject();

      v117 = v653;

      v118 = GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v119 = sub_1003C9368(&qword_100983558, &type metadata accessor for GenericPagePresenter);

      v120 = sub_10054A47C(v117, v118, v119, &_swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100810C60);

      v121 = objc_allocWithZone(type metadata accessor for PrivacyDetailViewController());
      sub_100623AEC(v118, v120);

      swift_unknownObjectRelease();

      v122 = v116;
      goto LABEL_60;
    case 0x26u:
      v457 = sub_10002849C(&unk_10097CCB0);
      v177 = v647;
      sub_1000476A0(v76 + *(v457 + 48), v647, &qword_100982460);
      sub_100031660(v177, v646, &qword_100982460);
      type metadata accessor for GenericPagePresenter();
      v672 = 0u;
      v673 = 0u;
      v674 = 0;
      swift_allocObject();

      v458 = v653;

      v459 = GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v460 = sub_1003C9368(&qword_100983558, &type metadata accessor for GenericPagePresenter);

      v461 = sub_10054A47C(v458, v459, v460, &_swiftEmptyArrayStorage, 0xD000000000000016, 0x8000000100810C40);

      v462 = objc_allocWithZone(type metadata accessor for PrivacyDefinitionsViewController());
      type metadata accessor for PrivacyDefinitionsDataSource();
      swift_allocObject();
      v463 = swift_retain_n();
      v464 = sub_1003C0D24(v463);

      v465 = sub_1003B71B8(v459, v464, v461);
      sub_1003C9368(&unk_100983560, type metadata accessor for PrivacyDefinitionsViewController);
      v466 = v465;

      v467 = v466;
      dispatch thunk of BaseGenericPagePresenter.view.setter();

      v467[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
      v468 = [v467 navigationItem];
      [v468 setLargeTitleDisplayMode:2];

      swift_unknownObjectRelease();

LABEL_77:
      v122 = v177;
      goto LABEL_60;
    case 0x27u:
      v420 = sub_10002849C(&unk_10097CCB0);
      v421 = v647;
      sub_1000476A0(v76 + *(v420 + 48), v647, &qword_100982460);
      sub_100031660(v421, v646, &qword_100982460);
      type metadata accessor for GenericDiffablePagePresenter();
      swift_allocObject();

      v422 = v653;

      v423 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v424 = sub_1003C9368(&qword_100983550, &type metadata accessor for GenericDiffablePagePresenter);

      v425 = sub_10054A47C(v422, v423, v424, &_swiftEmptyArrayStorage, 0xD000000000000018, 0x8000000100810C20);

      v426 = objc_allocWithZone(type metadata accessor for AccessibilityDetailsViewController());
      *&v426[qword_1009CE058] = 0x3FF0000000000000;
      *&v426[qword_100974F90] = 0;
      *&v426[qword_100974F98] = 0x4034000000000000;
      v426[qword_1009CE060] = 0;
      *&v426[qword_100974FA0] = 0;
      sub_1003BBCA8(v423, v425);

      swift_unknownObjectRelease();

      v122 = v421;
      goto LABEL_60;
    case 0x28u:
      v207 = v76[1];
      type metadata accessor for AppEventDetailPagePresenter();
      swift_allocObject();
      v208 = v653;

      v209 = AppEventDetailPagePresenter.init(objectGraph:appEventDetailPage:)();

      dispatch thunk of BasePresenter.referrer.setter();

      v210 = sub_1003C9368(&unk_100983540, &type metadata accessor for AppEventDetailPagePresenter);

      v211 = sub_10054A47C(v208, v209, v210, &_swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100810C00);

      v212 = objc_allocWithZone(type metadata accessor for AppEventDetailPageViewController());
      v213 = v207;

      sub_100171DDC(v209, v211, v207);
      v215 = v214;
      [v215 setModalPresentationStyle:4];
      v216 = OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_containerTransitioningDelegate;
      goto LABEL_71;
    case 0x29u:
    case 0x2Au:
      v427 = v76[1];
      type metadata accessor for AppPromotionDetailPagePresenter();
      swift_allocObject();
      v428 = v653;

      v429 = AppPromotionDetailPagePresenter.init(objectGraph:appPromotionDetailPage:)();

      dispatch thunk of BasePresenter.referrer.setter();

      v430 = sub_1003C9368(&qword_100983538, &type metadata accessor for AppPromotionDetailPagePresenter);

      v431 = sub_10054A47C(v428, v429, v430, &_swiftEmptyArrayStorage, 0xD000000000000016, 0x8000000100810BE0);

      v432 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageViewController());
      v213 = v427;

      sub_10017D170(v429, v431, v427);
      v215 = v433;
      [v215 setModalPresentationStyle:4];
      v216 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_containerTransitioningDelegate;
LABEL_71:
      [v215 setTransitioningDelegate:*&v215[v216]];

      swift_unknownObjectRelease();

      sub_100007000(v675);
      (*(v662 + 8))(v665, v661);

      return;
    case 0x2Bu:
      v105 = *v76;
      v106 = sub_10002849C(&qword_100983570);
      v107 = v605;
      v108 = v604;
      v109 = v606;
      (*(v605 + 32))(v604, v76 + *(v106 + 48), v606);
      type metadata accessor for ComponentViewOverflowViewController();
      if (swift_dynamicCastClass())
      {
        v110 = v105;
        sub_1002AA6B4(v108);

        v111 = v659;
        v112 = v110;
        v113 = v662;
        v114 = v661;
      }

      else
      {
        v113 = v662;
        v114 = v661;
        v112 = v659;
        v111 = v658;
      }

      swift_unknownObjectRelease();

      (*(v107 + 8))(v108, v109);
      sub_100007000(v675);
      (*(v113 + 8))(v665, v114);
      return;
    case 0x2Cu:
      v166 = type metadata accessor for ASDInAppPurchaseStateProvider();
      swift_allocObject();
      swift_unknownObjectRetain();
      v167 = v656;
      v168 = ASDInAppPurchaseStateProvider.init()();
      *(&v673 + 1) = v166;
      v674 = &protocol witness table for ASDInAppPurchaseStateProvider;
      *&v672 = v168;
      type metadata accessor for AccountPresenter();
      swift_allocObject();

      v169 = v653;

      v170 = v658;
      v171 = v659;
      v172 = AccountPresenter.init(objectGraph:accountStore:appStateController:iapStateProvider:restrictions:profilePictureDiameter:arcadeSubscriptionManager:gameCenterFriendRequestCoordinator:)();
      v173 = sub_1003C9368(&qword_100983600, &type metadata accessor for AccountPresenter);

      v174 = sub_10054A47C(v169, v172, v173, &_swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

      v175 = objc_allocWithZone(type metadata accessor for AccountViewController());
      sub_100653BDC(v172, v174);

      swift_unknownObjectRelease();

      goto LABEL_84;
    case 0x2Du:
      type metadata accessor for ASDPurchaseHistoryContext(0);
      *&v672 = 1;
      v396 = v618;
      Dependency.init<A>(satisfying:with:)();
      v397 = v653;
      dispatch thunk of BaseObjectGraph.adding(dependency:)();
      v398 = *(v643 + 8);
      v399 = v619;
      v398(v396, v619);
      LOBYTE(v672) = 1;
      Dependency.init<A>(satisfying:with:)();
      v400 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
      v655 = v400;

      v398(v396, v399);
      v401 = sub_10074EA28(v400);
      v654 = v402;
      BaseObjectGraph.inject<A>(_:)();
      v652 = v401;
      swift_unknownObjectRetain();
      BaseObjectGraph.inject<A>(_:)();
      sub_10002849C(&qword_1009835D8);
      v403 = v620;
      v404 = (*(v620 + 80) + 32) & ~*(v620 + 80);
      v405 = swift_allocObject();
      *(v405 + 16) = v644;
      v406 = enum case for PurchasesContentMode.hidden(_:);
      v407 = *(v403 + 104);
      v408 = v621;
      v407(v405 + v404, enum case for PurchasesContentMode.hidden(_:), v621);
      type metadata accessor for PurchasesContentPresenter();
      swift_allocObject();

      v409 = v654;
      v410 = PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)();
      v407(v597, v406, v408);
      PurchasesContentPresenter.mode.setter();
      v411 = sub_1003C9368(&qword_1009835E0, &type metadata accessor for PurchasesContentPresenter);
      sub_10002849C(&qword_1009844F0);
      v412 = swift_allocObject();
      *(v412 + 16) = v644;
      *&v672 = v652;
      *(&v672 + 1) = v409;

      static Dependency.satisfying<A>(_:with:)();
      v413 = sub_10054A47C(v397, v410, v411, v412, 0xD000000000000013, 0x8000000100810D60);

      v414 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
      sub_10044B830(v410, v413);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_65;
    case 0x2Eu:
      type metadata accessor for ComingSoonViewController();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      goto LABEL_83;
    case 0x2Fu:
      type metadata accessor for TodayCardTriggerController();
      BaseObjectGraph.optional<A>(_:)();
      v123 = v672;
      v124 = objc_allocWithZone(type metadata accessor for DebugTodayCardTriggerViewController());
      sub_100177934(v123);
      goto LABEL_83;
    case 0x30u:
      type metadata accessor for StorefrontPickerPagePresenter();
      swift_allocObject();

      v191 = StorefrontPickerPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)();
      v192 = objc_allocWithZone(type metadata accessor for DebugStorefrontPickerViewController());
      sub_1002CC748(v191);
      goto LABEL_83;
    case 0x31u:
      v203 = ASKBagContract.amsBag.getter();
      v204 = objc_allocWithZone(AMSUINotificationSettingsViewController);
      v205 = String._bridgeToObjectiveC()();
      [v204 initWithIdentifier:v205 bag:v203];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_84;
    case 0x32u:
      v103 = [objc_allocWithZone(GKDashboardRequest) init];
      [v103 setState:4];
      type metadata accessor for JetDashboardViewController();
      (*(v601 + 104))(v603, enum case for DashboardLaunchContext.appStore(_:), v602);
      sub_100031660(v636, &v672, &unk_100981880);
      v104 = v103;
      JetDashboardViewController.__allocating_init(launchContext:request:navigationProxy:)();

      goto LABEL_83;
    case 0x33u:
      type metadata accessor for PersonalizationTransparencyPagePresenter();
      swift_allocObject();
      v474 = v653;

      v475 = PersonalizationTransparencyPagePresenter.init(objectGraph:)();
      v476 = sub_1003C9368(&qword_100983530, &type metadata accessor for PersonalizationTransparencyPagePresenter);

      v477 = sub_10054A47C(v474, v475, v476, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x8000000100810BC0);

      v478 = objc_allocWithZone(type metadata accessor for PersonalizationTransparencyPageViewController());
      sub_10019FE64(v475, v477);
LABEL_83:

      swift_unknownObjectRelease();

      goto LABEL_84;
    default:
      v95 = sub_10002849C(&qword_100983698);
      v655 = *(v76 + v95[12]);
      v648 = *(v76 + v95[20]);
      v654 = *(v76 + v95[24]);
      (*(v649 + 32))(v641, v76, v652);
      LODWORD(v647) = ASKBagContract.isProductPageDownloadingOrderingEnabled.getter();
      ASKBagContract.productPageDownloadingOrderingTimeout.getter();
      v96 = ASKBagContract.enabledAdPlacements.getter();
      v97 = v628;
      v98 = *(v628 + 104);
      v99 = v627;
      v100 = v629;
      v98(v627, enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:), v629);
      v101 = sub_1003B70B0(v99, v96, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_1009837A0, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

      v102 = *(v97 + 8);
      v102(v99, v100);
      if (v101)
      {
        LODWORD(v645) = 1;
      }

      else
      {
        v487 = ASKBagContract.enabledAdPlacements.getter();
        v98(v99, enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:), v100);
        LODWORD(v645) = sub_1003B70B0(v99, v487, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_1009837A0, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

        v102(v99, v100);
      }

      v488 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v489 = swift_allocObject();
      type metadata accessor for PromotedContentMetricCollector();
      *(v489 + 16) = static PromotedContentMetricCollector.shared.getter();
      *(&v673 + 1) = v488;
      v490 = sub_1003C9368(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
      v674 = v490;
      *&v672 = v489;
      type metadata accessor for AdvertRotationControllerProvider();
      swift_allocObject();
      v491 = v489;

      v492 = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
      v646 = v492;
      sub_10002849C(&qword_1009844F0);
      v493 = swift_allocObject();
      *(v493 + 16) = v644;
      *&v672 = v492;
      static Dependency.satisfying<A>(_:with:)();
      (*(v649 + 16))(v586, v641, v652);
      sub_10002C0AC(v675, &v672);
      v670[3] = v575;
      v670[4] = &protocol witness table for Restrictions;
      v670[0] = v664;

      v494 = UITraitCollection.isSizeClassCompact.getter();
      v495 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
      if ((v494 & 1) == 0)
      {
        v495 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
      }

      (*(v587 + 104))(v592, *v495, v588);
      v668 = v490;
      v667 = v488;
      v642 = v491;
      v666 = v491;
      sub_100031660(v637, v631, &unk_1009767C0);
      type metadata accessor for ProductDiffablePagePresenter();
      swift_allocObject();

      v496 = v653;

      swift_unknownObjectRetain();

      v497 = ProductDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:pageWidth:isDownloadingOrderingEnabled:downloadingOrderingTimeout:supportsFastImpressions:advertLifecycleMetricsReporter:referrerData:)();
      type metadata accessor for MetricsActivity();

      static MetricsActivity.current.getter();
      dispatch thunk of MetricsActivity.currentSearchAdRotationDataProvider.getter();

      dispatch thunk of TimedMetricsPagePresenter.advertRotationData.setter();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();

      v498 = sub_1003C9368(&qword_1009836A0, &type metadata accessor for ProductDiffablePagePresenter);

      v499 = sub_10054A47C(v496, v497, v498, v493, 0x50746375646F7270, 0xEB00000000656761);

      v500 = objc_allocWithZone(type metadata accessor for ProductDiffablePageViewController());
      sub_100196BB8(v497, v499);

      swift_unknownObjectRelease();

      (*(v649 + 8))(v641, v652);
      goto LABEL_85;
  }
}

uint64_t sub_1003C89B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097F510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1003C8A54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E433AccountPageViewControllerDelegate_selfReference);
  *(v1 + OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E433AccountPageViewControllerDelegate_selfReference) = 0;
}

uint64_t sub_1003C8A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v4 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v4 - 8);
  v64 = &v61 - v5;
  v6 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v61 = &v61 - v19;
  __chkstk_darwin(v20);
  v22 = (&v61 - v21);
  __chkstk_darwin(v23);
  v25 = &v61 - v24;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v69, v14);
  v26 = *(v16 + 48);
  v27 = v26(v14, 1, v15);
  v62 = v8;
  if (v27 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v14, 1, v15) != 1)
    {
      sub_10002B894(v14, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v14, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001181EC(v25);
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  if (EnumCaseMultiPayload == 2)
  {
    v29 = objc_allocWithZone(type metadata accessor for WebNavigationController());
    *&v29[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v66;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = type metadata accessor for StoreNavigationController();
    v67.receiver = v29;
    v67.super_class = v31;

    v32 = objc_msgSendSuper2(&v67, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  else
  {
    v31 = type metadata accessor for StoreNavigationController();
    v33 = objc_allocWithZone(v31);
    *&v33[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v66;
    v34 = swift_getObjCClassFromMetadata();
    v70.receiver = v33;
    v70.super_class = v31;

    v32 = objc_msgSendSuper2(&v70, "initWithNavigationBarClass:toolbarClass:", v34, 0);
  }

  v35 = v32;
  [v35 setDelegate:v35];
  type metadata accessor for StoreNavigationController();
  v69[3] = v31;
  v69[4] = sub_1003C9368(&unk_100986B70, type metadata accessor for StoreNavigationController);
  v69[0] = v35;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v68, v11);
  if (v26(v11, 1, v15) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v11, 1, v15) != 1)
    {
      sub_10002B894(v11, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v11, v22);
  }

  v36 = FlowAction.referrerUrl.getter();
  v38 = v37;
  v39 = v64;
  FlowAction.referrerData.getter();
  sub_1003C1668(v22, v65, v36, v38, v39, v69, v66, 1);
  v41 = v40;

  sub_10002B894(v39, &unk_1009767C0);
  sub_1001181EC(v22);
  sub_10002B894(v69, &unk_100981880);
  if (!v41)
  {

    return 0;
  }

  dispatch thunk of Action.clickSender.getter();
  v42 = v62;
  sub_100462678(a1, v69, v62);
  if (v26(v42, 1, v15) == 1)
  {
    v43 = v61;
    swift_storeEnumTagMultiPayload();
    v44 = v26(v42, 1, v15);
    v45 = v63;
    if (v44 != 1)
    {
      sub_10002B894(v42, &unk_1009796F0);
    }
  }

  else
  {
    v43 = v61;
    sub_10013A05C(v42, v61);
    v45 = v63;
  }

  sub_10013A05C(v43, v45);
  v47 = swift_getEnumCaseMultiPayload();
  if (v47 == 14)
  {
    sub_10002849C(&qword_100983638);

    sub_10002B894(v45, &qword_100982460);
    goto LABEL_30;
  }

  if (v47 == 15 || v47 == 18)
  {
    sub_1001181EC(v45);
LABEL_30:
    sub_10002849C(&qword_100973210);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007B0B70;
    *(v57 + 32) = v41;
    sub_100005744(0, &qword_1009711C0);
    v46 = v35;
    v58 = v41;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 setViewControllers:isa];

    return v46;
  }

  sub_1001181EC(v45);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_100039CB4(v41))
  {

    goto LABEL_30;
  }

  v49 = [v41 navigationItem];
  v50 = [v49 rightBarButtonItems];
  if (v50)
  {
    v51 = v50;
    v52 = v41;
    sub_100005744(0, &qword_100983870);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v52 = v41;
    v53 = _swiftEmptyArrayStorage;
  }

  v69[0] = v53;
  sub_100005744(0, &qword_100983870);
  sub_100005744(0, &qword_10097CD40);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1003C9360;
  *(v54 + 24) = v48;

  v71.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v71.is_nil = 0;
  v55.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v71, v72).super.super.isa;
  if (!(v53 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_1004A6D30(0, 0, v55.super.super.isa);
    v56 = Array._bridgeToObjectiveC()().super.isa;

    [v49 setRightBarButtonItems:v56];

    v41 = v52;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C9368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003C93B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003C9414(char a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScreenshotsGalleryViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  result = objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v9 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
    if (v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v9 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= result)
      {
        return result;
      }
    }

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result layoutIfNeeded];

      IndexPath.init(item:section:)();
      v12 = [v1 collectionView];
      if (v12)
      {
        v13 = v12;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v13 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003C9630()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v2 setDirection:8];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 addGestureRecognizer:v2];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      sub_100005744(0, &qword_100970180);
      v7 = static UIColor.defaultBackground.getter();
      [v6 setBackgroundColor:v7];
    }

    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 setAlwaysBounceHorizontal:1];
    }

    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 setShowsHorizontalScrollIndicator:0];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setRemembersLastFocusedIndexPath:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setContentInsetAdjustmentBehavior:2];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v21 = String._bridgeToObjectiveC()();

      [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];
    }

    v22 = [v1 collectionView];
    if (!v22)
    {

      return;
    }

    v37 = v22;
    [v22 bounds];
    sub_1003CAB88(v23, v24);
    v26 = v25;
    v41 = MediaPlatform.isPhonePlatform.getter() & 1;
    v27 = sub_100262514(v26, v41);
    v28 = v27;
    v40 = *(v26 + 16);
    if (!v40)
    {
LABEL_30:

      return;
    }

    v29 = 0;
    v30 = (v26 + 48);
    v38 = v27 & 0xC000000000000001;
    v39 = v27 >> 62;
    while (v29 < *(v26 + 16))
    {
      v31 = *(v30 - 2);
      v32 = *(v30 - 1);
      v33 = *v30;
      if (v39)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v29 == v34)
      {
        goto LABEL_30;
      }

      if (v38)
      {

        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }

      v43 = 0;
      memset(v42, 0, sizeof(v42));
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      *(v36 + 24) = v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v32;
      *(v36 + 48) = v33;
      *(v36 + 56) = v29;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v42, &qword_10096FB90);

      v30 += 3;
      if (v40 == ++v29)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_1003C9B60(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

void sub_1003C9C94(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_1003CC140;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006D1458;
  v14[3] = &unk_1008C0DD8;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_1003C9E2C()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 collectionView];

      if (v8)
      {
        sub_10002849C(&qword_100980550);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1007B1890;
        *(v9 + 32) = 0;
        *(v9 + 40) = v5;
        IndexPath.init(arrayLiteral:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v1 + 8))(v3, v0);
        [v8 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_1003CA110(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_100617504();

  return v7;
}

double sub_1003CA784(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = UITraitCollection.isSizeClassRegular.getter();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_1003CA84C(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10002B894(v9, &unk_10097DAE0);
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_1003CB070(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10002B894(v9, &unk_10097DAE0);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = IndexPath.item.getter();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_1003CAB88(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = dispatch thunk of Artwork.isLandscape.getter();
      Artwork.size.getter();
      v11 = v10;
      v13 = v12;
      Artwork.size.getter();
      v15 = v14;
      v17 = v16;
      Artwork.size.getter();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000337F0(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_1000337F0((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_1003CAD4C()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_1003CADCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003CAEBC(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_10002849C(&qword_100980550);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007B1890;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    IndexPath.init(arrayLiteral:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v20, v18);

        v15 = v17;
      }
    }
  }
}

uint64_t sub_1003CB070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003CB0E0()
{
  v1 = v0;
  v2 = type metadata accessor for AppPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *&v0[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
  result = IndexPath.item.getter();
  v53 = v2;
  v54 = v6;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
    v52 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView;
    v14 = *&v10[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    type metadata accessor for BorderedScreenshotView();
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v55);
    v18 = v15 + v16;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetHeight(v56);
    v19 = [v0 traitCollection];
    v20 = UITraitCollection.isSizeClassRegular.getter();

    if (MediaPlatform.isPhonePlatform.getter())
    {
      dispatch thunk of Artwork.isLandscape.getter();
    }

    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    v21 = Width - v18;

    MediaPlatform.appPlatform.getter();

    v22 = v53;
    if ((*(v3 + 88))(v5, v53) != enum case for AppPlatform.watch(_:))
    {
      (*(v3 + 8))(v5, v22, 0.0);
    }

    AspectRatio.width(fromHeight:)();
    v24 = v23;
    v25 = (v21 - v23) * 0.5;
    if (v20)
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 60.0)
      {
        goto LABEL_15;
      }

      v28 = 120.0;
    }

    else
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 30.0)
      {
        goto LABEL_15;
      }

      v28 = 60.0;
    }

    v24 = v21 - v28;
LABEL_15:
    Artwork.size.getter();
    if (v29 < v24)
    {
      v24 = v29;
    }

    AspectRatio.height(fromWidth:)();
    v31 = v30;
    (*(v7 + 8))(v9, v27);
    v32 = &v10[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v32 = v24;
    *(v32 + 1) = v31;
    v32[16] = 0;
    [v10 setNeedsLayout];
    v33 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v34 = *(v33 + 16);

    v35 = sub_10057A264(v13, v34);

    if (v35)
    {
      v36 = *(*&v10[v26] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v37 = v35;
      v38 = v36;
      v39 = ArtworkView.image.getter();

      if (v39)
      {
        sub_100005744(0, &qword_1009744B0);
        v41 = v37;
        v42 = static NSObject.== infix(_:_:)();

        v43 = v42 ^ 1;
      }

      else
      {
        v43 = 1;
      }

      v49.is_nil = v43 & 1;
      v49.value.super.isa = v35;
    }

    else
    {
      v44 = sub_10057A264(v13, *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_placeholderImages]);
      if (!v44)
      {
      }

      v37 = v44;
      v45 = *(*&v10[v26] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v46 = ArtworkView.image.getter();

      if (v46)
      {
        sub_100005744(0, &qword_1009744B0);
        v47 = v37;
        v48 = static NSObject.== infix(_:_:)();

        if (v48)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v50 = v37;
      }

      v38 = *(*&v10[v26] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v49.value.super.isa = v37;
      v49.is_nil = 1;
    }

    ArtworkView.setImage(image:animated:)(v49, v40);

    v47 = v37;
LABEL_29:
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 8 * result + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003CB69C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppPlatform();
  v76 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v70[-v10];
  v75 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v75);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v70[-v16];
  v18 = *&v2[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v77 = v15;
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = v77;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v74 = a2;
  v77 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v78 = *(v18 + 32);

    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v22 = *(v21 + 16);
      if (v22)
      {
        goto LABEL_7;
      }
    }
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
  }

LABEL_7:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v73 = *(v18 + 8 * result + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = UITraitCollection.isSizeClassRegular.getter();

  if (MediaPlatform.isPhonePlatform.getter())
  {
    dispatch thunk of Artwork.isLandscape.getter();
  }

  Artwork.size.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  MediaPlatform.appPlatform.getter();

  v72 = *(v76 + 88);
  v31 = v72(v11, v6);
  v71 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v76 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  AspectRatio.width(fromHeight:)();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_setRequiresColorStatistics_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_setRequiresColorStatistics_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  Artwork.size.getter();
  if (v38 < v34)
  {
    v34 = v38;
  }

  AspectRatio.height(fromWidth:)();
  v40 = v39;
  v41 = *(v77 + 8);
  v42 = v17;
  v43 = v75;
  v77 += 8;
  v41(v42, v75);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[35]];
  v48 = UITraitCollection.isSizeClassRegular.getter();

  if (MediaPlatform.isPhonePlatform.getter())
  {
    dispatch thunk of Artwork.isLandscape.getter();
  }

  Artwork.size.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  MediaPlatform.appPlatform.getter();

  v50 = v72(v8, v6);
  if (v50 != v71)
  {
    (*(v76 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  AspectRatio.width(fromHeight:)();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v74;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v74;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  Artwork.size.getter();
  if (v59 < v54)
  {
    v54 = v59;
  }

  AspectRatio.height(fromWidth:)();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_1003CBD88(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppPlatform();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspectRatio();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
  v14 = IndexPath.item.getter();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  UITraitCollection.isSizeClassRegular.getter();

  if (MediaPlatform.isPhonePlatform.getter())
  {
    dispatch thunk of Artwork.isLandscape.getter();
  }

  Artwork.size.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  MediaPlatform.appPlatform.getter();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  AspectRatio.width(fromHeight:)();
  v16 = v19;
  Artwork.size.getter();
  AspectRatio.height(fromWidth:)();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  UITraitCollection.isSizeClassRegular.getter();
}

uint64_t sub_1003CC15C()
{
  v1 = &v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  swift_unknownObjectRetain();
  sub_1006865EC();
  [v0 setNeedsLayout];
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v2 = *(v1 + 1);
    v3 = *&v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
    v4 = v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind + 8];
    v5 = swift_unknownObjectRetain();
    sub_100473080(v5, v2, v3, v4);

    swift_unknownObjectRelease();
  }

  v6 = &v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
  *v6 = 0;
  v6[8] = 1;
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

uint64_t sub_1003CC278()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay);
  if (*(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    [v5 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind);
    v8 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind + 8);
    v9 = swift_unknownObjectRetain();
    sub_100473080(v9, v6, v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

char *sub_1003CC3AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_100113508;
  v25[1] = 0;
  v25[2] = sub_1005AB608;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_100113508;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_100287668;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_100550DDC(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_100005744(0, &qword_100972780);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1004EAE8C();

  return v16;
}

id sub_1003CC7B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_10098B800) = v1 & 1;
  sub_100551D80();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v3 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning;
  v2[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] = v1 & 1;
  [v2 setHidden:(v2[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v1 ^ 1u)];
  v2[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = (v2[v3] & 1) == 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_1003CC8A0()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_1000A805C(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_1006D05F8(v24, v17, v19, v21, v23);

  return sub_1000A8C48(&v26);
}

void sub_1003CCA44()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v57 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = UITraitCollection.prefersAccessibilityLayouts.getter(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_1003CD040(v12);
      [v1 bounds];
      CGRectGetMidX(v64);
      [v1 bounds];
      CGRectGetMinY(v65);
      [v1 bounds];
      CGRectGetWidth(v66);
      [v1 bounds];
      CGRectGetHeight(v67);
      v35 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v1[v35], v8);
      if (v1[v11])
      {
        v36 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v1[*v36];
      v38 = [v1 traitCollection];
      sub_1004EE9F4(v8, v37, v38);

      sub_10002B894(v8, &qword_10097DBD0);
      sub_1000A833C(&v1[v35], v4);
      if (v1[v11])
      {
        v39 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v39 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v40 = v1[*v39];
      v41 = [v1 traitCollection];
      sub_1004EE9F4(v4, v40, v41);

      sub_10002B894(v4, &qword_10097DBD0);
      CGRect.subtracting(insets:)();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [v9 traitCollection];
      sub_10017CBC4(v50, v47, v49);

      v68.origin.x = v43;
      v68.origin.y = v45;
      v68.size.width = v47;
      v68.size.height = v49;
      CGRectGetMidX(v68);
      v69.origin.x = v43;
      v69.origin.y = v45;
      v69.size.width = v47;
      v69.size.height = v49;
      CGRectGetMinY(v69);
      v51 = [v1 traitCollection];
      [v1 bounds];
      CGRect.withLayoutDirection(using:relativeTo:)();
      v53 = v52;
      MinY = v54;
      v25 = v55;
      v27 = v56;

      v34 = v53;
    }

    else
    {
      [v1 bounds];
      sub_1003CD040(v12);
      MinY = v16;
      [v1 bounds];
      CGRectGetMinX(v58);
      [v1 bounds];
      CGRectGetMinY(v59);
      [v1 bounds];
      CGRectGetWidth(v60);
      [*&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v61);
      CGRect.subtracting(insets:)();
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
      v22 = CGRectGetHeight(v62);
      v23 = [v9 traitCollection];
      sub_10017CBC4(v23, 1.79769313e308, v22);
      v25 = v24;
      v27 = v26;

      if (v1[v11])
      {
        v28 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v28 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      if (v1[*v28] == 4)
      {
        MinY = CGRectGetMinY(*&v29);
      }

      else
      {
        v33 = CGRectGetMidY(*&v29) + v27 * -0.5;
        if (v33 > MinY)
        {
          MinY = v33;
        }
      }

      [v1 bounds];
      v34 = floor(CGRectGetMidX(v63) + v25 * -0.5);
    }

    [v9 setFrame:{v34, MinY, v25, v27}];
  }
}

uint64_t sub_1003CD040(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v4 - 8);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v60 - v20;
  v22 = [v1 traitCollection];
  v62 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v23 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v29 = v2[v23];
    if (v2[v23])
    {
      v30 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v30 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v31 = v2[*v30];
    if (v31 != 4)
    {
      if ((v31 != 6) | v62 & 1)
      {
        goto LABEL_39;
      }

      v35 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v2[v35], v17);
      if (v29)
      {
        v36 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v2[*v36];
      v38 = [v2 traitCollection];
      sub_1004EE9F4(v17, v37, v38);

      v39 = v17;
      goto LABEL_57;
    }

    return static UIEdgeInsets.vertical(top:bottom:)();
  }

  if ((v2[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v24 = [v2 traitCollection], v25 = UITraitCollection.isSizeClassCompact.getter(), v24, (v25 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v32 = v2[v23];
      if (v2[v23])
      {
        v33 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v33 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v34 = v2[*v33];
      if (v34 == 4)
      {
        return static UIEdgeInsets.vertical(top:bottom:)();
      }

      if ((v34 != 6) | v62 & 1)
      {
LABEL_39:
        if (v2[v23] == 1)
        {
          v44 = [v2 traitCollection];
          UITraitCollection.prefersRightToLeftLayouts.getter();

          v45 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_1000A833C(&v2[v45], v11);
          v46 = [v2 traitCollection];
          sub_1004EDF34(v11, v46);
          goto LABEL_50;
        }

LABEL_41:
        v47 = [v2 traitCollection];
        v48 = UITraitCollection.prefersRightToLeftLayouts.getter();

        v49 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
        if (v48)
        {
          swift_beginAccess();
          sub_1000A833C(&v2[v49], v8);
          if (v2[v23])
          {
            v50 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v50 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v51 = v2[*v50];
          v52 = [v2 traitCollection];
          sub_1004EE9F4(v8, v51, v52);

          v11 = v8;
          goto LABEL_51;
        }

        swift_beginAccess();
        v11 = v61;
        sub_1000A833C(&v2[v49], v61);
        if (v2[v23])
        {
          v53 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v53 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v54 = v2[*v53];
        v46 = [v2 traitCollection];
        sub_1004EE9F4(v11, v54, v46);
LABEL_50:

LABEL_51:
        sub_10002B894(v11, &qword_10097DBD0);
        return static UIEdgeInsets.vertical(top:bottom:)();
      }

      v56 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v2[v56], v21);
      if (v32)
      {
        v57 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v57 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v58 = v2[*v57];
      v59 = [v2 traitCollection];
      sub_1004EE9F4(v21, v58, v59);

      v39 = v21;
LABEL_57:
      sub_10002B894(v39, &qword_10097DBD0);
      return static UIEdgeInsets.vertical(top:bottom:)();
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v26 = v2[v23];
  if (v2[v23])
  {
    v27 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v27 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v28 = v2[*v27];
  if (v28 != 4)
  {
    if ((v28 != 6) | v62 & 1)
    {
      goto LABEL_39;
    }

    v40 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A833C(&v2[v40], v14);
    if (v26)
    {
      v41 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v41 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v42 = v2[*v41];
    v43 = [v2 traitCollection];
    sub_1004EE9F4(v14, v42, v43);

    v39 = v14;
    goto LABEL_57;
  }

  return static UIEdgeInsets.vertical(top:bottom:)();
}

uint64_t sub_1003CD73C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_10017BCA4();
  }

  *(v1 + v2) = 0;

  sub_1003CC278();
  sub_100086248(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
}

void sub_1003CD85C()
{
  sub_1004EE4C4();
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  [v0 _setContinuousCornerRadius:v2];
  [*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v2];
  if (*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    [v6 _setContinuousCornerRadius:v2];
  }

  *(*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10098B7F8) = v0[v1];
  sub_100551950();
  *(*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded) = v0[v1];

  sub_1004EAE8C();
}

id sub_1003CD9A8()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10098B7B8) = v3;
    sub_10055189C();
    v4 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_1003CDAD8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_1003D0D48();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_1005533F0(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_10017C594(v19);

      sub_100086248(v20);
      *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

id sub_1003CDD2C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v171 = a4;
  v9 = type metadata accessor for EditorialDisplayOptions();
  v168 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v178 = &v154 - v15;
  __chkstk_darwin(v16);
  v177 = &v154 - v17;
  v167 = type metadata accessor for StringCharacteristics();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v176 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v19 - 8);
  v21 = &v154 - v20;
  v22 = type metadata accessor for PageGrid();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v21, &v5[v24]);
  swift_endAccess();
  sub_1004EAB3C(a2);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = TodayCard.backgroundColor.getter();
    if (!v27)
    {
      sub_100005744(0, &qword_100970180);
      v27 = static UIColor.todayCardDefaultBackground.getter();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  TodayCard.media.getter();
  v29 = type metadata accessor for TodayCardMediaMultiAppFallback();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    TodayCard.media.getter();
    type metadata accessor for TodayCardMediaRiver();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      TodayCard.media.getter();
      type metadata accessor for TodayCardMediaAppIcon();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        TodayCard.media.getter();
        type metadata accessor for TodayCardMediaList();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return result;
        }
      }
    }
  }

  v163 = v9;
  v174 = v5;
  v35 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v36 = TodayCard.heading.getter();
  v175 = v37;
  v180 = TodayCard.title.getter();
  v172 = v38;
  v156 = TodayCard.shortTitle.getter();
  v173 = v39;
  TodayCard.titleCharacteristics.getter();
  v40 = TodayCard.inlineDescription.getter();
  v182 = v41;
  v165 = a3;
  v170 = v11;
  v164 = v12;
  v162 = v29;
  v157 = v40;
  if (a2 == 4)
  {
    (*(v12 + 104))(v177, enum case for TodayCard.Style.dark(_:), v11);
    v161 = sub_1000DB5A0;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v160 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v159 = sub_100287668;
    v158 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    TodayCard.style.getter();
    v161 = sub_1000DB5A0;
    v158 = sub_1005AB29C;
    v42 = sub_1005AB458;
    v160 = sub_1005AB484;
    v159 = sub_1005AB2C8;
  }

  v179 = a2;
  v43 = a2;
  TodayCard.editorialDisplayOptions.getter();
  v35[qword_10098B7E8] = 0;
  v44 = *&v35[qword_10098B7D0];
  *(v44 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *&v35[qword_10098B7C8];
  sub_10006E7C4(v36, v175);
  v46 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v47 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v48 = *&v45[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v43 == 4 && (v46 & 1) == 0)
  {
    if (([v48 isHidden] & 1) != 0 || (v45[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v45[v47] setHidden:1];
      goto LABEL_27;
    }

    [*&v45[v47] setHidden:1];
    v45[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v49 = [v48 text];
  if (v49)
  {
    v50 = v49;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v51 = static String.isNilOrEmpty(_:)();
  v52 = v51 & 1;

  if (v52 != [*&v45[v47] isHidden] && (v45[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v51 & 1) == 0)
    {
      [*&v45[v47] setAlpha:0.0];
      v155 = objc_opt_self();
      [v155 inheritedAnimationDuration];
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = v45;
      v187 = sub_1000A9214;
      v188 = v55;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100007A08;
      v186 = &unk_1008C0F78;
      v154 = _Block_copy(&aBlock);
      v56 = v45;

      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      v187 = sub_1000A9220;
      v188 = v57;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100504C5C;
      v186 = &unk_1008C0FC8;
      v58 = _Block_copy(&aBlock);
      v59 = v56;

      v60 = v154;
      [v155 animateWithDuration:0 delay:v154 options:v58 animations:v54 completion:0.0];
      _Block_release(v58);
      _Block_release(v60);
    }

    [*&v45[v47] setHidden:v51 & 1];
    v45[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v45 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v45[v47] setHidden:v52];
LABEL_27:
  v61 = &v35[qword_10098B7F0];
  *v61 = v161;
  v61[1] = 0;
  v61[2] = v158;
  v61[3] = 0;
  v61[4] = v42;
  v61[5] = 0;
  v61[6] = v160;
  v61[7] = 0;
  v61[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v61[9] = 0;
  v61[10] = v159;
  v61[11] = 0;

  sub_100551950();
  v62 = v179;
  v63 = v182;
  if (v172)
  {
    if (v179 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v64 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v65 = *(v44 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v66 = objc_allocWithZone(NSAttributedString);
    v67 = v65;
    v68 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_1003D0E4C(&qword_100976620, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v70 = [v66 initWithString:v68 attributes:isa];

    [v67 setAttributedText:v70];
    [*(v44 + v64) setAdjustsFontSizeToFitWidth:0];
    [*(v44 + v64) setMinimumScaleFactor:0.0];
    [*(v44 + v64) setAttributedText:0];
    if (v173 && v35[qword_10098B7C0] == 4)
    {
      v63 = v182;
      if (v62 == 4)
      {
        v71 = v180;
        v74 = v173;
        v72 = v172;
        v73 = v156;
      }

      else
      {
        v71 = v156;
        v72 = v173;
        v73 = v180;
        v74 = v172;
      }

      sub_10006E8BC(v71, v72, v73, v74);
    }

    else
    {
      sub_10006E7C4(v180, v172);
      v63 = v182;
    }
  }

  v75 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v76 = *(v44 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v77 = [v76 text];
  if (v77 || (v77 = [*(v44 + v75) attributedText]) != 0)
  {
    v78 = v170;

    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v170;
  }

  [v76 setHidden:v79];

  [v35 setNeedsLayout];
  v80 = *&v35[qword_10098B7D8];
  [v80 setImage:0];
  [v80 setHidden:1];
  if (v62 != 4 && (EditorialDisplayOptions.suppressTagline.getter() & 1) == 0 && v63)
  {
    v81 = a1;
    v82 = v62;
    v83 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v83 = v157 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v180) = v83 == 0;
    v84 = *&v35[qword_10098B7E0];
    v85 = &v84[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v86 = *&v84[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v84 = *&v35[qword_10098B7E0];
  v85 = &v84[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v86 = *&v84[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v63)
  {
    v81 = a1;
    v82 = v62;
    LODWORD(v180) = 1;
LABEL_49:
    v87 = v86;
    v63 = String._bridgeToObjectiveC()();
    v62 = v82;
    a1 = v81;
    goto LABEL_51;
  }

  v87 = v86;
  LODWORD(v180) = 1;
LABEL_51:
  [v87 setText:v63];

  v88 = [*v85 isHidden];
  if (v180 == v88 || (v84[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v85 setHidden:v180];
  }

  else
  {
    if ((v180 & 1) == 0)
    {
      [*v85 setAlpha:0.0];
      v89 = objc_opt_self();
      [v89 inheritedAnimationDuration];
      v91 = v90;
      v92 = swift_allocObject();
      *(v92 + 16) = v84;
      v187 = sub_1000A8B90;
      v188 = v92;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100007A08;
      v186 = &unk_1008C0ED8;
      v93 = _Block_copy(&aBlock);
      v94 = v84;

      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      v187 = sub_1000A8B98;
      v188 = v95;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100504C5C;
      v186 = &unk_1008C0F28;
      v96 = _Block_copy(&aBlock);
      v97 = v94;
      v78 = v170;
      v62 = v179;

      [v89 animateWithDuration:0 delay:v93 options:v96 animations:v91 completion:0.0];
      _Block_release(v96);
      _Block_release(v93);
    }

    [*v85 setHidden:v180];
    v84[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v84 setNeedsLayout];
  }

  v98 = v163;
  v99 = 1;
  v100 = v177;
  sub_100550798(v177, 1);
  [v35 setNeedsLayout];

  (*(v168 + 8))(v181, v98);
  v101 = v164;
  v102 = *(v164 + 8);
  v102(v100, v78);
  (*(v166 + 8))(v176, v167);
  TodayCard.style.getter();
  v103 = v169;
  (*(v101 + 104))(v169, enum case for TodayCard.Style.white(_:), v78);
  sub_1003D0E4C(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock != v189 || v184 != v190)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }
  }

  v102(v103, v78);
  v102(v178, v78);

  v104 = v174;
  [v174 setOverrideUserInterfaceStyle:v99];
  sub_1005D6114(a1, v165, v62, v171);
  TodayCard.media.getter();
  v105 = swift_dynamicCastClass();
  if (v105)
  {
    p_aBlock = v105;
    v107 = TodayCardMediaMultiAppFallback.lockups.getter();
    v108 = v107;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v107 & 0xFFFFFFFFFFFFFF8;
    if (v107 >> 62)
    {
      goto LABEL_184;
    }

    v110 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

  type metadata accessor for TodayCardMediaRiver();
  v118 = swift_dynamicCastClass();
  if (v118)
  {
    p_aBlock = v118;
    v119 = TodayCardMediaRiver.lockups.getter();
    v108 = v119;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v119 & 0xFFFFFFFFFFFFFF8;
    if (v119 >> 62)
    {
      v120 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v121 = 0;
    v122 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v120 == v121)
      {
        goto LABEL_112;
      }

      if ((v108 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v123 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v124 = dispatch thunk of Lockup.artwork.getter();

      ++v121;
      if (v124)
      {
        p_aBlock = &aBlock;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v122 = aBlock;
        v121 = v123;
      }
    }

    if (v121 >= *(v109 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v108 + 8 * v121 + 32);

    v123 = v121 + 1;
    if (!__OFADD__(v121, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v110 = _CocoaArrayWrapper.endIndex.getter();
LABEL_65:
    v111 = 0;
    v112 = _swiftEmptyArrayStorage;
    while (v110 != v111)
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        p_aBlock = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v111 >= *(v109 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v108 + 8 * v111 + 32);

        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v114 = dispatch thunk of Lockup.artwork.getter();

      ++v111;
      if (v114)
      {
        p_aBlock = &aBlock;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v112 = aBlock;
        v111 = v113;
      }
    }

    v115 = v112 >> 62;
    if (!(v112 >> 62))
    {
      v116 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v116 >= 3)
      {
        v117 = 3;
      }

      else
      {
        v117 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      while (1)
      {
        if (v116 < v117)
        {
          goto LABEL_190;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          type metadata accessor for Artwork();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v117 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v117 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = _CocoaArrayWrapper.subscript.getter();
          v111 = v125;
          v115 = v126;
          v117 = v127;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v122 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v128 = swift_dynamicCastClass();
        if (!v128)
        {
          swift_unknownObjectRelease();
          v128 = _swiftEmptyArrayStorage;
        }

        v129 = *(v128 + 2);

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v115 = v122 >> 62;
        if (v122 >> 62)
        {
          if (v122 < 0)
          {
            p_aBlock = v122;
          }

          else
          {
            p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          }

          v108 = _CocoaArrayWrapper.endIndex.getter();
          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v134 = _CocoaArrayWrapper.endIndex.getter();
LABEL_126:
            v111 = 0;
            v112 = _swiftEmptyArrayStorage;
            while (v134 != v111)
            {
              if ((v108 & 0xC000000000000001) != 0)
              {
                p_aBlock = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v111 >= *(v109 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v108 + 8 * v111 + 32);

                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              v136 = dispatch thunk of Lockup.artwork.getter();

              ++v111;
              if (v136)
              {
                p_aBlock = &aBlock;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v112 = aBlock;
                v111 = v135;
              }
            }

            goto LABEL_148;
          }

          if (v108 >= 3)
          {
            v152 = 3;
          }

          else
          {
            v152 = v108;
          }

          if (v108 >= 0)
          {
            v108 = v152;
          }

          else
          {
            v108 = 3;
          }

          v131 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v131 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v131 >= 3)
          {
            v108 = 3;
          }

          else
          {
            v108 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v131 < v108)
        {
          goto LABEL_198;
        }

        if ((v122 & 0xC000000000000001) != 0 && v108)
        {
          type metadata accessor for Artwork();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v108 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v108 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = _CocoaArrayWrapper.subscript.getter();
          v111 = v137;
          v115 = v138;
          v117 = v139;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          v111 = (v122 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v108) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v140 = swift_dynamicCastClass();
        if (!v140)
        {
          swift_unknownObjectRelease();
          v140 = _swiftEmptyArrayStorage;
        }

        v129 = *(v140 + 2);

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v115 = v112 >> 62;
        if (v112 >> 62)
        {
          if (v112 < 0)
          {
            p_aBlock = v112;
          }

          else
          {
            p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          }

          v117 = _CocoaArrayWrapper.endIndex.getter();
          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v117 >= 3)
          {
            v153 = 3;
          }

          else
          {
            v153 = v117;
          }

          if ((v117 & 0x8000000000000000) == 0)
          {
            v117 = v153;
          }

          else
          {
            v117 = 3;
          }

          v141 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v141 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v141 >= 3)
          {
            v117 = 3;
          }

          else
          {
            v117 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v141 < v117)
        {
          goto LABEL_205;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          type metadata accessor for Artwork();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v117 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v117 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = _CocoaArrayWrapper.subscript.getter();
          v111 = v143;
          v115 = v144;
          v117 = v145;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v147 = swift_dynamicCastClass();
        if (!v147)
        {
          swift_unknownObjectRelease();
          v147 = _swiftEmptyArrayStorage;
        }

        v129 = *(v147 + 2);

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
LABEL_169:
          if (v129 != v130)
          {
            goto LABEL_191;
          }

          v142 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v142)
          {
            swift_unknownObjectRelease();
            v142 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v117 >= 3)
        {
          v151 = 3;
        }

        else
        {
          v151 = v117;
        }

        if ((v117 & 0x8000000000000000) == 0)
        {
          v117 = v151;
        }

        else
        {
          v117 = 3;
        }

        v116 = _CocoaArrayWrapper.endIndex.getter();
      }
    }

    if (v112 < 0)
    {
      p_aBlock = v112;
    }

    else
    {
      p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
    }

    v117 = _CocoaArrayWrapper.endIndex.getter();
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_1005E7A8C(p_aBlock, v111, v115, v117);
    v142 = v146;
    swift_unknownObjectRelease();

LABEL_172:
    v104 = v174;
  }

  else
  {
    type metadata accessor for TodayCardMediaList();
    v132 = swift_dynamicCastClass();
    if (v132)
    {
      p_aBlock = v132;
      v133 = TodayCardMediaList.lockups.getter();
      v108 = v133;
      aBlock = _swiftEmptyArrayStorage;
      v109 = v133 & 0xFFFFFFFFFFFFFF8;
      if (!(v133 >> 62))
      {
        v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    type metadata accessor for TodayCardMediaAppIcon();
    if (swift_dynamicCastClass())
    {
      sub_10002849C(&qword_100973210);
      v142 = swift_allocObject();
      *(v142 + 1) = xmmword_1007B0B70;
      *(v142 + 4) = TodayCardMediaAppIcon.icon.getter();
    }

    else
    {

      v142 = _swiftEmptyArrayStorage;
    }
  }

  v148 = OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks;
  v149 = *&v104[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks];

  v150 = sub_1006E1E74(v142, v149);

  if (v150)
  {
  }

  *&v104[v148] = v142;

  sub_1003CF7FC();
  return [v104 setNeedsLayout];
}