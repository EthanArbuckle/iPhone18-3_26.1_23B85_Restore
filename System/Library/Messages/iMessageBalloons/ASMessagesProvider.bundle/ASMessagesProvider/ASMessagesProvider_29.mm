double sub_34177C()
{
  v1 = v0;
  v2 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "prepareForReuse");
  sub_759190();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_19CD50(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_F704(v12);
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  [v7 setTextColor:v14];

  v15 = [v13 systemGrayColor];
  [v8 setTextColor:v15];

  v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDivider] setHidden:1];
  v16 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDividerInsets];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  return result;
}

id sub_341A78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell()
{
  result = qword_9505F8;
  if (!qword_9505F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_341C18()
{
  sub_341D08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_341D08()
{
  if (!qword_947E10)
  {
    type metadata accessor for Accessory();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_947E10);
    }
  }
}

uint64_t sub_341D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93F9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_341DD0()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_76A840();
  __break(1u);
}

id sub_3422E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell()
{
  result = qword_950638;
  if (!qword_950638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3423F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6CAC(a1, a2, a3, WitnessTable);
}

void sub_342464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6BD8(a1, a2, a3, WitnessTable);
}

unint64_t sub_3424D0(uint64_t a1)
{
  result = sub_3424F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3424F8()
{
  result = qword_950648;
  if (!qword_950648)
  {
    type metadata accessor for ArtworkCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950648);
  }

  return result;
}

uint64_t sub_3425D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9415E0, type metadata accessor for AchievementSummaryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_342668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941790, type metadata accessor for ActionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_342700()
{
  v0 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&qword_946370);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  if (sub_2F0214())
  {
    sub_75C790();
    sub_768B30();
    sub_13EAE4();
    sub_768AF0();
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
    v9 = v5;
    sub_349090(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60);
    sub_273628();
    sub_76A5A0();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_77B6D0;
    sub_763CB0();
    v9 = v7;
    sub_349090(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60);
    sub_273628();
    return sub_76A5A0();
  }
}

uint64_t sub_342AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941760, type metadata accessor for AnnotationCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_342C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941738, type metadata accessor for AppShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_342D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_342D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_342E1C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_342EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_342FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9416F0, type metadata accessor for ArcadeShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_343040()
{
  sub_BD88(&qword_943A50);
  sub_763CD0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_763CB0();
  sub_349090(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_BD88(&qword_943A60);
  sub_273628();
  return sub_76A5A0();
}

uint64_t sub_3431FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_343278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_3432FC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_343380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_343480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_3434FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_343580(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_343604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

id sub_343704()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
  *v1 = 0;
  *(v1 + 1) = 0;

  return sub_359B6C();
}

uint64_t sub_343760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9416B0, type metadata accessor for BrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_343884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941270, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3439A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941688, type metadata accessor for EditorialCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_343AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941670, type metadata accessor for EditorialQuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_343BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_343C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_343CD8(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_343D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_343E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941630, type metadata accessor for FootnoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_343EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941618, type metadata accessor for FramedArtworkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_343F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941608, type metadata accessor for FramedVideoCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3440AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9415D0, type metadata accessor for GameCenterReengagementCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3441C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_34423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_3442C0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_344344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_344448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9415A8, type metadata accessor for HorizontalRuleCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_344548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941590, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_34465C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_3446D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_34475C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_3447E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_344880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941560, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_344994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9400A8, type metadata accessor for InformationRibbonCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_344AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_344B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_344BA8(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_344C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_344D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941520, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_344E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941508, type metadata accessor for LargeLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_344F68()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_36D3A4(0);
}

uint64_t sub_344FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9414F0, type metadata accessor for LinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_345044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9414D8, type metadata accessor for MediumLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_345160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_3451DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_345260(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_3452E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_345368()
{
  v0 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&qword_950670);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_75C790();
  sub_768B30();
  sub_280A0();
  sub_768B00();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77B6D0;
    sub_763CB0();
  }

  else
  {
    sub_768AF0();
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
  }

  v8 = v5;
  sub_349090(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_BD88(&qword_943A60);
  sub_273628();
  sub_76A5A0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_3456D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9414A8, type metadata accessor for ParagraphCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_34580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941480, type metadata accessor for PosterLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_345924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941450, type metadata accessor for PreorderDisclaimerCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_345A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941440, type metadata accessor for PrivacyCategoryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_345B54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_3253C8(0, 0);
  return sub_3253D4(0, 0);
}

uint64_t sub_345BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941428, type metadata accessor for PrivacyDefinitionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_345CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941410, type metadata accessor for PrivacyFooterCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_345DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941400, type metadata accessor for PrivacyHeaderCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_345EF0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_811E4(0, 0);
  sub_811F0(0, 0);
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  sub_7591D0(v3, v1);
  sub_8458C();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_81358();
}

uint64_t sub_345F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9413F0, type metadata accessor for PrivacyTypeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3460B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9413C8, type metadata accessor for ProductCapabilityCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_34614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9413A0, type metadata accessor for ProductMediaCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3461E4()
{
  v0 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&qword_950678);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_75C790();
  sub_768B30();
  sub_34903C();
  sub_768B00();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    sub_768AF0();
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
  }

  else
  {
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77B6D0;
    sub_763CB0();
  }

  v7 = v5;
  sub_349090(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_BD88(&qword_943A60);
  sub_273628();
  sub_76A5A0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_3465D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_34664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_3466D0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_346754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_3467F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9412D0, type metadata accessor for LinkableTextCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_346904()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = 0;

  return sub_5A7B54();
}

uint64_t sub_34695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941370, type metadata accessor for ProductPageLinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_346A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_346AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_346B70(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_346BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_346C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_346CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941320, type metadata accessor for ProductLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_346E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941310, type metadata accessor for QuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_346F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_346FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_347028(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_3470AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_3471AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_347228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_3472AC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_347330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_3473B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_3474BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941228, type metadata accessor for SmallBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3475D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_765DE0();
}

uint64_t sub_347628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941218, type metadata accessor for SmallContactCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_34773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_3477B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_34783C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_3478C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_347944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9411F0, type metadata accessor for SmallLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_347A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_347ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_347B60(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_347BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_347C68()
{
  v0 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&qword_950688);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_75C790();
  sub_768B30();
  sub_256230();
  sub_768B00();
  if (v8 == 1)
  {
    sub_768AF0();
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
  }

  else
  {
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77B6D0;
    sub_763CB0();
  }

  v8 = v5;
  sub_349090(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_BD88(&qword_943A60);
  sub_273628();
  sub_76A5A0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_348050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_3480CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_348150(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_3481D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_348270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941180, type metadata accessor for UberCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_348308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_348408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_610414(a1, a2, a3, WitnessTable);
}

uint64_t sub_348484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_348508(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_1AA194(a1, WitnessTable, a2);
}

uint64_t sub_34858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AA434(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_348694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_941140, type metadata accessor for VideoCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3487D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_34885C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AE60();
  sub_349090(&unk_94F480, &type metadata accessor for SearchAdAction);
  if (sub_75C770())
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v6 = sub_75D400();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_75D400();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void (*sub_348AD8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_724A8();
  return sub_215A4;
}

uint64_t sub_348B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, WitnessTable);
}

uint64_t sub_348C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_349090(&qword_9410E8, type metadata accessor for ArcadeDownloadPackCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_348D00@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1799C(v2 + v4, a2);
}

uint64_t sub_348D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_1792C(a1, v4 + v6);
  return swift_endAccess();
}

uint64_t sub_348E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_348EDC(uint64_t a1)
{
  result = sub_349090(&qword_950650, type metadata accessor for TitledParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_348F34(uint64_t a1)
{
  result = sub_349090(&qword_950658, type metadata accessor for ProductDescriptionCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_348F8C(uint64_t a1)
{
  result = sub_349090(&qword_950660, type metadata accessor for ParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_348FE4(uint64_t a1)
{
  result = sub_349090(&qword_950668, type metadata accessor for AnnotationCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_34903C()
{
  result = qword_950680;
  if (!qword_950680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950680);
  }

  return result;
}

uint64_t sub_349090(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3490F4()
{
  result = qword_950690;
  if (!qword_950690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950690);
  }

  return result;
}

unint64_t sub_34914C()
{
  result = qword_950698;
  if (!qword_950698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950698);
  }

  return result;
}

uint64_t sub_3491A4()
{
  v0 = sub_BD88(&qword_94B680);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_756FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_756C50();
  sub_161DC(v5, qword_99CC60);
  sub_BE38(v5, qword_99CC60);
  sub_756F80();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_756C40();
}

uint64_t sub_349334@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_BD88(&qword_94B678);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_BD88(&qword_94B680);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_756FA0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_769200();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  sub_7691F0();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_7691E0(v15);
  sub_756B10();
  sub_7691D0(v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_7691E0(v16);
  sub_756F90();
  sub_7691F0();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_7691E0(v17);
  sub_756B10();
  sub_7691D0(v14);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_7691E0(v18);
  sub_756F90();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_756B50();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_756B60();
}

uint64_t sub_349620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254BEC;

  return sub_34A3FC(a1);
}

unint64_t sub_3496CC()
{
  result = qword_9506A0;
  if (!qword_9506A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506A0);
  }

  return result;
}

unint64_t sub_349724()
{
  result = qword_9506A8;
  if (!qword_9506A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506A8);
  }

  return result;
}

unint64_t sub_34977C()
{
  result = qword_9506B0;
  if (!qword_9506B0)
  {
    sub_133D8(&qword_9506B8);
    sub_349724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506B0);
  }

  return result;
}

uint64_t sub_349800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_349A7C();
  *v5 = v2;
  v5[1] = sub_14FCC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_3498B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_14FCC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_349974()
{
  result = qword_9506C0;
  if (!qword_9506C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506C0);
  }

  return result;
}

unint64_t sub_3499CC()
{
  result = qword_9506C8;
  if (!qword_9506C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506C8);
  }

  return result;
}

unint64_t sub_349A24()
{
  result = qword_9506D0;
  if (!qword_9506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506D0);
  }

  return result;
}

unint64_t sub_349A7C()
{
  result = qword_9506D8;
  if (!qword_9506D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506D8);
  }

  return result;
}

unint64_t sub_349AD4()
{
  result = qword_9506E0;
  if (!qword_9506E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506E0);
  }

  return result;
}

uint64_t sub_349B28()
{
  v0 = sub_BD88(&qword_950720);
  __chkstk_darwin(v0);
  sub_B2FA8();
  sub_756C20();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_756C10(v2);
  swift_getKeyPath();
  sub_BD88(&qword_950728);
  sub_756C00();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_756C10(v3);
  return sub_756C30();
}

unint64_t sub_349C48()
{
  result = qword_9506E8;
  if (!qword_9506E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506E8);
  }

  return result;
}

unint64_t sub_349CA0()
{
  result = qword_9506F0;
  if (!qword_9506F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506F0);
  }

  return result;
}

unint64_t sub_349CF8()
{
  result = qword_9506F8;
  if (!qword_9506F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9506F8);
  }

  return result;
}

uint64_t sub_349D4C()
{
  sub_34A37C();
  v1 = sub_756BE0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_349DB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_93CB20 != -1)
  {
    swift_once();
  }

  v2 = sub_756C50();
  v3 = sub_BE38(v2, qword_99CC60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_349E64()
{
  result = qword_950700;
  if (!qword_950700)
  {
    sub_133D8(&qword_950708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950700);
  }

  return result;
}

uint64_t sub_349EC8(uint64_t a1)
{
  v2 = sub_B2FA8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_349F18()
{
  result = qword_950710;
  if (!qword_950710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950710);
  }

  return result;
}

uint64_t sub_349F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_254BD8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_34A034(uint64_t a1)
{
  v2 = sub_349CF8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_34A080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_34A0C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_34A130@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v7 = sub_756FA0();
  __chkstk_darwin(v7 - 8);
  sub_BD88(&qword_94B658);
  sub_756F80();
  v8 = sub_756B40();

  sub_756F80();
  v9 = sub_756B40();

  sub_756F80();
  v10 = sub_756B40();

  sub_756B20();
  sub_756B20();
  if (a3)
  {
    v11 = a1;
  }

  else
  {
    sub_76A730(33);

    v11 = a1;
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    sub_769370(v14);
  }

  sub_756B20();

  *a4 = v11;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  return result;
}

unint64_t sub_34A37C()
{
  result = qword_950718;
  if (!qword_950718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950718);
  }

  return result;
}

uint64_t sub_34A3D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_756B30();
  *a1 = result;
  return result;
}

uint64_t sub_34A3FC(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_756FA0();
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_34A48C, 0, 0);
}

