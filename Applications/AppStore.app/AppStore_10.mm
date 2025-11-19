uint64_t sub_100111D00(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v2 = type metadata accessor for ShelfLayoutContext();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        type metadata accessor for TodayCard();
        sub_100112220(&qword_100977390, &type metadata accessor for TodayCard);
        if ((ItemLayoutContext.typedModel<A>(is:)() & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = sub_1004E9740();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v16 = sub_100189E38();
      }

      v15 = v16;
      goto LABEL_17;
    }

    type metadata accessor for TodayCard();
    sub_100112220(&qword_100977390, &type metadata accessor for TodayCard);
    if (ItemLayoutContext.typedModel<A>(is:)())
    {
      ItemLayoutContext.typedModel<A>(as:)();
      v15 = sub_1004EE154(v21, 4);

      goto LABEL_17;
    }

LABEL_14:
    ItemLayoutContext.parentShelfLayoutContext.getter();
    v15 = sub_10010E4C8();
    (*(v19 + 8))(v4, v20);
    goto LABEL_17;
  }

  type metadata accessor for TodayCard();
  sub_100112220(&qword_100977390, &type metadata accessor for TodayCard);
  if ((ItemLayoutContext.typedModel<A>(is:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v21)
  {

    v14 = sub_1006E2600();
  }

  else
  {
    v14 = 7;
  }

  ItemLayoutContext.typedModel<A>(as:)();
  v15 = sub_1004EE154(v21, v14);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v15;
}

uint64_t sub_100112220(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100112428()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
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

id sub_1001125E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 tabBar];

      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Height = CGRectGetHeight(v31);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    [result bounds];
    v26 = v25;
    v22 = v27;

    v21 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0.0;
    Height = 0.0;
  }

  if (v22 - *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] - Height < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v22 - *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] - Height;
  }

  v29 = [v2 traitCollection];
  Uber.style.getter();
  sub_1001158BC(v29, v8, v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_wantsBackgroundExtension], v21, *&v28, 0);

  return (*(v5 + 8))(v8, v4);
}

id sub_100112824(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.style.getter();
  v8 = *&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset];
  v9 = v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_wantsBackgroundExtension];
  v10 = [v2 traitCollection];
  if (a1)
  {
    v11 = [a1 tabBarController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tabBar];

      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v46.origin.x = v15;
      v46.origin.y = v17;
      v46.size.width = v19;
      v46.size.height = v21;
      Height = CGRectGetHeight(v46);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (result)
    {
      v25 = result;
      [result bounds];
      v27 = v26;
      v29 = v28;

      result = [a1 view];
      if (result)
      {
        v30 = result;
        if (v29 - v8 - Height < 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v29 - v8 - Height;
        }

        a1 = v27;
        [result bounds];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v47.origin.x = v32;
        v47.origin.y = v34;
        v47.size.width = v36;
        v47.size.height = v38;
        CGRectGetWidth(v47);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (0.0 - v8 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0 - v8;
  }

LABEL_14:
  sub_1001158BC(v10, v7, v9, a1, *&v23, 0);

  (*(v5 + 8))(v7, v4);
  v39 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  v40 = [*&v39[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] text];
  if (v40)
  {
    v41 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v42 = static String.isNilOrEmpty(_:)();

  if ((v42 & 1) == 0 || *&v39[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView])
  {
    [v2 frame];
    return [v39 sizeThatFits:{v43, v44}];
  }

  return result;
}

uint64_t sub_100112B7C()
{
  v0 = sub_10002849C(&qword_100974F58);
  sub_100005644(v0, qword_100974EA0);
  sub_1000056A8(v0, qword_100974EA0);
  return Conditional<>.init(roundedCornersValue:nonRoundedCornersValue:)();
}

char *sub_100112C00(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v58);
  v59 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Uber.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &ObjectType - v12;
  v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentBottomInset] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem] = 0;
  v14 = &v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
  *v14 = 0;
  v14[1] = 0;
  Uber.style.getter();
  (*(v8 + 104))(v10, enum case for Uber.Style.above(_:), v7);
  sub_100115CA4(&qword_100973B50, 255, &type metadata accessor for Uber.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v65 != v63 || v66 != v64)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);

    v16 = v57;
    if ((v17 & 1) == 0 || (v57 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v19 = 0;
    v20 = 0x404E000000000000;
    goto LABEL_9;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = v57;
  if (v57)
  {
    goto LABEL_7;
  }

LABEL_8:
  v20 = 0;
  v19 = 1;
LABEL_9:
  v21 = v60;
  v65 = v20;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = v19;
  v22 = type metadata accessor for MediaView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v23[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x4008000000000000;
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0x4049000000000000;
  v24 = objc_allocWithZone(type metadata accessor for UberContentContainer());
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = sub_10047C298(&v65);
  v62.receiver = v23;
  v62.super_class = v22;
  v25 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds:1];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] = v25;
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] = [objc_allocWithZone(type metadata accessor for TitleHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_uber] = a1;
  v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_wantsBackgroundExtension] = v16 & 1;
  v61.receiver = v4;
  v61.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v27 = OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView]];
  v28 = *&v26[v27];
  v29 = sub_1004E9F68(v21);
  v30 = *&v28[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer];
  v31 = *(v30 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v30 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v29;
  v32 = v29;
  sub_10047C6C8(v31);

  sub_10047B37C();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  [v26 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView;
  v36 = *&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView];
  sub_10002849C(&qword_100973210);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007B15F0;
  sub_100005744(0, &qword_100970180);
  v38 = v36;
  *(v37 + 32) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.4);
  *(v37 + 40) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.0);
  *&v38[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v37;

  sub_1001C0CEC();

  v39 = *&v26[v35];
  v40 = [v39 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

  v41 = *&v26[v35];
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  [v26 addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
  v44 = qword_10096D398;
  v45 = *&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_1000056A8(v58, qword_1009CE818);
  v47 = v59;
  sub_100115C40(v46, v59);
  (*((swift_isaMask & *v45) + 0x1C8))(v47);

  v48 = *&v26[v43];
  v49 = &v48[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines];
  *v49 = sub_100113508;
  v49[1] = 0;
  v50 = v48;

  [*&v50[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] setNumberOfLines:2];

  [*(*&v26[v43] + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) setAllowsDefaultTighteningForTruncation:1];
  v51 = *&v26[v43];
  v52 = [v33 clearColor];
  [v51 setBackgroundColor:v52];

  v53 = *&v26[v43];
  [v26 addSubview:v53];

  if (*(*(*&v26[v27] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + qword_100988CB8 + 8) = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }
  }

  return v26;
}

id sub_100113544()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 removeObserver:v0 forKeyPath:v4 context:&unk_100974E90];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1001136B0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  v6 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!a2)
    {
      if (!v11)
      {
        return;
      }

      v14 = *(v5 + v6);
      v15 = 0;
      goto LABEL_14;
    }

    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_20:

        return;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  v14 = *(v5 + v6);
  v15 = String._bridgeToObjectiveC()();

LABEL_14:
  [v14 setText:v15];

  [v2 invalidateIntrinsicContentSize];
  v16 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
  if (v16)
  {

    v16(v17);

    sub_10001F63C(v16);
  }
}

void (*sub_100113878(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
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
  return sub_100113918;
}

void sub_100113918(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_100115CA4(&qword_100973190, 255, type metadata accessor for VideoView);
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

    v15 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v16 = v3;
    sub_10047C6C8(v15);

    if (v3)
    {
      *&v16[qword_100988CB8 + 8] = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }

    v17 = *a1;
    goto LABEL_17;
  }

  if (v3)
  {
    sub_100115CA4(&qword_100973190, 255, type metadata accessor for VideoView);
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

  v18 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
  v19 = v3;
  sub_10047C6C8(v18);

  if (v3)
  {
    *&v19[qword_100988CB8 + 8] = &off_1008B4C68;
    swift_unknownObjectWeakAssign();
    v17 = v19;
LABEL_17:
  }
}

void sub_100113BEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setTarget:v0];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAction:"mute"];
  }

  sub_100113C74();
}

void sub_100113C74()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for VideoConfiguration();
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for VideoControls();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v50[-v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v53 = v8;
  v54 = v4;
  v55 = v2;
  v16 = *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v17 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v18 = *(*(v16 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v18)
  {
    v56 = Strong;
    v52 = v1;
    type metadata accessor for VideoView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + qword_100988CE0);
      if (v20)
      {
        v51 = [v20 isMuted];
        v18 = *(*(v16 + v17) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
        v21 = v9;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v51 = 1;
        v21 = v9;
      }

      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v18;
        v25 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
        v26 = qword_1009D2200;
        v27 = (v57 + 16);
        v28 = (v57 + 8);
        if (v25)
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          VideoConfiguration.autoPlayPlaybackControls.getter();
        }

        else
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          VideoConfiguration.playbackControls.getter();
        }

        (*v28)(v7, v5);
        static VideoControls.muteUnmute.getter();
        sub_100115CA4(&unk_100988DE0, 255, &type metadata accessor for VideoControls);
        v30 = v53;
        v31 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v32 = *(v21 + 8);
        v32(v11, v30);
        v32(v14, v30);
        v29 = 1;
        [v56 setHidden:(v31 & 1) == 0];
        goto LABEL_18;
      }

LABEL_15:
      v29 = 1;
      [v56 setHidden:1];
LABEL_18:
      v33 = v52;
      if (v51)
      {
        v34 = &enum case for SystemImage.speakerSlashFill(_:);
      }

      else
      {
        v29 = 0;
        v34 = &enum case for SystemImage.speakerWave3Fill(_:);
      }

      if (v29)
      {
        v35 = 0xD00000000000002CLL;
      }

      else
      {
        v35 = 0xD00000000000002ALL;
      }

      if (v29)
      {
        v36 = 0xD00000000000002BLL;
      }

      else
      {
        v36 = 0xD000000000000029;
      }

      if (v29)
      {
        v37 = "on.Mute.AccessibilityLabel";
      }

      else
      {
        v37 = "on.Mute.LargeContentTitle";
      }

      v39 = v54;
      v38 = v55;
      if (v29)
      {
        v40 = "on.Unmute.AccessibilityLabel";
      }

      else
      {
        v40 = "sizeChangeObserver";
      }

      (*(v55 + 104))(v54, *v34, v52);
      v41 = v56;
      v42 = static SystemImage.load(_:with:)();
      (*(v38 + 8))(v39, v33);
      [v41 setImage:v42];

      v43._object = (v40 | 0x8000000000000000);
      v43._countAndFlagsBits = v36;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      localizedString(_:comment:)(v43, v44);
      v45 = String._bridgeToObjectiveC()();

      [v41 setTitle:v45];

      v46 = v41;
      v47._object = (v37 | 0x8000000000000000);
      v47._countAndFlagsBits = v35;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      localizedString(_:comment:)(v47, v48);
      v49 = String._bridgeToObjectiveC()();

      [v46 setAccessibilityLabel:v49];

      return;
    }

    Strong = v56;
  }
}

void sub_100114244()
{
  v1 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v9)
  {
    type metadata accessor for VideoView();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + qword_100988CE0);
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        [v14 setMuted:{objc_msgSend(v14, "isMuted") ^ 1}];
        v15 = [v14 isMuted];
        [v11 updateAudioSessionCategoryWithIsAudioOn:v15 ^ 1];
        (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
        v16 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
        if (!v15)
        {
          v16 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
        }

        (*(v2 + 104))(v4, *v16, v1);
        sub_1004E3360(v8, v4);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_10011450C(uint64_t a1, NSString a2, uint64_t a3, Class isa, void *a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_10006C234(a3, v26);
    v18 = v27;
    if (v27)
    {
      v19 = sub_10002A400(v26, v27);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      sub_100007000(v26);
      if (!isa)
      {
LABEL_13:
        v25.receiver = v5;
        v25.super_class = ObjectType;
        objc_msgSendSuper2(&v25, "observeValueForKeyPath:ofObject:change:context:", a2, v24, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v24 = 0;
      if (!isa)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100115CA4(&qword_10096F618, 255, type metadata accessor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_13;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a5 != &unk_100974E90)
  {
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_10;
  }

  v12 = *&v5[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
  if (v12 && (v12 = [v12 title]) != 0)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v16;
    v12 = v14;
  }

  else
  {
    v17 = 0;
  }

  sub_1001136B0(v12, v17);
}

uint64_t sub_10011492C(void *a1, id a2)
{
  if ([a2 userInterfaceIdiom] == 1 && (v5 = objc_msgSend(a2, "horizontalSizeClass"), v5 != objc_msgSend(a1, "horizontalSizeClass")))
  {
    v9 = 1;
  }

  else
  {
    v6 = [*(*(v2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView) + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) text];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v8 = static String.isNilOrEmpty(_:)();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [a2 preferredContentSizeCategory];
      v11 = [a1 preferredContentSizeCategory];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v16 ^ 1;
      }
    }
  }

  return v9 & 1;
}

void sub_100114AD4(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v1 traitCollection];
    if ((sub_10011492C(v3, v4) & 1) != 0 && ([v1 invalidateIntrinsicContentSize], (v5 = *&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) != 0))
    {

      v5(v6);

      sub_10001F63C(v5);
    }

    else
    {
    }
  }
}

id sub_100114C20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Uber.Style();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v51 - v9;
  v54.receiver = v1;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  v20 = [*&v19[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] text];
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v22 = static String.isNilOrEmpty(_:)();

  if ((v22 & 1) != 0 && !*&v19[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView])
  {
    v26 = 0.0;
    goto LABEL_8;
  }

  [v1 frame];
  [v19 sizeThatFits:{v23, v24}];
  v26 = v25;
  if (v25 <= 0.0)
  {
LABEL_8:
    [v19 setHidden:1];
    goto LABEL_9;
  }

  v55.origin.x = v12;
  v55.origin.y = v14;
  v55.size.width = v16;
  v55.size.height = v18;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = v12;
  v56.origin.y = v14;
  v56.size.width = v16;
  v56.size.height = v18;
  v28 = CGRectGetMaxY(v56) - v26;
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v19 setFrame:{MinX, v28, CGRectGetWidth(v57), v26}];
  [v19 setHidden:0];
LABEL_9:
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v18;
  v29 = CGRectGetMinX(v58);
  v59.origin.x = v12;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v18;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v12;
  v61.origin.y = v14;
  v61.size.width = v16;
  v61.size.height = v18;
  Height = CGRectGetHeight(v61);
  v33 = *&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
  [v33 setFrame:{v29, MinY, Width, Height - v26}];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  Uber.style.getter();
  (*(v4 + 104))(v6, enum case for Uber.Style.above(_:), v3);
  sub_100115CA4(&qword_100973B50, 255, &type metadata accessor for Uber.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*&v52 == v51[0] && v53 == v51[1])
  {
    v42 = *(v4 + 8);
    v42(v6, v3);
    v42(v10, v3);
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v44 = *(v4 + 8);
    v44(v6, v3);
    v44(v10, v3);

    if ((v43 & 1) == 0)
    {
      return [*&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView] setHidden:1];
    }
  }

  v45 = *&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView];
  [v45 setHidden:0];
  if (qword_10096D0A8 != -1)
  {
    swift_once();
  }

  v46 = sub_10002849C(&qword_100974F58);
  sub_1000056A8(v46, qword_100974EA0);
  Conditional<>.value.getter();
  v47 = v52;
  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  v48 = CGRectGetMinX(v62);
  v63.origin.x = v35;
  v63.origin.y = v37;
  v63.size.width = v39;
  v63.size.height = v41;
  v49 = CGRectGetMinY(v63);
  v64.origin.x = v35;
  v64.origin.y = v37;
  v64.size.width = v39;
  v64.size.height = v41;
  return [v45 setFrame:{v48, v49, CGRectGetWidth(v64), v47}];
}

