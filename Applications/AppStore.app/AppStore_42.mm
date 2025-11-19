uint64_t sub_1004AF53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = FramedMedia.caption.getter();
  v9 = [v8 length];

  v10 = &selRef_setRequiresColorStatistics_;
  if (v9 >= 1)
  {
    v11 = FramedMedia.caption.getter();
    v12 = [a5 traitCollection];
    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v11];
    v34 = [v11 length];
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    *(v14 + 40) = 1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10010279C;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1001027AC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    aBlock[3] = &unk_1008C52C0;
    v16 = _Block_copy(aBlock);
    v17 = v12;
    v18 = v13;

    [v11 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v16}];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = *&v6[qword_100989278];
      [isEscapingClosureAtFileLocation setAttributedText:v18];
      if (qword_10096E6A8 == -1)
      {
LABEL_4:
        [isEscapingClosureAtFileLocation setTextColor:qword_1009D23B0];
        v6[qword_1009D23C8] = 1;
        v20 = *&v6[qword_100989268];
        [v20 setHidden:0];

        v10 = &selRef_setRequiresColorStatistics_;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  [*&v6[qword_100989278] setText:0];
  v6[qword_1009D23C8] = 0;
  v20 = *&v6[qword_100989268];
  [v20 setHidden:1];
LABEL_6:
  v21 = *&v6[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v21 v10[11]];

  v6[qword_1009D23C0] = (FramedMedia.isFullWidth.getter() & 1) == 0;
  sub_10012684C();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0 && v6[qword_1009D23C8] != 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  if (FramedMedia.isFullWidth.getter())
  {
    [v20 setBackgroundColor:0];
  }

  else
  {
    sub_100005744(0, &qword_100970180);
    v24 = static UIColor.placeholderBackground.getter();
    [v20 setBackgroundColor:v24];
  }

  result = FramedArtwork.artwork.getter();
  if (result)
  {
    v26 = [v6 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v28 = v27;

    Artwork.size.getter();
    v30 = v29;
    Artwork.size.getter();
    v32 = v31;

    v33 = &v6[qword_1009CFF30];
    *v33 = v28;
    v33[1] = v28 * (v30 / v32);
  }

  return result;
}

uint64_t sub_1004AFA28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004AFA70(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a3;
  v11 = a2;
  v13 = type metadata accessor for AspectRatio();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Shelf.items.getter();
  v7 = *(v6 + 16);
  v15 = v6 + 32;
  v12 = (v3 + 8);
  v16 = v6;

  v9 = 0;
  while (1)
  {
    if (v9 == v7)
    {
      v24 = 0;
      v9 = v7;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10002C0AC(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100005A38(v20, v19);
    sub_10002C0AC(v19, v17);
    sub_10002849C(&qword_100973D50);
    type metadata accessor for FramedArtwork();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    result = sub_100007000(v19);
    if (v18)
    {
      if (FramedArtwork.artwork.getter())
      {

        if ((FramedMedia.isFullWidth.getter() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.height(fromWidth:)();
        FramedMedia.isFullWidth.getter();

        AspectRatio.width(fromHeight:)();
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        result = (*v12)(v5, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004AFDA4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v1 = type metadata accessor for StoryCardCollectionViewCell();
      v2 = &unk_100979D48;
      v3 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_12;
    case 2:
      v1 = type metadata accessor for ListTodayCardCollectionViewCell();
      v2 = &unk_100980BB8;
      v3 = type metadata accessor for ListTodayCardCollectionViewCell;
      goto LABEL_12;
    case 3:
    case 6:
      v1 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
      v2 = &unk_1009877E0;
      v3 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      goto LABEL_12;
    case 4:
      v1 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
      v2 = &unk_1009877F8;
      v3 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      goto LABEL_12;
    case 5:
      v1 = type metadata accessor for RiverTodayCardCollectionViewCell();
      v2 = &unk_1009877F0;
      v3 = type metadata accessor for RiverTodayCardCollectionViewCell;
      goto LABEL_12;
    case 7:
      v1 = type metadata accessor for GridTodayCardCollectionViewCell();
      v2 = &unk_1009877E8;
      v3 = type metadata accessor for GridTodayCardCollectionViewCell;
      goto LABEL_12;
    case 10:
      v1 = type metadata accessor for AppEventTodayCardCollectionViewCell();
      v2 = &unk_1009877D8;
      v3 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      goto LABEL_12;
    case 11:
      v1 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
      v2 = &unk_1009877D0;
      v3 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      goto LABEL_12;
    case 12:
      v1 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
      v2 = &unk_1009877C8;
      v3 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      goto LABEL_12;
    case 13:
      v1 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
      v2 = &unk_1009877C0;
      v3 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
LABEL_12:
      sub_1004AFFD8(v2, v3);
      result = v1;
      break;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1004AFFD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B002C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[23] = &type metadata for Double;
  v28[24] = &protocol witness table for Double;
  v28[19] = &protocol witness table for Double;
  v28[20] = 0x4049000000000000;
  v28[18] = &type metadata for Double;
  v28[14] = &protocol witness table for Double;
  v28[15] = 0x4024000000000000;
  v28[13] = &type metadata for Double;
  v28[10] = 0x4030000000000000;
  v28[8] = &type metadata for Double;
  v28[9] = &protocol witness table for Double;
  v28[5] = 0x402C000000000000;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v6, qword_1009D0758);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = type metadata accessor for StaticDimension();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v22);
  v10(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v11(v5, v2);
  if (v20)
  {
    UITraitCollection.isRegularPad.getter();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

char *sub_1004B037C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArcadeLockupLayout.Metrics();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v14, qword_1009D0740);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_1004B002C(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView] = sub_1001C6E04(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView]];
  sub_10002849C(&qword_10097B110);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B1890;
  *(v25 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = type metadata accessor for UITraitVerticalSizeClass();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v24;
}

void sub_1004B07B0()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UIView.LayoutRegion();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = UITraitCollection.isSizeClassRegular.getter();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset + 8])
        {
          v16 = [Strong view];
          if (v16)
          {
            v17 = v16;
            [v16 safeAreaInsets];
            v19 = v18;

            v20 = [v14 navigationController];
            if (v20)
            {
              v21 = v20;
              sub_10006CAB8();
              v23 = v22;
            }

            else
            {

              v23 = 0.0;
            }

            *v15 = v19 - v23;
            *(v15 + 8) = 0;
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = &v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
        sub_1004B1184(v4);
        UIView.edgeInsets(for:)();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        *v24 = v29;
        v24[8] = 0;
      }
    }
  }

  else
  {

    [v0 floatingTabBarHeight];
  }
}

void sub_1004B0B04()
{
  sub_1004B07B0();
  v1 = &OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    CGSize.subtracting(insets:)();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_1004B07B0();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_1004B0E30(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = ObjectType;
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1, v7);
  if (a1)
  {
    v10 = [a1 layoutDirection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 traitCollection];
  v12 = [v11 layoutDirection];

  if (!a1 || v10 != v12)
  {
    v13 = [v2 traitCollection];
    [v13 layoutDirection];

    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_1004B002C(v15, v9);

  v17 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_1004B1184(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100996820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B11EC(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

BOOL sub_1004B1208(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_1004B1288()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state);
  if (*(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_allocWithZone(type metadata accessor for InstallProgressLayer()) init];
        sub_1004B14A4(v2);
        v3 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        v5 = String._bridgeToObjectiveC()();
        v6 = [v4 animationForKey:v5];

        if (v6)
        {

          v7 = String._bridgeToObjectiveC()();
          [v4 removeAnimationForKey:v7];
        }

        v8 = sub_10015F058();
        v14 = String._bridgeToObjectiveC()();
        [v4 addAnimation:v8 forKey:v14];
      }

      else
      {
        v13 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
        if (!v13)
        {
          return;
        }

        v14 = v13;
        sub_10015DE1C();
      }

      v12 = v14;
    }

    else
    {
      v11 = OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer;
      v12 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
      if (v12)
      {
        [v12 removeFromSuperlayer];
        v12 = *(v0 + v11);
      }

      *(v0 + v11) = 0;
    }
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state);

    [v9 setProgress:v10];
  }
}

void sub_1004B14A4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setContentsScale:v11];
    v12 = [v1 layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v8 setFrame:{v14, v16, v18, v20}];
    v21 = [v1 layer];
    [v21 addSublayer:v8];
  }
}

id sub_1004B1638(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8AppStore19InstallProgressView_state];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InstallProgressView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  return v13;
}

void sub_1004B18E8(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = &v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state];
  v20 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state];
  if (v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state + 8] == 1 && v20 > 1)
  {
    return;
  }

  if (a1 == 0.0)
  {
    v22 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress];
    if (v22 == 1.0)
    {
      v23 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
      if (v23)
      {

        v23(v24);

        sub_10001F63C(v23);
      }

      return;
    }

    if (v22 > 0.0)
    {
      v25 = objc_opt_self();
      [v25 begin];
      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      v49 = sub_1004B21BC;
      v50 = v26;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_100007A08;
      v48 = &unk_1008C5490;
      v27 = _Block_copy(&aBlock);
      v28 = v1;

      [v25 setCompletionBlock:v27];
      _Block_release(v27);
      *v19 = 1;
      v19[8] = 1;
      sub_1004B1288();
      [v25 commit];
      return;
    }
  }

  if (v20 == 1)
  {
    v29 = v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state + 8];
  }

  else
  {
    v29 = 0;
  }

  if ((v29 & 1) == 0)
  {
    v43 = v8;
    v44 = v4;
    v30 = OBJC_IVAR____TtC8AppStore19InstallProgressView_progress;
    *v19 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress];
    v19[8] = 0;
    v31 = v15;
    v32 = v16;
    sub_1004B1288();
    v33 = v31;
    v34 = v44;
    if (*&v1[v30] >= 1.0)
    {
      v35 = v33;
      v42 = v33;
      sub_1000076C0();
      v39 = v1;
      v41 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v40 = *(v32 + 8);
      v40(v13, v35);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_1004B21B4;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_100007A08;
      v48 = &unk_1008C5440;
      v37 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10002D150();
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v41;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v37);

      (*(v34 + 8))(v6, v3);
      (*(v43 + 8))(v10, v7);
      v40(v18, v42);
    }
  }
}

id sub_1004B1E4C()
{
  v0 = objc_opt_self();
  [v0 begin];
  v1 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1004B21F4;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C54B8;
  v3 = _Block_copy(aBlock);

  [v0 setCompletionBlock:v3];
  _Block_release(v3);
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = v4 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
    *v6 = 2;
    *(v6 + 8) = 1;
    sub_1004B1288();
  }

  return [v0 commit];
}

void sub_1004B1FC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler);
    v2 = Strong;
    sub_10000827C(v1);

    if (v1)
    {
      v1();
      sub_10001F63C(v1);
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
    *v5 = 0;
    *(v5 + 8) = 1;
    sub_1004B1288();
  }
}

