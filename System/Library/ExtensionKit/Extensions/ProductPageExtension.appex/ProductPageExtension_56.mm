uint64_t sub_100650D54(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_1007706FC() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_10077070C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_100650DE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100650E20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100650E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100650EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100650EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100650F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100650FC4()
{
  result = qword_1009624D0;
  if (!qword_1009624D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009624D0);
  }

  return result;
}

unint64_t sub_10065101C()
{
  result = qword_1009624D8;
  if (!qword_1009624D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009624D8);
  }

  return result;
}

uint64_t sub_100651070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_100595060(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_100594F54(v11);
}

uint64_t sub_100651204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100651258()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView];
  sub_100637778();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "setBackgroundColor:", 0);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v9, "backgroundColor");
  sub_10075FB8C();

  v6 = (v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v6 = 0;
  v6[1] = 0;
  return sub_1000167E0(v7);
}

uint64_t sub_10065132C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_100765CEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell();
  swift_getObjectType();
  v11 = sub_1006525E0();
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v12 = [a1 traitCollection];
  v13 = sub_1007706EC();

  if (v13)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v14 = 160.0;
    }

    else
    {
      sub_1007708BC();
      sub_100770ACC();
      v19 = v18 + -10.0;
      v32[0] = 156.0;
      sub_10076D17C();
      sub_10076D40C();
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v14 = v19 - v21;
    }

    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v14;
    sub_10000CFBC(&v29, &unk_100943240);
    *&v29 = 0x4014000000000000;
    *(&v30 + 1) = &type metadata for CGFloat;
    v31 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v16 = v15;
    [a1 pageContainerSize];
    if (v17 >= v16)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    sub_10076521C();
    v23 = v11 + v22 + v22;
    sub_1007708BC();
    sub_100770ACC();
    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v24 + -10.0 - v23;
    sub_10000CFBC(&v29, &unk_100943240);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_10062CB50(&v29, v28);
  v27[12] = &protocol witness table for CGFloat;
  v27[11] = &type metadata for CGFloat;
  v27[8] = 0x4024000000000000;
  sub_10000A570(v32, v6);
  (*(v4 + 104))(v6, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v3);
  if (qword_100941408 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A5D4(&unk_10094D980);
  sub_10000A61C(v25, qword_1009A2890);
  v27[2] = a1;
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  sub_10076522C();
  sub_10000CFBC(&v29, &unk_100943240);
  return sub_10000CD74(v32);
}

uint64_t sub_10065181C()
{
  v0 = sub_10000A5D4(&unk_10094CD50);
  sub_10000DB18(v0, qword_100962530);
  sub_10000A61C(v0, qword_100962530);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGSize(0);
  return sub_10075FDEC();
}

uint64_t sub_1006518CC()
{
  v0 = sub_10000A5D4(&unk_10094D980);
  sub_10000DB18(v0, qword_1009A2890);
  sub_10000A61C(v0, qword_1009A2890);
  sub_10000A5D4(&unk_100943120);
  sub_10000A5D4(&qword_100962590);
  return sub_10075FDEC();
}

char *sub_10065199C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009467F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_1009413D0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v14, qword_1009A27F8);
  sub_1000A9194(v23, v16);
  sub_10000A5D4(&unk_100943120);
  sub_10075FE0C();
  v24 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_1006389FC(v19);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView] = sub_10075FB3C();
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v26 = [v25 contentView];
  [v26 setClipsToBounds:1];

  v27 = [v25 contentView];
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v28 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView;
  v29 = qword_10093F888;
  v30 = *&v25[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_10076BCFC();
  v32 = sub_10000A61C(v31, qword_10099D438);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v13, v32, v31);
  (*(v33 + 56))(v13, 0, 1, v31);
  sub_10075FCDC();

  v34 = *&v25[v28];
  CGAffineTransformMakeRotation(&v38, -0.523598776);
  [v34 setTransform:&v38];
  v35 = [v25 contentView];
  [v35 addSubview:*&v25[v28]];

  v36 = [v25 contentView];
  [v36 addSubview:*&v25[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView]];

  return v25;
}

id sub_100651F5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076523C();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076525C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_10076422C();
    sub_10065132C(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
    sub_100770BAC();

    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    sub_10076524C();
    [v1 bounds];
    sub_10076520C();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell()
{
  result = qword_100962570;
  if (!qword_100962570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100652364()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100652420()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = sub_1006525E0();
  swift_unknownObjectRelease();
  return v1;
}

void sub_1006524B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView);
  sub_10075FB6C();

  v4 = *(v1 + v2);
  sub_10075FD2C();
  sub_10065269C(&qword_100941820, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100760BFC();
}

uint64_t sub_100652588(uint64_t a1)
{
  result = sub_10065269C(&qword_100962588, type metadata accessor for SmallBreakoutCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_1006525E0()
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_100941400 != -1)
  {
    swift_once();
  }

  v1 = sub_10000A5D4(&unk_10094CD50);
  sub_10000A61C(v1, qword_100962530);
  sub_10075FDCC();
  return v2;
}

uint64_t sub_10065269C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006526E4()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009467F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = sub_10076341C();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_1009413D0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v2, qword_1009A27F8);
  sub_1000A9194(v11, v4);
  sub_10000A5D4(&unk_100943120);
  sub_10075FE0C();
  v12 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_1006389FC(v7);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_1006528DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_100652B3C();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_10076F95C();
  sub_10000CFBC(v19, &unk_1009434C0);
  sub_10000CFBC(v20, &unk_1009434C0);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_100652B3C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100652BBC()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100652C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_100356960(a4, a5);
  return v7;
}

uint64_t sub_100652D20(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10076C7FC();
  sub_10076ADFC();
  if (swift_dynamicCastClass())
  {
    v12 = sub_100652B3C();
    v13 = sub_10076ADEC();
    sub_100356C74(v13, a4);

    v14 = sub_10076C38C();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v11, v5 + v16);
    swift_endAccess();
    sub_1003DC6B0(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10076C70C();
      if (!v19)
      {
        sub_1000325F0();
        v19 = sub_100770D8C();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_100652FB4(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v5);
  sub_10000A5D4(&unk_100942830);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    sub_10076C7FC();

    sub_10076ADFC();
    if (swift_dynamicCastClass())
    {
      v3 = sub_100652B3C();
      v4 = sub_10076ADEC();
      sub_1006538A8(v4, a2, v3);
    }

    else
    {
    }
  }
}

void sub_1006530A8()
{
  v0 = sub_100652B3C();
  v1 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v2 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();

  v3 = *(*&v0[v1] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10000D7F8();
  v4 = v3;
  sub_100760BFC();
}

void (*sub_1006532DC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10065389C;
}

void sub_1006533A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
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
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if (swift_dynamicCast())
      {
        sub_10076C7FC();

        sub_100761BDC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

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

id sub_100653648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_1009625D0;
  if (!qword_1009625D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100653730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100652B3C();
  sub_100653A54(a1, a2);
}

uint64_t sub_10065379C()
{
  v0 = sub_100652B3C();
  v1 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_1006537E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10065381C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100653854()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006538A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_10076AC2C();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_10000A570(v12, &v11);

  sub_10000A5D4(&unk_100942830);
  if (swift_dynamicCast())
  {
    sub_10076AC1C();
    v6 = sub_10076BB5C();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_10015E58C(&v11);
      sub_10076BFCC();
      v8 = *(*(a3 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10075FD2C();
      sub_10000D7F8();
      v9 = v8;
      sub_100760B8C();
    }

    else
    {
    }
  }

  return sub_10000CD74(v12);
}

id sub_100653A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton()) init];
    sub_10076C3FC();
    sub_10076B8EC();
    v8 = v7;

    if (v8)
    {
      v9 = sub_10076FF6C();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_10094CD78];
    v15 = *&v6[qword_10094CD78];
    *v14 = sub_100658B70;
    v14[1] = v13;

    sub_1000167E0(v15);
    v16 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel());
    v17 = v6;
    v18 = sub_1004CD778(v17);
    v19 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall;
    if (v3[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
      if ([v20 hasContent])
      {
        v21 = [v20 text];
        if (v21)
        {
LABEL_10:
          v22 = v21;
          v23 = sub_10076FF9C();
          v25 = v24;

          v26 = v25;
          v21 = v23;
LABEL_15:
          v27 = &v18[qword_10095A010];
          *v27 = v21;
          *(v27 + 1) = v26;

          sub_1004CDE04();
          v28 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel;
          v29 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel];
          v30 = v18;
          if (v29)
          {
            [v29 removeFromSuperview];
            v29 = *&v3[v28];
          }

          *&v3[v28] = v18;
          v31 = v18;

          sub_1006582B8();
          [v3 addSubview:v31];

          v32 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
          v33 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
          if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
          {
            v35 = [v34 hasContent];
          }

          else
          {
            v35 = 0;
          }

          v36 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
          swift_beginAccess();
          sub_100016E2C(&v3[v36], v39, &unk_1009434C0);
          v37 = v40;
          sub_10000CFBC(v39, &unk_1009434C0);
          if (v37 || v35)
          {
            [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          }

          [v3 setNeedsLayout];
        }

LABEL_13:
        v26 = 0;
        goto LABEL_15;
      }

      if (v3[v19] == 1)
      {
        v21 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] text];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v21 = sub_10076C3EC();
    goto LABEL_15;
  }

  v2[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd] = 0;
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel;
  v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v3[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v3[v10] = 0;

  result = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (result)
  {

    return [result setHidden:0];
  }

  return result;
}

double sub_100653E84()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2A10 = &type metadata for Double;
  qword_1009A2A18 = &protocol witness table for Double;
  qword_1009A29F8 = 0x4030000000000000;
  xmmword_1009A28D0 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100012498(&v53, &unk_1009A28E0);
  qword_1009A2908 = sub_100659530;
  unk_1009A2910 = 0;
  sub_100012498(&v50, &unk_1009A2918);
  sub_100012498(&v47, &unk_1009A2940);
  sub_100012498(&v38, &unk_1009A29B8);
  sub_100012498(&v44, &unk_1009A2968);
  sub_100012498(&v41, &unk_1009A2990);
  qword_1009A29E0 = 0;
  unk_1009A29E8 = 0;
  byte_1009A29F0 = 0;
  *&result = 0x1000100010001;
  dword_1009A2A20 = 65537;
  qword_1009A2A28 = 0;
  byte_1009A2A30 = 1;
  return result;
}

double sub_1006544B8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2B80 = &type metadata for Double;
  qword_1009A2B88 = &protocol witness table for Double;
  qword_1009A2B68 = 0x4020000000000000;
  xmmword_1009A2A40 = vdupq_n_s64(0x4061000000000000uLL);
  sub_100012498(&v53, &unk_1009A2A50);
  qword_1009A2A78 = sub_100659530;
  unk_1009A2A80 = 0;
  sub_100012498(&v50, &unk_1009A2A88);
  sub_100012498(&v47, &unk_1009A2AB0);
  sub_100012498(&v38, &unk_1009A2B28);
  sub_100012498(&v44, &unk_1009A2AD8);
  sub_100012498(&v41, &unk_1009A2B00);
  qword_1009A2B50 = 0;
  unk_1009A2B58 = 0;
  byte_1009A2B60 = 0;
  *&result = 16777217;
  dword_1009A2B90 = 16777217;
  qword_1009A2B98 = 0;
  byte_1009A2BA0 = 1;
  return result;
}

double sub_100654AF0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4028000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2CF0 = &type metadata for Double;
  qword_1009A2CF8 = &protocol witness table for Double;
  qword_1009A2CD8 = 0x4030000000000000;
  xmmword_1009A2BB0 = vdupq_n_s64(0x4054000000000000uLL);
  sub_100012498(&v53, &unk_1009A2BC0);
  qword_1009A2BE8 = sub_100659530;
  unk_1009A2BF0 = 0;
  sub_100012498(&v50, &unk_1009A2BF8);
  sub_100012498(&v47, &unk_1009A2C20);
  sub_100012498(&v38, &unk_1009A2C98);
  sub_100012498(&v44, &unk_1009A2C48);
  sub_100012498(&v41, &unk_1009A2C70);
  qword_1009A2CC0 = 0;
  unk_1009A2CC8 = 0;
  byte_1009A2CD0 = 0;
  *&result = 0x1000100010001;
  dword_1009A2D00 = 65537;
  qword_1009A2D08 = 0;
  byte_1009A2D10 = 1;
  return result;
}

double sub_100655120()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4024000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2E60 = &type metadata for Double;
  qword_1009A2E68 = &protocol witness table for Double;
  qword_1009A2E48 = 0x4024000000000000;
  xmmword_1009A2D20 = vdupq_n_s64(0x4048000000000000uLL);
  sub_100012498(&v53, &unk_1009A2D30);
  qword_1009A2D58 = sub_100659530;
  unk_1009A2D60 = 0;
  sub_100012498(&v50, &unk_1009A2D68);
  sub_100012498(&v47, &unk_1009A2D90);
  sub_100012498(&v38, &unk_1009A2E08);
  sub_100012498(&v44, &unk_1009A2DB8);
  sub_100012498(&v41, &unk_1009A2DE0);
  qword_1009A2E30 = 0;
  unk_1009A2E38 = 0;
  byte_1009A2E40 = 0;
  result = 7.29112205e-304;
  dword_1009A2E70 = 0x1000000;
  qword_1009A2E78 = 0;
  byte_1009A2E80 = 1;
  return result;
}

double sub_100655750()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2FD0 = &type metadata for Double;
  qword_1009A2FD8 = &protocol witness table for Double;
  qword_1009A2FB8 = 0x4018000000000000;
  xmmword_1009A2E90 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100012498(&v53, &unk_1009A2EA0);
  qword_1009A2EC8 = sub_100659530;
  unk_1009A2ED0 = 0;
  sub_100012498(&v50, &unk_1009A2ED8);
  sub_100012498(&v47, &unk_1009A2F00);
  sub_100012498(&v38, &unk_1009A2F78);
  sub_100012498(&v44, &unk_1009A2F28);
  sub_100012498(&v41, &unk_1009A2F50);
  qword_1009A2FA0 = 0;
  unk_1009A2FA8 = 0;
  byte_1009A2FB0 = 0;
  result = 7.29112205e-304;
  dword_1009A2FE0 = 0x1000000;
  qword_1009A2FE8 = 0;
  byte_1009A2FF0 = 1;
  return result;
}

double sub_100655D80()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A3140 = &type metadata for Double;
  qword_1009A3148 = &protocol witness table for Double;
  qword_1009A3128 = 0x4020000000000000;
  xmmword_1009A3000 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100012498(&v53, &unk_1009A3010);
  qword_1009A3038 = sub_100659530;
  unk_1009A3040 = 0;
  sub_100012498(&v50, &unk_1009A3048);
  sub_100012498(&v47, &unk_1009A3070);
  sub_100012498(&v38, &unk_1009A30E8);
  sub_100012498(&v44, &unk_1009A3098);
  sub_100012498(&v41, &unk_1009A30C0);
  qword_1009A3110 = 0;
  unk_1009A3118 = 0;
  byte_1009A3120 = 0;
  *&result = 16777217;
  dword_1009A3150 = 16777217;
  qword_1009A3158 = 0;
  byte_1009A3160 = 1;
  return result;
}