id sub_1001151E0(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v11, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *(*(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v8)
    {
      type metadata accessor for VideoView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        LOBYTE(v8) = [v7 isDescendantOfView:v9];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    [v3 bounds];
    v12.x = a2;
    v12.y = a3;
    if (!CGRectContainsPoint(v13, v12) || (swift_getObjectType(), !((swift_conformsToProtocol2() != 0) | v8 & 1)))
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_1001153E4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

void sub_100115454(void *a1)
{
  v2 = a1;
  sub_10047D0EC(a1);

  if (a1)
  {
    *&v2[qword_100988CB8 + 8] = &off_1008B4C68;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t (*sub_10011550C(uint64_t **a1))()
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
  v2[4] = sub_100113878(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100115580()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100115CA4(&qword_100974F50, v1, type metadata accessor for UberHeaderView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_1001155F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100115CA4(&qword_100974F50, v5, type metadata accessor for UberHeaderView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_100115680(uint64_t *a1))()
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
  sub_100115CA4(&qword_100974F50, v3, type metadata accessor for UberHeaderView);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10011573C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
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

void sub_1001158BC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[1] = a4;
  v32 = a3;
  v10 = type metadata accessor for AspectRatio();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100974F48);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  v31 = a6;
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    v17 = a5;
  }

  v30 = v17;
  v18 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v19 = [a1 userInterfaceIdiom];
  v20 = [a1 horizontalSizeClass];
  v21 = *(v14 + 88);
  *v16 = v18 & 1;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v22 = type metadata accessor for Uber.Style();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a2, v22);
  v24 = (*(v23 + 88))(&v16[v21], v22);
  if (v24 != enum case for Uber.Style.above(_:))
  {
    if (v24 == enum case for Uber.Style.inline(_:))
    {
      if (v20 == 2 && v19 == 1 && (v18 & 1) == 0 && (v31 & 1) == 0)
      {
        AspectRatio.init(_:_:)();
        v25 = AspectRatio.isLandscape.getter();
        (*(v28 + 8))(v12, v29);
        if (v25)
        {
          v26 = [objc_opt_self() mainScreen];
          [v26 scale];
        }
      }
    }

    else
    {
      sub_10002B894(v16, &qword_100974F48);
    }
  }
}

uint64_t sub_100115C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115CA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double sub_100115CEC(void *a1, char a2)
{
  v4 = sub_10002849C(&qword_100974F48);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Uber.Style();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Uber.Style.above(_:);
  (*(v9 + 104))(v12, enum case for Uber.Style.above(_:), v8, v10);
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v15 = [a1 userInterfaceIdiom];
  v16 = [a1 horizontalSizeClass];
  v17 = *(v5 + 88);
  *v7 = v14 & 1;
  *(v7 + 1) = v15;
  *(v7 + 2) = v16;
  (*(v9 + 16))(&v7[v17], v12, v8);
  v18 = (*(v9 + 88))(&v7[v17], v8);
  if (v18 == v13)
  {
    (*(v9 + 8))(v12, v8);
    if (v15 == 1 && v16 == 2)
    {
      v19 = (a2 & 1) == 0;
      result = 350.0;
      v21 = 410.0;
    }

    else
    {
      v19 = (a2 & 1) == 0;
      result = 200.0;
      v21 = 260.0;
    }

    if (!v19)
    {
      return v21;
    }

    return result;
  }

  if (v18 != enum case for Uber.Style.inline(_:))
  {
    (*(v9 + 8))(v12, v8);
    sub_10002B894(v7, &qword_100974F48);
    return 0.0;
  }

  if (v16 == 1)
  {
    if (v14)
    {
      (*(v9 + 8))(v12, v8);
      return 480.0;
    }

    goto LABEL_19;
  }

  if (v16 != 2 || v15 != 1)
  {
LABEL_19:
    (*(v9 + 8))(v12, v8);
    return 0.0;
  }

  (*(v9 + 8))(v12, v8);
  result = 769.0;
  if ((v14 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_100115FE8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentBottomInset) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001160AC()
{
  result = qword_100974F78;
  if (!qword_100974F78)
  {
    type metadata accessor for SignOutAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974F78);
  }

  return result;
}

uint64_t sub_100116104()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100974F60);
  sub_1000056A8(v4, qword_100974F60);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_100116258(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_10002849C(&qword_100974F88);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  Promise<A>.init(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100116A00;
  *(v7 + 24) = a3;
  v8 = sub_100005744(0, &qword_1009729E0);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  return sub_100007000(v10);
}

uint64_t sub_1001163AC()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100116498()
{
  if (qword_10096D0B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_100974F60);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10003D444(v4);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100116670()
{
  if (qword_10096D0B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_100974F60);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10003D444(v4);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100116850()
{
  sub_10002849C(&qword_1009764A0);
  v0 = Promise.__allocating_init()();
  sub_100005744(0, &qword_10098D1A0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v1 = v7[0];
  sub_10002849C(&qword_100974F80);
  v2 = [v7[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  Promise<A>.init(_:)();
  v3 = swift_allocObject();
  *(v3 + 16) = v7[0];
  *(v3 + 24) = v0;
  v4 = sub_100005744(0, &qword_1009729E0);
  swift_retain_n();
  v5 = v1;
  v7[3] = v4;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v7);
  return v0;
}

uint64_t sub_100116A78()
{
  v1 = qword_100974F90;
  if (*(v0 + qword_100974F90))
  {
    v2 = *(v0 + qword_100974F90);
  }

  else
  {
    v3 = type metadata accessor for BaseGenericDiffablePageViewController();
    v2 = sub_10038E4B0(v3, &off_1008B4DB8);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100116B44(uint64_t a1)
{
  sub_1002DFD34(a1);
  result = sub_1002DFD24();
  if (result)
  {
    *(v1 + qword_1009CE060) = 1;
  }

  return result;
}

uint64_t sub_100116B74()
{
  v1 = qword_100974FA0;
  if (*(v0 + qword_100974FA0))
  {
    v2 = *(v0 + qword_100974FA0);
  }

  else
  {
    sub_100116A78();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100116C18()
{
  v1 = type metadata accessor for BaseGenericDiffablePageViewController();
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, "viewDidLoad");
  return sub_10038E588(v1, &off_1008B4DB8);
}

void sub_100116C90(void *a1)
{
  v1 = a1;
  sub_100116C18();
}

void sub_100116CF8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100116E48(a3, &selRef_viewWillAppear_, sub_10038E618);
}

id sub_100116D68(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

void sub_100116DD4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100116D68(a3);
}

uint64_t sub_100116E48(char a1, SEL *a2, uint64_t (*a3)(objc_class *, _UNKNOWN **))
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7, &off_1008B4DB8);
}

void sub_100116EE0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100116E48(a3, &selRef_viewWillDisappear_, sub_10038E8AC);
}

void sub_100116F50(void *a1, double a2, double a3)
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v8.receiver = v3;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    sub_10038EB44(a1, v7, &off_1008B4DB8);
  }
}

void sub_100117008(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100116F50(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100117088()
{
  sub_10002849C(&qword_1009717B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B1890;
  *(v0 + 32) = sub_1002DEF2C();
  *(v0 + 40) = v1;
  v2 = sub_100116B74();
  v3 = sub_1001182B8(&qword_100975038, type metadata accessor for UberedCollectionElementsObserver);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_100117144(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100975030);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1002DF48C(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  sub_100117298();
}

void sub_100117298()
{
  v1 = v0;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = GenericPage.presentationOptions.getter();
  type metadata accessor for BaseGenericDiffablePageViewController();
  sub_10038EC50(v6);
  GenericPage.title.getter();
  if (v7)
  {
    if ((GenericPage.presentationOptions.getter() & 0x80) != 0)
    {
      if ((GenericPage.presentationOptions.getter() & 0x80) != 0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v19 = [v1 navigationItem];
      sub_10002849C(&unk_100973960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B10D0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v12 = objc_opt_self();
      v13 = NSForegroundColorAttributeName;
      v14 = [v12 labelColor];
      v15 = [v14 colorWithAlphaComponent:v10];

      *(inited + 64) = sub_100028BB8();
      *(inited + 40) = v15;
      sub_100397150(inited);
      swift_setDeallocating();
      sub_10002B894(inited + 32, &unk_100970EC0);
      AttributeContainer.init(_:)();
      AttributedString.init(_:attributes:)();
      v16 = type metadata accessor for AttributedString();
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      v17 = v19;
      UINavigationItem.attributedTitle.setter();
    }

    else
    {
      v8 = [v1 navigationItem];
      v9 = String._bridgeToObjectiveC()();

      [v8 setTitle:v9];
    }

    if (GenericPage.presentationOptions.getter() & 2) != 0 && (sub_10006230C())
    {
      v18 = [v1 navigationItem];
      sub_10073D660();
    }
  }
}

uint64_t sub_1001175EC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100118188(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001181EC(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0);
  sub_100118248(&v9[*(v19 + 48)], v18);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_1000417F0(v15, v6);
  sub_1000417F0(v18, &v6[v20]);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1000417F0(v6, v12);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1001182B8(&qword_100975040, &type metadata accessor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460);
      sub_10002B894(v18, &qword_100982460);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460);
    sub_10002B894(v18, &qword_100982460);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460);
  sub_10002B894(v18, &qword_100982460);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460);
  v23 = 1;
  return v23 & 1;
}

void sub_100117A88()
{
  v1 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for Shelf.ContentType();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10002849C(&qword_100975028);
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v36 - v16;
  v18 = [v0 view];
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v21 & 1) == 0)
  {
    v22 = qword_10097F2F8;
    swift_beginAccess();
    v23 = *&v0[v22];
    if (v23)
    {
      v24 = v23;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v25 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
      (*(v14 + 8))(v17, v13);
      if (v25 < 1)
      {
      }

      else
      {
        dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
        v26 = sub_10002849C(&unk_1009731F0);
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v3, 1, v26) == 1)
        {

          sub_10002B894(v3, &unk_10098FFB0);
        }

        else
        {
          swift_getKeyPath();
          ReadOnlyLens.subscript.getter();

          (*(v27 + 8))(v3, v26);
          v29 = v37;
          v28 = v38;
          (*(v37 + 32))(v12, v9, v38);
          (*(v29 + 16))(v6, v12, v28);
          v30 = (*(v29 + 88))(v6, v28);
          if (v30 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v30 == enum case for Shelf.ContentType.upsellBreakout(_:) || v30 == enum case for Shelf.ContentType.heroCarousel(_:) || v30 == enum case for Shelf.ContentType.uber(_:) || v30 == enum case for Shelf.ContentType.mediaPageHeader(_:))
          {
            sub_10002849C(&qword_10096FCE8);
            v32 = type metadata accessor for IndexPath();
            v33 = *(v32 - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1007B10D0;
            IndexPath.init(item:section:)();
            sub_100083BE8(v35);
            swift_setDeallocating();
            (*(v33 + 8))(v35 + v34, v32);
            swift_deallocClassInstance();

            (*(v29 + 8))(v12, v28);
          }

          else
          {

            v31 = *(v29 + 8);
            v31(v12, v28);
            v31(v6, v28);
          }
        }
      }
    }
  }
}

uint64_t sub_100117FEC()
{
  *(sub_100116B74() + 24) = 1;
}

uint64_t sub_10011801C()
{
  *(sub_100116B74() + 24) = 0;
}

uint64_t sub_100118058()
{
}

id sub_100118098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001180F4()
{
}

uint64_t sub_100118188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001181EC(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100118248(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100982460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001182B8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100118300(double a1)
{
  Artwork.size.getter();
  Artwork.size.getter();
  return a1;
}

uint64_t sub_1001183D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAdTransparencyButton()
{
  result = qword_1009750B0;
  if (!qword_1009750B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001184BC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.525490196 green:0.752941176 blue:0.992156863 alpha:1.0];
  qword_1009CE068 = result;
  return result;
}

char *sub_100118510()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = qword_1009750A0;
  *&v0[v9] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = &v0[qword_1009750A8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = qword_10096E168;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D13B8);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();
  v17 = qword_1009750A0;
  [*&v13[qword_1009750A0] setClipsToBounds:1];
  v18 = qword_10096D0B8;
  v19 = *&v13[v17];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor:qword_1009CE068];

  [*&v13[v17] _setContinuousCornerRadius:4.0];
  [v13 addSubview:*&v13[v17]];
  v20 = objc_opt_self();
  v21 = v13;
  v22 = [v20 whiteColor];
  [v21 setTitleColor:v22 forState:0];

  v23 = [v20 whiteColor];
  type metadata accessor for DynamicTypeButton();
  static UIView.defaultHighlightAlpha.getter();
  v24 = [v23 colorWithAlphaComponent:?];

  [v21 setTitleColor:v24 forState:4];
  v25 = v21;
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v27);
  sub_10003D444(v28);
  UIView.setAutomationSemantics(_:)();
  (*(v3 + 8))(v5, v2);
  [v25 addTarget:v25 action:"didTapButton" forControlEvents:64];

  [v25 _setWantsAccessibilityUnderline:0];
  return v25;
}

char *sub_100118988(char *result)
{
  v1 = *&result[qword_1009750A8];
  if (v1)
  {
    v2 = result;
    v3 = sub_10000827C(v1);
    v1(v3);

    return sub_10001F63C(v1);
  }

  return result;
}

double sub_100118A0C(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v1 titleForState:0];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_100118D54(v2, v5, v7);

  return v8;
}

id sub_100118AD0()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v0 titleForState:0];
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

  sub_100118D54(v1, v4, v6);

  v7 = *&v0[qword_1009750A0];
  [v7 frame];
  [v7 setFrame:?];
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  return [v7 setCenter:{MidX, CGRectGetMidY(v16)}];
}

void sub_100118C40(void *a1)
{
  v1 = a1;
  sub_100118AD0();
}

uint64_t sub_100118CB8()
{
  v1 = *(v0 + qword_1009750A8);

  return sub_10001F63C(v1);
}

uint64_t sub_100118CFC(uint64_t a1)
{
  v2 = *(a1 + qword_1009750A8);

  return sub_10001F63C(v2);
}

double sub_100118D54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LabelPlaceholderCompatibility();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v9._object = 0x8000000100800960;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    localizedString(_:comment:)(v9, v10);
  }

  sub_1000367E8();
  v11 = qword_10096E168;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  sub_1000056A8(v12, qword_1009D13B8);
  static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v13 = type metadata accessor for Feature();
  v22[3] = v13;
  v22[4] = sub_100119068(&qword_100972E50, &type metadata accessor for Feature);
  v14 = sub_1000056E0(v22);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
  isFeatureEnabled(_:)();
  sub_100007000(v22);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B0B70;
  *(v15 + 32) = a1;
  v16 = a1;
  v17 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100119068(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v19 = v18;

  (*(v6 + 8))(v8, v5);
  return v19 + 12.0;
}

uint64_t sub_100119068(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_1001190B0(uint64_t a1)
{
  v1 = sub_100119638(a1);
  if (v1)
  {
    v2 = v1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

double sub_100119154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a2;
  v7 = type metadata accessor for ItemLayoutContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  type metadata accessor for SeparatorSupplementaryView();
  if (static UICollectionReusableView.matchesItemElementKind(_:)())
  {

    v10 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v18[1] = v11;
    v18[2] = v10;
    v12 = swift_allocObject();
    v18[0] = a3;
    v13 = v12;
    swift_weakInit();
    (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v7);
    v14 = *(v8 + 80);
    v19 = a1;
    v15 = (v14 + 24) & ~v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    (*(v8 + 32))(v16 + v15, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18[0];
    *(a4 + 24) = sub_10002849C(&qword_1009751D0);
    *(a4 + 32) = sub_10011A820();
    sub_1000056E0(a4);

    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10011936C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009751C8);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for ComponentSeparator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002C0AC(result + 16, v16);

    sub_10002A400(v16, v16[3]);
    v13 = dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)();
    result = sub_100007000(v16);
    if (v13)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        dispatch thunk of static SeparatorProvidingShelfComponentView.separator(in:)();
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          return sub_10011A26C(v4);
        }

        else
        {
          (*(v6 + 32))(v11, v4, v5);
          (*(v6 + 16))(v8, v11, v5);
          v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
          swift_beginAccess();
          (*(v6 + 24))(a1 + v14, v8, v5);
          swift_endAccess();
          sub_100503F40();
          v15 = *(v6 + 8);
          v15(v8, v5);
          return (v15)(v11, v5);
        }
      }
    }
  }

  return result;
}