id sub_1004B2090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t storeEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1004B2168(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004B2184(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1004B21BC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_1004B1288();
}

double *sub_1004B220C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004B23B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for PageFacets.Facet.Option();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_100033E38(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_100033E38((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[2 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1004B2554()
{
  sub_10002849C(&qword_100985F38);
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B1E00;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.productTopLockup(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.preorderDisclaimer(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1000833C4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1009D1F68 = v7;
  return result;
}

double *sub_1004B26C8(void *a1, int *a2)
{
  v5 = sub_10026CF10(a1, a2);
  v6 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v7 = sub_1004B6E84(a1, a2);
  if (v7)
  {
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6 = v18;
  }

  v9 = sub_1004B4D30(a1);
  if (v9)
  {
    v10 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6 = v18;
  }

  v11 = sub_1004B828C(a1);
  if (v11)
  {
    v12 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6 = v18;
  }

  sub_100005744(0, &qword_10097F460);

  v13 = Array<A>.totalTopSupplementaryHeight.getter();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = __chkstk_darwin(v13).n128_u64[0];
  v14 = sub_1004B220C(sub_1004B87BC, v16, v5);

  v17 = v14;
  sub_1003945AC(v6);
  return v17;
}

void sub_1004B28FC(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  if (sub_1004B87DC(*a1, a2))
  {
    if ([v6 alignment] == 1 && a4 > 0.0)
    {
      v7 = [v6 layoutSize];
      v8 = [v6 elementKind];
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
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

double sub_1004B2A3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v9 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10002849C(&qword_1009751D0);
    a5[4] = sub_100097060(&qword_10098FFA0, &qword_1009751D0);
    sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
LABEL_13:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  v34 = a3;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000023 && 0x80000001008169A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000001008169D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a5[3] = sub_10002849C(&qword_100987A88);
    a5[4] = sub_100097060(&unk_100987A90, &qword_100987A88);
    v36 = sub_1000056E0(a5);
    type metadata accessor for PlatformSelectorView();

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v15 = v9;
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v15);
    goto LABEL_13;
  }

  type metadata accessor for InteractiveProductReviewsShelfHeaderView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v19 == a2)
  {

LABEL_18:
    a5[3] = sub_10002849C(&qword_100987A78);
    a5[4] = sub_100097060(&qword_100987A80, &qword_100987A78);
    v36 = sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v21 = v9;
    v22 = v10;
    v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v24 = swift_allocObject();
    (*(v22 + 32))(v24 + v23, v12, v21);
    goto LABEL_13;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_18;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v25 == a2)
  {

LABEL_23:
    a5[3] = sub_10002849C(&qword_100987A70);
    a5[4] = sub_100097060(&unk_10098FF90, &qword_100987A70);
    v36 = sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v27 = v9;
    v28 = v10;
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v12, v27);
    goto LABEL_13;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_23;
  }

  v31 = v34;
  v32 = v35;

  return sub_100268C44(a1, a2, v31, v32, a5);
}

double *sub_1004B3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for ShelfLayoutContext();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shelf.ContentsMetadata();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009731F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ProductReviewsMetadata();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v36 = sub_10026E03C(a1, a2, v37);
  v30 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v12 + 8))(v14, v11);
  if ((*(v8 + 88))(v10, v7) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    (*(v8 + 8))(v10, v7);
    return v36;
  }

  (*(v8 + 96))(v10, v7);
  v18 = v35;
  (*(v35 + 32))(v17, v10, v15);
  if ((ProductReviewsMetadata.hasReviewSummary.getter() & 1) == 0)
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
  v23 = v22 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  (*(v19 + 32))(v22 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext, v20, v21);
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_objectGraph) = v37;

  v24 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_100034BBC(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100034BBC((v25 > 1), v26 + 1, 1, v24);
  }

  (*(v18 + 8))(v17, v15);
  v27 = sub_1004B8D78(&qword_100987A68, type metadata accessor for InteractiveProductReviewsShelfScrollObserver);
  *(v24 + 2) = v26 + 1;
  v28 = &v24[2 * v26];
  *(v28 + 4) = v22;
  *(v28 + 5) = v27;
  return v24;
}

uint64_t sub_1004B3504(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_100503F40();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_1004B3724(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v160 = a1;
  v144 = type metadata accessor for AutomationSemantics();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = &v126 - v8;
  __chkstk_darwin(v9);
  v142 = &v126 - v10;
  v147 = type metadata accessor for PageGrid();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Shelf.ContentType();
  v159 = *(v152 - 8);
  __chkstk_darwin(v152);
  v136 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v151);
  v155 = (&v126 - v13);
  v14 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v14 - 8);
  v150 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v148 = &v126 - v17;
  __chkstk_darwin(v18);
  v157 = &v126 - v19;
  v20 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v20 - 8);
  v138 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v126 - v23;
  __chkstk_darwin(v24);
  v154 = &v126 - v25;
  v26 = type metadata accessor for Shelf.ContentsMetadata();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_1009731F0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v126 - v34;
  v36 = type metadata accessor for ProductMediaMetadata();
  v156 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a5;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v39 = *(v31 + 8);
  v39(v35, v30);
  if ((*(v27 + 88))(v29, v26) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    return (*(v27 + 8))(v29, v26);
  }

  v137 = v39;
  (*(v27 + 96))(v29, v26);
  (*(v156 + 32))(v38, v29, v36);
  v40 = ProductMediaMetadata.platform.getter();
  v41 = ProductMediaMetadata.allPlatforms.getter();
  v42 = ProductMediaMetadata.platformDescription.getter();
  v44 = v43;
  v132 = ProductMediaMetadata.allPlatformsDescription.getter();
  v131 = v45;
  v127 = sub_10002849C(&qword_100973210);
  v46 = swift_allocObject();
  v126 = xmmword_1007B0B70;
  *(v46 + 16) = xmmword_1007B0B70;
  *(v46 + 32) = v40;
  v139 = v40;

  v135 = v41;
  v128 = sub_1006E1F58(v41, v46);

  v47 = v148;
  v48 = v150;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v47, &unk_10098FFB0);
  v49 = v48;
  v50 = v157;
  sub_100094E74(v49, v157);
  v51 = (*(v31 + 48))(v50, 1, v30);
  v130 = v36;
  v129 = v38;
  v134 = v42;
  v133 = v44;
  if (v51 == 1)
  {
    sub_10002B894(v157, &unk_10098FFB0);
    v52 = 1;
    v53 = v154;
  }

  else
  {
    swift_getKeyPath();
    v53 = v154;
    v55 = v157;
    ReadOnlyLens.subscript.getter();

    v137(v55, v30);
    v52 = 0;
  }

  v56 = *(v159 + 7);
  v57 = v152;
  v56(v53, v52, 1, v152);
  v58 = v149;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v59 = v153;
  ReadOnlyLens.subscript.getter();
  v60 = v59;

  v61 = v30;
  v62 = v57;
  v137(v58, v61);
  v56(v59, 0, 1, v57);
  v63 = *(v151 + 48);
  v64 = v155;
  sub_100094EE4(v53, v155);
  sub_100094EE4(v59, v64 + v63);
  v65 = *(v159 + 6);
  v66 = v65(v64, 1, v62);
  v67 = v135;
  v68 = v135 >> 62;
  if (v66 == 1)
  {
    sub_10002B894(v60, &unk_100992460);
    v69 = v155;
    sub_10002B894(v53, &unk_100992460);
    v70 = v65(v69 + v63, 1, v62);
    v71 = v139;
    if (v70 == 1)
    {
      sub_10002B894(v69, &unk_100992460);
LABEL_22:
      LODWORD(v77) = 0;
      v76 = v147;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v72 = v138;
  sub_100094EE4(v64, v138);
  if (v65(v64 + v63, 1, v62) == 1)
  {
    sub_10002B894(v153, &unk_100992460);
    v69 = v155;
    sub_10002B894(v154, &unk_100992460);
    (*(v159 + 1))(v72, v62);
    v71 = v139;
LABEL_11:
    sub_10002B894(v69, &qword_100975F10);
    goto LABEL_12;
  }

  v78 = v159;
  v79 = v64 + v63;
  v80 = v136;
  (*(v159 + 4))(v136, v79, v62);
  sub_1004B8D78(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v81 = v64;
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  v83 = *(v78 + 1);
  v83(v80, v62);
  sub_10002B894(v153, &unk_100992460);
  sub_10002B894(v154, &unk_100992460);
  v83(v72, v62);
  sub_10002B894(v81, &unk_100992460);
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

  result = _CocoaArrayWrapper.endIndex.getter();
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

  v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  *&v162 = v71;
  if (!v74)
  {
    goto LABEL_25;
  }

LABEL_19:
  *&v161[0] = v74;
  type metadata accessor for MediaPlatform();
  sub_1004B8D78(&qword_100975F18, &type metadata accessor for MediaPlatform);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

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
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v86 = v85;
  (*(v146 + 8))(v84, v76);
  v87 = ShelfLayoutContext.traitCollection.getter();
  v88 = type metadata accessor for SnapshotPageTraitEnvironment();
  v89 = objc_allocWithZone(v88);
  v90 = &v89[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v90 = v86;
  *(v90 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v89[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v87;
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
      v95 = _CocoaArrayWrapper.endIndex.getter();
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

  v96 = sub_1000CAB9C(v67);

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

  v100 = &v160[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text];
  *v100 = v98;
  v100[1] = v99;

  *&v162 = _swiftEmptyArrayStorage;
  v101 = *(v96 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = (v96 + 7);
    v154 = v101 - 1;
    v158 = v91;
    v159 = _swiftEmptyArrayStorage;
    LODWORD(v157) = v77;
    v155 = v96 + 7;
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

        v104 = String._bridgeToObjectiveC()();
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

      if (qword_10096CFC0 != -1)
      {
        swift_once();
      }

      v106 = [v105 imageWithTintColor:qword_1009CDD58];

      if (!v106)
      {
        goto LABEL_44;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v102 = v77 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
  v107 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images;
  v108 = v160;
  *&v160[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images] = v159;

  v109 = *&v108[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView];
  if (v77)
  {
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v110 = qword_1009738D0;
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
      v112 = _CocoaArrayWrapper.endIndex.getter();
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
  *&v160[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges] = v112;
  *&v113[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits] = v91;
  swift_unknownObjectRelease();
  v159 = v91;
  sub_1000C9724();
  [v113 setNeedsLayout];
  v162 = 0u;
  v163 = 0u;
  memset(v161, 0, sizeof(v161));
  v114 = v140;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_10002B894(v161, &unk_1009711D0);
  sub_10002B894(&v162, &unk_1009711D0);
  *&v162 = v96;
  *(&v162 + 1) = sub_1000CA47C;
  *&v163 = 0;

  sub_10002849C(&qword_1009872F0);
  sub_10049FB60();
  v115 = BidirectionalCollection<>.joined(separator:)();
  v117 = v116;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v115;
  *(&v162 + 1) = v117;
  v118 = v141;
  AutomationSemantics.attribute(key:value:)();
  v119 = *(v143 + 8);
  v120 = v114;
  v121 = v144;
  v119(v120, v144);
  sub_10002B894(&v162, &unk_1009711D0);
  *&v162 = v96;
  *(&v162 + 1) = sub_1000CA488;
  *&v163 = 0;
  v122 = BidirectionalCollection<>.joined(separator:)();
  v124 = v123;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v122;
  *(&v162 + 1) = v124;
  v125 = v142;
  AutomationSemantics.attribute(key:value:)();
  v119(v118, v121);
  sub_10002B894(&v162, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v119(v125, v121);
  return (*(v156 + 8))(v129, v130);
}

uint64_t sub_1004B4A34(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  sub_1000056A8(v8, qword_1009D0A58);
  v9 = [a2 traitCollection];
  v10 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v17[1] = sub_100005744(0, &unk_100984040);

  v17[0] = [a2 traitCollection];
  if (qword_10096CFD0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  sub_1000056A8(v11, qword_1009738D8);
  PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
  sub_10002A400(v18, v18[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v4 + 8))(v6, v3);
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100970EC0);
  v15 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();

  sub_100007000(v18);
  return v15;
}

uint64_t sub_1004B4D30(void *a1)
{
  v216 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  v188 = *(v216 - 8);
  __chkstk_darwin(v216);
  v201 = v173 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for PlatformSelectorViewLayout();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for DirectionalTextAlignment();
  v199 = *(v186 - 8);
  __chkstk_darwin(v186);
  v187 = v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v198 = v173 - v6;
  v203 = type metadata accessor for BadgeDisplayStyle();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v197 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v200 = v173 - v9;
  __chkstk_darwin(v10);
  v196 = v173 - v11;
  v195 = type metadata accessor for FloatingPointRoundingRule();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for PageGrid();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for ProductMedia.DescriptionPlacement();
  v217 = *(v219 - 8);
  __chkstk_darwin(v219);
  v189 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v218 = v173 - v16;
  v215 = type metadata accessor for Shelf.ContentType();
  v223 = *(v215 - 1);
  __chkstk_darwin(v215);
  v179 = v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v211);
  v214 = v173 - v18;
  v19 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v19 - 8);
  v209 = v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v207 = v173 - v22;
  __chkstk_darwin(v23);
  v210 = v173 - v24;
  v25 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v25 - 8);
  v181 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v212 = v173 - v28;
  __chkstk_darwin(v29);
  v213 = v173 - v30;
  v31 = type metadata accessor for Shelf.ContentsMetadata();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&unk_1009731F0);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v208 = v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v173 - v39;
  v221 = type metadata accessor for ProductMediaMetadata();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v42 = v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v43 = *(v36 + 8);
  v43(v40, v35);
  if ((*(v32 + 88))(v34, v31) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v32 + 8))(v34, v31);
    return 0;
  }

  v180 = v43;
  (*(v32 + 96))(v34, v31);
  (*(v220 + 32))(v42, v34, v221);
  v44 = ProductMediaMetadata.platform.getter();
  v45 = ProductMediaMetadata.allPlatforms.getter();
  v183 = v45;
  v175 = ProductMediaMetadata.platformDescription.getter();
  v178 = v46;
  v185 = v42;
  v177 = ProductMediaMetadata.allPlatformsDescription.getter();
  v182 = v47;
  v173[1] = sub_10002849C(&qword_100973210);
  v48 = swift_allocObject();
  v174 = xmmword_1007B0B70;
  *(v48 + 16) = xmmword_1007B0B70;
  *(v48 + 32) = v44;
  v184 = v44;

  v176 = sub_1006E1F58(v45, v48);

  v49 = v207;
  v50 = v209;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v49, &unk_10098FFB0);
  v51 = v210;
  sub_100094E74(v50, v210);
  if ((*(v36 + 48))(v51, 1, v35) == 1)
  {
    sub_10002B894(v51, &unk_10098FFB0);
    v52 = 1;
    v53 = v213;
  }

  else
  {
    swift_getKeyPath();
    v53 = v213;
    ReadOnlyLens.subscript.getter();

    v180(v51, v35);
    v52 = 0;
  }

  v55 = v223[7];
  v56 = v215;
  v55(v53, v52, 1, v215);
  v57 = v208;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v58 = v212;
  ReadOnlyLens.subscript.getter();

  v59 = v35;
  v60 = v58;
  v180(v57, v59);
  v55(v58, 0, 1, v56);
  v61 = *(v211 + 48);
  v62 = v214;
  sub_100094EE4(v53, v214);
  sub_100094EE4(v58, v62 + v61);
  v63 = v223[6];
  if (v63(v62, 1, v56) == 1)
  {
    sub_10002B894(v60, &unk_100992460);
    sub_10002B894(v53, &unk_100992460);
    if (v63(v62 + v61, 1, v56) == 1)
    {
      sub_10002B894(v62, &unk_100992460);
LABEL_23:
      v76 = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v64 = v181;
  sub_100094EE4(v62, v181);
  if (v63(v62 + v61, 1, v56) == 1)
  {
    sub_10002B894(v60, &unk_100992460);
    sub_10002B894(v53, &unk_100992460);
    (v223[1])(v64, v56);
LABEL_11:
    sub_10002B894(v62, &qword_100975F10);
    v65 = v183;
    goto LABEL_12;
  }

  v71 = v223;
  v72 = v62 + v61;
  v73 = v179;
  (v223[4])(v179, v72, v56);
  sub_1004B8D78(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  v75 = v71[1];
  v75(v73, v56);
  sub_10002B894(v60, &unk_100992460);
  sub_10002B894(v53, &unk_100992460);
  v75(v64, v56);
  sub_10002B894(v62, &unk_100992460);
  v65 = v183;
  if (v74)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v65 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v184;
  if (!v66)
  {

    v228[0] = v67;
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

      v228[0] = v67;
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

  v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v228[0] = v67;
  if (!v69)
  {
    goto LABEL_25;
  }

LABEL_20:
  v225 = v69;
  type metadata accessor for MediaPlatform();
  sub_1004B8D78(&qword_100975F18, &type metadata accessor for MediaPlatform);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v70)
  {
    goto LABEL_23;
  }

LABEL_26:
  v76 = v176 ^ 1;
LABEL_27:
  v77 = v218;
  ProductMediaMetadata.descriptionPlacement(when:)();
  v78 = v217;
  v79 = v189;
  v80 = v77;
  v81 = v219;
  (*(v217 + 16))(v189, v80, v219);
  v82 = (*(v78 + 88))(v79, v81);
  if (v82 == enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v83 = v190;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.containerWidth.getter();
    v85 = v84;
    v86 = *(v191 + 8);
    v87 = v192;
    v86(v83, v192);
    v88 = ShelfLayoutContext.traitCollection.getter();
    v89 = type metadata accessor for SnapshotPageTraitEnvironment();
    v90 = objc_allocWithZone(v89);
    v91 = &v90[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v91 = v85;
    *(v91 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v90[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v88;
    v224.receiver = v90;
    v224.super_class = v89;
    v223 = objc_msgSendSuper2(&v224, "init");
    ShelfLayoutContext.supplementaryPageGrid.getter();
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    v86(v83, v87);
    if ((v76 & 1) == 0)
    {
      v68 = v187;
      if (v183 >> 62)
      {
        v103 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v103 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v103 > 1)
      {

        type metadata accessor for MediaPlatform();
        v104 = swift_allocObject();
        *(v104 + 16) = v174;
        *(v104 + 32) = v184;

        v105 = static MediaPlatform.systemImages(platforms:)();
        v177 = v175;
LABEL_41:

        if (qword_10096CFD0 != -1)
        {
          swift_once();
        }

        v106 = sub_1000056A8(v216, qword_1009738D8);
        PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
        sub_10002A400(v228, v229);
        v107 = v193;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v109 = v108;
        (*(v194 + 8))(v107, v195);
        sub_1000CAA9C(v105, v109);
        sub_100007000(v228);
        if (v105 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v110 = v188;
        v111 = v186;

        v112 = v223;
        static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
        v113 = sub_1004B4A34(v105, v112);

        v222 = v113;
        v114 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
        if (qword_10096DE48 != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for FontUseCase();
        v116 = sub_1000056A8(v115, qword_1009D0A58);
        v117 = *(v115 - 8);
        v118 = v198;
        (*(v117 + 16))(v198, v116, v115);
        (*(v117 + 56))(v118, 0, 1, v115);
        (*(v199 + 104))(v68, enum case for DirectionalTextAlignment.none(_:), v111);
        v119 = type metadata accessor for DynamicTypeLabel();
        v120 = objc_allocWithZone(v119);
        v121 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        [v121 setAttributedText:v114];
        v215 = v114;
        if (qword_10096CFC8 != -1)
        {
          swift_once();
        }

        [qword_1009738D0 size];
        v122 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v123 = LayoutViewPlaceholder.init(representing:)();
        (*(v110 + 16))(v201, v106, v216);
        v124 = v202;
        v125 = v196;
        v126 = v203;
        (*(v202 + 16))(v200, v196, v203);
        v229 = v119;
        v230 = &protocol witness table for UILabel;
        v228[0] = v121;
        v226 = v122;
        v227 = &protocol witness table for LayoutViewPlaceholder;
        v225 = v123;
        v127 = v121;

        v128 = v204;
        PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
        v129 = v223;
        [v223 pageMarginInsets];
        CGSize.subtracting(insets:)();
        sub_1004B8D78(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout);
        v130 = v206;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        CGSize.adding(outsets:)();
        v132 = v131;

        (*(v205 + 8))(v128, v130);
        (*(v124 + 8))(v125, v126);

        v133 = objc_opt_self();
        v134 = [v133 fractionalWidthDimension:1.0];
        v135 = [v133 absoluteDimension:v132];
        v136 = [objc_opt_self() sizeWithWidthDimension:v134 heightDimension:v135];

        v137 = String._bridgeToObjectiveC()();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:1];
LABEL_64:
        v170 = v138;

        (*(v217 + 8))(v218, v219);
        (*(v220 + 8))(v185, v221);
        return v170;
      }

LABEL_40:
      type metadata accessor for MediaPlatform();
      v105 = static MediaPlatform.systemImages(platforms:)();
      goto LABEL_41;
    }

    v68 = v187;
    if (qword_10096CFC8 == -1)
    {
LABEL_30:
      [qword_1009738D0 size];
      goto LABEL_40;
    }

LABEL_71:
    swift_once();
    goto LABEL_30;
  }

  if (v82 == enum case for ProductMedia.DescriptionPlacement.bottom(_:))
  {
    v92 = v190;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.containerWidth.getter();
    v94 = v93;
    v95 = *(v191 + 8);
    v96 = v192;
    v95(v92, v192);
    v97 = ShelfLayoutContext.traitCollection.getter();
    v98 = type metadata accessor for SnapshotPageTraitEnvironment();
    v99 = objc_allocWithZone(v98);
    v100 = &v99[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v100 = v94;
    *(v100 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v99[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v97;
    v231.receiver = v99;
    v231.super_class = v98;
    v101 = objc_msgSendSuper2(&v231, "init");
    ShelfLayoutContext.supplementaryPageGrid.getter();
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    v95(v92, v96);
    if (v76)
    {
      v102 = v187;
      if (qword_10096CFC8 != -1)
      {
        swift_once();
      }

      [qword_1009738D0 size];
    }

    else
    {
      v102 = v187;
      if (v183 >> 62)
      {
        v139 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v139 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v139 > 1)
      {

        type metadata accessor for MediaPlatform();
        v140 = swift_allocObject();
        *(v140 + 16) = v174;
        *(v140 + 32) = v184;

        v141 = static MediaPlatform.systemImages(platforms:)();
        v177 = v175;
LABEL_55:

        if (qword_10096CFD0 != -1)
        {
          swift_once();
        }

        v142 = sub_1000056A8(v216, qword_1009738D8);
        PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
        sub_10002A400(v228, v229);
        v143 = v193;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v145 = v144;
        (*(v194 + 8))(v143, v195);
        sub_1000CAA9C(v141, v145);
        sub_100007000(v228);
        if (v141 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v146 = v188;
        v147 = v186;

        static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
        v148 = sub_1004B4A34(v141, v101);

        v215 = v148;
        v223 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
        if (qword_10096DE48 != -1)
        {
          swift_once();
        }

        v222 = v101;
        v149 = type metadata accessor for FontUseCase();
        v150 = sub_1000056A8(v149, qword_1009D0A58);
        v151 = *(v149 - 8);
        v152 = v198;
        (*(v151 + 16))(v198, v150, v149);
        (*(v151 + 56))(v152, 0, 1, v149);
        (*(v199 + 104))(v102, enum case for DirectionalTextAlignment.none(_:), v147);
        v153 = type metadata accessor for DynamicTypeLabel();
        v154 = objc_allocWithZone(v153);
        v155 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        [v155 setAttributedText:v223];
        if (qword_10096CFC8 != -1)
        {
          swift_once();
        }

        [qword_1009738D0 size];
        v156 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v157 = LayoutViewPlaceholder.init(representing:)();
        (*(v146 + 16))(v201, v142, v216);
        v158 = v202;
        v159 = v197;
        v160 = v203;
        (*(v202 + 16))(v200, v197, v203);
        v229 = v153;
        v230 = &protocol witness table for UILabel;
        v228[0] = v155;
        v226 = v156;
        v227 = &protocol witness table for LayoutViewPlaceholder;
        v225 = v157;
        v161 = v155;

        v162 = v204;
        PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
        v163 = v222;
        [v222 pageMarginInsets];
        CGSize.subtracting(insets:)();
        sub_1004B8D78(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout);
        v164 = v206;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        CGSize.adding(outsets:)();
        v166 = v165;

        (*(v205 + 8))(v162, v164);
        (*(v158 + 8))(v159, v160);

        v167 = objc_opt_self();
        v168 = [v167 fractionalWidthDimension:1.0];
        v169 = [v167 absoluteDimension:v166];
        v136 = [objc_opt_self() sizeWithWidthDimension:v168 heightDimension:v169];

        v137 = String._bridgeToObjectiveC()();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:5];
        goto LABEL_64;
      }
    }

    type metadata accessor for MediaPlatform();
    v141 = static MediaPlatform.systemImages(platforms:)();
    goto LABEL_55;
  }

  v228[0] = 0;
  v228[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v171._object = 0x8000000100816A40;
  v171._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v171);
  _print_unlocked<A, B>(_:_:)();
  v172._countAndFlagsBits = 46;
  v172._object = 0xE100000000000000;
  String.append(_:)(v172);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1004B6E84(void *a1, void *a2)
{
  v107 = a2;
  v3 = type metadata accessor for ShelfBackground();
  v113 = *(v3 - 8);
  v114 = v3;
  __chkstk_darwin(v3);
  v112 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v106 - v6;
  v119 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v119);
  v122 = &v106 - v7;
  v8 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v8 - 8);
  v116 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v106 - v11;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v15 - 8);
  v110 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v106 - v18;
  __chkstk_darwin(v19);
  v126 = &v106 - v20;
  v21 = sub_10002849C(&unk_1009731F0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v117 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = type metadata accessor for Shelf.ContentType();
  v124 = *(v27 - 8);
  v125 = v27;
  __chkstk_darwin(v27);
  v118 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v108 = &v106 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = objc_opt_self();
  v35 = [v34 fractionalWidthDimension:1.0];
  v36 = ShelfLayoutContext.traitCollection.getter();
  static ComponentSeparator.thickness(compatibleWith:)();
  v38 = v37;

  v39 = [v34 absoluteDimension:v38];
  v120 = [objc_opt_self() sizeWithWidthDimension:v35 heightDimension:v39];

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v123 = v33;
  ReadOnlyLens.subscript.getter();

  v40 = *(v22 + 8);
  v40(v26, v21);
  v42 = v115;
  v41 = v116;
  v121 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v41, &unk_10098FFB0);
  sub_100094E74(v42, v14);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_10002B894(v14, &unk_10098FFB0);
    v43 = 1;
    v44 = v126;
  }

  else
  {
    swift_getKeyPath();
    v45 = v126;
    ReadOnlyLens.subscript.getter();

    v40(v14, v21);
    v43 = 0;
    v44 = v45;
  }

  v46 = v124;
  (*(v124 + 56))(v44, v43, 1, v125);
  v47 = v117;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v40(v47, v21);
  v48 = v128;
  v49 = v118;
  if (v128)
  {
    v50 = v127;

    v51 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v117) = v51 != 0;
  }

  else
  {
    LODWORD(v117) = 0;
  }

  v52 = *(v119 + 48);
  v53 = v122;
  v54 = v125;
  (*(v46 + 16))(v122, v123, v125);
  sub_100094EE4(v126, v53 + v52);
  v55 = *(v46 + 88);
  v56 = v55(v53, v54);
  if (v56 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v57 = v52;
    v58 = v111;
    ReadOnlyLens.subscript.getter();
    v53 = v122;

    v40(v26, v21);
    v60 = v112;
    v59 = v113;
    v61 = v114;
    (*(v113 + 104))(v112, enum case for ShelfBackground.editorsChoice(_:), v114);
    v62 = static ShelfBackground.== infix(_:_:)();
    v63 = *(v59 + 8);
    v63(v60, v61);
    v64 = v58;
    v52 = v57;
    v63(v64, v61);
    if (v62)
    {

      sub_10002B894(v126, &unk_100992460);
      v65 = *(v124 + 8);
      v66 = v125;
      v65(v123, v125);
      sub_10002B894(v53 + v57, &unk_100992460);
      v65(v53, v66);
      return 0;
    }

LABEL_15:
    v73 = v124;
    v74 = v125;
    if ((*(v124 + 48))(v53 + v52, 1, v125) == 1)
    {

      sub_10002B894(v126, &unk_100992460);
      (*(v73 + 8))(v123, v74);
    }

    else
    {
      v75 = v110;
      sub_100094EE4(v53 + v52, v110);
      if (v55(v75, v74) == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v76 = v124;
        if ((v117 & 1) == 0)
        {
          type metadata accessor for SeparatorSupplementaryView();
          static UICollectionReusableView.elementKind.getter();
          sub_10002A400(v107, v107[3]);
          ShelfLayoutSpacingProvider.topPaddingValue(in:)();
          v82 = v81 * 0.5;
          v83 = String._bridgeToObjectiveC()();

          v84 = objc_opt_self();
          v85 = v120;
          v86 = [v84 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v83 alignment:1 absoluteOffset:{0.0, v82}];

          sub_10002B894(v126, &unk_100992460);
          v87 = *(v76 + 8);
          v87(v123, v74);
          sub_10002B894(v53 + v52, &unk_100992460);
          v87(v53, v74);
          return v86;
        }

        sub_10002B894(v126, &unk_100992460);
        (*(v76 + 8))(v123, v74);
      }

      else
      {

        sub_10002B894(v126, &unk_100992460);
        v80 = *(v124 + 8);
        v80(v123, v74);
        v80(v75, v74);
      }
    }

    sub_10002B894(v53, &qword_100972A48);
    return 0;
  }

  if (v56 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    goto LABEL_15;
  }

  v67 = v56;
  v68 = v126;
  v69 = v109;
  sub_100094EE4(v126, v109);
  v71 = v124;
  v70 = v125;
  if ((*(v124 + 48))(v69, 1, v125) == 1)
  {

    sub_10002B894(v68, &unk_100992460);
    v72 = *(v71 + 8);
    v72(v123, v70);
    sub_10002B894(v69, &unk_100992460);
LABEL_27:
    sub_10002B894(v53 + v52, &unk_100992460);
    v72(v53, v70);
    return 0;
  }

  v77 = v70;
  v78 = v108;
  (*(v71 + 32))(v108, v69, v77);
  v119 = *(v71 + 104);
  (v119)(v49, v67, v77);
  sub_1004B8D78(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = *(v71 + 8);
  v72(v49, v77);
  if (v79 & 1) != 0 || ((v119)(v49, enum case for Shelf.ContentType.productBadge(_:), v77), v89 = dispatch thunk of static Equatable.== infix(_:_:)(), v72(v49, v77), v90 = v78, (v89))
  {

    v72(v78, v77);
    sub_10002B894(v126, &unk_100992460);
    v72(v123, v77);
    v53 = v122;
    v70 = v77;
    goto LABEL_27;
  }

  v53 = v122;
  if (qword_10096E560 != -1)
  {
    swift_once();
  }

  v91 = sub_100295E2C(v78, qword_1009D1F68);
  v70 = v77;
  if ((v91 & 1) == 0)
  {

    v72(v90, v77);
    sub_10002B894(v126, &unk_100992460);
    v72(v123, v77);
    goto LABEL_27;
  }

  v92 = v107;
  v93 = sub_1004B4D30(v121);
  if (v93)
  {
    v94 = v93;
    v95 = 0.0;
    if ([v93 alignment] == 1)
    {
      v96 = [v94 layoutSize];
      v97 = [v96 heightDimension];

      [v97 dimension];
      v95 = v98;
    }
  }

  else
  {
    v95 = 0.0;
  }

  type metadata accessor for SeparatorSupplementaryView();
  static UICollectionReusableView.elementKind.getter();
  sub_10002A400(v92, v92[3]);
  ShelfLayoutSpacingProvider.topPaddingValue(in:)();
  v100 = -(v95 + v99);
  v101 = String._bridgeToObjectiveC()();

  v102 = objc_opt_self();
  v103 = v120;
  v104 = [v102 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v101 alignment:1 absoluteOffset:{0.0, v100}];

  v72(v90, v70);
  sub_10002B894(v126, &unk_100992460);
  v72(v123, v70);
  v105 = v122;
  sub_10002B894(&v122[v52], &unk_100992460);
  v72(v105, v70);
  return v104;
}

uint64_t sub_1004B7D60(uint64_t a1)
{
  v30 = type metadata accessor for ProductReview.ReviewSource();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v36 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v34 = *(v11 + 8);
  v35 = v11 + 8;
  v34(v18, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.productReview(_:), v3);
  sub_1004B8D78(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v37 == v39 && v38 == v40)
  {
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v9, v3);
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = *(v4 + 8);
    v21(v6, v3);
    v21(v9, v3);

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v23 = v34;
  v34(v15, v10);
  result = v38;
  if (v38)
  {

    v24 = v33;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v23(v24, v10);
    if (*(v39 + 16))
    {
      sub_10002C0AC(v39 + 32, &v37);

      sub_10002849C(&qword_100973D50);
      type metadata accessor for ProductReview();
      if (swift_dynamicCast())
      {
        v25 = v31;
        ProductReview.source.getter();

        v26 = v32;
        v27 = v30;
        v28 = (*(v32 + 88))(v25, v30) != enum case for ProductReview.ReviewSource.editorsChoice(_:);
        (*(v26 + 8))(v25, v27);
        return v28;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

id sub_1004B828C(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentsMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ProductReviewsMetadata();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1004B7D60(a1);
  result = 0;
  if (v14)
  {
    v23 = v11;
    v24 = v10;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.productReviews(_:))
    {
      (*(v3 + 96))(v5, v2);
      v17 = v23;
      v16 = v24;
      (*(v23 + 32))(v13, v5, v24);
      if (ProductReviewsMetadata.hasReviewSummary.getter())
      {
        type metadata accessor for InteractiveProductReviewsShelfHeaderView();
        v18 = sub_1002CB2A8(v13);
        static UICollectionReusableView.elementKind.getter();
        v19 = String._bridgeToObjectiveC()();

        v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v18 elementKind:v19 alignment:1];

        (*(v17 + 8))(v13, v16);
        return v20;
      }

      (*(v17 + 8))(v13, v16);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    type metadata accessor for ProductReviewsShelfHeaderView();
    v21 = sub_1005B2950(a1, 0, 0);
    static UICollectionReusableView.elementKind.getter();
    v22 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1];

    return v20;
  }

  return result;
}

uint64_t sub_1004B8724(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_1004B3724(a1, a2, a3, a4, v10);
}

uint64_t sub_1004B87DC(void *a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v3 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v6;
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Shelf.ContentType();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = sub_10002849C(&unk_1009731F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  if (sub_1004B7D60(a2))
  {
    v26 = 0;
    return v26 & 1;
  }

  v48 = v12;
  v49 = v15;
  v52 = v9;
  v50 = a2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v27 = *(v23 + 8);
  v51 = v22;
  v47 = v27;
  v27(v25, v22);
  v28 = v56;
  (*(v56 + 104))(v18, enum case for Shelf.ContentType.productMediaItem(_:), v10);
  sub_1004B8D78(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v29 = 1;
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v30 = *(v28 + 8);
  v30(v18, v10);
  v46 = v30;
  v30(v21, v10);

  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = [v55 elementKind];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {

    v37 = v51;
    v36 = v52;
    goto LABEL_12;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v37 = v51;
  v36 = v52;
  if ((v38 & 1) == 0)
  {
LABEL_14:
    v26 = 1;
    return v26 & 1;
  }

LABEL_12:
  v40 = v53;
  v39 = v54;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v39, &unk_10098FFB0);
  sub_100094E74(v40, v36);
  if ((*(v23 + 48))(v36, 1, v37) == 1)
  {
    sub_10002B894(v36, &unk_10098FFB0);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v42 = v48;
  ReadOnlyLens.subscript.getter();

  v47(v36, v37);
  v43 = v49;
  (*(v56 + 32))(v49, v42, v10);
  if (qword_10096E560 != -1)
  {
    swift_once();
  }

  v44 = sub_100295E2C(v43, qword_1009D1F68);
  v46(v43, v10);
  v26 = v44 ^ 1;
  return v26 & 1;
}

uint64_t sub_1004B8D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004B8DC4()
{
  result = qword_100974870;
  if (!qword_100974870)
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974870);
  }

  return result;
}

double sub_1004B8E1C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView();
  v4 = ShelfLayoutContext.traitEnvironment.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = sub_1000056A8(v5, qword_1009D3798);
  swift_getObjectType();
  sub_10070B598(v6, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1004B8FB4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&unk_100970EA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = type metadata accessor for MediumLockupLayout.Metrics();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_100631334(v12);

  MediumLockupLayout.Metrics.artworkSize.getter();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  Conditional.evaluate(with:)();
  (*(v5 + 8))(v7, v4);
  ComponentPrefetchSizing.init(size:contentMode:)();
  v14 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_1004B91C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v165 = a6;
  v160 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100987AF0);
  __chkstk_darwin(v10 - 8);
  v162 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = type metadata accessor for AdamId();
  __chkstk_darwin(v15 - 8);
  v143 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for OfferLabelStyle();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v139 - v19;
  v20 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v20 - 8);
  v159 = &v139 - v21;
  v157 = type metadata accessor for OfferButtonSubtitlePosition();
  v153 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10002849C(&unk_1009701A0);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v139 - v23;
  v24 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v24 - 8);
  v151 = &v139 - v25;
  v150 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v27 - 8);
  v152 = &v139 - v28;
  v142 = type metadata accessor for FloatingPointRoundingRule();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v30 - 8);
  v32 = &v139 - v31;
  v33 = type metadata accessor for ComponentLayoutOptions();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Separator();
  v163 = *(v37 - 8);
  v164 = v37;
  __chkstk_darwin(v37);
  v166 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a1;
  v39 = Lockup.heading.getter();
  v161 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v139 = a4;
      sub_100028BB8();
      v42 = static UIColor.primaryText.getter();
      sub_100632200(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = String._bridgeToObjectiveC()();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v166;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
  v47 = v166;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_100631DB4(v165, v47);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1004BABB8(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v163 + 56))(v32, 1, 1, v164);
    v50 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10005A354(v32, &v7[v50]);
    swift_endAccess();
    sub_1006330C8();
    sub_10002B894(v32, &unk_100970E10);
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    LOBYTE(v50) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      Separator.verticalOutset.getter();
      sub_10002A400(&v169, *(&v170 + 1));
      v59 = v140;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v141 + 8))(v59, v142);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_100007000(&v169);
    }

    v58 = v160;
    v57 = ObjectType;
  }

  else
  {
    v54 = v163;
    v53 = v164;
    (*(v163 + 16))(v32, v47, v164);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10005A354(v32, &v7[v55]);
    swift_endAccess();
    sub_1006330C8();
    sub_10002B894(v32, &unk_100970E10);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v160;
  }

  v60 = *&v57[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel];
  Lockup.title.getter();
  if (v61)
  {
    v62 = String._bridgeToObjectiveC()();
  }

  else
  {
    v62 = 0;
  }

  [v60 setText:v62];

  v63 = Lockup.offerDisplayProperties.getter();
  v64 = Lockup.buttonAction.getter();
  v65 = v148;
  v66 = v150;
  (*(v148 + 104))(v149, enum case for OfferButtonPresenterViewAlignment.left(_:), v150);
  (*(v65 + 56))(v151, 1, 1, v66);
  sub_1004BABB8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v67 = v152;
  AccessibilityConditional.init(value:axValue:)();
  v68 = sub_10002849C(&unk_100973240);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = v153;
  v70 = v157;
  (*(v153 + 104))(v154, enum case for OfferButtonSubtitlePosition.right(_:), v157);
  (*(v69 + 56))(v159, 1, 1, v70);
  sub_1004BABB8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v71 = v155;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v63, v64, 0, v67, v71, v58, 0, 0);

  (*(v156 + 8))(v71, v158);
  sub_10002B894(v67, &unk_100973230);
  if (Lockup.offerDisplayProperties.getter())
  {
    v72 = v144;
    OfferDisplayProperties.offerLabelStyle.getter();
    v73 = v146;
    v74 = v145;
    v75 = v147;
    (*(v146 + 104))(v145, enum case for OfferLabelStyle.none(_:), v147);
    sub_1004BABB8(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = *(v73 + 8);
    v77(v74, v75);
    v77(v72, v75);
    if ((v76 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      sub_10002849C(&unk_100973AF0);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      type metadata accessor for ASKBagContract();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v80 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v81 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v170 + 1) = v80;
      *&v169 = v81;
      v82 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter;
      v79 = ObjectType;
      swift_beginAccess();

      sub_100283DDC(&v169, &v79[v82]);
      swift_endAccess();
      [*&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel] frame];
      v172.origin.x = 0.0;
      v172.origin.y = 0.0;
      v172.size.width = 0.0;
      v172.size.height = 0.0;
      if (CGRectEqualToRect(v171, v172))
      {
        v83 = objc_opt_self();
        v84 = [v83 areAnimationsEnabled];
        [v83 setAnimationsEnabled:0];
        sub_1004BABB8(&unk_100987B10, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
        [v79 layoutIfNeeded];
        [v83 setAnimationsEnabled:v84];
      }

      else
      {
        sub_1004BABB8(&unk_100987B10, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
      }

      goto LABEL_29;
    }
  }

  v169 = 0u;
  v170 = 0u;
  v78 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter;
  v79 = ObjectType;
  swift_beginAccess();
  sub_100283DDC(&v169, &v79[v78]);
  swift_endAccess();
  sub_1004BA7CC(0, 0);
LABEL_29:
  v85 = v165;
  v86 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel;
  v87 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
  if (v87 && ([v87 isHidden] & 1) == 0 && (v88 = *&v79[v86]) != 0)
  {
    v89 = [v88 hasContent];
  }

  else
  {
    v89 = 0;
  }

  v90 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_10006C234(&v79[v90], &v169);
  v91 = *(&v170 + 1);
  sub_10002B894(&v169, &unk_1009711D0);
  v92 = [v85 traitCollection];
  v93 = UITraitCollection.isSizeClassCompact.getter();

  if (v93)
  {
    v94 = [v85 traitCollection];
    v95 = UITraitCollection.prefersAccessibilityLayouts.getter();

    Lockup.tertiaryTitle.getter();
    if (!v96)
    {
      v98 = v95 ^ 1;
      goto LABEL_51;
    }

    if ((v95 & 1) == 0)
    {
      if (v91)
      {
        v97 = 1;
      }

      else
      {
        v97 = v89;
      }

      v98 = 1;
      if ((v97 & 1) == 0)
      {
LABEL_41:
        sub_1006324B0();
        v99 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v99)
        {
          v100 = v99;
          v101 = String._bridgeToObjectiveC()();

          [v100 setText:v101];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    Lockup.tertiaryTitle.getter();
    if (!v102)
    {
      v98 = 0;
      goto LABEL_51;
    }
  }

  v98 = 0;
  if (v91)
  {
    v103 = v89;
  }

  else
  {
    v103 = 0;
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v104 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v105 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v105)
  {
    [v105 setHidden:1];
    v106 = *&v79[v104];
    if (v106)
    {
      [v106 setText:0];
    }
  }

LABEL_55:
  v107 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel];
  Lockup.subtitle.getter();
  if (v108)
  {
    v109 = String._bridgeToObjectiveC()();
  }

  else
  {
    v109 = 0;
  }

  [v107 setText:v109];

  v110 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v111 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v111 || ([v111 isHidden] & 1) != 0 || (v112 = *&v79[v110]) == 0)
  {
    if (v89)
    {
      if (v91)
      {
        goto LABEL_67;
      }
    }

    else if (!v91)
    {
      v114 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v113 = [v112 hasContent];
  if ((v89 & 1) == 0)
  {
    if (!v91)
    {
      v114 = 0;
      if (v113)
      {
        goto LABEL_92;
      }

LABEL_71:
      v115 = 0;
      goto LABEL_72;
    }

    if (v113)
    {
      v115 = 1;
      v114 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v114 = 1;
    goto LABEL_71;
  }

  if (!v91)
  {
    v114 = 1;
    v115 = 1;
    if (v113)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v113 & 1) == 0)
  {
LABEL_67:
    v114 = 2;
    goto LABEL_71;
  }

  v114 = 2;
LABEL_92:
  v115 = 1;
LABEL_72:
  v116 = [v107 hasContent];
  v117 = v161;
  if (!v116)
  {
LABEL_75:
    v119 = 1;
    goto LABEL_81;
  }

  v118 = v114 + v115;
  if (v98)
  {
    if (v118)
    {
      goto LABEL_75;
    }

    v119 = 0;
  }

  else
  {
    v119 = v118 > 1;
  }

LABEL_81:
  [v107 setHidden:v119];
  v120 = Lockup.subtitleTextColor.getter();
  if (!v120)
  {
    sub_100028BB8();
    v120 = static UIColor.secondaryText.getter();
  }

  v121 = v120;
  [v107 setTextColor:v120];

  v122 = &StringUserDefaultsDebugSetting;
  v123 = [v107 layer];
  Lockup.subtitleTextFilter.getter();
  v124 = type metadata accessor for TitleEffectFilterType();
  v125 = *(v124 - 8);
  v126 = *(v125 + 48);
  if (v126(v117, 1, v124) == 1)
  {
    sub_10002B894(v117, &unk_100987AF0);
LABEL_87:
    v133 = 0;
    goto LABEL_88;
  }

  TitleEffectFilterType.compositingFilter.getter();
  (*(v125 + 8))(v117, v124);
  v127 = *(&v170 + 1);
  if (!*(&v170 + 1))
  {
    goto LABEL_87;
  }

  v128 = sub_10002A400(&v169, *(&v170 + 1));
  v129 = *(v127 - 8);
  v130 = __chkstk_darwin(v128);
  v132 = &v139 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v129 + 16))(v132, v130);
  v133 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v129 + 8))(v132, v127);
  v122 = &StringUserDefaultsDebugSetting;
  sub_100007000(&v169);
LABEL_88:
  [v123 setCompositingFilter:v133];

  swift_unknownObjectRelease();
  v134 = [v79 contentView];
  v135 = [v134 v122[43].base_prots];

  v136 = v162;
  Lockup.subtitleTextFilter.getter();
  v137 = v126(v136, 1, v124) == 1;
  sub_10002B894(v136, &unk_100987AF0);
  [v135 setAllowsGroupBlending:v137];

  [v79 setNeedsLayout];
  return (*(v163 + 8))(v166, v164);
}

id sub_1004BA7CC(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v15 = static String.isNilOrEmpty(_:)();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_1004BA998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = type metadata accessor for Separator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100631DB4(a5, v9);
  Separator.height(in:)();
  (*(v7 + 8))(v9, v6);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_100633FAC(a5);
  v10 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = [v10 absoluteDimension:?];
  v12 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v12;
}

uint64_t sub_1004BABB8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004BAC00(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Separator();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100631DB4(a3, v13);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1004BABB8(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v8 + 8))(v10, v7);
  v15 = sub_100633FAC(a3);
  if (v14)
  {
    v16 = v15;
    Separator.verticalOutset.getter();
    sub_10002A400(v24, v24[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v20 + 8))(v6, v21);
    (*(v11 + 8))(v13, v23);
    sub_100007000(v24);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v16 = v17;
    (*(v11 + 8))(v13, v23);
  }

  return v16;
}

uint64_t sub_1004BAF44(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_100987B20;
  *(v2 + qword_100987B20) = a1 & 1;
  *(v2 + qword_100987B28) = a2 & 1;
  sub_1004BB478(&qword_1009880D0, type metadata accessor for TopChartDiffableSegmentViewController);
  ShelfBasedCollectionViewController.pageGridProvider.getter();
  sub_10002849C(&qword_10097AB20);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  result = swift_dynamicCast();
  if (result)
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_1004BB478(&qword_1009880D8, type metadata accessor for TopChartsSegmentPageGridProvider);
    PageGridCaching.invalidateCache()();
  }

  return result;
}