uint64_t sub_1006563D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v4 - 8);
  v54 = &v49 - v5;
  v6 = sub_100768FEC();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946750);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v49 = &v49 - v9;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v56 = &v49 - v16;
  v17 = &selRef_initWithTabBarSystemItem_tag_;
  v18 = [v1 traitCollection];
  v19 = sub_10077071C();

  if (v19)
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  }

  else
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  }

  v21 = &v2[v20];
  swift_beginAccess();
  sub_10015E5E0(v21, a1);
  v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  type metadata accessor for TodayCardLockupView();
  sub_10076422C();
  v23 = (v22 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize);
  v24 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16);
  v55 = a1;
  if (v24)
  {
    v25 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v22 + v25, v57);
    sub_10000CF78(v57, v57[3]);
    v17 = &selRef_initWithTabBarSystemItem_tag_;
    sub_100767A2C();
    v27 = v26;
    v29 = v28;
    sub_10000CD74(v57);
    *v23 = v27;
    v23[1] = v29;
    *(v23 + 16) = 0;
  }

  else
  {
    v27 = *v23;
  }

  v30 = [v2 v17[274]];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v31 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v31 = qword_100944CA0;
  }

  v32 = sub_10000A61C(v10, v31);
  (*(v11 + 16))(v13, v32, v10);

  (*(v11 + 32))(v56, v13, v10);
  v33 = (v22 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter);
  swift_beginAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = sub_10000CF78(v33, v33[3]);
    v36 = *(v34 - 8);
    v37 = __chkstk_darwin(v35);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    sub_10076584C();
    (*(v36 + 8))(v39, v34);
  }

  v40 = v51;
  v41 = *(v51 + 104);
  v41(v50, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  v42 = v54;
  v41(v54, enum case for OfferButtonSubtitlePosition.right(_:), v6);
  (*(v40 + 56))(v42, 0, 1, v6);
  sub_10033350C();
  v43 = v49;
  sub_10076759C();
  v44 = v56;
  sub_10076440C();
  v46 = v45;

  (*(v52 + 8))(v43, v53);
  result = (*(v11 + 8))(v44, v10);
  v48 = v55;
  *(v55 + 272) = v27;
  *(v48 + 280) = v46;
  *(v48 + 288) = 0;
  return result;
}

double sub_1006569E8(void *a1, double a2)
{
  v5 = sub_10076443C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v22[-v10 - 8];
  sub_1006563D8(v27);
  v12 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E5E0(v2 + v12, v26);
  [v2 layoutMargins];
  if (sub_10077071C())
  {
    v13 = v26;
  }

  else
  {
    v13 = v27;
  }

  sub_10015E5E0(v13, v22);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v14 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v14 = qword_100944CA0;
  }

  v15 = sub_10000A61C(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  (*(v6 + 32))(v11, v8, v5);
  if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
  {
    sub_1007643EC();
    v17 = v16;
    sub_1007643EC();
    v23 = v17;
    v24 = v18;
    v25 = 0;
  }

  v19 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a1, a2);
  (*(v6 + 8))(v11, v5);
  sub_10015E58C(v22);
  sub_10015E58C(v26);
  sub_10015E58C(v27);
  return v19;
}

CGFloat sub_100656D50()
{
  v1 = sub_10076443C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  sub_1006563D8(v22);
  v8 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E5E0(v0 + v8, v21);
  v9 = [v0 traitCollection];
  [v0 layoutMargins];
  if (sub_10077071C())
  {
    v10 = v21;
  }

  else
  {
    v10 = v22;
  }

  sub_10015E5E0(v10, v17);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v11 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v11 = qword_100944CA0;
  }

  v12 = sub_10000A61C(v1, v11);
  (*(v2 + 16))(v4, v12, v1);
  (*(v2 + 32))(v7, v4, v1);
  if ((v20 & 1) == 0 && v18 == 0.0 && v19 == 0.0)
  {
    sub_1007643EC();
    v14 = v13;
    sub_1007643EC();
    v18 = v14;
    v19 = v15;
    v20 = 0;
  }

  _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v17, v9, 0.0);

  (*(v2 + 8))(v7, v1);
  sub_10015E58C(v17);
  sub_10015E58C(v21);
  sub_10015E58C(v22);
  return UIViewNoIntrinsicMetric;
}

uint64_t sub_100657114@<X0>(uint64_t *a1@<X8>)
{
  sub_1006563D8(v140);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel);
    v4 = sub_1007626BC();
    *(&v116[1] + 1) = v4;
    *&v116[2] = &protocol witness table for UILabel;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    }

    *&v116[0] = v5;
    sub_100012498(v116, v139);
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = &protocol witness table for UILabel;
    }

    else
    {
      v12 = 0;
    }

    v136 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    *&v137 = 0;
    *(&v137 + 1) = v11;
    v138 = v12;
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    v7 = sub_1007626BC();
    v8 = v7;
    v139[4] = &protocol witness table for UILabel;
    v139[3] = v7;
    v139[0] = v6;
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel);
    if (v9)
    {
      v10 = type metadata accessor for SearchAdTransparencyLabel();
      v132 = &protocol witness table for UILabel;
      v131 = v10;
      *&v130 = v9;
      sub_100012498(&v130, v116);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
      if (v13)
      {
        v14 = &protocol witness table for UILabel;
        v15 = v7;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v116[0] + 1) = 0;
        *&v116[1] = 0;
      }

      *&v116[0] = v13;
      *(&v116[1] + 1) = v15;
      *&v116[2] = v14;
      v16 = v6;
      v9 = 0;
      v6 = v13;
    }

    v17 = v6;
    v136 = v116[0];
    v137 = v116[1];
    v138 = *&v116[2];
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
    v135 = &protocol witness table for UILabel;
    *(&v134 + 1) = v8;
    *&v133 = v3;
  }

  v18 = v9;
  v19 = v3;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter))
  {
    v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
    v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_10015E5E0(v140, &v130);
  v24 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v25 = sub_10075FD2C();
  v129 = &protocol witness table for UIView;
  v128 = v25;
  v103 = v24;
  v127[0] = v24;
  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v27 = sub_1007626BC();
  v28 = v27;
  v126[4] = &protocol witness table for UILabel;
  v126[3] = v27;
  v102 = v26;
  v126[0] = v26;
  v29 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  v101 = v29;
  if (v29)
  {
    v30 = &protocol witness table for UILabel;
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v125[2] = 0;
    v125[1] = 0;
  }

  v125[0] = v29;
  v125[3] = v31;
  v125[4] = v30;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v124[4] = &protocol witness table for UILabel;
  v124[3] = v27;
  v100 = v32;
  v124[0] = v32;
  sub_10000A570(v139, v121);
  sub_100016E2C(&v136, v120, &qword_10094BB30);
  if (v20)
  {
    v33 = &protocol witness table for UILabel;
    v34 = v20;
    v35 = v28;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v119[2] = 0;
    v119[1] = 0;
  }

  v119[0] = v34;
  v119[3] = v35;
  v119[4] = v33;
  if (v21)
  {
    v36 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v36 = 0;
    v118[2] = 0;
    v118[1] = 0;
  }

  v118[0] = v21;
  v118[3] = v28;
  v118[4] = v36;
  sub_100016E2C(&v133, v117, &qword_10094BB30);
  v37 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v109 = type metadata accessor for OfferButton();
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_100333934();
  v108 = swift_allocObject();
  *a1 = v108;
  sub_10015E5E0(&v130, v116);
  v104 = v35;
  BYTE8(v116[47]) = v35 != 0;
  v38 = v128;
  v39 = v129;
  sub_10000CF78(v127, v128);
  v40 = sub_1007711AC();
  v99 = &v99;
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v99 - v42;
  v107 = v20;
  v106 = v21;
  v105 = v37;
  v44 = v103;
  v45 = v102;
  v46 = v101;
  v47 = v100;
  sub_10076D21C();
  v48 = *(v38 - 8);
  if ((*(v48 + 48))(v43, 1, v38) == 1)
  {
    (*(v41 + 8))(v43, v40);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v38;
    v115 = v39;
    v49 = sub_10000DB7C(&v113);
    (*(v48 + 32))(v49, v43, v38);
  }

  *(&v116[22] + 8) = v113;
  *(&v116[23] + 8) = v114;
  *(&v116[24] + 1) = v115;
  sub_100016E2C(v126, v110, &qword_10094BB30);
  v50 = v111;
  if (v111)
  {
    v51 = v112;
    sub_10000CF78(v110, v111);
    v52 = sub_1007711AC();
    v53 = *(v52 - 8);
    __chkstk_darwin(v52);
    v55 = &v99 - v54;
    sub_10076D6BC();
    v56 = *(v50 - 8);
    if ((*(v56 + 48))(v55, 1, v50) == 1)
    {
      (*(v53 + 8))(v55, v52);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v50;
      v115 = v51;
      v57 = sub_10000DB7C(&v113);
      (*(v56 + 32))(v57, v55, v50);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[25] = v113;
  v116[26] = v114;
  *&v116[27] = v115;
  sub_100016E2C(v125, v110, &qword_10094BB30);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    sub_10000CF78(v110, v111);
    v60 = sub_1007711AC();
    v61 = *(v60 - 8);
    __chkstk_darwin(v60);
    v63 = &v99 - v62;
    sub_10076D6BC();
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v61 + 8))(v63, v60);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v58;
      v115 = v59;
      v65 = sub_10000DB7C(&v113);
      (*(v64 + 32))(v65, v63, v58);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[27] + 8) = v113;
  *(&v116[28] + 8) = v114;
  *(&v116[29] + 1) = v115;
  sub_10000A570(v124, &v116[30]);
  v66 = v122;
  v67 = v123;
  sub_10000CF78(v121, v122);
  v68 = sub_1007711AC();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v99 - v70;
  if (v104)
  {
    sub_10076D6AC();
  }

  else
  {
    sub_10076D6BC();
  }

  v72 = *(v66 - 8);
  if ((*(v72 + 48))(v71, 1, v66) == 1)
  {
    (*(v69 + 8))(v71, v68);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v66;
    v115 = v67;
    v73 = sub_10000DB7C(&v113);
    (*(v72 + 32))(v73, v71, v66);
  }

  *(&v116[32] + 8) = v113;
  *(&v116[33] + 8) = v114;
  *(&v116[34] + 1) = v115;
  sub_100016E2C(v120, v110, &qword_10094BB30);
  v74 = v111;
  if (v111)
  {
    v75 = v112;
    sub_10000CF78(v110, v111);
    v76 = sub_1007711AC();
    v77 = *(v76 - 8);
    __chkstk_darwin(v76);
    v79 = &v99 - v78;
    sub_10076D6BC();
    v80 = *(v74 - 8);
    if ((*(v80 + 48))(v79, 1, v74) == 1)
    {
      (*(v77 + 8))(v79, v76);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v74;
      v115 = v75;
      v81 = sub_10000DB7C(&v113);
      (*(v80 + 32))(v81, v79, v74);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[35] = v113;
  v116[36] = v114;
  *&v116[37] = v115;
  sub_100016E2C(v119, &v116[37] + 8, &qword_10094BB30);
  sub_100016E2C(v118, v110, &qword_10094BB30);
  v82 = v111;
  if (v111)
  {
    v83 = v112;
    sub_10000CF78(v110, v111);
    v84 = sub_1007711AC();
    v85 = *(v84 - 8);
    __chkstk_darwin(v84);
    v87 = &v99 - v86;
    sub_10076D6AC();
    v88 = *(v82 - 8);
    if ((*(v88 + 48))(v87, 1, v82) == 1)
    {
      (*(v85 + 8))(v87, v84);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v82;
      v115 = v83;
      v89 = sub_10000DB7C(&v113);
      (*(v88 + 32))(v89, v87, v82);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[40] = v113;
  v116[41] = v114;
  *&v116[42] = v115;
  sub_100016E2C(v117, v110, &qword_10094BB30);
  v90 = v111;
  if (v111)
  {
    v91 = v112;
    sub_10000CF78(v110, v111);
    v92 = sub_1007711AC();
    v93 = *(v92 - 8);
    __chkstk_darwin(v92);
    v95 = &v99 - v94;
    sub_10076D6BC();
    v96 = *(v90 - 8);
    if ((*(v96 + 48))(v95, 1, v90) == 1)
    {
      sub_10000CFBC(v117, &qword_10094BB30);
      sub_10000CFBC(v120, &qword_10094BB30);
      sub_10015E58C(&v130);
      sub_10000CFBC(v118, &qword_10094BB30);
      sub_10000CD74(v124);
      sub_10000CFBC(v125, &qword_10094BB30);
      sub_10000CFBC(v126, &qword_10094BB30);
      sub_10000CFBC(v119, &qword_10094BB30);
      (*(v93 + 8))(v95, v92);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v90;
      v115 = v91;
      v97 = sub_10000DB7C(&v113);
      (*(v96 + 32))(v97, v95, v90);
      sub_10000CFBC(v117, &qword_10094BB30);
      sub_10000CFBC(v120, &qword_10094BB30);
      sub_10015E58C(&v130);
      sub_10000CFBC(v118, &qword_10094BB30);
      sub_10000CD74(v124);
      sub_10000CFBC(v125, &qword_10094BB30);
      sub_10000CFBC(v126, &qword_10094BB30);
      sub_10000CFBC(v119, &qword_10094BB30);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v117, &qword_10094BB30);
    sub_10000CFBC(v120, &qword_10094BB30);
    sub_10015E58C(&v130);
    sub_10000CFBC(v118, &qword_10094BB30);
    sub_10000CD74(v124);
    sub_10000CFBC(v125, &qword_10094BB30);
    sub_10000CFBC(v126, &qword_10094BB30);
    sub_10000CFBC(v119, &qword_10094BB30);
    sub_10000CFBC(v110, &qword_10094BB30);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[42] + 8) = v113;
  *(&v116[43] + 8) = v114;
  *(&v116[44] + 1) = v115;
  *&v116[45] = v105;
  *(&v116[45] + 8) = v113;
  *(&v116[46] + 1) = v109;
  *&v116[47] = &protocol witness table for UIView;
  memcpy((v108 + 16), v116, 0x2F9uLL);

  sub_10000CFBC(&v136, &qword_10094BB30);
  sub_10015E58C(v140);
  sub_10000CD74(v121);
  sub_10000CD74(v127);
  sub_10000CFBC(&v133, &qword_10094BB30);
  return sub_10000CD74(v139);
}

void sub_1006582B8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v45 = &v44 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v6 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter;
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter);
  v9 = !v7 || (v8 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v7 + v8) != 1) || [v5 numberOfLines] == 0;
  [v5 setHidden:{v9, v3}];
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v11 = *(v1 + v6);
  if (v11 && (v12 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v11 + v12) == 1) && [v10 numberOfLines])
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [v10 setHidden:v13];
  v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v15 = *(v1 + v6);
  v17 = v15 && (v16 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v15 + v16) & 1) != 0) || [v14 numberOfLines] == 0;
  [v14 setHidden:v17];
  v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v19 = *(v1 + v6);
  if (v19 && (v20 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v19 + v20) & 1) != 0) || ![v18 numberOfLines])
  {
    v21 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v21 = 0;
  }

  [v18 setHidden:v21];
  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    v24 = v22;
    if (v23 == 1)
    {
      if ([v18 isHidden])
      {
        v25 = [v10 isHidden] ^ 1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v24 setHidden:v25];
  }

  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v27 = [v26 text];
  if (v27)
  {
    v28 = v27;
    sub_10076FF9C();
  }

  v29 = sub_10077002C();

  if (v29)
  {
    v30 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v30 = 0;
  }

  [v26 setHidden:v30];
  v31 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    if (v32)
    {
      v33 = v32;
      sub_1007625CC();
      sub_1007625DC();

      v34 = *(v1 + v31);
      if (v34)
      {
        v35 = v34;
        v36 = [v18 textColor];
        [v35 setTextColor:v36];
LABEL_45:
      }
    }
  }

  else if (v32)
  {
    v37 = qword_100940A98;
    v38 = v32;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = sub_10076D3DC();
    v40 = sub_10000A61C(v39, qword_1009A0DD8);
    v41 = *(v39 - 8);
    v42 = v45;
    (*(v41 + 16))(v45, v40, v39);
    (*(v41 + 56))(v42, 0, 1, v39);
    sub_1007625DC();

    v43 = *(v1 + v31);
    if (v43)
    {
      sub_1000325F0();
      v36 = v43;
      v35 = sub_100770D1C();
      [v36 setTextColor:v35];
      goto LABEL_45;
    }
  }
}