uint64_t sub_34A48C()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_143E44(0, v2, 0);
    sub_BD88(&qword_94B658);
    v3 = (v1 + 40);
    do
    {
      v14 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_756F80();
      v6 = sub_756B40();

      sub_756F80();
      v7 = sub_756B40();

      sub_756F80();
      v8 = sub_756B40();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      sub_756B20();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x80000000007DC9B0;
      sub_756B20();
      sub_76A730(33);

      v16._countAndFlagsBits = v4;
      v16._object = v5;
      sub_769370(v16);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x80000000007DC9D0;
      sub_756B20();

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (*&v10 >= *&v9 >> 1)
      {
        sub_143E44((*&v9 > 1uLL), *&v10 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v10 + 1;
      v11 = &_swiftEmptyArrayStorage[5 * *&v10];
      *(v11 + 4) = v4;
      *(v11 + 5) = v5;
      *(v11 + 6) = v6;
      *(v11 + 7) = v7;
      *(v11 + 8) = v8;
      v3 += 2;
      v2 = v14 - 1;
    }

    while (v14 != 1);
  }

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_34A75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v104 = a2;
  v100 = sub_75D850();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v98 - v4;
  v103 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  __chkstk_darwin(v103);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_94B6E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v98 - v12;
  __chkstk_darwin(v13);
  v119 = &v98 - v14;
  v15 = sub_BD88(&unk_94E7B0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v98 - v19;
  __chkstk_darwin(v20);
  v116 = &v98 - v21;
  v22 = sub_BD88(&qword_940AD0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v117 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v98 - v26;
  __chkstk_darwin(v27);
  v114 = &v98 - v28;
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v129 = &protocol witness table for Double;
  *&v130 = 0;
  v128 = &type metadata for Double;
  *&v127 = 0;
  if (qword_93CC80 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v22, qword_99D070);
  v33 = *(v23 + 16);
  v105 = v31;
  v33(v31, v32, v22);
  if (qword_93CC20 != -1)
  {
    swift_once();
  }

  v34 = sub_BE38(v22, qword_99CF50);
  *&v123 = v23 + 16;
  *&v122 = v33;
  v33(v114, v34, v22);
  if (qword_93CB50 != -1)
  {
    swift_once();
  }

  v106 = v23;
  v35 = sub_BE38(v15, qword_99CCC0);
  v107 = v16;
  v36 = *(v16 + 16);
  v36(v116, v35, v15);
  if (qword_93CCC8 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v7, qword_99D148);
  v109 = v8;
  v38 = *(v8 + 16);
  v38(v119, v37, v7);
  if (qword_93CC50 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v22, qword_99CFE0);
  (v122)(v115, v39, v22);
  if (qword_93CB68 != -1)
  {
    swift_once();
  }

  v40 = sub_BE38(v15, qword_99CD08);
  v36(v118, v40, v15);
  if (qword_93CCD8 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v7, qword_99D178);
  v38(v121, v41, v7);
  if (qword_93CC68 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v22, qword_99D028);
  (v122)(v117, v42, v22);
  if (qword_93CB78 != -1)
  {
    swift_once();
  }

  v43 = sub_BE38(v15, qword_99CD38);
  v36(v120, v43, v15);
  if (qword_93CCE0 != -1)
  {
    swift_once();
  }

  v44 = sub_BE38(v7, qword_99D190);
  v108 = v10;
  v110 = v7;
  v38(v10, v44, v7);
  if (qword_93CBF0 != -1)
  {
    swift_once();
  }

  v45 = sub_766CA0();
  v46 = sub_BE38(v45, qword_99CEC0);
  v125 = v45;
  v126 = &protocol witness table for StaticDimension;
  v47 = sub_B1B4(&v124);
  v48 = (*(v45 - 8) + 16);
  v49 = *v48;
  (*v48)(v47, v46, v45);
  v50 = sub_769A00();
  v112 = v15;
  v111 = v48;
  if (v50)
  {
    v51 = v6;
    v52 = v36;
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v53 = qword_946920;
  }

  else
  {
    v51 = v6;
    v52 = v36;
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v53 = qword_946938;
  }

  v54 = v100;
  v55 = sub_BE38(v100, v53);
  v56 = v102;
  v57 = v99;
  (*(v102 + 16))(v99, v55, v54);
  v58 = v101;
  (*(v56 + 32))(v101, v57, v54);
  sub_75D7D0();
  (*(v56 + 8))(v58, v54);
  if (qword_93CB80 != -1)
  {
    swift_once();
  }

  v59 = v112;
  v60 = sub_BE38(v112, qword_99CD50);
  v61 = v103;
  v52(v51 + *(v103 + 20), v60, v59);
  sub_75CF30();
  v62 = (v51 + *(v61 + 24));
  v62[3] = &type metadata for CGFloat;
  v62[4] = &protocol witness table for CGFloat;
  *v62 = v63;
  sub_75CF40();
  v64 = *(v61 + 28);
  v113 = v51;
  v65 = (v51 + v64);
  v65[3] = &type metadata for CGFloat;
  v65[4] = &protocol witness table for CGFloat;
  *v65 = v66;
  v67 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v68 = v104;
  v69 = (v104 + v67[20]);
  v69[3] = &type metadata for CGFloat;
  v69[4] = &protocol witness table for CGFloat;
  *v69 = 0x4030000000000000;
  v70 = v122;
  if (qword_93CC98 != -1)
  {
    swift_once();
  }

  v71 = sub_BE38(v45, qword_99D0B8);
  v72 = (v68 + v67[21]);
  v72[3] = v45;
  v72[4] = &protocol witness table for StaticDimension;
  v73 = sub_B1B4(v72);
  v74 = v49;
  v49(v73, v71, v45);
  if (qword_93CCB0 != -1)
  {
    swift_once();
  }

  v75 = sub_BE38(v22, qword_99D100);
  v76 = v68;
  v77 = v22;
  v70(v68 + v67[22], v75, v22);
  v78 = v112;
  if (qword_93CCB8 != -1)
  {
    swift_once();
  }

  v79 = *&UIEdgeInsetsZero.top;
  v122 = *&UIEdgeInsetsZero.bottom;
  v123 = v79;
  v80 = sub_BE38(v45, qword_99D118);
  v81 = (v68 + v67[23]);
  v81[3] = v45;
  v81[4] = &protocol witness table for StaticDimension;
  v82 = sub_B1B4(v81);
  v74(v82, v80, v45);
  v83 = v105;
  if (qword_93CC78 != -1)
  {
    swift_once();
  }

  v84 = sub_BE38(v45, qword_99D058);
  v85 = (v76 + v67[24]);
  v85[3] = v45;
  v85[4] = &protocol witness table for StaticDimension;
  v86 = sub_B1B4(v85);
  v74(v86, v84, v45);
  v87 = v122;
  *v76 = v123;
  *(v76 + 16) = v87;
  sub_34698(&v130, v76 + 32);
  sub_34698(&v127, v76 + 72);
  *(v76 + 112) = 0;
  *(v76 + 120) = 0;
  v88 = v67[8];
  v89 = *(v106 + 32);
  *&v123 = v89;
  v89(v76 + v88, v83, v77);
  v90 = v76 + v67[9];
  v98 = v77;
  v89(v90, v114, v77);
  v91 = *(v107 + 32);
  v92 = v78;
  v91(v76 + v67[10], v116, v78);
  v93 = *(v109 + 32);
  v94 = v110;
  v93(v76 + v67[11], v119, v110);
  v95 = v77;
  v96 = v123;
  (v123)(v76 + v67[12], v115, v95);
  v91(v76 + v67[13], v118, v92);
  v93(v76 + v67[14], v121, v94);
  v96(v76 + v67[15], v117, v98);
  v91(v76 + v67[16], v120, v92);
  v93(v76 + v67[17], v108, v94);
  sub_34698(&v124, v76 + v67[18]);
  return sub_34F770(v113, v76 + v67[19]);
}

__n128 sub_34B59C()
{
  v0 = sub_BD88(&qword_94E5D0);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v40 - v1;
  v2 = sub_BD88(&qword_940AD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v7;
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  __chkstk_darwin(v10);
  v46 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_161DC(v15, qword_99CC78);
  v16 = sub_BE38(v15, qword_99CC78);
  if (qword_93CC40 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v2, qword_99CFB0);
  v42 = v3;
  v18 = *(v3 + 16);
  v18(v14, v17, v2);
  if (qword_93CC30 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v2, qword_99CF80);
  v18(v46, v19, v2);
  if (qword_93CC58 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v2, qword_99CFF8);
  v18(v47, v20, v2);
  v69 = &type metadata for CGFloat;
  v70 = &protocol witness table for CGFloat;
  *&v68 = 0x4031000000000000;
  if (qword_93CBF8 != -1)
  {
    swift_once();
  }

  v41 = v14;
  v49 = v5;
  v21 = sub_BE38(v2, qword_99CED8);
  v18(v48, v21, v2);
  v67 = &protocol witness table for CGFloat;
  v66 = &type metadata for CGFloat;
  *&v65 = 0x4034000000000000;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  *&v62 = 0;
  v60 = &type metadata for Double;
  v61 = &protocol witness table for Double;
  *&v59 = 0;
  if (qword_93CCA0 != -1)
  {
    swift_once();
  }

  v22 = sub_766CA0();
  v23 = sub_BE38(v22, qword_99D0D0);
  v57 = v22;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_B1B4(&v56);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  if (qword_93CCA8 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v22, qword_99D0E8);
  v54 = v22;
  v55 = &protocol witness table for StaticDimension;
  v27 = sub_B1B4(&v53);
  v25(v27, v26, v22);
  if (qword_93CC00 != -1)
  {
    swift_once();
  }

  v28 = v45;
  v29 = sub_BE38(v45, qword_99CEF0);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, v29, v28);
  v52 = &protocol witness table for CGFloat;
  v51 = &type metadata for CGFloat;
  *&v50 = 0x4080E00000000000;
  v32 = v49;
  if (qword_93CC10 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v2, qword_99CF20);
  v18(v32, v33, v2);
  if (qword_93CC18 != -1)
  {
    swift_once();
  }

  v34 = sub_BE38(v2, qword_99CF38);
  v18((v16 + v15[19]), v34, v2);
  v35 = (v16 + v15[20]);
  v35[3] = &type metadata for CGFloat;
  v35[4] = &protocol witness table for CGFloat;
  *v35 = 0x4080580000000000;
  v36 = (v16 + v15[21]);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x4077000000000000;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v37 = *(v42 + 32);
  v37(v16 + v15[7], v41, v2);
  v37(v16 + v15[6], v46, v2);
  v37(v16 + v15[8], v47, v2);
  sub_34698(&v68, v16 + v15[9]);
  v37(v16 + v15[10], v48, v2);
  sub_34698(&v65, v16 + v15[14]);
  sub_34698(&v62, v16 + v15[15]);
  sub_34698(&v59, v16 + v15[16]);
  sub_34698(&v56, v16 + v15[11]);
  sub_34698(&v53, v16 + v15[12]);
  (*(v30 + 32))(v16 + v15[13], v31, v28);
  sub_34698(&v50, v16 + v15[17]);
  v37(v16 + v15[18], v49, v2);
  result = *&UIEdgeInsetsZero.top;
  v39 = *&UIEdgeInsetsZero.bottom;
  *v16 = *&UIEdgeInsetsZero.top;
  *(v16 + 16) = v39;
  return result;
}

uint64_t sub_34BD14()
{
  v0 = sub_BD88(&qword_940AD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v42 = &v36 - v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_161DC(v15, qword_99CC90);
  v16 = sub_BE38(v15, qword_99CC90);
  v57 = &type metadata for Double;
  v58 = &protocol witness table for Double;
  v55 = &protocol witness table for Double;
  *&v56 = 0;
  v54 = &type metadata for Double;
  *&v53 = 0;
  if (qword_93CC28 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v0, qword_99CF68);
  v18 = *(v1 + 16);
  v38 = v14;
  v18(v14, v17, v0);
  if (qword_93CC50 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v0, qword_99CFE0);
  v18(v42, v19, v0);
  v18(v9, v19, v0);
  if (qword_93CC68 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v43 = v3;
  v20 = sub_BE38(v0, qword_99D028);
  v40 = v6;
  v18(v6, v20, v0);
  v51 = &type metadata for CGFloat;
  v52 = &protocol witness table for CGFloat;
  *&v50 = 0x4030000000000000;
  if (qword_93CBF0 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v21 = sub_766CA0();
  v22 = sub_BE38(v21, qword_99CEC0);
  v48 = v21;
  v49 = &protocol witness table for StaticDimension;
  v23 = sub_B1B4(&v47);
  v24 = *(*(v21 - 8) + 16);
  v24(v23, v22, v21);
  if (qword_93CC70 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v21, qword_99D040);
  v45 = v21;
  v46 = &protocol witness table for StaticDimension;
  v26 = sub_B1B4(&v44);
  v24(v26, v25, v21);
  if (qword_93CC90 != -1)
  {
    swift_once();
  }

  v27 = *&UIEdgeInsetsZero.top;
  v36 = *&UIEdgeInsetsZero.bottom;
  v37 = v27;
  v28 = sub_BE38(v0, qword_99D0A0);
  v18(v43, v28, v0);
  if (qword_93CC98 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v21, qword_99D0B8);
  v30 = (v16 + v15[16]);
  v30[3] = v21;
  v30[4] = &protocol witness table for StaticDimension;
  v31 = sub_B1B4(v30);
  v24(v31, v29, v21);
  v32 = (v16 + v15[17]);
  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  *v32 = 0x4044000000000000;
  v33 = v36;
  *v16 = v37;
  *(v16 + 16) = v33;
  sub_34698(&v56, v16 + 32);
  sub_34698(&v53, v16 + 72);
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  v34 = *(v41 + 32);
  v34(v16 + v15[8], v38, v0);
  v34(v16 + v15[9], v42, v0);
  v34(v16 + v15[10], v39, v0);
  v34(v16 + v15[11], v40, v0);
  sub_34698(&v50, v16 + v15[12]);
  sub_34698(&v47, v16 + v15[13]);
  sub_34698(&v44, v16 + v15[14]);
  return (v34)(v16 + v15[15], v43, v0);
}

id sub_34C340()
{
  result = [objc_opt_self() systemBlueColor];
  qword_99CCA8 = result;
  return result;
}

UIColor sub_34C37C()
{
  sub_BE70(0, &qword_93E540);
  result.super.isa = sub_76A120(1.0, 0.58431, 0.0, 1.0).super.isa;
  qword_99CCB0 = result.super.isa;
  return result;
}

UIColor sub_34C3D8()
{
  sub_BE70(0, &qword_93E540);
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v2 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v3.super.isa = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v4.super.isa = v0;
  v5.super.isa = v1;
  v6.super.isa = v2;
  result.super.isa = sub_76A110(v4, v5, v6, v3).super.isa;
  qword_99CCB8 = result.super.isa;
  return result;
}

uint64_t sub_34C524(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_94E7B0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  sub_BE70(0, &qword_93F900);
  return sub_7593B0();
}

void sub_34C630(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  sub_BE70(0, &qword_93F900);
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  sub_BE38(v8, a3);
  v9 = [v7 traitCollection];
  v10 = sub_769E10();

  *a4 = v10;
}

uint64_t sub_34C734@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_BE70(0, &qword_93F900);
  if (*a2 != -1)
  {
    swift_once();
  }

  v13 = sub_BD88(&qword_94E610);
  sub_BE38(v13, a3);
  v17[1] = v12;
  sub_7592B0();
  v14 = [v12 traitCollection];
  v15 = sub_769E10();

  result = (*(v9 + 8))(v11, v8);
  *a4 = v15;
  return result;
}

void sub_34C994()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 weight:UIFontWeightMedium];
  if (!v1)
  {
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  }

  v2 = v1;
  v3 = sub_36CF70();

  qword_99CD68 = v3;
}

void sub_34CA38()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v1 = sub_36CF70();

  qword_99CD70 = v1;
}

uint64_t sub_34CA98()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_99CD78);
  sub_BE38(v7, qword_99CD78);
  if (qword_93D678 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EB60);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D670 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EB48);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_34CC78()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99CD90);
  v1 = sub_BE38(v0, qword_99CD90);
  if (qword_93D680 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99EB78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_34CD40()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_99CDA8);
  sub_BE38(v7, qword_99CDA8);
  if (qword_93D698 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EBC0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D690 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EBA8);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_34CF20()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_99CDC0);
  sub_BE38(v7, qword_99CDC0);
  if (qword_93D6B0 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EC08);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_34D0CC()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_99CDD8);
  sub_BE38(v7, qword_99CDD8);
  if (qword_93D6A8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EBF0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6A0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EBD8);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_34D2AC()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_99CDF0);
  sub_BE38(v7, qword_99CDF0);
  if (qword_93D900 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99F2F8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99F2E0);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592E0();
}