uint64_t sub_1004BB090@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_100987B20);
  v4 = *(v1 + qword_100987B28);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  type metadata accessor for PageGridCache();
  swift_allocObject();
  *(v6 + 24) = PageGridCache.init()();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_1004BB478(&qword_1009880C8, type metadata accessor for TopChartsSegmentPageGridProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_1004BB15C@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_1004BB424();
  a1[4] = result;
  *a1 = sub_1004BB404;
  a1[1] = v2;
  return result;
}

void *sub_1004BB1D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_1004BB4C0;
  v3[4] = v2;
  sub_1004BB478(&qword_1009880B8, type metadata accessor for TopChartSegmentShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_1004BB2A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong[qword_100987B20];

  return v1;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController()
{
  result = qword_100987B58;
  if (!qword_100987B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004BB3B0()
{
  result = qword_1009880B0;
  if (!qword_1009880B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009880B0);
  }

  return result;
}

unint64_t sub_1004BB424()
{
  result = qword_1009880C0;
  if (!qword_1009880C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009880C0);
  }

  return result;
}

uint64_t sub_1004BB478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004BB4C4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10096D110 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for OSLogger();
      sub_1000056A8(v11, qword_1009CE1E8);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_1000056E0(v15);
      (*(*(v14 - 1) + 16))(v12);
      static LogMessage.sensitive(_:)();
      sub_10003D444(v15);
      Logger.error(_:)();
    }
  }

  return sub_100007FAC(a1, a2, &unk_1008C5728, sub_1000089D4, &unk_1008C5740);
}

