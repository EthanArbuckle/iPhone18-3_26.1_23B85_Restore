double sub_1002FCEF0(double a1)
{
  v2 = v1;
  v4 = sub_100750B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100754724();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_10000C518(&qword_100934360);
  __chkstk_darwin(v13 - 8);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_100743334();
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  v20 = [v19 text];
  if (v20)
  {
    v21 = v5;
    v22 = v20;
    v54 = sub_100753094();
    v65 = v23;

    v5 = v21;
  }

  else
  {
    v54 = 0;
    v65 = 0;
  }

  v60 = v5;
  (*(v5 + 56))(v17, 1, 1, v4);
  v66 = [v19 attributedText];
  v24 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel] text];
  if (v24)
  {
    v25 = v24;
    sub_100753094();
    v64 = v26;
  }

  else
  {
    v64 = 0;
  }

  v27 = v18;
  v28 = v2[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider];
  v58 = v2[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider];
  v59 = v28;
  [v2 layoutMargins];
  if (v18)
  {
    v29 = v18;
    [v29 size];
    [v29 size];
  }

  v30 = [v2 traitCollection];
  v31 = qword_1009208C8;
  v57 = v30;
  if (v66)
  {
    v32 = v17;
    v33 = v66;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = sub_100750534();
    v35 = sub_10000D0FC(v34, qword_100931C70);
    v36 = *(v34 - 8);
    (*(v36 + 16))(v12, v35, v34);
    (*(v36 + 56))(v12, 0, 1, v34);
    v37 = sub_10074F3F4();
    v68 = v37;
    v69 = sub_1001FC0C4();
    v38 = sub_10000D134(v67);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
    sub_10074FC74();
    sub_10000C620(v67);
    sub_10074CCA4();

    sub_10000C8CC(v12, &unk_100928A40);
    v17 = v32;
    v27 = v18;
    v39 = v62;
    v40 = v60;
    v41 = v57;
  }

  else
  {
    v41 = v30;
    if (qword_1009208C8 != -1)
    {
      swift_once();
    }

    v42 = sub_100750534();
    sub_10000D0FC(v42, qword_100931C70);
    v43 = sub_10074F3F4();
    v68 = v43;
    v69 = sub_1001FC0C4();
    v44 = sub_10000D134(v67);
    (*(*(v43 - 8) + 104))(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    sub_10074FC74();
    sub_10000C620(v67);
    sub_10074CCB4();
    v39 = v62;
    v40 = v60;
  }

  v56 = v27;
  v45 = v61;
  v46 = v63;
  if (qword_1009208D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v4, qword_100931C88);
  sub_100750584();
  if (v64)
  {
    if (qword_1009208E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v4, qword_100931CD0);
    sub_1007502D4();
    sub_100750AD4();
    v47 = *(v45 + 8);
    v47(v9, v39);
    if (qword_1009208F0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v4, qword_100931CE8);
    sub_1007502D4();
    sub_100750AD4();
    v47(v9, v39);
  }

  else
  {
    sub_1002FE034(v17, v46);
    v48 = *(v40 + 48);
    if (v48(v46, 1, v4) == 1)
    {
      v49 = v55;
      if (qword_1009208D8 != -1)
      {
        swift_once();
      }

      v50 = sub_10000D0FC(v4, qword_100931CA0);
      (*(v40 + 16))(v49, v50, v4);
      v51 = v63;
      if (v48(v63, 1, v4) != 1)
      {
        sub_10000C8CC(v51, &qword_100934360);
      }
    }

    else
    {
      v49 = v55;
      (*(v40 + 32))(v55, v46, v4);
    }

    sub_1007502D4();
    v41 = v57;
    sub_100750AD4();
    (*(v45 + 8))(v9, v39);
    (*(v40 + 8))(v49, v4);
  }

  v52 = v56;
  if (v58)
  {
    if (qword_100920D68 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v59 && qword_100920D68 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10000C8CC(v17, &qword_100934360);
  return a1;
}

double sub_1002FDA50()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "prepareForReuse");
  sub_100743344();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_10010AA88(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_1000164A8(v12);
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  [v7 setTextColor:v14];

  v15 = [v13 systemGrayColor];
  [v8 setTextColor:v15];

  v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider] setHidden:1];
  v16 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  return result;
}

id sub_1002FDD4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell()
{
  result = qword_100931D78;
  if (!qword_100931D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FDEEC()
{
  sub_1002FDFDC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FDFDC()
{
  if (!qword_100928850)
  {
    type metadata accessor for Accessory();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100928850);
    }
  }
}

uint64_t sub_1002FE034(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002FE0A4()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002FE2B0(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FE30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_100750304();
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
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v18 = sub_10000D0FC(v6, qword_100980A80);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = sub_100750B04();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  sub_100750B14();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v22);
  v10(v12, v5, v2);
  sub_100750B14();
  v11(v5, v2);
  if (v20)
  {
    sub_1007537B4();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return sub_100747404();
}

char *sub_1002FE65C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100747424();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v14, qword_100980A68);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_1002FE30C(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView] = sub_1004AE6A0(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_1007539A4();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView]];
  sub_10000C518(&unk_1009249D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A6580;
  *(v25 + 32) = sub_1007516F4();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = sub_100751564();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v24;
}

void sub_1002FEA90()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100753CD4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = sub_1007537E4();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset + 8])
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
              sub_1001A2960();
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
      v24 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = sub_100753CB4();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        sub_100753CC4();
        sub_1002FF464(v4);
        sub_100753C94();
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

void sub_1002FEDE4()
{
  sub_1002FEA90();
  v1 = &OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    sub_100753BA4();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_1002FEA90();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_1002FF110(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100747424();
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

    sub_1007539B4();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_1002FE30C(v15, v9);

  v17 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_1002FF464(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10092B0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FF4CC(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

uint64_t sub_1002FF4F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E450);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v74 = &v68 - v9;
  v10 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v10 - 8);
  v75 = &v68 - v11;
  v77 = sub_100744E64();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10074E984();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v78);
  v84 = &v68 - v14;
  v15 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v24 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  if ((sub_100747B74() & 1) == 0)
  {
    v68 = v6;
    v69 = v4;
    v70 = v3;
    v71 = a1;
    sub_100747BB4();
    sub_10000C8CC(v17, &unk_10093D6E0);
    sub_100066578(v20, v23, &unk_10093D6E0);
    v40 = v81;
    v41 = v82;
    if ((*(v82 + 48))(v23, 1, v81) == 1)
    {
      sub_10000C8CC(v23, &unk_10093D6E0);
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      sub_1007525B4();

      (*(v41 + 8))(v23, v40);
      v42 = 0;
    }

    v46 = v79;
    v45 = v80;
    v47 = v83;
    v48 = *(v83 + 56);
    v48(v31, v42, 1, v80);
    (*(v47 + 104))(v28, enum case for Shelf.ContentType.searchResultsContextCard(_:), v45);
    v48(v28, 0, 1, v45);
    v49 = *(v78 + 48);
    v50 = v84;
    sub_100028D40(v31, v84);
    sub_100028D40(v28, v50 + v49);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v45) == 1)
    {
      sub_10000C8CC(v28, &unk_100933370);
      v52 = v84;
      sub_10000C8CC(v31, &unk_100933370);
      if (v51(v52 + v49, 1, v45) == 1)
      {
        sub_10000C8CC(v52, &unk_100933370);
        v53 = v85;
        goto LABEL_17;
      }
    }

    else
    {
      sub_100028D40(v50, v46);
      if (v51(v50 + v49, 1, v45) != 1)
      {
        v54 = v83;
        v55 = v73;
        (*(v83 + 32))(v73, v50 + v49, v45);
        sub_10013DFA4();
        v56 = v50;
        v57 = sub_100753014();
        v58 = *(v54 + 8);
        v58(v55, v45);
        sub_10000C8CC(v28, &unk_100933370);
        sub_10000C8CC(v31, &unk_100933370);
        v58(v46, v45);
        sub_10000C8CC(v56, &unk_100933370);
        v53 = v85;
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v59 = v74;
        sub_100747C04();
        swift_getKeyPath();
        v60 = v81;
        sub_1007525B4();

        (*(v82 + 8))(v59, v60);
        if (*(v86 + 16))
        {
          sub_10000C824(v86 + 32, v87);

          sub_10000C518(&qword_1009242A0);
          sub_10000C518(&qword_100923570);
          v61 = swift_dynamicCast();
          v62 = v77;
          v63 = v76;
          v64 = v75;
          if (v61)
          {
            if (*(&v89 + 1))
            {
              sub_10000C888(&v88, *(&v89 + 1));
              v53 = v85;
              sub_10074A4F4();
              sub_10000C620(&v88);
              if ((*(v63 + 48))(v64, 1, v62) != 1)
              {
                v65 = v72;
                (*(v63 + 32))(v72, v64, v62);
                if (sub_100744E54())
                {
                  v66 = v68;
                  sub_100747B84();
                  v67 = sub_10014DEA0(v66, v65);
                  (*(v69 + 8))(v66, v70);
                  *(&v89 + 1) = &type metadata for CGFloat;
                  v90 = &protocol witness table for CGFloat;
                  *&v88 = -v67;
                  (*(v63 + 8))(v65, v62);
                  return sub_100012160(&v88, v53);
                }

                (*(v63 + 8))(v65, v62);
LABEL_27:
                *(&v89 + 1) = &type metadata for Double;
                v90 = &protocol witness table for Double;
                *&v88 = 0;
                return sub_100012160(&v88, v53);
              }

LABEL_26:
              sub_10000C8CC(v64, &unk_100925330);
              goto LABEL_27;
            }
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }
        }

        else
        {

          v88 = 0u;
          v89 = 0u;
          v90 = 0;
          v62 = v77;
          v63 = v76;
          v64 = v75;
        }

        sub_10000C8CC(&v88, &qword_100923578);
        (*(v63 + 56))(v64, 1, 1, v62);
        goto LABEL_26;
      }

      sub_10000C8CC(v28, &unk_100933370);
      v52 = v84;
      sub_10000C8CC(v31, &unk_100933370);
      (*(v83 + 8))(v46, v45);
    }

    sub_10000C8CC(v52, &qword_10092C380);
    v53 = v85;
    goto LABEL_27;
  }

  v32 = v85;
  sub_100747B84();
  sub_10074F594();
  v34 = v33;
  v35 = *(v4 + 8);
  v35(v6, v3);
  if (v34 <= 1.0)
  {
    sub_100747B84();
    sub_10074F5B4();
    v44 = v43;
    result = (v35)(v6, v3);
    v32[3] = &type metadata for CGFloat;
    v32[4] = &protocol witness table for CGFloat;
    *v32 = v44 * 0.5;
  }

  else
  {
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v36 = sub_100750B04();
    v37 = sub_10000D0FC(v36, qword_1009820C8);
    v32[3] = v36;
    v32[4] = &protocol witness table for StaticDimension;
    v38 = sub_10000D134(v32);
    return (*(*(v36 - 8) + 16))(v38, v37, v36);
  }

  return result;
}

uint64_t sub_100300098@<X0>(void *a1@<X8>)
{
  v59 = a1;
  v1 = sub_10074F704();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v55);
  v58 = &v48 - v3;
  v4 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v13 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = sub_10074E984();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_10092E450);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_100747C04();
  swift_getKeyPath();
  v53 = v19;
  sub_1007525B4();

  v24 = *(v21 + 8);
  v24(v23, v20);
  sub_100747BB4();
  sub_10000C8CC(v9, &unk_10093D6E0);
  sub_100066578(v6, v12, &unk_10093D6E0);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_10000C8CC(v12, &unk_10093D6E0);
    v25 = 1;
    v26 = v54;
  }

  else
  {
    swift_getKeyPath();
    v26 = v54;
    sub_1007525B4();

    v24(v12, v20);
    v25 = 0;
  }

  v28 = v56;
  v27 = v57;
  (*(v56 + 56))(v26, v25, 1, v57);
  v29 = *(v55 + 48);
  v30 = v58;
  (*(v28 + 32))(v58, v53, v27);
  sub_100066578(v26, v30 + v29, &unk_100933370);
  v31 = *(v28 + 88);
  v32 = v31(v30, v27);
  v33 = v32;
  if (v32 == enum case for Shelf.ContentType.searchResult(_:))
  {
    if ((*(v28 + 48))(v30 + v29, 1, v27) != 1)
    {
      v34 = v49;
      sub_100028D40(v30 + v29, v49);
      if (v31(v34, v27) == v33)
      {
        v35 = v50;
        sub_100747B84();
        sub_10074F5B4();
        v37 = v36;
        (*(v51 + 8))(v35, v52);
        v38 = v59;
        v59[3] = &type metadata for CGFloat;
        v38[4] = &protocol witness table for CGFloat;
        *v38 = v37;
LABEL_10:
        sub_10000C8CC(v30 + v29, &unk_100933370);
        return (*(v28 + 8))(v30, v27);
      }

      (*(v28 + 8))(v34, v27);
    }
  }

  else if (v32 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v39 = v50;
    sub_100747B84();
    sub_10074F5B4();
    v41 = v40;
    (*(v51 + 8))(v39, v52);
    v42 = v59;
    v59[3] = &type metadata for CGFloat;
    *(v42 + 4) = &protocol witness table for CGFloat;
    *v42 = v41 * 0.5;
    goto LABEL_10;
  }

  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v44 = sub_100750B04();
  v45 = sub_10000D0FC(v44, qword_1009820C8);
  v46 = v59;
  v59[3] = v44;
  v46[4] = &protocol witness table for StaticDimension;
  v47 = sub_10000D134(v46);
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  return sub_10000C8CC(v30, &qword_100923580);
}