id sub_100119638(uint64_t a1)
{
  v3 = type metadata accessor for PageGrid();
  v84 = *(v3 - 8);
  v85 = v3;
  __chkstk_darwin(v3);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator.Position();
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  __chkstk_darwin(v6);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v78 - v10;
  __chkstk_darwin(v12);
  v14 = &v78 - v13;
  v15 = sub_10002849C(&qword_1009751C8);
  __chkstk_darwin(v15 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for ComponentSeparator();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011A02C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10011A26C(v17);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  if (((*(*v1 + 128))(a1) & 1) == 0)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v83 = v21;
  ComponentSeparator.position.getter();
  v81 = *(v88 + 88);
  v22 = v81(v14, v87);
  v79 = enum case for ComponentSeparator.Position.bottom(_:);
  v80 = enum case for ComponentSeparator.Position.top(_:);
  if (v22 == enum case for ComponentSeparator.Position.top(_:) || (v23 = v22, v22 == enum case for ComponentSeparator.Position.bottom(_:)))
  {
    v38 = objc_opt_self();
    v39 = [v38 fractionalWidthDimension:1.0];
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v40 = v89;
    static ComponentSeparator.thickness(compatibleWith:)();
    v42 = v41;

    v43 = [v38 absoluteDimension:v42];
    v44 = [objc_opt_self() sizeWithWidthDimension:v39 heightDimension:v43];

    v45 = v44;
  }

  else
  {
    v24 = enum case for ComponentSeparator.Position.leading(_:);
    v25 = objc_opt_self();
    v26 = v25;
    if (v23 != v24 && v23 != enum case for ComponentSeparator.Position.trailing(_:))
    {
      v82 = [v25 fractionalWidthDimension:1.0];
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v27 = v89;
      static ComponentSeparator.thickness(compatibleWith:)();
      v29 = v28;

      v30 = [v26 absoluteDimension:v29];
      v31 = objc_opt_self();
      v32 = v82;
      v33 = [v31 sizeWithWidthDimension:v82 heightDimension:v30];

      v34 = *(v88 + 8);
      v82 = v33;
      v35 = v14;
      v36 = v87;
      v34(v35, v87);
      goto LABEL_14;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v46 = v89;
    static ComponentSeparator.thickness(compatibleWith:)();
    v48 = v47;

    v49 = [v26 absoluteDimension:v48];
    v50 = [v26 fractionalHeightDimension:1.0];
    v51 = [objc_opt_self() sizeWithWidthDimension:v49 heightDimension:v50];

    v45 = v51;
  }

  v82 = v45;
  v36 = v87;
LABEL_14:
  v52 = v83;
  ComponentSeparator.position.getter();
  v53 = v81(v11, v36);
  if (v53 == v80)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v55 = v54;
    (*(v84 + 8))(v5, v85);
    v56 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v55 * -0.5}];
  }

  else if (v53 == v79)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v58 = v57;
    (*(v84 + 8))(v5, v85);
    v56 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v58 * 0.5}];
  }

  else
  {
    if (v53 != enum case for ComponentSeparator.Position.leading(_:))
    {
      v69 = enum case for ComponentSeparator.Position.trailing(_:);
      v70 = v53;
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v71 = (v84 + 8);
      if (v70 == v69)
      {
        PageGrid.interColumnSpace.getter();
        v73 = v72;
        (*v71)(v5, v85);
        v61 = [objc_opt_self() layoutAnchorWithEdges:8 absoluteOffset:{v73 * 0.5, 0.0}];
        v36 = v87;
      }

      else
      {
        PageGrid.interRowSpace.getter();
        v75 = v74;
        (*v71)(v5, v85);
        v76 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v75 * -0.5}];
        v77 = *(v88 + 8);
        v61 = v76;
        v36 = v87;
        v77(v11, v87);
      }

      v52 = v83;
      goto LABEL_21;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interColumnSpace.getter();
    v60 = v59;
    (*(v84 + 8))(v5, v85);
    v56 = [objc_opt_self() layoutAnchorWithEdges:2 absoluteOffset:{v60 * -0.5, 0.0}];
  }

  v61 = v56;
LABEL_21:
  type metadata accessor for SeparatorSupplementaryView();
  v62 = v86;
  ComponentSeparator.position.getter();
  v89 = 0;
  v90 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v63._countAndFlagsBits = 95;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);
  v64._countAndFlagsBits = static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
  String.append(_:)(v64);

  (*(v88 + 8))(v62, v36);
  v65 = String._bridgeToObjectiveC()();

  v66 = objc_opt_self();
  v67 = v82;
  v68 = [v66 supplementaryItemWithLayoutSize:v82 elementKind:v65 containerAnchor:v61];

  (*(v19 + 8))(v52, v18);
  return v68;
}

uint64_t sub_10011A02C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&qword_1009751C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_10002A400((v1 + 16), *(v1 + 40));
  if (dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)() && swift_conformsToProtocol2())
  {
    dispatch thunk of static SeparatorProvidingShelfComponentView.separator(in:)();
    v6 = type metadata accessor for ComponentSeparator();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(a1, v5, v6);
      return (*(v7 + 56))(a1, 0, 1, v6);
    }

    sub_10011A26C(v5);
  }

  v8 = type metadata accessor for ComponentSeparator();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_10011A208()
{
  sub_100007000(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10011A26C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009751C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011A2D4()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v10;
  v10(v9, v4);
  v11 = *(v36 + 16);

  v33 = ItemLayoutContext.index.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.columnCount.getter();
  v13 = v12;
  v14 = v12;
  v15 = *(v1 + 8);
  v31 = v0;
  result = v15(v3, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v11 % v13;
  if (!v17)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v19 = v18;
    v20 = v18;
    result = v15(v3, v31);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v17 = v19;
  }

  v21 = __OFSUB__(v11, v17);
  v22 = v11 - v17;
  if (v21)
  {
    goto LABEL_29;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v24 = v35;
  v35(v9, v4);
  v25 = v36;
  result = ItemLayoutContext.index.getter();
  if (v25 != 1)
  {
    v29 = v23 < result;
LABEL_19:
    v28 = v33;
    goto LABEL_20;
  }

  v26 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  v27 = v32;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v24(v27, v4);
  if (v36 == -1)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v28 = v33;
  if (v36)
  {
    v29 = v26 % v36 == 0;
  }

  else
  {
    v29 = v26 == 0;
  }

LABEL_20:
  if (v11 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v11;
  }

  return v28 != v30 - 1 && !v29;
}

uint64_t sub_10011A758(uint64_t a1)
{
  type metadata accessor for ItemLayoutContext();

  return sub_10011936C(a1);
}

unint64_t sub_10011A820()
{
  result = qword_10098FFA0;
  if (!qword_10098FFA0)
  {
    sub_10002D1A8(&qword_1009751D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098FFA0);
  }

  return result;
}

uint64_t sub_10011A884()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CE080);
  sub_1000056A8(v4, qword_1009CE080);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1520);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10011AA5C()
{
  v1 = v0;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isRegularPad.getter();

  if ((v8 & 1) != 0 && v1[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_isExpanded] == 1)
  {
    if (qword_10096E1E0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_10096E1E0 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1520);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  (*(v3 + 104))(v6, enum case for FontSource.useCase(_:), v2);
  v14[3] = v2;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v3 + 16))(v11, v6, v2);
  StaticDimension.init(_:scaledLike:)();
  return (*(v3 + 8))(v6, v2);
}

char *sub_10011AD30(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for AutomationSemantics();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory] = 7;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  v21 = sub_1000056A8(v20, qword_1009D1520);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, v21, v20);
  v23 = *(v22 + 56);
  v23(v19, 0, 1, v20);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v26 = v25;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v36, &unk_1009711D0);
  sub_10002B894(v37, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v10 + 8))(v12, v33);
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label;
  v29 = *&v27[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  v23(v19, 1, 1, v20);
  v30 = v27;
  v31 = v29;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v27[v28] setAccessibilityIgnoresInvertColors:1];
  [v30 addSubview:*&v27[v28]];

  return v30;
}

double sub_10011B1D8(double a1)
{
  v3 = type metadata accessor for StaticDimension();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  [v11 sizeThatFits:{a1 - v12 - v13, 1.79769313e308}];
  if (qword_10096D0C0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v3, qword_1009CE080);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  [v11 firstBaselineFromTop];
  sub_10011AA5C();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14(v10, v6);
  (*(v17 + 8))(v5, v3);
  [v11 lastBaselineFromBottom];
  return a1;
}

id sub_10011B4C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v5);
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (qword_10096D0C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for StaticDimension();
  sub_1000056A8(v16, qword_1009CE080);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  v19 = *&v1[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  [v19 sizeThatFits:{v13, v15}];
  v21 = v20;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinY = CGRectGetMinY(v29);
  [v19 firstBaselineFromTop];
  v25 = MinY + v18 - v24;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  return [v19 setFrame:{MinX, v25, CGRectGetWidth(v30), v21}];
}

unint64_t sub_10011B8F0()
{
  result = qword_100975218;
  if (!qword_100975218)
  {
    type metadata accessor for TodayCardParagraphOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975218);
  }

  return result;
}

uint64_t sub_10011B948(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v48[1] = a2;
  v7 = a4;
  v52 = type metadata accessor for Paragraph.Alignment();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_1009752C8);
  __chkstk_darwin(v9 - 8);
  v11 = v48 - v10;
  v12 = type metadata accessor for TodayCard.Style();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCardParagraphOverlay.style.getter();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 16))(v15, a3, v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10002B894(v11, &qword_1009752C8);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = v4[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory] = v7;
  if (v7 == 7)
  {
    if (v17 == 7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v4 setNeedsLayout];
    goto LABEL_10;
  }

  if (v17 == 7)
  {
    goto LABEL_9;
  }

  switch(v7)
  {
    case 6:
      if (v17 != 6)
      {
        goto LABEL_9;
      }

      break;
    case 5:
      if (v17 != 5)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (v17 != 4)
      {
        goto LABEL_9;
      }

      break;
    default:
      if ((v17 - 7) > 0xFFFFFFFC || v17 != v7)
      {
        goto LABEL_9;
      }

      break;
  }

LABEL_10:
  v53 = v13;
  v54 = v12;
  v51 = v15;
  v18 = TodayCard.Style.overlayBackgroundColor.getter();
  [v5 setBackgroundColor:v18];

  v19 = [v5 traitCollection];
  if (v7 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v19 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v5 setLayoutMargins:{v21, v23, v25, v27}];
  TodayCardParagraphOverlay.paragraph.getter();
  v28 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  v29 = Paragraph.text.getter();
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v32 = [v29 length];
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = v30;
  *(v33 + 32) = v31;
  *(v33 + 40) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10010279C;
  *(v34 + 24) = v33;
  aBlock[4] = sub_1001027AC;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008B4F78;
  v35 = _Block_copy(aBlock);
  v36 = v30;
  v37 = v31;

  [v29 enumerateAttributesInRange:0 options:v32 usingBlock:{0x100000, v35}];

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    [v28 setAttributedText:v37];

    v39 = v49;
    Paragraph.alignment.getter();
    v40 = v50;
    v41 = v52;
    v42 = (*(v50 + 88))(v39, v52);
    if (v42 == enum case for Paragraph.Alignment.left(_:))
    {
      v43 = 0;
      v45 = v53;
      v44 = v54;
    }

    else
    {
      v45 = v53;
      v44 = v54;
      if (v42 == enum case for Paragraph.Alignment.center(_:))
      {
        v43 = 1;
      }

      else if (v42 == enum case for Paragraph.Alignment.right(_:))
      {
        v43 = 2;
      }

      else if (v42 == enum case for Paragraph.Alignment.justified(_:))
      {
        v43 = 3;
      }

      else if (v42 == enum case for Paragraph.Alignment.localized(_:))
      {
        v43 = 4;
      }

      else
      {
        (*(v40 + 8))(v39, v41);
        v43 = 0;
      }
    }

    [v28 setTextAlignment:v43];
    v46 = v51;
    v47 = TodayCard.Style.overlayDetailTextColor.getter();
    [v28 setTextColor:v47];

    return (*(v45 + 8))(v46, v44);
  }

  return result;
}

char *sub_10011C000(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Wordmark();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DirectionalTextAlignment();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10002849C(&qword_100975330);
  __chkstk_darwin(v16);
  v17 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView;
  v20 = type metadata accessor for IconGridView();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_100097060(&qword_100975338, &qword_100975330);
  ReusePool.init(recycler:limit:)();
  *&v21[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = 0;
  *&v21[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = 0;
  v22 = &v21[OBJC_IVAR____TtC8AppStore12IconGridView_configuration];
  *v22 = vdupq_n_s64(0x4056000000000000uLL);
  *(v22 + 2) = 0x4024000000000000;
  *(v22 + 3) = 2;
  *(v22 + 2) = xmmword_1007B73D0;
  v62.receiver = v21;
  v62.super_class = v20;
  *&v5[v19] = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *&v5[v23] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_10096DCF8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  v26 = sub_1000056A8(v25, qword_1009D0680);
  v27 = *(v25 - 8);
  (*(v27 + 16))(v15, v26, v25);
  (*(v27 + 56))(v15, 0, 1, v25);
  (*(v54 + 104))(v55, enum case for DirectionalTextAlignment.none(_:), v56);
  v28 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v24] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton;
  v30 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v29] = sub_1000F5284(0);
  v31 = &v5[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v61.receiver = v5;
  v61.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 addSubview:*&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView]];

  v34 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  v35 = *&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v36 = v58;
  v37 = v59;
  v38 = v60;
  (*(v59 + 104))(v58, enum case for Wordmark.arcade(_:), v60);
  v39 = v35;
  v40 = [v32 traitCollection];
  v41 = Wordmark.asset(in:)(v40);

  (*(v37 + 8))(v36, v38);
  [v39 setImage:v41];

  v42 = *&v32[v34];
  sub_100005744(0, &qword_100970180);
  v43 = v42;
  v44 = static UIColor.primaryText.getter();
  [v43 setTintColor:v44];

  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  v47 = *&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  UILabel.alignment.setter();

  v48 = *&v32[v46];
  v49 = static UIColor.secondaryText.getter();
  [v48 setTextColor:v49];

  v50 = [v32 contentView];
  [v50 addSubview:*&v32[v46]];

  v51 = [v32 contentView];
  [v51 addSubview:*&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton]];

  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v32;
}

uint64_t sub_10011C788()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009752D0);
  sub_1000056A8(v4, qword_1009752D0);
  if (qword_10096DCF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0680);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10011C95C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = type metadata accessor for LayoutRect();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v94 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v95 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AspectRatio();
  v9 = *(v92 - 8);
  __chkstk_darwin(v92);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OffsetGridLayout.Metrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for _VerticalFlowLayout();
  v65 = *(v66 - 8);
  *&v16 = __chkstk_darwin(v66).n128_u64[0];
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v68 = ObjectType;
  objc_msgSendSuper2(&v107, "layoutSubviews", v16);
  v90 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
  v18 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v61 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v63 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  type metadata accessor for OffsetGridLayout();
  sub_10011E4E0(&qword_100975320, &type metadata accessor for OffsetGridLayout);
  v72 = v1;
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  v76 = v18;
  v21 = [v18 image];
  if (v21)
  {
    v22 = v21;
    [v21 size];
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();

    (*(v9 + 8))(v11, v92);
  }

  sub_10002849C(&qword_10096FE38);
  v23 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v91 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B5350;
  v62 = v25;
  v92 = v25 + v24;
  *&v98 = v90;
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = type metadata accessor for VerticalSpaceMeasurable();
  v103 = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0(&v101);
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_100005744(0, &qword_100972EB0);
  LayoutView.withMeasurements(providedBy:)();
  sub_100007000(&v101);
  v78 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v26 = *(v96 + 104);
  v90 = v96 + 104;
  v89 = v26;
  v26(v8);
  v27 = v95;
  v28 = *(v95 + 104);
  v88 = v95 + 104;
  v87 = v28;
  v28(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:), v80);
  v102 = &type metadata for CGFloat;
  v103 = &protocol witness table for CGFloat;
  v100 = 0;
  v101 = 0x4044000000000000;
  v98 = 0u;
  v99 = 0u;
  v86 = sub_10002849C(&unk_10097E8A0);
  v29 = v8;
  v30 = v94;
  v31 = *(v94 + 80);
  v60 = *(v94 + 72);
  v75 = ((v31 + 32) & ~v31) + v60;
  v77 = (v31 + 32) & ~v31;
  v32 = swift_allocObject();
  v74 = xmmword_1007B10D0;
  *(v32 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v97 = v32;
  v82 = sub_10011E4E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v85 = sub_10002849C(&unk_10097E8B0);
  v84 = sub_100097060(&qword_100973E08, &unk_10097E8B0);
  v33 = v79;
  v34 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v29;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v83 = *(v30 + 8);
  v83(v33, v34);
  sub_10002B894(&v98, &qword_1009799E0);
  v36 = *(v27 + 8);
  v95 = v27 + 8;
  v81 = v36;
  v37 = v80;
  v36(v6, v80);
  v38 = *(v96 + 8);
  v96 += 8;
  v39 = v35;
  v40 = v35;
  v41 = v93;
  v38(v39, v93);
  sub_100007000(&v104);
  sub_100007000(&v101);
  v101 = v76;
  sub_100005744(0, &qword_100973120);
  LayoutView.withMeasurements(_:)();
  v89(v40, v78, v41);
  v42 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v87(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:), v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4034000000000000;
  v98 = 0u;
  v99 = 0u;
  v76 = v31;
  v43 = swift_allocObject();
  *(v43 + 16) = v74;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v97 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v94 = v30 + 8;
  v83(v33, v34);
  sub_10002B894(&v98, &qword_1009799E0);
  v81(v6, v37);
  v44 = v93;
  v73 = v38;
  v38(v40, v93);
  sub_100007000(&v104);
  sub_100007000(&v101);
  v101 = v61;
  type metadata accessor for DynamicTypeLabel();
  LayoutView.withLayoutMargins(_:)();
  v89(v40, enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:), v44);
  LODWORD(v61) = v42;
  v87(v6, v42, v37);
  if (qword_10096D0C8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for StaticDimension();
  v46 = sub_1000056A8(v45, qword_1009752D0);
  v102 = v45;
  v103 = &protocol witness table for StaticDimension;
  v47 = sub_1000056E0(&v101);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007B1890;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v97 = v48;
  v49 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v83(v49, v34);
  sub_10002B894(&v98, &qword_1009799E0);
  v81(v6, v37);
  v50 = v40;
  v51 = v40;
  v52 = v93;
  v73(v50);
  sub_100007000(&v104);
  sub_100007000(&v101);
  v105 = type metadata accessor for OfferButton();
  v106 = &protocol witness table for UIView;
  v53 = v63;
  v104 = v63;
  v89(v51, v78, v52);
  v87(v6, v61, v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4032000000000000;
  v98 = 0u;
  v99 = 0u;
  v54 = swift_allocObject();
  *(v54 + 16) = v74;
  v55 = v53;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v97 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v83(v49, v34);
  sub_10002B894(&v98, &qword_1009799E0);
  v81(v6, v37);
  (v73)(v51, v52);
  sub_100007000(&v101);
  sub_100007000(&v104);
  v56 = v64;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_10011E4E0(&qword_100975328, &type metadata accessor for _VerticalFlowLayout);
  v57 = v69;
  v58 = v66;
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v70 + 8))(v57, v71);
  return (*(v65 + 8))(v56, v58);
}