uint64_t sub_1004BB7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E568 != -1)
  {
    swift_once();
  }

  v14[1] = qword_1009880E0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1004BBAAC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C56F0;
  v12 = _Block_copy(aBlock);
  sub_10000827C(a1);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_10000794C(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

char *sub_1004BBAC4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_1004BBDBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for MediumAdLockupWithScreenshotsBackground();
      if (swift_dynamicCast())
      {
        MediumAdLockupWithScreenshotsBackground.lockup.getter();

        Lockup.impressionMetrics.getter();
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

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell()
{
  result = qword_100988120;
  if (!qword_100988120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BC124()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004BC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004BC80C(&qword_100974798, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1004BC278@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1004BC2D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1004BC390()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;
}

uint64_t sub_1004BC3F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  sub_1004BC80C(&qword_1009787F0, &type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v5)
  {
    sub_1001B49C8(v5, a2);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1004BC504(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1004BC5BC()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1004BC618(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1004BC6D8(uint64_t a1))()
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
  return sub_1004BC854;
}

uint64_t sub_1004BC80C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004BC860()
{
  v1 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1004BC960(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v246 = a4;
  v235 = a3;
  v234 = a2;
  v17 = sub_10002849C(&qword_10097AE68);
  __chkstk_darwin(v17 - 8);
  v205 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v213 = &v198 - v20;
  v21 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v21 - 8);
  v223 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v224 = &v198 - v24;
  v25 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v25 - 8);
  v222 = &v198 - v26;
  v27 = type metadata accessor for VideoControls();
  __chkstk_darwin(v27 - 8);
  v211 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v210 = &v198 - v30;
  __chkstk_darwin(v31);
  v217 = &v198 - v32;
  __chkstk_darwin(v33);
  v216 = &v198 - v34;
  v221 = type metadata accessor for VideoFillMode();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v209 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v215 = &v198 - v37;
  v226 = type metadata accessor for VideoConfiguration();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v212 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v238 = &v198 - v40;
  v204 = type metadata accessor for ScreenshotDisplayConfiguration();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v233 = &v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v42 - 8);
  v206 = &v198 - v43;
  v219 = type metadata accessor for AspectRatio();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v239 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for LockupMediaLayout.Metrics();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = &v198 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for LockupMediaLayout.DisplayType();
  v243 = *(v245 - 8);
  __chkstk_darwin(v245);
  v202 = &v198 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v207 = (&v198 - v48);
  __chkstk_darwin(v49);
  v242 = &v198 - v50;
  __chkstk_darwin(v51);
  v214 = &v198 - v52;
  __chkstk_darwin(v53);
  v244 = &v198 - v54;
  v55 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v55 - 8);
  v208 = &v198 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v240 = &v198 - v58;
  __chkstk_darwin(v59);
  v247 = &v198 - v60;
  v61 = type metadata accessor for ScreenshotsDisplayStyle();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v198 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v198 - v66;
  v68 = sub_10002849C(&unk_1009731E0);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v198 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = type metadata accessor for ItemLayoutContext();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_100279F24(a1, v71, v246);
  sub_10002B894(v71, &unk_1009731E0);
  sub_100005744(0, &qword_100970180);
  v75 = static UIColor.defaultBackground.getter();
  [v10 setBackgroundColor:v75];

  MixedMediaLockup.screenshotsDisplayStyle.getter();
  (v62[1].base_meths)(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_1004C0ED0(&qword_100978100, &type metadata accessor for ScreenshotsDisplayStyle);
  v249 = v67;
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  p_ivar_base_size = &v62->ivar_base_size;
  v77 = *&v62->ivar_base_size;
  v248 = v61;
  (v77)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &StringUserDefaultsDebugSetting;
LABEL_148:
    [v10 v62[41].base_meths];
    return (v77)(v249, v248);
  }

  v79 = MixedMediaLockup.screenshots.getter();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = _CocoaArrayWrapper.endIndex.getter();
    v79 = v76;
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v229 = v77;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v237 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v237 = *(v79 + 32);
    }
  }

  else
  {

    v237 = 0;
  }

  v201 = v10;
  v67 = *&v10[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots];
  v228 = MixedMediaLockup.alignedRegionArtwork.getter();
  v241 = MixedMediaLockup.alignedRegionVideo.getter();
  v81 = MixedMediaLockup.trailers.getter();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v76;
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v237;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v236 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v236 = *(v81 + 32);
    }
  }

  else
  {

    v236 = 0;
  }

  v83 = [v234 traitCollection];
  sub_1004BF564(v247);

  v77 = MixedMediaLockup.alignedRegionArtwork.getter();
  v76 = MixedMediaLockup.alignedRegionVideo.getter();
  v84 = MixedMediaLockup.screenshots.getter();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = _CocoaArrayWrapper.endIndex.getter();
    v84 = v88;
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v227 = &v62->ivar_base_size;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_52;
      }

      p_ivar_base_size = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    p_ivar_base_size = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:

    goto LABEL_27;
  }

  p_ivar_base_size = 0;