uint64_t sub_34D48C()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_99CE08);
  sub_BE38(v0, qword_99CE08);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_34D528()
{
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE00);
  qword_99CE38 = v0;
  unk_99CE40 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_99CE20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_34D5E4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleBody;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  qword_99CE60 = sub_766CA0();
  unk_99CE68 = &protocol witness table for StaticDimension;
  sub_B1B4(qword_99CE48);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_34D7E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_BD88(&qword_940AD0);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_BD88(&qword_94E5D0);
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  sub_1A2620(a3);
  sub_BD88(&qword_93FBE0);
  sub_7592D0();
  sub_7592D0();
  return sub_759390();
}

uint64_t sub_34D9C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_BD88(&qword_940AD0);
  sub_161DC(v10, a2);
  sub_BE38(v10, a2);
  if (qword_93D678 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99EB60);
  v13 = *(*(v11 - 8) + 16);
  v13(v9, v12, v11);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v4 + 104);
  v15(v9, enum case for FontSource.useCase(_:), v3);
  if (qword_93D670 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v11, qword_99EB48);
  v13(v6, v16, v11);
  v15(v6, v14, v3);
  return sub_759320();
}

uint64_t sub_34DC08()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, qword_99CF80);
  v14[1] = sub_BE38(v7, qword_99CF80);
  if (qword_93D680 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EB78);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_759320();
}

uint64_t sub_34DE18()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, qword_99CF98);
  v14[1] = sub_BE38(v7, qword_99CF98);
  if (qword_93D688 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EB90);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_759320();
}

uint64_t sub_34E050(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  *v6 = UIFontTextStyleFootnote;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v8 = UIFontTextStyleFootnote;
  return sub_759330();
}

uint64_t sub_34E188()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, qword_99CFE0);
  sub_BE38(v7, qword_99CFE0);
  if (qword_93D698 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EBC0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_93D690 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99EBA8);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_759320();
}

uint64_t sub_34E3C8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, qword_99CFF8);
  v14[1] = sub_BE38(v7, qword_99CFF8);
  if (qword_93D6B0 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EC08);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_759320();
}

uint64_t sub_34E5CC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, qword_99D010);
  v14[1] = sub_BE38(v7, qword_99D010);
  if (qword_93D6B0 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EC08);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_759320();
}

uint64_t sub_34E7D0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_BD88(&qword_940AD0);
  sub_161DC(v7, qword_99D028);
  sub_BE38(v7, qword_99D028);
  if (qword_93D6A8 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EBF0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_93D6A0 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99EBD8);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_759320();
}

uint64_t sub_34EA80(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_766CA0();
  sub_161DC(v9, a2);
  sub_BE38(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_766CB0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_34EBF0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940AD0);
  sub_161DC(v4, qword_99D0A0);
  sub_BE38(v4, qword_99D0A0);
  if (qword_93D6B8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99EC20);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_759330();
}

uint64_t sub_34EDE8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766CA0();
  sub_161DC(v11, a2);
  sub_BE38(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, a4);
  (*(*(v12 - 8) + 16))(v10, v13, v12);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17[3] = v7;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_B1B4(v17);
  (*(v8 + 16))(v14, v10, v7);
  sub_766CB0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_34EFB4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99D0E8);
  sub_BE38(v4, qword_99D0E8);
  if (qword_93D6C8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99EC50);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_34F19C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99D118);
  sub_BE38(v4, qword_99D118);
  if (qword_93D6C0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99EC38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

void sub_34F3C4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_769A00();

  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_34F464(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_94B6E0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  return sub_7593B0();
}

void sub_34F4F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_769A00())
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_7699E0();

    v4 = 1;
    if ((v5 & 1) == 0)
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t sub_34F594(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_94B6E0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  return sub_7592E0();
}

uint64_t sub_34F66C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&qword_940AD0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

void sub_34F708()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
  v1 = [v0 CGColor];

  qword_99D238 = v1;
}

uint64_t sub_34F770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_34F920()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v9;
    v14 = v7;
    v15 = v5;
  }

  else
  {
    [v0 bounds];
  }

  CGRectGetWidth(*&v15);
  [v1 bounds];
  CGRectGetWidth(v26);
  [v1 bounds];
  CGRectGetWidth(v27);
  [v1 bounds];
  CGRectGetHeight(v28);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_queryContext];
  sub_766CC0();
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  v22 = (v21 - v18) * 0.5;
  [v1 safeAreaInsets];

  return [v16 setFrame:{v22, v23 + 16.0, v18, v20}];
}

uint64_t sub_34FBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_34FC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_767A10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_queryContext;
  v43 = v8;
  if (qword_93DED0 != -1)
  {
    v38 = v12;
    swift_once();
    v12 = v38;
    v8 = v43;
  }

  v16 = sub_BE38(v12, qword_9A0388);
  sub_34FBC4(v16, v14);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v4[v15] = sub_5EFC8C(v14);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_navigationBarMargins] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_queryContextTopPadding] = 0x4030000000000000;
  sub_BE70(0, &qword_944B08);
  v18 = *(v8 + 16);
  v41 = v7;
  v42 = a1;
  v18(v10, a1, v7);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_emptyReason] = sub_769C20();
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_queryContext;
  v21 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_queryContext];
  v22 = v19;
  v23 = v21;
  v24 = sub_760F80();
  v25 = sub_760F70();
  if (v25)
  {
    v26 = v25;

    v27 = sub_764C60();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v39[1] = v30;
    v39[2] = v29;
    v31 = sub_764C70();
    v40 = v20;
    if (v31)
    {
      v32 = v31;
      if (sub_765190())
      {
        sub_759910();
      }

      else if (sub_765180())
      {
        sub_56EBA8(v32, 0);
      }
    }

    sub_BE70(0, &qword_955FA0);
    v34 = swift_allocObject();
    *(v34 + 16) = v44;
    *(v34 + 24) = v26;
    v33 = sub_76A1F0();
    v20 = v40;
  }

  else
  {
    v33 = 0;
  }

  sub_5EED50(v24, v33);

  v35 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider32ContextualContentUnavailableView_emptyReason];
  v36 = v22;
  [v36 addSubview:v35];
  [v36 addSubview:*&v19[v20]];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v43 + 8))(v42, v41);
  return v36;
}

uint64_t sub_35004C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_350090()
{
  result = qword_941108;
  if (!qword_941108)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941108);
  }

  return result;
}

double sub_3500E8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_75DA20();
  v4 = sub_75DA30();
  sub_18136C(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_35029C()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_9507E0);
  sub_BE38(v0, qword_9507E0);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

char *sub_350338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_757CA0();
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_metrics;
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v21 = sub_757E60();
  v22 = sub_BE38(v21, qword_99E450);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  v61 = sub_BE70(0, &qword_93E540);
  *&v5[v23] = sub_76A070();
  if (qword_93CD20 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v25 = sub_BE38(v24, qword_950780);
  v26 = *(v24 - 8);
  v66 = *(v26 + 16);
  v66(v19, v25, v24);
  v65 = *(v26 + 56);
  v65(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v27;
  v27(v16);
  v28 = sub_75BB20();
  v62 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppPurchaseLabel] = sub_75BB10();
  if (qword_93CD28 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v24, qword_950798);
  v66(v19, v31, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_titleLabel] = sub_75BB10();
  if (qword_93CD30 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v24, qword_9507B0);
  v66(v19, v33, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_subtitleLabel] = sub_75BB10();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_offerButton] = sub_1DD00C(0);
  sub_757C20();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_iconView] = sub_243D30(v12, 1);
  if (qword_93CD38 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v24, qword_9507C8);
  v66(v19, v38, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppDescription] = sub_75BB10();
  v40 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v40;
  v41 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppPurchaseLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppPurchaseLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_titleLabel]];
  v47 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_subtitleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_subtitleLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_offerButton]];
  v48 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_body;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_body]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_iconView]];
  v49 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppDescription;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppDescription]];
  v50 = [*&v45[v48] layer];
  [v50 setCornerRadius:20.0];

  v51 = *&v45[v46];
  v52 = [v45 tintColor];
  [v51 setTextColor:v52];

  v53 = *&v45[v47];
  v54 = sub_769FF0();
  [v53 setTextColor:v54];

  [*&v45[v48] setBackgroundColor:*&v45[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_bodyBackgroundColor]];
  v55 = qword_93CD40;
  v56 = *&v45[v49];
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = sub_BD88(&unk_93F8F0);
  sub_BE38(v57, qword_9507E0);
  v67 = v45;
  sub_7592B0();

  sub_76A150();
  v58 = *&v45[v49];
  v59 = sub_769FF0();
  [v58 setTextColor:v59];

  return v45;
}

uint64_t sub_350D68()
{
  v1 = v0;
  v2 = sub_7664F0();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_757E60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757E80();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "layoutSubviews");
  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_metrics], v4);
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_offerButton];
  v35[2] = v10;
  sub_75D650();
  v12 = &v11[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v11[v13], v60);
    sub_B170(v60, v61);
    sub_760DE0();
    v15 = v14;
    v17 = v16;
    sub_BEB8(v60);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  sub_757E50();
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
  v19 = sub_75BB20();
  v35[1] = v7;
  v61 = v19;
  v62 = &protocol witness table for UILabel;
  v60[0] = v18;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_titleLabel];
  v58 = v19;
  v59 = &protocol witness table for UILabel;
  v57 = v20;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_subtitleLabel];
  v55 = v19;
  v56 = &protocol witness table for UILabel;
  v54 = v21;
  v52 = type metadata accessor for OfferButton();
  v53 = &protocol witness table for UIView;
  v51 = v11;
  v35[0] = v11;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_iconView];
  v49 = type metadata accessor for InAppPurchaseView();
  v50 = &protocol witness table for UIView;
  v47 = &protocol witness table for UILabel;
  v48 = v22;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppDescription];
  v46 = v19;
  v45 = v23;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_body];
  v43 = sub_BE70(0, &qword_93E550);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v18;
  v26 = v20;
  v27 = v21;
  v28 = v35[0];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v36;
  sub_757E70();
  sub_75D650();
  v33 = v39;
  sub_757E20();
  (*(v40 + 8))(v33, v41);
  return (*(v37 + 8))(v32, v38);
}

id sub_3511C4(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93CD40 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0);
    sub_BE38(v6, qword_9507E0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

uint64_t sub_351364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = sub_757AA0();
  v72 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v71 = sub_7623A0();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_9457F0);
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = (&v58 - v15);
  v16 = sub_BD88(&unk_948730);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  sub_757D20();
  sub_3527C4(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_75C750();
  if (v73)
  {
    v64 = v9;
    v65 = v6;
    v20 = sub_757D10();

    sub_75A110();
    sub_768900();
    sub_768ED0();
    v63 = v73;

    v21 = v20;
    sub_764EF0();
    v23 = v22;
    v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_titleLabel];
    v61 = v14;
    v62 = a2;
    v60 = v12;
    if (v22)
    {
      v25 = sub_769210();
    }

    else
    {
      v25 = 0;
    }

    [v24 setText:v25];

    [v24 setHidden:v23 == 0];
    [v3 setNeedsLayout];
    v26 = sub_757B60();
    v27 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
    v28 = "inAppDescription";
    if (v26)
    {
      v28 = "ultType.Heading.InAppPurchase";
      v29._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v29._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v29._object = (v28 | 0x8000000000000000);
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    sub_75B750(v29, v77);
    v30 = sub_769210();

    [v27 setText:v30];

    sub_757B90();
    v31 = sub_764EF0();
    v33 = v32;

    if (v33)
    {
      v76._countAndFlagsBits = 0xD000000000000035;
      v76._object = 0x80000000007D3DD0;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      sub_75B750(v76, v78);
      sub_BD88(&unk_944E30);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_77B6D0;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_FA4CC();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_769270();

      v35 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_subtitleLabel];

      v36 = sub_769210();

      [v35 setText:v36];

      [v35 setHidden:0];
    }

    else
    {
      v37 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_subtitleLabel];
      [v37 setText:0];
      [v37 setHidden:1];
    }

    v38 = v60;
    [v3 setNeedsLayout];
    sub_757B70();
    v40 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppDescription];
    if (v39)
    {
      v41 = sub_769210();
      [v40 setText:v41];

      [v40 setHidden:0];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_inAppDescription] setText:0];
      [v40 setHidden:1];
    }

    [v3 setNeedsLayout];
    v42 = sub_764EC0();
    v43 = sub_764DB0();
    v59 = v21;

    v44 = sub_BD88(&unk_948740);
    (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
    v45 = v67;
    v46 = v71;
    (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.below(_:), v71);
    (*(v45 + 56))(v38, 1, 1, v46);
    sub_3527C4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v47 = v69;
    sub_760940();
    sub_1DFEBC(v42, v43, 0, v18, v47, v62, 0, 0);

    v70[1](v47, v61);
    sub_35280C(v18);
    v48 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_iconView];
    v74.value.super.isa = 0;
    v74.is_nil = 0;
    sub_7591D0(v74, v49);
    v75.value.super.isa = 0;
    v75.is_nil = 0;
    sub_7591D0(v75, v50);
    sub_759210();
    sub_3527C4(&qword_945810, &type metadata accessor for ArtworkView);
    v51 = v63;
    sub_75A0C0();
    sub_75A0C0();
    v71 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_bodyBackgroundColor];
    v52 = v64;
    sub_757B80();
    v53 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    v54 = v72;
    v55 = v66;
    (*(v72 + 24))(&v48[v53], v52, v66);
    swift_endAccess();
    v69 = *(v54 + 16);
    v56 = v65;
    v69(v65, &v48[v53], v55);
    sub_244454(v56);
    v70 = v3;
    v57 = *(v54 + 8);
    v57(v56, v55);
    v57(v52, v55);
    [v48 setBackgroundColor:v71];
    sub_6A9BFC(v59, v48, v51);
    v69(v52, &v48[v53], v55);
    sub_244454(v52);
    v57(v52, v55);
    [v48 setNeedsLayout];
    [v70 setNeedsLayout];
  }

  return result;
}