id sub_1003007A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension28TabPlaceholderViewController_storeTab;
  v6 = sub_100742A34();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v9 = sub_1002D7360();
  if (v9)
  {
    v10 = v9;
    [v8 setTabBarItem:v9];
    v11 = [v8 title];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [v8 title];
    if (v12)
    {
      v13 = v12;
      v14 = sub_100753094();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {
LABEL_7:
        v18 = [v10 title];
        if (v18)
        {
          v19 = v18;
          sub_100753094();
        }

        else
        {
          sub_100742A24();
          if (!v21)
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v22 = sub_100753064();

LABEL_15:
        [v8 setTitle:v22];
      }
    }
  }

  else
  {
    sub_100742A24();
    if (v20)
    {
      v10 = sub_100753064();
    }

    else
    {
      v10 = 0;
    }

    [v8 setTitle:v10];
  }

  result = [v8 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() systemBackgroundColor];
    [v24 setBackgroundColor:v25];

    (*(v7 + 8))(a1, v6);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100300A8C(uint64_t a1)
{
  v73 = a1;
  v66 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v66);
  v67 = &v64 - v1;
  v2 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v2 - 8);
  v64 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v64 - v5;
  __chkstk_darwin(v6);
  v70 = &v64 - v7;
  v8 = sub_100741264();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  __chkstk_darwin(v8);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  v13 = sub_10000C518(&qword_100931E10);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v16 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  __chkstk_darwin(v26);
  v28 = &v64 - v27;
  __chkstk_darwin(v29);
  v31 = &v64 - v30;
  sub_1002D7CA4(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = &unk_100925750;
    v33 = v18;
LABEL_27:
    sub_10000C8CC(v33, v32);
    v41 = 0;
    return v41 & 1;
  }

  sub_100068B98(v18, v31);
  v34 = &v15[*(v13 + 48)];
  sub_100068C18(v31, v15);
  sub_100068C18(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_100068C18(v15, v25);

        v43 = sub_10000C518(&unk_100932490);
        v44 = *(v43 + 48);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          v45 = *(v43 + 48);
          v46 = v70;
          sub_1000498A8(&v25[v44], v70);
          v47 = v34 + v45;
          v48 = v69;
          sub_1000498A8(v47, v69);
          v49 = v67;
          v50 = *(v66 + 48);
          sub_1000497C4(v46, v67);
          sub_1000497C4(v48, v49 + v50);
          v51 = v71;
          v52 = *(v72 + 48);
          if (v52(v49, 1, v71) == 1)
          {
            sub_10000C8CC(v48, &unk_100923970);
            sub_10000C8CC(v46, &unk_100923970);
            sub_1000AC948(v31);
            if (v52(v49 + v50, 1, v51) == 1)
            {
              sub_10000C8CC(v49, &unk_100923970);
              v41 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v60 = v64;
            sub_1000497C4(v49, v64);
            if (v52(v49 + v50, 1, v51) != 1)
            {
              v61 = v72;
              v62 = v68;
              (*(v72 + 32))(v68, v49 + v50, v51);
              sub_100301538();
              v41 = sub_100753014();
              v63 = *(v61 + 8);
              v63(v62, v51);
              sub_10000C8CC(v69, &unk_100923970);
              sub_10000C8CC(v70, &unk_100923970);
              sub_1000AC948(v31);
              v63(v60, v51);
              sub_10000C8CC(v49, &unk_100923970);
              goto LABEL_33;
            }

            sub_10000C8CC(v69, &unk_100923970);
            sub_10000C8CC(v70, &unk_100923970);
            sub_1000AC948(v31);
            (*(v72 + 8))(v60, v51);
          }

          sub_10000C8CC(v49, &unk_100932480);
          v41 = 0;
          goto LABEL_33;
        }

        sub_1000AC948(v31);
        sub_10000C8CC(&v25[v44], &unk_100923970);
LABEL_26:
        v32 = &qword_100931E10;
        v33 = v15;
        goto LABEL_27;
      }

LABEL_22:
      sub_1000AC948(v31);
      goto LABEL_26;
    }

    sub_1000AC948(v31);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    sub_1000AC948(v34);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        sub_1000AC948(v31);
        sub_100068C18(v15, v22);

        v53 = sub_10000C518(&qword_100938EC0);
        v54 = *(v53 + 48);
        if (swift_getEnumCaseMultiPayload() != 13)
        {
          v58 = sub_100744BE4();
          (*(*(v58 - 8) + 8))(&v22[v54], v58);
          goto LABEL_26;
        }

        v55 = *(v53 + 48);
        v56 = sub_100744BE4();
        v57 = *(*(v56 - 8) + 8);
        v57(v34 + v55, v56);
        v57(&v22[v54], v56);
        break;
      case 44:
        sub_1000AC948(v31);
        if (swift_getEnumCaseMultiPayload() != 44)
        {
          goto LABEL_26;
        }

        break;
      case 20:
        sub_100068C18(v15, v28);
        if (swift_getEnumCaseMultiPayload() == 20)
        {
          v36 = v71;
          v37 = v72;
          v38 = *(v72 + 32);
          v39 = v68;
          v38(v68, v28, v71);
          v40 = v65;
          v38(v65, v34, v36);
          v41 = sub_100741214();
          v42 = *(v37 + 8);
          v42(v40, v36);
          v42(v39, v36);
          sub_1000AC948(v31);
LABEL_33:
          sub_1000AC948(v15);
          return v41 & 1;
        }

        sub_1000AC948(v31);
        (*(v72 + 8))(v28, v71);
        goto LABEL_26;
      default:
        goto LABEL_22;
    }
  }

  sub_1000AC948(v15);
  v41 = 1;
  return v41 & 1;
}

uint64_t type metadata accessor for TabPlaceholderViewController()
{
  result = qword_100931E00;
  if (!qword_100931E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100301480()
{
  result = sub_100742A34();
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

unint64_t sub_100301538()
{
  result = qword_100926240;
  if (!qword_100926240)
  {
    sub_100741264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926240);
  }

  return result;
}

id sub_100301898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell()
{
  result = qword_100931E48;
  if (!qword_100931E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100301970()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100301A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_100301AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_100301B24(uint64_t a1)
{
  result = sub_100301B4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100301B4C()
{
  result = qword_100931E58;
  if (!qword_100931E58)
  {
    type metadata accessor for ArtworkCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100931E58);
  }

  return result;
}

void sub_100301BA4()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel);
  if (v4)
  {
    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + v3);
      if (v7)
      {
        v8 = v7;
        v9 = [v1 tintColor];
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
          v12 = [v6 length];
          v13 = swift_allocObject();
          *(v13 + 16) = v11;
          *(v13 + 24) = v10;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1000CF72C;
          *(v14 + 24) = v13;
          v18[4] = sub_1000CF744;
          v18[5] = v14;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1107296256;
          v18[2] = sub_1001529B4;
          v18[3] = &unk_100870DE8;
          v15 = _Block_copy(v18);
          v16 = v11;
          v17 = v10;

          [v6 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v12 usingBlock:{0x100000, v15}];

          _Block_release(v15);
          LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

          if ((v17 & 1) == 0)
          {
            [v8 setAttributedText:v16];

            goto LABEL_7;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_7:
    }
  }
}

uint64_t type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell()
{
  result = qword_100931E88;
  if (!qword_100931E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100301F28()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_100743384(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v2);
  sub_1007433C4();
  sub_10004D658();
  sub_100744274();
  sub_100744274();
}

void sub_100302024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100741C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_10000C824(a1, v25);
  sub_10000C518(&unk_100923100);
  sub_100741D54();
  if (swift_dynamicCast())
  {
    v23 = a2;
    v13 = v24;
    v14 = qword_100921960;
    v15 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_100741E54();
    sub_10000D0FC(v16, qword_100982740);
    sub_100741DB4();
    v22 = [v3 backgroundColor];
    sub_100741D34();
    v17 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v7 + 24))(&v15[v17], v12, v6);
    swift_endAccess();
    v21 = *(v7 + 16);
    v21(v9, &v15[v17], v6);
    sub_100275D50(v9);
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    v19 = v22;
    [v15 setBackgroundColor:v22];
    sub_1006C2A3C(v13, v15, v23);
    v21(v12, &v15[v17], v6);
    sub_100275D50(v12);
    v18(v12, v6);
    [v15 setNeedsLayout];
  }
}

uint64_t sub_100302334()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100302384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10030239C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100748FE4();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = sub_100743B04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100931EB8) = 0;
  *(v2 + qword_100931EC0) = 0;
  *(v2 + qword_100931EC8) = 0;
  *(v2 + qword_100931ED0) = 0;
  *(v2 + qword_100931ED8) = 0;

  v14 = sub_1004686EC(a1, a2);
  v14[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = sub_10074F3E4();
  v38[3] = v17;
  v38[4] = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v18 = sub_10000D134(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10074FC74();
  sub_10000C620(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    sub_10074DED4();
    if (v20)
    {
      v21 = sub_100753064();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = sub_100743AE4();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_100931EB8;
  v25 = *&v15[qword_100931EB8];
  *&v15[qword_100931EB8] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    sub_10074DE54();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_100305264(&qword_100925B98, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
    sub_100753274();
    sub_100753274();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = sub_100754754();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_1003028CC()
{
  v1 = qword_100931EC0;
  v2 = *(v0 + qword_100931EC0);
  if (v2)
  {
    v3 = *(v0 + qword_100931EC0);
  }

  else
  {
    v4 = sub_100304FB8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10030292C()
{
  v0 = sub_1007541F4();
  sub_100039C50(v0, qword_100931EA0);
  sub_10000D0FC(v0, qword_100931EA0);
  sub_1007541A4();
  v1 = sub_100753064();
  v2 = [objc_opt_self() systemImageNamed:v1];

  sub_100754194();
  v3 = [objc_opt_self() configurationWithScale:1];
  sub_100754024();
  sub_100754094();
  return sub_1007540D4();
}

void sub_100302A14(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10074B974();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10074B964();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100302B54(void *a1)
{
  v2 = *&v1[qword_100931EC8];
  *&v1[qword_100931EC8] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_100302C1C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_100931ED0];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = sub_100753FC4(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_100931EC8];
      *&v2[qword_100931EC8] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_100931ED0];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate + 8] = &off_100870E20;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1003028CC();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_1003028CC();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_100931EC0] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_100931EC0] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_100931EC8];
    *&v2[qword_100931EC8] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_100931EC8];
    *&v2[qword_100931EC8] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_10030305C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_1003028CC();
  v5 = v4;
  if (v3)
  {
    sub_100016C60(0, &qword_100922300);
    v6 = sub_100753FC4();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_100931EC0;
  [*&v1[qword_100931EC0] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_100931EC0;
  v12 = qword_100931ED8;
  v13 = 0.0;
  if (v1[qword_100931ED8])
  {
    v13 = 1.0;
  }

  [*&v1[qword_100931EC0] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_1003031FC()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_1003028CC();
  sub_100016C60(0, &qword_100929CC0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100753FF4();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_100305798, v2}];
}

void sub_1003032F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100303348();
  }
}

void sub_100303348()
{
  v1 = v0;
  sub_10074DEB4();
  v2 = sub_10074DE34();
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_1003E80B4(v2, 1, v3);

  v7 = *(v1 + qword_100931ED0);
  *(v1 + qword_100931ED0) = v5;
  v6 = v5;
  sub_100302C1C(v7);
}

void sub_100303420(void *a1)
{
  v1 = a1;
  sub_1003031FC();
}

id sub_100303468(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_1003028CC();
    [v12 sizeToFit];

    return [*&v1[qword_100931EC0] setNeedsLayout];
  }

  return result;
}

void sub_1003035CC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100303468(a3);
}

uint64_t sub_100303638()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000C518(&unk_10093EC70);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_10000C518(&qword_1009324C0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_10000C518(&unk_1009324C8);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_100359498();
  v8 = *(v0 + qword_10097EE08);
  sub_10074DE94();
  v9 = sub_100016C60(0, &qword_100926D00);
  v10 = sub_100753774();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_10000C518(&qword_1009324D8);
  sub_10002DDC8(&unk_1009324E0, &qword_1009324D8);
  v30 = v0;
  sub_100752584();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_10000C620(v31);
  sub_10074DE34();
  sub_100748394();

  v12 = sub_100753774();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_10000C518(&unk_10093EC80);
  sub_10002DDC8(&unk_1009324F0, &unk_10093EC80);
  v13 = v27;
  sub_100752584();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_10000C620(v31);
  v28 = v11;
  sub_10074DE34();
  sub_1007483A4();

  v16 = sub_100753774();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  sub_100752584();

  v15(v13, v14);
  sub_10000C620(v31);
  v17 = sub_10074F3E4();
  v32 = v17;
  v33 = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v18 = sub_10000D134(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10074FC74();
  result = sub_10000C620(v31);
  if (v17)
  {
    sub_10074DE34();
    sub_100748344();

    v20 = sub_100753774();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_10000C518(&unk_10093EC90);
    sub_10002DDC8(&unk_100932500, &unk_10093EC90);
    v21 = v22;
    sub_100752584();

    (*(v23 + 8))(v21, v24);
    return sub_10000C620(v31);
  }

  return result;
}

void sub_100303C1C(uint64_t a1)
{
  v2 = sub_10074DE84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100932518);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_100016B4C(a1, &v20 - v7, &qword_100932518);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_10074DE64();
    v13 = v12;
    v14 = sub_10074DE74();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView());
    sub_100421C68(v11, v13, v14, v16);
    v18 = objc_allocWithZone(sub_1007495D4());
    v19 = sub_1007495C4();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_100302A14(v10);
}