LABEL_27:
  v86 = MixedMediaLockup.trailers.getter();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = _CocoaArrayWrapper.endIndex.getter();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v93 = v243;
    v94 = v244;
    v95 = v245;
    (*(v243 + 104))(v244, enum case for LockupMediaLayout.DisplayType.none(_:), v245);
    goto LABEL_76;
  }

  if (v76 | v77)
  {
    v96 = v214;
    AspectRatio.init(_:_:)();

    v93 = v243;
    v95 = v245;
    (*(v243 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v245);
    v94 = v244;
    (*(v93 + 32))(v244, v96, v95);
    goto LABEL_76;
  }

  v91 = sub_1001B9B24(p_ivar_base_size, v87, 0, 1);
  v77 = v91;
  v10 = (v91 >> 62);
  if (v91 >> 62)
  {
LABEL_53:
    v200 = _CocoaArrayWrapper.endIndex.getter();
    if (p_ivar_base_size)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v200 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (p_ivar_base_size)
  {
LABEL_42:
    v92 = Screenshots.mediaPlatform.getter();
    goto LABEL_55;
  }

LABEL_54:
  v92 = 0;
LABEL_55:
  v198 = sub_1001B9E6C(v92);

  v235 = p_ivar_base_size;
  if (p_ivar_base_size)
  {
    v97 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v97 = 0;
  }

  v95 = v245;
  v98 = v206;
  v99 = v248;
  (v62->ivar_lyt)(v206, v249, v248);
  (v62->weak_ivar_lyt)(v98, 0, 1, v99);
  v199 = sub_1001BA394(v97, v98);

  sub_10002B894(v98, &unk_100973C90);
  if (v10)
  {
    v100 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v100 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v207;
  v102 = v235;
  if (!v100)
  {

LABEL_68:
    v105 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v106 = v243;
    v107 = *(v243 + 104);
    v234 = (v243 + 104);
    v207 = v107;
    (v107)(v101, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v95);
    v108 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v109 = *(v106 + 8);
    (v109)(v101, v95);
    v110 = v200;
    if (((v200 >= v108) & v199) != 0 || (v105 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v206 = v109, v111 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v245), v112 = LockupMediaLayout.DisplayType.numberOfViews.getter(), (v206)(v101, v111), ((v110 >= v112) & v198) != 0) || (v105 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v245), v114 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v115 = v113, v116 = v206, (v206)(v101, v115), v110 >= v114))
    {

      v104 = v214;
      v120 = v214;
      v121 = v105;
    }

    else
    {
      v199 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v117 = v116;
      v118 = v245;
      v207(v101);
      v119 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      (v117)(v101, v118);
      if (v110 == v119)
      {
        v104 = v214;
        v120 = v214;
        v121 = v199;
      }

      else
      {
        v121 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v104 = v214;
        v120 = v214;
      }
    }

    v95 = v245;
    (v207)(v120, v121, v245);
    v93 = v243;
    goto LABEL_75;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v103 = dispatch thunk of Artwork.isLandscape.getter();

  if ((v103 & 1) == 0)
  {
    goto LABEL_68;
  }

  v93 = v243;
  v104 = v214;
  (*(v243 + 104))(v214, enum case for LockupMediaLayout.DisplayType.landscape(_:), v95);
LABEL_75:
  v94 = v244;
  (*(v93 + 32))(v244, v104, v95);
  v10 = v237;
LABEL_76:
  v251[3] = &type metadata for CGFloat;
  v251[4] = &protocol witness table for CGFloat;
  v251[0] = 0x4021000000000000;
  sub_10002C0AC(v251, v250);
  v102 = *(v93 + 16);
  v102(v242, v94, v95);
  if (v241 | v228)
  {
    goto LABEL_87;
  }

  result = sub_1001B9B24(v10, v236, 0, 1);
  if (result >> 62)
  {
    v123 = result;
    v124 = _CocoaArrayWrapper.endIndex.getter();
    result = v123;
    if (v124)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

LABEL_87:
    AspectRatio.init(_:_:)();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  Artwork.size.getter();
  AspectRatio.init(_:_:)();

LABEL_88:
  sub_100031660(v247, v240, &unk_1009732A0);
  v125 = v230;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v251);
  v126 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v231;
  v128 = &v67[v126];
  v129 = v232;
  (*(v231 + 24))(v128, v125, v232);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v127 + 8))(v125, v129);
  if (v10)
  {
    v130 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v130 = 0;
  }

  type metadata accessor for Screenshots();
  v131 = v233;
  sub_10061B788(v130, v233);

  v132 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v131, &v67[v132]);
  swift_endAccess();
  sub_1001B7B88();
  sub_1001BABC8(v131);
  if (v10)
  {
    v10 = Screenshots.mediaPlatform.getter();
  }

  *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v10;

  sub_1001B7D8C();

  v133 = v248;
  (v62->ivar_lyt)(v64, v249, v248);
  v134 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (v62->name)(&v67[v134], v64, v133);
  swift_endAccess();
  v62 = &StringUserDefaultsDebugSetting;
  [v67 setNeedsLayout];
  v229(v64, v133);
  if (v241)
  {
    (*(v220 + 104))(v215, enum case for VideoFillMode.scaleAspectFill(_:), v221);

    Video.preview.getter();
    Artwork.size.getter();
    v135 = v240;
    AspectRatio.init(_:_:)();

    (*(v218 + 56))(v135, 0, 1, v219);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v136 = v222;
    Video.videoUrl.getter();
    v137 = type metadata accessor for URL();
    (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
    v138 = v224;
    Video.templateMediaEvent.getter();
    v139 = v223;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1004C0ED0(&qword_100973190, type metadata accessor for VideoView);
    v140 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v139, &unk_100973A50);
    sub_10002B894(v138, &unk_100973A50);
    sub_10002B894(v136, &qword_100982460);
    sub_10002B894(v251, &qword_10096FB90);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v142 = Strong;
      v143 = [Strong superview];
      if (v143)
      {
        v144 = v143;
        sub_100005744(0, &qword_100972EB0);
        v145 = v67;
        v146 = static NSObject.== infix(_:_:)();

        if ((v146 & 1) == 0)
        {
          goto LABEL_108;
        }

        v147 = swift_unknownObjectWeakLoadStrong();
        if (!v147)
        {
          goto LABEL_108;
        }

        v142 = v147;
        [v147 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v156 = swift_unknownObjectWeakLoadStrong();
    v62 = &StringUserDefaultsDebugSetting;
    if (v156)
    {
      v157 = v156;
      [v67 addSubview:v156];
    }

    sub_1001B8790();
    [v67 setNeedsLayout];

    v158 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v159 = *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v151 = v243;
    if (v159)
    {
      [v159 removeFromSuperview];
      v160 = *&v67[v158];
    }

    else
    {
      v160 = 0;
    }

    v161 = v244;
    *&v67[v158] = 0;

    [v67 setNeedsLayout];

    (*(v225 + 8))(v238, v226);
LABEL_147:
    [v67 v62[41].base_meths];

    (*(v151 + 8))(v161, v245);
    sub_10002B894(v247, &unk_1009732A0);
    [v67 setHidden:0];

    v10 = v201;
    v77 = v229;
    goto LABEL_148;
  }

  if (!v236)
  {
LABEL_134:
    v186 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v187 = *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    if (v187)
    {
      [v187 removeFromSuperview];
      v188 = *&v67[v186];
    }

    else
    {
      v188 = 0;
    }

    v151 = v243;
    v161 = v244;
    *&v67[v186] = 0;

    [v67 v62[41].base_meths];
    v189 = swift_unknownObjectWeakLoadStrong();
    if (!v189)
    {
      goto LABEL_144;
    }

    v190 = v189;
    sub_1004C0ED0(&qword_100973190, type metadata accessor for VideoView);
    v191 = [v190 superview];
    if (v191)
    {
      v192 = v191;
      sub_100005744(0, &qword_100972EB0);
      v193 = v67;
      v194 = static NSObject.== infix(_:_:)();

      v161 = v244;
      if ((v194 & 1) == 0)
      {
        goto LABEL_144;
      }

      v195 = swift_unknownObjectWeakLoadStrong();
      if (!v195)
      {
        goto LABEL_144;
      }

      v190 = v195;
      [v195 removeFromSuperview];
    }

    else
    {
      v161 = v244;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v196 = swift_unknownObjectWeakLoadStrong();
    if (v196)
    {
      v197 = v196;
      [v67 addSubview:v196];
    }

    sub_1001B8790();
    [v67 v62[41].base_meths];
    goto LABEL_147;
  }

  result = Trailers.videos.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v184 = result;
  v185 = _CocoaArrayWrapper.endIndex.getter();
  result = v184;
  if (!v185)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v148 = v205;
LABEL_105:

    v149 = v202;
    v150 = v245;
    v102(v202, v244, v245);
    v151 = v243;
    v152 = (*(v243 + 88))(v149, v150);
    v153 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v151 + 8))(v149, v150);
    if (v152 == v153)
    {
      v154 = 1;
      v155 = v213;
    }

    else
    {
      v162 = Trailers.mediaPlatform.getter();
      v155 = v213;
      sub_10061B788(v162, v213);

      v154 = 0;
    }

    v163 = v203;
    v164 = v204;
    (*(v203 + 56))(v155, v154, 1, v204);
    (*(v220 + 104))(v209, enum case for VideoFillMode.scaleAspectFill(_:), v221);
    Video.preview.getter();
    Artwork.size.getter();
    v165 = v208;
    AspectRatio.init(_:_:)();

    (*(v218 + 56))(v165, 0, 1, v219);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    sub_100031660(v155, v148, &qword_10097AE68);
    if ((*(v163 + 48))(v148, 1, v164) == 1)
    {
      sub_10002B894(v148, &qword_10097AE68);
    }

    else
    {
      sub_1001BABC8(v148);
    }

    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v166 = v222;
    Video.videoUrl.getter();
    v167 = type metadata accessor for URL();
    (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
    v168 = v224;
    Video.templateMediaEvent.getter();
    v169 = v223;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1004C0ED0(&qword_100973190, type metadata accessor for VideoView);
    v170 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v169, &unk_100973A50);
    sub_10002B894(v168, &unk_100973A50);
    sub_10002B894(v166, &qword_100982460);
    sub_10002B894(v251, &qword_10096FB90);
    v171 = swift_unknownObjectWeakLoadStrong();
    if (!v171)
    {
      goto LABEL_124;
    }

    v172 = v171;
    v173 = [v171 superview];
    if (v173)
    {
      v174 = v173;
      sub_100005744(0, &qword_100972EB0);
      v175 = v67;
      v176 = static NSObject.== infix(_:_:)();

      v151 = v243;
      if ((v176 & 1) == 0)
      {
        goto LABEL_124;
      }

      v177 = swift_unknownObjectWeakLoadStrong();
      if (!v177)
      {
        goto LABEL_124;
      }

      v172 = v177;
      [v177 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v178 = swift_unknownObjectWeakLoadStrong();
    if (v178)
    {
      v179 = v178;
      [v67 addSubview:v178];
    }

    sub_1001B8790();
    v62 = &StringUserDefaultsDebugSetting;
    [v67 setNeedsLayout];

    v180 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v181 = *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v182 = v213;
    if (v181)
    {
      [v181 removeFromSuperview];
      v183 = *&v67[v180];
    }

    else
    {
      v183 = 0;
    }

    *&v67[v180] = 0;

    [v67 setNeedsLayout];

    (*(v225 + 8))(v212, v226);
    sub_10002B894(v182, &qword_10097AE68);
    v161 = v244;
    goto LABEL_147;
  }

  v148 = v205;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

void sub_1004BEC78(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = type metadata accessor for ScreenshotsDisplayStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v70 - v14);
  v16 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v16 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = a4;
    v74 = v12;
    v78 = a1;
    v18 = *(a2 + 16);
    v79 = v4;
    v19 = *(v4 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
    v20 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
    swift_beginAccess();
    v76 = v19;
    v21 = *(v19 + v20);
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v15;
    v23 = v79;
    if (v22)
    {
      if (v22 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v24 = a3;
      v75 = v10;
      v71 = v9;

      v25 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v21 + v25 + 4);
        }

        v27 = v26;
        ++v25;
        v80 = v26;
        type metadata accessor for BorderedScreenshotView();
        sub_1004C0ED0(&qword_100973D78, type metadata accessor for BorderedScreenshotView);
        v28 = v27;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
        sub_10003D614(v81);
        v29 = *&v28[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
        v82.value.super.isa = 0;
        v82.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v82, v30);
      }

      while (v22 != v25);

      v9 = v71;
      v10 = v75;
      a3 = v24;
      v15 = v77;
      v23 = v79;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      [*(Strong + qword_100988CC0) setImage:0];
      v80 = v32;
      type metadata accessor for VideoView();
      sub_1004C0ED0(&qword_100992450, type metadata accessor for VideoView);
      v33 = v32;
      AnyHashable.init<A>(_:)();
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
      v23 = v79;

      sub_10003D614(v81);
    }

    v23 = *(v23 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v34 = *(v23 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v83.value.super.isa = 0;
    v83.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v83, v35);

    v36 = *(v23 + a2);
    v37 = type metadata accessor for ArtworkView();
    sub_1004C0ED0(&qword_100970E80, &type metadata accessor for ArtworkView);
    v38 = v36;
    v79 = a3;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    if (!Lockup.icon.getter())
    {
LABEL_19:
      MixedMediaLockup.screenshotsDisplayStyle.getter();
      v42 = v74;
      (*(v10 + 104))(v74, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v9);
      sub_1004C0ED0(&qword_100978100, &type metadata accessor for ScreenshotsDisplayStyle);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v10 + 8);
      v44 = v10 + 8;
      v45 = v46;
      v46(v42, v9);
      if (v43)
      {
LABEL_46:
        v45(v15, v9);
        return;
      }

      v75 = v44;
      v47 = Lockup.title.getter();
      v49 = v48;
      v50 = Lockup.subtitle.getter();
      v52 = v51;
      v53 = Lockup.searchAdOpportunity.getter();
      if (v53)
      {
        v54 = SearchAdOpportunity.searchAd.getter();

        if (v54)
        {
          v55 = SearchAd.advertisingText.getter();
          v53 = v56;
        }

        else
        {
          v55 = 0;
          v53 = 0;
        }
      }

      else
      {
        v55 = 0;
      }

      v57 = [v73 traitCollection];
      sub_100349130(v47, v18, v49, v50, v52, v55, v53, v57);

      v58 = MixedMediaLockup.alignedRegionArtwork.getter();
      v59 = MixedMediaLockup.alignedRegionVideo.getter();
      v60 = MixedMediaLockup.screenshots.getter();
      if (v60 >> 62)
      {
        v66 = v60;
        v61 = _CocoaArrayWrapper.endIndex.getter();
        v60 = v66;
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v79;
      v15 = v77;
      if (v61)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v63 = *(v60 + 32);
        }
      }

      else
      {

        v63 = 0;
      }

      v64 = MixedMediaLockup.trailers.getter();
      if (v64 >> 62)
      {
        v67 = v64;
        v68 = _CocoaArrayWrapper.endIndex.getter();
        v64 = v67;
        if (v68)
        {
          goto LABEL_35;
        }
      }

      else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v64 & 0xC000000000000001) != 0)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_38;
        }

        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v65 = *(v64 + 32);

LABEL_38:

LABEL_45:
          v69 = [v73 traitCollection];
          sub_1005B6FA0(v58, v59, v63, v65, v69, v62, v15);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v65 = 0;
      goto LABEL_45;
    }

    v75 = v37;
    v39 = qword_10096EE80;
    v21 = *(v23 + a2);
    if (v39 == -1)
    {
LABEL_16:
      v40 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v40, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v21 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v21 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v41 = *(v23 + a2);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v15 = v77;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_1004BF564@<X0>(uint64_t a1@<X8>)
{
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v2 = type metadata accessor for AspectRatio();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_15:
    if (qword_10096E570 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for AspectRatio();
    v21 = v20;
    v22 = qword_1009D1F88;
    goto LABEL_18;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      static AspectRatio.square.getter();
      v19 = type metadata accessor for AspectRatio();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_10096E578 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for AspectRatio();
  v21 = v20;
  v22 = qword_1009D1FA0;
LABEL_18:
  v23 = sub_1000056A8(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

uint64_t sub_1004BF828(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AspectRatio();
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  return AspectRatio.init(_:_:)();
}

uint64_t sub_1004BF884(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = type metadata accessor for LockupMediaLayout.DisplayType();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScreenshotsDisplayStyle();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SmallSearchLockupLayout();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LabelPlaceholderCompatibility();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OfferButtonMetrics();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  CGSize.subtracting(insets:)();
  v35 = Lockup.title.getter();
  v149 = v36;
  v150 = v35;
  v37 = Lockup.subtitle.getter();
  v151 = v38;
  v152 = v37;
  if (Lockup.searchAdOpportunity.getter() && (v39 = SearchAdOpportunity.searchAd.getter(), , v39))
  {
    v40 = SearchAd.advertisingText.getter();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v42 = [v170 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_1000056A8(v176, qword_1009CDC00);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v46 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v46 = qword_100991028;
  }

  v47 = sub_1000056A8(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v158 = v42;

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v172 = v34;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v50 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v148 = LayoutViewPlaceholder.init(representing:)();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = type metadata accessor for Feature();
  v213[3] = v53;
  v171 = sub_1004C0ED0(&qword_100972E50, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_1000056E0(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  isFeatureEnabled(_:)();
  sub_100007000(v213);
  v58 = v159;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_1000056E0(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  isFeatureEnabled(_:)();
  sub_100007000(v212);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_1000056E0(v211);
  v63(v66, v144, v53);
  isFeatureEnabled(_:)();
  sub_100007000(v211);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v64(v58, v59);
  sub_1000AE138(0, 0);
  swift_allocObject();
  v67 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138(0, 0);
  swift_allocObject();
  v68 = LayoutViewPlaceholder.init(representing:)();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_10002C0AC(v213, v205);
  sub_10002C0AC(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v197 = &protocol witness table for LayoutViewPlaceholder;
  v196 = v50;
  v195 = v70;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v184 = 0u;
  *&v183[40] = 0u;
  sub_10002C0AC(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007B0B70;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1004C0ED0(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v164 + 8))(v71, v76);
  sub_100007000(v211);
  sub_100007000(v212);
  sub_100007000(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0 || (sub_1001A41FC() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for StaticDimension();
  sub_1000056A8(v79, qword_1009D2430);
  v80 = v139;
  static Dimensions.defaultRoundingRule.getter();
  v81 = v170;
  AnyDimension.value(in:rounded:)();
  (*(v140 + 8))(v80, v141);
  v82 = MixedMediaLockup.alignedRegionArtwork.getter();
  v83 = MixedMediaLockup.alignedRegionVideo.getter();
  v84 = MixedMediaLockup.screenshots.getter();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = _CocoaArrayWrapper.endIndex.getter();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = MixedMediaLockup.trailers.getter();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = _CocoaArrayWrapper.endIndex.getter();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_1004BF564(v143);

  v67 = MixedMediaLockup.alignedRegionArtwork.getter();
  v68 = MixedMediaLockup.alignedRegionVideo.getter();
  v93 = MixedMediaLockup.screenshots.getter();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = _CocoaArrayWrapper.endIndex.getter();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = MixedMediaLockup.trailers.getter();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = _CocoaArrayWrapper.endIndex.getter();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = _CocoaArrayWrapper.endIndex.getter();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v174 = v83;
  if ((v101 & 1) == 0)
  {

    v104 = v142;
    v106 = v135;
    v105 = v136;
    (*(v142 + 104))(v136, enum case for LockupMediaLayout.DisplayType.none(_:), v135);
LABEL_88:
    v128 = v176;
    type metadata accessor for LockupMediaView();
    v129 = v143;
    v130 = v81;
    v131 = v168;
    sub_1005B8730(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10002B894(v129, &unk_1009732A0);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    AspectRatio.init(_:_:)();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_1001B9B24(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
LABEL_55:
    v103 = Screenshots.mediaPlatform.getter();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_1001B9E6C(v103);

  v173 = v82;
  if (v77)
  {
    v108 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v108 = 0;
  }

  v109 = v166;
  v110 = v133;
  v111 = v78;
  v112 = v167;
  (*(v166 + 16))(v133, v111, v167);
  (*(v109 + 56))(v110, 0, 1, v112);
  v113 = sub_1001BA394(v108, v110);

  sub_10002B894(v110, &unk_100973C90);
  if (!v83)
  {
    result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_76:

    v114 = dispatch thunk of Artwork.isLandscape.getter();

    if (v114)
    {

      v104 = v142;
      v115 = v134;
      v106 = v135;
      (*(v142 + 104))(v134, enum case for LockupMediaLayout.DisplayType.landscape(_:), v135);
      v105 = v136;
LABEL_87:
      (*(v104 + 32))(v105, v115, v106);
      goto LABEL_88;
    }

LABEL_80:
    v116 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v117 = v142;
    v118 = v132;
    v119 = v135;
    v171 = *(v142 + 104);
    v171(v132, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v135);
    v120 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v122(v118, v119), v172 >= v123))
    {

      v115 = v134;
      v171(v134, v116, v119);
      v81 = v170;
      v106 = v119;
    }

    else
    {
      v124 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v171(v118, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v119);
      v125 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v122(v118, v119);
      v106 = v119;
      if (v172 == v125)
      {
        v115 = v134;
        v126 = v134;
        v127 = v124;
      }

      else
      {
        v127 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v115 = v134;
        v126 = v134;
      }

      v171(v126, v127, v119);
      v81 = v170;
    }

    v104 = v142;
    v105 = v136;
    v82 = v173;
    goto LABEL_87;
  }

  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0ED0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004C0F18(void *a1)
{
  sub_1004C1750();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v1[qword_100988130];
    if (v4)
    {
      v5 = *&v1[qword_100988130];
    }

    else
    {
      v5 = [v1 contentView];
      v4 = 0;
    }

    v6 = v4;
    [v5 addSubview:v3];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1004C0FEC(void *a1)
{
  v3 = *&v1[qword_100988130];
  if (v3)
  {
    v4 = *&v1[qword_100988130];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v3;
    goto LABEL_7;
  }

  v4 = [v1 contentView];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v3;
  v6 = [a1 superview];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  sub_100028004();
  v8 = static NSObject.== infix(_:_:)();

  v4 = v7;
LABEL_8:

  return v8 & 1;
}

void sub_1004C10A8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1004C0F18(0);
}

void sub_1004C1104(double *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setFrame:{*a1, a1[1], a1[2], a1[3]}];
  }
}

void sub_1004C117C(void *a1)
{
  v3 = *(v1 + qword_100988130);
  *(v1 + qword_100988130) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = a1;
  if (Strong)
  {
    [v4 addSubview:Strong];
  }
}

id sub_1004C120C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_1009D1FC0];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_100988130] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_1004C12B0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_100988130);
}

void sub_1004C12F0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_100988130);
}

uint64_t type metadata accessor for FramedVideoCollectionViewCell()
{
  result = qword_100988160;
  if (!qword_100988160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1004C13FC(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004C1450;
}

void sub_1004C1450(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1004C0F18(v2);
  }

  else
  {
    sub_1004C0F18(*a1);
  }
}

uint64_t sub_1004C14B8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004C18B8(&qword_100988300, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004C152C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004C18B8(&qword_100988300, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

void (*sub_1004C15B8(uint64_t *a1))(void *a1)
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
  sub_1004C18B8(&qword_100988300, type metadata accessor for FramedVideoCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000BD370;
}

void sub_1004C1750()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *&v0[qword_100988130];
  if (v2)
  {
    v9 = *&v0[qword_100988130];
    if (Strong)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v2;
    goto LABEL_11;
  }

  v9 = [v0 contentView];
  if (!Strong)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1004C18B8(&qword_100973190, type metadata accessor for VideoView);
  v3 = v2;
  v4 = [Strong superview];
  if (v4)
  {
    v5 = v4;
    sub_100028004();
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v9 = v7;
    [v7 removeFromSuperview];
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_1004C18B8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004C1900(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = v10;
  v12 = type metadata accessor for AppEventView();

  return sub_10016862C(v11, v8, a6, a4, v12, ObjectType);
}

id sub_1004C1984(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100168944(*a1, a3);

  return [v3 setNeedsLayout];
}

uint64_t sub_1004C19DC(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_10002A400(a1, v6);

  return sub_100168C50(v8, a2, v5, v6, v7);
}

uint64_t sub_1004C1B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C1B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v10 = v9;
  v11 = [a5 traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_100438080(&unk_1009CEDC8, a5);
    if (qword_10096EB98 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AppEventCardLayout.Metrics(0);
    v18 = sub_1000056A8(v17, qword_1009D3058);
    sub_100153D2C(v18, a1, a4, a5, ObjectType);
    goto LABEL_28;
  }

  v14 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    do
    {
      sub_10002C0AC(v16, v32);
      sub_100005A38(v32, v30);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for AppEvent();
      if ((swift_dynamicCast() & 1) != 0 && v31)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v33;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (!(v14 >> 62))
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v27 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v28 = [v27 absoluteDimension:?];
    v29 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

    return v29;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_17:
  result = type metadata accessor for AppEventView();
  if (v19 >= 1)
  {
    v21 = result;
    v22 = 0;
    v23 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v14 + 8 * v22 + 32);
      }

      ++v22;
      sub_10016862C(v10, v24, a5, a4, v21, ObjectType);
      v26 = v25;

      if (v23 <= v26)
      {
        v23 = v26;
      }
    }

    while (v19 != v22);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

id sub_1004C1F28()
{
  result = [objc_opt_self() systemGray6Color];
  qword_1009D1FC8 = result;
  return result;
}

void sub_1004C1F64()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_1009D1FD0 = v1;
}

id sub_1004C1FD0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8AppStore38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_10096E580;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_1009D1FC8];
  v13 = [v12 layer];
  if (qword_10096E588 != -1)
  {
    swift_once();
  }

  v14 = [qword_1009D1FD0 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_1004C2248(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
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

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC8AppStore38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_10096E588 != -1)
    {
      swift_once();
    }

    v7 = [qword_1009D1FD0 CGColor];
    [v6 setBorderColor:v7];
  }
}

void sub_1004C2468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits])
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
      if (qword_10096E598 != -1)
      {
        swift_once();
      }

      v12 = qword_100988398;
    }

    else
    {
      if (qword_10096E590 != -1)
      {
        swift_once();
      }

      v12 = qword_100988380;
    }

    v13 = sub_1000056A8(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    AspectRatio.height(fromWidth:)();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    Artwork.config(using:)();
    Artwork.backgroundColor.getter();
    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_1004C3664(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    swift_unknownObjectRelease();
  }
}

double sub_1004C272C(double a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v13 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v13 = qword_100988380;
  }

  v14 = sub_1000056A8(v6, v13);
  (*(v7 + 16))(v9, v14, v6);
  (*(v7 + 32))(v12, v9, v6);
  AspectRatio.height(fromWidth:)();
  (*(v7 + 8))(v12, v6);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for StaticDimension();
  sub_1000056A8(v15, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  (*(v3 + 8))(v5, v2);
  return a1;
}

uint64_t sub_1004C2A24()
{
  result = dispatch thunk of EditorialStoryCard.clickAction.getter();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_1004C2A64()
{
  type metadata accessor for ArtworkView();
  sub_1004C3664(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1004C2AF8(uint64_t a1)
{
  result = sub_1004C3664(&qword_1009883B0, type metadata accessor for EditorialStoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_1004C2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = type metadata accessor for ShelfBackground();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a5 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits] = v13;
  swift_unknownObjectRelease();
  v14 = *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel];
  EditorialStoryCard.heading.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel];
  EditorialStoryCard.title.getter();
  v18 = String._bridgeToObjectiveC()();

  v41 = v17;
  [v17 setText:v18];

  v19 = *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel];
  EditorialStoryCard.description.getter();
  v40 = v14;
  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:{v21, v40}];

  dispatch thunk of EditorialStoryCard.shelfBackground.getter();
  v22 = (*(v9 + 88))(v12, v8);
  if (v22 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v12, v8);
    v23 = *(sub_10002849C(&qword_100978420) + 48);
    v24 = Artwork.backgroundColor.getter();

    v25 = type metadata accessor for ShelfBackgroundStyle();
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
      if (qword_10096ED48 != -1)
      {
        swift_once();
      }

      v33 = qword_1009D33D8;
      v24 = 0;
      goto LABEL_24;
    }

    (*(v9 + 96))(v12, v8);
    v24 = *v12;
    v28 = *(sub_10002849C(&qword_100972A40) + 48);
    v29 = type metadata accessor for ShelfBackgroundStyle();
    v30 = *(*(v29 - 8) + 8);
    v27 = v24;
    v30(v12 + v28, v29);
  }

  v31 = v27;
  if (UIColor.isDark(threshold:)())
  {
    if (qword_10096ED48 != -1)
    {
      swift_once();
    }

    v32 = qword_1009D33D8;
  }

  else
  {
    if (qword_10096ED38 != -1)
    {
      swift_once();
    }

    v32 = qword_1009D33C8;
  }

  v33 = v32;

LABEL_24:
  [v40 setTextColor:v33];

  if (v24)
  {
    v34 = v24;
    if (UIColor.isDark(threshold:)())
    {
      if (qword_10096ED50 != -1)
      {
        swift_once();
      }

      v35 = qword_1009D33E0;
    }

    else
    {
      if (qword_10096ED40 != -1)
      {
        swift_once();
      }

      v35 = qword_1009D33D0;
    }

    v36 = v35;
  }

  else
  {
    if (qword_10096ED50 != -1)
    {
      swift_once();
    }

    v36 = qword_1009D33E0;
  }

  [v41 setTextColor:v36];

  if (v24)
  {
    v37 = v24;
    if (UIColor.isDark(threshold:)())
    {
      if (qword_10096ED50 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D33E0;
    }

    else
    {
      if (qword_10096ED40 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D33D0;
    }

    v39 = v38;
  }

  else
  {
    if (qword_10096ED50 != -1)
    {
      swift_once();
    }

    v39 = qword_1009D33E0;
    v37 = 0;
  }

  [v19 setTextColor:v39];

  [v6 setNeedsLayout];
}

id sub_1004C322C()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspectRatio();
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
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v13 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v13 = qword_100988380;
  }

  v14 = sub_1000056A8(v4, v13);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  AspectRatio.height(fromWidth:)();
  v16 = v15;
  (*(v5 + 8))(v10, v4);
  v17 = objc_opt_self();
  v18 = [v17 absoluteDimension:v12];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for StaticDimension();
  sub_1000056A8(v19, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v21 = v20;
  (*(v1 + 8))(v3, v0);
  v22 = [v17 absoluteDimension:round(v16) + v21];
  v23 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v22];

  v24 = [objc_opt_self() itemWithLayoutSize:v23];
  v25 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007B0B70;
  *(v26 + 32) = v24;
  sub_1002FF658();
  v27 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v25 verticalGroupWithLayoutSize:v23 subitems:isa];

  return v29;
}

uint64_t sub_1004C3664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C36AC()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  type metadata accessor for LinkableText();
  sub_1004C3958();
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v8[1])
  {
    type metadata accessor for BaseObjectGraph();
    ComponentModel.pairedWith<A>(objectGraph:)();
    v6 = sub_10002849C(&unk_100993030);
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1003773A0(v4, v1 + v7);
    swift_endAccess();
    sub_1006926A8();

    return sub_100377410(v4);
  }

  return result;
}

uint64_t sub_1004C3830@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1004C388C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1004C3958()
{
  result = qword_100973290;
  if (!qword_100973290)
  {
    type metadata accessor for LinkableText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973290);
  }

  return result;
}

id sub_1004C39B0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1004C56C0();
  *&v0[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;

  sub_1004C41B4();
  result = *&v0[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_1004C3A2C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  sub_100005644(v4, qword_1009D1FD8);
  v24 = sub_1000056A8(v4, qword_1009D1FD8);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D10D0);
  v26 = *(*(v5 - 8) + 16);
  v31 = v5;
  v26(v3, v6, v5);
  v7 = enum case for FontSource.useCase(_:);
  v25 = v1[13];
  v23 = v1 + 13;
  v25(v3, enum case for FontSource.useCase(_:), v0);
  v32 = type metadata accessor for StaticDimension();
  v54[3] = v32;
  v54[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v54);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v51);
  v9 = v1[2];
  v27 = v1 + 2;
  v28 = v9;
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v29 = v1 + 1;
  v30 = v10;
  v10(v3, v0);
  v22 = v6;
  v11 = v5;
  v12 = v26;
  v26(v3, v6, v11);
  HIDWORD(v21) = v7;
  v13 = v25;
  v25(v3, v7, v0);
  v52 = v32;
  v53 = &protocol witness table for StaticDimension;
  sub_1000056E0(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v48);
  v28(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v30(v3, v0);
  v12(v3, v6, v31);
  v13(v3, v7, v0);
  v15 = v32;
  v49 = v32;
  v50 = &protocol witness table for StaticDimension;
  sub_1000056E0(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v45);
  v17 = v28;
  v28(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18 = v30;
  v30(v3, v0);
  v26(v3, v22, v31);
  v25(v3, HIDWORD(v21), v0);
  v46 = v15;
  v47 = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v42);
  v17(v19, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18(v3, v0);
  v43 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v41 = &protocol witness table for Double;
  v42[0] = 0;
  v40 = &type metadata for Double;
  v38 = &protocol witness table for Double;
  v39 = 0;
  v37 = &type metadata for Double;
  v36 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  return PrivacyHeaderLayout.Metrics.init(bodyTopSpace:bodyBottomSpace:supplementaryItemsTopSpace:supplementaryItemsPadding:supplementaryItemsBottomSpace:actionButtonLeadingMargin:bodyOnlyBottomMargin:maxTextWidth:)();
}

id sub_1004C3F10()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10002849C(&unk_100993030);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100031660(&v1[v9], v4, &unk_100993020);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100993020);
    [*&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    ObjectGraphPair.value.getter();
    ObjectGraphPair.objectGraph.getter();
    v11 = LinkableText.linkedSubstrings.getter();
    v12 = sub_1000D6F24(v11, sub_1000C17B0);

    v13 = LinkableText.styledText.getter();
    sub_1002F6004(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1004C41B4()
{
  v1 = v0;
  v64 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10002849C(&qword_100973288);
  v4 = *(v62 - 8);
  *&v5 = __chkstk_darwin(v62).n128_u64[0];
  v61 = &v49 - v6;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems];
  v54 = *(v7 + 16);
  if (v54)
  {
    v8 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
    v59 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v60 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemReusePool;
    v58 = v4 + 16;
    v57 = enum case for DirectionalTextAlignment.leading(_:);
    v56 = (v2 + 104);
    v55 = v4 + 8;

    v9 = 0;
    v52 = v0;
    v51 = v4;
    v50 = v7;
    v53 = v8;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v4 + 72);
      v67 = v9;
      v12 = v61;
      v11 = v62;
      (*(v4 + 16))(v61, v59 + v10 * v9, v62);
      swift_beginAccess();
      sub_10002849C(&qword_100988470);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v13 = v76;
      (*v56)(v63, v57, v64);
      v14 = v13;
      dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

      v15 = [v1 contentView];
      v66 = v14;
      [v15 addSubview:v14];

      ObjectGraphPair.value.getter();
      v16 = PrivacyHeaderSupplementaryItem.bodyText.getter();

      v17 = ObjectGraphPair.objectGraph.getter();
      (*(v4 + 8))(v12, v11);
      v65 = v16;
      v18 = LinkableText.linkedSubstrings.getter();
      v19 = *(v18 + 16);
      if (v19)
      {
        v76 = _swiftEmptyArrayStorage;
        sub_100143F44(0, v19, 0);
        v75 = v76;
        v20 = v18 + 64;
        v21 = _HashTable.startBucket.getter();
        v22 = 0;
        v68 = v18 + 72;
        v69 = v19;
        v70 = v18 + 64;
        while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v18 + 32))
        {
          v25 = v21 >> 6;
          if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_30;
          }

          v26 = *(v18 + 36);
          v71 = v22;
          v72 = v26;
          v27 = (*(v18 + 48) + 16 * v21);
          v28 = *v27;
          v29 = v27[1];
          v30 = *(*(v18 + 56) + 8 * v21);
          v31 = v75;
          v76 = v75;
          v33 = *(v75 + 2);
          v32 = *(v75 + 3);
          v73 = v28;
          v74 = v33 + 1;

          if (v33 >= v32 >> 1)
          {
            sub_100143F44((v32 > 1), v74, 1);
            v31 = v76;
          }

          v34 = v73;
          *(v31 + 2) = v74;
          v75 = v31;
          v35 = &v31[4 * v33];
          *(v35 + 4) = v34;
          *(v35 + 5) = v29;
          *(v35 + 6) = v30;
          *(v35 + 7) = v17;
          v23 = 1 << *(v18 + 32);
          if (v21 >= v23)
          {
            goto LABEL_31;
          }

          v20 = v70;
          v36 = *(v70 + 8 * v25);
          if ((v36 & (1 << v21)) == 0)
          {
            goto LABEL_32;
          }

          if (v72 != *(v18 + 36))
          {
            goto LABEL_33;
          }

          v37 = v36 & (-2 << (v21 & 0x3F));
          if (v37)
          {
            v23 = __clz(__rbit64(v37)) | v21 & 0x7FFFFFFFFFFFFFC0;
            v24 = v69;
          }

          else
          {
            v38 = v25 << 6;
            v39 = v25 + 1;
            v24 = v69;
            v40 = (v68 + 8 * v25);
            while (v39 < (v23 + 63) >> 6)
            {
              v42 = *v40++;
              v41 = v42;
              v38 += 64;
              ++v39;
              if (v42)
              {
                sub_1000CAE24(v21, v72, 0);
                v23 = __clz(__rbit64(v41)) + v38;
                goto LABEL_7;
              }
            }

            sub_1000CAE24(v21, v72, 0);
          }

LABEL_7:
          v22 = v71 + 1;
          v21 = v23;
          if (v71 + 1 == v24)
          {

            v1 = v52;
            v4 = v51;
            v7 = v50;
            v43 = v75;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_24:
      v44 = LinkableText.styledText.getter();
      v45 = v66;
      sub_1002F6004(v44, 0, v43);

      v46 = v53;
      swift_beginAccess();
      v47 = v45;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v48 = v67 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v9 = v48;
      if (v48 == v54)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    [v1 setNeedsLayout];
  }
}