id sub_351D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultContentView()
{
  result = qword_950830;
  if (!qword_950830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_351E84()
{
  result = sub_757E60();
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

uint64_t sub_351F34(uint64_t a1, uint64_t a2)
{
  sub_134D8(a1, v6);
  sub_BD88(&unk_93F520);
  sub_757D20();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = sub_757D10();

    sub_6A9BFC(v5, *(v2 + OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_iconView), a2);
  }

  return result;
}

uint64_t sub_351FF0(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_7591D0(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v3);
  sub_759210();
  sub_3527C4(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  return sub_75A0C0();
}

uint64_t sub_3520DC()
{
  sub_757D20();
  sub_3527C4(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_75C750();
  if (v3)
  {
    sub_757D10();
    v1 = sub_6AA1DC();

    v2._rawValue = v1;
    sub_75A070(v2);
  }

  return result;
}

uint64_t sub_3521FC(uint64_t a1)
{
  *(a1 + 24) = sub_3527C4(&qword_950848, type metadata accessor for InAppPurchaseSearchResultContentView);
  result = sub_3527C4(&unk_950850, type metadata accessor for InAppPurchaseSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

double sub_352280()
{
  v0 = sub_75D850();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_757E60();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75DAB0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_7656C0();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757D20();
  sub_3527C4(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  sub_75C750();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v11;
  sub_757D10();

  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();

  sub_764EF0();

  sub_764F70();

  v14 = sub_527DE4();
  sub_765630();
  sub_769DA0();
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v15 = v28;
  v16 = sub_BE38(v28, qword_99E450);
  v17 = v27;
  (*(v27 + 16))(v9, v16, v15);
  v18 = [v14 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v19 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v19 = qword_946938;
  }

  v21 = sub_BE38(v0, v19);
  (*(v1 + 16))(v3, v21, v0);

  (*(v1 + 32))(v6, v3, v0);
  sub_75D800();
  sub_75D830();
  sub_757E50();
  sub_757E30();
  v20 = v22;

  swift_unknownObjectRelease();
  (*(v1 + 8))(v6, v0);
  (*(v17 + 8))(v9, v28);
  (*(v26 + 8))(v13, v25);
  return v20;
}

uint64_t sub_3527C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_35280C(uint64_t a1)
{
  v2 = sub_BD88(&unk_948730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_352874()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75C7F0();
  sub_75C720();
  v5 = sub_35299C(v3);
  v6 = sub_353010(v5);

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v4 % v8;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = *(v6 + v9 + 32);

      (*(v1 + 8))(v3, v0);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_35299C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36[-1] - v10;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  if ((v36[0] & 1) == 0)
  {
    sub_75DA20();
    sub_765550();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 <= 1.0)
    {
      return sub_485980(a1);
    }

    sub_3533B4(v36);
    v15 = v36[0];
    v16 = v36[1];
    v17 = *&v36[2];
    if (v37)
    {
      v18 = 0;
    }

    else
    {
      v21 = v36[3];
      v20 = v36[4];
      v22 = *&v36[5];
      swift_beginAccess();
      v23 = *(v1 + 16);
      if (*(v23 + 16) && (v24 = sub_664128(v21, v20, v22), (v25 & 1) != 0))
      {
        v18 = *(*(v23 + 56) + 8 * v24);
      }

      else
      {
        v18 = 0;
      }

      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v2 + 16);
    if (*(v26 + 16) && (v27 = sub_664128(v15, v16, v17), (v28 & 1) != 0))
    {
      v19 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();

      if (!v18)
      {
LABEL_16:

        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      v19 = sub_485980(a1);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v29 = *(v18 + 16);
    if (v29)
    {
      v30 = *(v18 + 8 * v29 + 24);

      if (*(v19 + 16))
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_23:
    v30 = 0;
    if (*(v19 + 16))
    {
LABEL_24:
      v31 = *(v19 + 32);

      if (v30)
      {
        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = sub_11748C(v30, v31);

        if ((v32 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v31)
      {
LABEL_31:

LABEL_32:
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_45943C(v19, v15, v16, isUniquelyReferenced_nonNull_native, v17);
        *(v2 + 16) = v35;
        swift_endAccess();
        return v19;
      }

LABEL_30:
      v19 = sub_483830(v19);
      goto LABEL_31;
    }

LABEL_20:

    if (v30)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return sub_485B90(a1);
}

Swift::Int sub_352DB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_76AA30();
  sub_76AA40(v1);
  sub_76AA40(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_76AA60(*&v4);
  return sub_76AA80();
}

void sub_352E30()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_76AA40(*v0);
  sub_76AA40(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_76AA60(*&v3);
}

Swift::Int sub_352E8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_76AA30();
  sub_76AA40(v1);
  sub_76AA40(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_76AA60(*&v4);
  return sub_76AA80();
}

uint64_t getEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_352FBC()
{
  result = qword_950908;
  if (!qword_950908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950908);
  }

  return result;
}

uint64_t sub_353010(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_BD88(&qword_941A38);
          v16 = swift_allocObject();
          v17 = 2 * j__malloc_size_0(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v22)
  {
    *(v5 + 2) = v25;
    return v5;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_3531FC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      result = sub_132B4(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = *(v2 + 3);
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_BD88(&unk_950910);
        v10 = swift_allocObject();
        v11 = (j__malloc_size_0(v10) - 32) / 40;
        *(v10 + 2) = v9;
        *(v10 + 3) = 2 * v11;
        v12 = (v10 + 4);
        v13 = *(v2 + 3) >> 1;
        if (*(v2 + 2))
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0.0;
        }

        v6 = (v12 + 40 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      *(v6 + 4) = v25;
      *v6 = v16;
      *(v6 + 1) = v17;
      v6 += 5;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = *(v2 + 3);
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    *(v2 + 2) = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_3533B4@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_BD88(&qword_963790);
  __chkstk_darwin(v1 - 8);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v29 - v4;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = sub_75DA90();
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v30 = *(v10 + 8);
  v30(v14, v9);
  v32 = *(v38 + 16);

  sub_75DA20();
  sub_765580();
  v16 = v15;
  v17 = *(v6 + 8);
  v31 = v5;
  v29 = v17;
  v17(v8, v5);
  v18 = v36;
  v19 = v37;
  sub_75DA50();
  sub_353788(v19);
  v20 = (*(v10 + 48))(v18, 1, v9);
  if (v20 == 1)
  {
    result = sub_353788(v18);
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_5:
    v27 = v35;
    v28 = v32;
    *v35 = v34;
    v27[1] = v28;
    v27[2] = v16;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    *(v27 + 48) = v20 == 1;
    return result;
  }

  (*(v10 + 32))(v33, v18, v9);
  result = sub_75DA90();
  v22 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    swift_getKeyPath();
    v25 = v33;
    sub_768750();

    v23 = *(v38 + 16);

    sub_75DA20();
    sub_765580();
    v24 = v26;
    v29(v8, v31);
    result = (v30)(v25, v9);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_353788(uint64_t a1)
{
  v2 = sub_BD88(&qword_963790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_3537F0()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_F704(v3);
  sub_355FD4(_swiftEmptyArrayStorage);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_7591D0(v14, v4);
  v5 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_7591D0(v15, v6);

  v7 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v8)
  {
    [v8 setEnabled:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardView];
  [v9 addSubview:v10];
  v12[0] = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0x3FF0000000000000;
  v12[4] = 0;
  v12[5] = 0;
  [v10 setTransform:v12];
  [v10 setAlpha:1.0];
  return [v10 setHidden:0];
}

uint64_t sub_353950()
{
  v0 = sub_766690();
  __chkstk_darwin(v0 - 8);
  v23[2] = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_75D510();
  sub_161DC(v6, qword_99D278);
  v23[1] = sub_BE38(v6, qword_99D278);
  if (qword_93D5E0 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99E998);
  v9 = *(v7 - 8);
  v26 = *(v9 + 16);
  v25 = v9 + 16;
  v26(v5, v8, v7);
  v10 = v3[13];
  v24 = enum case for FontSource.useCase(_:);
  v27 = v10;
  v10(v5);
  v11 = sub_766CA0();
  v40[3] = v11;
  v40[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v40);
  v38 = v2;
  v39 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v37);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  if (qword_93D5E8 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v7, qword_99E9B0);
  v26(v5, v15, v7);
  v27(v5, v24, v2);
  v38 = v11;
  v39 = &protocol witness table for StaticDimension;
  sub_B1B4(v37);
  v35 = v2;
  v36 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v34);
  v13(v16, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  if (qword_93D5F0 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v7, qword_99E9C8);
  v26(v5, v17, v7);
  v18 = v27;
  v27(v5, v24, v2);
  v35 = v11;
  v36 = &protocol witness table for StaticDimension;
  sub_B1B4(v34);
  v32 = v2;
  v33 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v31);
  v13(v19, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  *v5 = UIFontTextStyleBody;
  v18(v5, enum case for FontSource.textStyle(_:), v2);
  v32 = v11;
  v33 = &protocol witness table for StaticDimension;
  sub_B1B4(v31);
  v29 = v2;
  v30 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v28);
  v13(v20, v5, v2);
  v21 = UIFontTextStyleBody;
  sub_766CB0();
  v14(v5, v2);
  sub_7666A0();
  v30 = &protocol witness table for Double;
  v29 = &type metadata for Double;
  v28[0] = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  return sub_75D4E0();
}

uint64_t sub_353EEC()
{
  v0 = sub_7674E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_767510();
  sub_161DC(v4, qword_99D290);
  sub_BE38(v4, qword_99D290);
  (*(v1 + 104))(v3, enum case for Separator.Position.top(_:), v0);
  v7[3] = sub_766970();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v7);
  sub_766960();
  return sub_7674F0();
}

uint64_t sub_354024()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99D2A8);
  sub_BE38(v0, qword_99D2A8);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_354188()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  sub_75CE20();
  if (qword_93D5A8 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E908);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v47 = v1[13];
  v47(v3, enum case for FontSource.useCase(_:), v0);
  v43 = sub_766CA0();
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v50);
  v12 = v1[2];
  v49 = v1 + 2;
  v42 = v12;
  v12(v11, v3, v0);
  sub_766CB0();
  v14 = v1[1];
  v13 = v1 + 1;
  v44 = v14;
  v14(v3, v0);
  sub_75CE00();
  if (qword_93D5B0 != -1)
  {
    swift_once();
  }

  v40 = sub_BE38(v4, qword_99E920);
  v7(v3, v40, v4);
  HIDWORD(v39) = v9;
  v15 = v47;
  v47(v3, v9, v0);
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v45 = v10;
  v46 = v8;
  v48 = v7;
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v50);
  v42(v16, v3, v0);
  sub_766CB0();
  v41 = v13;
  v44(v3, v0);
  sub_75CED0();
  v17 = v40;
  v18 = v4;
  v48(v3, v40, v4);
  v19 = HIDWORD(v39);
  v15(v3, HIDWORD(v39), v0);
  v20 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v50);
  v22 = v42;
  v42(v21, v3, v0);
  sub_766CB0();
  v23 = v44;
  v44(v3, v0);
  sub_75CEA0();
  v48(v3, v17, v18);
  v24 = v19;
  v25 = v19;
  v26 = v47;
  v47(v3, v24, v0);
  v54 = v20;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v50);
  v22(v27, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  sub_75CE90();
  v28 = v40;
  v40 = v18;
  v48(v3, v28, v18);
  v26(v3, v25, v0);
  v29 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v50);
  v31 = v42;
  v42(v30, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  sub_75CEF0();
  if (qword_93D5B8 != -1)
  {
    swift_once();
  }

  v32 = v40;
  v33 = sub_BE38(v40, qword_99E938);
  v48(v3, v33, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v50);
  v31(v34, v3, v0);
  sub_766CB0();
  v35 = v44;
  v44(v3, v0);
  sub_75CE50();
  if (qword_93D5C0 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v32, qword_99E950);
  v48(v3, v36, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_B1B4(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v37 = sub_B1B4(v50);
  v31(v37, v3, v0);
  sub_766CB0();
  v35(v3, v0);
  sub_75CE60();
  return sub_75CE40();
}

void sub_3548F8(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

char *sub_3549C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v121 = sub_75CF00();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v12;
  v116 = sub_7593D0();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760AD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *&v5[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer] = 0;
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_clickAction;
  v26 = sub_BD88(&unk_950960);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView] = v27;
  v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardView] = v28;
  sub_759210();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_artworkView] = sub_759010();
  if (qword_93D5E0 != -1)
  {
    swift_once();
  }

  v29 = sub_7666D0();
  v30 = sub_BE38(v29, qword_99E998);
  v31 = *(v29 - 8);
  v32 = v31 + 16;
  v33 = *(v31 + 16);
  v33(v19, v30, v29);
  v36 = *(v31 + 56);
  v34 = v31 + 56;
  v35 = v36;
  v36(v19, 0, 1, v29);
  v37 = *(v15 + 104);
  v129 = enum case for DirectionalTextAlignment.none(_:);
  v127 = v15 + 104;
  v128 = v37;
  v37(v131);
  v38 = sub_75BB20();
  v126 = v14;
  v39 = v38;
  v40 = objc_allocWithZone(v38);
  v132 = v19;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel] = sub_75BB10();
  if (qword_93D5E8 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v29, qword_99E9B0);
  v42 = v132;
  v33(v132, v41, v29);
  v35(v42, 0, 1, v29);
  v128(v131, v129, v126);
  v43 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D5F0 != -1)
  {
    swift_once();
  }

  v44 = sub_BE38(v29, qword_99E9C8);
  v45 = v132;
  v123 = v33;
  v124 = v32;
  v33(v132, v44, v29);
  v118 = v29;
  v125 = v34;
  v122 = v35;
  v35(v45, 0, 1, v29);
  v128(v131, v129, v126);
  v46 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_subtitleLabel] = sub_75BB10();
  v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView] = sub_4AA654(1);
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v133.receiver = v5;
  v133.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v133, "initWithFrame:", a1, a2, a3, a4);
  v49 = [v48 contentView];
  [v49 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v50 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel;
  [*(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel) _setTextColorFollowsTintColor:1];
  v51 = *(v48 + v50);
  sub_75BAD0();

  v52 = [v48 contentView];
  [v52 addSubview:*(v48 + v50)];

  v53 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_titleLabel;
  v54 = *(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_titleLabel);
  sub_75BAD0();

  v55 = [v48 contentView];
  [v55 addSubview:*(v48 + v53)];

  v56 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_subtitleLabel;
  v57 = *(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_subtitleLabel);
  sub_BE70(0, &qword_93E540);
  v58 = v57;
  v59 = sub_769FF0();
  [v58 setTextColor:v59];

  v60 = *(v48 + v56);
  sub_75BAD0();

  v61 = [v48 contentView];
  [v61 addSubview:*(v48 + v56)];

  v62 = [v48 contentView];
  v63 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView;
  [v62 addSubview:*(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView)];

  v64 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardView;
  [*(v48 + v63) addSubview:*(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardView)];
  [*(v48 + v64) setAccessibilityIgnoresInvertColors:1];
  v131 = v64;
  v65 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_artworkView;
  [*(v48 + v64) addSubview:*(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_artworkView)];
  v66 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView;
  v67 = *(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView);
  v68 = v115;
  v69 = v114;
  v70 = v116;
  (*(v115 + 104))(v114, enum case for CornerStyle.arc(_:), v116);
  v71 = v67;
  sub_4A9A6C(v69, 12, 20.0);

  (*(v68 + 8))(v69, v70);
  v72 = *(v48 + v65);
  v73 = sub_75CCF0();

  if (v73)
  {
    [*(v48 + v65) insertSubview:*(v48 + v66) belowSubview:v73];
  }

  else
  {
    [*(v48 + v65) addSubview:*(v48 + v66)];
  }

  sub_355A14();
  v74 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView;
  v75 = qword_93CD58;
  v76 = *(v48 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView);
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = sub_BE38(v121, qword_99D2A8);
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v119;
  v80(v119, v78, v77);
  v82 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v83 = v117;
  v80(v117, v81, v77);
  v84 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v79 + 24))(&v82[v84], v83, v77);
  swift_endAccess();
  [v82 setNeedsLayout];
  v85 = *(v79 + 8);
  v85(v83, v77);
  [v76 setNeedsLayout];

  v85(v81, v77);
  [*(v48 + v74) setLayoutMargins:{0.0, 14.0, 3.0, 14.0}];
  [*(v48 + v74) setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v86 = qword_93D5B0;
  v87 = *(*(*(v48 + v74) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v88 = v74;
  if (v86 != -1)
  {
    swift_once();
  }

  v89 = v118;
  v90 = sub_BE38(v118, qword_99E920);
  v91 = v132;
  v92 = v123;
  v123(v132, v90, v89);
  v93 = v122;
  v122(v91, 0, 1, v89);
  sub_75BA40();

  v94 = qword_93D5B8;
  v95 = *(*(*(v48 + v88) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v94 != -1)
  {
    swift_once();
  }

  v96 = sub_BE38(v89, qword_99E938);
  v92(v91, v96, v89);
  v93(v91, 0, 1, v89);
  sub_75BA40();

  v97 = qword_93D5C0;
  v98 = *(*(*(v48 + v88) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_BE38(v89, qword_99E950);
  v92(v91, v99, v89);
  v93(v91, 0, 1, v89);
  sub_75BA40();

  v100 = qword_93D570;
  v101 = *(*(v48 + v88) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_BE38(v89, qword_99E860);
  v92(v91, v102, v89);
  v93(v91, 0, 1, v89);
  sub_75BA40();

  v103 = qword_93D578;
  v104 = *(*(v48 + v88) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel);
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = sub_BE38(v89, qword_99E878);
  v92(v91, v105, v89);
  v93(v91, 0, 1, v89);
  sub_75BA40();

  swift_unknownObjectWeakAssign();
  v106 = *&v131[v48];
  v107 = *(v48 + v88);
  v108 = v48;
  [v106 addSubview:v107];
  v109 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_tapGestureRecognizer;
  [*&v108[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_tapGestureRecognizer] setDelegate:v108];
  v110 = *&v108[v109];
  [v110 addTarget:v108 action:"handleTapWithGestureRecognizer:"];

  [*(v48 + v88) addGestureRecognizer:*&v108[v109]];
  [*(v48 + v88) setUserInteractionEnabled:1];
  sub_BD88(&qword_9477F0);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_77B6D0;
  *(v111 + 32) = sub_7676F0();
  *(v111 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v108;
}

void sub_355A14()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_769B60();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY);
    *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY) = 0x3FE0000000000000;
    v5 = 0.5;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_769B40();
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY);
    if (v6)
    {
      *v4 = 0.45;
      v5 = 0.45;
    }

    else
    {
      *v4 = 0.4;
      v5 = 0.4;
    }
  }

  v8 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
  v9 = [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v11 = v10;

  v12 = *v4;
  v13 = [*(v3 + v8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v14 = [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v15 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY) = v5;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
  v17 = [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v19 = v18;

  v20 = *(v3 + v15);
  v21 = [*(v3 + v16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v19, v20}];
}

id sub_355D98()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_tapGestureRecognizer] removeTarget:v0 action:0];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditorialCardCollectionViewCell()
{
  result = qword_950950;
  if (!qword_950950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_355FD4(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v15 = a1;
    v16 = sub_76A860();
    a1 = v15;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v3 = a1;
    v4 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView;
    v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView];
    if (!v5)
    {
      v8 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v9 = *&v2[v4];
      if (v9)
      {
        [v9 removeFromSuperview];
        v10 = *&v2[v4];
      }

      else
      {
        v10 = 0;
      }

      *&v2[v4] = v8;
      v11 = v8;

      if (v11)
      {
        v12 = v11[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
        v11[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 2;
        sub_26B40C(v12);
        v13 = [v2 contentView];
        [v13 addSubview:v11];
      }

      [v2 setNeedsLayout];

      v14 = *&v2[v4];
      if (!v14)
      {
        goto LABEL_13;
      }

      *(v14 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_88E568;
      swift_unknownObjectWeakAssign();
      v5 = *&v2[v4];
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [v5 setHidden:0];
    v6 = *&v2[v4];
    if (v6)
    {
      v7 = v6;
      sub_268FDC(v3);
    }

    else
    {
LABEL_13:
    }

    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel] setHidden:1];
    sub_35625C([objc_allocWithZone(UILongPressGestureRecognizer) init]);
    goto LABEL_22;
  }

  v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v17)
  {
    [v17 setHidden:1];
  }

  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel] setHidden:0];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v19 = *&v2[v18];
  }

  else
  {
    v19 = 0;
  }

  *&v2[v18] = 0;

LABEL_22:

  return [v2 setNeedsLayout];
}

void sub_35625C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"stateChangedFor:"];
    [v6 setMinimumPressDuration:0.1];
    [v6 setDelegate:v1];

    v7 = [v1 contentView];
    [v7 addGestureRecognizer:v6];
  }
}

uint64_t sub_356380()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_75D850();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v73 - v5;
  v81 = sub_75CF00();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v73 - v9;
  v78 = sub_7664F0();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75D510();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_75D530();
  v82 = *(v83 - 8);
  *&v17 = __chkstk_darwin(v83).n128_u64[0];
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v84 = ObjectType;
  objc_msgSendSuper2(&v100, "layoutSubviews", v17);
  v19 = [v1 contentView];
  v20 = sub_BE70(0, &qword_93E550);
  sub_75D650();

  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView];
  v79 = v7;
  if (v21)
  {
    v22 = v21;
    if (![v22 isHidden])
    {
      goto LABEL_5;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel];
LABEL_5:
  v23 = qword_93CD48;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v13, qword_99D278);
  (*(v14 + 16))(v16, v25, v13);
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView];
  v98 = v20;
  v99 = &protocol witness table for UIView;
  v96 = &protocol witness table for UIView;
  v97 = v26;
  v95 = v20;
  v85 = v24;
  v94 = v24;
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_titleLabel];
  v92 = sub_75BB20();
  v93 = &protocol witness table for UILabel;
  v91 = v27;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_subtitleLabel];
  v90 = &protocol witness table for UILabel;
  v89 = v92;
  v88 = v28;
  v29 = v26;
  v30 = v27;
  v31 = v28;
  sub_75D520();
  sub_75D4D0();
  (*(v10 + 8))(v12, v78);
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardView];
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    v35 = sub_76A1C0();

    v36 = v80;
    v37 = v79;
    if (v35)
    {
      [v29 bounds];
      [v32 setBounds:{0.0, 0.0}];
      [v29 bounds];
      v39 = v38 * 0.5;
      [v29 bounds];
      [v32 setCenter:{v39, v40 * 0.5}];
    }
  }

  else
  {

    v36 = v80;
    v37 = v79;
  }

  [v29 bounds];
  v42 = v41;
  v44 = v43;
  sub_759170();
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView];
  v46 = v86;
  sub_11E030(v86);
  [v45 layoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [v45 traitCollection];
  v52 = v81;
  (*(v36 + 16))(v37, v46, v81);
  v53 = sub_75CE70();
  v55 = v85;
  if ((v56 & 1) == 0 && ((v53 | v54) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v57 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v57 = qword_946938;
    }

    v58 = v77;
    v59 = sub_BE38(v77, v57);
    v60 = v76;
    v61 = v74;
    (*(v76 + 16))(v74, v59, v58);
    v62 = v75;
    (*(v60 + 32))(v75, v61, v58);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v60 + 8))(v62, v58);
    v46 = v86;
    v55 = v85;
  }

  sub_75CDB0();
  v64 = v63;
  v66 = v65;

  v67 = *(v36 + 8);
  v67(v37, v52);
  v68 = v50 + v48 + v66;
  v67(v46, v52);
  v101.origin.x = 0.0;
  v101.origin.y = 0.0;
  v101.size.width = v42;
  v101.size.height = v44;
  MinX = CGRectGetMinX(v101);
  v102.origin.x = 0.0;
  v102.origin.y = 0.0;
  v102.size.width = v42;
  v102.size.height = v44;
  [v45 setFrame:{MinX, CGRectGetMaxY(v102) - v68, v64, v68}];
  [v45 setNeedsLayout];
  v70 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView];
  v103.origin.x = 0.0;
  v103.origin.y = 0.0;
  v103.size.width = v42;
  v103.size.height = v44;
  Width = CGRectGetWidth(v103);
  v104.origin.x = 0.0;
  v104.origin.y = 0.0;
  v104.size.width = v42;
  v104.size.height = v44;
  [v70 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v104)}];
  sub_358BAC(&qword_950978, type metadata accessor for EditorialCardCollectionViewCell);
  sub_760A70();

  return (*(v82 + 8))(v87, v83);
}