uint64_t sub_1006587E0()
{
  sub_10015E58C(v0 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics);
  sub_10015E58C(v0 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics);
}

id sub_100658880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006589BC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_100658B30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100658B78()
{
  sub_10000CD74((v0 + 4));

  sub_10000CD74((v0 + 11));
  sub_10000CD74((v0 + 16));
  sub_10000CD74((v0 + 21));
  sub_10000CD74((v0 + 26));
  sub_10000CD74((v0 + 31));
  sub_10000CD74((v0 + 39));
  if (v0[50])
  {
    sub_10000CD74((v0 + 47));
  }

  if (v0[55])
  {
    sub_10000CD74((v0 + 52));
  }

  if (v0[60])
  {
    sub_10000CD74((v0 + 57));
  }

  sub_10000CD74((v0 + 62));
  if (v0[70])
  {
    sub_10000CD74((v0 + 67));
  }

  if (v0[75])
  {
    sub_10000CD74((v0 + 72));
  }

  if (v0[80])
  {
    sub_10000CD74((v0 + 77));
  }

  if (v0[85])
  {
    sub_10000CD74((v0 + 82));
  }

  if (v0[90])
  {
    sub_10000CD74((v0 + 87));
  }

  if (v0[95])
  {
    sub_10000CD74((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

char *sub_100658C80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v58 = sub_10076E3AC();
  __chkstk_darwin(v58);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076E8BC();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_preferStackedLargeAXLayouts] = 0;
  v56 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A0CE8);
  v14 = *(v12 - 8);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v19 = *(v14 + 56);
  v18 = v14 + 56;
  v17 = v19;
  v19(v11, 0, 1, v12);
  v20 = *(v6 + 104);
  v48 = v6 + 104;
  v49 = v20;
  v50 = enum case for DirectionalTextAlignment.none(_:);
  v20(v8);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v46 = v5;
  *&v1[v56] = sub_1007626AC();
  v47 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v12, qword_1009A0D48);
  v54 = v15;
  v55 = v16;
  v15(v11, v23, v12);
  v56 = v18;
  v17(v11, 0, 1, v12);
  v49(v8, v50, v46);
  v24 = objc_allocWithZone(v21);
  *&v1[v47] = sub_1007626AC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView____lazy_storage___lockupViews] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView____lazy_storage___crossLinkViews] = 0;
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2D20, &v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics]);
  if (qword_100941430 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2E90, &v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics]);
  v25 = type metadata accessor for TodayCardLockupView();
  v61.receiver = v1;
  v61.super_class = v25;
  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v51 + 104))(v53, enum case for UITypesettingLanguageAwareLineHeightRatio.disabled(_:), v52);
  v27 = v26;
  sub_100770C0C();
  sub_10076E38C();
  sub_100770C1C();
  v28 = qword_100940A50;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v30 = v54;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v12, qword_1009A0D00);
  v30(v11, v31, v12);
  v17(v11, 0, 1, v12);
  sub_1007625DC();

  v32 = qword_100940A80;
  v33 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v12, qword_1009A0D90);
  v30(v11, v34, v12);
  v17(v11, 0, 1, v12);
  sub_1007625DC();

  v35 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel;
  v36 = *&v27[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v27[v35] setHidden:1];
  [*&v27[v35] setAlpha:0.0];
  [v27 addSubview:*&v27[v35]];
  v40 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel;
  v41 = *&v27[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel];
  v42 = [v37 labelColor];
  [v41 setTextColor:v42];

  [*&v27[v40] setHidden:1];
  [*&v27[v40] setAlpha:0.0];
  [v27 addSubview:*&v27[v40]];
  sub_10000A5D4(&unk_100945BF0);
  v43 = swift_allocObject();
  v58 = xmmword_100783DD0;
  *(v43 + 16) = xmmword_100783DD0;
  *(v43 + 32) = sub_10076E88C();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v60[3] = v25;
  v60[0] = v27;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v60);
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = sub_10076E3FC();
  *(v44 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v27;
}

id sub_100659534()
{
  type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100659570(int a1, int a2, int a3, uint64_t a4, id a5)
{
  if ([a5 horizontalSizeClass] == 1)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  }

  else
  {
    type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  }

  sub_100356960(a4, a5);
  return v7;
}

id sub_10065964C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_100962690;
  if (!qword_100962690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100659738(uint64_t a1)
{
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension21GalleryViewController_artworkLoader] = v12;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension21GalleryViewController_artwork] = a1;
  v3 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v3 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setMinimumInteritemSpacing:0.0];
  [v3 setMinimumLineSpacing:0.0];
  [v3 setScrollDirection:1];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for GalleryViewController();
  v4 = objc_msgSendSuper2(&v11, "initWithCollectionViewLayout:", v3);
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setContentInsetAdjustmentBehavior:2];
  }

  v7 = v4;
  v8 = [v7 navigationItem];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v7 action:"dismissFrom:"];

  [v8 setRightBarButtonItem:v9];

  return v7;
}

id sub_100659968()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_100659B20(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for GalleryViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100760BDC();
}

void sub_100659BA8(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for GalleryViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100760BDC();
}

void sub_100659C18()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setHidesBarsOnTap:1];
  }

  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 barHideOnTapGestureRecognizer];

    [v5 addTarget:v0 action:"tapStateChangedOn:"];
  }

  v6 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v6 setDirection:8];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addGestureRecognizer:v6];

    v9 = [v0 collectionView];
    if (v9)
    {
      if (qword_100941440 != -1)
      {
        v23 = v9;
        swift_once();
        v9 = v23;
      }

      v10 = v9;
      [v9 setBackgroundColor:qword_1009626B0];
    }

    v11 = [v0 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setAllowsSelection:0];
    }

    v13 = [v0 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setAlwaysBounceHorizontal:1];
    }

    v15 = [v0 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setShowsHorizontalScrollIndicator:0];
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setPagingEnabled:1];
    }

    v19 = [v0 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ArtworkCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007708FC();
      v22 = sub_10076FF6C();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100659F4C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
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

id sub_10065A0E8(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_10065AE44;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10009AEDC;
    v7[3] = &unk_10089E4B8;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_10065A20C(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_100941448 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_1009626B8;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_100941440 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_1009626B0;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_10065A3BC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_10065AE24;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10009AEDC;
      v10[3] = &unk_10089E468;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10065A544(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_100941448 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_1009626B8];
  }
}

unint64_t sub_10065A6A8(void *a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell();
  sub_1007708FC();
  v5 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21GalleryViewController_artwork);
  result = sub_10075E09C();
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076BEFC();
  [*&v8[v9] contentMode];
  sub_10076BFCC();
  v21 = *&v8[v9];
  sub_10076BF7C();
  sub_10075FCCC();
  [v21 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();

  v22 = *&v8[v9];
  sub_10075FD2C();
  sub_10000D7F8();
  v23 = v22;
  sub_100760B8C();

  return v8;
}

uint64_t sub_10065ADEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10065AE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10065AE58()
{
  sub_10000A5D4(&unk_1009609A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007844F0;
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
  v7 = sub_100179CCC(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_1009626F8 = v7;
  return result;
}

double sub_10065AF68@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_1006938BC(v5, v4), v5, (v4 & 1) != 0) || (, sub_10000A5D4(&qword_100962758), sub_10076ACAC(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_100016F40(0, &qword_10094F610);
    *&v8 = v7;
    sub_10000CD64(&v8, a2);
  }

  return result;
}

id sub_10065B058@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10065B234(void *a1@<X8>)
{
  v3 = sub_10076F0EC();
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
  if (sub_1006938BC(v11, *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v13 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_100016F40(0, &qword_10094F610);
    *a1 = v13;
    return;
  }

  v14 = dispatch_semaphore_create(0);
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkLoader];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v23 = a1;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v14;

  sub_100760B7C();

  sub_10002CBB4(v24);

  sub_10076F0DC();
  sub_10076F15C();
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_10077081C();
  v18(v10, v3);
  v19 = v23;

  sub_10000A5D4(&qword_100962758);
  sub_10076ACAC();

  v20 = *&v24[0];
  v19[3] = sub_100016F40(0, &qword_10094F610);
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

Swift::Int sub_10065B560(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v6 = sub_10076BF6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_10076D39C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_10077083C();
  }

  v18 = Strong;
  if (!a1)
  {

    return sub_10077083C();
  }

  v39 = OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig;
  v38 = a1;

  sub_100764ADC();
  v20 = v19;
  v22 = v21;

  v40 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v20, v22}];
  [v40 setOpaque:0];
  sub_10076D3AC();
  v23 = sub_10076D38C();
  (*(v14 + 8))(v16, v13);
  if (v23)
  {
    if (v18[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
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
  sub_10075FCCC();
  v27 = v38;
  sub_10075FCAC();
  sub_100016F40(0, &qword_100962760);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  sub_100764AEC();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10065BC70;
  *(v33 + 24) = v32;
  aBlock[4] = sub_10065BCD0;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004CD72C;
  aBlock[3] = &unk_10089E580;
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

    sub_10076ACCC();

    sub_10077083C();
  }

  return result;
}

id sub_10065BAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10065BBB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10065BBF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10065BC38()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10065BC70()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_10065BCD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10065BCF0(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

char *sub_10065BD44(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v11 = sub_10075FB4C();
  sub_1007638EC();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_1007600FC();
  v13 = sub_1007600EC();
  v15 = sub_1004B958C(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_10065BEA4()
{
  v1 = sub_10076D1FC();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075FD8C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10075FDAC();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_100940350 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_10099F740);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder];
  v31 = sub_10075FD2C();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_1005BEF00();
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
  sub_10075FD9C();
  sub_10076422C();
  sub_10075FD6C();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_10065C218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10065C2BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v3 = sub_10075FB4C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_1007600FC();
  v5 = sub_1007600EC();
  v7 = sub_1004B958C(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10065C39C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10075EBAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED1C();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != enum case for LegacyAppState.waiting(_:))
  {
    if (v6 == enum case for LegacyAppState.purchased(_:))
    {
      (*(v3 + 96))(v5, v2);
      v9 = sub_10076093C();
    }

    else
    {
      if (v6 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v3 + 8))(v5, v2);
        v8 = &enum case for AdInteractionType.update(_:);
        goto LABEL_12;
      }

      if (v6 == enum case for LegacyAppState.downloadable(_:))
      {
        (*(v3 + 8))(v5, v2);
        v8 = &enum case for AdInteractionType.download(_:);
        goto LABEL_12;
      }

      if (v6 == enum case for LegacyAppState.paused(_:) || v6 == enum case for LegacyAppState.downloading(_:) || v6 == enum case for LegacyAppState.installing(_:))
      {
        (*(v3 + 96))(v5, v2);
        v7 = sub_10075EB1C();
        goto LABEL_3;
      }

      if (v6 != enum case for LegacyAppState.openable(_:))
      {
        if (v6 != enum case for LegacyAppState.buyable(_:))
        {
          if (v6 == enum case for LegacyAppState.installed(_:))
          {
            goto LABEL_7;
          }

          if (v6 != enum case for LegacyAppState.unknown(_:))
          {
            v13 = enum case for AdInteractionType.open(_:);
            v14 = sub_10076CF4C();
            (*(*(v14 - 8) + 104))(a1, v13, v14);
            return (*(v3 + 8))(v5, v2);
          }
        }

        v8 = &enum case for AdInteractionType.getArcade(_:);
        goto LABEL_12;
      }

      (*(v3 + 96))(v5, v2);

      v9 = sub_100764E5C();
    }

    (*(*(v9 - 8) + 8))(v5, v9);
LABEL_7:
    v8 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  (*(v3 + 96))(v5, v2);
  v7 = sub_1007627AC();
LABEL_3:
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = &enum case for AdInteractionType.cancel(_:);
LABEL_12:
  v10 = *v8;
  v11 = sub_10076CF4C();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_10065C770@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10076491C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075EBAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED1C();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = sub_1007627AC();
LABEL_3:
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = &enum case for AdInteractionType.cancel(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = sub_10076093C();
LABEL_6:
    (*(*(v13 - 8) + 8))(v9, v13);
LABEL_7:
    v12 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v7 + 8))(v9, v6);
    v12 = &enum case for AdInteractionType.update(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v7 + 8))(v9, v6);
    v12 = &enum case for AdInteractionType.download(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.paused(_:) || v10 == enum case for LegacyAppState.downloading(_:) || v10 == enum case for LegacyAppState.installing(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = sub_10075EB1C();
    goto LABEL_3;
  }

  if (v10 == enum case for LegacyAppState.openable(_:))
  {
    (*(v7 + 96))(v9, v6);

    v13 = sub_100764E5C();
    goto LABEL_6;
  }

  if (v10 != enum case for LegacyAppState.buyable(_:))
  {
    if (v10 == enum case for LegacyAppState.installed(_:))
    {
      goto LABEL_7;
    }

    if (v10 != enum case for LegacyAppState.unknown(_:))
    {
      v17 = enum case for AdInteractionType.open(_:);
      v18 = sub_10076CF4C();
      (*(*(v18 - 8) + 104))(a1, v17, v18);
      return (*(v7 + 8))(v9, v6);
    }
  }

  (*(v3 + 104))(v5, enum case for AdvertActionMetrics.PurchaseType.standard(_:), v2);
  sub_10065CD18();
  sub_10077018C();
  sub_10077018C();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19 = sub_10077167C();
    (*(v3 + 8))(v5, v2);

    if ((v19 & 1) == 0)
    {
      v12 = &enum case for AdInteractionType.getPreorder(_:);
      goto LABEL_12;
    }
  }

  v12 = &enum case for AdInteractionType.get(_:);
LABEL_12:
  v14 = *v12;
  v15 = sub_10076CF4C();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_10065CCBC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10065CD18()
{
  result = qword_100962848;
  if (!qword_100962848)
  {
    sub_10076491C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962848);
  }

  return result;
}

uint64_t sub_10065CD80@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    v12 = v11;
    v13 = qword_1009A23C8;