void (*sub_100303E18(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100305758;
}

void (*sub_100303E7C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10030573C;
}

void (*sub_100303EE0(void *a1))(uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003057B0;
}

void sub_100303F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100932478);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = sub_10074F3E4();
  v23[3] = v10;
  v23[4] = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v11 = sub_10000D134(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = sub_10074FC74();
  sub_10000C620(v23);
  if (v10)
  {
    sub_100304658();
  }

  else
  {
    sub_100748364();
    v12 = sub_100742F84();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10000C8CC(v9, &qword_100932510);
      v14 = 0;
    }

    else
    {
      v15 = sub_100742E64();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_100931ED8) = v14;
    sub_10030305C();
    v17 = sub_1003028CC();
    sub_1007483E4();
    v18 = sub_100748374();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    sub_100748334();
    sub_10000C8CC(v6, &qword_100932478);
    v20 = sub_100753064();

    [v17 setTitle:v20 forState:0];

    v21 = qword_100931EC0;
    [*(a2 + qword_100931EC0) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_1003042B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923210);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  sub_100752764();
  sub_100752D34();
  sub_1003C0E00(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_1003043C8(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10030538C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1003053CC;
}

unint64_t sub_100304458@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_100305300();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1003044B0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_1003052AC();
  *(a1 + 32) = result;
  return result;
}

void sub_1003044E4(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009324A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_10041F2A8(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v6 = v7[1];
    sub_10074B0F4();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_100304658()
{
  v1 = v0;
  v2 = sub_100748FE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074DE34();
  sub_10074DE54();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_1000A62FC(v6, v5, sub_1003053D4, v7);

  (*(v3 + 8))(v5, v2);
  sub_100016C60(0, &qword_100925250);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = sub_100753644(v18, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_100304834(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003053F8();
}

void sub_100304894(void *a1)
{
  v1 = a1;
  sub_10074DEC4();
  sub_100302B54(0);
}

uint64_t sub_1003048F4(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100068C18(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000AC948(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490);
  sub_1000498A8(&v9[*(v19 + 48)], v18);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970);
  sub_100016B4C(v18, &v6[v20], &unk_100923970);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100305264(&qword_100926240, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970);
      sub_10000C8CC(v18, &unk_100923970);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970);
    sub_10000C8CC(v18, &unk_100923970);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970);
  sub_10000C8CC(v18, &unk_100923970);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970);
  v23 = 1;
  return v23 & 1;
}

void sub_100304DB0()
{
  v1 = *(v0 + qword_100931ED0);
}

void sub_100304E10(uint64_t a1)
{
  v2 = *(a1 + qword_100931ED0);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController()
{
  result = qword_100931F08;
  if (!qword_100931F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100304F24()
{
  sub_10074DEC4();
  v1 = *(v0 + qword_100931ED0);
  *(v0 + qword_100931ED0) = 0;
  sub_100302C1C(v1);
}

id sub_100304FB8()
{
  v0 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10000C518(&qword_100932478);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  sub_1007483E4();
  v7 = sub_100748374();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_100748334();
  sub_10000C8CC(v5, &qword_100932478);
  v8 = sub_100753064();

  [v6 setTitle:v8 forState:0];

  if (qword_1009208F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1007541F4();
  v10 = sub_10000D0FC(v9, qword_100931EA0);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  sub_100754224();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_100305264(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003052AC()
{
  result = qword_1009324A8;
  if (!qword_1009324A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009324A8);
  }

  return result;
}

unint64_t sub_100305300()
{
  result = qword_1009324B0;
  if (!qword_1009324B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009324B0);
  }

  return result;
}

uint64_t sub_100305354()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100305394()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003053F8()
{
  v1 = v0;
  v2 = sub_100748FE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18[-1] - v7;
  sub_10074DEA4();
  sub_10074DE54();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_100305264(&qword_100925B98, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_100753274();
  sub_100753274();
  if (v18[0] == v18[5] && v18[1] == v18[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100754754();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = sub_10074F3E4();
  v18[3] = v11;
  v18[4] = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v12 = sub_10000D134(v18);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = sub_10074FC74();
  v13 = sub_10000C620(v18);
  if (v11)
  {
    sub_100304658(v13);
  }

  else
  {
    v14 = [v1 navigationItem];
    v15 = [v14 rightBarButtonItem];

    [v15 setSelected:v9 & 1];
  }

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v16 = v18[0];
  if (v9)
  {
    sub_10074B0D4();
  }

  else
  {
    sub_10074B104();
  }
}

uint64_t sub_100305760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003057B4@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009817B8);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = sub_100750B04();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_10000D134(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  sub_100750B14();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v5, qword_1009817D0);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_10000D134(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v24);
  v11(v14, v4, v1);
  sub_100750B14();
  v12(v4, v1);
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v5, qword_100981848);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_10000D134(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v23);
  v11(v16, v4, v1);
  sub_100750B14();
  v12(v4, v1);
  return sub_10074AB64();
}

UIColor sub_100305BF8()
{
  sub_10000D198();
  result.super.isa = sub_100753F24(0.0, 0.0, 0.0, 1.0).super.isa;
  qword_10097F8C8 = result.super.isa;
  return result;
}

void sub_100305C68(uint64_t a1, void *a2, id *a3, void *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  v6 = [v5 colorWithAlphaComponent:0.8];

  *a4 = v6;
}

UIColor sub_100305CE8()
{
  sub_10000D198();
  result.super.isa = sub_100753F24(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_10097F8D8 = result.super.isa;
  return result;
}

char *sub_100305D2C(double a1, double a2, double a3, double a4)
{
  v9 = sub_100743584();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074AB44();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = sub_1007469A4();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = sub_1007433C4();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v13, qword_1009817B8);
  v30 = v14 + 16;
  v105 = *(v14 + 16);
  v105(v23, v29, v13);
  v97 = v14;
  v31 = v14 + 56;
  v104 = *(v14 + 56);
  v104(v23, 0, 1, v13);
  v32 = enum case for DirectionalTextAlignment.leading(_:);
  v96 = v17;
  v103 = *(v17 + 104);
  v103(v109, enum case for DirectionalTextAlignment.leading(_:), v16);
  v33 = sub_100745C84();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = sub_100745C74();
  v36 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v13, qword_1009817D0);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = sub_100745C74();
  v94 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v13, qword_100981848);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v45[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = sub_100745C74();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  sub_100745BA4();
  v53 = v50;
  sub_100745B84();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  sub_100745BF4();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_100920480;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = sub_10074F0C4();
  v66 = sub_10000D0FC(v65, qword_10097E140);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  sub_100743374();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  sub_1007433B4();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  sub_100743234();
  sub_100746E64();

  v75 = *&v59[v62];
  sub_100743244();
  sub_100746E74();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_100920910;
  v79 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_10097F8D0];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_100920918;
  v83 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_10097F8D8;
  [v83 setTextColor:qword_10097F8D8];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
  v87 = [v59 contentView];
  [v87 addSubview:*&v59[v86]];

  v88 = objc_opt_self();
  v89 = [v88 clearColor];
  [v59 setBackgroundColor:v89];

  v90 = [v59 contentView];
  v91 = [v88 clearColor];
  [v90 setBackgroundColor:v91];

  return v59;
}

id sub_100306938()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074AB74();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10074AB94();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell();
  v43.receiver = v1;
  v43.super_class = v15;
  result = objc_msgSendSuper2(&v43, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v44);
    [v1 bounds];
    CGRectGetHeight(v45);
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v17 = sub_100750B04();
    sub_10000D0FC(v17, qword_1009820C8);
    sub_1007502D4();
    sub_100750564();
    (*(v12 + 8))(v14, v11);
    sub_1003057B4(v8);
    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView];
    v41 = sub_1007433C4();
    v42 = &protocol witness table for UIView;
    v40 = v18;
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
    v38 = sub_100745C84();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v19;
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
    v35 = v38;
    v34 = v20;
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v33 = &protocol witness table for UILabel;
    v32 = v38;
    v31 = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_10074AB84();
    sub_10074AB54();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_100306DB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100743344();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_100306E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell()
{
  result = qword_100932548;
  if (!qword_100932548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100306FB4()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100307070()
{
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10074AB44();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = sub_1007469A4();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  sub_1007433C4();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v1, qword_1009817B8);
  v18 = v2 + 16;
  v59 = *(v2 + 16);
  v59(v11, v17, v1);
  v57 = v2;
  v20 = *(v2 + 56);
  v19 = v2 + 56;
  v60 = v20;
  v20(v11, 0, 1, v1);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v56 = v4;
  v23 = *(v4 + 104);
  v22 = v4 + 104;
  v58 = v23;
  v23(v8, enum case for DirectionalTextAlignment.leading(_:), v63);
  v24 = sub_100745C84();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = sub_100745C74();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v1, qword_1009817D0);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = sub_100745C74();
  v53 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v1, qword_100981848);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v35[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = sub_100745C74();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  sub_100745BA4();
  sub_100745B84();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  sub_100745BF4();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1003076F4@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_10000C518(&qword_100932568);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_10000C518(&qword_1009245B0);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = sub_1007457B4();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_10000C518(&unk_10092E450);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = sub_10074E984();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  sub_100747C04();
  swift_getKeyPath();
  v143 = v45;
  sub_1007525B4();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  v46(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  sub_100747BB4();
  sub_10000C8CC(v32, &unk_10093D6E0);
  v142 = v35;
  sub_100016B4C(v35, v48, &unk_10093D6E0);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10000C8CC(v48, &unk_10093D6E0);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    sub_1007525B4();

    v46(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_100016B4C(v54, &v58[v57], &unk_100933370);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    sub_100747C04();
    swift_getKeyPath();
    v63 = v135;
    sub_1007525B4();

    v134 = v46;
    v46(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = sub_1007457A4();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10000C8CC(v145, &unk_100933370);
      sub_10000C8CC(v142, &unk_10093D6E0);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10000C8CC(v71 + v59, &unk_100933370);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_100016B4C(v71 + v59, v130, &unk_100933370);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_100016B4C(v142, v123, &unk_10093D6E0);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10000C8CC(v86, &unk_10093D6E0);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          sub_1007525B4();

          v134(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_100016B4C(v101, v125, &qword_1009245B0);
        sub_100016B4C(v97, v102 + v100, &qword_1009245B0);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10000C8CC(v97, &qword_1009245B0);
          sub_10000C8CC(v131, &qword_1009245B0);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10000C8CC(v102, &qword_1009245B0);
LABEL_44:
            if (qword_100921738 != -1)
            {
              swift_once();
            }

            v115 = sub_100750B04();
            v116 = sub_10000D0FC(v115, qword_100982128);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_10000D134(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_100016B4C(v102, v120, &qword_1009245B0);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_10030B48C(&qword_100940610, &type metadata accessor for ShelfBackground);
            LODWORD(v144) = sub_100753014();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10000C8CC(v128, &qword_1009245B0);
            sub_10000C8CC(v104, &qword_1009245B0);
            v114(v105, v88);
            sub_10000C8CC(v102, &qword_1009245B0);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10000C8CC(v128, &qword_1009245B0);
          sub_10000C8CC(v104, &qword_1009245B0);
          (*(v138 + 8))(v105, v88);
        }

        sub_10000C8CC(v102, &qword_100932568);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10000C8CC(v145, &unk_100933370);
    sub_10000C8CC(v142, &unk_10093D6E0);
    (*(v82 + 8))(v143, v83);
    return sub_10000C8CC(v71, &qword_100923580);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_100016B4C(v71 + v59, v126, &unk_100933370);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10000C8CC(v145, &unk_100933370);
        sub_10000C8CC(v142, &unk_10093D6E0);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_100016B4C(v145, v129, &unk_100933370);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10000C8CC(v91, &unk_100933370);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_100920CD0 != -1)
      {
        swift_once();
      }

      if (sub_1002A5418(v92, qword_1009804B0))
      {
        if (qword_100921720 != -1)
        {
          swift_once();
        }

        v93 = sub_100750B04();
        v94 = sub_10000D0FC(v93, qword_1009820E0);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_10000D134(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10000C8CC(v90, &unk_100933370);
        sub_10000C8CC(v142, &unk_10093D6E0);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_100016B4C(v71 + v57, v121, &unk_100933370);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10000C8CC(v71 + v59, &unk_100933370);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v108 = sub_100750B04();
  sub_10000D0FC(v108, qword_1009820F8);
  sub_100750AE4();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10000C8CC(v145, &unk_100933370);
  sub_10000C8CC(v142, &unk_10093D6E0);
  return (v107)(v143, v81);
}

uint64_t sub_1003088FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v163 = a2;
  v3 = sub_1007457B4();
  v155 = *(v3 - 8);
  v156 = v3;
  __chkstk_darwin(v3);
  v154 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v141 - v6;
  v7 = sub_10074F704();
  v149 = *(v7 - 8);
  v150 = v7;
  __chkstk_darwin(v7);
  v148 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v162);
  v166 = &v141 - v9;
  v10 = sub_10074E984();
  v11 = *(v10 - 8);
  v164 = v10;
  v165 = v11;
  __chkstk_darwin(v10);
  v161 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092E450);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v153 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v141 - v17;
  v19 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v19 - 8);
  v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v141 - v23;
  __chkstk_darwin(v25);
  v27 = &v141 - v26;
  v28 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v28 - 8);
  v142 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v141 - v31;
  __chkstk_darwin(v32);
  v144 = &v141 - v33;
  __chkstk_darwin(v34);
  v147 = &v141 - v35;
  __chkstk_darwin(v36);
  v151 = &v141 - v37;
  __chkstk_darwin(v38);
  v160 = &v141 - v39;
  __chkstk_darwin(v40);
  v159 = &v141 - v41;
  __chkstk_darwin(v42);
  v157 = &v141 - v43;
  __chkstk_darwin(v44);
  v152 = &v141 - v45;
  __chkstk_darwin(v46);
  v146 = &v141 - v47;
  __chkstk_darwin(v48);
  v145 = &v141 - v49;
  __chkstk_darwin(v50);
  v143 = &v141 - v51;
  __chkstk_darwin(v52);
  v54 = &v141 - v53;
  v167 = a1;
  sub_100747BB4();
  sub_10000C8CC(v24, &unk_10093D6E0);
  sub_100028CD0(v21, v27);
  if ((*(v14 + 48))(v27, 1, v13) == 1)
  {
    sub_10000C8CC(v27, &unk_10093D6E0);
    v55 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v14 + 8))(v27, v13);
    v55 = 0;
  }

  v56 = v165;
  v57 = v54;
  v58 = v54;
  v59 = v164;
  (*(v165 + 56))(v57, v55, 1, v164);
  sub_100747C04();
  swift_getKeyPath();
  v60 = v161;
  sub_1007525B4();

  v61 = *(v14 + 8);
  v61(v18, v13);
  v62 = v166;
  v63 = v60;
  v64 = *(v162 + 48);
  (*(v56 + 32))(v166, v63, v59);
  v162 = v58;
  sub_100016B4C(v58, &v62[v64], &unk_100933370);
  v65 = *(v56 + 88);
  v66 = v65(v62, v59);
  if (v66 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v70 = v159;
      sub_100016B4C(&v62[v64], v159, &unk_100933370);
      v71 = v65(v70, v59);
      v160 = v70;
      if (v71 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_100921728 != -1)
        {
          swift_once();
        }

        v72 = sub_100750B04();
        sub_10000D0FC(v72, qword_1009820F8);
        sub_100750AE4();
        v73 = v163;
        v163[3] = &type metadata for CGFloat;
        v73[4] = &protocol witness table for CGFloat;
        *v73 = v74;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v137 = sub_100750B04();
    v138 = sub_10000D0FC(v137, qword_100982128);
    v139 = v163;
    v163[3] = v137;
    v139[4] = &protocol witness table for StaticDimension;
    v140 = sub_10000D134(v139);
    (*(*(v137 - 8) + 16))(v140, v138, v137);
    sub_10000C8CC(v162, &unk_100933370);
    v69 = &qword_100923580;
    v68 = v62;
    return sub_10000C8CC(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v75 = v157;
    sub_100016B4C(&v62[v64], v157, &unk_100933370);
    v76 = v65(v75, v59);
    v160 = v75;
    if (v76 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v56 + 8))(v160, v59);
    goto LABEL_85;
  }

  if (v66 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v86 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v66 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v87 = v153;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v61(v87, v13);
    v89 = v154;
    v88 = v155;
    v90 = v156;
    (*(v155 + 104))(v154, enum case for ShelfBackground.editorsChoice(_:), v156);
    v91 = v158;
    v92 = sub_1007457A4();
    v93 = *(v88 + 8);
    v93(v89, v90);
    v93(v91, v90);
    if ((v92 & 1) == 0)
    {
      goto LABEL_85;
    }

    v94 = v163;
    v163[3] = &type metadata for CGFloat;
    v94[4] = &protocol witness table for CGFloat;
    *v94 = 0x403E000000000000;
    goto LABEL_22;
  }

  if (v66 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v95 = v152;
      sub_100016B4C(&v62[v64], v152, &unk_100933370);
      v96 = v65(v95, v59);
      if (v96 == enum case for Shelf.ContentType.ribbonFlow(_:) || v96 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10000C8CC(&v62[v64], &unk_100933370);
        (*(v56 + 8))(v62, v59);
        if (qword_100921738 != -1)
        {
          swift_once();
        }

        v77 = sub_100750B04();
        v78 = v77;
        v79 = qword_100982128;
        goto LABEL_19;
      }

      (*(v56 + 8))(v95, v59);
    }

LABEL_16:
    sub_10000C8CC(&v62[v64], &unk_100933370);
    (*(v56 + 8))(v62, v59);
    if (qword_100921720 != -1)
    {
      swift_once();
    }

    v77 = sub_100750B04();
    v78 = v77;
    v79 = qword_1009820E0;
LABEL_19:
    v80 = sub_10000D0FC(v77, v79);
    v81 = v163;
    v163[3] = v78;
    v81[4] = &protocol witness table for StaticDimension;
    v82 = sub_10000D134(v81);
    (*(*(v78 - 8) + 16))(v82, v80, v78);
    v69 = &unk_100933370;
    v68 = v162;
    return sub_10000C8CC(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v83 = sub_1007457D4();
    v84 = v163;
    v163[3] = v83;
    v84[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension);
    sub_10000D134(v84);
    sub_1007457C4();
    goto LABEL_22;
  }

  v97 = enum case for Shelf.ContentType.productReview(_:);
  if (v66 == enum case for Shelf.ContentType.productReview(_:))
  {
    v98 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v99 = v151;
    sub_100016B4C(&v62[v64], v151, &unk_100933370);
    v100 = v65(v99, v59);
    if (v100 == v98)
    {
      v101 = v148;
      sub_100747B84();
      sub_10074F634();
      v103 = v102;
      (*(v149 + 8))(v101, v150);
      v104 = v163;
      v163[3] = &type metadata for CGFloat;
      v104[4] = &protocol witness table for CGFloat;
      *v104 = v103;
      goto LABEL_22;
    }

    if (v100 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v160 = v99;
    if (v100 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v115 = v163;
    v163[3] = &type metadata for Double;
    v115[4] = &protocol witness table for Double;
    *v115 = 0;
LABEL_22:
    sub_10000C8CC(v162, &unk_100933370);
    sub_10000C8CC(&v62[v64], &unk_100933370);
    return (*(v56 + 8))(v62, v59);
  }

  v105 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v66 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v105 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v106 = v160;
    sub_100016B4C(&v62[v64], v160, &unk_100933370);
    v107 = v65(v106, v59);
    if (v107 == v97)
    {
      if (qword_100921728 != -1)
      {
        swift_once();
      }

      v108 = sub_100750B04();
      v109 = v108;
      v110 = qword_1009820F8;
LABEL_53:
      v112 = sub_10000D0FC(v108, v110);
      v113 = v163;
      v163[3] = v109;
      v113[4] = &protocol witness table for StaticDimension;
      v114 = sub_10000D134(v113);
      (*(*(v109 - 8) + 16))(v114, v112, v109);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v66 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v111 = v147;
    sub_100016B4C(&v62[v64], v147, &unk_100933370);
    v107 = v65(v111, v59);
    v160 = v111;
LABEL_49:
    if (v107 != v105)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_100921730 != -1)
    {
      swift_once();
    }

    v108 = sub_100750B04();
    v109 = v108;
    v110 = qword_100982110;
    goto LABEL_53;
  }

  if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v116 = v146;
    sub_100016B4C(&v62[v64], v146, &unk_100933370);
    v117 = v65(v116, v59);
    v160 = v116;
    if (v117 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v118 = v145;
    sub_100016B4C(&v62[v64], v145, &unk_100933370);
    v119 = v65(v118, v59);
    v160 = v118;
    if (v119 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v120 = v144;
    sub_100016B4C(&v62[v64], v144, &unk_100933370);
    v121 = v65(v120, v59);
    v160 = v120;
    if (v121 != v86)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v122 = v64;
  if (v66 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v129 = v66;
    v130 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v66 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v131 = v142;
      sub_100016B4C(&v62[v64], v142, &unk_100933370);
      v132 = v65(v131, v59);
      v160 = v131;
      if (v132 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if (v66 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v135 = v141;
      sub_100016B4C(&v62[v64], v141, &unk_100933370);
      v136 = v65(v135, v59);
      if (v136 != v130)
      {
        v160 = v141;
        if (v136 != v129)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10000C8CC(&v62[v64], &unk_100933370);
    (*(v56 + 8))(v62, v59);
    v133 = sub_1007457D4();
    v134 = v163;
    v163[3] = v133;
    v134[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension);
    sub_10000D134(v134);
    sub_1007457C4();
    goto LABEL_6;
  }

  v56 = v165;
  v62 = v166;
  v59 = v164;
  if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
  {
LABEL_5:
    sub_10000C8CC(&v62[v64], &unk_100933370);
    (*(v56 + 8))(v62, v59);
    v67 = v163;
    v163[3] = &type metadata for Double;
    v67[4] = &protocol witness table for Double;
    *v67 = 0;
LABEL_6:
    v68 = v162;
    v69 = &unk_100933370;
    return sub_10000C8CC(v68, v69);
  }

  v123 = v143;
  sub_100016B4C(&v62[v122], v143, &unk_100933370);
  if (v65(v123, v59) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v59 = v164;
    v56 = v165;
    (*(v165 + 8))(v143, v164);
    v62 = v166;
    v64 = v122;
    goto LABEL_5;
  }

  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v124 = sub_100750B04();
  v125 = sub_10000D0FC(v124, qword_1009820F8);
  v126 = v163;
  v163[3] = v124;
  v126[4] = &protocol witness table for StaticDimension;
  v127 = sub_10000D134(v126);
  (*(*(v124 - 8) + 16))(v127, v125, v124);
  sub_10000C8CC(v162, &unk_100933370);
  v128 = v166;
  sub_10000C8CC(&v166[v122], &unk_100933370);
  return (*(v165 + 8))(v128, v164);
}

uint64_t sub_100309FAC@<X0>(uint64_t *a1@<X8>)
{
  v147 = a1;
  v1 = sub_1007457B4();
  v141 = *(v1 - 8);
  v142 = v1;
  __chkstk_darwin(v1);
  v140 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v139 = &v130 - v4;
  v146 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v146);
  v150 = &v130 - v5;
  v6 = sub_10074E984();
  v7 = *(v6 - 8);
  v148 = v6;
  v149 = v7;
  __chkstk_darwin(v6);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v144 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v130 - v14;
  v16 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v130 - v20;
  __chkstk_darwin(v22);
  v24 = &v130 - v23;
  v25 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v25 - 8);
  v131 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v130 = &v130 - v28;
  __chkstk_darwin(v29);
  v138 = &v130 - v30;
  __chkstk_darwin(v31);
  v135 = &v130 - v32;
  __chkstk_darwin(v33);
  v145 = &v130 - v34;
  __chkstk_darwin(v35);
  v136 = &v130 - v36;
  __chkstk_darwin(v37);
  v143 = &v130 - v38;
  __chkstk_darwin(v39);
  v137 = &v130 - v40;
  __chkstk_darwin(v41);
  v134 = &v130 - v42;
  __chkstk_darwin(v43);
  v133 = &v130 - v44;
  __chkstk_darwin(v45);
  v132 = &v130 - v46;
  __chkstk_darwin(v47);
  v49 = &v130 - v48;
  sub_100747BB4();
  sub_10000C8CC(v21, &unk_10093D6E0);
  sub_100028CD0(v18, v24);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_10000C8CC(v24, &unk_10093D6E0);
    v50 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v11 + 8))(v24, v10);
    v50 = 0;
  }

  v51 = v148;
  v52 = v149;
  (*(v149 + 56))(v49, v50, 1, v148);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v53 = v49;
  v54 = *(v11 + 8);
  v55 = v15;
  v56 = v51;
  v54(v55, v10);
  v57 = *(v52 + 32);
  v58 = v150;
  v59 = v9;
  v60 = v52;
  v61 = *(v146 + 48);
  v57(v150, v59, v56);
  v146 = v53;
  sub_100016B4C(v53, &v58[v61], &unk_100933370);
  v62 = *(v60 + 88);
  v63 = v62(v58, v56);
  if (v63 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10000C8CC(&v58[v61], &unk_100933370);
    (*(v60 + 8))(v58, v56);
    if (qword_100921720 != -1)
    {
      swift_once();
    }

    v64 = sub_100750B04();
    v65 = v64;
    v66 = qword_1009820E0;
LABEL_12:
    v67 = sub_10000D0FC(v64, v66);
    v68 = v147;
    v147[3] = v65;
    v68[4] = &protocol witness table for StaticDimension;
    v69 = sub_10000D134(v68);
    (*(*(v65 - 8) + 16))(v69, v67, v65);
    v70 = &unk_100933370;
    v71 = v146;
    return sub_10000C8CC(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10000C8CC(&v58[v61], &unk_100933370);
    (*(v60 + 8))(v58, v56);
    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v64 = sub_100750B04();
    v65 = v64;
    v66 = qword_1009820F8;
    goto LABEL_12;
  }

  if (v63 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v73 = v143;
      sub_100016B4C(&v58[v61], v143, &unk_100933370);
      v74 = v62(v73, v56);
      v145 = v73;
      if (v74 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v106 = sub_100750B04();
    v107 = sub_10000D0FC(v106, qword_100982128);
    v108 = v147;
    v147[3] = v106;
    v108[4] = &protocol witness table for StaticDimension;
    v109 = sub_10000D134(v108);
    (*(*(v106 - 8) + 16))(v109, v107, v106);
    sub_10000C8CC(v146, &unk_100933370);
    v70 = &qword_100923580;
    v71 = v58;
    return sub_10000C8CC(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v75 = v138;
    sub_100016B4C(&v58[v61], v138, &unk_100933370);
    v76 = v62(v75, v56);
    v145 = v75;
    if (v76 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v63 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_100747C04();
    swift_getKeyPath();
    v78 = v61;
    v79 = v139;
    v80 = v144;
    sub_1007525B4();

    v54(v80, v10);
    v82 = v140;
    v81 = v141;
    v83 = v142;
    (*(v141 + 104))(v140, enum case for ShelfBackground.editorsChoice(_:), v142);
    v84 = sub_1007457A4();
    v85 = *(v81 + 8);
    v85(v82, v83);
    v85(v79, v83);
    if ((v84 & 1) == 0)
    {
      goto LABEL_53;
    }

    v86 = v146;
    v87 = v147;
    v147[3] = &type metadata for CGFloat;
    v87[4] = &protocol witness table for CGFloat;
    *v87 = 0x403E000000000000;
    sub_10000C8CC(v86, &unk_100933370);
    v88 = &v58[v78];
    goto LABEL_35;
  }

  if (v63 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_5;
    }

    v89 = v137;
    sub_100016B4C(&v58[v61], v137, &unk_100933370);
    if (v62(v89, v56) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v60 + 8))(v89, v56);
      goto LABEL_5;
    }

    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v90 = sub_100750B04();
    v91 = v90;
    v92 = qword_100982128;
    goto LABEL_31;
  }

  if (v63 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v96 = sub_1007457D4();
    v97 = v147;
    v147[3] = v96;
    v97[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension);
    sub_10000D134(v97);
    sub_1007457C4();
    goto LABEL_34;
  }

  v98 = enum case for Shelf.ContentType.productReview(_:);
  if (v63 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v99 = v145;
    sub_100016B4C(&v58[v61], v145, &unk_100933370);
    v100 = v62(v99, v56);
    if (v100 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v100 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v77 = v147;
        v147[3] = &type metadata for Double;
        v77[4] = &protocol witness table for Double;
        *v77 = 0;
LABEL_34:
        sub_10000C8CC(v146, &unk_100933370);
        v88 = &v58[v61];
LABEL_35:
        sub_10000C8CC(v88, &unk_100933370);
        return (*(v60 + 8))(v58, v56);
      }

LABEL_52:
      (*(v60 + 8))(v145, v56);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v101 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v63 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v102 = v136;
      sub_100016B4C(&v58[v61], v136, &unk_100933370);
      v103 = v62(v102, v56);
      v145 = v102;
      if (v103 == v98)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v63 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v104 = v135;
    sub_100016B4C(&v58[v61], v135, &unk_100933370);
    v105 = v62(v104, v56);
    v145 = v104;
    if (v105 != v101)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v63 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v63 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v111 = v134;
    sub_100016B4C(&v58[v61], v134, &unk_100933370);
    v112 = v62(v111, v56);
    v145 = v111;
    if (v112 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_100921730 != -1)
    {
      swift_once();
    }

    v90 = sub_100750B04();
    v91 = v90;
    v92 = qword_100982110;
LABEL_31:
    v93 = sub_10000D0FC(v90, v92);
    v94 = v147;
    v147[3] = v91;
    v94[4] = &protocol witness table for StaticDimension;
    v95 = sub_10000D134(v94);
    (*(*(v91 - 8) + 16))(v95, v93, v91);
    goto LABEL_34;
  }

  if (v63 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v113 = v133;
    sub_100016B4C(&v58[v61], v133, &unk_100933370);
    v114 = v62(v113, v56);
    v145 = v113;
    if (v114 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v63 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v122 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v63 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v123 = v131;
      sub_100016B4C(&v58[v61], v131, &unk_100933370);
      v124 = v62(v123, v56);
      v145 = v123;
      if (v124 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v127 = v63;
      if (v63 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v128 = v130;
      sub_100016B4C(&v58[v61], v130, &unk_100933370);
      v129 = v62(v128, v56);
      if (v129 != v122)
      {
        v145 = v130;
        if (v129 != v127)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10000C8CC(&v58[v61], &unk_100933370);
    (*(v60 + 8))(v58, v56);
    v125 = sub_1007457D4();
    v126 = v147;
    v147[3] = v125;
    v126[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension);
    sub_10000D134(v126);
    sub_1007457C4();
LABEL_58:
    v71 = v146;
    v70 = &unk_100933370;
    return sub_10000C8CC(v71, v70);
  }

  if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
  {
LABEL_57:
    sub_10000C8CC(&v58[v61], &unk_100933370);
    (*(v60 + 8))(v58, v56);
    v110 = v147;
    v147[3] = &type metadata for Double;
    v110[4] = &protocol witness table for Double;
    *v110 = 0;
    goto LABEL_58;
  }

  v115 = &v58[v61];
  v116 = v132;
  sub_100016B4C(v115, v132, &unk_100933370);
  if (v62(v116, v56) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v56 = v148;
    v60 = v149;
    (*(v149 + 8))(v132, v148);
    v58 = v150;
    goto LABEL_57;
  }

  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v117 = sub_100750B04();
  v118 = sub_10000D0FC(v117, qword_1009820F8);
  v119 = v147;
  v147[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_10000D134(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
  sub_10000C8CC(v146, &unk_100933370);
  v121 = v150;
  sub_10000C8CC(&v150[v61], &unk_100933370);
  return (*(v149 + 8))(v121, v148);
}

uint64_t sub_10030B3B8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v4 = sub_100747B94();
  sub_1007537D4();

  return sub_1003076F4(a1, a2);
}

uint64_t sub_10030B404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100747B94();
  v5 = sub_1007537D4();

  if (v5)
  {

    return sub_1003088FC(a1, a2);
  }

  else
  {

    return sub_100309FAC(a2);
  }
}

uint64_t sub_10030B48C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030B4F0()
{
  v36 = sub_100748B44();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100748B54();
  sub_100039C50(v5, qword_10097F910);
  v33 = sub_10000D0FC(v5, qword_10097F910);
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_10097F928);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = sub_100750B04();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_10000D134(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  sub_100750B14();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v6, qword_10097F940);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v44);
  v19 = v30;
  v30(v18, v4, v1);
  sub_100750B14();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v40);
  v19(v21, v4, v1);
  sub_100750B14();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return sub_100748B34();
}

char *sub_10030BABC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = sub_1007469A4();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_10097F928);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = sub_100745C84();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel] = sub_100745C74();
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v18, qword_10097F940);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = sub_100745C74();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_10030C5B8(v39, v39);

  return v39;
}