void sub_356D4C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_BD88(&unk_950960);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer);
  if (!v16)
  {
    return;
  }

  v56 = v13;
  sub_BE70(0, &qword_94AB00);
  v57 = v16;
  if ((sub_76A1C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = ObjectType;
  v55 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView);
  v18 = [v17 superview];
  v19 = [v1 contentView];
  v20 = v19;
  if (v18)
  {
    if (!v19)
    {

      goto LABEL_16;
    }

    sub_BE70(0, &qword_93E550);
    v21 = sub_76A1C0();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {

    goto LABEL_16;
  }

  v22 = [a1 state];
  if (v22 > 3)
  {
    if ((v22 - 4) >= 2)
    {
      goto LABEL_16;
    }

    v56 = [v17 superview];
    v26 = [v2 contentView];
    if (v56)
    {
      if (!v26)
      {
LABEL_33:

        v25 = v56;
        goto LABEL_17;
      }

      v55 = v26;
      sub_BE70(0, &qword_93E550);
      v27 = sub_76A1C0();

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
      goto LABEL_39;
    }

    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = 0x3FF0000000000000;
    v62 = sub_358B1C;
    v63 = v38;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_23F0CC;
    v61 = &unk_88E5B0;
    v39 = _Block_copy(&aBlock);
    v40 = v2;

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v40;
    v62 = sub_358B40;
    v63 = v41;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v42 = &unk_88E600;
LABEL_41:
    v60 = sub_3D6D80;
    v61 = v42;
    v50 = _Block_copy(&aBlock);
    v51 = v40;

    [v37 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v39 options:v50 animations:0.0 completion:1.0];
    _Block_release(v50);
    _Block_release(v39);

    return;
  }

  if (v22 != &dword_0 + 1)
  {
    if (v22 == &dword_0 + 2)
    {
      [a1 locationInView:v17];
      v34 = v32;
      v35 = v33;
      v36 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_initialLongPressLocation);
      if (v36[2])
      {

        *v36 = v34;
        v36[1] = v35;
        *(v36 + 16) = 0;
        return;
      }

      v43 = sqrt((v33 - v36[1]) * (v33 - v36[1]) + (v32 - *v36) * (v32 - *v36));
      [v57 allowableMovement];
      if (v44 < v43)
      {
        [a1 setEnabled:0];
      }
    }

    else if (v22 == &dword_0 + 3)
    {
      v23 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_clickAction;
      swift_beginAccess();
      sub_358A74(v2 + v23, v10);
      v24 = v55;
      if ((*(v55 + 6))(v10, 1, v56) == 1)
      {

        sub_10A2C(v10, &qword_94EC40);
      }

      else
      {
        v24[4](v15, v10, v56);
        sub_75B470();
        v61 = v54;
        aBlock = v2;
        v45 = v2;
        sub_764C00();

        sub_75B460();
        v46 = sub_BD88(&unk_93F630);
        sub_768860();

        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          (v24[1])(v15, v56);

          sub_10A2C(v7, &unk_93F980);
        }

        else
        {
          v52 = v56;
          sub_75B470();
          v53 = sub_75B460();
          sub_32A6C0(aBlock, 1, v53, v7);

          (v24[1])(v15, v52);

          (*(v47 + 8))(v7, v46);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  [a1 locationInView:v17];
  v28 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v28 = v29;
  *(v28 + 1) = v30;
  v28[16] = 0;
  v56 = [v17 superview];
  v26 = [v2 contentView];
  if (!v56)
  {
    if (!v26)
    {
LABEL_40:
      v37 = objc_opt_self();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = 0x3FEEB851EB851EB8;
      v62 = sub_358D78;
      v63 = v48;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_23F0CC;
      v61 = &unk_88E650;
      v39 = _Block_copy(&aBlock);
      v40 = v2;

      v49 = swift_allocObject();
      *(v49 + 16) = 1;
      *(v49 + 24) = v40;
      v62 = sub_358D88;
      v63 = v49;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v42 = &unk_88E6A0;
      goto LABEL_41;
    }

LABEL_39:
    v55 = v26;

    v25 = v55;
    goto LABEL_17;
  }

  if (!v26)
  {
    goto LABEL_33;
  }

  v55 = v26;
  sub_BE70(0, &qword_93E550);
  v31 = sub_76A1C0();

  if (v31)
  {
    goto LABEL_40;
  }

LABEL_16:
  v25 = v57;
LABEL_17:
}

id sub_357700(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_3577A8(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  sub_355A14();
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    sub_357860();
  }
}

void sub_357860()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView);
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  sub_769240();
  v3 = sub_769210();

  v4 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel] layer];
  [v4 setCompositingFilter:v3];

  v5 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
  v6 = [*(*&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v3];

  v7 = [*(*(*&v1[v5] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v3];

  v8 = [*(*&v1[v5] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) layer];
  [v8 setCompositingFilter:v3];
}

BOOL sub_357AC0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_94EC40);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v37 - v8;
  v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    sub_BE70(0, &unk_94A280);
    v11 = a1;
    v12 = v10;
    v13 = sub_76A1C0();

    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView];
      [a2 locationInView:v14];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v38.x = v16;
      v38.y = v18;
      if (CGRectContainsPoint(v41, v38))
      {
        return 0;
      }

      [a2 locationInView:v3];
      v20 = v19;
      v22 = v21;
      v23 = [v3 hitTest:0 withEvent:?];
      [v3 bounds];
      v39.x = v20;
      v39.y = v22;
      if (CGRectContainsPoint(v42, v39))
      {
        if (!v23 || (objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, !v24))
        {
          v25 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_clickAction;
          swift_beginAccess();
          sub_358A74(&v3[v25], v9);
          v26 = sub_BD88(&unk_950960);
          v27 = (*(*(v26 - 8) + 48))(v9, 1, v26) != 1;
          sub_10A2C(v9, &qword_94EC40);
          return v27;
        }

        return 0;
      }