uint64_t type metadata accessor for ArcadeShowcaseCollectionViewCell()
{
  result = qword_100975310;
  if (!qword_100975310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011DB7C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10011DC28(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v51 = a1;
  v48 = type metadata accessor for StackMeasurable.Axis();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StackMeasurable();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for VerticalSpaceMeasurable();
  v52 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OfferButtonMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for OffsetGridLayout.Metrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  type metadata accessor for OffsetGridLayout();
  sub_10011E4E0(&qword_100975320, &type metadata accessor for OffsetGridLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  v22 = [a3 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v23 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v23 = qword_100991028;
  }

  v24 = sub_1000056A8(v9, v23);
  (*(v10 + 16))(v12, v24, v9);

  (*(v10 + 32))(v15, v12, v9);
  OfferButtonMetrics.estimatedHeight.getter();
  v26 = v25;
  (*(v10 + 8))(v15, v9);
  sub_10002849C(&qword_10096FCA8);
  v27 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v28 = 7 * *(v52 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007B73E0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4044000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v21;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4034000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4033000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4032000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v26;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  if ((static String.isNilOrEmpty(_:)() & 1) == 0)
  {
    if (qword_10096DCF8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for FontUseCase();
    sub_1000056A8(v30, qword_1009D0680);
    v31 = type metadata accessor for Feature();
    v54 = v31;
    v55 = sub_10011E4E0(&qword_100972E50, &type metadata accessor for Feature);
    v32 = sub_1000056E0(v53);
    (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
    isFeatureEnabled(_:)();
    sub_100007000(v53);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    v34 = v33;
    if (qword_10096D0C8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for StaticDimension();
    sub_1000056A8(v35, qword_1009752D0);
    AnyDimension.topMargin(from:in:)();
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *v53 = v34 + v36;
    v37 = v43;
    VerticalSpaceMeasurable.init(_:multiplier:)();
    v29 = sub_1000337C8(1uLL, 8, 1, v29);
    *(v29 + 16) = 8;
    (*(v52 + 32))(v29 + v27 + v28, v37, v44);
  }

  (*(v46 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v48);
  sub_1002A4CCC(v29);

  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  v38 = v50;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v40 = v39;
  (*(v49 + 8))(v7, v38);
  return v40;
}

uint64_t sub_10011E4E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10011E528()
{
  v1 = v0;
  v25 = type metadata accessor for DirectionalTextAlignment();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10002849C(&qword_100975330);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_100097060(&qword_100975338, &qword_100975330);
  ReusePool.init(recycler:limit:)();
  *&v11[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC8AppStore12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_1007B73D0;
  v26.receiver = v11;
  v26.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_10096DCF8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D0680);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v23 + 104))(v24, enum case for DirectionalTextAlignment.none(_:), v25);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v14) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v19 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_1000F5284(0);
  v21 = (v1 + OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10011E990(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1003D7C44(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000541E0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for AdPlacementType();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_100050BB8(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_10011EA78(uint64_t a1)
{
  v47 = type metadata accessor for LegacyAppState();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100398B30(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v43 = v15;
  v44 = ObjectType;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v37 = *(v14 + 56);
  v38 = v14;
  v39 = (v14 - 8);
  v40 = (v3 + 8);
  v41 = v9;
  v42 = v6;
  while (1)
  {
    v48 = v11;
    v43(v9, v16, v6);
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
    v17 = AdamId.stringValue.getter();
    v19 = v18;
    v20 = v5;
    v21 = LegacyAppState.isLocalApplication.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v10;
    v24 = sub_1000072B8(v17, v19);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v20;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_100054078();
        v5 = v20;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10004DB84(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1000072B8(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v5 = v20;
      if (v28)
      {
LABEL_3:

        v10 = v49;
        *(v49[7] + v24) = v21 & 1;
        (*v40)(v5, v47);
        v9 = v41;
        v6 = v42;
        (*v39)(v41, v42);
        goto LABEL_4;
      }
    }

    v10 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v10[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v10[7] + v24) = v21 & 1;
    (*v40)(v5, v47);
    v9 = v41;
    v6 = v42;
    (*v39)(v41, v42);
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_18;
    }

    v10[2] = v34;
LABEL_4:
    v16 += v37;
    v11 = v48 - 1;
    if (v48 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10011EE28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v127 = a5;
  v126 = a4;
  v139 = a3;
  v131 = a2;
  v156 = a1;
  v151 = *v6;
  v122 = type metadata accessor for DispatchWorkItemFlags();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchQoS();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchTime();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v116 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v115 - v11;
  v12 = sub_10002849C(&qword_100975408);
  __chkstk_darwin(v12 - 8);
  v136 = &v115 - v13;
  v149 = type metadata accessor for AppStoreConfig();
  v143 = *(v149 - 8);
  __chkstk_darwin(v149);
  v140 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for AdPlacementType();
  v153 = *(v142 - 8);
  __chkstk_darwin(v142);
  v134 = v15;
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100972390);
  __chkstk_darwin(v16 - 8);
  v124 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v115 - v19;
  v20 = sub_10002849C(&qword_100972398);
  __chkstk_darwin(v20 - 8);
  v123 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = &v115 - v23;
  v24 = type metadata accessor for OSLogger();
  v155 = *(v24 - 8);
  __chkstk_darwin(v24);
  v125 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v152 = &v115 - v27;
  v28 = sub_10002849C(&qword_100975410);
  __chkstk_darwin(v28 - 8);
  v150 = (&v115 - v29);
  Response = type metadata accessor for OnDeviceAdvertFetchResponse();
  v157 = *(Response - 8);
  v158 = Response;
  __chkstk_darwin(Response);
  v138 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v147 = &v115 - v33;
  __chkstk_darwin(v34);
  v135 = &v115 - v35;
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v154 = sub_1000056A8(v24, qword_1009CE248);
  v36 = sub_10002849C(&unk_100972A10);
  v37 = *(type metadata accessor for LogMessage() - 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v146 = 4 * v38;
  v144 = v36;
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  v159 = v6;
  LogMessage.init(stringLiteral:)();
  v145 = 3 * v38;
  v40 = v156;
  v41 = AdPlacementType.rawValue.getter();
  *(&v162 + 1) = &type metadata for String;
  *&aBlock = v41;
  *(&aBlock + 1) = v42;
  v43 = v154;
  static LogMessage.safe(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0);
  Logger.info(_:)();

  v44 = v150;
  sub_100074394(v40, v150);
  v46 = v157;
  v45 = v158;
  v47 = v157[6](v44, 1, v158);
  v148 = v24;
  if (v47 == 1)
  {
    v133 = v39;
    v135 = ((v39 + 32) & ~v39);
    v137 = (2 * v38);
    v115 = v38;
    v48 = v40;
    sub_10002B894(v44, &qword_100975410);
    v150 = sub_10002849C(&qword_100975418);
    v49 = Promise.__allocating_init()();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v153;
    v52 = v153 + 16;
    v53 = v141;
    v54 = v142;
    v151 = *(v153 + 16);
    v151(v141, v48, v142);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v134 += v55;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    *(v56 + 24) = v49;
    v57 = *(v51 + 32);
    v153 = v51 + 32;
    (v57)(v56 + v55, v53, v54);
    v152 = v49;

    v58 = v136;
    sub_1005F4DD4(v136);
    v59 = v143;
    v60 = v149;
    if ((*(v143 + 48))(v58, 1, v149) == 1)
    {
      sub_10002B894(v58, &qword_100975408);
      v61 = type metadata accessor for OnDeviceAdvert();
      (*(*(v61 - 8) + 56))(v123, 1, 1, v61);
      v62 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
      v64 = *(FailReason - 8);
      v65 = v124;
      (*(v64 + 104))(v124, v62, FailReason);
      (*(v64 + 56))(v65, 0, 1, FailReason);
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      v66 = v125;
      v67 = v148;
      (*(v155 + 16))(v125, v154, v148);
      *(swift_allocObject() + 16) = xmmword_1007B23A0;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      *(&v162 + 1) = v54;
      v68 = sub_1000056E0(&aBlock);
      v151(v68, v156, v54);
      static LogMessage.safe(_:)();
      sub_10002B894(&aBlock, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      if (v139)
      {
        v69 = 0;
        v70 = 0;
        *(&aBlock + 1) = 0;
        *&v162 = 0;
      }

      else
      {
        v70 = &type metadata for Double;
        v69 = v131;
      }

      *&aBlock = v69;
      *(&v162 + 1) = v70;
      static LogMessage.safe(_:)();
      sub_10002B894(&aBlock, &unk_1009711D0);
      Logger.error(_:)();

      (*(v155 + 8))(v66, v67);
      v111 = v157;
      v110 = v158;
      v112 = v138;
      v157[2](v147, v138, v158);
      v113 = Promise.__allocating_init(value:)();

      (v111[1])(v112, v110);
      return v113;
    }

    else
    {
      v157 = v57;
      v158 = v52;
      (*(v59 + 32))(v140, v58, v60);
      v78 = v159;
      v79 = AppStoreModule.getAd(config:appRequestMetaFields:adamId:_:)();
      v80 = v59;
      if ((v139 & 1) == 0)
      {
        v155 = v56;
        v81 = v131;
        v150 = v78[2];
        v82 = v116;
        static DispatchTime.now()();
        + infix(_:_:)();
        v83 = *(v132 + 8);
        v132 += 8;
        v154 = v83;
        v83(v82, v130);
        v84 = swift_allocObject();
        swift_weakInit();
        v85 = v141;
        v86 = v142;
        v151(v141, v156, v142);
        v87 = (v134 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        *(v88 + 16) = v152;
        *(v88 + 24) = v84;
        (v157)(v88 + v55, v85, v86);
        *(v88 + v87) = v79;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v81;
        v163 = sub_100124454;
        v164 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v162 = sub_100007A08;
        *(&v162 + 1) = &unk_1008B5068;
        v89 = _Block_copy(&aBlock);

        v90 = v117;
        static DispatchQoS.unspecified.getter();
        v160 = _swiftEmptyArrayStorage;
        sub_100007754(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
        sub_10002849C(&unk_1009729F0);
        sub_10000794C(&qword_100976F60, &unk_1009729F0);
        v91 = v119;
        v92 = v122;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v93 = v129;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v89);
        (*(v121 + 8))(v91, v92);
        v94 = v90;
        v80 = v143;
        (*(v118 + 8))(v94, v120);
        v154(v93, v130);
      }

      v95 = v152;

      sub_10002849C(&qword_100975400);
      Box.read<A>(with:)();

      v96 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v96;
      v98 = sub_100051AB4(v79, v95, v156, isUniquelyReferenced_nonNull_native);
      v99 = aBlock;
      __chkstk_darwin(v98);
      *(&v115 - 2) = v99;

      Box.write(with:)();

      (*(v80 + 8))(v140, v149);
    }
  }

  else
  {
    v71 = v45;
    v72 = v135;
    v46[4](v135, v44, v71);
    v73 = v24;
    v74 = v72;
    (*(v155 + 16))(v152, v43, v73);
    *(swift_allocObject() + 16) = xmmword_1007B73E0;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v75 = v133;
    OnDeviceAdvertFetchResponse.ad.getter();
    v76 = type metadata accessor for OnDeviceAdvert();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v75, 1, v76) == 1)
    {
      sub_10002B894(v75, &qword_100972398);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      v100 = OnDeviceAdvert.instanceId.getter();
      *(&v162 + 1) = &type metadata for String;
      *&aBlock = v100;
      *(&aBlock + 1) = v101;
      (*(v77 + 8))(v75, v76);
    }

    static LogMessage.safe(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0);
    LogMessage.init(stringLiteral:)();
    v102 = v137;
    OnDeviceAdvertFetchResponse.failureReason.getter();
    v103 = type metadata accessor for OnDeviceAdFetchFailReason();
    v104 = *(v103 - 8);
    if ((*(v104 + 48))(v102, 1, v103) == 1)
    {
      sub_10002B894(v102, &qword_100972390);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      *(&v162 + 1) = v103;
      v105 = sub_1000056E0(&aBlock);
      (*(v104 + 32))(v105, v102, v103);
    }

    static LogMessage.safe(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0);
    v106 = v148;
    v107 = v152;
    Logger.info(_:)();

    (*(v155 + 8))(v107, v106);
    sub_10002849C(&qword_100975418);
    v109 = v157;
    v108 = v158;
    v157[2](v147, v74, v158);
    v95 = Promise.__allocating_init(value:)();
    (v109[1])(v74, v108);
  }

  return v95;
}

uint64_t sub_10012039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AdPlacementType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = *(result + 16);

    (*(v14 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v26 = v12;
    v21 = v7;
    *(v20 + 16) = v28;
    *(v20 + 24) = a3;
    (*(v14 + 32))(v20 + v18, v16, v13);
    *(v20 + v19) = v29;
    aBlock[4] = sub_100124290;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B50B8;
    v22 = _Block_copy(aBlock);

    v23 = v26;
    static DispatchQoS.unspecified.getter();
    v33 = _swiftEmptyArrayStorage;
    sub_100007754(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_10000794C(&qword_100976F60, &unk_1009729F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v27;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v32 + 8))(v9, v21);
    (*(v30 + 8))(v23, v31);
  }

  return result;
}

uint64_t sub_10012078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v131 = a3;
  v5 = type metadata accessor for AppStoreAdUnfilledReason();
  v134 = *(v5 - 8);
  __chkstk_darwin(v5);
  v112 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10002849C(&qword_100975420);
  __chkstk_darwin(v119);
  v123 = v102 - v7;
  FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
  v9 = *(FailReason - 8);
  __chkstk_darwin(FailReason);
  v120 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972390);
  __chkstk_darwin(v11 - 8);
  v13 = v102 - v12;
  v14 = sub_10002849C(&qword_100972398);
  __chkstk_darwin(v14 - 8);
  v127 = v102 - v15;
  Response = type metadata accessor for OnDeviceAdvertFetchResponse();
  v129 = *(Response - 8);
  __chkstk_darwin(Response);
  v128 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for AdPlacementType();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v116 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AdamId();
  __chkstk_darwin(v19 - 8);
  v115 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OnDeviceAdvert();
  v125 = *(v21 - 8);
  v126 = v21;
  __chkstk_darwin(v21);
  v118 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100975428);
  __chkstk_darwin(v23 - 8);
  v117 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v130 = v102 - v26;
  __chkstk_darwin(v27);
  v122 = v102 - v28;
  __chkstk_darwin(v29);
  v121 = v102 - v30;
  __chkstk_darwin(v31);
  v33 = v102 - v32;
  v34 = type metadata accessor for OSLogger();
  v133 = *(v34 - 8);
  __chkstk_darwin(v34);
  v132 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Promise.isResolved.getter();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v37 = result;
      v103 = v5;
      v106 = v13;
      v107 = v9;
      v108 = FailReason;
      v109 = a1;

      sub_10002849C(&qword_100975400);
      Box.read<A>(with:)();

      v38 = sub_10011E990(v131);
      v39 = sub_10012403C(v38);
      __chkstk_darwin(v39);

      Box.write(with:)();

      v110 = dispatch thunk of AppStoreAd.positionInformation.getter();
      if (qword_10096D130 != -1)
      {
        swift_once();
      }

      v40 = sub_1000056A8(v34, qword_1009CE248);
      (*(v133 + 16))(v132, v40, v34);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1007B7450;
      v102[1] = v41;

      static LogMessage.identity(_:)();
      v104 = v37;

      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v42 = dispatch thunk of AppStoreAd.instanceId.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v42;
      *(&v135 + 1) = v43;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v44 = dispatch thunk of AppStoreAd.impressionId.getter();
      if (v45)
      {
        v46 = &type metadata for String;
      }

      else
      {
        v44 = 0;
        v46 = 0;
        *&v136 = 0;
      }

      *&v135 = v44;
      *(&v135 + 1) = v45;
      *(&v136 + 1) = v46;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v47 = dispatch thunk of AppStoreAd.toroId.getter();
      v105 = Response;
      if (v48)
      {
        v49 = &type metadata for String;
      }

      else
      {
        v47 = 0;
        v49 = 0;
        *&v136 = 0;
      }

      *&v135 = v47;
      *(&v135 + 1) = v48;
      *(&v136 + 1) = v49;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v50 = dispatch thunk of AppStoreAd.adamId.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v50;
      *(&v135 + 1) = v51;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v52 = dispatch thunk of AppStoreAd.clientRequestId.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v52;
      *(&v135 + 1) = v53;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      dispatch thunk of AppStoreAd.unfilledReason.getter();
      v54 = v134;
      v55 = *(v134 + 48);
      v56 = v103;
      if (v55(v33, 1, v103) == 1)
      {
        sub_10002B894(v33, &qword_100975428);
        v135 = 0u;
        v136 = 0u;
      }

      else
      {
        *(&v136 + 1) = v56;
        v57 = sub_1000056E0(&v135);
        (*(v54 + 32))(v57, v33, v56);
      }

      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v58 = v110;
      if (v110)
      {
        v59 = sub_10002849C(&qword_1009915E0);
      }

      else
      {
        v59 = 0;
        *(&v135 + 1) = 0;
        *&v136 = 0;
      }

      *&v135 = v58;
      *(&v136 + 1) = v59;

      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v60 = dispatch thunk of AppStoreAd.privacyInfo.getter();
      v111 = v55;
      if (v61)
      {
        v62 = &type metadata for String;
      }

      else
      {
        v60 = 0;
        v62 = 0;
        *&v136 = 0;
      }

      *&v135 = v60;
      *(&v135 + 1) = v61;
      *(&v136 + 1) = v62;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      v63 = dispatch thunk of AppStoreAd.metadata.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v63;
      *(&v135 + 1) = v64;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0);
      v65 = v132;
      Logger.info(_:)();

      (*(v133 + 8))(v65, v34);
      v66 = v121;
      dispatch thunk of AppStoreAd.unfilledReason.getter();
      if (v111(v66, 1, v56) != 1)
      {

        sub_10002B894(v66, &qword_100975428);
        v68 = v122;
        v69 = v123;
        v70 = v134;
LABEL_24:
        dispatch thunk of AppStoreAd.unfilledReason.getter();
        v71 = v130;
        (*(v70 + 104))(v130, enum case for AppStoreAdUnfilledReason.policyAdDrop(_:), v56);
        (*(v70 + 56))(v71, 0, 1, v56);
        v72 = *(v119 + 48);
        sub_10012436C(v68, v69);
        sub_10012436C(v71, v69 + v72);
        v73 = v111;
        if (v111(v69, 1, v56) == 1)
        {
          sub_10002B894(v71, &qword_100975428);
          sub_10002B894(v68, &qword_100975428);
          v74 = v73(v69 + v72, 1, v56);
          v76 = v125;
          v75 = v126;
          if (v74 == 1)
          {
            sub_10002B894(v69, &qword_100975428);
LABEL_40:
            v78 = &enum case for OnDeviceAdFetchFailReason.policyAdDrop(_:);
            goto LABEL_41;
          }
        }

        else
        {
          v77 = v117;
          sub_10012436C(v69, v117);
          if (v73(v69 + v72, 1, v56) != 1)
          {
            v93 = v69 + v72;
            v94 = v112;
            (*(v70 + 32))(v112, v93, v56);
            sub_100007754(&qword_100975430, &type metadata accessor for AppStoreAdUnfilledReason);
            v95 = dispatch thunk of static Equatable.== infix(_:_:)();
            v96 = *(v70 + 8);
            v96(v94, v56);
            sub_10002B894(v130, &qword_100975428);
            sub_10002B894(v68, &qword_100975428);
            v96(v77, v56);
            sub_10002B894(v69, &qword_100975428);
            v76 = v125;
            v75 = v126;
            if (v95)
            {
              goto LABEL_40;
            }

LABEL_30:
            v78 = &enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
LABEL_41:
            v97 = v107;
            v98 = v120;
            v99 = v108;
            (*(v107 + 104))(v120, *v78, v108);
            dispatch thunk of AppStoreAd.clientRequestId.getter();
            dispatch thunk of AppStoreAd.toroId.getter();
            (*(v76 + 56))(v127, 1, 1, v75);
            v100 = v106;
            (*(v97 + 16))(v106, v98, v99);
            (*(v97 + 56))(v100, 0, 1, v99);
            v101 = v128;
            OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
            Promise.resolve(_:)();

            (*(v129 + 8))(v101, v105);
            return (*(v97 + 8))(v98, v99);
          }

          sub_10002B894(v130, &qword_100975428);
          sub_10002B894(v68, &qword_100975428);
          (*(v70 + 8))(v77, v56);
          v76 = v125;
          v75 = v126;
        }

        sub_10002B894(v69, &qword_100975420);
        goto LABEL_30;
      }

      sub_10002B894(v66, &qword_100975428);
      dispatch thunk of AppStoreAd.adamId.getter();
      v67 = static String.isNilOrEmpty(_:)();

      v68 = v122;
      v69 = v123;
      v70 = v134;
      if (v67)
      {

        goto LABEL_24;
      }

      v79 = dispatch thunk of AppStoreAd.instanceId.getter();
      v133 = v80;
      v134 = v79;
      v81 = dispatch thunk of AppStoreAd.impressionId.getter();
      if (v82)
      {
        v83 = v81;
      }

      else
      {
        v83 = 0;
      }

      v132 = v83;
      if (v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0xE000000000000000;
      }

      v130 = v84;
      dispatch thunk of AppStoreAd.adamId.getter();
      AdamId.init(value:)();
      (*(v113 + 16))(v116, v131, v114);
      dispatch thunk of AppStoreAd.metadata.getter();
      dispatch thunk of AppStoreAd.privacyInfo.getter();
      dispatch thunk of AppStoreAd.appMetadata.getter();
      dispatch thunk of AppStoreAd.cppIds.getter();
      dispatch thunk of AppStoreAd.creativeDetails.getter();
      v85 = v118;
      OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)();
      dispatch thunk of AppStoreAd.clientRequestId.getter();
      dispatch thunk of AppStoreAd.toroId.getter();
      v86 = v125;
      v87 = v127;
      v88 = v85;
      v89 = v126;
      (*(v125 + 16))(v127, v88, v126);
      (*(v86 + 56))(v87, 0, 1, v89);
      (*(v107 + 56))(v106, 1, 1, v108);
      v90 = v128;
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      Promise.resolve(_:)();
      (*(v129 + 8))(v90, v105);
      v91 = dispatch thunk of AppStoreAd.toroId.getter();
      if (v92)
      {
        __chkstk_darwin(v91);
        Box.write(with:)();

        (*(v86 + 8))(v118, v89);
      }

      else
      {

        return (*(v86 + 8))(v118, v89);
      }
    }
  }

  return result;
}

uint64_t sub_100121B68(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdPlacementType();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v13 = *(v51 - 8);
  __chkstk_darwin(v51);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;

  sub_10002849C(&qword_100975400);
  Box.read<A>(with:)();

  v19 = aBlock;
  if (aBlock[2] && (v20 = sub_1003D7C44(a1), (v21 & 1) != 0))
  {
    v45 = v7;
    v22 = (v19[7] + 16 * v20);
    v23 = v22[1];
    v46 = *v22;

    swift_retain_n();

    v24 = Promise.isResolved.getter();

    if ((v24 & 1) == 0)
    {
      v42 = *(v3 + 16);
      static DispatchTime.now()();
      + infix(_:_:)();
      v43 = *(v13 + 8);
      v44 = v13 + 8;
      v43(v15, v51);
      v29 = swift_allocObject();
      swift_weakInit();
      v41 = v6;
      v30 = v52;
      v31 = a1;
      v32 = v53;
      (*(v52 + 16))(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v53);
      v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v23;
      *(v35 + 24) = v29;
      (*(v30 + 32))(v35 + v33, v12, v32);
      *(v35 + v34) = v46;
      *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v59 = sub_100124038;
      v60 = v35;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_100007A08;
      v58 = &unk_1008B4FF0;
      v36 = _Block_copy(&aBlock);

      v37 = v47;
      static DispatchQoS.unspecified.getter();
      v54 = _swiftEmptyArrayStorage;
      sub_100007754(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0);
      sub_10000794C(&qword_100976F60, &unk_1009729F0);
      v38 = v49;
      v39 = v41;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v45 + 8))(v38, v39);
      (*(v48 + 8))(v37, v50);
      v43(v18, v51);
    }
  }

  else
  {
  }

  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSLogger();
  sub_1000056A8(v25, qword_1009CE248);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  static LogMessage.identity(_:)();
  v58 = &type metadata for String;
  aBlock = 0xD000000000000031;
  v56 = 0x8000000100802610;
  static LogMessage.sensitive(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v26 = v53;
  v58 = v53;
  v27 = sub_1000056E0(&aBlock);
  (*(v52 + 16))(v27, a1, v26);
  static LogMessage.sensitive(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0);
  Logger.info(_:)();
}

uint64_t sub_10012230C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppStoreTaskCancelReason();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSLogger();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972390);
  __chkstk_darwin(v15 - 8);
  v17 = v44 - v16;
  v18 = sub_10002849C(&qword_100972398);
  __chkstk_darwin(v18 - 8);
  v20 = v44 - v19;
  Response = type metadata accessor for OnDeviceAdvertFetchResponse();
  v50 = *(Response - 8);
  v51 = Response;
  __chkstk_darwin(Response);
  v52 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Promise.isResolved.getter();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v45 = v13;
      v46 = v12;
      v47 = v10;
      v48 = v9;
      v49 = a1;

      sub_10002849C(&qword_100975400);
      Box.read<A>(with:)();

      v24 = sub_10011E990(a4);
      v25 = sub_10012403C(v24);
      v26 = v55;
      __chkstk_darwin(v25);
      *&v44[-2] = v26;

      Box.write(with:)();

      AppStoreRequestTask.clientRequestId.getter();
      AppStoreRequestTask.toroId.getter();
      v27 = type metadata accessor for OnDeviceAdvert();
      (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
      v28 = enum case for OnDeviceAdFetchFailReason.timeout(_:);
      FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
      v30 = *(FailReason - 8);
      v44[1] = a5;
      v31 = v30;
      (*(v30 + 104))(v17, v28, FailReason);
      (*(v31 + 56))(v17, 0, 1, FailReason);
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      if (qword_10096D130 != -1)
      {
        swift_once();
      }

      v32 = v45;
      v33 = sub_1000056A8(v45, qword_1009CE248);
      (*(v54 + 16))(v53, v33, v32);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B5370;

      static LogMessage.identity(_:)();

      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v58 = &type metadata for Double;
      v55 = a2;
      static LogMessage.safe(_:)();
      sub_10002B894(&v55, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      *&v34 = COERCE_DOUBLE(AppStoreRequestTask.toroId.getter());
      if (v35)
      {
        v36 = &type metadata for String;
      }

      else
      {
        *&v34 = 0.0;
        v36 = 0;
        v57 = 0;
      }

      v55 = *&v34;
      v56 = v35;
      v58 = v36;
      static LogMessage.safe(_:)();
      sub_10002B894(&v55, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      *&v37 = COERCE_DOUBLE(AppStoreRequestTask.clientRequestId.getter());
      v58 = &type metadata for String;
      v55 = *&v37;
      v56 = v38;
      static LogMessage.safe(_:)();
      sub_10002B894(&v55, &unk_1009711D0);
      v39 = v53;
      Logger.info(_:)();

      (*(v54 + 8))(v39, v32);
      v41 = v46;
      v40 = v47;
      v42 = v48;
      (*(v47 + 104))(v46, enum case for AppStoreTaskCancelReason.slaMiss(_:), v48);
      AppStoreRequestTask.cancel(_:)();
      (*(v40 + 8))(v41, v42);
      v43 = v52;
      Promise.resolve(_:)();

      return (*(v50 + 8))(v43, v51);
    }
  }

  return result;
}

uint64_t sub_100122A94()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_100122B84(double *a1, uint64_t a2, double *a3, uint64_t a4, double *a5, void (*a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a8;
  v93 = a7;
  v106 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v92 = a1;
  v105 = a9;
  v110 = sub_10002849C(&qword_100975438);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v82 - v11;
  v12 = sub_10002849C(&qword_100975408);
  __chkstk_darwin(v12 - 8);
  v97 = &v82 - v13;
  v116 = type metadata accessor for ASKBagContract.AdPlacementBagValue();
  v114 = *(v116 - 1);
  __chkstk_darwin(v116);
  v113 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v82 - v16;
  v17 = type metadata accessor for AppStoreConfig();
  v98 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v82 - v20;
  __chkstk_darwin(v21);
  v85 = &v82 - v22;
  __chkstk_darwin(v23);
  v101 = &v82 - v24;
  __chkstk_darwin(v25);
  v111 = &v82 - v26;
  __chkstk_darwin(v27);
  v112 = &v82 - v28;
  v104 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v104 - 1);
  __chkstk_darwin(v104);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v32);
  v33 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v33 - 8);
  v103 = sub_1000076C0();
  static DispatchQoS.unspecified.getter();
  v117 = &_swiftEmptyArrayStorage;
  v102 = sub_100007754(&qword_100975440, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10002849C(&qword_100975448);
  sub_10000794C(&qword_100975450, &qword_100975448);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = v90;
  v90[2] = v34;
  v117 = sub_100398948(&_swiftEmptyArrayStorage);
  sub_10002849C(&qword_100975458);
  swift_allocObject();
  v35[3] = Box.init(value:)();
  type metadata accessor for AppStoreModule();
  v36 = static AppStoreModule.shared.getter();
  v37 = v105;
  v38 = v106;
  v35[4] = v36;
  v35[5] = v38;
  v35[6] = v107;
  v35[7] = v37;
  v39 = objc_opt_self();

  swift_unknownObjectRetain();
  v40 = v111;
  [v39 setContextPrefetchLimit:v89];
  v117 = &_swiftEmptyArrayStorage;
  v41 = sub_100007754(&qword_100975460, &type metadata accessor for AppStoreConfig);
  sub_10002849C(&qword_100975468);
  sub_10000794C(&qword_100975470, &qword_100975468);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (ASKBagContract.isSearchLandingAdsEnabled.getter())
  {
    v42 = v101;
    static AppStoreConfig.thetis.getter();
    sub_10032B44C(v40, v42);
    v43 = *(v98 + 8);
    v43(v42, v17);
    v43(v40, v17);
  }

  v44 = ASKBagContract.enabledAdPlacements.getter();
  v45 = *(v44 + 16);
  v46 = v92;
  v107 = v41;
  if (v45)
  {
    v106 = *(v114 + 16);
    v47 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v82 = v44;
    v48 = v44 + v47;
    v105 = *(v114 + 72);
    v104 = (v114 + 88);
    LODWORD(v103) = enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:);
    v95 = enum case for ASKBagContract.AdPlacementBagValue.searchResults(_:);
    v94 = enum case for ASKBagContract.AdPlacementBagValue.today(_:);
    v91 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
    v84 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
    v114 += 16;
    v102 = (v114 - 8);
    v101 = (v98 + 56);
    v100 = (v98 + 48);
    v99 = (v98 + 32);
    v49 = &_swiftEmptyArrayStorage;
    v50 = v97;
    v51 = v116;
    v52 = v96;
    v53 = v113;
    while (1)
    {
      v54 = v106;
      v106(v52, v48, v51);
      v54(v53, v52, v51);
      v55 = (*v104)(v53, v51);
      if (v55 == v103)
      {
        static AppStoreConfig.thetis.getter();
        (*v102)(v52, v51);
        (*v101)(v50, 0, 1, v17);
      }

      else if (v55 == v95)
      {
        v52 = v96;
        (*v102)(v96, v116);
        (*v101)(v50, 1, 1, v17);
      }

      else
      {
        v52 = v96;
        if (v55 == v94)
        {
          static AppStoreConfig.iris.getter();
        }

        else if (v55 == v91)
        {
          static AppStoreConfig.flora.getter();
        }

        else
        {
          if (v55 != v84)
          {
            v59 = *v102;
            v60 = v116;
            (*v102)(v96, v116);
            (*v101)(v97, 1, 1, v17);
            v59(v113, v60);
            v50 = v97;
            goto LABEL_18;
          }

          static AppStoreConfig.metis.getter();
        }

        (*v102)(v52, v116);
        (*v101)(v50, 0, 1, v17);
      }

LABEL_18:
      if ((*v100)(v50, 1, v17) == 1)
      {
        sub_10002B894(v50, &qword_100975408);
      }

      else
      {
        v56 = *v99;
        (*v99)(v108, v50, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1000348F4(0, *(v49 + 2) + 1, 1, v49);
        }

        v58 = *(v49 + 2);
        v57 = *(v49 + 3);
        if (v58 >= v57 >> 1)
        {
          v49 = sub_1000348F4(v57 > 1, v58 + 1, 1, v49);
        }

        *(v49 + 2) = v58 + 1;
        v56(v49 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v58, v108, v17);
        v50 = v97;
      }

      v48 += v105;
      --v45;
      v51 = v116;
      if (!v45)
      {

        v46 = v92;
        goto LABEL_27;
      }
    }
  }

  v49 = &_swiftEmptyArrayStorage;
LABEL_27:
  v61 = *(v49 + 2);
  v62 = v85;
  if (v61)
  {
    v63 = *(v98 + 16);
    v64 = v49 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v105 = *(v98 + 72);
    v116 = (v98 + 8);
    v103 = v49;
    v104 = (v98 + 32);
    v65 = v110;
    v66 = v111;
    v67 = v83;
    v108 = (v98 + 16);
    v106 = v63;
    do
    {
      v113 = v64;
      v114 = v61;
      v63(v62);
      (v63)(v66, v112, v17);
      dispatch thunk of SetAlgebra.intersection(_:)();
      sub_100007754(&qword_100975478, &type metadata accessor for AppStoreConfig);
      v69 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = *(v65 + 48);
      *v67 = (v69 & 1) == 0;
      v71 = v66;
      v72 = *v116;
      if (v69)
      {
        v72(v62, v17);
        (*v104)(&v67[v70], v115, v17);
      }

      else
      {
        v72(v115, v17);
        (v63)(&v67[v70], v62, v17);
        (v63)(v71, v62, v17);
        dispatch thunk of SetAlgebra.formUnion(_:)();
        v72(v62, v17);
      }

      v68 = v109;
      sub_1001243DC(v67, v109);
      v65 = v110;
      v72((v68 + *(v110 + 48)), v17);
      v63 = v106;
      v64 = &v113[v105];
      v61 = v114 - 1;
      v66 = v111;
    }

    while (v114 != 1);

    v46 = v92;
  }

  else
  {
  }

  v73 = sub_1001962CC(&_swiftEmptyArrayStorage);
  v120 = v73;
  v74 = ASKBagContract.adsOverrideLanguage.getter();
  v76 = v90;
  v77 = v86;
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v73;
    sub_10005192C(0xD000000000000011, 0x80000001008027B0, 1752459639, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v120 = v117;
    sub_10004ABA4(v78, v79, 108, 0xE100000000000000);
  }

  ASKBagContract.amsBag.getter();
  AppStoreModule.initialize(storeFront:storeFrontLocale:config:bag:defaultAppRequestMetaFields:)();

  swift_unknownObjectRelease();

  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for OSLogger();
  v115 = sub_1000056A8(v116, qword_1009CE248);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5370;

  static LogMessage.identity(_:)();

  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v119 = &type metadata for String;
  v117 = v46;
  v118 = v77;
  static LogMessage.safe(_:)();
  sub_10002B894(&v117, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v119 = &type metadata for String;
  v117 = v87;
  v118 = v88;
  static LogMessage.safe(_:)();
  sub_10002B894(&v117, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v119 = &type metadata for Int;
  v117 = v89;
  static LogMessage.safe(_:)();
  sub_10002B894(&v117, &unk_1009711D0);
  Logger.info(_:)();

  (*(v98 + 8))(v112, v17);
  return v76;
}

uint64_t sub_100123CB4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdPlacementType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdType();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for AdPlacementType.searchLanding(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchLanding(_:);
  }

  else if (v15 == enum case for AdPlacementType.searchResults(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchResults(_:);
  }

  else if (v15 == enum case for AdPlacementType.today(_:))
  {
    v16 = &enum case for AppPlacementLocation.todayPage(_:);
  }

  else if (v15 == enum case for AdPlacementType.productPageYMAL(_:))
  {
    v16 = &enum case for AppPlacementLocation.productPage(_:);
  }

  else
  {
    if (v15 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      UUID.init()();
      v19 = UUID.uuidString.getter();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      return v19;
    }

    v16 = &enum case for AppPlacementLocation.downloadPage(_:);
  }

  v17 = *v16;
  v18 = type metadata accessor for AppPlacementLocation();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v11 + 104))(v14, enum case for AdType.app(_:), v10);
  type metadata accessor for PromotedContentMetricCollector();
  static PromotedContentMetricCollector.shared.getter();
  v19 = dispatch thunk of PromotedContentMetricCollector.getIdentifierForMissedOpportunity(for:)();

  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_10012403C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100124080(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AdPlacementType() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10012039C(a1, a2, v6, v7, v8);
}

uint64_t sub_100124104()
{
  v1 = type metadata accessor for AdPlacementType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1001241F4()
{
  v1 = *(type metadata accessor for AdPlacementType() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10012230C(v6, v5, v7, v0 + v2, v4);
}

uint64_t sub_100124290()
{
  v1 = *(type metadata accessor for AdPlacementType() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10012078C(v3, v4, v0 + v2, v5);
}

uint64_t sub_100124320(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_10012436C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001243DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100124464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton()) init];
    SearchAd.adTransparencyAction.getter();
    Action.title.getter();
    v8 = v7;

    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_1009750A8];
    v15 = *&v6[qword_1009750A8];
    *v14 = sub_1001249BC;
    v14[1] = v13;

    sub_10001F63C(v15);
    v16 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel());
    v17 = v6;
    v18 = sub_1002FDC78(v17);
    if (v3[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v19 = [*&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] text];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }
    }

    else
    {
      v21 = SearchAd.advertisingText.getter();
      v23 = v24;
    }

    v26 = &v18[qword_10097FBE0];
    *v26 = v21;
    v26[1] = v23;

    sub_1002FE304();
    v27 = OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel;
    v28 = *&v3[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    v29 = v18;
    if (v28)
    {
      [v28 removeFromSuperview];
      v28 = *&v3[v27];
    }

    *&v3[v27] = v18;
    v30 = v18;

    sub_10070AB34();
    [v3 addSubview:v30];

    v31 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
    v32 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v32 && ([v32 isHidden] & 1) == 0 && (v33 = *&v3[v31]) != 0)
    {
      v34 = [v33 hasContent];
    }

    else
    {
      v34 = 0;
    }

    v35 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_10006C234(&v3[v35], v37);
    v36 = v38;
    sub_10002B894(v37, &unk_1009711D0);
    if (v36 || v34)
    {
      [*&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
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

    v25 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v25)
    {

      [v25 setHidden:0];
    }
  }
}

uint64_t sub_100124844(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

id sub_1001249EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v84 = a3;
  v10 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v10 - 8);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v73 - v13;
  v14 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v14 - 8);
  v81 = &v73 - v15;
  v16 = type metadata accessor for VideoControls();
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v73 - v20;
  v22 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = type metadata accessor for VideoFillMode();
  v80 = *(v25 - 8);
  __chkstk_darwin(v25);
  v90 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for VideoConfiguration();
  v85 = *(v27 - 8);
  v86 = v27;
  __chkstk_darwin(v27);
  v91 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AspectRatio();
  v30 = *(v29 - 8);
  v88 = v29;
  v89 = v30;
  __chkstk_darwin(v29);
  v79 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = FramedMedia.caption.getter();
  v33 = [v32 length];

  v87 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_100989278] setText:0];
    v7[qword_1009D23C8] = 0;
    [*&v7[qword_100989268] setHidden:1];
  }

  else
  {
    v74 = v25;
    v75 = v24;
    v76 = v21;
    v77 = v18;
    v78 = a1;
    v34 = FramedMedia.caption.getter();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10010279C;
    *(v39 + 24) = v38;
    aBlock[4] = sub_1001027AC;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    aBlock[3] = &unk_1008B51C0;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return result;
    }

    [*&v7[qword_100989278] setAttributedText:v42];
    v7[qword_1009D23C8] = 1;
    [*&v7[qword_100989268] setHidden:0];

    v24 = v75;
    v25 = v74;
  }

  v44 = *&v7[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v45)
  {
    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = 0;
  }

  v47 = v87;
  [v44 setText:v46];

  bottom = UIEdgeInsetsZero.bottom;
  if (FramedMedia.isFullWidth.getter())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v47 pageMarginInsets];
    left = v51;
    right = v52;
  }

  v53 = v88;
  v54 = [v7 contentView];
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (FramedVideo.artwork.getter())
  {
    v55 = [v7 contentView];
    sub_100028004();
    LayoutMarginsAware<>.layoutFrame.getter();

    Artwork.size.getter();
    v56 = v79;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(filling:)();
    v58 = v57;
    v60 = v59;

    (*(v89 + 8))(v56, v53);
    v61 = &v7[qword_1009D1FC0];
    *v61 = v58;
    v61[1] = v60;
  }

  if (FramedVideo.video.getter())
  {
    (*(v80 + 104))(v90, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (FramedVideo.artwork.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    (*(v89 + 56))(v24, v62, 1, v53);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v63 = v81;
    Video.videoUrl.getter();
    v64 = type metadata accessor for URL();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v65 = v82;
    Video.templateMediaEvent.getter();
    v66 = v83;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_100126588(&qword_100973190, type metadata accessor for VideoView);
    v67 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v66, &unk_100973A50);
    sub_10002B894(v65, &unk_100973A50);
    sub_10002B894(v63, &qword_100982460);
    sub_10002B894(aBlock, &qword_10096FB90);
    sub_1004C1750();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v69 = Strong;
      v70 = *&v7[qword_100988130];
      if (v70)
      {
        v71 = *&v7[qword_100988130];
      }

      else
      {
        v71 = [v7 contentView];
        v70 = 0;
      }

      v72 = v70;
      [v71 addSubview:v69];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v85 + 8))(v91, v86);
  }

  v7[qword_1009D23C0] = FramedMedia.hasRoundedCorners.getter() & 1;
  return sub_100125674();
}