LABEL_9:
    v14 = sub_10000A61C(v11, v13);
    a1[3] = v12;
    a1[4] = &protocol witness table for StaticDimension;
    v15 = sub_10000DB7C(a1);
    return (*(*(v12 - 8) + 16))(v15, v14, v12);
  }

  if (v10 == enum case for Shelf.ContentType.pageTabs(_:))
  {
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    v12 = v11;
    v13 = qword_1009A23B0;
    goto LABEL_9;
  }

  sub_100642BFC(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10065D058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D9AC();
    v13 = sub_10000A61C(v12, qword_1009A23B0);
    a2[3] = v12;
    a2[4] = &protocol witness table for StaticDimension;
    v14 = sub_10000DB7C(a2);
    return (*(*(v12 - 8) + 16))(v14, v13, v12);
  }

  else
  {
    sub_100643F38(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10065D2CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_10076463C();
  sub_1003B2204(v7);
  v8 = sub_10000A5D4(&unk_100946720);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D9AC();
    v10 = sub_10000A61C(v9, qword_1009A23E0);
    a1[3] = v9;
    a1[4] = &protocol witness table for StaticDimension;
    v11 = sub_10000DB7C(a1);
    return (*(*(v9 - 8) + 16))(v11, v10, v9);
  }

  else
  {
    sub_1002C174C();
    sub_100768A4C();
    return sub_1003B2204(v4);
  }
}

char *sub_10065D48C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  sub_100766D9C();
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView();
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView] + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pagingDelegate + 8) = &off_10089E5E0;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl_delegate + 8) = &off_10089E5D0;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = sub_10076C03C();
  v32[3] = v21;
  v32[4] = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v22 = sub_10000DB7C(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = sub_10076C90C();
  sub_10000CD74(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress] = v23;

    v26 = *&v17[v24];
    if (v26)
    {
      [v26 setDelegate:v17];
      v27 = *&v17[v24];
    }

    else
    {
      v27 = 0;
    }

    [*&v17[v19] setProgress:v27];
    sub_10065F2C8();
  }

  [v17 addSubview:*&v17[v18]];
  [v17 addSubview:*&v17[v19]];
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v17 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v17 selector:"voiceOverStatusDidChange:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  return v17;
}

void sub_10065D93C(char a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = sub_10076C03C();
  v12 = v3;
  v4 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v13 = v4;
  v5 = sub_10000DB7C(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = sub_10076C90C();
  sub_10000CD74(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
      {
        sub_10065E9F4(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_10000DB7C(v11);
      v7(v9, v6, v3);
      v10 = sub_10076C90C();
      sub_10000CD74(v11);
      if ((v10 & 1) == 0)
      {
        sub_100660768(0);
      }
    }
  }
}

void sub_10065DA90()
{
  v1 = sub_10076C03C();
  v10 = v1;
  v2 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v11 = v2;
  v3 = sub_10000DB7C(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = sub_10076C90C();
  sub_10000CD74(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_10000DB7C(v9);
        v5(v7, v4, v1);
        v8 = sub_10076C90C();
        sub_10000CD74(v9);
        if ((v8 & 1) == 0)
        {
          sub_100660768(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
    {
      sub_10065E9F4(0.0);
    }
  }
}

id sub_10065DC0C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView];
  sub_10076422C();
  [v1 setFrame:?];
  sub_10076422C();
  sub_100770A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  v15 = CGRectGetMidX(v18) + v12 * -0.5;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  return [v10 setFrame:{v15, CGRectGetMaxY(v19) - v14, v12, v14}];
}

id sub_10065DD9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 24) == v2)
      {

        v9 = *(v6 + 32);

        return v9;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

id sub_10065DEE0(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_12:

  *&v26[v5] = a1;

  v11 = a1 >> 62;
  if (a1 >> 62)
  {
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRetain_n();
  if (v4)
  {
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v13 = *(a1 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      v15 = *&v26[v5];
      if (v15 >> 62)
      {
        v24 = v11;
        v18 = v13;
        v16 = sub_10077158C();
        v13 = v18;
        v11 = v24;
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 32.0;
      if (v16 <= 1)
      {
        v17 = 20.0;
      }

      *&v13[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = sub_10077158C();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = sub_10077158C();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setHidden:v22 < 2];
  sub_100349CBC(a1, a2);

  return [v26 setNeedsLayout];
}

uint64_t sub_10065E1C8(int a1, int a2)
{
  v48 = sub_100766EFC();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v7 & 0xC000000000000001;
    v52 = a1 & 1;
    v46 = v5 + 1;
    v49 = a2;
    v50 = a1;
    v51 = v7;
    v53 = v8;
    do
    {
      if (v55)
      {
        v20 = sub_10077149C();
      }

      else
      {
        if (v9 >= *(v54 + 16))
        {
          goto LABEL_32;
        }

        v20 = *(v7 + 8 * v9 + 32);
      }

      v5 = v20;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v8 = sub_10077158C();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_100458510(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_100016F40(0, &qword_1009492D0);

          isa = sub_1007701AC().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_10016D8F8(v29);

          v33 = sub_1007701AC().super.isa;
          a1 = v50;

          v34 = v32;
          v7 = v51;
          [v34 setColors:v33];

          v35 = *&v23[v25];
          a2 = v49;
          [v35 setNeedsDisplay];
        }

        else
        {
          [*&v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem) || (, v37 = sub_10076279C(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        sub_100766F1C();

        v39 = sub_100766EEC();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_100458510(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_100016F40(0, &qword_1009492D0);

      v16 = sub_1007701AC().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_10016D8F8(v14);

      v18 = sub_1007701AC().super.isa;
      v7 = v51;

      v19 = v17;
      a1 = v50;
      [v19 setColors:v18];

      [*&v36[v10] setNeedsDisplay];
LABEL_6:
      [v36 setNeedsLayout];
LABEL_7:

      ++v9;
    }

    while (v21 != v53);
  }
}

void sub_10065E718()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = sub_10076C03C();
    v26 = v14;
    v15 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
    v27 = v15;
    v16 = sub_10000DB7C(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = sub_10076C90C();
    sub_10000CD74(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_10000DB7C(v25);
    v18(v23, v17, v14);
    v24 = sub_10076C90C();
    sub_10000CD74(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_100660768(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = sub_10076C03C();
  v26 = v6;
  v7 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v27 = v7;
  v8 = sub_10000DB7C(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = sub_10076C90C();
  sub_10000CD74(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_10000DB7C(v25);
    v10(v20, v9, v6);
    v21 = sub_10076C90C();
    sub_10000CD74(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_10034A1E4(v12);
}

void sub_10065E9F4(double a1)
{
  v3 = sub_10076F08C();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076F0CC();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10076F0EC();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = sub_100766DDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076C03C();
  v50 = v14;
  v51 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v15 = sub_10000DB7C(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = sub_10076C90C();
  sub_10000CD74(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = sub_100766DAC();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (sub_10077158C() < 2)
        {
          return;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        sub_100766DCC();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_1006609C8;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_100177EA0;
        v50 = &unk_10089E698;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_100660768(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_100016F40(0, &qword_1009471F0);
          v28 = sub_10077068C();
          sub_10076F0DC();
          v29 = v38;
          sub_10076F15C();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_100660A08;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_10009AEDC;
          v50 = &unk_10089E6E8;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          sub_10076F0AC();
          aBlock = _swiftEmptyArrayStorage;
          sub_100660A10(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000A5D4(&unk_10094E1C0);
          sub_1000852B8();
          v34 = v42;
          v35 = v45;
          sub_1007712CC();
          sub_10077064C();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_10065F174(void *a1)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);

      sub_10034A1E4(1u);
    }

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_100660768(0);
    }
  }
}

void sub_10065F22C(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_10065F2C8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10076C03C();
  v10 = v1;
  v11 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v2 = sub_10000DB7C(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = sub_10076C90C();
  sub_10000CD74(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_1006609A8;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100177EA0;
    v10 = &unk_10089E670;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_10065F4E8()
{
  v3 = sub_100766DDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
      v12 = v10;

      if ((v11 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v11 + v9 + 4);
LABEL_7:
          v15 = v14;

          v11 = *&v15[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView];

          v16 = *(*(*(v11 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
          if (!v16)
          {
            goto LABEL_35;
          }

          type metadata accessor for VideoView();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            goto LABEL_35;
          }

          v18 = v17;
          v12 = v16;

          v19 = *(v18 + qword_1009602F0);
          if (!v19)
          {
            v11 = v12;
            goto LABEL_35;
          }

          v11 = v19;
          v20 = sub_1007604FC();
          if (!v20)
          {
LABEL_33:

LABEL_35:
            return;
          }

          v0 = v20;
          [v20 duration];
          Seconds = CMTimeGetSeconds(&time);
          [v0 currentTime];
          v2 = CMTimeGetSeconds(&time);
          if (vabdd_f64(v2, Seconds) > 0.5 || (swift_beginAccess(), (v21 = swift_unknownObjectWeakLoadStrong()) == 0) || (v22 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration, v23 = v21, swift_beginAccess(), (*(v4 + 16))(v6, &v23[v22], v3), LOBYTE(v22) = sub_100766DAC(), v23, (*(v4 + 8))(v6, v3), (v22 & 1) == 0) || (swift_beginAccess(), (v13 = swift_unknownObjectWeakLoadStrong()) == 0))
          {
LABEL_26:
            if (v2 / Seconds > 0.0)
            {
              v35 = v2 / Seconds;
            }

            else
            {
              v35 = 0.0;
            }

            swift_beginAccess();
            v36 = swift_unknownObjectWeakLoadStrong();
            if (v36)
            {
              v37 = *(v36 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress);
              v38 = v36;
              v39 = v37;

              if (v37)
              {
                *&v40 = v35;
                [v39 setCurrentProgress:v40];
              }
            }

            v12 = v0;
            goto LABEL_33;
          }

          v24 = *&v13[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews];
          if (!(v24 >> 62))
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_17;
          }

LABEL_40:
          v41 = v13;
          v25 = sub_10077158C();
          v13 = v41;
LABEL_17:

          if (v25 >= 2)
          {
            swift_beginAccess();
            v26 = swift_unknownObjectWeakLoadStrong();
            if (!v26 || (v27 = v26[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isVoiceOverRunning], v26, (v27 & 1) == 0))
            {
              swift_beginAccess();
              v28 = swift_unknownObjectWeakLoadStrong();
              if (!v28 || (v29 = v28[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isReducedMotionEnabled], v28, (v29 & 1) == 0))
              {
                swift_beginAccess();
                v30 = swift_unknownObjectWeakLoadStrong();
                if (!v30 || (v31 = v30[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively], v30, (v31 & 1) == 0))
                {
                  swift_beginAccess();
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);

                    sub_10034A1E4(1u);
                  }
                }
              }
            }
          }

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_40;
      }

      v14 = sub_10077149C();
      goto LABEL_7;
    }
  }
}

void sub_10065FA28(uint64_t a1, uint64_t a2)
{
  v5 = sub_1007604EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100962960);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_100660860(v2 + v16, v19);
  if (v20)
  {
    sub_10000A570(v19, v18);
    sub_1006608D0(v19);
    sub_10000CF78(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem))
    {

      sub_10076274C();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_100265560(v12);
    sub_10000CD74(v18);
  }

  else
  {
    sub_1006608D0(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_10065FCA4(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_100660860(v3 + v10, v25);
  if (!v26)
  {
    return sub_1006608D0(v25);
  }

  sub_10000A570(v25, v24);
  sub_1006608D0(v25);
  sub_10000CF78(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v23 = a1;
  if (v11 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_10077149C();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v12 = sub_10077158C();
          goto LABEL_4;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v14 + 24) == a3)
      {

        a3 = *(v14 + 32);

        goto LABEL_18;
      }

      ++v13;
    }

    while (v15 != v12);
  }

  a3 = 0;
LABEL_18:
  v17 = *(v23 + v22);
  if (v17 >> 62)
  {
    v11 = sub_10077158C();
  }

  else
  {
    v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v18 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = sub_10077149C();
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v17 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (*(v19 + 24) == a2)
      {
        break;
      }

      ++v18;
      if (v20 == v11)
      {
        goto LABEL_31;
      }
    }

    v21 = *(v19 + 32);
  }

  else
  {
LABEL_31:

    v21 = 0;
  }

  sub_1002676A8(v3, v21);

  return sub_10000CD74(v24);
}

void sub_100660088(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3())
  {
    *(v3 + v5) = a3();
    v7 = sub_10076C03C();
    v16 = v7;
    v8 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
    v17 = v8;
    v9 = sub_10000DB7C(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = sub_10076C90C();
    sub_10000CD74(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_10000DB7C(v15);
        v11(v13, v10, v7);
        v14 = sub_10076C90C();
        sub_10000CD74(v15);
        if ((v14 & 1) == 0)
        {
          sub_100660768(0);
        }
      }

      else
      {
        sub_10065E9F4(0.0);
      }
    }
  }
}

uint64_t sub_100660204(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10075D7BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView()
{
  result = qword_100962920;
  if (!qword_100962920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100660428()
{
  result = sub_100766DDC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100660524(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_10034A1E4(a3);
    swift_unknownObjectRelease();
  }
}

id sub_1006606F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100660768(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer) = a1;
  v4 = sub_10076C03C();
  v7[3] = v4;
  v7[4] = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS);
  v5 = sub_10000DB7C(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = sub_10076C90C();
  sub_10000CD74(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_100660860(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094F168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006608D0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094F168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100660938()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100660970()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006609B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006609D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100660A10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100660A58()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_100766D9C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_100660BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v34 = sub_10076F9AC();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v32 = a1;
  v33 = &v31 - v19;
  v20 = *&v6[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label];
  v21 = sub_1006620E8(a1, a2);
  [v20 setAttributedText:v21];

  v22 = v6[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn];
  v6[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn] = a5;
  if (v22 != (a5 & 1))
  {
    sub_100661454();
  }

  v39 = &type metadata for String;
  v36 = a3;
  v37 = a4;
  memset(v35, 0, sizeof(v35));

  sub_10076F99C();
  sub_1000258C0(v35);
  sub_1000258C0(&v36);
  if (a2)
  {
    v23 = &type metadata for String;
    v24 = a2;
    v25 = v32;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v38 = 0;
  }

  v36 = v25;
  v37 = v24;
  v39 = v23;

  sub_10076F98C();
  v26 = *(v12 + 8);
  v27 = v14;
  v28 = v34;
  v26(v27, v34);
  sub_1000258C0(&v36);
  v39 = &type metadata for Bool;
  LOBYTE(v36) = a5 & 1;
  v29 = v33;
  sub_10076F98C();
  v26(v17, v28);
  sub_1000258C0(&v36);
  sub_100770B9C();
  v26(v29, v28);
  return [v6 setNeedsLayout];
}

char *sub_100660EB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076E3DC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label;
  if (qword_100941458 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A3190);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v18, v21, v20);
  (*(v22 + 56))(v18, 0, 1, v20);
  (*(v13 + 104))(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v19] = sub_1007626AC();
  v24 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage;
  *&v5[v24] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn] = 0;
  v25 = [objc_allocWithZone(UIGlassEffect) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_glassEffect] = v25;
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill] = v26;
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill];
  v30 = v27;
  v31 = v29;
  sub_10076E3CC();
  sub_100770C2C();

  v32 = [v30 contentView];
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v33 = [v30 contentView];
  [v33 addSubview:*&v27[v28]];

  v34 = [*&v27[v28] contentView];
  [v34 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label]];

  v35 = [*&v27[v28] contentView];
  v36 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage;
  [v35 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage]];

  sub_100661454();
  sub_10000A5D4(&unk_100945BF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100783DD0;
  *(v37 + 32) = sub_10076E4CC();
  *(v37 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v38 = v30;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v39 = *&v30[v36];
  v40 = [v38 traitCollection];

  v41 = sub_1006623E4();
  [v39 setImage:v41];

  sub_100016F40(0, &qword_100944E30);
  sub_10077074C();
  *(swift_allocObject() + 16) = ObjectType;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v38;
}

void sub_100661454()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn] == 1)
  {
    v13 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v13 = 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_glassEffect];
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      sub_100016F40(0, &qword_100942F10);
      v6 = v13;
      v7 = sub_100770EEC();

      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    [v3 setTintColor:v13];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill] setEffect:v3];
    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v1[v2] == 1)
  {
    v8 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10);
    v8 = sub_100770CFC();
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label];
  v10 = v8;
  [v9 setTextColor:v10];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage];
  v12 = 0.0;
  if (v1[v2])
  {
    v12 = 1.0;
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage] setAlpha:v12];
  [v11 setTintColor:v10];

  [v1 setNeedsDisplay];
  [v1 setNeedsLayout];
}

id sub_100661684(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage];
  v3 = [a1 traitCollection];
  v4 = sub_1006623E4();

  [v2 setImage:v4];

  return [a1 setNeedsLayout];
}

id sub_10066175C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076997C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "layoutSubviews", v9);
  v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label];
  v12 = [v53 attributedText];
  LODWORD(v52) = v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn];
  v13 = [v1 contentView];
  [v13 bounds];

  sub_100016F40(0, &qword_100942F00);
  v14 = qword_100941458;
  v51 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A3190);
  sub_100770B2C();
  v16 = sub_10076C04C();
  v55 = v16;
  v56 = sub_10004C7BC();
  v17 = sub_10000DB7C(v54);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_10076C90C();
  sub_10000CD74(v54);
  sub_10076993C();
  sub_10076994C();
  (*(v8 + 8))(v11, v7);
  sub_10000CF78(v54, v55);
  sub_10076D2BC();
  sub_100770AEC();
  (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v3);
  sub_100770AAC();
  v19 = v18;
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v22 = [v1 traitCollection];
  v23 = sub_1006623E4();

  if (LODWORD(v52))
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v19 + v26;
  sub_10000CD74(v54);

  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill];
  v29 = [v1 contentView];
  [v29 frame];

  v30 = v27;
  v31 = fmax(v21, 40.0);
  sub_100770A4C();
  [v28 setFrame:?];
  v52 = v30;
  v32 = sub_1006625D4(0.0);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v53;
  [v53 sizeThatFits:{v35, v37}];
  v51 = v40;
  v42 = v41;
  v58.origin.x = v32;
  v58.origin.y = v34;
  v58.size.width = v36;
  v58.size.height = v38;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v30;
  v59.size.height = v31;
  v44 = floor((CGRectGetHeight(v59) - v42) * 0.5);
  v45 = [v1 contentView];
  [v45 frame];

  v46 = *&v51;
  sub_100770A4C();
  [v39 setFrame:?];
  v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage];
  v48 = v52;
  [v47 sizeThatFits:{v52, v31}];
  v60.origin.x = MinX;
  v60.origin.y = v44;
  v60.size.width = v46;
  v60.size.height = v42;
  CGRectGetMaxX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v48;
  v61.size.height = v31;
  CGRectGetHeight(v61);
  v49 = [v1 contentView];
  [v49 frame];

  sub_100770A4C();
  return [v47 setFrame:?];
}