LABEL_12:

      return 0;
    }
  }

  [a2 locationInView:{v3, v7}];
  v30 = v29;
  v32 = v31;
  v23 = [v3 hitTest:0 withEvent:?];
  [v3 bounds];
  v40.x = v30;
  v40.y = v32;
  if (!CGRectContainsPoint(v43, v40))
  {
    goto LABEL_12;
  }

  if (v23)
  {
    sub_BE70(0, &qword_93E550);
    v33 = v23;
    v34 = v3;
    v35 = sub_76A1C0();

    if (v35)
    {

      return 0;
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();

    if (v36)
    {
      return 0;
    }
  }

  return *&v3[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction] != 0;
}

void sub_357F50()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_2F1CA0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_35805C()
{
  sub_759050();
  sub_759210();
  sub_358BAC(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759050();

  v4 = *(v1 + v2);
  sub_75A0C0();
}

void sub_358178()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_268E5C();
  }
}

double sub_358240()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView;
  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_cardContainerView) bounds];
  v4 = v3 * 0.5;
  [*(v1 + v2) bounds];
  return v4;
}

uint64_t sub_3582A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_75CF00();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_766690();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_765240();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v52 - v18;
  sub_134D8(a1, v61);
  sub_BD88(&unk_93F520);
  sub_75A220();
  result = swift_dynamicCast();
  if (result)
  {
    v52[1] = v8;
    v53 = v14;
    v21 = v60;
    v22 = sub_75A1F0();
    v54 = v21;
    v55 = a2;
    if (v22)
    {
      sub_765250();
      sub_765200();
      sub_358BAC(&qword_950970, &type metadata accessor for Artwork.Crop);
      v23 = sub_7691C0();
      v24 = *(v53 + 8);
      v24(v16, v13);
      if (v23)
      {
        v52[0] = 5;
      }

      else
      {
        v52[0] = sub_765210();
      }

      v24(v19, v13);
      v25 = v59;
      v26 = [v59 contentView];
      sub_BE70(0, &qword_93E550);
      sub_75D650();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      if (qword_93CD48 != -1)
      {
        swift_once();
      }

      v35 = sub_75D510();
      sub_BE38(v35, qword_99D278);
      sub_75D500();
      v62.origin.x = v28;
      v62.origin.y = v30;
      v62.size.width = v32;
      v62.size.height = v34;
      CGRectGetWidth(v62);
      v63.origin.x = v28;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v34;
      CGRectGetWidth(v63);
      sub_766660();
      (*(v10 + 8))(v12, v9);
      v36 = v52[0];
      sub_765330();
      v37 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_artworkView];
      sub_7652E0();
      sub_7591B0();
      [v37 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      [v37 setContentMode:v36];
      sub_759210();
      sub_358BAC(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }

    if (sub_75A1E0())
    {
      v38 = sub_764F20();

      if (v38)
      {
        v39 = *&v59[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView];
        v40 = *(v39 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
        v41 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
        swift_beginAccess();
        v42 = v57;
        v43 = v40 + v41;
        v44 = v56;
        v45 = v58;
        (*(v57 + 16))(v56, v43, v58);
        sub_75CDD0();
        (*(v42 + 8))(v44, v45);
        sub_765250();
        sub_765210();
        v59 = *(v53 + 8);
        (v59)(v16, v13);
        sub_765330();
        v46 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
        v47 = *(v39 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
        sub_7652E0();
        sub_7591B0();
        [v47 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540);
          sub_76A030();
        }

        sub_759070();

        v48 = *(v39 + v46);
        sub_765250();
        v49 = sub_765210();
        (v59)(v16, v13);
        [v48 setContentMode:v49];

        v50 = *(v39 + v46);
        sub_759210();
        sub_358BAC(&qword_945810, &type metadata accessor for ArtworkView);
        v51 = v50;
        sub_75A050();
      }
    }
  }

  return result;
}

uint64_t sub_358A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94EC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_358AE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_358B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_358B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_358B7C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer);
    if (v1)
    {
      [v1 setEnabled:1];
    }
  }
}

uint64_t sub_358BAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_358BF4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_longPressGestureRecognizer) = 0;
  v5 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_clickAction;
  v7 = sub_BD88(&unk_950960);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_76A840();
  __break(1u);
}

unint64_t sub_358DA0()
{
  result = qword_950980;
  if (!qword_950980)
  {
    sub_762F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950980);
  }

  return result;
}

uint64_t sub_358DF8(void *a1)
{
  v2 = sub_7687C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_758BB0();
    v6 = a1;
    sub_762F80();
    sub_758B70();

    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    sub_768F60();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v8 = sub_768FF0();
    sub_BE38(v8, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_3591D8();
    swift_allocError();
    sub_768F50();
  }
}

uint64_t sub_3590A8(uint64_t *a1)
{
  v1 = *a1;
  sub_BD88(&qword_94DDC0);
  v2 = sub_768F90();
  sub_758BB0();
  v5[3] = sub_12EA98();
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = sub_769970();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_758B60();

  sub_BEB8(v5);
  return v2;
}

uint64_t sub_359190()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_3591D8()
{
  result = qword_950988;
  if (!qword_950988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950988);
  }

  return result;
}

unint64_t sub_359240()
{
  result = qword_950990;
  if (!qword_950990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950990);
  }

  return result;
}

uint64_t sub_359294()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99D338);
  sub_BE38(v0, qword_99D338);
  return sub_7666A0();
}

uint64_t sub_3592E8()
{
  v0 = sub_BD88(&unk_9509E0);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_759270();
  sub_161DC(v10, qword_99D350);
  v19[2] = sub_BE38(v10, qword_99D350);
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v6, qword_99D338);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_93DAA0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v19[0] = sub_BE38(v12, qword_99F7D8);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = sub_766CA0();
  v22[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_B1B4(v21);
  (*(v3 + 16))(v16, v5, v2);
  sub_766CB0();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return sub_759260();
}

uint64_t sub_35968C()
{
  v0 = sub_BD88(&unk_9509E0);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_766690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_759270();
  sub_161DC(v7, qword_99D368);
  sub_BE38(v7, qword_99D368);
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v3, qword_99D338);
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_7664A0();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_759260();
}

char *sub_359874(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v13 = &v5[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
  sub_759210();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_artworkView] = sub_759030();
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_artworkView]];

  sub_BD88(&qword_9477F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77B6D0;
  *(v17 + 32) = sub_7676F0();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v14;
}

id sub_359B6C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &unk_90D000;
      if (v13)
      {
      }

      else
      {
        v17 = qword_93DAA0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_7666D0();
        v19 = sub_BE38(v18, qword_99F7D8);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(sub_75BB20());
        v22 = sub_75BB10();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &unk_90D000;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = sub_769210();

        [v28 setText:v29];

        return [v1 v14[463]];
      }

LABEL_20:

      return [v1 v14[463]];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_359F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_759270();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = sub_759290();
  v13 = *(v33 - 8);
  *&v14 = __chkstk_darwin(v33).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v14);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabel;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  if ([v19 isHidden])
  {

LABEL_4:
    if (qword_93CD70 != -1)
    {
      swift_once();
    }

    v20 = sub_BE38(v6, qword_99D368);
    (*(v7 + 16))(v9, v20, v6);
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_artworkView];
    v40 = sub_759210();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = v21;
    sub_759280();
    goto LABEL_13;
  }

  if (qword_93CD68 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v6, qword_99D350);
  (*(v7 + 16))(v12, v23, v6);
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_artworkView];
  v40 = sub_759210();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = *&v1[v17];
  if (v25)
  {
    v26 = sub_75BB20();
    v27 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
  }

  *&v36 = v25;
  *(&v37 + 1) = v26;
  v38 = v27;
  v28 = v24;
  v29 = v25;
  sub_759280();

LABEL_13:
  v30 = [v1 contentView];
  sub_2630C();
  sub_75D650();

  sub_759250();
  (*(v34 + 8))(v5, v35);
  return (*(v13 + 8))(v16, v33);
}

uint64_t type metadata accessor for BrickCollectionViewCell()
{
  result = qword_9509C8;
  if (!qword_9509C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_35A4C8()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_35A588()
{
  v1 = v0;
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v2 = sub_766690();
  sub_BE38(v2, qword_99D338);
  v3 = [v0 contentView];
  sub_2630C();
  sub_75D650();

  sub_766660();
  v4 = [v1 contentView];
  sub_75D650();
  v6 = v5;

  return v6;
}

uint64_t sub_35A680()
{
  sub_759050();
  sub_759210();
  sub_35A770(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_35A718(uint64_t a1)
{
  result = sub_35A770(&qword_9509D8, type metadata accessor for BrickCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_35A770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_35A7B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = 0;
}

uint64_t sub_35A85C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760680();
  sub_161DC(v4, qword_99D398);
  v30 = sub_BE38(v4, qword_99D398);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_93D820 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F058);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_766CA0();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_93D828 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v5, qword_99F070);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_B1B4(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_766CB0();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_B1B4(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v31);
  v18(v20, v3, v0);
  sub_766CB0();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return sub_760660();
}

uint64_t sub_35ACE4()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_9509F0);
  sub_BE38(v0, qword_9509F0);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_35AD80()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_950A08 = v1;
}

char *sub_35ADF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel;
  if (qword_93D820 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v10, qword_99F058);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(sub_75BB20());
  *&v5[v24] = sub_75BB10();
  v28 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_captionLabel;
  if (qword_93D828 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v10, qword_99F070);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v28] = sub_4ECF40(v30, 0, 0);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_93CD88;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_950A08];

  v37 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_93CD80;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_BD88(&unk_93F8F0);
  sub_BE38(v44, qword_9509F0);
  v51 = v32;
  sub_7592B0();

  sub_76A150();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_35B49C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = sub_7664F0();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_7606A0();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760680();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon];
  v15 = qword_93CD78;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99D398);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_93CD88;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_759910();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  sub_760670();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconPositioningView];
  v49 = sub_BE70(0, &qword_93E550);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel];
  v46 = sub_BE70(0, &qword_950A70);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  sub_760690();
  v28 = [v1 contentView];
  sub_75D650();

  sub_760650();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_93CD88;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_759910();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

id sub_35BB20(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93CD80 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0);
    sub_BE38(v6, qword_9509F0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell()
{
  result = qword_950A38;
  if (!qword_950A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_35BDC0()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_35BE70()
{
  sub_BE70(0, &qword_949D90);
  sub_1EE5B8();
  return sub_75A0C0();
}

double sub_35BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v52 = a4;
  v50 = a3;
  v48 = a1;
  v60 = sub_7606A0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_760680();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v55 = &v44[-v9];
  v10 = sub_762D10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v44[-v14];
  v51 = sub_7670D0();
  v53 = sub_7670C0();
  v16 = sub_BE70(0, &qword_93F900);
  v17 = qword_93D820;

  if (v17 != -1)
  {
    swift_once();
  }

  v46 = sub_7666D0();
  sub_BE38(v46, qword_99F058);
  v61 = a5;
  v18 = [a5 traitCollection];
  v47 = v16;
  sub_769E10();

  v19 = sub_7653B0();
  v70[3] = v19;
  v20 = sub_35C70C(&qword_93F9B0, &type metadata accessor for Feature);
  v70[4] = v20;
  v21 = sub_B1B4(v70);
  v22 = *(*(v19 - 8) + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v22(v21);
  sub_765C30();
  sub_BEB8(v70);
  sub_762D00();
  sub_762CE0();
  v23 = *(v11 + 8);
  v23(v15, v10);
  if (v50)
  {
    v48 = sub_759CD0();
  }

  else
  {
    v48 = 0;
  }

  v50 = v10;
  if (qword_93D828 != -1)
  {
    swift_once();
  }

  sub_BE38(v46, qword_99F070);
  v24 = [v61 traitCollection];
  sub_769E10();

  v68 = v19;
  v69 = v20;
  v25 = sub_B1B4(&v67);
  (v22)(v25, v45, v19);
  sub_765C30();
  sub_BEB8(&v67);
  v26 = v49;
  sub_762D00();
  sub_762CE0();
  v23(v26, v50);
  if (qword_93CD78 != -1)
  {
    swift_once();
  }

  v27 = v58;
  v28 = sub_BE38(v58, qword_99D398);
  v29 = v56;
  v30 = *(v56 + 16);
  v31 = v55;
  v30(v55, v28, v27);
  if (v52)
  {
    v32 = qword_93CD88;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_759910();
    if (v33)
    {
      v34 = v33;
      [v33 size];
    }
  }

  sub_760670();
  v30(v54, v31, v27);
  v65 = v51;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v53;
  sub_134D8(v70, v63);
  v35 = v68;
  v36 = v69;
  v37 = sub_B170(&v67, v68);
  v62[3] = v35;
  v62[4] = *(v36 + 8);
  v38 = sub_B1B4(v62);
  (*(*(v35 - 8) + 16))(v38, v37, v35);

  v39 = v57;
  sub_760690();
  sub_35C70C(&unk_950A50, &type metadata accessor for ProductCapabilityLayout);
  v40 = v60;
  sub_7665A0();
  v42 = v41;

  (*(v59 + 8))(v39, v40);
  (*(v29 + 8))(v31, v27);
  sub_BEB8(v70);
  sub_BEB8(&v67);
  return v42;
}

uint64_t sub_35C70C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_35C754()
{
  v1 = v0;
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_itemLayoutContext;
  v13 = sub_75C840();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel;
  if (qword_93D820 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v2, qword_99F058);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(sub_75BB20());
  *(v1 + v16) = sub_75BB10();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_captionLabel;
  if (qword_93D828 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v2, qword_99F070);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v20) = sub_4ECF40(v22, 0, 0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_35CB90(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_7652D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_763370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_757CE0();
  if (result)
  {
    v26 = v5;
    v27 = result;
    if (sub_764EE0())
    {
      v25[1] = a2;
      v13 = [v2 traitCollection];
      sub_530588(v11);

      sub_763360();
      (*(v9 + 8))(v11, v8);
      sub_7652E0();
      sub_7652B0();
      (*(v26 + 8))(v7, v4);
      v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_iconView];
      [v14 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v14 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();
      sub_75A110();
      sub_768900();
      sub_768ED0();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_75A040();

      sub_160090(v28);
    }

    v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_titleLabel];
    sub_764EF0();
    if (v16)
    {
      v17 = sub_769210();
    }

    else
    {
      v17 = 0;
    }

    [v15 setText:v17];

    v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_subtitleLabel];
    sub_764E20();
    if (v19)
    {
      v20 = sub_769210();
    }

    else
    {
      v20 = 0;
    }

    [v18 setText:v20];

    sub_764F80();
    if (v21)
    {
      v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_ageRatingView];
      v23 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel];
      v24 = sub_769210();
      [v23 setText:v24];

      [v22 setNeedsLayout];
      [v22 setNeedsDisplay];

      [v22 setHidden:0];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_ageRatingView] setHidden:1];
    }

    [v2 setNeedsLayout];
  }

  return result;
}