double sub_1001254EC(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_100125514()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for VideoView();
    sub_100126588(&unk_1009840E0, type metadata accessor for VideoView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

id sub_100125674()
{
  v1 = type metadata accessor for CornerStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009D23C0] == 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
    dispatch thunk of RoundedCornerView.borderWidth.setter();
    static ArtworkView.iconBorderColor.getter();
    dispatch thunk of RoundedCornerView.borderColor.setter();
  }

  (*(v2 + 104))(v4, enum case for CornerStyle.continuous(_:), v1);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v2 + 8))(v4, v1);
  return [v0 setNeedsLayout];
}

uint64_t sub_1001257EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v8 = type metadata accessor for AspectRatio();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((FramedMedia.isFullWidth.getter() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (FramedVideo.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    (*(v9 + 8))(v11, v8);
    FramedMedia.isFullWidth.getter();
  }

  v12 = FramedMedia.caption.getter();
  v13 = [v12 length];

  if (v13 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v14)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for FontUseCase();
      sub_1000056A8(v15, qword_1009D15F8);
      v16 = type metadata accessor for Feature();
      v37 = v16;
      v38 = sub_100126588(&qword_100972E50, &type metadata accessor for Feature);
      v17 = sub_1000056E0(aBlock);
      (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    }

    v18 = FramedMedia.caption.getter();
    v35[1] = a4;
    v19 = [a4 traitCollection];
    v20 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v18];
    v21 = [v18 length];
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *(v22 + 40) = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100126854;
    *(v23 + 24) = v22;
    v38 = sub_100126848;
    v39 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v37 = &unk_1008B5238;
    v24 = _Block_copy(aBlock);
    v25 = v19;
    v26 = v20;

    [v18 enumerateAttributesInRange:0 options:v21 usingBlock:{0x100000, v24}];

    _Block_release(v24);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = qword_10096E220;
      v18 = v26;
      if (v27 == -1)
      {
LABEL_12:
        v28 = type metadata accessor for FontUseCase();
        v29 = sub_1000056A8(v28, qword_1009D15E0);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v7, v29, v28);
        (*(v30 + 56))(v7, 0, 1, v28);
        v31 = type metadata accessor for Feature();
        v37 = v31;
        v38 = sub_100126588(&qword_100972E50, &type metadata accessor for Feature);
        v32 = sub_1000056E0(aBlock);
        (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10002B894(v7, &qword_100972ED0);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for StaticDimension();
        sub_1000056A8(v33, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v33, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        return CGSize.integral.getter();
      }
    }

    swift_once();
    goto LABEL_12;
  }

  return CGSize.integral.getter();
}