uint64_t sub_10030C05C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_100750354();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748B54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748B74();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_10097F910);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = sub_100745C84();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_100748B64();
  sub_100748B24();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10030C3C0(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1)
  {
    return sub_10030C5B8(v2, v2);
  }

  if ((sub_1007537F4() ^ v5))
  {
    return sub_10030C5B8(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = sub_1007537D4() & 1;

  result = sub_1007537D4();
  if ((result & 1) != v7)
  {
    return sub_10030C5B8(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell()
{
  result = qword_1009325A8;
  if (!qword_1009325A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10030C5B8(void *a1, uint64_t a2)
{
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_1007537D4();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_100745BF4();
    v12(v8, v11, v4);
    return sub_100745BF4();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

void *sub_10030C758(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_100754624();

    if (v3)
    {
      sub_100016C60(0, &qword_10092B280);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1004126C0(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t sub_10030C848(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  v8 = sub_10000D0FC(v7, qword_1009820B0);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000D134(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_10030C948(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  sub_1007539D4();
  v26 = sub_100753064();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_10030CCF8()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v64.receiver = v0;
  v64.super_class = v6;
  objc_msgSendSuper2(&v64, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v60 = v9;
  v61 = v8;
  v58 = v11;
  v59 = v10;

  v63 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_100920950 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10097F960, qword_10097F978);
    sub_100536120();
    sub_100750564();
    v16 = v20;

    (*(v3 + 8))(v5, v2);
  }

  v21 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = v22;
    [v25 frame];
    v13 = v26;
    v23 = v27;
    if (qword_100920948 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100932610, qword_100932628);
    sub_100536120();
    sub_100750564();
    v24 = v28;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_100920938 != -1)
  {
    swift_once();
  }

  v57 = v13;
  v62 = v14;
  sub_10000C888(qword_1009325C0, qword_1009325D8);
  sub_100536120();
  sub_100750564();
  v30 = v29;
  v31 = *(v3 + 8);
  v31(v5, v2);
  if (qword_100920940 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_1009325E8, qword_100932600);
  sub_100536120();
  sub_100750564();
  v33 = v32;
  v31(v5, v2);
  v55 = v15;
  v56 = v16;
  v54 = v15 + v16 + v23 + v24 + v30 + v33;
  v34 = v61;
  v65.origin.x = v61;
  v49 = v24;
  v35 = v23;
  v52 = v23;
  v37 = v59;
  v36 = v60;
  v65.origin.y = v60;
  v65.size.width = v59;
  v38 = v58;
  v65.size.height = v58;
  MinX = CGRectGetMinX(v65);
  v51 = MinX;
  v66.origin.x = v34;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v40 = v30 + CGRectGetMinY(v66);
  v53 = v40;
  v67.origin.x = v34;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v50 = CGRectGetMinX(v67);
  v68.origin.x = MinX;
  v68.origin.y = v40;
  v41 = v57;
  v68.size.width = v57;
  v68.size.height = v35;
  v42 = v49 + CGRectGetMaxY(v68);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v37;
  v69.size.height = v38;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v37;
  v70.size.height = v38;
  v44 = CGRectGetHeight(v70) - v54;
  v71.origin.x = v34;
  v71.origin.y = v36;
  v71.size.width = v37;
  v71.size.height = v38;
  v45 = CGRectGetMinX(v71);
  v46 = v50;
  v72.origin.x = v50;
  v72.origin.y = v42;
  v72.size.width = Width;
  v72.size.height = v44;
  v47 = v56 + CGRectGetMaxY(v72);
  [*&v1[v21] setFrame:{v51, v53, v41, v52}];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v46, v42, Width, v44}];
  return [*&v1[v63] setFrame:{v45, v47, v62, v55}];
}

uint64_t sub_10030D2C8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v9 = *&v0[v7];
  if (v9)
  {
    *(v9 + 32) = &off_100870F68;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

BOOL sub_10030D404()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = sub_1007444C4();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_100754664();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = sub_10074F114();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_10030D550(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell();
  sub_1007539D4();
  v4 = sub_100753064();

  isa = sub_100741704().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_10028864C();

  return v7;
}

void sub_10030DAE4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v3)
  {

    v4 = sub_100741774();
    v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 8 * v4 + 32);

LABEL_6:
        v7 = sub_100741774();
        v3(v6, v7);
        sub_1000164A8(v3);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v6 = sub_100754574();

    goto LABEL_6;
  }

LABEL_7:
  isa = sub_100741704().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_10030DDF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell()
{
  result = qword_100932668;
  if (!qword_100932668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030DF74()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10030E050(char *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v94 = a6;
  v96 = a3;
  v95 = a2;
  v89 = sub_100754724();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = sub_1007428D4();
  v92 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1007504F4();
  v90 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v25 - 8);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (a1 >> 62);
  v88 = v9;
  v87 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v100 = sub_100754664();
  }

  else
  {
    v100 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v99 = a1;
  v98 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v100 == v29)
    {
      break;
    }

    if (v98)
    {
      sub_100754574();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = sub_10074F114();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  sub_100743864();
  sub_1002898DC(v95, v91);
  if (v27)
  {
    v31 = sub_100754664();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v86 = a5;
  v85 = a4;
  if (v31 < 1)
  {
    sub_1007444B4();
    v45 = v92;
    v46 = ObjectType;
    v47 = (*(v92 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v33 = v90;
    if (v47 != enum case for AppPlatform.phone(_:) && v47 != enum case for AppPlatform.pad(_:) && v47 != enum case for AppPlatform.messages(_:))
    {
      if (v47 == enum case for AppPlatform.watch(_:))
      {
        if (qword_100920770 == -1)
        {
LABEL_46:
          v49 = v97;
          v50 = sub_10000D0FC(v97, qword_10097ECE0);
          (*(v33 + 16))(a1, v50, v49);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v47 != enum case for AppPlatform.tv(_:) && v47 != enum case for AppPlatform.mac(_:))
      {
        sub_100750504();
        (*(v45 + 8))(v13, v46);
LABEL_38:
        v48 = v96;
        if (sub_1007444C4() & 1) != 0 && (sub_100750444())
        {
          if (sub_100750444())
          {
            (*(v33 + 16))(v27, a1, v97);
          }

          else
          {
            sub_100750484();
          }
        }

        else
        {
          (*(v33 + 16))(v27, a1, v97);
          sub_100750444();
        }

        swift_getObjectType();
        v51 = [v48 traitCollection];
        sub_1007537B4();

        [v48 pageMarginInsets];
        [v48 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v52 = [v48 traitCollection];
        sub_1007537B4();

        sub_1007504C4();
        sub_1007504C4();
        v36 = v53;
        v54 = *(v33 + 8);
        v55 = v97;
        v54(v27, v97);
        v54(a1, v55);
        goto LABEL_49;
      }
    }

    sub_100750504();
    goto LABEL_38;
  }

  v32 = v90;
  v33 = v100;
  if (!v100)
  {
    v36 = 0.0;
    goto LABEL_49;
  }

  if (v100 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v34 = 0;
  v92 = v32 + 16;
  v35 = (v32 + 8);
  v36 = 0.0;
  do
  {
    if (v98)
    {
      sub_100754574();
    }

    else
    {
    }

    v42 = v96;
    v43 = sub_1007444C4();
    sub_10074F2A4();
    sub_100750504();
    if (v33 == a1 || (v43 & 1) == 0)
    {
      (*v92)(v21, v24, v97);
      sub_100750444();
    }

    else if (sub_100750444())
    {
      (*v92)(v21, v24, v97);
    }

    else
    {
      sub_100750484();
    }

    v44 = [v42 traitCollection];
    sub_1007537B4();

    [v42 pageMarginInsets];
    [v42 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v34;
    v37 = [v42 traitCollection];
    sub_1007537B4();

    sub_1007504C4();
    sub_1007504C4();
    v39 = v38;

    v40 = *v35;
    v41 = v97;
    (*v35)(v21, v97);
    v40(v24, v41);
    if (v39 > v36)
    {
      v36 = v39;
    }

    v33 = v100;
  }

  while (v100 != v34);
LABEL_49:
  sub_10000C518(&unk_10092F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = v36;
  v101 = inited;
  v57 = v85;
  v58 = v89;
  v59 = v88;
  v60 = v87;
  v61 = v86;
  if (v85 >= COERCE_DOUBLE(1))
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_1007A6580;
    *(v62 + 32) = v57;
    if (qword_100920948 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100932610, qword_100932628);
    sub_100536120();
    sub_100750564();
    v64 = v63;
    (*(v59 + 8))(v60, v58);
    *(v62 + 40) = v64;
    sub_10049FD08(v62);
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1007A6580;
    *(v65 + 32) = v61;
    if (qword_100920950 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10097F960, qword_10097F978);
    sub_100536120();
    sub_100750564();
    v67 = v66;
    (*(v59 + 8))(v60, v58);
    *(v65 + 40) = v67;
    sub_10049FD08(v65);
  }

  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1007A6580;
  if (qword_100920938 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_1009325C0, qword_1009325D8);
  sub_100536120();
  v69 = v96;
  sub_100750564();
  v71 = v70;
  v72 = *(v59 + 8);
  v72(v60, v58);
  *(v68 + 32) = v71;
  if (qword_100920940 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_1009325E8, qword_100932600);
  sub_100536120();
  sub_100750564();
  v74 = v73;
  v72(v60, v58);
  *(v68 + 40) = v74;
  sub_10049FD08(v68);
  [v69 pageMarginInsets];
  v75 = *(v101 + 16);
  if (v75)
  {
    if (v75 <= 3)
    {
      v76 = 0;
      v77 = 0.0;
LABEL_68:
      v80 = v75 - v76;
      v81 = (v101 + 8 * v76 + 32);
      do
      {
        v82 = *v81++;
        v77 = v77 + v82;
        --v80;
      }

      while (v80);
      goto LABEL_70;
    }

    v76 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    v78 = (v101 + 48);
    v77 = 0.0;
    v79 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = v77 + *(v78 - 2) + *(v78 - 1) + *v78 + v78[1];
      v78 += 4;
      v79 -= 4;
    }

    while (v79);
    if (v75 != v76)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_100024440(v91);

  return v94;
}

uint64_t sub_10030EF04(uint64_t a1)
{
  v2 = v1;
  sub_10000C824(a1, v28);
  sub_10000C518(&unk_100923100);
  sub_100743864();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v5 = swift_allocObject();
      *(v5 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
      *(v5 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v5 + 32) = &off_100870F68;
      swift_unknownObjectWeakAssign();
      *&v2[v4] = v5;

      v6 = *&v2[v4];
      if (v6)
      {
        *(v6 + 32) = &off_100870F68;
        swift_unknownObjectWeakAssign();
      }

      v7 = sub_100743854();
      if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform] || (, v8 = sub_1007444C4(), , (v8 & 1) == 0))
      {
LABEL_20:
        v12 = 0;
        goto LABEL_21;
      }

      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
      {
        v11 = 0;
        do
        {
          v12 = i != v11;
          if (i == v11)
          {
            break;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            sub_100754574();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v11 >= *(v9 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v11, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v13 = sub_10074F114();

          ++v11;
        }

        while ((v13 & 1) == 0);
LABEL_21:

        v14 = [v2 traitCollection];
        sub_1007537B4();

        if (!*&v2[v4])
        {
          break;
        }

        v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v17 = sub_1004C7000(v16, v12);
        v18 = v17;
        v27 = v15;
        v26 = *(v15 + 16);
        if (!v26)
        {
LABEL_35:
        }

        v19 = 0;
        v9 = v17 & 0xFFFFFFFFFFFFFF8;
        v20 = (v27 + 48);
        v24 = v17 & 0xC000000000000001;
        v25 = v17 >> 62;
        while (v19 < *(v27 + 16))
        {
          v4 = *(v20 - 2);
          v21 = *(v20 - 1);
          v22 = *v20;
          if (v25)
          {
            if (v19 == sub_100754664())
            {
              goto LABEL_35;
            }
          }

          else if (v19 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          if (v24)
          {

            sub_100754574();
          }

          else
          {
            if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }
          }

          v2 = v19 + 1;
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v23 = swift_allocObject();
          swift_weakInit();
          v7 = swift_allocObject();
          *(v7 + 16) = v12;
          *(v7 + 24) = v23;
          *(v7 + 32) = v4;
          *(v7 + 40) = v21;
          *(v7 + 48) = v22;
          *(v7 + 56) = v19;

          sub_1007441F4();

          sub_10000C8CC(v28, &unk_1009276E0);

          v20 += 3;
          v19 = v2;
          if (v26 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }

  return result;
}

void sub_10030F340()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_10030F478(objc_class *a1, uint64_t a2)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView);
  sub_10000C518(&qword_1009253E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A6580;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  sub_1007416F4();
  isa = sub_100741704().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v15 = sub_100743334();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      sub_100743384(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

uint64_t sub_10030F630()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10030F668()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10030F6A8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!sub_100754664())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_100754664();
}

void sub_10030F750(void *a1)
{
  v2 = v1;
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  sub_100743864();

  sub_1002898DC(v16, v13);

  v17 = sub_100741774();
  v18 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  v29 = v5;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100754574();
LABEL_8:
  sub_10074F2A4();
  sub_100750504();

  v19 = sub_10030D404();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  v21 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v19;
  swift_unknownObjectRetain();

  v23 = *(v2 + v20);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v23 pageContainerSize];
  v24 = v29;
  if (v22)
  {
    if (sub_100750444())
    {
      (*(v24 + 16))(v7, v10, v4);
    }

    else
    {
      sub_100750484();
    }
  }

  else
  {
    (*(v29 + 16))(v7, v10, v4);
    sub_100750444();
  }

  swift_getObjectType();
  v25 = [v21 traitCollection];
  sub_1007537B4();

  [v21 pageMarginInsets];
  [v21 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v26 = [v21 traitCollection];
  sub_1007537B4();

  sub_1007504C4();
  sub_1007504C4();

  swift_unknownObjectRelease();
  v27 = *(v29 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_100024440(v13);
}

unint64_t sub_10030FBEC()
{
  v1 = v0;
  type metadata accessor for ScreenshotCollectionViewCell();
  v2 = swift_dynamicCastClassUnconditional();
  result = sub_100741774();
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_100754574();

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);

LABEL_5:
  v6 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_10028864C();

  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 16);

    v9 = sub_10030C758(v5, v8);

    if (v9)
    {
      v10 = *(*(v2 + v6) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v11 = v9;
      v12 = v10;
      v13 = sub_100743334();

      if (v13 && (sub_100016C60(0, &qword_10092B280), v14 = v11, v15 = sub_100753FC4(), v14, v13, (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = *(*(v2 + v6) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
        v17 = sub_100743334();
        v19 = v17;
        if (v17)
        {
        }

        v21.is_nil = v19 == 0;
        v21.value.super.isa = v9;
        sub_100743384(v21, v18);
      }
    }
  }
}

void sub_10030FE60(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

double sub_10030FF64()
{
  sub_10000C888(v0, v0[3]);
  sub_100751254();
  return ceil(v1);
}

uint64_t sub_10030FFD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100310018(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1003100EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_1003101B4();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_1003104E8();
    swift_unknownObjectWeakAssign();
    sub_1003101B4();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_1003101B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;

    swift_beginAccess();
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_10:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + v11);
      v14 = *&v2[v7];
      if (v14 >> 62)
      {
        v15 = sub_100754664();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if ((v12 & 0x8000000000000000) == 0 && v12 < v15)
      {
        swift_beginAccess();
        v16 = *&v2[v7];
        if ((v16 & 0xC000000000000001) != 0)
        {
          v22 = v13;
          v19 = sub_100754574();
        }

        else
        {
          if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(v16 + 8 * v12 + 32);
          v18 = v13;
          v19 = v17;
        }

        v20 = v19;
        swift_endAccess();
        v21 = v13;
        sub_100743344();
        [v2 setNeedsDisplay];
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1003103A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = sub_100754664();
    if (a2 < 0)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 < 0)
    {
      return;
    }
  }

  if (v8 > a2)
  {
    swift_beginAccess();
    v9 = *&v3[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * a2 + 32);
    }

    v11 = v10;
    swift_endAccess();
    v12 = a1;
    sub_100743344();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_1003104A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1003104E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_10074F0C4();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
  result = swift_beginAccess();
  v6 = *&v1[v4];
  if (v6 >> 62)
  {
    result = sub_100754664();
    v7 = result;
    v8 = &off_100932000;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &off_100932000;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v2;
  v36 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v40 = v10;
    swift_beginAccess();
    sub_10000C518(&qword_10092A198);
    sub_1007512D4();
    swift_endAccess();
  }

  while (v7 != v9);

  v2 = v35;
  v4 = v36;
  v8 = &off_100932000;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration];
  if (!v12)
  {
    return result;
  }

  v13 = *(v12 + 24);
  if (v13 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v13)
  {
    v14 = v8[208];
    v35 = v2 + 2;
    v36 = v14;
    v34 = (v2 + 1);

    do
    {
      while (1)
      {
        __chkstk_darwin(v15);
        v16 = ObjectType;
        *(&v33 - 2) = v12;
        *(&v33 - 1) = v16;
        swift_beginAccess();
        sub_10000C518(&qword_10092A198);
        sub_1007512B4();
        swift_endAccess();
        v17 = v40;
        if (*(v12 + 24) == 3)
        {
          v18 = qword_10097E260;
          if (qword_1009204E0 != -1)
          {
            swift_once();
            v18 = qword_10097E260;
          }
        }

        else
        {
          v18 = qword_10097E248;
          if (qword_1009204D8 != -1)
          {
            swift_once();
            v18 = qword_10097E248;
          }
        }

        v19 = v39;
        v20 = sub_10000D0FC(v39, v18);
        (*v35)(v38, v20, v19);
        v21 = v17;
        v22 = [v21 layer];
        sub_10074F0B4();
        [v22 setShadowOffset:?];

        v23 = [v21 layer];
        v24 = sub_10074F0A4();
        v25 = [v24 CGColor];

        [v23 setShadowColor:v25];
        v26 = [v21 layer];
        sub_10074F084();
        [v26 setShadowRadius:?];

        v27 = [v21 layer];
        LODWORD(v28) = 1.0;
        [v27 setShadowOpacity:v28];

        [v21 setClipsToBounds:0];
        swift_beginAccess();
        v29 = v21;
        sub_100753284();
        if (*((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        swift_endAccess();
        v30 = [v29 superview];

        if (v30)
        {
          sub_100016C60(0, &qword_100922300);
          v31 = v1;
          v32 = sub_100753FC4();

          if (v32)
          {
            break;
          }
        }

        [v1 addSubview:v29];

        v15 = (*v34)(v38, v39);
        if (!--v13)
        {
        }
      }

      (*v34)(v38, v39);

      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_100310D28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_1007433C4();
  if (v3 == 1)
  {
    v4 = sub_1007431B4();
  }

  else
  {
    v4 = sub_1007431D4();
  }

  v5 = v4;
  sub_100016C60(0, &qword_100923500);
  sub_100753E34();
  sub_100743224();
  v6 = v5;
  sub_100743234();
  sub_100746E64();
  sub_100743244();
  sub_100746E74();

  *a2 = v6;
}

void sub_100310DD8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? sub_100754664() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_100016C60(0, &qword_100922300);

        v7 = sub_100754654();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_100754764();
        sub_100016C60(0, &qword_100922300);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory];
      }

      sub_1007477B4();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      sub_10003E858(v10, v12, v14, v16, v17, v7, v8);
    }
  }
}

uint64_t sub_10031100C(uint64_t result, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v5 = result;
    v8 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    result = v9 >> 62 ? sub_100754664() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == *(v4 + 24))
    {
      v10 = *(v3 + v8);
      if (v10 >> 62)
      {
        sub_100016C60(0, &qword_100922300);

        v11 = sub_100754654();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_100754764();
        sub_100016C60(0, &qword_100922300);
        v11 = v10;
      }

      if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v12 = 5;
      }

      else
      {
        v12 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory);
      }

      sub_10003E988(a2, a3, v5, v11, v12);
    }
  }

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackIconView()
{
  result = qword_1009326B0;
  if (!qword_1009326B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100311334()
{
  sub_1003113E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003113E8()
{
  if (!qword_1009326C0)
  {
    sub_10000C724(&qword_10092DE18);
    sub_100311458();
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1009326C0);
    }
  }
}

unint64_t sub_100311458()
{
  result = qword_10092DE20;
  if (!qword_10092DE20)
  {
    sub_10000C724(&qword_10092DE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092DE20);
  }

  return result;
}

uint64_t sub_10031150C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v15 - 8);
  v63 = &v56 - v16;
  v17 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_10074F314();
  __chkstk_darwin(v20 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100741EA4();
  v23 = sub_100741E94();
  if (v23)
  {
    v60 = v14;

    v24 = sub_10074EF24();
    v61 = a1;
    if (v24)
    {
      v57 = v8;
      v58 = v11;
      v62 = v23;
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v25 = sub_100747064();
      sub_10000D0FC(v25, qword_10097E3A8);
      sub_100746F34();
      v59 = v2;
      v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView) contentMode];
      sub_10074F374();
      v28 = *(v26 + v27);
      sub_10074F324();
      sub_100743364();
      [v28 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v29 = *(v26 + v27);
      sub_1007433C4();
      sub_10004D658();
      v30 = v29;
      sub_100744204();

      v11 = v58;
      v3 = v59;
      v23 = v62;
      v8 = v57;
    }

    v31 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_10000C518(&unk_10092EEA0);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = sub_100742E24();
    v34 = a2;
    v35 = v63;
    (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
    v36 = sub_100745E94();
    v37 = v60;
    (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
    v38 = sub_10000C518(&unk_100925560);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = sub_10074F8B4();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_100656038(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10000C8CC(v8, &unk_100925520);
    v31[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v31 setNeedsLayout];

    sub_10000C8CC(v11, &unk_100925990);
    sub_10000C8CC(v37, &unk_1009259A0);
    v40 = v35;
    a2 = v34;
    sub_10000C8CC(v40, &unk_100925530);
    sub_10000C8CC(v19, &unk_100925540);
  }

  if (v22)
  {

    if (sub_10074EF24())
    {
      v62 = v23;
      v63 = a2;
      v41 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView) contentMode];
      sub_10074F374();
      v43 = *(v41 + v42);
      sub_10074F324();
      sub_100743364();
      [v43 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v44 = *(v41 + v42);
      sub_1007433C4();
      sub_10004D658();
      v45 = v44;
      sub_100744204();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel];

    sub_10074EF34();
    v49 = v48;

    if (v49)
    {
      v46 = sub_100753064();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  sub_100741E84();
  if (v51)
  {
    v52 = sub_100753064();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v65._object = 0x8000000100776FF0;
  v65._countAndFlagsBits = 0xD000000000000030;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1007458B4(v65, v66);
  v54 = sub_100753064();

  [v53 setText:v54];

  [v3 setNeedsLayout];
}

id sub_100311F20()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView()
{
  result = qword_1009327C0;
  if (!qword_1009327C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003120C0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100313CA0(&qword_1009230E0, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = sub_100753FC4();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_10031225C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1003122C0;
}

void sub_1003122C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1003123E8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1007477B4();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView];
    sub_1007477B4();
    v3 = v2;
    v5 = v4;
    sub_1000CBC6C(v15);
    sub_1000CD7E4(v0, v15, v3, v5);
    sub_1000CD59C(v15);
    sub_1007477B4();
    CGRectGetMinX(v18);
    sub_1007477B4();
    CGRectGetMinY(v19);
    sub_1007477B4();
    sub_100753B24();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_100922300);
      v9 = v0;
      v10 = sub_100753FC4();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_1007477B4();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_1007477B4();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_1007477B4();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_100312790(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = v60 - v5;
  v7 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v7 - 8);
  v9 = v60 - v8;
  v10 = sub_10000C518(&unk_100933080);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  sub_100016C60(0, &qword_1009327F0);
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer];
  if ((sub_100753FC4() & 1) == 0)
  {
    return;
  }

  v61 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView];
  v15 = [v61 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016C60(0, &qword_100922300);
  v18 = v2;
  v60[1] = v17;
  LOBYTE(v17) = sub_100753FC4();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v23 = [v61 superview];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = v18;
    v26 = sub_100753FC4();

    if ((v26 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0x3FF0000000000000;
    v67 = sub_100313DD0;
    v68 = v28;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_1000CF7B0;
    v66 = &unk_100871160;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v67 = sub_100313DE8;
    v68 = v31;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_1008711B0;
LABEL_30:
    v65 = sub_100144DD8;
    v66 = v32;
    v58 = _Block_copy(&aBlock);
    v59 = v30;

    [v27 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v29 options:v58 animations:0.0 completion:1.0];
    _Block_release(v58);
    _Block_release(v29);
    return;
  }

  if (v19 == 1)
  {
    v33 = v61;
    [a1 locationInView:v61];
    v34 = v18 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation;
    *v34 = v35;
    *(v34 + 1) = v36;
    v34[16] = 0;
    v37 = [v33 superview];
    if (!v37)
    {
      return;
    }

    v38 = v37;
    v39 = v18;
    v40 = sub_100753FC4();

    if ((v40 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = 0x3FEEB851EB851EB8;
    v67 = sub_100313DD0;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_1000CF7B0;
    v66 = &unk_100871200;
    v29 = _Block_copy(&aBlock);
    v30 = v39;

    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = v30;
    v67 = sub_100313DE8;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_100871250;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v61];
    v45 = (v18 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation + 16))
    {
      *v45 = v43;
      v45[1] = v44;
      *(v45 + 16) = 0;
    }

    else
    {
      v46 = sqrt((v44 - v45[1]) * (v44 - v45[1]) + (v43 - *v45) * (v43 - *v45));
      [v14 allowableMovement];
      if (v47 < v46)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1001E899C(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100933090;
    v22 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1007455C4();
    v66 = ObjectType;
    aBlock = v18;
    v48 = v18;
    sub_10074EC54();

    sub_1007455B4();
    v49 = sub_10000C518(&unk_100923210);
    sub_1007526C4();

    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v6, 1, v49) != 1)
    {
      sub_1007455C4();
      v51 = sub_1007455B4();
      sub_1003C0E00(aBlock, 1, v51, v6);

      (*(v11 + 8))(v13, v10);

      (*(v50 + 8))(v6, v49);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100923960;
    v22 = v6;
  }

  sub_10000C8CC(v22, v21);
LABEL_27:
  v52 = [v61 superview];
  if (v52)
  {
    v53 = v52;
    v54 = v18;
    v55 = sub_100753FC4();

    if (v55)
    {
      v27 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = 0x3FF0000000000000;
      v67 = sub_100313D20;
      v68 = v56;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_1000CF7B0;
      v66 = &unk_1008710C0;
      v29 = _Block_copy(&aBlock);
      v30 = v54;

      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = v30;
      v67 = sub_100313D44;
      v68 = v57;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v32 = &unk_100871110;
      goto LABEL_30;
    }
  }
}

id sub_100313178(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

uint64_t sub_1003131D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100016C60(0, &qword_1009327F0);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_1001E899C(&v3[v21], v7);
    v22 = sub_10000C518(&unk_100933080);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10000C8CC(v7, &qword_100933090);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_1003134A8()
{
  sub_1001E5A54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100313578(uint64_t **a1))()
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
  v2[4] = sub_10031225C(v2);
  return sub_1000181A8;
}

double sub_1003135FC()
{
  [*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  sub_1007477B4();
  CGRectGetHeight(v3);
  sub_1007477B4();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_100313674()
{
  v1 = *v0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  sub_1007477B4();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_100313720()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100313CA0(&unk_1009327E0, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100313794(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100313CA0(&unk_1009327E0, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100313820(uint64_t *a1))()
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
  sub_100313CA0(&unk_1009327E0, type metadata accessor for AppPromotionView);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1003138DC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

char *sub_100313A5C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  v3 = sub_10000C518(&unk_100933080);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

uint64_t sub_100313CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100313CE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100313D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100313D48()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100313D80()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

void sub_100313E54()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&v0[v2])
  {
    v16 = v15;
    [v15 addSubview:?];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_100313FD8(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RuleResultsViewController();
  result = objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100753064();
    [v6 setText:v7];

    sub_100744494();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = sub_1000A7FA0();

    v9[3] = v8;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = sub_100753774();
    sub_100752D64();

    sub_10000C620(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10031417C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 text];
      if (!v6)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v7 = v6;
      sub_100753094();

      v14 = *(v1 + 16);
      if (v14)
      {
        v8 = 0;
        v9 = (v1 + 40);
        while (v8 < *(v1 + 16))
        {
          ++v8;
          v10 = v1;
          v12 = *(v9 - 1);
          v11 = *v9;

          v15._countAndFlagsBits = v12;
          v15._object = v11;
          sub_1007531B4(v15);

          sub_100753234();
          sub_1007531A4();

          v1 = v10;

          v9 += 2;
          if (v14 == v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_11;
      }

LABEL_8:
      v13 = sub_100753064();

      [v5 setText:v13];
    }
  }
}

void sub_100314354()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      swift_getErrorValue();
      sub_1007547C4();
      v4 = sub_100753064();

      [v3 setText:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003144DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100314590()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100314624()
{
  *&v72 = sub_10000C518(&qword_100932848);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = sub_100750B04();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = sub_100750BD4();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750954();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = sub_100750E94();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_100750534();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074F704();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745794();
  sub_1003151FC(&qword_100932850, &type metadata accessor for ProductPageLink);
  result = sub_1007468B4();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    sub_100746914();

    v28 = v85[0];
    v73 = v27;
    sub_100745774();
    if (v29)
    {
      v30 = sub_100743AD4();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      sub_100753B64();
    }

    if (qword_100920E10 != -1)
    {
      swift_once();
    }

    v32 = sub_10000C518(&unk_1009249B0);
    sub_10000D0FC(v32, qword_100980760);
    sub_100743454();
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v23 + 8))(v25, v22);
    if (sub_1007537E4())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100921148 != -1)
      {
        swift_once();
      }

      v38 = qword_100981110;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100921140 != -1)
      {
        swift_once();
      }

      v38 = qword_1009810F8;
    }

    v39 = sub_10000D0FC(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    sub_100750E84();
    sub_100750E54();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_100920E18 != -1)
    {
      swift_once();
    }

    v43 = sub_10000C518(&unk_10092BC10);
    sub_10000D0FC(v43, qword_100980778);
    sub_100743454();
    sub_100750E74();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    sub_100750E64();
    v44(v17, v34);
    v46 = v69;
    sub_100750944();
    sub_100750E04();
    v84 = v40;
    sub_10000C888(v85, v85[3]);
    sub_1007509B4();
    sub_100750924();
    sub_10000C620(v85);
    sub_100750E44();
    sub_1007508D4();
    sub_100750E24();
    sub_1007508B4();
    sub_100750E34();
    sub_1007508C4();
    sub_100750E14();
    sub_1007508A4();
    sub_100745784();
    (*(v78 + 16))(v65, v46, v79);
    sub_100750BB4();
    sub_100750BE4();
    v47 = v66;
    sub_1004E2578(v66);
    v48 = v72;
    sub_100743454();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_1004E2584(v47);
    sub_100743454();
    v49(v47, v48);
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v50 = swift_allocObject();
    v72 = xmmword_1007A5CF0;
    *(v50 + 16) = xmmword_1007A5CF0;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = sub_100751044();
    sub_100750404();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = sub_100751044();
    v56 = v81;
    v57 = v64;
    sub_100750544();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = sub_100751044();
    v61 = v83;
    sub_100750544();

    v62 = *(v71 + 8);
    v62(v61, v57);
    v62(v56, v57);
    (*(v70 + 8))(v80, v82);
    (*(v78 + 8))(v46, v79);
    v63(v45, v77);
    return (*(v75 + 8))(v74, v76);
  }

  return result;
}

uint64_t sub_1003151FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031524C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_100315534(&qword_100932E70, &type metadata accessor for GenericDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_100315534(&qword_100932E78, type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider);

  return v2;
}

unint64_t sub_10031534C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AccessibilityDetailsShelfLayoutSpacingProvider;
  result = sub_1003154E0();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_100315380@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  swift_allocObject();
  v3 = sub_100744584();
  a1[3] = &type metadata for AccessibilityDetailsPageGridProvider;
  result = sub_10031548C();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AccessibilityDetailsViewController()
{
  result = qword_100932880;
  if (!qword_100932880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10031548C()
{
  result = qword_100932E60;
  if (!qword_100932E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100932E60);
  }

  return result;
}

unint64_t sub_1003154E0()
{
  result = qword_100932E68;
  if (!qword_100932E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100932E68);
  }

  return result;
}

uint64_t sub_100315534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_100747C14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v15, v10);
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_100412148(v32);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    sub_100016994(v32);
    (*(v7 + 16))(v9, v16, v6);
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(0);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v17;
    v22 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
    v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    (*(v7 + 32))(v21 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v9, v6);
    swift_unknownObjectWeakAssign();
    *(v21 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_objectGraph) = v30;

    v24 = v28;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v24, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_100673D84(v21, v32, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v31;
    swift_endAccess();
    sub_100016994(v32);
    return v21;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  sub_100016994(v32);

  return v21;
}

id sub_100315964(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel];
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
  v8 = sub_100753094();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_100754754();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_100753064();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_100753094();
    }

    v15 = sub_100753114();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_100315B18()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097F9F8);
  sub_10000D0FC(v0, qword_10097F9F8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100315C7C(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v29 = a1;
  sub_100746F84();
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980A68);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_100750B04();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_100750B14();
  v25 = v3[1];
  v25(v5, v2);
  sub_100746FB4();
  if (qword_100920F28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v6, qword_100980AC8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_100750B14();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100747044();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v32);
  v15(v18, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  sub_100746FC4();
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000D0FC(v24, qword_1009809C0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v32);
  v28(v21, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  sub_100747054();
  return sub_100746FA4();
}

char *sub_100316170(double a1, double a2, double a3, double a4)
{
  v28[1] = swift_getObjectType();
  v9 = sub_100743584();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  sub_10072118C(v12, 20.0);
  (*(v10 + 8))(v12, v9);
  v22 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v22)
  {
    v23 = v22;
    [v23 _setContinuousCornerRadius:20.0];
    v24 = [v23 layer];
    [v24 setMaskedCorners:sub_1007535E4()];
  }

  v29.receiver = *&v17[v21];
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, "_setContinuousCornerRadius:", 20.0);
  sub_10056880C();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_10000C518(&unk_1009249D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A5A00;
  *(v25 + 32) = sub_1007519E4();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  sub_100016C60(0, &qword_1009239F8);
  sub_100753844();
  sub_100753D44();
  swift_unknownObjectRelease();

  sub_1005F4144();
  v26 = *(*&v17[v19] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  sub_100526D00(v17, &off_1008712B8);

  return v17;
}

void sub_1003165E4(char a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  sub_100721364();
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v3 + v2) == 1)
  {
    if (!v4)
    {
      return;
    }

    v5 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring);
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring) = 1;
    if (v6)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = swift_unknownObjectWeakLoadStrong();
    v21 = v4;
    sub_1004A901C(Strong);
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      if (v8)
      {
        type metadata accessor for VideoView();
        v11 = v8;
        v12 = sub_100753FC4();

        if (v12)
        {

          v13 = Strong;
          v8 = v11;
LABEL_25:

          v20 = v8;
          goto LABEL_26;
        }
      }

      else
      {
      }

LABEL_21:
      sub_1004A9648();

      v13 = Strong;
      goto LABEL_25;
    }

    if (v8)
    {
      goto LABEL_21;
    }

    v8 = Strong;
LABEL_24:
    v13 = v21;
    goto LABEL_25;
  }

  if (!v4)
  {
    return;
  }

  v14 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
  v15 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring);
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  if (v15 != 1)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  v21 = v4;
  sub_1004A901C(0);
  swift_unknownObjectWeakAssign();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if (v8)
    {
      type metadata accessor for VideoView();
      v18 = v8;
      v19 = sub_100753FC4();

      if (v19)
      {
        v8 = v18;
        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    sub_1004A9648();
    goto LABEL_24;
  }

  if (v8)
  {
    goto LABEL_23;
  }

  v20 = v21;
LABEL_26:
}

uint64_t sub_100316868(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v6, &unk_100926C40);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016B4C(v1 + v6, v5, &unk_100926C40);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10006644C(v5, v7 + v8, &unk_100926C40);
  return swift_endAccess();
}

void sub_10031698C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_100568B90();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(v3);
  }
}

void *sub_100316AFC()
{
  result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100316B34(char a1)
{
  if (a1)
  {

    sub_10031CC14();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_100316BB4()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = sub_100753804();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = sub_1007537E4();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_1003165E4(v6);
}

void sub_100316D50(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v23 = v1;
        v26 = sub_10074FB64();
        sub_100745204();
        sub_10000C518(&qword_1009295D0);
        if (swift_dynamicCast())
        {
          sub_100032CCC(v24, v27);
          sub_10000C888(v27, v28);
          v14 = [v23 traitCollection];
          v15 = sub_10074B8E4();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_100016B4C(&v16[v19], v5, &unk_100926C40);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10000C8CC(v5, &unk_100926C40);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_10000C888(v27, v28);
              v20 = sub_10074B8C4();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_100318D58(v15, v21, v13, v18, v9, v11);

                  (*(v7 + 8))(v9, v6);
                  goto LABEL_12;
                }

                (*(v7 + 8))(v9, v6);

                goto LABEL_11;
              }

              (*(v7 + 8))(v9, v6);
            }
          }

LABEL_11:

LABEL_12:
          sub_10000C620(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10000C8CC(v24, &qword_1009295D8);
      }

      else
      {
      }
    }
  }
}

void sub_1003171A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_100316D50(v2);
}

id sub_1003171C4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_10074F704();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(v14, v4 + v17, &unk_100926C40);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016B4C(v4 + v17, v11, &unk_100926C40);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10006644C(v11, v18 + v19, &unk_100926C40);
  swift_endAccess();
  sub_1005F3E54(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10074FA74();
    if (!v22)
    {
      sub_100016C60(0, &qword_100923500);
      v22 = sub_100753E64();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &stru_1008F2000;
  if (sub_10074FAD4())
  {
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = sub_100753804();

    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_1004FEB20(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:sub_1007535E4()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = sub_10074FB64();
  sub_100745204();
  sub_10000C518(&qword_1009295D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10000C8CC(&v50, &qword_1009295D8);
    goto LABEL_17;
  }

  sub_100032CCC(&v50, v54);
  sub_10000C888(v54, v55);
  v35 = [v5 traitCollection];
  v36 = sub_10074B8E4();

  if (!v36)
  {
LABEL_16:
    sub_10000C620(v54);
    v24 = &stru_1008F2000;
LABEL_17:
    v53 = sub_10074FB64();
    if (swift_dynamicCast())
    {
      sub_100032CCC(&v50, v54);
      sub_10000C888(v54, v55);
      v41 = [v5 traitCollection];
      v42 = sub_10074B8F4();

      if (v42)
      {
        sub_10000C888(v54, v55);
        v43 = sub_10074B8C4();
        if (v43)
        {
          v44 = v49;
          sub_100317890(v42, v43, a1, a2, a3, v49);

          sub_10000C620(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_10000C620(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10000C8CC(&v50, &qword_1009295D8);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_10000C888(v54, v55);
  v37 = sub_10074B8C4();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_100318D58(v36, v38, a1, a2, a3, v39);

  sub_10000C620(v54);
  v40 = v39;
  v24 = &stru_1008F2000;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer);
  sub_100566590(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded)];
  (*((swift_isaMask & *v5) + 0x278))(v46);
  sub_100316BB4();
  return [v5 v24[51].attr];
}

uint64_t sub_100317890(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v157 = a6;
  v168 = a5;
  v169 = a2;
  LODWORD(v166) = a4;
  v9 = sub_10000C518(&qword_100925B80);
  __chkstk_darwin(v9 - 8);
  v134 = &v129 - v10;
  v161 = sub_10074F704();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v132 = v11;
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100741494();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  v135 = sub_10000C518(&qword_1009295F8);
  __chkstk_darwin(v135);
  v136 = &v129 - v15;
  v16 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v16 - 8);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v129 - v19;
  __chkstk_darwin(v20);
  v137 = &v129 - v21;
  __chkstk_darwin(v22);
  v138 = &v129 - v23;
  v24 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v24 - 8);
  v156 = &v129 - v25;
  v26 = sub_10074F344();
  __chkstk_darwin(v26 - 8);
  v162 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10074F164();
  v159 = *(v144 - 8);
  __chkstk_darwin(v144);
  v158 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10074F3A4();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&qword_1009295C8);
  __chkstk_darwin(v30 - 8);
  v32 = &v129 - v31;
  v33 = sub_10074F284();
  v164 = *(v33 - 8);
  v165 = v33;
  __chkstk_darwin(v33);
  v151 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v150 = sub_100754724();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10074A174();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074DAE4();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v48 = sub_10074FA74();
  if (!v48)
  {
    v49 = sub_10074F1E4();
    if (!v49)
    {
      goto LABEL_7;
    }

    v163 = a1;
    v50 = v32;
    v51 = v49;
    v52 = [v6 backgroundView];
    if (v52)
    {
      v53 = v52;
      [v52 setBackgroundColor:v51];
    }

    v48 = v51;
    v32 = v50;
  }

LABEL_7:
  v152 = v37;
  v167 = v7;
  v148 = [v7 traitCollection];
  v54 = sub_100753824();
  v55 = v166;
  v163 = v54;
  sub_100039770(v166, v168, v54);
  sub_1006E88C4(v55);
  v56 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v55 != 6)
  {
    v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v55 != 4)
  {
    v56 = v57;
  }

  (*(v42 + 104))(v44, *v56, v41);
  (*(v42 + 32))(v47, v44, v41);
  v58 = sub_1007532B4();
  (*(v42 + 8))(v47, v41);
  sub_10074DAC4();
  if (v59)
  {
    sub_10074F2A4();
  }

  v60 = v165;
  sub_10074DAD4();
  sub_10074A144();
  sub_100753BA4();
  sub_100753B64();
  v61 = v149;
  v62 = v146;
  v63 = v150;
  (*(v149 + 104))(v146, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v150);
  sub_100753B84();
  (*(v61 + 8))(v62, v63);
  (*(v145 + 8))(v40, v147);
  v150 = v58;
  sub_10074DAB4();
  v64 = v164;
  v65 = *(v164 + 48);
  v66 = v65(v32, 1, v60);
  v67 = v167;
  if (v66 == 1)
  {
    v68 = v152;
    sub_10074F294();
    v69 = v60;
    if (v65(v32, 1, v60) != 1)
    {
      sub_10000C8CC(v32, &qword_1009295C8);
    }
  }

  else
  {
    v68 = v152;
    (*(v64 + 32))(v152, v32, v60);
    v69 = v60;
  }

  v70 = v153;
  sub_10074F174();
  sub_10074F3C4();
  v71 = v163;
  [v163 displayScale];
  v72 = v164;
  (*(v164 + 16))(v151, v68, v69);
  sub_10074F384();
  sub_10074F394();
  sub_100748014();
  swift_allocObject();
  v73 = sub_100747FF4();

  (*(v154 + 8))(v70, v155);
  (*(v72 + 8))(v68, v165);
  v74 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v67[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v75 = v166;
  }

  else
  {
    v75 = v67[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v166 = v170;
  v164 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);

  v165 = v74;
  v162 = v73;
  v163 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView;
  v77 = *(v74 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  sub_100747FB4();
  v79 = v78;
  v81 = v80;
  v82 = [*(v77 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) image];
  v83 = v160;
  v84 = v156;
  v85 = v161;
  v154 = *(v160 + 16);
  (v154)(v156, v168, v161);
  (*(v83 + 56))(v84, 0, 1, v85);
  LODWORD(v155) = v75;
  sub_100527FD0(v82, v79, v81, 0, v169, v84, v75);

  sub_10000C8CC(v84, &unk_100926C40);
  v86 = *(v77 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded);
  v157 = v77;
  if (v86)
  {
    v87 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v88 = v138;
    sub_100016B4C(v77 + v87, v138, &qword_100926DC0);
    v89 = v137;
    sub_100748004();
    v90 = v159;
    v91 = v144;
    (*(v159 + 56))(v89, 0, 1, v144);
    v92 = *(v135 + 48);
    v93 = v136;
    sub_100016B4C(v88, v136, &qword_100926DC0);
    sub_100016B4C(v89, v93 + v92, &qword_100926DC0);
    v94 = *(v90 + 48);
    if (v94(v93, 1, v91) == 1)
    {
      sub_10000C8CC(v89, &qword_100926DC0);
      sub_10000C8CC(v88, &qword_100926DC0);
      if (v94(v93 + v92, 1, v91) == 1)
      {
        sub_10000C8CC(v93, &qword_100926DC0);
        goto LABEL_29;
      }
    }

    else
    {
      v95 = v130;
      sub_100016B4C(v93, v130, &qword_100926DC0);
      if (v94(v93 + v92, 1, v91) != 1)
      {
        v125 = v159;
        v126 = v158;
        (*(v159 + 32))(v158, v93 + v92, v91);
        sub_10031E474(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate);
        v127 = sub_100753014();
        v128 = *(v125 + 8);
        v128(v126, v91);
        sub_10000C8CC(v137, &qword_100926DC0);
        sub_10000C8CC(v138, &qword_100926DC0);
        v128(v95, v91);
        sub_10000C8CC(v93, &qword_100926DC0);
        v77 = v157;
        if (v127)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10000C8CC(v137, &qword_100926DC0);
      sub_10000C8CC(v138, &qword_100926DC0);
      (*(v159 + 8))(v95, v91);
    }

    sub_10000C8CC(v93, &qword_1009295F8);
    v77 = v157;
  }

LABEL_27:
  if ((*(v77 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v96 = v141;
    sub_100741484();
    v97 = v142;
    v98 = *(v142 + 16);
    v99 = v139;
    v100 = v143;
    v98(v139, v96, v143);
    sub_10031E474(&qword_100929600, &type metadata accessor for UUID);
    sub_1007544E4();
    v101 = swift_allocObject();
    v158 = v101;
    swift_unknownObjectWeakInit();
    v102 = v99;
    v103 = v100;
    v98(v102, v96, v100);
    (v154)(v140, v168, v161);
    v104 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v105 = (v131 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
    v107 = v160;
    v108 = (*(v160 + 80) + v106 + 8) & ~*(v160 + 80);
    v109 = v108 + v132;
    v110 = swift_allocObject();
    *(v110 + 16) = v101;
    v111 = *(v97 + 32);
    v111(v110 + v104, v139, v103);
    v112 = (v110 + v105);
    *v112 = v79;
    v112[1] = v81;
    *(v110 + v106) = v169;
    (*(v107 + 32))(v110 + v108, v140, v161);
    *(v110 + v109) = v155;

    sub_1007441F4();

    sub_10000C8CC(&v170, &unk_1009276E0);

    v113 = v133;
    sub_100748004();
    (*(v159 + 56))(v113, 0, 1, v144);
    v114 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    v115 = v157;
    swift_beginAccess();
    v116 = v115;
    sub_10006644C(v113, v115 + v114, &qword_100926DC0);
    swift_endAccess();
    v117 = v134;
    v118 = v143;
    v111(v134, v141, v143);
    (*(v142 + 56))(v117, 0, 1, v118);
    v119 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10006644C(v117, v116 + v119, &qword_100925B80);
    swift_endAccess();
  }

LABEL_29:
  v120 = v165;
  [*&v163[v165] setHidden:0];
  [*(v120 + v164) setHidden:1];

  *(v120 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 1;
  v121 = *&v167[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v121)
  {
    v122 = *&v121[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    v123 = v121;
    [v122 setHidden:0];
    [*&v123[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_100318D58(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v219 = a6;
  v253 = a5;
  v254 = a4;
  v255 = a2;
  v7 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v7 - 8);
  v208 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = &v207 - v10;
  v11 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v11 - 8);
  v218 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v217 = &v207 - v14;
  v250 = sub_100741264();
  v15 = *(v250 - 8);
  __chkstk_darwin(v250);
  v211 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v248);
  v249 = &v207 - v17;
  v18 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v18 - 8);
  v216 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v215 = &v207 - v21;
  __chkstk_darwin(v22);
  v257 = &v207 - v23;
  __chkstk_darwin(v24);
  v258 = &v207 - v25;
  v26 = sub_10074F344();
  __chkstk_darwin(v26 - 8);
  v246 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10074F164();
  __chkstk_darwin(v28 - 8);
  v243 = &v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10074F3A4();
  v245 = *(v247 - 8);
  __chkstk_darwin(v247);
  v244 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&qword_1009295C8);
  __chkstk_darwin(v31 - 8);
  v239 = &v207 - v32;
  v242 = sub_10074F284();
  v264 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v207 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v241 = &v207 - v35;
  v238 = sub_100754724();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_10074A174();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v233 = &v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_10074DAE4();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v230 = &v207 - v40;
  v41 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v41 - 8);
  v228 = &v207 - v42;
  v226 = sub_100744894();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v227 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_100747D94();
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v267 = &v207 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000C518(&qword_1009295E0);
  __chkstk_darwin(v45 - 8);
  v210 = &v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v223 = &v207 - v48;
  __chkstk_darwin(v49);
  v214 = &v207 - v50;
  __chkstk_darwin(v51);
  v53 = &v207 - v52;
  v265 = sub_100744864();
  v270 = *(v265 - 8);
  __chkstk_darwin(v265);
  v263 = &v207 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v262 = &v207 - v56;
  __chkstk_darwin(v57);
  v209 = &v207 - v58;
  __chkstk_darwin(v59);
  v224 = &v207 - v60;
  __chkstk_darwin(v61);
  v222 = &v207 - v62;
  __chkstk_darwin(v63);
  v221 = &v207 - v64;
  __chkstk_darwin(v65);
  v67 = &v207 - v66;
  __chkstk_darwin(v68);
  v213 = &v207 - v69;
  __chkstk_darwin(v70);
  v72 = &v207 - v71;
  __chkstk_darwin(v73);
  v75 = &v207 - v74;
  __chkstk_darwin(v76);
  v78 = &v207 - v77;
  __chkstk_darwin(v79);
  v81 = &v207 - v80;
  __chkstk_darwin(v82);
  v84 = &v207 - v83;
  v85 = sub_10074FA74();
  v271 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  sub_10074EC14();
  v98 = v15;
  v86 = sub_10074F1E4();

  if (v86)
  {
    v99 = [v272 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v259 = v15;
  v269 = v67;
  sub_10074EBF4();
  sub_100744834();
  v87 = v270;
  v88 = v265;
  v268 = *(v270 + 16);
  v256 = v270 + 16;
  v268(v75, v84, v265);
  sub_10031E474(&qword_1009295E8, &type metadata accessor for VideoControls);
  sub_100754334();
  v89 = sub_100754354();
  v266 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    sub_100754364();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v260 = *(v87 + 56);
  v260(v53, v91, 1, v88);
  sub_10000C8CC(v53, &qword_1009295E0);
  v220 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v272[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v269;
  v261 = v90;
  v94 = v221;
  if (v92)
  {
    sub_100744844();
    v268(v75, v266, v88);
    v95 = v213;
    sub_100754334();
    if (sub_100754354())
    {
      v90 = v261;
      v261(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v214;
    }

    else
    {
      sub_100754364();
      v101 = v270;
      v90 = v261;
      v261(v72, v88);
      v102 = *(v101 + 32);
      v97 = v214;
      v102(v214, v95, v88);
      v96 = 0;
    }

    v260(v97, v96, 1, v88);
    sub_10000C8CC(v97, &qword_1009295E0);
  }

  sub_10074EBB4();
  sub_100744834();
  v268(v75, v93, v88);
  v103 = v94;
  v104 = v222;
  sub_100754334();
  if (sub_100754354())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v242;
    v107 = v223;
  }

  else
  {
    sub_100754364();
    v108 = v270;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v223;
    v109(v223, v104, v88);
    v105 = 0;
    v106 = v242;
  }

  v260(v107, v105, 1, v88);
  sub_10000C8CC(v107, &qword_1009295E0);
  v110 = v224;
  if (v272[v220] == 4 && (v272[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    sub_100744844();
    v268(v75, v269, v88);
    v111 = v209;
    sub_100754334();
    if (sub_100754354())
    {
      v112 = v261;
      v261(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v210;
    }

    else
    {
      sub_100754364();
      v115 = v270;
      v261(v110, v88);
      v116 = *(v115 + 32);
      v114 = v210;
      v116(v210, v111, v88);
      v113 = 0;
    }

    v260(v114, v113, 1, v88);
    sub_10000C8CC(v114, &qword_1009295E0);
  }

  (*(v225 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v226);
  sub_10074EC14();
  sub_10074F2A4();
  v117 = v228;
  sub_100750504();

  v118 = sub_1007504F4();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v268;
  v268(v262, v269, v88);
  v119(v263, v266, v88);
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  sub_100747D74();
  sub_10074EC14();
  v268 = [v272 traitCollection];
  v120 = sub_100753824();
  v121 = v254;
  sub_100039770(v254, v253, v120);
  v122 = v121;
  sub_1006E88C4(v121);
  v123 = v231;
  v124 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v122 != 6)
  {
    v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v122 != 4)
  {
    v124 = v125;
  }

  v126 = v229;
  v127 = v232;
  (*(v231 + 104))(v229, *v124, v232);
  v128 = v230;
  (*(v123 + 32))(v230, v126, v127);
  v129 = sub_1007532B4();
  (*(v123 + 8))(v128, v127);
  sub_10074DAC4();
  if (v130)
  {
    sub_10074F2A4();
  }

  v131 = v241;
  v132 = v239;
  v133 = v233;
  sub_10074DAD4();
  sub_10074A144();
  sub_100753BA4();
  sub_100753B64();
  v134 = v237;
  v135 = v235;
  v136 = v238;
  (*(v237 + 104))(v235, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v238);
  sub_100753B84();
  (*(v134 + 8))(v135, v136);
  (*(v234 + 8))(v133, v236);
  sub_10074DAB4();
  v137 = v264;
  v138 = *(v264 + 48);
  v139 = v138(v132, 1, v106);
  v262 = v129;
  if (v139 == 1)
  {
    sub_10074F294();
    v140 = v106;
    v141 = v131;
    if (v138(v132, 1, v106) != 1)
    {
      sub_10000C8CC(v132, &qword_1009295C8);
    }
  }

  else
  {
    (*(v137 + 32))(v131, v132, v106);
    v140 = v106;
    v141 = v131;
  }

  v142 = v244;
  sub_10074F174();
  sub_10074F3C4();
  [v120 displayScale];
  v260 = v120;
  v143 = v264;
  (*(v264 + 16))(v240, v141, v140);
  sub_10074F384();
  sub_10074F394();
  sub_100748014();
  swift_allocObject();
  v263 = sub_100747FF4();

  (*(v245 + 8))(v142, v247);
  (*(v143 + 8))(v141, v140);
  v144 = *&v272[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v145 = v258;
  sub_10074EC24();
  v146 = v259;
  v147 = *(v259 + 56);
  v148 = 1;
  v149 = v250;
  (v147)(v145, 0, 1, v250);
  v264 = v144;
  v268 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v151 = Strong;
    v152 = v257;
    (*(v146 + 16))(v257, Strong + qword_100982250, v149);

    v148 = 0;
    v153 = v249;
  }

  else
  {
    v153 = v249;
    v152 = v257;
  }

  v262 = v147;
  (v147)(v152, v148, 1, v149);
  v154 = *(v248 + 48);
  sub_100016B4C(v145, v153, &unk_100923970);
  sub_100016B4C(v152, v153 + v154, &unk_100923970);
  v155 = *(v146 + 48);
  if (v155(v153, 1, v149) == 1)
  {
    sub_10000C8CC(v152, &unk_100923970);
    sub_10000C8CC(v145, &unk_100923970);
    v156 = v155(v153 + v154, 1, v149);
    v157 = v272;
    if (v156 == 1)
    {
      sub_10000C8CC(v153, &unk_100923970);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v158 = v215;
  sub_100016B4C(v153, v215, &unk_100923970);
  if (v155(v153 + v154, 1, v149) == 1)
  {
    sub_10000C8CC(v257, &unk_100923970);
    sub_10000C8CC(v258, &unk_100923970);
    (*(v259 + 8))(v158, v149);
LABEL_43:
    sub_10000C8CC(v153, &unk_100932480);
    v159 = v264;
    goto LABEL_44;
  }

  v166 = v259;
  v167 = v211;
  (*(v259 + 32))(v211, v153 + v154, v149);
  sub_10031E474(&qword_100926240, &type metadata accessor for URL);
  v168 = sub_100753014();
  v169 = *(v166 + 8);
  v169(v167, v149);
  sub_10000C8CC(v257, &unk_100923970);
  sub_10000C8CC(v258, &unk_100923970);
  v169(v158, v149);
  sub_10000C8CC(v153, &unk_100923970);
  v157 = v272;
  v159 = v264;
  if ((v168 & 1) == 0)
  {
LABEL_44:
    sub_1007464C4();
    v264 = sub_100752764();
    sub_100752D34();
    v160 = v273;
    sub_10074EB94();
    v161 = v216;
    sub_10074EC24();
    (v262)(v161, 0, 1, v149);
    v162 = v217;
    sub_10074EBE4();
    v163 = v218;
    sub_10074EBD4();
    v164 = type metadata accessor for TodayCardVideoView();
    sub_10031E474(&qword_1009295B8, type metadata accessor for TodayCardVideoView);
    v262 = v164;
    v165 = sub_1007464A4();
    sub_10000C8CC(v163, &unk_1009281C0);
    sub_10000C8CC(v162, &unk_1009281C0);
    sub_10000C8CC(v161, &unk_100923970);
    sub_10000C8CC(&v273, &unk_1009276E0);
    if (v165)
    {
      if ((v165[qword_100982C58] & 1) == 0)
      {
        v260 = v160;
        v165[qword_100982C50] = *(v159 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory);
        sub_100665360();
        swift_unknownObjectWeakAssign();
        v170 = v268;
        v171 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v172 = v165;
        sub_10020ED5C(v171);

        v173 = *(v170 + v159);
        v174 = v172;
        sub_10074EC14();
        sub_10074F2A4();
        v176 = v175;
        v178 = v177;

        v179 = sub_10074F704();
        v180 = *(v179 - 8);
        v181 = v212;
        (*(v180 + 16))(v212, v253, v179);
        (*(v180 + 56))(v181, 0, 1, v179);
        v182 = swift_unknownObjectWeakLoadStrong();
        v271 = v174;
        swift_unknownObjectWeakAssign();
        sub_10020ED5C(v182);

        v183 = &v173[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize];
        *v183 = v176;
        *(v183 + 1) = v178;
        v183[16] = 0;
        v184 = swift_unknownObjectWeakLoadStrong();
        if (v184)
        {
          v185 = v184;
          (*((swift_isaMask & *v184) + 0xE8))(v176, v178, 0);
        }

        v186 = v255;
        *&v173[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v255;

        v187 = swift_unknownObjectWeakLoadStrong();
        if (v187)
        {
          v188 = v187;
          v189 = *((swift_isaMask & *v187) + 0xD0);
          swift_bridgeObjectRetain_n();
          v189(v186);
          v181 = v212;
        }

        else
        {
        }

        v190 = v208;
        sub_100016B4C(v181, v208, &unk_100926C40);
        sub_10020E270(v190);
        v191 = v254;
        v173[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory] = v254;
        v192 = swift_unknownObjectWeakLoadStrong();
        if (v192)
        {
          v193 = v192;
          (*((swift_isaMask & *v192) + 0x118))(v191);
        }

        v194 = swift_unknownObjectWeakLoadStrong();
        if (v194)
        {
          v195 = v194;
          v196 = swift_unknownObjectWeakLoadStrong();
          (*((swift_isaMask & *v195) + 0x150))(v196, *v183, *(v183 + 1), v183[16], v255, v181, v191);
        }

        [v173 setNeedsLayout];
        v197 = v271;

        sub_10000C8CC(v181, &unk_100926C40);
        sub_1007442C4();
        sub_100752D34();
        sub_10031E474(&qword_1009295F0, type metadata accessor for TodayCardVideoView);
        sub_100744204();
        [*(v268 + v159) setHidden:0];
        [*(v159 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v159 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v157 = v272;
  }

LABEL_61:
  v198 = *&v157[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v198)
  {
    v199 = *&v198[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    v200 = v198;
    [v199 setHidden:1];
    [*&v200[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v201 = swift_unknownObjectWeakLoadStrong();
  v202 = v266;
  v203 = v261;
  if (v201)
  {
    *(v201 + qword_10093CB48 + 8) = &off_1008712A0;
    v204 = v201;
    swift_unknownObjectWeakAssign();
  }

  sub_10012A1C4();

  (*(v251 + 8))(v267, v252);
  v205 = v265;
  v203(v269, v265);
  return (v203)(v202, v205);
}