void sub_100661E30(void *a1)
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation);
    if (v4)
    {
      v8 = a1;
      v5 = v4;
      v6 = [v1 layer];
      v7 = sub_10076FF6C();
      [v6 addAnimation:v5 forKey:v7];
    }
  }
}

uint64_t sub_10066201C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A3190);
  v1 = sub_10000A61C(v0, qword_1009A3190);
  if (qword_100940EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006620E8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  sub_100016F40(0, &qword_100942F00);
  if (qword_100941458 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D3DC();
  sub_10000A61C(v2, qword_1009A3190);
  v3 = sub_100770B2C();
  v4 = [objc_opt_self() configurationWithFont:v3 scale:2];

  v5 = sub_10076FF6C();
  v6 = [objc_opt_self() _systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = objc_allocWithZone(NSMutableAttributedString);
    v8 = sub_10076FF6C();
    v9 = [v7 initWithString:v8];

    v10 = [objc_opt_self() textAttachmentWithImage:v6];
    v11 = [objc_opt_self() attributedStringWithAttachment:v10];

    [v9 appendAttributedString:v11];
    v12 = objc_allocWithZone(NSAttributedString);
    v13 = sub_10076FF6C();
    v14 = [v12 initWithString:v13];

    [v9 appendAttributedString:v14];
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = sub_10076FF6C();
    v17 = [v15 initWithString:v16];

    [v9 appendAttributedString:v17];
    v18 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v9];
  }

  else
  {
LABEL_6:
    v19 = objc_allocWithZone(NSAttributedString);
    v9 = sub_10076FF6C();
    v18 = [v19 initWithString:v9];
  }

  return v18;
}

id sub_1006623E4()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.xmark(_:), v0, v2);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940EE8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  sub_10000A61C(v5, qword_1009A1AB0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = sub_100770B3C();

  v8 = [objc_opt_self() configurationWithFont:v7 scale:-1];
  v9 = sub_10076046C();

  (*(v1 + 8))(v4, v0);
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

void sub_1006625F8()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label;
  if (qword_100941458 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A3190);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn) = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_10066288C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(sub_1007626BC());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel] = sub_1007626AC();
  type metadata accessor for HeaderButton();
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v10, qword_1009A0C40);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton] = sub_10076312C();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton];
  sub_1007641DC();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_10000A5D4(&unk_100945BF0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E3FC();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_100662DD4(uint64_t a1)
{
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10095C900);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel];
  sub_1007625CC();
  v20 = *(v8 + 56);
  sub_100389394(v19, v10);
  v28 = a1;
  sub_100389394(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_100389394(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_100664E30(&qword_10095C918, &type metadata accessor for FontUseCase);
      v24 = sub_10076FF1C();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10000CFBC(v19, &unk_100943250);
      v25(v16, v3);
      sub_10000CFBC(v10, &unk_100943250);
      v22 = v28;
      if (v24)
      {
        return sub_10000CFBC(v22, &unk_100943250);
      }

      goto LABEL_7;
    }

    sub_10000CFBC(v19, &unk_100943250);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10000CFBC(v10, &qword_10095C900);
    v22 = v28;
LABEL_7:
    sub_100389394(v22, v13);
    sub_1007625DC();
    [v27 setNeedsLayout];
    return sub_10000CFBC(v22, &unk_100943250);
  }

  sub_10000CFBC(v19, &unk_100943250);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10000CFBC(v10, &unk_100943250);
  v22 = v28;
  return sub_10000CFBC(v22, &unk_100943250);
}

uint64_t sub_1006631C0()
{
  v1 = sub_10076D1FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1001DFBC4(&v0[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  sub_10076422C();
  sub_100663AF4(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_10000CF78(v10, v10[3]);
  sub_10076DFCC();
  (*(v2 + 8))(v4, v1);
  sub_10000CD74(v10);
  return sub_100664DC0(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1)
{
  sub_100663AF4(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1, a1, v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076DFCC();
  return sub_10000CD74(v3);
}

double sub_100663490(void *a1)
{
  sub_1001DFBC4(v1 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_metrics, v8);
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton);
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel);
  v10 = &protocol witness table for UIView;
  v11 = v3;
  v12 = &protocol witness table for UIView;
  sub_100663AF4(v9, &protocol witness table for UIView, v3, &protocol witness table for UIView, v8, a1, v7);
  sub_10000CF78(v7, v7[3]);
  sub_10076D2AC();
  v5 = v4;
  sub_10000CD74(v7);
  sub_100664DC0(v8);
  return v5;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1)
{
  sub_100663AF4(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1, a1, v5);
  sub_10000CF78(v5, v5[3]);
  sub_10076D2AC();
  v3 = v2;
  sub_10000CD74(v5);
  return v3;
}

double sub_1006636E0(void *a1, double a2, double a3, uint64_t a4, NSString a5)
{
  v8 = [a1 traitCollection];
  if (qword_10093F988 != -1)
  {
    swift_once();
  }

  v9 = qword_10094C0F0;
  if (a5)
  {
    a5 = sub_10076FF6C();
  }

  [v9 setTitle:a5 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a2, a3}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_1006638B4(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void))
{
  v8 = *(a4 + 8);
  sub_1001DFBC4(a2, v13);
  v14 = a3;
  v15 = v8;
  v16 = a5;
  v17 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_100663AF4(a3, v8, a5, &protocol witness table for LayoutViewPlaceholder, v13, a1, v12);
  sub_10000CF78(v12, v12[3]);
  sub_10076D2AC();
  v10 = v9;
  sub_10000CD74(v12);
  sub_100664DC0(v13);
  return v10;
}

id sub_100663A44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100663AF4@<X0>(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v127 = a5;
  v125 = a4;
  v126 = a3;
  v119 = a2;
  v124 = a1;
  v128 = a7;
  v8 = sub_10076804C();
  v137 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076805C();
  v136 = *(v114 - 8);
  __chkstk_darwin(v114);
  v122 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = sub_10076802C();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076809C();
  v132 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_10076808C();
  v130 = *(v115 - 8);
  __chkstk_darwin(v115);
  v107 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10076807C();
  v133 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1007680BC();
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v95 - v17;
  v18 = sub_10076DB5C();
  v109 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10076DB6C();
  v129 = *(v108 - 1);
  __chkstk_darwin(v108);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076DB0C();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = sub_10077071C();

  if (v29)
  {
    sub_10000A5D4(&qword_1009426C0);
    v30 = *(sub_10076DB9C() - 8);
    v135 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100784500;
    v136 = v32;
    v137 = v32 + v31;
    v33 = v124;
    ObjectType = swift_getObjectType();
    v146 = v119;
    v144 = v33;
    *(&v142 + 1) = &type metadata for CGFloat;
    v143 = &protocol witness table for CGFloat;
    *&v141 = 0;
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    v112 = v24;
    v34 = *(v24 + 13);
    v123 = (v24 + 104);
    v134 = v34;
    v106 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v133) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v129;
    v132 = *(v129 + 104);
    v36 = v108;
    (v132)(v22);
    v138 = _swiftEmptyArrayStorage;
    v131 = sub_100664E30(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v130 = sub_10000A5D4(&unk_100963760);
    v124 = sub_100016EDC();
    sub_1007712CC();
    sub_10076DB8C();
    v122 = *(v109 + 8);
    v122(v20, v18);
    v121 = *(v35 + 8);
    v129 = v35 + 8;
    (v121)(v22, v36);
    v37 = *(v112 + 1);
    v112 += 8;
    v120 = v37;
    v38 = v18;
    v39 = v106;
    (v37)(v27, v106);
    sub_10000CFBC(v139, &unk_100943240);
    sub_10000CD74(&v141);
    sub_10000CD74(&v144);
    v40 = v126;
    ObjectType = swift_getObjectType();
    v146 = v125;
    v144 = v40;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    (v134)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v132)(v22, v133, v36);
    *&v139[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_1007712CC();
    sub_10076DB8C();
    v122(v20, v38);
    (v121)(v22, v36);
    (v120)(v27, v39);
    sub_10000CFBC(&v141, &unk_100943240);
    sub_10000CD74(&v144);
    v41 = sub_10076DBAC();
    v42 = v128;
    v128[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_10000DB7C(v42);
    return sub_10076DB7C();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v146 = &protocol witness table for CGFloat;
    v144 = 0;
    v44 = v130;
    v101 = *(v130 + 104);
    v129 = v130 + 104;
    v45 = v107;
    v46 = v115;
    v101(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v115);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = v110;
    *v110 = v47;
    v49 = v8;
    v50 = v132;
    v51 = *(v132 + 104);
    v109 = v132 + 104;
    v112 = v51;
    v52 = v116;
    (v51)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v116);
    sub_10076806C();
    v53 = *(v50 + 8);
    v132 = v50 + 8;
    v108 = v53;
    (v53)(v48, v52);
    v54 = *(v44 + 8);
    v130 = v44 + 8;
    v106 = v54;
    v54(v45, v46);
    *(&v142 + 1) = &type metadata for Double;
    v143 = &protocol witness table for Double;
    *&v141 = 0;
    v55 = v134;
    v56 = v134[13];
    v104 = (v134 + 13);
    v105 = v56;
    v57 = v117;
    v56(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v135);
    v58 = v136;
    v59 = v137;
    v60 = *(v137 + 104);
    v102 = v137 + 104;
    v103 = v60;
    v61 = v121;
    v96 = v49;
    v60(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v49);
    v62 = v122;
    sub_10076803C();
    v63 = *(v59 + 8);
    v137 = v59 + 8;
    v100 = v63;
    v63(v61, v49);
    v64 = v113;
    sub_1007680AC();
    v65 = *(v58 + 8);
    v136 = v58 + 8;
    v124 = v65;
    v65(v62, v114);
    v66 = v55[1];
    v134 = v55 + 1;
    v119 = v66;
    v66(v57, v135);
    v67 = *(v133 + 8);
    v133 += 8;
    v99 = v67;
    v68 = v64;
    v67(v64, v118);
    sub_10000CD74(&v141);
    sub_10000CD74(&v144);
    v69 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v70 = v115;
    v71 = v101;
    v101(v45, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v115);
    v72 = sub_10000A5D4(&qword_10095E5A8);
    v73 = swift_allocBox();
    v75 = v74;
    v76 = *(v72 + 48);
    v97 = v120[2];
    v98 = (v120 + 2);
    v97(v74, v131, v123);
    v71(v75 + v76, v69, v70);
    *v48 = v73;
    v77 = v116;
    (v112)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v116);
    sub_10076806C();
    (v108)(v48, v77);
    v106(v45, v70);
    v78 = v117;
    v79 = v135;
    v105(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v135);
    v80 = v121;
    v81 = v96;
    v103(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v96);
    v82 = v122;
    sub_10076803C();
    v100(v80, v81);
    v146 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v144 = 0;
    v83 = v111;
    sub_1007680AC();
    v124(v82, v114);
    v119(v78, v79);
    v99(v68, v118);
    sub_10000CD74(&v144);
    sub_10000A5D4(&qword_10095E5B0);
    v84 = v120;
    v85 = v120[9];
    v86 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_100784500;
    v88 = v87 + v86;
    v89 = v131;
    v90 = v123;
    v91 = v97;
    v97(v88, v131, v123);
    v91(v88 + v85, v83, v90);
    v92 = sub_1007680DC();
    v93 = v128;
    v128[3] = v92;
    v93[4] = sub_100664E30(&qword_10095E5B8, &type metadata accessor for HorizontalAlignmentLayout);
    v93[5] = sub_100664E30(&qword_10095E5C0, &type metadata accessor for HorizontalAlignmentLayout);
    sub_10000DB7C(v93);
    sub_1007680CC();
    v94 = v84[1];
    v94(v83, v90);
    return (v94)(v89, v90);
  }
}

__n128 sub_100664CD8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100664CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100664D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100664E30(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100664E78()
{
  v1 = sub_10076469C();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076C38C();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  sub_100770ACC();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell();
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    sub_10076338C();

    sub_10076C25C();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_100941288 != -1)
    {
      swift_once();
    }

    sub_10076C33C();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_1004593F8(v0 + v31, v14);
    v25 = v24;
    sub_10000CFBC(v14, &unk_1009434A0);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    sub_10076571C();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      sub_1007632FC();
      sub_10076777C();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

UIColor sub_1006653E4()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_100962A70 = result.super.isa;
  return result;
}

id sub_1006654C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_100946710);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_100941460 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_100962A70];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      sub_1007645DC();
      v22 = v25;
      sub_1007633BC();
      sub_10076F4AC();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      sub_100760C4C();
      sub_10076F64C();
      v23 = v20;
      sub_10076FC1C();
      sub_10075FA0C();

      sub_10000CFBC(v27, &unk_10094F720);
      sub_10000CD74(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100665918()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_100664E78();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_100102A30(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController()
{
  result = qword_100962AC8;
  if (!qword_100962AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100665E34()
{
  result = sub_10076341C();
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

void sub_100665F60(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_10066600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = sub_10076341C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_10000A5D4(&unk_100945BF0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100783DD0;
  *(v22 + 32) = sub_10076E59C();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  sub_10077061C();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

id sub_100666230()
{
  v1 = v0;
  v2 = sub_100761DAC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.8];
LABEL_5:
    v10 = v9;

    return v10;
  }

  if (v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.6];
    goto LABEL_5;
  }

  v12 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
  v13 = v7;
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 colorWithAlphaComponent:0.6];

  if (v13 != v12)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v15;
}

id sub_100666460(char a1)
{
  v2 = v1;
  v4 = sub_100761DAC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v9 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v11 = [objc_opt_self() whiteColor];
    v12 = v11;
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    v14 = [v11 colorWithAlphaComponent:v13];
  }

  else
  {
    v15 = v9;
    v16 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v17 = [objc_opt_self() blackColor];
    v18 = v17;
    v19 = 0.7;
    if (a1)
    {
      v19 = 1.0;
    }

    v14 = [v17 colorWithAlphaComponent:v19];

    if (v15 != v16)
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return v14;
}

id sub_100666660()
{
  v1 = v0;
  v2 = sub_100761DAC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.75];

    return v10;
  }

  else
  {
    v12 = v7;
    v13 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v14 = [objc_opt_self() blackColor];
    v15 = [v14 colorWithAlphaComponent:0.75];

    if (v12 != v13)
    {
      (*(v3 + 8))(v6, v2);
    }

    return v15;
  }
}

void sub_10066687C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_unknownObjectRetain();

    [v2 frame];
    swift_unknownObjectRetain();
    if (JUScreenClassGetMain() == 1)
    {
      if (qword_100941470 != -1)
      {
        swift_once();
      }

      v12 = qword_100962AF0;
    }

    else
    {
      if (qword_100941468 != -1)
      {
        swift_once();
      }

      v12 = qword_100962AD8;
    }

    v13 = sub_10000A61C(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_10076D36C();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    sub_10076BFBC();
    sub_10076BE1C();
    sub_10075FB8C();
    sub_10075FD2C();
    sub_100667A78(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
    swift_unknownObjectRelease();
  }
}

double sub_100666B40(double a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941470 != -1)
    {
      swift_once();
    }

    v13 = qword_100962AF0;
  }

  else
  {
    if (qword_100941468 != -1)
    {
      swift_once();
    }

    v13 = qword_100962AD8;
  }

  v14 = sub_10000A61C(v6, v13);
  (*(v7 + 16))(v9, v14, v6);
  (*(v7 + 32))(v12, v9, v6);
  sub_10076D36C();
  (*(v7 + 8))(v12, v6);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D9AC();
  sub_10000A61C(v15, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  (*(v3 + 8))(v5, v2);
  return a1;
}