uint64_t sub_100125FAC(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v16 = a2;
  v18 = type metadata accessor for AspectRatio();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Shelf.items.getter();
  v7 = *(v6 + 16);
  v20 = v6 + 32;
  v17 = (v3 + 8);
  v21 = v6;

  v9 = 0;
  v10 = &qword_100973D50;
  v11 = v18;
  while (1)
  {
    if (v9 == v7)
    {
      v29 = 0;
      v9 = v7;
      v27 = 0u;
      v28 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v21 + 16))
    {
      goto LABEL_18;
    }

    sub_10002C0AC(v20 + 40 * v9++, &v27);
LABEL_8:
    v25[0] = v27;
    v25[1] = v28;
    v26 = v29;
    if (!*(&v28 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100005A38(v25, v24);
    sub_10002C0AC(v24, v22);
    sub_10002849C(v10);
    type metadata accessor for FramedVideo();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
    }

    result = sub_100007000(v24);
    if (v23)
    {
      if (FramedVideo.video.getter())
      {
        v13 = v10;
        Video.preview.getter();

        v14 = FramedMedia.isFullWidth.getter();

        if ((v14 & 1) == 0)
        {
          [v16 pageMarginInsets];
        }

        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();
        v12 = *v17;
        (*v17)(v5, v11);
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(filling:)();
        v12(v5, v11);
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        v10 = v13;
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

uint64_t sub_100126324()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ASKDeviceTypeGetCurrent();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if (qword_10096D0D0 != -1)
      {
        swift_once();
      }

      v11 = qword_1009CE0C8;
      goto LABEL_13;
    }
  }

  if (qword_10096D0D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1009CE0E0;
LABEL_13:
  v12 = sub_1000056A8(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  AspectRatio.height(fromWidth:)();
  v15 = [objc_opt_self() absoluteDimension:v14];
  v16 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  (*(v1 + 8))(v3, v0);
  return v16;
}

uint64_t sub_100126588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001265D0(uint64_t a1)
{
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10002C0AC(a1, v11);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for FramedVideo();
  result = swift_dynamicCast();
  if (result)
  {
    if (FramedVideo.video.getter())
    {
      Video.preview.getter();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();
        v9 = *(v3 + 8);
        v9(v5, v2);
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(filling:)();
        v9(v5, v2);
        Artwork.config(_:mode:prefersLayeredImage:)();
        type metadata accessor for VideoView();
        sub_100126588(&unk_1009840E0, type metadata accessor for VideoView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchButton()
{
  result = qword_1009754D0;
  if (!qword_1009754D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001268F4()
{
  sub_100028BB8();
  result = static UIColor.defaultButtonBackgroundColor.getter();
  qword_1009CE0F8 = result;
  return result;
}

uint64_t sub_100126928()
{
  sub_100028BB8();
  result = static UIColor.appTint.getter();
  qword_1009CE100 = result;
  return result;
}

id sub_10012695C(uint64_t a1)
{
  v3 = type metadata accessor for SystemImage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_1009754C8] = a1;
  v7 = type metadata accessor for SearchButton();
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();
  v9 = qword_10096D0E0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_1009CE0F8];
  if (qword_10096D0E8 != -1)
  {
    swift_once();
  }

  [v10 setTintColor:qword_1009CE100];

  v11 = [v10 layer];
  [v11 setCornerRadius:22.0];

  [v10 setClipsToBounds:1];
  (*(v4 + 104))(v6, enum case for SystemImage.magnifyingglass(_:), v3);
  v12 = static SystemImage.load(_:with:)();
  (*(v4 + 8))(v6, v3);
  v13 = [v12 imageWithRenderingMode:2];

  [v10 setImage:v13 forState:0];
  [v10 addTarget:v10 action:"goToSearch" forControlEvents:64];

  return v10;
}

double sub_100126C18(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for FontUseCase();
  v4 = sub_1000056A8(v3, qword_1009D04A0);
  sub_1002CE220(v4);
  v6 = v5;

  return v6;
}

uint64_t sub_100126D00()
{
  v0 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v0 - 8);
  v33 = &v29 - v1;
  v32 = type metadata accessor for FlowOrigin();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for FlowPage();
  __chkstk_darwin(v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v20 + 104))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for ReferrerData();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v35 = 0u;
  v36 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.push(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.never(_:), v30);
  (*(v2 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v23 = v33;
  v24 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v25 = *(v34 + qword_1009754C8);
  v26 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    return sub_1000F40E0(v23);
  }

  else
  {
    sub_1005F9C8C(v24, 1, v25, v23);

    return (*(v27 + 8))(v23, v26);
  }
}

void sub_1001272CC(void *a1)
{
  v1 = a1;
  sub_100126D00();
}

void sub_100127314(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchButton();
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", v4);
  [v5 invalidateIntrinsicContentSize];
  v6 = [v5 layer];
  [v5 intrinsicContentSize];
  [v6 setCornerRadius:v7 * 0.5];
}

id sub_10012741C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012746C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1001274B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_10012754C(uint64_t a1)
{
  v59 = a1;
  v1 = type metadata accessor for ActionOutcome();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NavigationTab();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10002849C(&qword_10098DC00);
  __chkstk_darwin(v58);
  v8 = &v41 - v7;
  v9 = sub_10002849C(&qword_100975528);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v41 - v13;
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = [Strong tabBar];

  v18 = [v17 items];
  if (!v18)
  {
    goto LABEL_32;
  }

  sub_100127D28();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v19;
  if (v19 >> 62)
  {
LABEL_28:
    v34 = v20;
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v34;
      v57 = v35;
      if (!v35)
      {

        v29 = v44;
        goto LABEL_25;
      }

      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v57 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v57)
  {
LABEL_31:

LABEL_32:
    sub_10002849C(&qword_1009764A0);
    v36 = v48;
    TabBadgeAction.navigationTab.getter();
    v37 = NavigationTab.rawValue.getter();
    v39 = v38;
    (*(v5 + 8))(v36, v4);
    sub_100127CD4();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return Promise.__allocating_init(error:)();
  }

LABEL_4:
  v42 = v2;
  v43 = v1;
  v1 = 0;
  v55 = (v5 + 56);
  v56 = v20 & 0xC000000000000001;
  v21 = (v5 + 48);
  v46 = (v5 + 32);
  v47 = v20 & 0xFFFFFFFFFFFFFF8;
  v51 = (v5 + 8);
  v52 = v20;
  v53 = v11;
  v11 = v4;
  v4 = v54;
  v2 = v20;
  v45 = (v5 + 48);
  v50 = v11;
  while (1)
  {
    if (v56)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v1 >= *(v47 + 16))
      {
        goto LABEL_27;
      }

      v20 = *(v2 + 8 * v1 + 32);
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v60 = v20;
    [v20 tag];
    NavigationTab.init(intValue:)();
    v22 = v61;
    TabBadgeAction.navigationTab.getter();
    (*v55)(v22, 0, 1, v11);
    v23 = *(v58 + 48);
    sub_100127D74(v4, v8);
    sub_100127D74(v22, &v8[v23]);
    v24 = *v21;
    if ((*v21)(v8, 1, v11) == 1)
    {
      break;
    }

    v25 = v61;
    v26 = v53;
    sub_100127D74(v8, v53);
    if (v24(&v8[v23], 1, v11) == 1)
    {
      sub_10002B894(v25, &qword_100975528);
      v4 = v54;
      sub_10002B894(v54, &qword_100975528);
      (*v51)(v26, v11);
      v2 = v52;
      goto LABEL_6;
    }

    v27 = v48;
    (*v46)(v48, &v8[v23], v11);
    sub_100127DE4(&unk_10098DC10, &type metadata accessor for NavigationTab);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *v51;
    (*v51)(v27, v11);
    sub_10002B894(v25, &qword_100975528);
    v4 = v54;
    sub_10002B894(v54, &qword_100975528);
    v28(v26, v11);
    v21 = v45;
    sub_10002B894(v8, &qword_100975528);
    v2 = v52;
    if (v49)
    {
      goto LABEL_21;
    }

LABEL_7:

    ++v1;
    if (v5 == v57)
    {

      v2 = v42;
      v1 = v43;
      v29 = v44;
      goto LABEL_25;
    }
  }

  sub_10002B894(v61, &qword_100975528);
  v11 = v50;
  sub_10002B894(v4, &qword_100975528);
  if (v24(&v8[v23], 1, v11) != 1)
  {
LABEL_6:
    sub_10002B894(v8, &qword_10098DC00);
    goto LABEL_7;
  }

  sub_10002B894(v8, &qword_100975528);
LABEL_21:

  TabBadgeAction.text.getter();
  if (v30)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  v2 = v42;
  v1 = v43;
  v29 = v44;
  v32 = v60;
  [v60 setBadgeValue:v31];

LABEL_25:
  sub_10002849C(&qword_1009764A0);
  (*(v2 + 104))(v29, enum case for ActionOutcome.performed(_:), v1);
  return Promise.__allocating_init(value:)();
}

unint64_t sub_100127CD4()
{
  result = qword_100975530;
  if (!qword_100975530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975530);
  }

  return result;
}

unint64_t sub_100127D28()
{
  result = qword_100982AC0;
  if (!qword_100982AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982AC0);
  }

  return result;
}

uint64_t sub_100127D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100127DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100127E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100127E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100127ED4()
{
  result = qword_100975538;
  if (!qword_100975538)
  {
    type metadata accessor for UnhideAppAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975538);
  }

  return result;
}

uint64_t sub_100127F2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10002A400(a2, a2[3]);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  swift_unknownObjectRetain();

  dispatch thunk of PurchaseHistoryProtocol.update(in:_:)();
}

uint64_t sub_100127FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AdamId();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = dispatch thunk of AppStateMachine.appStateController.getter();
  if (result)
  {
    v16[1] = v14;
    v16[0] = swift_getObjectType();
    UnhideAppAction.appAdamId.getter();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    swift_unknownObjectRetain();

    dispatch thunk of AppStateController.refreshDataSources(for:completion:)();
    swift_unknownObjectRelease();

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100128184()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdamId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of AppStateMachine.appStateController.getter())
  {
    v10 = v0;
    swift_getObjectType();
    UnhideAppAction.appAdamId.getter();
    dispatch thunk of AppStateController.clearWaiting(for:refreshState:)();
    v0 = v10;
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100128394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallationType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdamId();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  if (UnhideAppAction.isHidden.getter())
  {
    v31 = v4;
    v32 = v11;
    v30 = v5;
    sub_10002849C(&qword_1009764A0);
    v34 = Promise.__allocating_init()();
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_getObjectType();
    v37 = v8;
    UnhideAppAction.appAdamId.getter();
    v15 = v37;
    v16 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v18 = v17;
    swift_unknownObjectRelease();
    v35 = *(v9 + 8);
    v36 = v9 + 8;
    v35(v14, v15);
    sub_10002849C(&unk_100975540);
    inject<A, B>(_:from:)();
    UnhideAppAction.isHidden.setter();
    swift_getObjectType();
    v33 = v18;
    if (dispatch thunk of AppStateMachine.appStateController.getter())
    {
      swift_getObjectType();
      UnhideAppAction.appAdamId.getter();
      v29 = v16;
      v19 = v30;
      v20 = v31;
      (*(v30 + 104))(v7, enum case for InstallationType.unknown(_:), v31);
      dispatch thunk of AppStateController.setWaiting(for:installationType:)();
      v15 = v37;
      swift_unknownObjectRelease();
      (*(v19 + 8))(v7, v20);
      v16 = v29;
      v35(v14, v15);
    }

    sub_10002A400(v39, v39[3]);
    v21 = v32;
    UnhideAppAction.appAdamId.getter();
    v22 = AdamId.numberValue.getter();
    v35(v21, v15);
    if (v22)
    {
      [v22 longLongValue];
    }

    sub_10002C0AC(v39, v38);
    v26 = swift_allocObject();
    sub_100005A38(v38, (v26 + 2));
    v27 = v33;
    v28 = v34;
    v26[7] = v16;
    v26[8] = v27;
    v26[9] = a1;
    v26[10] = v28;
    swift_unknownObjectRetain();

    dispatch thunk of PurchaseHistoryProtocol.setHidden(_:forStoreItemID:completion:)();

    swift_unknownObjectRelease();
    sub_100007000(v39);
    return v28;
  }

  else
  {
    v23 = UnhideAppAction.offerAction.getter();
    v24 = sub_1005D0214(v23, 1, a2);

    return v24;
  }
}

uint64_t sub_100128810()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100128864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell();
  swift_getObjectType();
  v11 = sub_100129BEC();
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v12 = [a1 traitCollection];
  v13 = UITraitCollection.isSizeClassCompact.getter();

  if (v13)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v14 = 160.0;
    }

    else
    {
      NSDirectionalEdgeInsets.edgeInsets.getter();
      CGSize.subtracting(insets:)();
      v19 = v18 + -10.0;
      v32[0] = 156.0;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v14 = v19 - v21;
    }

    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v14;
    sub_10002B894(&v29, &qword_1009799E0);
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

    static SmallBreakoutLayout.rotatedIconFrameOffsets(rotation:iconSize:)();
    v23 = v11 + v22 + v22;
    NSDirectionalEdgeInsets.edgeInsets.getter();
    CGSize.subtracting(insets:)();
    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v24 + -10.0 - v23;
    sub_10002B894(&v29, &qword_1009799E0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_100129CF0(&v29, v28);
  v27[12] = &protocol witness table for CGFloat;
  v27[11] = &type metadata for CGFloat;
  v27[8] = 0x4024000000000000;
  sub_10002C0AC(v32, v6);
  (*(v4 + 104))(v6, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v3);
  if (qword_10096D0F8 != -1)
  {
    swift_once();
  }

  v25 = sub_10002849C(&qword_1009755B0);
  sub_1000056A8(v25, qword_1009CE118);
  v27[2] = a1;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  SmallBreakoutLayout.Metrics.init(iconSize:iconRotation:iconBottomOffset:detailsTrailingMargin:detailsWidth:layoutMargins:height:)();
  sub_10002B894(&v29, &qword_1009799E0);
  return sub_100007000(v32);
}