void sub_35D02C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_iconView);

    v5 = a1;
    sub_759190();
  }
}

uint64_t sub_35D0B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_35D0F4()
{
  v0 = sub_7674E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_767510();
  sub_161DC(v4, qword_99D3E0);
  sub_BE38(v4, qword_99D3E0);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = sub_766970();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v7);
  sub_766960();
  return sub_7674F0();
}

void sub_35D22C()
{
  v1 = v0;
  v2 = sub_767510();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_93CD90 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_BE38(v4, qword_99D3E0);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = sub_76A1C0();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView();
    v14 = v14;
    v23 = v22;
    v24 = sub_76A1C0();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_35D528()
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FDE8);
  qword_99D410 = v0;
  unk_99D418 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_99D3F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_35D5E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_396E8();
  v18 = sub_76A050();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_1A4998(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99EA10);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_75BB20());
  *&v5[v20] = sub_75BB10();
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = sub_765120();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_1A5974();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = sub_769FF0();
  [v43 setTextColor:v44];

  v45 = sub_76A050();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_35DC10()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}

uint64_t sub_35DD50()
{
  v62 = sub_767510();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView];
  sub_75D650();
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  sub_75D650();
  MinX = CGRectGetMinX(v69);
  sub_75D650();
  MinY = CGRectGetMinY(v70);
  sub_75D650();
  Width = CGRectGetWidth(v71);
  [v7 setFrame:{MinX, MinY, Width, v11}];
  if (qword_93CD98 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_99D3F8, v66);
  sub_75D650();
  Height = CGRectGetHeight(v72);
  v73.origin.x = MinX;
  v73.origin.y = MinY;
  v73.size.width = Width;
  v73.size.height = v11;
  v16 = CGRectGetHeight(v73);
  sub_B170(v66, v67);
  sub_33964();
  sub_766700();
  v18 = v17;
  v19 = v3 + 8;
  v20 = *(v3 + 8);
  v65 = v19;
  v20(v5, v2);
  v21 = Height - (v16 + v18);
  v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata];
  sub_75D650();
  v64 = v22;
  [v22 sizeThatFits:{v23, v24}];
  v26 = v25;
  v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
  v63 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if ((v27[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    sub_B170(v66, v67);
    sub_33964();
    sub_766700();
    v29 = v28;
    v20(v5, v2);
    v21 = v21 - (v26 + v29);
  }

  sub_75D650();
  [v27 measurementsWithFitting:v0 in:{CGRectGetWidth(v74), v21}];
  v31 = v30;
  sub_75D650();
  v32 = CGRectGetMinX(v75);
  v76.origin.x = MinX;
  v76.origin.y = MinY;
  v76.size.width = Width;
  v76.size.height = v11;
  MaxY = CGRectGetMaxY(v76);
  sub_B170(v66, v67);
  sub_33964();
  sub_766700();
  v35 = v34;
  v20(v5, v2);
  sub_75D650();
  [v27 setFrame:{v32, MaxY + v35, CGRectGetWidth(v77), v31}];
  [v27 frame];
  v36 = CGRectGetMinX(v78);
  [v27 frame];
  v37 = CGRectGetMaxY(v79);
  sub_B170(v66, v67);
  sub_33964();
  sub_766700();
  v39 = v38;
  v20(v5, v2);
  sub_75D650();
  v40 = CGRectGetWidth(v80);
  v41 = v64;
  [v64 setFrame:{v36, v37 + v39, v40, v26}];
  v42 = 1.0;
  if (v27[v63])
  {
    v42 = 0.0;
  }

  [v41 setAlpha:v42];
  v43 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView];
  if (v43)
  {
    v44 = v43;
    sub_75D650();
    CGRectGetMinX(v81);
    [v0 bounds];
    CGRectGetMinY(v82);
    sub_75D650();
    CGRectGetWidth(v83);
    [v0 bounds];
    CGRectGetHeight(v84);
    v45 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    v46 = v61;
    v47 = &v44[v45];
    v48 = v60;
    v49 = v62;
    (*(v61 + 16))(v60, v47, v62);
    sub_7674C0();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v46 + 8))(v48, v49);
    [v44 setFrame:{v51, v53, v55, v57}];
  }

  return sub_BEB8(v66);
}

id sub_35E420()
{
  v1 = v0;
  v2 = sub_BD88(&qword_944448);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_7591D0(v14, v7);

  v8 = sub_765120();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_35FD44(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_1A5114(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

void sub_35E5E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_944448);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-v7 - 8];
  v9 = sub_7652D0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_765240();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    v23 = a2;

    sub_765250();
    v14 = sub_765210();
    (*(v11 + 8))(v13, v10);
    if (qword_93C668 != -1)
    {
      swift_once();
    }

    v15 = sub_75CF00();
    sub_BE38(v15, qword_99B898);
    sub_75CDD0();
    sub_765330();
    v16 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView);
    v17 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v18 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v18 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();

    [*(v16 + v17) setContentMode:v14];
    sub_765380();
    v19 = sub_765120();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_35FD44(v8, v3 + v20);
    swift_endAccess();
    sub_75A110();
    v21 = *(v16 + v17);
    sub_759210();
    v22 = v21;
    sub_75A090();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v24, &unk_9443A0);
  }
}

void sub_35E9B8(objc_class *a1, int a2, uint64_t a3)
{
  v39 = a2;
  v5 = sub_BD88(&qword_944448);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_765120();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_35FDF4(a3, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v10 = v13;
  }

  else
  {
    v37 = a1;
    v36 = *(v15 + 32);
    v36(v19, v13, v14);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = v7;
      v22 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v23 = Strong;
      swift_beginAccess();
      sub_35FDF4(v23 + v22, v10);

      if (v20(v10, 1, v14) != 1)
      {
        v31 = v38;
        v36(v38, v10, v14);
        sub_35FE64(&qword_947B80, &type metadata accessor for Artwork.URLTemplate);
        v32 = sub_7691C0();
        v33 = *(v15 + 8);
        v33(v31, v14);
        v33(v19, v14);
        v7 = v35;
        a1 = v37;
        if ((v32 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v15 + 8))(v19, v14);
      v7 = v35;
    }

    else
    {
      (*(v15 + 8))(v19, v14);
      (*(v15 + 56))(v10, 1, 1, v14);
    }

    a1 = v37;
  }

  sub_10A2C(v10, &qword_944448);
LABEL_9:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(*(v24 + OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);

    v40.is_nil = (v39 & 1) == 0;
    v40.value.super.isa = a1;
    sub_759140(v40, v27);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    (*(v15 + 56))(v7, 1, 1, v14);
    v30 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_35FD44(v7, v29 + v30);
    swift_endAccess();
  }
}

double sub_35EE1C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - v7;
  v83 = sub_75D850();
  v9 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v80 - v12;
  v13 = sub_75CF00();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_76A920();
  v87 = *(v92 - 8);
  *&v15 = __chkstk_darwin(v92).n128_u64[0];
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
  v88 = v3[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v85 = sub_769240();
    v89 = v22;
  }

  else
  {
    v85 = 0;
    v89 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v90 = v18;
  v84 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v34;
      v97.receiver = v37;
      v97.super_class = v36;
      v40 = objc_msgSendSuper2(&v97, "init");
      if (qword_93C5F0 != -1)
      {
        swift_once();
      }

      v41 = qword_9482F8;
      v42 = [qword_9482F8 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      }

      else
      {
        v86 = v41;
        v44 = qword_93C5E8;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_7666D0();
        v46 = sub_BE38(v45, qword_9482E0);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        sub_766B00();
        sub_766B20();
        sub_766B10();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10A2C(v8, &unk_93E530);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v96.receiver = v55;
        v96.super_class = v54;
        v57 = objc_msgSendSuper2(&v96, "init");
        [v86 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_93CD98 != -1)
  {
    swift_once();
  }

  LODWORD(v86) = v19;
  sub_B170(qword_99D3F8, qword_99D410);
  v58 = v91;
  sub_33964();
  sub_766700();
  v59 = *(v87 + 8);
  v59(v58, v92);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v60 = v94;
  v61 = sub_BE38(v94, qword_99B898);
  v62 = [v3 traitCollection];
  (*(v93 + 16))(v95, v61, v60);
  v63 = sub_75CE70();
  if ((v65 & 1) == 0 && ((v63 | v64) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v66 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v66 = qword_946938;
    }

    v67 = v83;
    v68 = sub_BE38(v83, v66);
    v69 = v81;
    (*(v9 + 16))(v81, v68, v67);
    v70 = v82;
    (*(v9 + 32))(v82, v69, v67);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v9 + 8))(v70, v67);
  }

  v71 = v95;
  sub_75CDB0();

  (*(v93 + 8))(v71, v94);
  if ((v89 == 0) | v86 & 1)
  {
    v72 = v90;
  }

  else
  {
    sub_B170(qword_99D3F8, qword_99D410);
    v73 = v91;
    sub_33964();
    sub_766700();
    v59(v73, v92);
    v72 = v90;
    if (qword_93D608 != -1)
    {
      swift_once();
    }

    v74 = sub_7666D0();
    sub_BE38(v74, qword_99EA10);
    v75 = sub_7653B0();
    v98[3] = v75;
    v98[4] = sub_35FE64(&qword_93F9B0, &type metadata accessor for Feature);
    v76 = sub_B1B4(v98);
    (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
    sub_765C30();
    sub_BEB8(v98);
    sub_762CB0();
  }

  if (v88)
  {
    if (qword_93CD90 != -1)
    {
      swift_once();
    }

    v77 = sub_767510();
    sub_BE38(v77, qword_99D3E0);
    sub_769DD0();
    v31 = v78;
  }

  return v31;
}

id sub_35F9C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell()
{
  result = qword_950AC8;
  if (!qword_950AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_35FAD4()
{
  sub_35FB8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_35FB8C()
{
  if (!qword_944430)
  {
    sub_765120();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_944430);
    }
  }
}

uint64_t sub_35FC04()
{
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v0 = sub_75CF00();
  sub_BE38(v0, qword_99B898);
  return sub_75CDD0();
}

void sub_35FC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6BD8(a1, a2, a3, WitnessTable);
}

uint64_t sub_35FCEC(uint64_t a1)
{
  result = sub_35FE64(&qword_950AD8, type metadata accessor for UpdatesLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_35FD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_944448);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_35FDB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_35FDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_944448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35FE64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_35FEAC()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_396E8();
  v10 = sub_76A050();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_1A4998(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_99EA10);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = sub_765120();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  sub_76A840();
  __break(1u);
}

id sub_3601D4()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = sub_76A860();
  }

  else
  {
    result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v3 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_76A770();
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_18;
  }

LABEL_10:
  v0[1] = v4;
  v5 = v0[3];
  v6 = *(v0[2] + 16);
  if (v5 == v6)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v5 < v6)
  {
    v7 = result;
    v0[3] = v5 + 1;

    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

NSString sub_3602F4()
{
  result = sub_769210();
  qword_950AE0 = result;
  return result;
}

char *sub_3605A0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v59 = sub_76A270();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 40;
    v14 = _swiftEmptyArrayStorage;
    v57 = a1 + 40;
    while (2)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          goto LABEL_41;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v17 = *(v15 - 1);
        v18 = *v15;

        a1 = v17;
        sub_764C60();
        if (v19)
        {
          break;
        }

        ++v16;
        v15 += 16;
        if (v12 == v11)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v63;
        sub_143A78(0, *(v14 + 2) + 1, 1);
        v14 = v63[0];
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        a1 = v63;
        sub_143A78((v21 > 1), v22 + 1, 1);
        v14 = v63[0];
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[2 * v22];
      *(v23 + 4) = v17;
      *(v23 + 40) = v18;
      v13 = v57;
      if (v12 != v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  a1 = *(v14 + 2);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v24 = *&v3[v11];
  if (v24 >> 62)
  {
LABEL_44:
    result = sub_76A860();
    v26 = a1 - result;
    if (!__OFSUB__(a1, result))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  result = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
  v26 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v57 = v14;
  if (v26 <= 0)
  {
    if (v26 < 0)
    {
      for (i = &result[-a1]; i; --i)
      {
        swift_beginAccess();
        a1 = *&v3[v11];
        v14 = (a1 >> 62);
        if (a1 >> 62)
        {
          if (!sub_76A860())
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v3[v11] = a1;
        if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a1 = sub_45EDF0(a1);
        }

        v52 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (!v52)
        {
          goto LABEL_43;
        }

        v53 = v52 - 1;
        v54 = *(&stru_20.cmd + 8 * v53 + (a1 & 0xFFFFFFFFFFFFFF8));
        *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) = v53;
        *&v3[v11] = a1;
        swift_endAccess();
        [v54 removeFromSuperview];
        v62 = v54;
        swift_beginAccess();
        sub_BD88(&qword_950B48);
        sub_767470();
        swift_endAccess();
      }
    }
  }

  else
  {
    do
    {
      swift_beginAccess();
      sub_BD88(&qword_950B48);
      sub_767450();
      swift_endAccess();
      v27 = v62;
      swift_beginAccess();
      v28 = v27;
      sub_769440();
      if (*(&dword_10 + (*&v3[v11] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v3[v11] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v56 = *(&dword_10 + (*&v3[v11] & 0xFFFFFFFFFFFFFF8));
        sub_7694C0();
      }

      sub_769500();
      swift_endAccess();
      [v3 addSubview:v28];

      --v26;
    }

    while (v26);
  }

  v63[0] = *&v3[v11];
  v63[1] = 0;
  v63[2] = v57;
  v63[3] = 0;
  v64 = 0;

  v29 = sub_3601D4();
  if (v29)
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v57 = sub_BE70(0, &qword_955FA0);
    LODWORD(v56) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
    v55 += 13;
    do
    {
      if (qword_93CDA0 != -1)
      {
        swift_once();
      }

      v35 = qword_950AE0;
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      *(v36 + 24) = v33;
      v37 = v34 & 1;
      *(v36 + 32) = v34 & 1;
      v38 = v35;

      v39 = sub_76A1F0();
      v40 = v32;
      [v40 removeActionForIdentifier:v38 forControlEvents:0x2000];

      sub_764C60();

      sub_76A360();
      sub_76A3C0();
      v41 = objc_opt_self();
      v42 = [v41 tintColor];
      v43 = [v42 colorWithAlphaComponent:0.08];

      sub_76A310();
      v44 = [v41 tintColor];
      sub_76A320();
      (*v55)(v58, v56, v59);
      sub_76A280();
      sub_76A2C0();
      v45 = v60;
      sub_767BA0();
      v46 = sub_767B90();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_76A340();
      v47 = sub_76A3F0();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      sub_76A420();
      [v40 setEnabled:v37];

      [v40 addAction:v39 forControlEvents:0x2000];

      v32 = sub_3601D4();
      v33 = v48;
      v34 = v49;
    }

    while (v32);
  }

  return [v3 setNeedsLayout];
}

id sub_360DEC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(UIButton) init];
  *a1 = result;
  return result;
}