uint64_t sub_100666E38()
{
  result = sub_100763FEC();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_100666E78()
{
  sub_10075FD2C();
  sub_100667A78(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_100666F0C(uint64_t a1)
{
  result = sub_100667A78(&qword_100962B08, type metadata accessor for EditorialStoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_100666FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_1007621EC();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a5 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = v13;
  swift_unknownObjectRelease();
  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  sub_10076402C();
  if (v15)
  {
    v16 = sub_10076FF6C();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *&v5[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  sub_10076401C();
  v18 = sub_10076FF6C();

  v41 = v17;
  [v17 setText:v18];

  v19 = *&v5[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
  sub_100763FFC();
  v40 = v14;
  if (v20)
  {
    v21 = sub_10076FF6C();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:{v21, v40}];

  sub_10076400C();
  v22 = (*(v9 + 88))(v12, v8);
  if (v22 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v12, v8);
    v23 = *(sub_10000A5D4(&qword_10094E098) + 48);
    v24 = sub_10076BE1C();

    v25 = sub_1007659CC();
    v26 = *(*(v25 - 8) + 8);
    v27 = v24;
    v26(v12 + v23, v25);
    if (!v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v22 != enum case for ShelfBackground.color(_:))
    {
      (*(v9 + 8))(v12, v8);
LABEL_21:
      if (qword_10093FB40 != -1)
      {
        swift_once();
      }

      v33 = qword_10099DC38;
      v24 = 0;
      goto LABEL_24;
    }

    (*(v9 + 96))(v12, v8);
    v24 = *v12;
    v28 = *(sub_10000A5D4(&unk_100950670) + 48);
    v29 = sub_1007659CC();
    v30 = *(*(v29 - 8) + 8);
    v27 = v24;
    v30(v12 + v28, v29);
  }

  v31 = v27;
  if (sub_100770DFC())
  {
    if (qword_10093FB40 != -1)
    {
      swift_once();
    }

    v32 = qword_10099DC38;
  }

  else
  {
    if (qword_10093FB30 != -1)
    {
      swift_once();
    }

    v32 = qword_10099DC28;
  }

  v33 = v32;

LABEL_24:
  [v40 setTextColor:v33];

  if (v24)
  {
    v34 = v24;
    if (sub_100770DFC())
    {
      if (qword_10093FB48 != -1)
      {
        swift_once();
      }

      v35 = qword_10099DC40;
    }

    else
    {
      if (qword_10093FB38 != -1)
      {
        swift_once();
      }

      v35 = qword_10099DC30;
    }

    v36 = v35;
  }

  else
  {
    if (qword_10093FB48 != -1)
    {
      swift_once();
    }

    v36 = qword_10099DC40;
  }

  [v41 setTextColor:v36];

  if (v24)
  {
    v37 = v24;
    if (sub_100770DFC())
    {
      if (qword_10093FB48 != -1)
      {
        swift_once();
      }

      v38 = qword_10099DC40;
    }

    else
    {
      if (qword_10093FB38 != -1)
      {
        swift_once();
      }

      v38 = qword_10099DC30;
    }

    v39 = v38;
  }

  else
  {
    if (qword_10093FB48 != -1)
    {
      swift_once();
    }

    v39 = qword_10099DC40;
    v37 = 0;
  }

  [v19 setTextColor:v39];

  [v6 setNeedsLayout];
}

id sub_100667640()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v12 = v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941470 != -1)
    {
      swift_once();
    }

    v13 = qword_100962AF0;
  }

  else
  {
    if (qword_100941468 != -1)
    {
      swift_once();
    }

    v13 = qword_100962AD8;
  }

  v14 = sub_10000A61C(v4, v13);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  sub_10076D36C();
  v16 = v15;
  (*(v5 + 8))(v10, v4);
  v17 = objc_opt_self();
  v18 = [v17 absoluteDimension:v12];
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D9AC();
  sub_10000A61C(v19, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v21 = v20;
  (*(v1 + 8))(v3, v0);
  v22 = [v17 absoluteDimension:round(v16) + v21];
  v23 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v22];

  v24 = [objc_opt_self() itemWithLayoutSize:v23];
  v25 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007841E0;
  *(v26 + 32) = v24;
  sub_10004B9FC();
  v27 = v24;
  isa = sub_1007701AC().super.isa;

  v29 = [v25 verticalGroupWithLayoutSize:v23 subitems:isa];

  return v29;
}

uint64_t sub_100667A78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100667AC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_artworkLoader] = v24;

  sub_100760C5C();

  sub_100760C0C();

  v9 = &v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = sub_10075F07C();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView());

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v13 = a3;
  v14 = sub_100215438(a3);

  *&v4[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_100767D5C();
  v16 = v15;
  sub_10076FC1C();
  v17 = v24;
  v18 = v16;
  sub_100767D2C();

  sub_10066B6D0(&qword_100962BC8, v19, type metadata accessor for AppEventDetailPageViewController);
  sub_10075F06C();
  v20 = [v18 view];

  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v21 setClipsToBounds:0];

  v22 = [v18 view];
  if (v22)
  {
    [v22 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100667FC4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10066B6D0(&qword_100942810, 255, type metadata accessor for VideoView);
  }

  sub_10066B6D0(&qword_100952AE0, 255, type metadata accessor for AppEventDetailPageView);
  sub_100767D3C();
}

void sub_10066827C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v14 = v15[1];
  sub_100767CDC();
  sub_10032A86C();
}

uint64_t sub_1006685BC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_100946A10);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_10075F2AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_10075F2BC();
  (*(v13 + 8))(v16, v12);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v19 + 8))(v7, v20);
    sub_10076369C();
    v17 = sub_1007636AC();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_10076368C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_10066898C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView();
    sub_10066B6D0(&unk_100942840, 255, type metadata accessor for VideoView);
    sub_100760BFC();
  }

  else
  {
    sub_100016F40(0, &qword_10094A280);
    sub_10032E104();
    sub_100760BFC();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10066B6D0(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v14 = v13;
  sub_100760BFC();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_10066B6D0(&qword_100942810, 255, type metadata accessor for VideoView);
  }

  sub_10066B6D0(&qword_100952AE0, 255, type metadata accessor for AppEventDetailPageView);
  sub_100767CFC();
}

uint64_t sub_100668E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

uint64_t sub_100669020()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_10066923C(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000CF78(&v7[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v15 = v16[1];
  a3(v14);
}

id sub_100669454()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_1005A5D54([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_10077070C();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006695D8(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_10077071C() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_10077071C();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_10075F05C();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_10077167C();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_10066987C()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_10075F2BC();
  (*(v2 + 8))(v4, v1);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v5 = v6[1];
  sub_100767CBC();
}

uint64_t sub_100669B74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  sub_10075F07C();
  sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter);
  sub_1007657FC();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10000CFBC(v12, &unk_1009434C0);
}

void sub_100669D2C()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  sub_10075F07C();
  sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_10066B820;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089EA40;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_100669F2C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = sub_10075F04C();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph;
    v8 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10000CFBC(v4, &unk_100943200);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_100263BF0(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

id sub_10066A154(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v79 = sub_10076361C();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v68 - v5;
  __chkstk_darwin(v6);
  v76 = &v68 - v7;
  v8 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v8 - 8);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v68 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v70 = &v68 - v13;
  v14 = sub_1007611EC();
  __chkstk_darwin(v14 - 8);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_10076121C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10076481C();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (sub_10077071C())
  {
    v27 = sub_1007706EC();
  }

  else
  {
    v27 = 0;
  }

  result = [v2 view];
  if (result)
  {
    v29 = result;
    [result bounds];

    v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader) = v30;

    v32 = sub_10075ED8C();
    v84 = v31;
    sub_10049ACC0(v32, v27 & 1, v31);

    if (sub_10075EDCC())
    {
      v33 = sub_10076B84C();
    }

    else
    {
      v33 = sub_10075EDDC();
    }

    *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork) = v33;

    if (sub_10075EDCC())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      sub_10076B84C();
      sub_10076BEFC();
      sub_10076D3AC();

      v34 = sub_10076D39C();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      sub_10076B7EC();
      sub_10076B82C();
      sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      v35 = v69;
      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      sub_10076B7CC();
      v36 = v70;
      sub_10076B85C();
      v37 = sub_10075DB7C();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v73;
      sub_10076B81C();
      v39 = v74;
      sub_10076B80C();
      type metadata accessor for VideoView();
      sub_10066B6D0(&qword_100942810, 255, type metadata accessor for VideoView);
      v40 = sub_100762EEC();
      sub_10000CFBC(v39, &unk_10094C030);
      sub_10000CFBC(v38, &unk_10094C030);
      sub_10000CFBC(v36, &unk_1009435D0);
      sub_10000CFBC(v85, &qword_100943310);
      sub_10032DD5C();
      swift_unknownObjectWeakAssign();
      sub_100328388();

      sub_10076B84C();
      v41 = sub_10076BE1C();

      sub_100327EFC(v41);

      (*(v71 + 8))(v35, v72);
    }

    else
    {
      sub_10032DD5C();
      swift_unknownObjectWeakAssign();
      sub_100328388();
    }

    v42 = (v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock);
    v44 = v82;
    *v42 = sub_10066B828;
    v42[1] = v44;
    swift_retain_n();
    sub_1000167E0(v43);

    [*(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v45 = (v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
    v46 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = v81;
    *v45 = sub_10066B750;
    v45[1] = v47;

    sub_1000167E0(v46);
    sub_100327714();
    v48 = sub_10075ED9C();
    if (v48)
    {
      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = v84;
      *(v50 + 24) = v49;

      sub_10032DA50(sub_10066B7B4, v50);
    }

    else
    {
      sub_10032DA50(0, 0);
    }

    v51 = (v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
    v52 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
    v53 = v80;
    *v51 = sub_10066B76C;
    v51[1] = v53;

    sub_1000167E0(v52);
    sub_1003278B4();
    v54 = v76;
    sub_10075EDAC();
    v55 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v56 = v75;
    v57 = v77;
    v58 = v79;
    (*(v75 + 16))(v77, v25 + v55, v79);
    swift_beginAccess();
    (*(v56 + 24))(v25 + v55, v54, v58);
    swift_endAccess();
    sub_1003280A4();
    v59 = *(v56 + 8);
    v59(v57, v58);
    v59(v54, v58);
    v60 = v78;
    sub_10075EDAC();
    v61 = sub_1007635FC();
    v59(v60, v58);
    v62 = *(*(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    if (v61 == 2)
    {
      v63 = objc_opt_self();
      v64 = v62;
      v65 = [v63 whiteColor];
    }

    else
    {
      sub_100016F40(0, &qword_100942F10);
      v66 = v62;
      v65 = sub_100770E1C();
    }

    v67 = v65;
    [v62 setTintColor:v65];

    *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode) = sub_10075EDBC() & 1;
    sub_100326E58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10066AD0C()
{
  v0 = sub_10075F2AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    sub_10075F07C();
    sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter);
    sub_1007657FC();
    (*(v1 + 8))(v3, v0);
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10066AE9C()
{
  v0 = sub_10075F2AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    sub_10075F07C();
    sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter);
    sub_1007657FC();
    (*(v1 + 8))(v3, v0);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    aBlock[4] = sub_10066B7BC;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_10089E9F0;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_10066B0C4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph;
  v7 = sub_10000A5D4(&unk_1009428E0);

  sub_10076F5AC();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200);
  }

  v10 = *(v1 + v6);

  sub_100263BF0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_10066B520()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_10066B588()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_10066B5C8(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing) = a1;
  return sub_100327F98();
}

uint64_t sub_10066B610()
{
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();
}

uint64_t sub_10066B6D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10066B718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10066B774()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10066B7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10066B7DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10066B858()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    v8 = 0.0;
    if (v7 > 1.0)
    {
      v8 = 16.0;
    }

    return [v5 _setCornerRadius:v8];
  }

  return result;
}

uint64_t sub_10066B9F0()
{
  sub_10000A5D4(&qword_100949720);
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100783C60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.productTopLockup(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.preorderDisclaimer(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_10017A63C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1009A31A8 = v7;
  return result;
}

void *sub_10066BB64(void *a1, int *a2)
{
  v5 = sub_100382B5C(a1, a2);
  v6 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v7 = sub_100670320(a1, a2);
  if (v7)
  {
    v8 = v7;
    sub_10077019C();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v6 = v18;
  }

  v9 = sub_10066E1CC(a1);
  if (v9)
  {
    v10 = v9;
    sub_10077019C();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v6 = v18;
  }

  v11 = sub_100671728(a1);
  if (v11)
  {
    v12 = v11;
    sub_10077019C();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v6 = v18;
  }

  sub_100016F40(0, &qword_100948C70);

  v13 = sub_10077020C();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = __chkstk_darwin(v13).n128_u64[0];
  v14 = sub_100672E9C(sub_100671CEC, v16, v5);

  v17 = v14;
  sub_1000F9964(v6);
  return v17;
}

void sub_10066BD98(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  if (sub_100671D0C(*a1, a2))
  {
    if ([v6 alignment] == 1 && a4 > 0.0)
    {
      v7 = [v6 layoutSize];
      v8 = [v6 elementKind];
      if (!v8)
      {
        sub_10076FF9C();
        v8 = sub_10076FF6C();
      }

      v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:objc_msgSend(v6 absoluteOffset:{"alignment"), 0.0, -a4}];

      *a3 = v9;
    }

    else
    {
      *a3 = v6;
      v10 = v6;
    }
  }

  else
  {
    *a3 = 0;
  }
}

double sub_10066BED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_1007708EC() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000A5D4(&qword_100942C18);
    a5[4] = sub_100071820(&qword_100949980, &qword_100942C18);
    sub_10000DB7C(a5);

    sub_1007708FC();
LABEL_13:
    sub_10076A3BC();
    return result;
  }

  v34 = a3;
  v14 = sub_10077167C();

  if (v14)
  {
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000023 && 0x80000001007F4550 == a2 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000001007F4580 == a2 || (sub_10077167C() & 1) != 0)
  {
    a5[3] = sub_10000A5D4(&qword_100962E58);
    a5[4] = sub_100071820(&qword_100962E60, &qword_100962E58);
    v36 = sub_10000DB7C(a5);
    type metadata accessor for PlatformSelectorView();

    sub_1007708FC();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v15 = v9;
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v15);
    goto LABEL_13;
  }

  type metadata accessor for InteractiveProductReviewsShelfHeaderView();
  if (sub_1007708EC() == a1 && v19 == a2)
  {

LABEL_18:
    a5[3] = sub_10000A5D4(&qword_100962E48);
    a5[4] = sub_100071820(&qword_100962E50, &qword_100962E48);
    v36 = sub_10000DB7C(a5);

    sub_1007708FC();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v21 = v9;
    v22 = v10;
    v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v24 = swift_allocObject();
    (*(v22 + 32))(v24 + v23, v12, v21);
    goto LABEL_13;
  }

  v20 = sub_10077167C();

  if (v20)
  {
    goto LABEL_18;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007708EC() == a1 && v25 == a2)
  {

LABEL_23:
    a5[3] = sub_10000A5D4(&qword_100949968);
    a5[4] = sub_100071820(&unk_100949970, &qword_100949968);
    v36 = sub_10000DB7C(a5);

    sub_1007708FC();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v27 = v9;
    v28 = v10;
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v12, v27);
    goto LABEL_13;
  }

  v26 = sub_10077167C();

  if (v26)
  {
    goto LABEL_23;
  }

  v31 = v34;
  v32 = v35;

  return sub_10037E460(a1, a2, v31, v32, a5);
}