uint64_t sub_100128D54()
{
  v0 = sub_10002849C(&unk_100970EA0);
  sub_100005644(v0, qword_100975550);
  sub_1000056A8(v0, qword_100975550);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for CGSize(0);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_100128E04()
{
  v0 = sub_10002849C(&qword_1009755B0);
  sub_100005644(v0, qword_1009CE118);
  sub_1000056A8(v0, qword_1009CE118);
  sub_10002849C(&qword_100973F50);
  sub_10002849C(&qword_1009755B8);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_100128ED4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009732B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_10096D008 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v14, qword_1009CDEA0);
  sub_1000C2608(v23, v16);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(value:)();
  v24 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_100147904(v19);
  *&v5[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  type metadata accessor for ArtworkView();
  *&v5[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView] = static ArtworkView.iconArtworkView.getter();
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v26 = [v25 contentView];
  [v26 setClipsToBounds:1];

  v27 = [v25 contentView];
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v28 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView;
  v29 = qword_10096DA48;
  v30 = *&v25[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Shadow();
  v32 = sub_1000056A8(v31, qword_1009CFD38);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v13, v32, v31);
  (*(v33 + 56))(v13, 0, 1, v31);
  ArtworkView.shadow.setter();

  v34 = *&v25[v28];
  CGAffineTransformMakeRotation(&v38, -0.523598776);
  [v34 setTransform:&v38];
  v35 = [v25 contentView];
  [v35 addSubview:*&v25[v28]];

  v36 = [v25 contentView];
  [v36 addSubview:*&v25[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView]];

  return v25;
}

id sub_100129494()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallBreakoutLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_100128864(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
    UIView.withUntransformedFrame.getter();

    v18 = *&v1[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
    [v1 bounds];
    SmallBreakoutLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_100129764()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView];
  sub_100146AB4();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "setBackgroundColor:", 0);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v9, "backgroundColor");
  ArtworkView.backgroundColor.setter();

  v6 = (v2 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  *v6 = 0;
  v6[1] = 0;
  return sub_10001F63C(v7);
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell()
{
  result = qword_100975590;
  if (!qword_100975590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100129970()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100129A2C()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = sub_100129BEC();
  swift_unknownObjectRelease();
  return v1;
}

void sub_100129ABC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView);
  ArtworkView.isImageHidden.setter();

  v4 = *(v1 + v2);
  type metadata accessor for ArtworkView();
  sub_100129CA8(&qword_100970E80, &type metadata accessor for ArtworkView);
  v5 = v4;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100129B94(uint64_t a1)
{
  result = sub_100129CA8(&qword_1009755A8, type metadata accessor for SmallBreakoutCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_100129BEC()
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_10096D0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_10002849C(&unk_100970EA0);
  sub_1000056A8(v1, qword_100975550);
  Conditional.evaluate(with:)();
  return v2;
}

uint64_t sub_100129CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100129CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009799E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100129D60()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009732B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = type metadata accessor for ItemLayoutContext();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_10096D008 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v2, qword_1009CDEA0);
  sub_1000C2608(v11, v4);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(value:)();
  v12 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_100147904(v7);
  *(v1 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100129F58@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = type metadata accessor for FontSource();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for StaticDimension();
  sub_1000056A8(v10, qword_1009D2448);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v26 = v12;
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v10, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v15 = v14;
  v13(v7, v4);
  v23 = v15;
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096DF80 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D0E00);
  (*(*(v16 - 8) + 16))(v3, v17, v16);
  (*(v20 + 104))(v3, enum case for FontSource.useCase(_:), v21);
  Conditional<>.init(regularConstant:compactConstant:source:)();
  v27 = &type metadata for CGFloat;
  v28 = &protocol witness table for CGFloat;
  v25 = &protocol witness table for CGFloat;
  v26 = 0x403E000000000000;
  v24 = &type metadata for CGFloat;
  v23 = 0x4064000000000000;
  return ProductDescriptionLayout.Metrics.init(topPadding:developerTopPadding:horizontalTextPadding:horizontalDeveloperSpace:)();
}