uint64_t sub_360E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_BD88(&unk_93F630);
  sub_768860();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10A2C(v7, &unk_93F980);
  }

  sub_32A6C0(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

uint64_t sub_360F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_756F10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1EABC();
  return sub_756F20();
}

void sub_36102C()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider15BannerButtonRow_buttonViews;
  swift_beginAccess();
  sub_BE70(0, &qword_960F00);

  v2 = sub_769490();

  if (v2)
  {
    [v0 bounds];
    v4 = v3;
    v5 = *&v0[v1];
    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

    if (v6 < 1)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = (v4 + (v6 - 1) * -10.0) / v6;
    }

    v7 = *&v0[v1];
    if (v7 >> 62)
    {
      v8 = sub_76A860();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    v9 = 0;
    do
    {
      if (v8 == v9)
      {

        [v0 bounds];
        MinX = CGRectGetMinX(v43);
        v17 = *&v0[v1];
        if (v17 >> 62)
        {
          v18 = sub_76A860();
          if (!v18)
          {
            return;
          }
        }

        else
        {
          v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
          if (!v18)
          {
            return;
          }
        }

        if (v18 >= 1)
        {

          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = sub_76A770();
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            [v0 bounds];
            [v21 sizeThatFits:{v22, v23}];
            [v0 bounds];
            CGRectGetMinY(v44);
            [v0 bounds];
            sub_769D20();
            [v21 setFrame:?];

            MinX = v4 + 10.0 + MinX;
          }

          while (v18 != v19);
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_45;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_76A770();
      }

      else
      {
        if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v6 = sub_76A860();
        goto LABEL_4;
      }

      [v0 bounds];
      [v11 sizeThatFits:{v12, v13}];
      v15 = v14;

      ++v9;
    }

    while (v4 >= v15);

    [v0 bounds];
    MinY = CGRectGetMinY(*&v24);
    v29 = *&v0[v1];
    if (!(v29 >> 62))
    {
      v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      if (!v30)
      {
        return;
      }

LABEL_28:
      if (v30 >= 1)
      {

        v31 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = sub_76A770();
          }

          else
          {
            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          ++v31;
          [v0 bounds];
          [v33 sizeThatFits:{v34, v35}];
          v37 = v36;
          [v0 bounds];
          v38 = CGRectGetMinX(v45);
          [v0 bounds];
          v40 = v39;
          [v0 bounds];
          sub_769D20();
          [v33 setFrame:?];
          v46.origin.x = v38;
          v46.origin.y = MinY;
          v46.size.width = v40;
          v46.size.height = fmax(v37, 30.0);
          MaxY = CGRectGetMaxY(v46);

          MinY = MinY + MaxY + 10.0;
        }

        while (v30 != v31);
LABEL_34:

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

    v30 = sub_76A860();
    if (v30)
    {
      goto LABEL_28;
    }
  }
}

double sub_361500(double a1, double a2)
{
  v5 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 traitCollection];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13 >> 62)
  {
LABEL_28:
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_76A860();
  }

  else
  {
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v14)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v15 = 0;
  v37 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  v33 = v11;
  v36 = v13;
  do
  {
    v34 = v16;
    v17 = v15;
    while (1)
    {
      if (v37)
      {
        v18 = sub_76A770();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v19 = v18;
      sub_76A410();
      v20 = sub_76A3F0();
      v11 = *(v20 - 8);
      if (v11[6](v10, 1, v20) != 1)
      {
        break;
      }

      sub_10A2C(v10, &unk_954ED0);

LABEL_7:
      ++v17;
      v13 = v36;
      if (v15 == v14)
      {
        v11 = v33;
        v16 = v34;
        goto LABEL_25;
      }
    }

    v21 = v35;
    sub_362208(v10, v35);
    v22 = sub_76A3B0();
    v24 = v23;
    v25 = v11[1];
    ++v11;
    (v25)(v21, v20);
    sub_10A2C(v10, &unk_954ED0);

    if (!v24)
    {
      goto LABEL_7;
    }

    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_7B5CC(0, *(v16 + 2) + 1, 1, v16);
    }

    v11 = v33;
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_7B5CC((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v22;
    *(v29 + 5) = v24;
    v13 = v36;
  }

  while (v15 != v14);
LABEL_25:

  v30 = sub_361B1C(v11, v16, a1, a2);

  return v30;
}

uint64_t type metadata accessor for BannerButtonRow()
{
  result = qword_950B20;
  if (!qword_950B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3619A8()
{
  sub_361A48();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_361A48()
{
  if (!qword_950B30)
  {
    sub_133D8(&qword_950B38);
    sub_361AB8();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_950B30);
    }
  }
}

unint64_t sub_361AB8()
{
  result = qword_950B40;
  if (!qword_950B40)
  {
    sub_133D8(&qword_950B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950B40);
  }

  return result;
}

double sub_361B1C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v59[1] = a1;
  v7 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v7 - 8);
  v69 = v59 - v8;
  v68 = sub_76A270();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_76A3F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    return -10.0;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_143CBC(0, v17, 0);
  v18 = v70;
  v65 = objc_opt_self();
  v64 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v62 = (v12 + 16);
  v63 = (v9 + 104);
  v60 = (v12 + 8);
  v61 = (v12 + 32);
  v19 = a2 + 40;
  v20 = 0.0;
  v59[0] = v17;
  v21 = 0.0;
  do
  {

    sub_76A360();

    sub_76A3C0();
    v22 = v65;
    v23 = [v65 tintColor];
    v24 = [v23 colorWithAlphaComponent:0.08];

    sub_76A310();
    v25 = [v22 tintColor];
    sub_76A320();
    (*v63)(v67, v64, v68);
    sub_76A280();
    sub_76A2C0();
    v26 = v69;
    sub_767BA0();
    v27 = sub_767B90();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    sub_76A340();
    v28 = v66;
    (*v62)(v66, v16, v11);
    type metadata accessor for ButtonPlaceholder();
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder____lazy_storage___button) = 0;
    (*v61)(v29 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration, v28, v11);
    v30 = sub_3DA414();
    [v30 sizeThatFits:{a3, a4}];
    v32 = v31;
    v33 = [v30 titleLabel];
    if (!v33)
    {
      goto LABEL_6;
    }

    v34 = v33;
    v35 = [v30 subtitleLabel];
    if (v35)
    {
      v36 = v35;

LABEL_6:
      sub_766B30();
      v38 = v37;
      v32 = v39;
      goto LABEL_8;
    }

    sub_76A170();
    sub_766B30();
    v38 = v40;

LABEL_8:

    swift_setDeallocating();
    v41 = *v60;
    (*v60)(v29 + OBJC_IVAR____TtC18ASMessagesProvider17ButtonPlaceholder_configuration, v11);

    swift_deallocClassInstance();
    v41(v16, v11);
    v42 = fmax(v32, 30.0);
    if (v20 <= v38)
    {
      v20 = v38;
    }

    if (v21 <= v42)
    {
      v21 = v42;
    }

    v70 = v18;
    v44 = *(v18 + 2);
    v43 = *(v18 + 3);
    if (v44 >= v43 >> 1)
    {
      sub_143CBC((v43 > 1), v44 + 1, 1);
      v18 = v70;
    }

    *(v18 + 2) = v44 + 1;
    v45 = &v18[2 * v44];
    v45[4] = v38;
    v45[5] = v42;
    v19 += 16;
    --v17;
  }

  while (v17);
  v46 = v59[0] - 1;
  v47 = a3 + (v59[0] - 1) * -10.0;
  v48 = v59[0];
  if (v47 / v59[0] < v20)
  {
    if (v44)
    {
      v49 = (v44 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v50 = v18 + 7;
      v51 = 0.0;
      v52 = v49;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        v50 += 4;
        v51 = v51 + v53 + v54;
        v52 -= 2;
      }

      while (v52);
      if (v44 + 1 == v49)
      {
LABEL_26:

        return v20;
      }
    }

    else
    {
      v49 = 0;
      v51 = 0.0;
    }

    v55 = v44 - v49 + 1;
    v56 = &v18[2 * v49 + 5];
    do
    {
      v57 = *v56;
      v56 += 2;
      v51 = v51 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_26;
  }

  return v46 * 10.0 + v20 * v48;
}

uint64_t sub_3621BC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_362208(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_954ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_362278(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_45D524(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_362334(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(&stru_20.cmd + 8 * a1 + (v5 & 0xFFFFFFFFFFFFFF8));
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_36257C()
{
  v0 = sub_75F8B0();
  sub_161DC(v0, qword_99D428);
  sub_BE38(v0, qword_99D428);
  return sub_75F8A0();
}

id sub_362720(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&qword_950BA0);
  __chkstk_darwin(v4);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AnnotationImagesView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  sub_7667C0();
  sub_363BD8();
  sub_767480();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v10 = v5;
    [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  return v6;
}

id sub_36289C(unint64_t a1)
{
  v56 = sub_765240();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_765120();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_7570A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  sub_363208(v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v62 = *(v1 + v15);
  v40 = v1;
  if (v13)
  {
    v13 = sub_76A860();
  }

  else
  {
    v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v13)
  {
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = a1 & 0xC000000000000001;
    v1 = (v62 & 0xFFFFFFFFFFFFFF8);
    if (v62 < 0)
    {
      v16 = v62;
    }

    else
    {
      v16 = v62 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v16;
    v54 = v62 & 0xC000000000000001;
    v53 = (v5 + 8);
    v52 = (v11 + 48);
    v50 = (v11 + 32);
    v42 = "F0F19AnnotationImageView";
    v51 = (v11 + 8);
    v45 = (v3 + 8);
    v17 = 4;
    v57 = v62 >> 62;
    v41 = xmmword_77E280;
    v46 = v62 & 0xFFFFFFFFFFFFFF8;
    v43 = a1;
    v49 = v10;
    v48 = v9;
    v47 = v13;
    do
    {
      v5 = v17 - 4;
      if (v59)
      {
        sub_76A770();
        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v5 >= *(v58 + 16))
        {
          goto LABEL_45;
        }

        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v14 = sub_76A860();
          goto LABEL_3;
        }
      }

      if (v57)
      {
        if (v5 == sub_76A860())
        {
LABEL_38:

          break;
        }
      }

      else if (v5 == v1[2])
      {
        goto LABEL_38;
      }

      v63 = v3;
      if (v54)
      {
        v18 = sub_76A770();
      }

      else
      {
        if (v5 >= v1[2])
        {
          goto LABEL_46;
        }

        v18 = *(v62 + 8 * v17);
      }

      v11 = v18;
      v19 = v60;
      sub_765380();
      sub_765110();
      (*v53)(v19, v61);
      sub_757090();

      if ((*v52)(v9, 1, v10) == 1)
      {

        return sub_10A2C(v9, &unk_93FD30);
      }

      (*v50)(v64, v9, v10);
      v20 = sub_757070();
      if (!v21)
      {

LABEL_43:

        return (*v51)(v64, v10);
      }

      v22 = v20;
      v23 = v21;
      if ((sub_765180() & 1) == 0)
      {

        goto LABEL_43;
      }

      v24.value.super.super.isa = 0;
      v25 = sub_765170(v24);
      if (qword_93DC58 != -1)
      {
        swift_once();
      }

      v26 = qword_95B098;
      v27 = v25;
      v28 = sub_769210();
      v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 withConfiguration:{v27, v39}];

      if (!v29)
      {
        if (qword_93DEF0 != -1)
        {
          swift_once();
        }

        v30 = sub_768FF0();
        v44 = sub_BE38(v30, qword_9A0400);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = v41;
        sub_768540();
        v65[3] = &type metadata for String;
        v65[0] = v22;
        v65[1] = v23;

        sub_7685E0();
        sub_10A2C(v65, &unk_93FBD0);
        sub_768EA0();

        v29 = [objc_allocWithZone(UIImage) init];
        a1 = v43;
      }

      v10 = v49;
      (*v51)(v64, v49);
      [v29 size];
      if (qword_93CDA8 != -1)
      {
        swift_once();
      }

      v31 = sub_75F8B0();
      sub_BE38(v31, qword_99D428);
      sub_75F890();
      v3 = v55;
      sub_765250();
      sub_765210();
      (*v45)(v3, v56);
      sub_769D70();
      [v11 setFrame:{0.0, 0.0, v32, v33}];
      v34 = v29;
      v35 = [v11 layer];
      [v35 removeAllAnimations];

      v36 = v34;
      [v11 setImage:v36];

      ++v17;
      v13 = v47;
      v9 = v48;
      v1 = v46;
    }

    while (v63 != v47);
  }

  v37 = v40;
  [v40 invalidateIntrinsicContentSize];
  return [v37 setNeedsLayout];
}