void *sub_10066C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_10076469C();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076B66C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_100766B9C();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v36 = sub_100383578(a1, a2, v37);
  v30 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v12 + 8))(v14, v11);
  if ((*(v8 + 88))(v10, v7) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    (*(v8 + 8))(v10, v7);
    return v36;
  }

  (*(v8 + 96))(v10, v7);
  v18 = v35;
  (*(v35 + 32))(v17, v10, v15);
  if ((sub_100766B7C() & 1) == 0)
  {
    (*(v18 + 8))(v17, v15);
    return v36;
  }

  v20 = v31;
  v19 = v32;
  v21 = v33;
  (*(v32 + 16))(v31, v30, v33);
  type metadata accessor for InteractiveProductReviewsShelfScrollObserver();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v22 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  (*(v19 + 32))(v22 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext, v20, v21);
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_objectGraph) = v37;

  v24 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_10049E6FC(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_10049E6FC((v25 > 1), v26 + 1, 1, v24);
  }

  (*(v18 + 8))(v17, v15);
  v27 = sub_1006722B0(&qword_100962E40, type metadata accessor for InteractiveProductReviewsShelfScrollObserver);
  v24[2] = v26 + 1;
  v28 = &v24[2 * v26];
  v28[4] = v22;
  v28[5] = v27;
  return v24;
}