char *sub_10012A338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_100005744(0, &qword_100970180);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = static UIColor.defaultBackground.getter();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView] = sub_10059F344(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = static UIColor.defaultBackground.getter();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v39, &unk_1009711D0);
  sub_10002B894(&v41, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v39, &unk_1009711D0);
  sub_10002B894(&v41, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_10012A8D4()
{
  v1 = v0;
  v26 = type metadata accessor for LayoutRect();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ProductDescriptionLayout();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  v13 = *&v1[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell();

  v14 = Array.isNotEmpty.getter();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_100129F58(v7);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView();
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
  ProductDescriptionLayout.placeChildren(relativeTo:in:)();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_10012AC60(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v24 = qword_10098CEC8;
      v25 = [qword_10098CEC8 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v27 = qword_10096E9C8;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for FontUseCase();
        v29 = sub_1000056A8(v28, qword_10098CEB0);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10002B894(v12, &qword_100972ED0);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_10012B008(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for TagFacetRibbonLayout.Metrics();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for TagFacetRibbonLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a5 traitCollection];
  type metadata accessor for RibbonBarItem();
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    return;
  }

  v30 = a3;
  v16 = UITraitCollection.modifyingTraits(_:)();
  v31 = _swiftEmptyArrayStorage;
  if (!(a2 >> 62))
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v16;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_18:
    v20 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_1002A5678(v20);

    static TagFacetRibbonLayout.Metrics.standard.getter();
    TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007B0B70;
    v23 = v29;
    *(v22 + 32) = v29;
    v24 = v23;
    v25 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    TagFacetRibbonLayout.measurements(fitting:in:)();

    (*(v11 + 8))(v14, v10);
    return;
  }

  v21 = v16;
  v17 = _CocoaArrayWrapper.endIndex.getter();
  v29 = v21;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v17 >= 1)
  {
    v26 = a4;
    v27 = v11;
    v28 = v10;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        swift_unknownObjectRetain();
        LayoutViewPlaceholder.init(measureWith:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v18;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    else
    {
      v19 = a2 + 32;
      type metadata accessor for LayoutViewPlaceholder();
      do
      {
        swift_allocObject();
        swift_retain_n();
        LayoutViewPlaceholder.init(measureWith:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 += 8;
        --v17;
      }

      while (v17);
    }

    v20 = v31;
    v11 = v27;
    v10 = v28;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_10012B474()
{
  v1 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  type metadata accessor for TagFacetRibbonView();
  sub_10012C000(&unk_100975600, type metadata accessor for TagFacetRibbonView);
  return NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
}

id sub_10012B57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell()
{
  result = qword_1009755E8;
  if (!qword_1009755E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012B6A8()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10012B7B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10012B86C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_10012B8C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_10012B988()
{
  type metadata accessor for TagFacetRibbonView();
  sub_10012C000(&unk_100975600, type metadata accessor for TagFacetRibbonView);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_10012BA18(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductDescriptionLayout();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProductDescription.paragraph.getter();
  v10 = Paragraph.text.getter();

  v44 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v45 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10010279C;
  *(v14 + 24) = v13;
  v55 = sub_1001027AC;
  v56 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v54 = &unk_1008B5490;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  [v10 enumerateAttributesInRange:0 options:v45 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v19 = v17;
    v20 = ProductDescription.tags.getter();
    v21 = ProductDescription.numberOfTagRowsStandard.getter();
    v22 = ProductDescription.numberOfTagRowsAX.getter();
    if (ProductDescription.developerAction.getter())
    {
      v45 = Action.title.getter();
      v24 = v23;
    }

    else
    {
      v45 = 0;
      v24 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell();
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = 4;
    v26 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v27 = v19;
    v28 = LayoutViewPlaceholder.init(measureWith:)();
    v54 = v26;
    v55 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v28;
    v29 = swift_allocObject();
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v29[5] = v44;
    swift_allocObject();

    swift_unknownObjectRetain();
    v30 = LayoutViewPlaceholder.init(measureWith:)();
    v52[3] = v26;
    v52[4] = &protocol witness table for LayoutViewPlaceholder;
    v52[0] = v30;
    v31 = type metadata accessor for DeveloperLinkView();
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v24;
    swift_allocObject();
    v34 = LayoutViewPlaceholder.init(measureWith:)();
    v51[3] = v26;
    v51[4] = &protocol witness table for LayoutViewPlaceholder;
    v51[0] = v34;
    type metadata accessor for RibbonBarItem();
    LOBYTE(v31) = Array.isNotEmpty.getter();

    if (v31)
    {
      sub_10002C0AC(v52, v49);
    }

    else
    {
      v50 = 0;
      memset(v49, 0, sizeof(v49));
    }

    sub_100129F58(v40);
    sub_10002C0AC(aBlock, &v48);
    sub_10002C0AC(v52, &v47);
    sub_10002C0AC(v51, &v46);
    v35 = v41;
    ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
    sub_10012C000(&qword_10097C400, &type metadata accessor for ProductDescriptionLayout);
    v36 = v43;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v38 = v37;

    (*(v42 + 8))(v35, v36);
    sub_10002B894(v49, &qword_100975610);
    sub_100007000(v51);
    sub_100007000(v52);
    sub_100007000(aBlock);
    return v38 > a2;
  }

  return result;
}

uint64_t sub_10012C000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012C054()
{
  v0 = type metadata accessor for MetadataRibbonTextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_100005644(v7, qword_1009CE188);
  v8 = sub_1000056A8(v7, qword_1009CE188);
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v0, qword_1009D36F8);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_100028BB8();
  v11 = static UIColor.secondaryText.getter();
  if (qword_10096EE70 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v0, qword_1009D3758);
  v10(v3, v12, v0);
  v13 = static UIColor.secondaryText.getter();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_10012C274(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v10);
  v84 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetadataRibbonItemType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v81 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100975710);
  __chkstk_darwin(v15);
  v17 = &v81 - v16;
  v18 = sub_10002849C(&qword_10096FB98);
  __chkstk_darwin(v18 - 8);
  v82 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v87 = *(v23 - 8);
  v88 = v23;
  __chkstk_darwin(v23);
  v85 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v83 = &v81 - v26;
  static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
  *&v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artwork] = 0;
  v27 = &v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = *(v13 + 56);
  v28(&v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType], 1, 1, v12);
  v29 = &v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v30 = 0;
  v30[8] = 1;
  v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v31 = &v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10096D100 != -1)
  {
    swift_once();
  }

  v86 = v10;
  v33 = sub_1000056A8(v10, qword_1009CE188);
  sub_10012EC7C(v33, &v5[v32]);
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v91.receiver = v5;
  v91.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v91, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v13 + 104))(v22, enum case for MetadataRibbonItemType.developer(_:), v12);
  v28(v22, 0, 1, v12);
  v36 = *(v15 + 48);
  sub_100031660(&v34[v35], v17, &qword_10096FB98);
  sub_100031660(v22, &v17[v36], &qword_10096FB98);
  v37 = *(v13 + 48);
  if (v37(v17, 1, v12) != 1)
  {
    v41 = v82;
    sub_100031660(v17, v82, &qword_10096FB98);
    if (v37(&v17[v36], 1, v12) != 1)
    {
      v44 = v81;
      (*(v13 + 32))(v81, &v17[v36], v12);
      sub_10012ED3C(&qword_100975718, &type metadata accessor for MetadataRibbonItemType);
      v45 = v34;
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v13 + 8);
      v47(v44, v12);
      sub_10002B894(v22, &qword_10096FB98);
      v47(v41, v12);
      sub_10002B894(v17, &qword_10096FB98);
      v40 = v86;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_9:
      v43 = v83;
      static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
      goto LABEL_12;
    }

    v42 = v34;
    sub_10002B894(v22, &qword_10096FB98);
    (*(v13 + 8))(v41, v12);
    v40 = v86;
LABEL_8:
    sub_10002B894(v17, &qword_100975710);
    goto LABEL_9;
  }

  v38 = v34;
  sub_10002B894(v22, &qword_10096FB98);
  v39 = v37(&v17[v36], 1, v12);
  v40 = v86;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_10002B894(v17, &qword_10096FB98);
LABEL_11:
  v43 = v83;
  static MetadataRibbonIconWithLabelViewLayout.Metrics.developer.getter();
LABEL_12:
  v48 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  v86 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v87 + 40))(&v34[v48], v43, v88);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v34;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v53 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView;
  [*&v52[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v54 = *&v52[v53];
  ArtworkView.shouldSymbolImageSelfSize.setter();

  v55 = *&v52[v53];
  v56 = &v52[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration];
  v83 = v34;
  v57 = v84;
  sub_10012EC7C(&v52[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration], v84);
  v58 = v55;
  v59 = [v52 traitCollection];

  v60.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v59).super.isa;
  v61 = [v59 preferredContentSizeCategory];
  v62 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v62)
  {
    v63 = 3;
  }

  else
  {
    v63 = 1;
  }

  v64 = [objc_opt_self() configurationWithFont:v60.super.isa scale:v63];

  sub_10012ECE0(v57);
  ArtworkView.preferredSymbolConfiguration.setter();

  v65 = *&v56[*(v40 + 28)];
  v66 = *&v52[v53];
  v67 = v65;
  ArtworkView.artworkTintColor.setter();

  v68 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label;
  [*&v52[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label] setTextColor:*&v56[*(v40 + 20)]];
  v69 = *&v52[v68];
  v70 = type metadata accessor for MetadataRibbonTextStyle();
  v90[3] = v70;
  v90[4] = sub_10012ED3C(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
  v71 = sub_1000056E0(v90);
  (*(*(v70 - 8) + 16))(v71, v56, v70);
  v72 = v69;
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  v73 = *&v52[v68];
  v74 = v87;
  v75 = v85;
  v76 = v88;
  (*(v87 + 16))(v85, &v83[v86], v88);
  v77 = v73;
  v78 = MetadataRibbonIconWithLabelViewLayout.Metrics.labelNumberOfLines.getter();
  (*(v74 + 8))(v75, v76);
  [v77 setNumberOfLines:v78];

  [v52 addSubview:*&v52[v68]];
  [v52 addSubview:*&v52[v53]];
  sub_10002849C(&qword_10097B110);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1007B10D0;
  *(v79 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_10012CD40()
{
  ObjectType = swift_getObjectType();
  v19 = ObjectType;
  v2 = type metadata accessor for LayoutRect();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout();
  v9 = *(v20 - 8);
  *&v10 = __chkstk_darwin(v20).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v10, v19);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label];
  v27 = type metadata accessor for DynamicTypeLabel();
  v28 = &protocol witness table for UILabel;
  v26 = v13;
  v14 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView];
  v24 = type metadata accessor for ArtworkView();
  v25 = &protocol witness table for UIView;
  v23 = v14;
  v15 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v0[v15], v5);
  v16 = v13;
  v17 = v14;
  MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonIconWithLabelViewLayout.placeChildren(relativeTo:in:)();
  (*(v21 + 8))(v4, v22);
  return (*(v9 + 8))(v12, v20);
}

double sub_10012D038(uint64_t a1)
{
  v18[0] = a1;
  v2 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label);
  v18[12] = type metadata accessor for DynamicTypeLabel();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView);
  v18[7] = type metadata accessor for ArtworkView();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)();
  MetadataRibbonIconWithLabelViewLayout.measurements(fitting:in:)();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_10012D2F8(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = type metadata accessor for Artwork.Crop();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_10012E0D0(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = ArtworkView.frame.modify();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v8 + 8))(v10, v27);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for ArtworkView();
    static ArtworkLoader.handlerKey<A>(for:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v29, &qword_10096FB90);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_10012D6FC(objc_class *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView);

    v10.is_nil = (a2 & 1) == 0;
    v10.value.super.isa = a1;
    ArtworkView.show(image:isAnimationPermitted:)(v10, v7);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];
  }
}

void sub_10012D8F8()
{
  type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  if (v0 <= 0x3F)
  {
    sub_1000315A0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10012DA88()
{
  result = type metadata accessor for MetadataRibbonTextStyle();
  if (v1 <= 0x3F)
  {
    result = sub_100028BB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012DB1C()
{
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v0 = MetadataRibbonItem.artwork.getter();
  v1 = MetadataRibbonItem.labelText.getter();
  sub_10012D2F8(v0, v1, v2, v4);
}

uint64_t sub_10012DBD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98);
}

uint64_t sub_10012DC38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98);
  return swift_endAccess();
}

uint64_t sub_10012DD14(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10012DDE0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10012DEA0()
{
  v1 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10012DEE4(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10012DF94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90);
}

uint64_t sub_10012DFFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90);
  return swift_endAccess();
}

double sub_10012E0D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(a4).super.isa;
  v11 = [a4 preferredContentSizeCategory];
  v12 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = [objc_opt_self() configurationWithFont:v10.super.isa scale:v13];

  if (dispatch thunk of Artwork.isLocalImage.getter())
  {
    v15 = v14;
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      v16 = static SystemImage.load(artwork:with:includePrivateImages:)();
      goto LABEL_11;
    }

    if (dispatch thunk of Artwork.isBundleImage.getter())
    {
      v16 = sub_100330100(a1, v14);
LABEL_11:
      v18 = v16;

      if (v18)
      {
        [v18 size];
        v17 = v19;

        return v17;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((dispatch thunk of Artwork.isSystemImage.getter() & 1) != 0 && (dispatch thunk of Artwork.systemImageName.getter(), v20))
  {
    v21 = v14;
    v22 = static SystemImage.load(_:with:includePrivateImages:)();

    [v22 size];
    v17 = v23;
  }

  else
  {

    MetadataRibbonIconWithLabelViewLayout.Metrics.defaultArtworkHeight.getter();
    sub_10002A400(v27, v27[3]);
    AnyDimension.value(with:)();
    sub_100007000(v27);
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    v17 = v24;

    (*(v7 + 8))(v9, v6);
  }

  return v17;
}

double sub_10012E3F0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LabelPlaceholder();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTextAppearance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  __chkstk_darwin(v13);
  v46 = v39 - v14;
  v45 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  v19 = MetadataRibbonItem.artwork.getter();
  v39[3] = MetadataRibbonItem.labelText.getter();
  v39[2] = v20;
  static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
  if (qword_10096D100 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v22 = sub_1000056A8(v21, qword_1009CE188);
  v23 = [a2 traitCollection];
  sub_10012E0D0(v19, v18, v22, v23);

  v24 = type metadata accessor for LayoutViewPlaceholder();
  v39[1] = a2;
  v25 = v24;
  swift_allocObject();
  v26 = LayoutViewPlaceholder.init(representing:)();
  v39[0] = v19;
  v27 = v26;
  DynamicTextAppearance.init()();
  v28 = type metadata accessor for MetadataRibbonTextStyle();
  v54[3] = v28;
  v54[4] = sub_10012ED3C(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
  v29 = sub_1000056E0(v54);
  (*(*(v28 - 8) + 16))(v29, v22, v28);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v30 = *(v7 + 8);
  v30(v9, v6);
  sub_100007000(v54);
  MetadataRibbonIconWithLabelViewLayout.Metrics.labelNumberOfLines.getter();
  v31 = v46;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v30(v12, v6);
  (*(v7 + 16))(v12, v31, v6);
  LabelPlaceholder.Options.init(rawValue:)();
  v32 = v41;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v42 + 8))(v32, v44);
  sub_10002C0AC(v54, v53);
  v51 = v25;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v50 = v27;
  v33 = v43;
  v34 = v45;
  (*(v43 + 16))(v40, v18, v45);

  v35 = v47;
  MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)();
  MetadataRibbonIconWithLabelViewLayout.measurements(fitting:in:)();
  v37 = v36;

  (*(v48 + 8))(v35, v49);
  sub_100007000(v54);
  v30(v31, v6);
  (*(v33 + 8))(v18, v34);
  return v37;
}

uint64_t sub_10012EA14(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v1).super.isa;
  v3 = [v1 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_opt_self() configurationWithFont:v2.super.isa scale:v5];

  return ArtworkView.preferredSymbolConfiguration.setter();
}

void sub_10012EB00()
{
  static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artwork) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  v3 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v6 = (v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkSize);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10096D100 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v9 = sub_1000056A8(v8, qword_1009CE188);
  sub_10012EC7C(v9, v0 + v7);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10012EC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012ECE0(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012ED3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10012ED98()
{
  result = qword_100975720;
  if (!qword_100975720)
  {
    type metadata accessor for ReportConcernAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975720);
  }

  return result;
}

uint64_t sub_10012EDF8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = type metadata accessor for FlowOrigin();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for FlowPage();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for ReferrerData();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = type metadata accessor for ReportConcernAction();
  v32 = v28;

  static ActionMetrics.notInstrumented.getter();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v23 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v24 = sub_1005D01FC(v23, 1, v31);

  return v24;
}

uint64_t sub_10012F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C48, type metadata accessor for AchievementSummaryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974DF0, type metadata accessor for ActionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012F480()
{
  v0 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&unk_100992FA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  if (sub_1000AE724())
  {
    ItemLayoutContext.mutableState.getter();
    WritableStateLens.init(_:)();
    sub_100036A58();
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
    v9 = v5;
    sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758);
    sub_100135DA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
    v9 = v7;
    sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758);
    sub_100135DA0();
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }
}

uint64_t sub_10012F848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974DC0, type metadata accessor for AnnotationCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974D98, type metadata accessor for AppShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012FA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_10012FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10012FB9C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_10012FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_10012FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974D58, type metadata accessor for ArcadeShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012FDBC()
{
  sub_10002849C(&qword_100975748);
  type metadata accessor for SelectableShelfComponentViewReaction();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  static SelectableShelfComponentViewReaction.deselect.getter();
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758);
  sub_100135DA0();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10012FF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_10012FFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100130078(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_1001300FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001301FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100130278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001302FC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100130380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

id sub_100130480()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
  *v1 = 0;
  *(v1 + 1) = 0;

  return sub_1000F88B0();
}

uint64_t sub_1001304DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974D18, type metadata accessor for BrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009748F0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974CE8, type metadata accessor for EditorialCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974CD0, type metadata accessor for EditorialQuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001309D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100130A54(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100130AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100130BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C90, type metadata accessor for FootnoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C80, type metadata accessor for FramedArtworkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C70, type metadata accessor for FramedVideoCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C38, type metadata accessor for GameCenterReengagementCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100130FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10013103C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_1001310C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001311C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C10, type metadata accessor for HorizontalRuleCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001312C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974BF8, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001313D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100131454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001314D8(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_10013155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001315E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974BC8, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001316F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974BB0, type metadata accessor for InformationRibbonCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10013180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100131888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10013190C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100131990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100131A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B80, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100131BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B68, type metadata accessor for LargeLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100131CCC()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_100738834(0);
}

uint64_t sub_100131D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B50, type metadata accessor for LinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100131DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B38, type metadata accessor for MediumLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100131EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100131F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100131FC4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100132048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001320CC()
{
  v0 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975768);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100135E04();
  WritableStateLens<A>.currentValue.getter();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  else
  {
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  v8 = v5;
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10013243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B10, type metadata accessor for ParagraphCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974AE8, type metadata accessor for PosterLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974AB8, type metadata accessor for PreorderDisclaimerCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001327A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974AA8, type metadata accessor for PrivacyCategoryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_1001328B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1000278AC(0, 0);
  return sub_1000278B8(0, 0);
}

uint64_t sub_10013290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A90, type metadata accessor for PrivacyDefinitionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A78, type metadata accessor for PrivacyFooterCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A68, type metadata accessor for PrivacyHeaderCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100132C54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1003617E4(0, 0);
  sub_1003617F0(0, 0);
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v3, v1);
  sub_100363EC8();
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_1003617FC();
}

uint64_t sub_100132CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A58, type metadata accessor for PrivacyTypeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A38, type metadata accessor for ProductCapabilityCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A10, type metadata accessor for ProductMediaCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132F48()
{
  v0 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975770);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100135E58();
  WritableStateLens<A>.currentValue.getter();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  else
  {
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  v7 = v5;
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100133334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001333B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100133434(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_1001334B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100133554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974940, type metadata accessor for LinkableTextCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_100133668()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
  *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = 0;

  return sub_1005B06B4();
}

uint64_t sub_1001336C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009749E0, type metadata accessor for ProductPageLinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001337D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100133850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001338D4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100133958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001339DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100133A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974990, type metadata accessor for ProductLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100133B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974980, type metadata accessor for QuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100133C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100133D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100133D8C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100133E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100133F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100133F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100134010(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100134094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100134118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100134220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009748B0, type metadata accessor for SmallBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100134334()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return dispatch thunk of SmallPlayerCardView.prepareForReuse()();
}

uint64_t sub_10013438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009748A0, type metadata accessor for SmallContactCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001344A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_10013451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001345A0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100134624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001346A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974878, type metadata accessor for SmallLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001347C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100134840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001348C4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100134948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001349CC()
{
  v0 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975780);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100135EAC();
  WritableStateLens<A>.currentValue.getter();
  if (v8 == 1)
  {
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  else
  {
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  v8 = v5;
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}