id sub_1004C4848@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v2, qword_1009D10D0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  result = sub_1002F5B8C(v5, 0, 0);
  *a1 = result;
  return result;
}

id sub_1004C4998(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Separator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = *a1;
  swift_beginAccess();
  sub_100031660(&v2[v15], v7, &unk_100970E10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &unk_100970E10);
    result = *&v2[*a2];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *a2;
    v18 = *&v2[*a2];
    if (v18)
    {
      (*(v9 + 16))(v11, v14, v8);
      v19 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v20 = *(v9 + 24);
      v21 = v18;
      v20(&v18[v19], v11, v8);
      swift_endAccess();
      v22 = v21;
      [v22 setNeedsLayout];
      v23 = *(v9 + 8);
      v23(v11, v8);
      [v22 setHidden:0];

      return (v23)(v14, v8);
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      v24 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v32 = *(v9 + 40);
      v26 = v24;
      v32(&v24[v25], v11, v8);
      swift_endAccess();

      v27 = *&v2[v17];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v2[v17];
      }

      else
      {
        v28 = 0;
      }

      *&v2[v17] = v26;
      v29 = v26;

      v30 = [v2 contentView];
      [v30 addSubview:v29];

      [v2 setNeedsLayout];
      return (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

uint64_t sub_1004C4D88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = type metadata accessor for LayoutRect();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PrivacyHeaderLayout();
  v10 = *(v30 - 8);
  *&v11 = __chkstk_darwin(v30).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "layoutSubviews", v11);
  v14 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096E5A0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v6, qword_1009D1FD8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v16;
  swift_beginAccess();
  v17 = v16;

  sub_1002A6234(v18);

  v19 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparatorView];
  if (v19)
  {
    v20 = type metadata accessor for SeparatorView();
    v21 = &protocol witness table for UIView;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v22;
  v40 = v20;
  v41 = v21;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (v23)
  {
    v24 = type metadata accessor for SeparatorView();
    v25 = &protocol witness table for UIView;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v34 = 0;
    v33 = 0;
  }

  v32 = v23;
  v35 = v24;
  v36 = v25;
  v26 = v19;
  v27 = v23;
  PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
  PrivacyHeaderLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v31);
  return (*(v10 + 8))(v13, v30);
}

uint64_t type metadata accessor for PrivacyHeaderCollectionViewCell()
{
  result = qword_100988448;
  if (!qword_100988448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C5440()
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1002883B4();
    if (v1 <= 0x3F)
    {
      sub_1004C55EC();
      if (v2 <= 0x3F)
      {
        sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004C55EC()
{
  if (!qword_100988458)
  {
    sub_10002D1A8(&qword_100988460);
    sub_1004C565C();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_100988458);
    }
  }
}

unint64_t sub_1004C565C()
{
  result = qword_100988468;
  if (!qword_100988468)
  {
    sub_10002D1A8(&qword_100988460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100988468);
  }

  return result;
}

uint64_t sub_1004C56C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v13 = v2;
    v6 = UIAccessibilityTraitLink;
    v7 = UIAccessibilityTraitStaticText;

    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      swift_beginAccess();
      sub_10002849C(&qword_100988470);
      ReusePool.recycle(_:)();
      swift_endAccess();
      [v10 setAttributedText:0];
      *&v10[qword_10097F910] = 0;

      v11 = qword_10097F908;
      swift_beginAccess();
      *&v10[v11] = _swiftEmptyArrayStorage;

      if (*(*&v10[v11] + 16))
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      [v10 setAccessibilityTraits:v12];
      [v10 removeFromSuperview];
    }

    while (v5 != v8);

    v2 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_1004C58BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AutomationSemantics();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionalTextAlignment();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100988460);
  __chkstk_darwin(v11);
  v12 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  v15 = sub_10002849C(&unk_100993030);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for DynamicTypeLinkedLabel();
  ViewRecycler.init()();
  sub_1004C565C();
  ReusePool.init(recycler:limit:)();
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparatorView] = 0;
  v17 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
  v18 = type metadata accessor for Separator();
  v19 = *(*(v18 - 8) + 56);
  v19(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView] = 0;
  v19(&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator], 1, 1, v18);
  v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader] = 0;
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v7, qword_1009D10D0);
  (*(v8 + 16))(v10, v20, v7);
  v21 = objc_allocWithZone(v16);
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel] = sub_1002F5B8C(v10, 0, 0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setClipsToBounds:0];

  v24 = [v22 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel];
  (*(v34 + 104))(v33, enum case for DirectionalTextAlignment.leading(_:), v35);
  v27 = v26;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v28 = *&v22[v25];
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v38, &unk_1009711D0);
  sub_10002B894(v39, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v36 + 8))(v4, v37);
  v30 = [v22 contentView];

  [v30 addSubview:*&v22[v25]];
  return v22;
}

void sub_1004C5E88()
{
  v1 = sub_10002849C(&qword_100988460);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  v5 = sub_10002849C(&unk_100993030);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = _swiftEmptyArrayStorage;
  type metadata accessor for DynamicTypeLinkedLabel();
  ViewRecycler.init()();
  sub_1004C565C();
  ReusePool.init(recycler:limit:)();
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparatorView) = 0;
  v6 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
  v7 = type metadata accessor for Separator();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView) = 0;
  v8(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004C60CC()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel);
  if (qword_10096CF38 != -1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel);
    swift_once();
    v2 = v4;
  }

  [v2 setTextColor:qword_1009725B8];
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron);
  *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron) = 0;
  sub_10007B3E8(v3);
  *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight) = 0;
}

char *sub_1004C61A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView]];

  return v13;
}

id sub_1004C6574(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "isHighlighted");
  *(v4 + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = v5;
  if (v5 && *(v4 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight) == 1)
  {
    if (qword_10096CF40 != -1)
    {
      swift_once();
    }

    v6 = &qword_1009725C0;
  }

  else
  {
    if (qword_10096CF38 != -1)
    {
      swift_once();
    }

    v6 = &qword_1009725B8;
  }

  return [*(v4 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel) setTextColor:*v6];
}

uint64_t type metadata accessor for FootnoteCollectionViewCell()
{
  result = qword_1009884A0;
  if (!qword_1009884A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C67B4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D2040);
  sub_1000056A8(v0, qword_1009D2040);
  return AspectRatio.init(_:_:)();
}

uint64_t sub_1004C6808()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009D2058 = result;
  return result;
}

uint64_t sub_1004C684C()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.placeholderBackground.getter();
  qword_1009D2060 = result;
  return result;
}

uint64_t sub_1004C6914()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20B0);
  sub_1000056A8(v4, qword_1009D20B0);
  if (qword_10096E5C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2068);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004C6AE8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20C8);
  sub_1000056A8(v4, qword_1009D20C8);
  if (qword_10096E5C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2080);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004C6CBC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20E0);
  sub_1000056A8(v4, qword_1009D20E0);
  if (qword_10096E5D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2098);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1004C6E90(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel];
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

id sub_1004C6F74()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  }

  else
  {
    (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
    sub_100005744(0, &qword_1009730E0);
    if (qword_10096E5C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for FontUseCase();
    sub_1000056A8(v9, qword_1009D2068);
    v10 = [v0 traitCollection];
    v11 = v0;
    v12 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v13 = [objc_opt_self() configurationWithFont:v12];
    v14 = static SystemImage.load(_:with:)();

    (*(v2 + 8))(v5, v1);
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = *&v11[v6];
    *&v11[v6] = v15;
    v8 = v15;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

void (*sub_1004C719C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004C71F0;
}

void sub_1004C71F0(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100005744(0, &qword_100972EB0);
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [v20 addSubview:v19];
  }

  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_1004C74AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v46 - v15;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon] = 0;
  v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView] = 0;
  if (qword_10096E5C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D2068);
  v19 = *(v17 - 8);
  v48 = *(v19 + 16);
  v48(v16, v18, v17);
  v47 = *(v19 + 56);
  v47(v16, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v11 + 104);
  v46[1] = v11 + 104;
  v21(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = type metadata accessor for DynamicTypeLabel();
  v23 = objc_allocWithZone(v22);
  v46[0] = v10;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E5C8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v17, qword_1009D2080);
  v48(v16, v24, v17);
  v47(v16, 0, 1, v17);
  v21(v13, v20, v46[0]);
  v25 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v26 = type metadata accessor for EditorialSearchResultContentView();
  v49.receiver = v5;
  v49.super_class = v26;
  v27 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel;
  v33 = qword_10096E5D0;
  v34 = *&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_1000056A8(v17, qword_1009D2098);
  v48(v16, v35, v17);
  v47(v16, 0, 1, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v31[v32] setLineBreakMode:4];
  v36 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel;
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel]];
  v37 = sub_1004C6F74();
  [v31 addSubview:v37];

  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel]];
  [v31 addSubview:*&v31[v32]];
  v38 = *&v31[v36];
  v39 = [v31 tintColor];
  [v38 setTextColor:v39];

  v40 = *&v31[v32];
  sub_100005744(0, &qword_100970180);
  v41 = v40;
  v42 = static UIColor.secondaryText.getter();
  [v41 setTextColor:v42];

  v43 = *&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  v44 = [v31 tintColor];

  [v43 setTintColor:v44];
  return v31;
}

void sub_1004C7B08()
{
  v1 = v0;
  v152 = type metadata accessor for FloatingPointRoundingRule();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3 = COERCE_DOUBLE(type metadata accessor for StaticDimension());
  v146 = *(v3 - 8);
  __chkstk_darwin(v3);
  v153 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100975CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v141 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v155 = &v139 - v9;
  __chkstk_darwin(v10);
  v12 = (&v139 - v11);
  __chkstk_darwin(v13);
  v150 = (&v139 - v14);
  __chkstk_darwin(v15);
  v17 = &v139 - v16;
  v18 = type metadata accessor for EditorialSearchResultContentView();
  v163.receiver = v0;
  v163.super_class = v18;
  v157 = v18;
  objc_msgSendSuper2(&v163, "layoutSubviews");
  sub_10002849C(&qword_100975C98);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v147 = v20;
  v148 = v21;
  v22 = v21 + v20;
  v23 = *(v5 + 48);
  v142 = v1;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel];
  *(v21 + v20) = v24;
  v25 = qword_10096E5D8;
  v149 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v3, qword_1009D20B0);
  v159 = *(v146 + 16);
  (*&v159)(v22 + v23, v26, v3);
  *&v160 = *(v5 + 48);
  v27 = *&v142[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel];
  *(v22 + v19) = v27;
  v28 = v5;
  v29 = qword_10096E5E0;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v3, qword_1009D20C8);
  (*&v159)(v22 + v19 + *&v160, v31, v3);
  v154 = v19;
  v32 = (v22 + 2 * v19);
  v156 = v28;
  v33 = *(v28 + 48);
  v34 = *&v142[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
  *v32 = v34;
  v35 = qword_10096E5E8;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v3, qword_1009D20E0);
  v160 = *&v3;
  (*&v159)(&v32[v33], v37, v3);
  *&v159 = v146 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 3;
  v145 = v22;
  v40 = v22;
  v41 = v154;
  do
  {
    sub_1004CD234(v40, v17);
    sub_1004CD234(v17, v12);
    v42 = *v12;
    v43 = *(v156 + 48);
    v44 = [*v12 isHidden];

    v158 = **&v159;
    (*&v158)(v12 + v43, *&v160);
    if (v44)
    {
      sub_10002B894(v17, &qword_100975CA0);
    }

    else
    {
      sub_1004CD2A4(v17, v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100144514(0, *(v38 + 2) + 1, 1);
        v38 = v162[0];
      }

      v47 = *(v38 + 2);
      v46 = *(v38 + 3);
      if (v47 >= v46 >> 1)
      {
        sub_100144514(v46 > 1, v47 + 1, 1);
        v38 = v162[0];
      }

      *(v38 + 2) = v47 + 1;
      sub_1004CD2A4(v155, v147 + v38 + v47 * v41);
    }

    v40 += v41;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  v48 = v156;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = *(v38 + 2);
  v50 = v142;
  if (v49)
  {
    v155 = *(v48 + 48);
    v51 = sub_100005744(0, &qword_100978360);
    v143 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon;
    v52 = v147 + v38;
    v147 = (v146 + 32);
    v148 = v51;
    v145 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon;
    v146 = *&v144 + 8;
    v53 = 0.0;
    v139 = v52;
    v140 = v49;
    v54 = *&v160;
    v55 = v153;
    do
    {
      v57 = v150;
      sub_1004CD234(v52, v150);
      v58 = *v57;
      (*v147)(v55, v57 + v155, v54);
      v59 = v58;
      LayoutMarginsAware<>.layoutFrame.getter();
      [v59 sizeThatFits:{v60, v61}];
      v63 = v62;
      v65 = v64;
      LayoutMarginsAware<>.layoutFrame.getter();
      if (v63 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      v68 = [v50 traitCollection];
      v69 = v151;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v71 = v70;

      (*v146)(v69, v152);
      LayoutMarginsAware<>.layoutFrame.getter();
      v72 = v53 + CGRectGetMinY(v165);
      [v59 firstBaselineFromTop];
      v74 = v72 + v71 - v73;
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && v50[v145] == 1)
      {
        v75 = sub_1004C6F74();
        [v75 bounds];
        v77 = v76;
        v144 = v67;
        v79 = v78;

        LayoutMarginsAware<>.layoutFrame.getter();
        MinX = CGRectGetMinX(v166);
        v81 = *&v50[v143];
        LayoutMarginsAware<>.layoutFrame.getter();
        CGRect.withLayoutDirection(in:relativeTo:)();
        [v81 setFrame:?];

        v167.origin.x = MinX;
        v167.origin.y = v65 * 0.5 + v74 - v79 * 0.5;
        v167.size.width = v77;
        v167.size.height = v79;
        CGRectGetMaxX(v167);
      }

      else
      {
        LayoutMarginsAware<>.layoutFrame.getter();
        CGRectGetMinX(v164);
      }

      v56 = v154;
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v59 setFrame:?];

      v55 = v153;
      v54 = *&v160;
      (*&v158)(v153, *&v160);
      v53 = v53 + v71;
      v52 += v56;
      --v49;
    }

    while (v49);
    if (v140 > *(v38 + 2))
    {
      __break(1u);
      return;
    }

    v82 = v141;
    sub_1004CD234(v139 + (v140 - 1) * v56, v141);

    v83 = *v82;
    v84 = *(v156 + 48);
    [*v82 frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v168.origin.x = v86;
    v168.origin.y = v88;
    v168.size.width = v90;
    v168.size.height = v92;
    MaxY = CGRectGetMaxY(v168);
    (*&v158)(v82 + v84, v54);
  }

  else
  {

    MaxY = 0.0;
    v54 = *&v160;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v94 = MaxY + CGRectGetMinY(v169);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v54, qword_1009D2430);
  v95 = [v50 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1007B0B70;
  *(v96 + 32) = v95;
  v97 = v95;
  v98 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v100 = v99;

  v101 = v94 + v100;
  LayoutMarginsAware<>.layoutFrame.getter();
  v102 = CGRectGetMinX(v170);
  LayoutMarginsAware<>.layoutFrame.getter();
  v103 = CGRectGetMaxY(v171) - v101;
  if (qword_10096E5A8 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for AspectRatio();
  sub_1000056A8(v104, qword_1009D2040);
  AspectRatio.width(fromHeight:)();
  v106 = v105;
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v172);
  AspectRatio.height(fromWidth:)();
  if (Width < v106)
  {
    v106 = Width;
    v103 = v108;
  }

  v109 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
  if (v109)
  {
    v110 = v109;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    ArtworkView.frame.setter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v112 setFrame:?];
  }

  v113 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v113)
  {
    v114 = v113;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = type metadata accessor for ArtworkGrid();
    v161.receiver = v114;
    v161.super_class = v123;
    objc_msgSendSuper2(&v161, "setFrame:", v116, v118, v120, v122);
    sub_1006B4F58();
    [v114 setNeedsLayout];
  }

  v124 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
  if (v124)
  {
    v125 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
    if (v125)
    {
      v126 = v124;
      v127 = v125;
      [v127 setFrame:{v102, v101, v106, v103}];
      [v127 bounds];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      ArtworkView.imageSize.getter();
      v159 = v102;
      v160 = v101;
      v173.origin.x = v129;
      v173.origin.y = v131;
      v173.size.width = v133;
      v173.size.height = v135;
      CGRectGetMidX(v173);
      v158 = v106;
      v174.origin.x = v129;
      v174.origin.y = v131;
      v174.size.width = v133;
      v174.size.height = v135;
      CGRectGetMidY(v174);
      LayoutMarginsAware<>.layoutFrame.getter();
      v106 = v158;
      v102 = v159;
      v101 = v160;
      CGRect.withLayoutDirection(in:relativeTo:)();
      ArtworkView.frame.setter();

      v50 = v142;
    }
  }

  v136 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v136)
  {
    v137 = v136;
    sub_1002C65CC(v162);
    sub_1002C97E0(v50, v162, v106, v103);
    sub_1001A927C(v162);
    v175.origin.x = v102;
    v175.origin.y = v101;
    v175.size.width = v106;
    v175.size.height = v103;
    CGRectGetMinX(v175);
    v176.size.width = v106;
    v176.origin.x = v102;
    v176.origin.y = v101;
    v176.size.height = v103;
    CGRectGetMinY(v176);
    v138 = v137;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v138 setFrame:?];
  }
}