uint64_t sub_10066C9A0(uint64_t a1)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100763FAC();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_1006359A8();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10066CBC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v160 = a1;
  v144 = sub_10076F9AC();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = &v126 - v8;
  __chkstk_darwin(v9);
  v142 = &v126 - v10;
  v147 = sub_10076C38C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10076B5BC();
  v159 = *(v152 - 8);
  __chkstk_darwin(v152);
  v136 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v151);
  v155 = &v126 - v13;
  v14 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v14 - 8);
  v150 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v148 = &v126 - v17;
  __chkstk_darwin(v18);
  v157 = &v126 - v19;
  v20 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v20 - 8);
  v138 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v126 - v23;
  __chkstk_darwin(v24);
  v154 = &v126 - v25;
  v26 = sub_10076B66C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_100946720);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v126 - v34;
  v36 = sub_1007658FC();
  v156 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a5;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v39 = *(v31 + 8);
  v39(v35, v30);
  if ((*(v27 + 88))(v29, v26) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    return (*(v27 + 8))(v29, v26);
  }

  v137 = v39;
  (*(v27 + 96))(v29, v26);
  (*(v156 + 32))(v38, v29, v36);
  v40 = sub_1007658EC();
  v41 = sub_1007658AC();
  v42 = sub_1007658BC();
  v44 = v43;
  v132 = sub_1007658DC();
  v131 = v45;
  v127 = sub_10000A5D4(&unk_100942870);
  v46 = swift_allocObject();
  v126 = xmmword_1007841E0;
  *(v46 + 16) = xmmword_1007841E0;
  *(v46 + 32) = v40;
  v139 = v40;

  v135 = v41;
  v128 = sub_1000CD2A0(v41, v46);

  v47 = v148;
  v48 = v150;
  sub_10076463C();
  sub_10000CFBC(v47, &qword_1009499A0);
  v49 = v48;
  v50 = v157;
  sub_10002AB4C(v49, v157);
  v51 = (*(v31 + 48))(v50, 1, v30);
  v130 = v36;
  v129 = v38;
  v134 = v42;
  v133 = v44;
  if (v51 == 1)
  {
    sub_10000CFBC(v157, &qword_1009499A0);
    v52 = 1;
    v53 = v154;
  }

  else
  {
    swift_getKeyPath();
    v53 = v154;
    v55 = v157;
    sub_10076F49C();

    v137(v55, v30);
    v52 = 0;
  }

  v56 = *(v159 + 7);
  v57 = v152;
  v56(v53, v52, 1, v152);
  v58 = v149;
  sub_10076468C();
  swift_getKeyPath();
  v59 = v153;
  sub_10076F49C();
  v60 = v59;

  v61 = v30;
  v62 = v57;
  v137(v58, v61);
  v56(v59, 0, 1, v57);
  v63 = *(v151 + 48);
  v64 = v155;
  sub_10002ABBC(v53, v155);
  sub_10002ABBC(v59, v64 + v63);
  v65 = *(v159 + 6);
  v66 = v65(v64, 1, v62);
  v67 = v135;
  v68 = v135 >> 62;
  if (v66 == 1)
  {
    sub_10000CFBC(v60, &unk_1009568A0);
    v69 = v155;
    sub_10000CFBC(v53, &unk_1009568A0);
    v70 = v65(v69 + v63, 1, v62);
    v71 = v139;
    if (v70 == 1)
    {
      sub_10000CFBC(v69, &unk_1009568A0);
LABEL_22:
      LODWORD(v77) = 0;
      v76 = v147;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v72 = v138;
  sub_10002ABBC(v64, v138);
  if (v65(v64 + v63, 1, v62) == 1)
  {
    sub_10000CFBC(v153, &unk_1009568A0);
    v69 = v155;
    sub_10000CFBC(v154, &unk_1009568A0);
    (*(v159 + 1))(v72, v62);
    v71 = v139;
LABEL_11:
    sub_10000CFBC(v69, &qword_100942C28);
    goto LABEL_12;
  }

  v78 = v159;
  v79 = v64 + v63;
  v80 = v136;
  (*(v159 + 4))(v136, v79, v62);
  sub_1006722B0(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v81 = v64;
  v82 = sub_10076FF1C();
  v83 = *(v78 + 1);
  v83(v80, v62);
  sub_10000CFBC(v153, &unk_1009568A0);
  sub_10000CFBC(v154, &unk_1009568A0);
  v83(v72, v62);
  sub_10000CFBC(v81, &unk_1009568A0);
  v71 = v139;
  if (v82)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (!v68)
  {
    result = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    goto LABEL_25;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  v73 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v67 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v67 + 8 * v73 + 32);

      *&v162 = v71;
      if (v74)
      {
        goto LABEL_19;
      }

LABEL_25:

      v76 = v147;
      goto LABEL_26;
    }

    __break(1u);
    return result;
  }

  v74 = sub_10077149C();
  *&v162 = v71;
  if (!v74)
  {
    goto LABEL_25;
  }

LABEL_19:
  *&v161[0] = v74;
  sub_100760E9C();
  sub_1006722B0(&qword_100947630, &type metadata accessor for MediaPlatform);
  v75 = sub_10076FF1C();

  v76 = v147;
  if ((v75 & 1) == 0)
  {
LABEL_26:
    LODWORD(v77) = v128 ^ 1;
    goto LABEL_27;
  }

  LODWORD(v77) = 0;
LABEL_27:
  v84 = v145;
  sub_10076460C();
  sub_10076C24C();
  v86 = v85;
  (*(v146 + 8))(v84, v76);
  v87 = sub_10076461C();
  v88 = type metadata accessor for SnapshotPageTraitEnvironment();
  v89 = objc_allocWithZone(v88);
  v90 = &v89[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v90 = v86;
  *(v90 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v89[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v87;
  v164.receiver = v89;
  v164.super_class = v88;
  v91 = objc_msgSendSuper2(&v164, "init");
  if (v77)
  {
    v92 = 0;
    v93 = v134;
    v94 = v133;
  }

  else
  {
    v94 = v133;
    if (v68)
    {
      v95 = sub_10077158C();
    }

    else
    {
      v95 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v134;
    if (v95 <= 1)
    {
      v92 = 0;
    }

    else
    {

      v67 = swift_allocObject();
      *(v67 + 16) = v126;
      *(v67 + 32) = v71;

      v92 = 1;
    }
  }

  v96 = sub_10050A204(v67);

  v97 = v92 == 0;
  if (v92)
  {
    v98 = v93;
  }

  else
  {
    v98 = v132;
  }

  if (v97)
  {
    v99 = v131;
  }

  else
  {
    v99 = v94;
  }

  v100 = &v160[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text];
  *v100 = v98;
  v100[1] = v99;

  *&v162 = _swiftEmptyArrayStorage;
  v101 = *(v96 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = (v96 + 56);
    v154 = v101 - 1;
    v158 = v91;
    v159 = _swiftEmptyArrayStorage;
    LODWORD(v157) = v77;
    v155 = v96 + 56;
    while (1)
    {
      v91 = (v103 + 32 * v102);
      v77 = v102;
      while (1)
      {
        if (v77 >= *(v96 + 2))
        {
          __break(1u);
          goto LABEL_68;
        }

        v104 = sub_10076FF6C();
        v105 = [objc_opt_self() _systemImageNamed:v104];

        if (v105)
        {
          break;
        }

LABEL_44:
        ++v77;
        v91 += 32;
        if (v101 == v77)
        {
          v91 = v158;
          LOBYTE(v77) = v157;
          goto LABEL_57;
        }
      }

      if (qword_100940758 != -1)
      {
        swift_once();
      }

      v106 = [v105 imageWithTintColor:qword_1009A0618];

      if (!v106)
      {
        goto LABEL_44;
      }

      sub_10077019C();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v102 = v77 + 1;
      sub_10077025C();
      v159 = v162;
      v103 = v155;
      v97 = v154 == v77;
      v91 = v158;
      LOBYTE(v77) = v157;
      if (v97)
      {
        goto LABEL_57;
      }
    }
  }

  v159 = _swiftEmptyArrayStorage;
LABEL_57:
  v107 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images;
  v108 = v160;
  *&v160[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images] = v159;

  v109 = *&v108[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView];
  if (v77)
  {
    if (qword_100940760 != -1)
    {
      swift_once();
    }

    v110 = qword_10095B420;
  }

  else
  {
    v110 = 0;
  }

  [v109 setImage:v110];

  v111 = *&v160[v107];
  if (v111)
  {
    if (v111 >> 62)
    {
LABEL_68:
      v112 = sub_10077158C();
    }

    else
    {
      v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v112 = 0;
  }

  v113 = v160;
  *&v160[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_numberOfBadges] = v112;
  *&v113[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits] = v91;
  swift_unknownObjectRelease();
  v159 = v91;
  sub_100508D8C();
  [v113 setNeedsLayout];
  v162 = 0u;
  v163 = 0u;
  memset(v161, 0, sizeof(v161));
  v114 = v140;
  sub_10076F91C();
  sub_10000CFBC(v161, &unk_1009434C0);
  sub_10000CFBC(&v162, &unk_1009434C0);
  *&v162 = v96;
  *(&v162 + 1) = sub_100509AE4;
  *&v163 = 0;

  sub_10000A5D4(&qword_100947748);
  sub_1000D06A0();
  v115 = sub_10076FEFC();
  v117 = v116;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v115;
  *(&v162 + 1) = v117;
  v118 = v141;
  sub_10076F98C();
  v119 = *(v143 + 8);
  v120 = v114;
  v121 = v144;
  v119(v120, v144);
  sub_10000CFBC(&v162, &unk_1009434C0);
  *&v162 = v96;
  *(&v162 + 1) = sub_100509AF0;
  *&v163 = 0;
  v122 = sub_10076FEFC();
  v124 = v123;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v122;
  *(&v162 + 1) = v124;
  v125 = v142;
  sub_10076F98C();
  v119(v118, v121);
  sub_10000CFBC(&v162, &unk_1009434C0);
  sub_100770B9C();

  v119(v125, v121);
  return (*(v156 + 8))(v129, v130);
}

uint64_t sub_10066DED0(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016F40(0, &qword_100942F00);
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  sub_10000A61C(v8, qword_1009A1090);
  v9 = [a2 traitCollection];
  v10 = sub_100770B3C();

  v17[1] = sub_100016F40(0, &qword_1009544A0);

  v17[0] = [a2 traitCollection];
  if (qword_100940768 != -1)
  {
    swift_once();
  }

  v11 = sub_10076892C();
  sub_10000A61C(v11, qword_10095B428);
  sub_10076891C();
  sub_10000CF78(v18, v18[3]);
  sub_1000FF02C();
  sub_10076D40C();
  (*(v4 + 8))(v6, v3);
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B10);
  v15 = sub_10077078C();

  sub_10000CD74(v18);
  return v15;
}

uint64_t sub_10066E1CC(void *a1)
{
  v214 = sub_10076892C();
  v186 = *(v214 - 8);
  __chkstk_darwin(v214);
  v199 = v171 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_10076894C();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_10076771C();
  v197 = *(v184 - 8);
  __chkstk_darwin(v184);
  v185 = v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v196 = v171 - v6;
  v201 = sub_100762FFC();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v195 = v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v198 = v171 - v9;
  __chkstk_darwin(v10);
  v194 = v171 - v11;
  v193 = sub_10077164C();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_10076C38C();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1007608DC();
  v215 = *(v217 - 8);
  __chkstk_darwin(v217);
  v187 = v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v216 = v171 - v16;
  v213 = sub_10076B5BC();
  v221 = *(v213 - 1);
  __chkstk_darwin(v213);
  v177 = v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v209);
  v212 = v171 - v18;
  v19 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v19 - 8);
  v207 = v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v205 = v171 - v22;
  __chkstk_darwin(v23);
  v208 = v171 - v24;
  v25 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v25 - 8);
  v179 = v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v210 = v171 - v28;
  __chkstk_darwin(v29);
  v211 = v171 - v30;
  v31 = sub_10076B66C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000A5D4(&unk_100946720);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v206 = v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v171 - v39;
  v219 = sub_1007658FC();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v42 = v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v43 = *(v36 + 8);
  v43(v40, v35);
  if ((*(v32 + 88))(v34, v31) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v32 + 8))(v34, v31);
    return 0;
  }

  v178 = v43;
  (*(v32 + 96))(v34, v31);
  (*(v218 + 32))(v42, v34, v219);
  v44 = sub_1007658EC();
  v45 = sub_1007658AC();
  v181 = v45;
  v173 = sub_1007658BC();
  v176 = v46;
  v183 = v42;
  v175 = sub_1007658DC();
  v180 = v47;
  v171[1] = sub_10000A5D4(&unk_100942870);
  v48 = swift_allocObject();
  v172 = xmmword_1007841E0;
  *(v48 + 16) = xmmword_1007841E0;
  *(v48 + 32) = v44;
  v182 = v44;

  v174 = sub_1000CD2A0(v45, v48);

  v49 = v205;
  v50 = v207;
  sub_10076463C();
  sub_10000CFBC(v49, &qword_1009499A0);
  v51 = v208;
  sub_10002AB4C(v50, v208);
  if ((*(v36 + 48))(v51, 1, v35) == 1)
  {
    sub_10000CFBC(v51, &qword_1009499A0);
    v52 = 1;
    v53 = v211;
  }

  else
  {
    swift_getKeyPath();
    v53 = v211;
    sub_10076F49C();

    v178(v51, v35);
    v52 = 0;
  }

  v55 = v221[7];
  v56 = v213;
  v55(v53, v52, 1, v213);
  v57 = v206;
  sub_10076468C();
  swift_getKeyPath();
  v58 = v210;
  sub_10076F49C();

  v59 = v35;
  v60 = v58;
  v178(v57, v59);
  v55(v58, 0, 1, v56);
  v61 = *(v209 + 48);
  v62 = v212;
  sub_10002ABBC(v53, v212);
  sub_10002ABBC(v58, v62 + v61);
  v63 = v221[6];
  if (v63(v62, 1, v56) == 1)
  {
    sub_10000CFBC(v60, &unk_1009568A0);
    sub_10000CFBC(v53, &unk_1009568A0);
    if (v63(v62 + v61, 1, v56) == 1)
    {
      sub_10000CFBC(v62, &unk_1009568A0);
LABEL_23:
      v76 = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v64 = v179;
  sub_10002ABBC(v62, v179);
  if (v63(v62 + v61, 1, v56) == 1)
  {
    sub_10000CFBC(v60, &unk_1009568A0);
    sub_10000CFBC(v53, &unk_1009568A0);
    (v221[1])(v64, v56);
LABEL_11:
    sub_10000CFBC(v62, &qword_100942C28);
    v65 = v181;
    goto LABEL_12;
  }

  v71 = v221;
  v72 = v62 + v61;
  v73 = v177;
  (v221[4])(v177, v72, v56);
  sub_1006722B0(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v74 = sub_10076FF1C();
  v75 = v71[1];
  v75(v73, v56);
  sub_10000CFBC(v60, &unk_1009568A0);
  sub_10000CFBC(v53, &unk_1009568A0);
  v75(v64, v56);
  sub_10000CFBC(v62, &unk_1009568A0);
  v65 = v181;
  if (v74)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v65 >> 62)
  {
    v66 = sub_10077158C();
  }

  else
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v182;
  if (!v66)
  {

    v226[0] = v67;
    goto LABEL_25;
  }

  v68 = v66 - 1;
  if (__OFSUB__(v66, 1))
  {
    __break(1u);
  }

  else if ((v65 & 0xC000000000000001) == 0)
  {
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v68 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v65 + 8 * v68 + 32);

      v226[0] = v67;
      if (v69)
      {
        goto LABEL_20;
      }

LABEL_25:

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_71;
  }

  v69 = sub_10077149C();
  v226[0] = v67;
  if (!v69)
  {
    goto LABEL_25;
  }

LABEL_20:
  v223 = v69;
  sub_100760E9C();
  sub_1006722B0(&qword_100947630, &type metadata accessor for MediaPlatform);
  v70 = sub_10076FF1C();

  if (v70)
  {
    goto LABEL_23;
  }

LABEL_26:
  v76 = v174 ^ 1;
LABEL_27:
  v77 = v216;
  sub_1007658CC();
  v78 = v215;
  v79 = v187;
  v80 = v77;
  v81 = v217;
  (*(v215 + 16))(v187, v80, v217);
  v82 = (*(v78 + 88))(v79, v81);
  if (v82 == enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v83 = v188;
    sub_10076460C();
    sub_10076C24C();
    v85 = v84;
    v86 = *(v189 + 8);
    v87 = v190;
    v86(v83, v190);
    v88 = sub_10076461C();
    v89 = type metadata accessor for SnapshotPageTraitEnvironment();
    v90 = objc_allocWithZone(v89);
    v91 = &v90[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v91 = v85;
    *(v91 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v90[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v88;
    v222.receiver = v90;
    v222.super_class = v89;
    v221 = objc_msgSendSuper2(&v222, "init");
    sub_10076464C();
    sub_10076C8BC();
    sub_10076C2FC();
    v86(v83, v87);
    if ((v76 & 1) == 0)
    {
      v68 = v185;
      if (v181 >> 62)
      {
        v103 = sub_10077158C();
      }

      else
      {
        v103 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v103 > 1)
      {

        sub_100760E9C();
        v104 = swift_allocObject();
        *(v104 + 16) = v172;
        *(v104 + 32) = v182;

        v105 = sub_100760E5C();
        v175 = v173;
LABEL_41:

        if (qword_100940768 != -1)
        {
          swift_once();
        }

        v106 = sub_10000A61C(v214, qword_10095B428);
        sub_10076891C();
        sub_10000CF78(v226, v227);
        v107 = v191;
        sub_1000FF02C();
        sub_10076D40C();
        v109 = v108;
        (*(v192 + 8))(v107, v193);
        sub_10050A104(v105, v109);
        sub_10000CD74(v226);
        if (v105 >> 62)
        {
          sub_10077158C();
        }

        v110 = v186;
        v111 = v184;

        v112 = v221;
        sub_100762FEC();
        v113 = sub_10066DED0(v105, v112);

        v220 = v113;
        v114 = sub_1007688DC();
        if (qword_100940B88 != -1)
        {
          swift_once();
        }

        v115 = sub_10076D3DC();
        v116 = sub_10000A61C(v115, qword_1009A1090);
        v117 = *(v115 - 8);
        v118 = v196;
        (*(v117 + 16))(v196, v116, v115);
        (*(v117 + 56))(v118, 0, 1, v115);
        (*(v197 + 104))(v68, enum case for DirectionalTextAlignment.none(_:), v111);
        v119 = sub_1007626BC();
        v120 = objc_allocWithZone(v119);
        v121 = sub_1007626AC();
        [v121 setAttributedText:v114];
        v213 = v114;
        if (qword_100940760 != -1)
        {
          swift_once();
        }

        [qword_10095B420 size];
        v122 = sub_10076DDDC();
        swift_allocObject();
        v123 = sub_10076DDBC();
        (*(v110 + 16))(v199, v106, v214);
        v124 = v200;
        v125 = v194;
        v126 = v201;
        (*(v200 + 16))(v198, v194, v201);
        v227 = v119;
        v228 = &protocol witness table for UILabel;
        v226[0] = v121;
        v224 = v122;
        v225 = &protocol witness table for LayoutViewPlaceholder;
        v223 = v123;
        v127 = v121;

        v128 = v202;
        sub_10076893C();
        v129 = v221;
        [v221 pageMarginInsets];
        sub_100770ACC();
        sub_1006722B0(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout);
        v130 = v204;
        sub_10076D2AC();
        sub_100770AEC();
        v132 = v131;

        (*(v203 + 8))(v128, v130);
        (*(v124 + 8))(v125, v126);

        v133 = objc_opt_self();
        v134 = [v133 fractionalWidthDimension:1.0];
        v135 = [v133 absoluteDimension:v132];
        v136 = [objc_opt_self() sizeWithWidthDimension:v134 heightDimension:v135];

        v137 = sub_10076FF6C();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:1];
LABEL_64:
        v170 = v138;

        (*(v215 + 8))(v216, v217);
        (*(v218 + 8))(v183, v219);
        return v170;
      }

LABEL_40:
      sub_100760E9C();
      v105 = sub_100760E5C();
      goto LABEL_41;
    }

    v68 = v185;
    if (qword_100940760 == -1)
    {
LABEL_30:
      [qword_10095B420 size];
      goto LABEL_40;
    }

LABEL_71:
    swift_once();
    goto LABEL_30;
  }

  if (v82 == enum case for ProductMedia.DescriptionPlacement.bottom(_:))
  {
    v92 = v188;
    sub_10076460C();
    sub_10076C24C();
    v94 = v93;
    v95 = *(v189 + 8);
    v96 = v190;
    v95(v92, v190);
    v97 = sub_10076461C();
    v98 = type metadata accessor for SnapshotPageTraitEnvironment();
    v99 = objc_allocWithZone(v98);
    v100 = &v99[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v100 = v94;
    *(v100 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v99[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v97;
    v229.receiver = v99;
    v229.super_class = v98;
    v101 = objc_msgSendSuper2(&v229, "init");
    sub_10076464C();
    sub_10076C8BC();
    sub_10076C2FC();
    v95(v92, v96);
    if (v76)
    {
      v102 = v185;
      if (qword_100940760 != -1)
      {
        swift_once();
      }

      [qword_10095B420 size];
    }

    else
    {
      v102 = v185;
      if (v181 >> 62)
      {
        v139 = sub_10077158C();
      }

      else
      {
        v139 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v139 > 1)
      {

        sub_100760E9C();
        v140 = swift_allocObject();
        *(v140 + 16) = v172;
        *(v140 + 32) = v182;

        v141 = sub_100760E5C();
        v175 = v173;
LABEL_55:

        if (qword_100940768 != -1)
        {
          swift_once();
        }

        v142 = sub_10000A61C(v214, qword_10095B428);
        sub_10076891C();
        sub_10000CF78(v226, v227);
        v143 = v191;
        sub_1000FF02C();
        sub_10076D40C();
        v145 = v144;
        (*(v192 + 8))(v143, v193);
        sub_10050A104(v141, v145);
        sub_10000CD74(v226);
        if (v141 >> 62)
        {
          sub_10077158C();
        }

        v146 = v186;
        v147 = v184;

        sub_100762FEC();
        v148 = sub_10066DED0(v141, v101);

        v213 = v148;
        v221 = sub_1007688DC();
        if (qword_100940B88 != -1)
        {
          swift_once();
        }

        v220 = v101;
        v149 = sub_10076D3DC();
        v150 = sub_10000A61C(v149, qword_1009A1090);
        v151 = *(v149 - 8);
        v152 = v196;
        (*(v151 + 16))(v196, v150, v149);
        (*(v151 + 56))(v152, 0, 1, v149);
        (*(v197 + 104))(v102, enum case for DirectionalTextAlignment.none(_:), v147);
        v153 = sub_1007626BC();
        v154 = objc_allocWithZone(v153);
        v155 = sub_1007626AC();
        [v155 setAttributedText:v221];
        if (qword_100940760 != -1)
        {
          swift_once();
        }

        [qword_10095B420 size];
        v156 = sub_10076DDDC();
        swift_allocObject();
        v157 = sub_10076DDBC();
        (*(v146 + 16))(v199, v142, v214);
        v158 = v200;
        v159 = v195;
        v160 = v201;
        (*(v200 + 16))(v198, v195, v201);
        v227 = v153;
        v228 = &protocol witness table for UILabel;
        v226[0] = v155;
        v224 = v156;
        v225 = &protocol witness table for LayoutViewPlaceholder;
        v223 = v157;
        v161 = v155;

        v162 = v202;
        sub_10076893C();
        v163 = v220;
        [v220 pageMarginInsets];
        sub_100770ACC();
        sub_1006722B0(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout);
        v164 = v204;
        sub_10076D2AC();
        sub_100770AEC();
        v166 = v165;

        (*(v203 + 8))(v162, v164);
        (*(v158 + 8))(v159, v160);

        v167 = objc_opt_self();
        v168 = [v167 fractionalWidthDimension:1.0];
        v169 = [v167 absoluteDimension:v166];
        v136 = [objc_opt_self() sizeWithWidthDimension:v168 heightDimension:v169];

        v137 = sub_10076FF6C();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:5];
        goto LABEL_64;
      }
    }

    sub_100760E9C();
    v141 = sub_100760E5C();
    goto LABEL_55;
  }

  v226[0] = 0;
  v226[1] = 0xE000000000000000;
  sub_10077145C(25);
  v230._object = 0x80000001007F4600;
  v230._countAndFlagsBits = 0xD000000000000016;
  sub_1007700CC(v230);
  sub_10077151C();
  v231._countAndFlagsBits = 46;
  v231._object = 0xE100000000000000;
  sub_1007700CC(v231);
  result = sub_10077156C();
  __break(1u);
  return result;
}