id sub_1004C8938()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_100005744(0, &qword_100972EB0);
    v9 = v1;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_1004CCC9C(0);
  v14 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  return [v1 setNeedsLayout];
}

void sub_1004C8B48(id a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v11 = sub_1004C6F74();
    sub_100005744(0, &qword_1009730E0);
    if (qword_10096E5C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for FontUseCase();
    sub_1000056A8(v12, qword_1009D2068);
    v13 = [v1 traitCollection];
    v14 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v15 = [objc_opt_self() configurationWithFont:v14];
    [v11 setPreferredSymbolConfiguration:v15];

    return;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1004C8E10(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MediaOverlayStyle();
  v186 = *(v3 - 8);
  __chkstk_darwin(v3);
  v185 = v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v184 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Artwork.Crop();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v8 - 8);
  v197 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v196 = v178 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v195 = v178 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  v194 = v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v193 = v178 - v17;
  v18 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v18 - 8);
  v192 = v178 - v19;
  v191 = type metadata accessor for VideoFillMode();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VideoConfiguration();
  v198 = *(v21 - 8);
  __chkstk_darwin(v21);
  v203 = v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for AdamId();
  v212 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&qword_100983ED8);
  __chkstk_darwin(v24 - 8);
  v201 = v178 - v25;
  v205 = type metadata accessor for ArtworkGridType();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v187 = v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v200 = v178 - v28;
  v29 = type metadata accessor for EditorialSearchResultType();
  v214 = *(v29 - 8);
  v215 = v29;
  __chkstk_darwin(v29);
  v211 = v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v207 = v178 - v32;
  __chkstk_darwin(v33);
  v35 = v178 - v34;
  v210 = type metadata accessor for AspectRatio();
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v37 = v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AspectFitMeasurable();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialSearchResult();
  sub_1004CD1EC(&qword_100973D90, 255, &type metadata accessor for EditorialSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!*&v219[0])
  {
    return result;
  }

  v180 = v21;
  v206 = *&v219[0];
  v179 = v3;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v208 = *&v219[0];
  type metadata accessor for ArtworkIconFetcher();
  v199 = a2;
  BaseObjectGraph.optional<A>(_:)();
  v43 = *&v219[0];
  v44 = v213;
  if (*&v219[0])
  {
    *&v218 = v213;
    type metadata accessor for EditorialSearchResultContentView();
    sub_1004CD1EC(&qword_100988558, v45, type metadata accessor for EditorialSearchResultContentView);

    v46 = v44;
    AnyHashable.init<A>(_:)();
    dispatch thunk of ArtworkIconFetcher.forgetFetches(for:)();

    sub_10003D614(v219);
  }

  v202 = v43;
  v178[1] = type metadata accessor for EditorialSearchResultContentView();
  LayoutMarginsAware<>.layoutFrame.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v47 = *&v219[0];
  if (qword_10096E5A8 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v48 = v210;
    v49 = sub_1000056A8(v210, qword_1009D2040);
    v209[2](v37, v49, v48);
    AspectFitMeasurable.init(_:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1007B0B70;
    *(v50 + 32) = v47;
    v51 = v47;
    v52 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v54 = v53;
    v56 = v55;

    (*(v39 + 8))(v41, v38);
    v38 = v206;
    EditorialSearchResult.type.getter();
    v57 = (*(v214 + 88))(v35, v215);
    v58 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon;
    v188 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v57 == enum case for EditorialSearchResultType.category(_:) || v57 == enum case for EditorialSearchResultType.collection(_:) || v57 == enum case for EditorialSearchResultType.story(_:) || v57 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v44[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v60 = sub_1004C6F74();
      [v60 setHidden:(v44[v58] & 1) == 0];

      [v44 setNeedsLayout];
    }

    else
    {
      v44[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v59 = sub_1004C6F74();
      [v59 setHidden:(v44[v58] & 1) == 0];

      [v44 setNeedsLayout];
      (*(v214 + 8))(v35, v215);
    }

    v61 = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
    sub_1004C6E90(v61, v62);
    EditorialSearchResult.title.getter();
    v64 = v63;
    v65 = *&v44[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel];
    v66 = v63 ? String._bridgeToObjectiveC()() : 0;
    [v65 setText:v66];

    [v65 setHidden:v64 == 0];
    [v44 setNeedsLayout];
    EditorialSearchResult.subtitle.getter();
    v68 = v67;
    v69 = *&v44[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
    v70 = v67 ? String._bridgeToObjectiveC()() : 0;
    [v69 setText:v70];

    [v69 setHidden:v68 == 0];
    [v44 setNeedsLayout];
    v71 = EditorialSearchResult.collectionAdamIds.getter();
    if (!v71)
    {
      break;
    }

    v72 = v71;
    v73 = v201;
    EditorialSearchResult.artworkGridType.getter();
    v74 = v204;
    v47 = v205;
    if ((*(v204 + 48))(v73, 1, v205) == 1)
    {

      sub_10002B894(v73, &qword_100983ED8);
      break;
    }

    v94 = v200;
    (*(v74 + 32))(v200, v73, v47);
    v95 = v187;
    (*(v74 + 16))(v187, v94, v47);
    v96 = (*(v74 + 88))(v95, v47);
    if (v96 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v96 == enum case for ArtworkGridType.large(_:))
    {
      v97 = 1;
    }

    else if (v96 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v97 = 2;
    }

    else
    {
      if (v96 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v74 + 8))(v95, v47);
LABEL_32:
        v97 = 0;
        goto LABEL_50;
      }

      v97 = 3;
    }

LABEL_50:
    v110 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v111 = sub_1006B52EC(v97, 0.0, 0.0, 0.0, 0.0);
    sub_1006AD188();
    v112 = v111[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
    v113.f64[0] = v54;
    v114 = sub_1006B4CD4(v112, v113, v56);
    v35 = *(v72 + 2);
    if (v114 < v35)
    {
      v115.f64[0] = v54;
      v116 = sub_1006B4CD4(v112, v115, v56);
      if ((v116 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v116)
      {
        if (v35 == v116)
        {
LABEL_67:
          v41 = v72;
        }

        else
        {
          v203 = v111;
          sub_1005E7D94(v72, &v72[(*(v212 + 80) + 32) & ~*(v212 + 80)], 0, (2 * v116) | 1);
          v41 = v117;
LABEL_55:

          v44 = v213;
          v111 = v203;
        }

        *&v111[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = *(v41 + 2);
        sub_1006B5128();
        if (v202)
        {
          v122 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v123 = swift_allocObject();
          v123[2] = v111;
          v123[3] = v122;
          v124 = v208;
          v123[4] = v208;
          v125 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v126 = swift_allocObject();
          v126[2] = v111;
          v126[3] = v125;
          v126[4] = v124;
          *&v219[0] = v44;
          sub_1004CD1EC(&qword_100988558, v127, type metadata accessor for EditorialSearchResultContentView);
          v128 = v44;
          v129 = v111;
          swift_retain_n();

          v130 = v128;
          v131 = v129;
          AnyHashable.init<A>(_:)();
          dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

          sub_10002B894(&v218, &qword_10096FB90);
        }

        else
        {

          v220 = 0;
          memset(v219, 0, sizeof(v219));
        }

        v102 = v207;
        sub_10002B894(v219, &qword_10096FB90);
        v132 = v111;
        sub_1004CCE64(v111);

        (*(v204 + 8))(v200, v205);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v114 <= v35)
    {
      goto LABEL_67;
    }

    v210 = v114 - v35;
    if (v114 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v203 = v111;

      v41 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_100034724(0, (v35 + 1), 1, v72);
LABEL_60:
    v118 = 0;
    v39 = (*(v212 + 80) + 32) & ~*(v212 + 80);
    v209 = &v72[v39];
    v44 = (v212 + 16);
    v37 = (v212 + 32);
    while (1)
    {
      v119 = v118 % v35;
      if (v118 % v35 < 0)
      {
        break;
      }

      if (v119 >= *(v72 + 2))
      {
        goto LABEL_103;
      }

      v47 = v72;
      v120 = *(v212 + 72);
      (*(v212 + 16))(v216, v209 + v120 * v119, v217);
      v38 = *(v41 + 2);
      v121 = *(v41 + 3);
      if (v38 >= v121 >> 1)
      {
        v41 = sub_100034724(v121 > 1, v38 + 1, 1, v41);
      }

      ++v118;
      *(v41 + 2) = v38 + 1;
      (*v37)(&v41[v39 + v38 * v120], v216, v217);
      v72 = v47;
      if (v210 == v118)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (EditorialSearchResult.editorialVideo.getter())
  {
    (*(v190 + 104))(v189, enum case for VideoFillMode.scaleAspectFill(_:), v191);
    Video.preview.getter();
    Artwork.size.getter();
    v75 = v192;
    AspectRatio.init(_:_:)();

    (v209[7])(v75, 0, 1, v210);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v76 = v195;
    Video.videoUrl.getter();
    v77 = type metadata accessor for URL();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v78 = v196;
    Video.templateMediaEvent.getter();
    v79 = v197;
    Video.templateClickEvent.getter();
    v80 = type metadata accessor for VideoView();
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView);
    v217 = v80;
    v81 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v79, &unk_100973A50);
    sub_10002B894(v78, &unk_100973A50);
    sub_10002B894(v76, &qword_100982460);
    sub_10002B894(v219, &qword_10096FB90);
    v82 = v213;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = Strong;
      v85 = [Strong superview];
      if (!v85)
      {
        goto LABEL_26;
      }

      v86 = v85;
      sub_100005744(0, &qword_100972EB0);
      v87 = v82;
      v88 = static NSObject.== infix(_:_:)();

      if (v88)
      {
        v89 = swift_unknownObjectWeakLoadStrong();
        if (v89)
        {
          v84 = v89;
          [v89 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v90 = swift_unknownObjectWeakLoadStrong();
    if (v90)
    {
      v91 = v90;
      [v82 addSubview:v90];
    }

    [v82 setNeedsLayout];

    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v92;
      Video.preview.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();

      sub_1004CD1EC(&unk_1009840E0, 255, type metadata accessor for VideoView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      (*(v198 + 8))(v203, v180);
    }

    else
    {
      (*(v198 + 8))(v203, v180);
    }

    v102 = v207;
  }

  else if (EditorialSearchResult.editorialArtwork.getter())
  {
    type metadata accessor for ArtworkView();
    v98 = static ArtworkView.cardArtworkView.getter();
    [v98 setContentMode:2];
    Artwork.config(using:)();
    sub_1004CD1EC(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v99 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView;
    v100 = v213;
    v101 = *&v213[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
    v102 = v207;
    v103 = v98;
    if (v101)
    {
      [v101 removeFromSuperview];
      v104 = *&v100[v99];
    }

    else
    {
      v104 = 0;
    }

    *&v100[v99] = v98;
    v109 = v98;

    [v100 addSubview:v109];
    [v100 setNeedsLayout];
  }

  else
  {
    v105 = EditorialSearchResult.iconArtwork.getter();
    v102 = v207;
    if (v105)
    {
      v106 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(fitting:)();
      (v209[1])(v37, v210);
      v107 = v181;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v182 + 8))(v107, v183);
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v106 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      sub_1004CD1EC(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      v108 = v106;
      sub_1004CCC9C(v106);
    }
  }

LABEL_72:
  EditorialSearchResult.type.getter();
  (*(v214 + 104))(v211, v188, v215);
  sub_1004CD1EC(&qword_100983EE8, 255, &type metadata accessor for EditorialSearchResultType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v219[0] == v218)
  {
    v133 = v215;
    v134 = *(v214 + 8);
    v134(v211, v215);
    v134(v102, v133);

LABEL_75:
    v139 = EditorialSearchResult.appEventFormattedDates.getter();
    if (v139 >> 62)
    {
      v140 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = v213;
    if (v140)
    {
      v141 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v142 = *&v213[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v142)
      {
        goto LABEL_79;
      }

      v155 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v156 = *&v138[v141];
      if (v156)
      {
        [v156 removeFromSuperview];
        v157 = *&v138[v141];
      }

      else
      {
        v157 = 0;
      }

      *&v138[v141] = v155;
      v168 = v155;

      if (v168)
      {
        v169 = v168[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
        v168[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 6;
        sub_1002C3F30(v169);
        [v138 addSubview:v168];
      }

      [v138 setNeedsLayout];

      v170 = *&v138[v141];
      if (v170)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v171 = v170;
        BaseObjectGraph.optional<A>(_:)();
        v172 = *&v219[0];
        v173 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v174 = *&v171[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v175 = v174;
        sub_1002C55E4(v172);
        v176 = *&v171[v173];
        *&v171[v173] = v172;
        v177 = v172;

        sub_1002C5748(v174);
        v142 = *&v138[v141];
        if (v142)
        {
LABEL_79:
          v143 = v142;
          [v138 bringSubviewToFront:v143];
          v144 = EditorialSearchResult.appEventFormattedDates.getter();
          type metadata accessor for AppEventFormattedDatePresenter(0);
          swift_allocObject();
          v145 = v143;
          v146 = sub_1006E6CE8(v144, v142, &off_1008BC738);

          v147 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
          swift_beginAccess();
          *&v145[v147] = v146;
        }
      }
    }

    v148 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v149 = *&v138[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v149)
    {
      v150 = v149;
      v151 = EditorialSearchResult.tintColor.getter();
      v152 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v153 = *&v150[v152];
      if (v153)
      {
        v154 = v153;
        [v154 setBackgroundColor:v151];
      }

      else
      {

        v150 = v151;
      }

      v158 = *&v138[v148];
      if (v158)
      {
        v159 = v158;
        v160 = v185;
        EditorialSearchResult.mediaOverlayStyle.getter();
        v161 = MediaOverlayStyle.userInterfaceStyle.getter();
        (*(v186 + 8))(v160, v179);
        [v159 setOverrideUserInterfaceStyle:v161];
      }
    }

    v162 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView;
    v163 = *&v138[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
    if (v163)
    {
      v164 = v163;
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v165 = *&v138[v162];
      if (v165)
      {
        v166 = v165;
        if (!EditorialSearchResult.tintColor.getter())
        {
          v167 = [objc_opt_self() clearColor];
        }

        dispatch thunk of RoundedCornerView.borderColor.setter();
      }
    }
  }

  else
  {
    v135 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v136 = v215;
    v137 = *(v214 + 8);
    v137(v211, v215);
    v137(v102, v136);

    v138 = v213;
    if (v135)
    {
      goto LABEL_75;
    }
  }

  [v138 setNeedsLayout];
}