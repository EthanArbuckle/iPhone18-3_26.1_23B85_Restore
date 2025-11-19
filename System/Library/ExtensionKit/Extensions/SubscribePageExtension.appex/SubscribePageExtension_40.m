id sub_10048B99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10048BB14(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100016C60(0, &qword_100922300);
    v6 = v1;
    v7 = sub_100753FC4();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_10062FDFC();

  return [v1 setNeedsLayout];
}

uint64_t sub_10048BB14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_10048BB5C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

unint64_t sub_10048BC58()
{
  result = qword_1009393D8;
  if (!qword_1009393D8)
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009393D8);
  }

  return result;
}

double sub_10048BCB0()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView();
  v4 = sub_100747BA4();
  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_100747064();
  v6 = sub_10000D0FC(v5, qword_10097E3A8);
  swift_getObjectType();
  sub_1001CF184(v6, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

id sub_10048BE48()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1009393E0 = result;
  return result;
}

char *sub_10048BE9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100741494();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  v18 = sub_10000C518(&unk_10092E120);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = sub_100743B64();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000C518(&qword_100939448);
  swift_allocObject();
  *&v5[v24] = sub_100752F04();
  sub_100741484();
  v25 = sub_100741464();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  sub_1007544E4();
  v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell();
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_100876F90;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_10006644C(v41, v33 + v34, &unk_100939450);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_10048C36C(uint64_t a1)
{
  v3 = sub_1007470F4();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E840);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100743B64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_10048E4B8(a1, v1 + v16);
  swift_endAccess();
  sub_100016B4C(v1 + v16, v8, &unk_10092E840);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(a1, &unk_10092E840);
    return sub_10000C8CC(v8, &unk_10092E840);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_100920CD8 != -1)
    {
      swift_once();
    }

    v18 = qword_1009393E0;
    sub_1007470E4();
    sub_100752EF4();
    sub_10000C8CC(a1, &unk_10092E840);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_10048C6A8()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_1000164A8(v14);
  }

  return result;
}

void sub_10048C80C()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092E118);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "prepareForReuse");
  v6 = sub_10000C518(&unk_10092E120);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_10006644C(v4, &v0[v7], &qword_10092E118);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_1000164A8(v9);
  v10 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView);
  sub_10053C8B8(_swiftEmptyArrayStorage, 0);
  v11 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker);
  *(v10 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_10053C4A0(v11);

  *(v10 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_10053C154();
  v12 = sub_10074F3E4();
  v15[3] = v12;
  v15[4] = sub_1002968B4();
  v13 = sub_10000D134(v15);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v12);
  LOBYTE(v12) = sub_10074FC74();
  sub_10000C620(v15);
  if ((v12 & 1) == 0)
  {
    sub_100231AA8(0);
  }

  v1[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_10048CA7C(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = sub_100754574();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = sub_100754664();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = sub_10074F3E4();
    v29[3] = v24;
    v29[4] = sub_1002968B4();
    v25 = sub_10000D134(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = sub_10074FC74();
    sub_10000C620(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_100231BFC();
    }
  }
}

void sub_10048CD84()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10074B104();
  }

  v4 = sub_10074F3E4();
  v6[3] = v4;
  v6[4] = sub_1002968B4();
  v5 = sub_10000D134(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = sub_10074FC74();
  sub_10000C620(v6);
  if ((v4 & 1) == 0)
  {
    sub_100231AA8(1);
  }

  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_10048D00C()
{
  v91 = sub_1007528E4();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v80 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v1 - 8);
  v92 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v80 - v4;
  __chkstk_darwin(v6);
  v8 = v80 - v7;
  __chkstk_darwin(v9);
  v11 = v80 - v10;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v88 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v80 - v16;
  __chkstk_darwin(v18);
  v20 = v80 - v19;
  __chkstk_darwin(v21);
  v23 = v80 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (!v26)
  {

    return;
  }

  v87 = v26;
  v85 = v17;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
  if ((v28[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v86 = v13;
    v29 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex];
    v30 = v28;
    v84 = v12;
    v31 = v30;
    v32 = v29;
    v13 = v86;
    v33 = sub_10053D1F0(v32, 0);

    v12 = v84;
    if (v33)
    {
      if (!*&v33[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem])
      {

        v13 = v86;
        (*(v86 + 56))(v11, 1, 1, v12);
        goto LABEL_10;
      }

      v82 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem;
      v83 = v33;

      sub_100745D34();

      v13 = v86;
      v81 = *(v86 + 48);
      if (v81(v11, 1, v12) == 1)
      {

LABEL_10:
        sub_10000C8CC(v11, &unk_100925380);
        goto LABEL_19;
      }

      v80[0] = *(v13 + 32);
      (v80[0])(v23, v11, v12);
      v34 = v89;
      sub_1007528F4();
      v96 = 0u;
      v97 = 0u;
      v98 = 1;
      v35 = sub_100749524();
      (*(v90 + 8))(v34, v91);
      if (!v35)
      {
        goto LABEL_18;
      }

      v80[1] = v35;
      if (*&v83[v82] && (, v36 = sub_100745D64(), , v36))
      {
        sub_10074A4B4();

        v37 = v84;
        v38 = v81(v8, 1, v84);
        v39 = v86;
        if (v38 != 1)
        {
          (v80[0])(v20, v8, v37);
          sub_100749564();

          (*(v39 + 8))(v20, v37);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v86 + 56))(v8, 1, 1, v84);
      }

      sub_10000C8CC(v8, &unk_100925380);
LABEL_18:
      sub_100749564();

      v13 = v86;
      v12 = v84;
      (*(v86 + 8))(v23, v84);
    }
  }

LABEL_19:
  v40 = *&v25[v27];
  v41 = sub_100231F08();

  if (!v41)
  {

    return;
  }

  v42 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem;
  if (!*&v41[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v13 + 56))(v5, 1, 1, v12);
    goto LABEL_25;
  }

  sub_100745D34();

  v43 = v13;
  v44 = *(v13 + 48);
  if (v44(v5, 1, v12) == 1)
  {

LABEL_25:
    v45 = v5;
LABEL_26:
    sub_10000C8CC(v45, &unk_100925380);
    return;
  }

  v46 = *(v13 + 32);
  v47 = v85;
  v86 = v13 + 32;
  v84 = v46;
  v46(v85, v5, v12);
  [v41 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v25;
  v57 = v12;
  v58 = [v56 superview];
  [v41 convertRect:v58 toView:{v49, v51, v53, v55}];

  sub_100749544();
  v59 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (!v59)
  {

    (*(v13 + 8))(v47, v57);
    return;
  }

  if (!*&v41[v42])
  {

    v62 = v92;
LABEL_36:
    (*(v13 + 8))(v85, v57);
    (*(v13 + 56))(v62, 1, 1, v57);
    goto LABEL_37;
  }

  v60 = v59;

  v61 = sub_100745D64();

  v62 = v92;
  if (!v61)
  {

    goto LABEL_36;
  }

  sub_10074A4B4();

  v63 = v57;
  if (v44(v62, 1, v57) == 1)
  {

    (*(v13 + 8))(v85, v57);
LABEL_37:
    v45 = v62;
    goto LABEL_26;
  }

  v64 = v88;
  v84(v88, v62, v63);
  v65 = v89;
  v66 = v85;
  sub_1007528F4();
  v93 = 0u;
  v94 = 0u;
  v95 = 1;
  v67 = sub_100749524();
  (*(v90 + 8))(v65, v91);
  v68 = v43;
  if (v67)
  {
    v69 = v60;
    [v69 bounds];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = [v56 superview];

    [v69 convertRect:v78 toView:{v71, v73, v75, v77}];
    sub_100749544();
  }

  else
  {
  }

  v79 = *(v68 + 8);
  v79(v64, v63);
  v79(v66, v63);
}

id sub_10048DB24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell()
{
  result = qword_100939418;
  if (!qword_100939418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10048DCD4()
{
  sub_10048DEBC(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10048DE58();
    if (v1 <= 0x3F)
    {
      sub_10048DEBC(319, &qword_100939440, &type metadata accessor for TitleEffect);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10048DE58()
{
  if (!qword_100939430)
  {
    sub_10000C724(&unk_10092E120);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100939430);
    }
  }
}

void sub_10048DEBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10048DF14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_100066198(v1 + v3, a1);
}

void sub_10048DF80()
{
  v1 = v0;
  v2 = sub_10074F3E4();
  v4[3] = v2;
  v4[4] = sub_1002968B4();
  v3 = sub_10000D134(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v4);
  if ((v2 & 1) == 0)
  {
    sub_100231AA8(0);
  }

  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

uint64_t sub_10048E0CC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10048E12C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_10048E1C4()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_10048E220(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_10048E2E0())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10048E4B0;
}

uint64_t sub_10048E380@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_100016B4C(v3 + v4, a1, &unk_10092E840);
}

uint64_t sub_10048E400()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10048E438()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10048E470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10048E4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10092E840);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10048E528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_10092E120);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-v8];
  v10 = sub_10000C518(&qword_10092E118);
  __chkstk_darwin(v10 - 8);
  v12 = &v25[-v11];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100016B4C(v3 + v13, v12, &qword_10092E118);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10000C8CC(v12, &qword_10092E118);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10000C8CC(v12, &qword_10092E118);
    __chkstk_darwin(v14);
    *&v25[-16] = a1;
    sub_1002143A0();
    sub_100752954();
    (*(v7 + 8))(v9, v6);
  }

  v15 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {

    v16(v17);
    sub_1000164A8(v16);
  }

  if (a2)
  {
    v18 = *(*(*(*(a2 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v18)
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = *(v19 + qword_10093CB70);
        if (v20)
        {
          v21 = v18;
          v22 = v20;
          sub_100743BE4();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_10074B104();
  }
}

void sub_10048E858()
{
  v1 = v0;
  v2 = sub_100741494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = sub_1007469A4();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView();
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  v10 = sub_10000C518(&unk_10092E120);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = sub_100743B64();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000C518(&qword_100939448);
  swift_allocObject();
  *(v1 + v16) = sub_100752F04();
  sub_100741484();
  v17 = sub_100741464();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  sub_1007544E4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

id sub_10048EB78(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_10048ECD8(v0, &v4);
  if (!v5)
  {
    return 0xD00000000000003ALL;
  }

  sub_100012160(&v4, v3);
  sub_100754534(49);
  v6._object = 0x800000010077E4B0;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_1007531B4(v6);
  sub_10000C518(&unk_10092B358);
  sub_1007545F4();
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x800000010077E4D0;
  sub_1007531B4(v7);
  v1 = 0;
  sub_10000C620(v3);
  return v1;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10000C518(&unk_100923210);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  sub_100752754();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000C8CC(v5, &unk_100923960);
    sub_10000C518(&qword_100930CA0);
    sub_10048F078();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return sub_100752D74();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1007527C4();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_1000A7FA0();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_100012160(&v18, v21);
    }

    else
    {
      v14 = sub_100752934();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_10000D134(v21);
      sub_100752924();
      if (*(&v19 + 1))
      {
        sub_10000C8CC(&v18, &qword_100939478);
      }
    }

    sub_10000C518(&qword_100930CA0);
    v15 = sub_100752DE4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100744CA4();
    *(v16 + 24) = 0;
    sub_10000C888(v21, v22);
    sub_10000C824(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_100012160(&v18, (v17 + 5));

    sub_100752674();

    (*(v7 + 8))(v9, v6);

    sub_10000C620(v21);
    return v15;
  }
}

unint64_t sub_10048F078()
{
  result = qword_100939470;
  if (!qword_100939470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939470);
  }

  return result;
}

uint64_t sub_10048F0CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10048F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100752624();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(a1 + 24);
  if (v14 == result)
  {
    swift_endAccess();
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_100752DB4();
    return (*(v9 + 8))(v11, v8);
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    result = sub_100754574();
    v15 = result;
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  *(a1 + 24) = v16;
  swift_endAccess();
  sub_10052AB60(v15, 1, a3);
  sub_10000C824(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_100012160(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  sub_100752D64();
}

uint64_t sub_10048F3A4()
{

  sub_10000C620(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10048F43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100752624();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v31 - v18;
  (*(v13 + 16))(&v31 - v18, a1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  v21 = v20;
  if (v20 != enum case for ActionOutcome.performed(_:))
  {
    if (v20 == enum case for ActionOutcome.unsupported(_:))
    {
      sub_10048F078();
      swift_allocError();
      v27 = v26;
      v26[3] = sub_10074ECD4();
      v27[4] = sub_10048F910(&qword_10093D890, &type metadata accessor for Action);
      *v27 = a6;

      sub_100752DA4();
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = sub_100754664();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *(a2 + 24);
  if (v24 == v23)
  {
    swift_endAccess();
    (*(v13 + 104))(v15, v21, v12);
    sub_100752DB4();
    return (*(v13 + 8))(v15, v12);
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v28 = sub_100754574();
    v29 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_100754744();
    __break(1u);
    return result;
  }

  v28 = *(v22 + 8 * v24 + 32);

  v29 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  *(a2 + 24) = v29;
  swift_endAccess();
  sub_10052AB60(v28, 1, a4);
  sub_10000C824(a5, v32);
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  sub_100012160(v32, (v30 + 5));
  v30[10] = v28;
  swift_retain_n();

  sub_100752D64();
}

uint64_t sub_10048F804(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10048F81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10048F86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_10048F8C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10048F910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10048F964()
{

  sub_10000C620(v0 + 40);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10048F9DC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton);
  sub_100032C04(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000C888(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_100754734();
    (*(v7 + 8))(v10, v5);
    sub_10000C620(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

char *sub_10048FB34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v114 = sub_10074AB44();
  v101 = *(v114 - 8);
  __chkstk_darwin(v114);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v100 = &v95 - v12;
  v13 = sub_100741E54();
  __chkstk_darwin(v13 - 8);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v15 - 8);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v95 - v18;
  __chkstk_darwin(v19);
  v108 = &v95 - v20;
  __chkstk_darwin(v21);
  v106 = &v95 - v22;
  v23 = sub_100750304();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics;
  v140[13] = &type metadata for Double;
  v140[14] = &protocol witness table for Double;
  v140[9] = &protocol witness table for Double;
  v140[10] = 0x4024000000000000;
  v140[8] = &type metadata for Double;
  v140[5] = 0x4000000000000000;
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v104 = v5;
  v98 = &v5[v27];
  v28 = sub_100750534();
  v109 = sub_10000D0FC(v28, qword_100981548);
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v121 = *(v29 + 16);
  v122 = v29;
  v121(v26, v109, v28);
  LODWORD(v118) = enum case for FontSource.useCase(_:);
  v119 = v24[13];
  v119(v26);
  v120 = sub_100750B04();
  v140[3] = v120;
  v140[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v140);
  v138 = v23;
  v139 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v137);
  v111 = v24[2];
  v111(v31, v26, v23);
  sub_100750B14();
  v32 = v24[1];
  v113 = v24 + 1;
  v32(v26, v23);
  v137[0] = 0x405C000000000000;
  v134[0] = 0x4044000000000000;
  v33 = sub_10000C518(&unk_100923AE0);
  sub_100743484();
  v115 = v28;
  v116 = v30;
  v121(v26, v109, v28);
  v112 = v24 + 13;
  (v119)(v26, v118, v23);
  v138 = v120;
  v139 = &protocol witness table for StaticDimension;
  sub_10000D134(v137);
  v135 = v23;
  v136 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v134);
  v117 = v24 + 2;
  v111(v34, v26, v23);
  sub_100750B14();
  v96 = v32;
  v32(v26, v23);
  v134[0] = 0x405C000000000000;
  v131[0] = 0x4044000000000000;
  v105 = v33;
  sub_100743484();
  if (qword_1009212B8 != -1)
  {
    swift_once();
  }

  v35 = v115;
  v97 = sub_10000D0FC(v115, qword_100981560);
  v36 = v121;
  (v121)(v26);
  (v119)(v26, v118, v23);
  v135 = v120;
  v136 = &protocol witness table for StaticDimension;
  sub_10000D134(v134);
  v132 = v23;
  v133 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v131);
  v38 = v111;
  v111(v37, v26, v23);
  sub_100750B14();
  v39 = v96;
  v96(v26, v23);
  v131[0] = 0x405C000000000000;
  v128[0] = 0x4044000000000000;
  sub_100743484();
  v40 = v36;
  v41 = v39;
  v42 = v35;
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v43 = sub_10000D0FC(v35, qword_100981518);
  v40(v26, v43, v35);
  v44 = v118;
  (v119)(v26, v118, v23);
  v132 = v120;
  v133 = &protocol witness table for StaticDimension;
  sub_10000D134(v131);
  v129 = v23;
  v130 = &protocol witness table for FontSource;
  v45 = sub_10000D134(v128);
  v38(v45, v26, v23);
  sub_100750B14();
  v41(v26, v23);
  v128[0] = 0x4052000000000000;
  v125[0] = 0x4034000000000000;
  sub_100743484();
  *v26 = UIFontTextStyleBody;
  *(v26 + 2) = 0;
  v46 = v41;
  LODWORD(v105) = enum case for FontUseCase.preferredFont(_:);
  v95 = *(v122 + 104);
  v95(v26);
  v47 = v119;
  (v119)(v26, v44, v23);
  v129 = v120;
  v130 = &protocol witness table for StaticDimension;
  sub_10000D134(v128);
  v126 = v23;
  v127 = &protocol witness table for FontSource;
  v48 = sub_10000D134(v125);
  v49 = v111;
  v111(v48, v26, v23);
  v50 = UIFontTextStyleBody;
  sub_100750B14();
  v46(v26, v23);
  *v26 = v50;
  *(v26 + 2) = 0;
  (v95)(v26, v105, v42);
  (v47)(v26, v118, v23);
  v126 = v120;
  v127 = &protocol witness table for StaticDimension;
  sub_10000D134(v125);
  v124[3] = v23;
  v124[4] = &protocol witness table for FontSource;
  v51 = sub_10000D134(v124);
  v49(v51, v26, v23);
  sub_100750B14();
  v46(v26, v23);
  sub_1007418E4();
  v52 = v99;
  sub_100741DD4();
  v53 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v54 = sub_10027562C(v52, 1);
  v55 = v104;
  *&v104[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView] = v54;
  v56 = v100;
  v57 = v109;
  v58 = v121;
  v121(v100, v109, v42);
  v59 = *(v122 + 56);
  v122 += 56;
  v59(v56, 0, 1, v42);
  LODWORD(v120) = enum case for DirectionalTextAlignment.none(_:);
  v60 = v102;
  v118 = *(v101 + 104);
  v118(v102);
  v119 = sub_100745C84();
  v61 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel] = sub_100745C74();
  v62 = v115;
  v58(v56, v57, v115);
  v63 = v59;
  v59(v56, 0, 1, v62);
  v64 = v120;
  v65 = v118;
  (v118)(v60, v120, v114);
  v66 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] = sub_100745C74();
  v67 = v115;
  v121(v56, v97, v115);
  v63(v56, 0, 1, v67);
  v68 = v64;
  v69 = v114;
  v70 = v119;
  v65(v60, v68);
  v71 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel] = sub_100745C74();
  if (qword_1009212A8 != -1)
  {
    swift_once();
  }

  v72 = v115;
  v73 = sub_10000D0FC(v115, qword_100981530);
  v121(v56, v73, v72);
  v63(v56, 0, 1, v72);
  (v65)(v60, v120, v69);
  v74 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel] = sub_100745C74();
  v75 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton] = sub_100154454(0);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v123.receiver = v55;
  v123.super_class = ObjectType;
  v76 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v80 = v76;
  [v80 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v80 setScrollEnabled:1];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel] setTextAlignment:1];
  v82 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] setTextAlignment:1];
  v83 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel] setTextAlignment:1];
  v84 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel] setTextAlignment:1];
  v85 = *&v80[v81];
  sub_10000D198();
  v86 = v85;
  v87 = sub_100753DD4();
  [v86 setTextColor:v87];

  v88 = *&v80[v82];
  v89 = sub_100753DF4();
  [v88 setTextColor:v89];

  v90 = *&v80[v83];
  v91 = sub_100753DE4();
  [v90 setTextColor:v91];

  v92 = *&v80[v84];
  v93 = sub_100753DD4();
  [v92 setTextColor:v93];

  [v80 addSubview:*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView]];
  [v80 addSubview:*&v80[v81]];
  [v80 addSubview:*&v80[v82]];
  [v80 addSubview:*&v80[v83]];
  [v80 addSubview:*&v80[v84]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge]];

  return v80;
}

double sub_100490B04()
{
  v1 = sub_1007418F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = v4;
  v5 = sub_100741914();
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics, v1, v7);
  v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView);
  v50 = type metadata accessor for InAppPurchaseView();
  v51 = &protocol witness table for UIView;
  v49 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel);
  v47 = sub_100745C84();
  v48 = &protocol witness table for UILabel;
  v46 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel);
  v44 = v47;
  v45 = &protocol witness table for UILabel;
  v42 = &protocol witness table for UILabel;
  v43 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel);
  v41 = v47;
  v39 = &protocol witness table for UILabel;
  v40 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel);
  v38 = v47;
  v37 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge);
  v35 = type metadata accessor for AgeRatingBadgeView();
  v36 = &protocol witness table for UIView;
  v34 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton);
  v32 = type metadata accessor for OfferButton();
  v33 = &protocol witness table for UIView;
  v31 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_100741904();
  sub_1004913D4();
  v24 = v29;
  sub_100750404();
  v26 = v25;
  (*(v30 + 8))(v9, v24);
  return v26;
}

uint64_t sub_100490E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v32 = ObjectType;
  v3 = sub_100750354();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007418F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = sub_100741914();
  v34 = *(v9 - 8);
  v35 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
  v57 = type metadata accessor for InAppPurchaseView();
  v58 = &protocol witness table for UIView;
  v56 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel];
  v54 = sub_100745C84();
  v55 = &protocol witness table for UILabel;
  v53 = v13;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel];
  v51 = v54;
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v14;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
  v48 = v54;
  v46 = &protocol witness table for UILabel;
  v47 = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel];
  v45 = v54;
  v44 = v16;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v31;
  sub_100741904();
  sub_1007477B4();
  v27 = v33;
  sub_1007418D4();
  [v1 frame];
  Width = CGRectGetWidth(v60);
  sub_100750334();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v27, v37);
  return (*(v34 + 8))(v26, v35);
}

uint64_t type metadata accessor for InstallPagePreInstallFreeOfferView()
{
  result = qword_1009394B0;
  if (!qword_1009394B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10049132C()
{
  result = sub_1007418F4();
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

unint64_t sub_1004913D4()
{
  result = qword_1009394C8;
  if (!qword_1009394C8)
  {
    sub_100741914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009394C8);
  }

  return result;
}

void sub_10049142C()
{
  v0 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v0 - 8);
  v39 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = v33 - v3;
  __chkstk_darwin(v4);
  v40 = v33 - v5;
  __chkstk_darwin(v6);
  v38 = v33 - v7;
  v8 = sub_100750304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics;
  v67[13] = &type metadata for Double;
  v67[14] = &protocol witness table for Double;
  v67[9] = &protocol witness table for Double;
  v67[10] = 0x4024000000000000;
  v67[8] = &type metadata for Double;
  v67[5] = 0x4000000000000000;
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v46 = sub_10000D0FC(v12, qword_100981548);
  v34 = *(v12 - 8);
  v13 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v11, v46, v12);
  v49 = enum case for FontSource.useCase(_:);
  v50 = v9[13];
  v50(v11);
  v47 = sub_100750B04();
  v67[3] = v47;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v67);
  v65 = v8;
  v66 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v64);
  v15 = v9[2];
  v15(v14, v11, v8);
  sub_100750B14();
  v42 = v9[1];
  v42(v11, v8);
  v64[0] = 0x405C000000000000;
  v61[0] = 0x4044000000000000;
  v16 = sub_10000C518(&unk_100923AE0);
  sub_100743484();
  v44 = v12;
  v33[1] = v13;
  v37(v11, v46, v12);
  v46 = (v9 + 13);
  (v50)(v11, v49, v8);
  v65 = v47;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v62 = v8;
  v63 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v61);
  v43 = v9 + 2;
  v48 = v15;
  v15(v17, v11, v8);
  sub_100750B14();
  v45 = v9 + 1;
  v42(v11, v8);
  v61[0] = 0x405C000000000000;
  v58[0] = 0x4044000000000000;
  v36 = v16;
  sub_100743484();
  if (qword_1009212B8 != -1)
  {
    swift_once();
  }

  v18 = v44;
  v19 = sub_10000D0FC(v44, qword_100981560);
  v20 = v18;
  v21 = v37;
  v37(v11, v19, v20);
  (v50)(v11, v49, v8);
  v62 = v47;
  v63 = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  v59 = v8;
  v60 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v58);
  v48(v22, v11, v8);
  sub_100750B14();
  v42(v11, v8);
  v58[0] = 0x405C000000000000;
  v55[0] = 0x4044000000000000;
  sub_100743484();
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v23 = v44;
  v24 = sub_10000D0FC(v44, qword_100981518);
  v21(v11, v24, v23);
  v25 = v49;
  (v50)(v11, v49, v8);
  v26 = v47;
  v59 = v47;
  v60 = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v8;
  v57 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v55);
  v48(v27, v11, v8);
  sub_100750B14();
  v28 = v42;
  v42(v11, v8);
  v55[0] = 0x4052000000000000;
  v52[0] = 0x4034000000000000;
  sub_100743484();
  *v11 = UIFontTextStyleBody;
  *(v11 + 2) = 0;
  LODWORD(v37) = enum case for FontUseCase.preferredFont(_:);
  v36 = *(v34 + 104);
  v36(v11);
  (v50)(v11, v25, v8);
  v56 = v26;
  v57 = &protocol witness table for StaticDimension;
  sub_10000D134(v55);
  v53 = v8;
  v54 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v52);
  v48(v29, v11, v8);
  v30 = UIFontTextStyleBody;
  sub_100750B14();
  v28(v11, v8);
  *v11 = v30;
  *(v11 + 2) = 0;
  (v36)(v11, v37, v44);
  (v50)(v11, v49, v8);
  v53 = v47;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v51[3] = v8;
  v51[4] = &protocol witness table for FontSource;
  v31 = sub_10000D134(v51);
  v48(v31, v11, v8);
  v32 = v30;
  sub_100750B14();
  v28(v11, v8);
  sub_1007418E4();
  sub_100754644();
  __break(1u);
}

double sub_100491D20()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746DB4();
  sub_100491F24(&qword_10092C6A8, &type metadata accessor for ProductCapability);
  sub_1007468B4();
  if (!v13[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  v4 = sub_100746D84();
  v6 = v5;
  v7 = sub_100746DA4();
  v8 = sub_100746D94();
  v9 = sub_10007DC04();
  swift_getObjectType();
  sub_1001BF6CC(v4, v6, v7, v8, v9);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_100491F24(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100491F70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView] = [objc_allocWithZone(type metadata accessor for BadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView] = v12;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView] = v13;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView] = v14;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView;
  v17 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView];
  sub_10000D198();
  v18 = v15;
  v19 = v17;
  v20 = sub_100753DB4();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView;
  v22 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView];
  v23 = sub_100753DB4();
  [v22 setBackgroundColor:v23];

  v24 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView;
  v25 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView];
  v26 = sub_100753DB4();
  [v25 setBackgroundColor:v26];

  v27 = [v18 contentView];
  [v27 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView]];

  v28 = [v18 contentView];
  [v28 addSubview:*&v15[v16]];

  v29 = [v18 contentView];
  [v29 addSubview:*&v18[v21]];

  v30 = [v18 contentView];
  [v30 addSubview:*&v18[v24]];

  return v18;
}

id sub_100492340()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView];
  v3 = [v1 contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = [v1 contentView];
  [v12 frame];

  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v13 = sub_100749104();
  sub_10000D0FC(v13, qword_10097FD50);
  v14 = [v1 traitCollection];
  sub_100749044();
  v16 = v15;

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = 1.0 / v19;
  v21 = [v1 traitCollection];
  LOBYTE(v14) = sub_1007537F4();

  v22 = 0.0;
  if ((v14 & 1) == 0)
  {
    v23 = [v1 contentView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v22 = CGRectGetMaxX(v53) - v20;
  }

  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView];
  v33 = [v1 contentView];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v54.origin.x = v35;
  v54.origin.y = v37;
  v54.size.width = v39;
  v54.size.height = v41;
  [v32 setFrame:{v22, floor((CGRectGetHeight(v54) - (v16 + -54.0)) * 0.5), v20, v16 + -54.0}];
  v42 = [v1 traitCollection];
  [v42 displayScale];
  v44 = v43;

  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView];
  v46 = 1.0 / v44;
  [v1 bounds];
  MinX = CGRectGetMinX(v55);
  [v1 bounds];
  [v45 setFrame:{MinX, 0.0, CGRectGetWidth(v56), v46}];
  v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView];
  [v1 bounds];
  v49 = CGRectGetMinX(v57);
  [v1 bounds];
  v50 = CGRectGetMaxY(v58) - v46;
  [v1 bounds];
  return [v48 setFrame:{v49, v50, CGRectGetWidth(v59), v46}];
}

uint64_t type metadata accessor for BadgeCollectionViewCell()
{
  result = qword_100939520;
  if (!qword_100939520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100492858()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004928FC(void *a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a2;
  v31 = a1;
  v4 = sub_100754074();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007410D4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_100754154();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100754164();
  (*(v13 + 104))(v15, enum case for UIButton.Configuration.Size.large(_:), v12);
  sub_100754064();
  if (a3)
  {
    v30[0] = v4;
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSFontAttributeName;
    v17 = qword_100920CF0;

    v18 = NSFontAttributeName;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_100939530;
    *(inited + 64) = sub_100016C60(0, &qword_100923AB0);
    *(inited + 40) = v19;
    v20 = v19;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &unk_100923510);
    sub_1007410F4();
    sub_100741094();
    v21 = sub_100741084();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    sub_1007540F4();
    v4 = v30[0];
  }

  sub_1007540C4();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_100754084();
  v22 = sub_100754034();
  sub_1007515A4();
  v22(v32, 0);
  sub_100016C60(0, &qword_100923500);
  v23 = objc_opt_self();
  v24 = [v23 systemGray6Color];
  v25.super.isa = [v23 secondarySystemBackgroundColor];
  v26.super.isa = v24;
  sub_100753EC4(v26, v25);
  sub_100754114();
  sub_100754094();
  if (qword_100920CF8 != -1)
  {
    swift_once();
  }

  v27 = qword_100939538;
  sub_100754024();
  v28 = v31;
  return sub_100754194();
}

uint64_t sub_100492DC4(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_100743B04();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a2, v5, v7);
  v10 = sub_100743AE4();
  result = (*(v6 + 8))(v9, v5);
  *a3 = v10;
  return result;
}

void sub_100492EC0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  qword_100939530 = v3;
}

void sub_100492F64()
{
  if (qword_100920CF0 != -1)
  {
    swift_once();
  }

  v0 = qword_100939530;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_100939538 = v3;
}

char *sub_100493000(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewAction;
  v13 = sub_10000C518(&unk_100933080);
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportAction], 1, 1, v13);
  v15 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton] = v15;
  v16 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton] = v16;
  v17 = type metadata accessor for ProductReviewActionsView();
  v42.receiver = v4;
  v42.super_class = v17;
  v18 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton;
  v24 = qword_100920CE0;
  v25 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton];
  if (v24 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980560, 0, 0);
  v26 = sub_1007541F4();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 0, 1, v26);
  sub_100754224();

  v28 = [*&v22[v23] titleLabel];
  if (v28)
  {
    if (qword_100920CF0 != -1)
    {
      v40 = v28;
      swift_once();
      v28 = v40;
    }

    v29 = v28;
    [v28 setFont:qword_100939530];
  }

  [*&v22[v23] addTarget:v22 action:"writeReviewWithSender:" forControlEvents:64];
  v30 = *&v22[v23];
  v31 = [v22 tintColor];
  [v30 setTitleColor:v31 forState:0];

  [v22 addSubview:*&v22[v23]];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton;
  v33 = qword_100920CE8;
  v34 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton];
  if (v33 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980568, 0, 0);
  v27(v11, 0, 1, v26);
  sub_100754224();

  v35 = [*&v22[v32] titleLabel];
  if (v35)
  {
    if (qword_100920CF0 != -1)
    {
      v41 = v35;
      swift_once();
      v35 = v41;
    }

    v36 = v35;
    [v35 setFont:qword_100939530];
  }

  [*&v22[v32] addTarget:v22 action:"supportWithSender:" forControlEvents:64];
  v37 = *&v22[v32];
  v38 = [v22 tintColor];

  [v37 setTitleColor:v38 forState:0];
  [v22 addSubview:*&v22[v32]];

  return v22;
}

uint64_t sub_100493620(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_10000C518(&unk_100933080);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = *a2;
  swift_beginAccess();
  sub_1001E899C(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_100933090;
    v16 = v9;
    return sub_10000C8CC(v16, v15);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_1007455B4();
  v17 = sub_10000C518(&unk_100923210);
  sub_1007526C4();

  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = &unk_100923960;
    v16 = v6;
    return sub_10000C8CC(v16, v15);
  }

  sub_1007455C4();
  v20 = sub_1007455B4();
  sub_1003C0E00(v21, 1, v20, v6);

  (*(v11 + 8))(v13, v10);

  return (*(v18 + 8))(v6, v17);
}

uint64_t sub_10049395C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000C8CC(v9, &unk_100923520);
}

uint64_t sub_1004939E8@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_100751144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_100750A34();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_100750A04();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100016C60(0, &qword_10093B420);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView();
  v20 = v19;
  sub_1007477B4();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v21 * 0.5 + -6.0;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_100751154();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  v24 = v8;
  v25 = v5;
  sub_100751164();
  sub_100750A14();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_10000C620(v49);
  v29 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_1007477B4();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31 * 0.5 + -6.0;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  sub_100751164();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for HorizontalStack;
  sub_10000D134(v32);
  v33 = v44;
  sub_100750A14();
  v26(v33, v28);
  return sub_10000C620(v49);
}

uint64_t sub_100493EA4@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_100751144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_1007507B4();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_100750794();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100016C60(0, &qword_10093B420);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView();
  v20 = v19;
  sub_1007477B4();
  Width = CGRectGetWidth(v52);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = Width;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_100751154();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  v24 = v8;
  v25 = v5;
  sub_100751164();
  sub_1007507A4();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_10000C620(v49);
  v29 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_1007477B4();
  v31 = CGRectGetWidth(v53);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  sub_100751164();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v32);
  v33 = v44;
  sub_1007507A4();
  v26(v33, v28);
  return sub_10000C620(v49);
}

uint64_t sub_100494340@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  type metadata accessor for ProductReviewActionsView();
  sub_1007477B4();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  sub_1007477B4();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  sub_1007477B4();
  v14 = v13 * 0.5 + -6.0;
  if (v14 < v7 || v14 < v12)
  {

    return sub_100493EA4(a1);
  }

  else
  {

    return sub_1004939E8(a1);
  }
}

double sub_100494538(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  v7 = [v6 titleForState:0];
  if (v7)
  {
    v8 = v7;
LABEL_3:
    v9 = sub_100753094();
    v11 = v10;

    goto LABEL_7;
  }

  v12 = [v6 titleLabel];
  if (v12)
  {
    v13 = v12;
    v8 = [v12 text];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;
LABEL_7:
  v14 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  v15 = [v14 titleForState:0];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v20 = [v14 titleLabel];
    if (!v20 || (v21 = v20, v16 = [v20 text], v21, !v16))
    {
      v17 = 0;
      v19 = 0;
      goto LABEL_13;
    }
  }

  v17 = sub_100753094();
  v19 = v18;

LABEL_13:
  v22 = sub_100494988(v9, v11, v17, v19, a1, a2);

  return v22;
}

id sub_100494734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewActionsView()
{
  result = qword_100939570;
  if (!qword_100939570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100494848()
{
  sub_1001E5A54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100494988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = sub_1007541F4();
  __chkstk_darwin(v12 - 8);
  sub_100016C60(0, &qword_10093B420);
  if (qword_100920CE0 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980560, a1, a2);
  v13 = sub_100754204();
  [v13 sizeThatFits:{a5, a6}];
  if (qword_100920CE8 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980568, a3, a4);
  v14 = sub_100754204();
  [v14 sizeThatFits:{a5, a6}];

  return a5;
}

UIColor sub_100494B68()
{
  sub_10000D198();
  result.super.isa = sub_100753F24(1.0, 1.0, 1.0, 0.75).super.isa;
  qword_100939580 = result.super.isa;
  return result;
}

char *sub_100494BAC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_10056003C(0xD000000000000012, 0x800000010077E820, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_100920D00;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_100939580];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_100494E78()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView];
  [v0 bounds];
  [v2 sizeThatFits:{v3, v4}];
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetMidX(v12) - v6 * 0.5;
  [v0 bounds];
  return [v2 setFrame:{v9, CGRectGetMidY(v13) - v8 * 0.5, v6, v8}];
}

id sub_100495078()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100495140()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapGestureRecognizer) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100495204(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_1009396A8;
    v15 = sub_10000C518(&qword_1009396A8);
    sub_10002DDC8(&qword_1009396B0, &qword_1009396A8);
    sub_10002DDC8(&qword_1009396B8, &qword_1009396A8);
    v16 = &unk_1009396C0;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v15 = sub_1004F9E04(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v15;
    }

    v14 = &qword_100939688;
    v15 = sub_10000C518(&qword_100939688);
    sub_10002DDC8(&qword_100939690, &qword_100939688);
    sub_10002DDC8(&qword_100939698, &qword_100939688);
    v16 = &unk_1009396A0;
  }

  sub_10002DDC8(v16, v14);
  return v15;
}

uint64_t sub_10049556C()
{

  return swift_deallocClassInstance();
}

id sub_1004955D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10074F6E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10074F704();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10074F694();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10074F694();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_100495940(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100743584();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = sub_1007469A4();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_100743034();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_100920520;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = sub_10074F0C4();
  v30 = sub_10000D0FC(v29, qword_10097E320);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  sub_100743014();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  sub_100743024();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

uint64_t sub_100495EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074DB64();
  sub_100496A0C(&qword_100939718, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = sub_1007468B4();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10009C1C4(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_10049604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
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
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0);
      sub_10074DB64();
      if (swift_dynamicCast())
      {
        sub_10074DB54();

        sub_10074EE94();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

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

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell()
{
  result = qword_100939700;
  if (!qword_100939700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004963C4()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100496478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100496A0C(&qword_100939710, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100496510@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100496568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100496628()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_100743344();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;
}

uint64_t sub_100496704(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1004967BC()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100496818(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_1004968D8(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_100496B10;
}

uint64_t sub_100496A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100496A58()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100496A90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100496AC8()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100496B1C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_100743034();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100496C30()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_1007433C4();
    sub_10004D658();
    v11 = v10;
    sub_100744274();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100496DB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1007504F4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074C114();
  sub_100039C50(v4, a2);
  sub_10000D0FC(v4, a2);
  sub_100750504();
  return sub_10074C104();
}

uint64_t sub_100496F04()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&unk_1009298F0);
  sub_100039C50(v7, qword_100939780);
  sub_10000D0FC(v7, qword_100939780);
  if (qword_100920D20 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100939768);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100920D18 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100939750);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

char *sub_1004970E4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel] = v12;
  sub_1007433C4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  sub_100743224();

  sub_100497288();
  return v15;
}

id sub_100497288()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_100753804();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_100745BF4();
    v10(v6, v9, v2);
    return sub_100745BF4();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

uint64_t sub_10049762C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074C134();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_1003836EC())
  {
    if (qword_100920D10 != -1)
    {
      swift_once();
    }

    v17 = qword_100939738;
  }

  else
  {
    if (qword_100920D08 != -1)
    {
      swift_once();
    }

    v17 = qword_100939720;
  }

  v18 = sub_10000D0FC(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  sub_10074F4B4();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel];
  v46 = sub_100745C84();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView];
  v40 = sub_1007433C4();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  sub_10074C124();
  sub_1007477B4();
  v29 = v34;
  sub_10074C0E4();
  (*(v37 + 8))(v29, v38);
  sub_100497AE0();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_100497A80()
{
  swift_getObjectType();
  sub_1007477B4();
  CGRectGetWidth(v1);
  return sub_10074C0F4();
}

uint64_t sub_100497AE0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007477B4();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  result = CGRectEqualToRect(v15, v16);
  if ((result & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artwork])
      {
        v8 = qword_100920D28;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = sub_10000C518(&unk_1009298F0);
        sub_10000D0FC(v9, qword_100939780);
        v14 = v1;
        v10 = v1;
        sub_100743464();

        sub_1007477B4();
        sub_100750474();
        (*(v3 + 8))(v5, v2);
        sub_10074F364();
        if (*&v10[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkLoader])
        {
          v13 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView];
          v11 = v13;
          sub_1007433C4();
          sub_100498550();

          v12 = v11;
          sub_1007544E4();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1007441F4();

          sub_100416858(&v14);
        }

        else
        {
        }
      }

      *(v1 + v7) = 0;
    }
  }

  return result;
}

double sub_100497E00(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v35 = sub_10074C134();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074C114();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_1003836EC())
  {
    if (qword_100920D10 != -1)
    {
      swift_once();
    }

    v18 = qword_100939738;
  }

  else
  {
    if (qword_100920D08 != -1)
    {
      swift_once();
    }

    v18 = qword_100939720;
  }

  v19 = sub_10000D0FC(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  sub_10074F4B4();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel);
  v43 = sub_100745C84();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView);
  v37 = sub_1007433C4();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_10074C124();
  sub_10074C0D4();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_100498244(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView;
      v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView);
      v5 = Strong;
      v6 = a1;
      v7 = v4;
      [v6 size];
      sub_100743394();
      sub_100753B74();
      sub_1007433A4();

      v8 = *&v5[v3];
      v9 = v6;
      v10 = v8;
      v12.value.super.isa = a1;
      v12.is_nil = 0;
      sub_100743384(v12, v11);
    }
  }
}

id sub_10049833C(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_100753804();

  if (!a1 || (sub_100753804() & 1) != (v5 & 1))
  {
    sub_100497288();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_100498550()
{
  result = qword_100926DB8;
  if (!qword_100926DB8)
  {
    sub_1007433C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926DB8);
  }

  return result;
}

uint64_t sub_1004985A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004985E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9E4();
  *a1 = result;
  return result;
}

uint64_t sub_100498614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA04();
  *a1 = result;
  return result;
}

uint64_t sub_100498640(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = sub_100754724();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007457B4();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15(v11, v8);
  if (v31 && (sub_100743A34() & 1) != 0)
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v16 = sub_100750B04();
    sub_10000D0FC(v16, qword_100982098);
    sub_100747BA4();
    sub_1007502D4();
    sub_100750564();
    bottom = v17;

    swift_unknownObjectRelease();
    (*(v27 + 8))(v4, v28);
    left = 0.0;
    top = 32.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19.n128_f64[0] = top;
  v20.n128_f64[0] = left;
  v21.n128_f64[0] = bottom;
  v22.n128_f64[0] = right;
  sub_1006CFC7C(v7, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v29);
}

double sub_1004989E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v148 = a5;
  v8 = sub_1007457B4();
  v9 = *(v8 - 8);
  v140 = v8;
  v141 = v9;
  __chkstk_darwin(v8);
  v149 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100747C14();
  v12 = *(v11 - 8);
  v146 = v11;
  v147 = v12;
  __chkstk_darwin(v11);
  v143 = v13;
  v145 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_10092E450);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v138 - v19;
  __chkstk_darwin(v21);
  v23 = &v138 - v22;
  if (sub_100753094() == a1 && v24 == a2)
  {
  }

  else
  {
    v139 = a2;
    v26 = sub_100754754();

    if ((v26 & 1) == 0)
    {
      if (sub_100753094() == a1 && v27 == v139)
      {

        v28 = a3;
        goto LABEL_18;
      }

      v68 = sub_100754754();

      v28 = a3;
      if (v68)
      {
LABEL_18:
        sub_100747C04();
        swift_getKeyPath();
        sub_1007525B4();

        (*(v15 + 8))(v17, v14);
        if (v151)
        {

          v69 = sub_10000C518(&qword_1009399D8);
          v70 = v148;
          *(v148 + 24) = v69;
          v70[4] = sub_100150440(&qword_1009399E0, &qword_1009399D8);
          v149 = sub_10000D134(v70);
          v148 = sub_100753094();
          v141 = v71;
          type metadata accessor for ShelfFooterView();
          sub_1007539D4();
          v72 = swift_allocObject();
          swift_weakInit();
          v73 = v146;
          v74 = v147;
          v75 = v145;
          (*(v147 + 16))(v145, v28, v146);
          v76 = (*(v74 + 80) + 24) & ~*(v74 + 80);
          v77 = (v143 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v72;
          (*(v74 + 32))(v78 + v76, v75, v73);
          *(v78 + v77) = v142;
        }

        else
        {
          v79 = sub_10000C518(&qword_100930928);
          v80 = v148;
          *(v148 + 24) = v79;
          v80[4] = sub_100150440(&unk_100930930, &qword_100930928);
          sub_10000D134(v80);
          sub_100753094();
          type metadata accessor for InfiniteScrollFooterView();
          sub_1007539D4();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (sub_1007539C4() == a1 && v81 == v139)
      {

LABEL_27:
        v83 = sub_10000C518(&qword_1009399C8);
        v84 = v148;
        *(v148 + 24) = v83;
        v84[4] = sub_100150440(&qword_1009399D0, &qword_1009399C8);
        v149 = sub_10000D134(v84);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v85 = v146;
        v86 = v147;
        v87 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
        v89 = (v143 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        (*(v86 + 32))(v90 + v88, v87, v85);
        *(v90 + v89) = v144;

        goto LABEL_20;
      }

      v82 = sub_100754754();

      if (v82)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (sub_1007539C4() == a1 && v91 == v139)
      {

LABEL_33:
        v93 = sub_10000C518(&qword_1009399B8);
        v94 = v148;
        *(v148 + 24) = v93;
        v94[4] = sub_100150440(&qword_1009399C0, &qword_1009399B8);
        v149 = sub_10000D134(v94);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v95 = v146;
        v96 = v147;
        v97 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v98 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v99 = (v143 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        (*(v96 + 32))(v100 + v98, v97, v95);
        *(v100 + v99) = v144;

        goto LABEL_20;
      }

      v92 = sub_100754754();

      if (v92)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (sub_1007539C4() == a1 && v101 == v139)
      {

LABEL_38:
        v103 = sub_10000C518(&qword_1009399A8);
        v104 = v148;
        *(v148 + 24) = v103;
        v104[4] = sub_100150440(&qword_1009399B0, &qword_1009399A8);
        v149 = sub_10000D134(v104);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v105 = v146;
        v106 = v147;
        v107 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v108 = (*(v106 + 80) + 16) & ~*(v106 + 80);
        v109 = (v143 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = swift_allocObject();
        (*(v106 + 32))(v110 + v108, v107, v105);
        *(v110 + v109) = v144;

        goto LABEL_20;
      }

      v102 = sub_100754754();

      if (v102)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView();
      if (sub_1007539C4() == a1 && v111 == v139)
      {

LABEL_43:
        v113 = sub_10000C518(&qword_100939998);
        v114 = v148;
        *(v148 + 24) = v113;
        v114[4] = sub_100150440(&qword_1009399A0, &qword_100939998);
        v149 = sub_10000D134(v114);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v115 = swift_allocObject();
        swift_weakInit();
        v116 = v146;
        v117 = v147;
        v118 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v119 = (*(v117 + 80) + 24) & ~*(v117 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = v115;
        (*(v117 + 32))(v120 + v119, v118, v116);
        goto LABEL_20;
      }

      v112 = sub_100754754();

      if (v112)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (sub_1007539C4() == a1 && v121 == v139)
      {

LABEL_48:
        v123 = sub_10000C518(&qword_100939988);
        v124 = v148;
        *(v148 + 24) = v123;
        v124[4] = sub_100150440(&qword_100939990, &qword_100939988);
        v149 = sub_10000D134(v124);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v125 = v146;
        v126 = v147;
        v127 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v128 = (*(v126 + 80) + 16) & ~*(v126 + 80);
        v129 = (v143 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
        v130 = swift_allocObject();
        (*(v126 + 32))(v130 + v128, v127, v125);
        *(v130 + v129) = v144;

        goto LABEL_20;
      }

      v122 = sub_100754754();

      if (v122)
      {
        goto LABEL_48;
      }

      sub_100748754();
      if (sub_100748734() == a1 && v131 == v139)
      {
        goto LABEL_51;
      }

      v132 = sub_100754754();

      if (v132)
      {
        goto LABEL_53;
      }

      if (sub_100748744() == a1 && v135 == v139)
      {
LABEL_51:
      }

      else
      {
        v136 = sub_100754754();

        if ((v136 & 1) == 0)
        {
          v137 = v148;
          *(v148 + 32) = 0;
          result = 0.0;
          *v137 = 0u;
          v137[1] = 0u;
          return result;
        }
      }

LABEL_53:
      v133 = sub_10000C518(&qword_100929BC0);
      v134 = v148;
      *(v148 + 24) = v133;
      v134[4] = sub_100150440(&qword_100929BC8, &qword_100929BC0);
      sub_10000D134(v134);
      sub_100748724();
      return result;
    }
  }

  v29 = a3;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v30 = *(v15 + 8);
  v30(v23, v14);
  if (!v150)
  {
    v32 = v140;
    v33 = v149;
    goto LABEL_14;
  }

  v31 = sub_100743904();

  v32 = v140;
  v33 = v149;
  if ((v31 & 1) == 0)
  {
LABEL_14:
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v30(v20, v14);
    v44 = (*(v141 + 88))(v33, v32);
    v45 = v147;
    if (v44 != enum case for ShelfBackground.interactive(_:))
    {
      v55 = sub_10000C518(&qword_100929BD0);
      v56 = v148;
      *(v148 + 24) = v55;
      v56[4] = sub_100150440(&qword_100929BD8, &qword_100929BD0);
      sub_10000D134(v56);
      v148 = sub_100753094();
      v140 = v57;
      type metadata accessor for TitleHeaderView(0);
      v58 = sub_1007539D4();
      v138 = v59;
      v139 = v58;
      v60 = v29;
      v61 = swift_allocObject();
      swift_weakInit();
      v63 = v145;
      v62 = v146;
      (*(v45 + 16))(v145, v60, v146);
      v64 = (*(v45 + 80) + 24) & ~*(v45 + 80);
      v65 = (v143 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      (*(v45 + 32))(v66 + v64, v63, v62);
      *(v66 + v65) = v142;

      sub_10074D744();
      (*(v141 + 8))(v149, v32);
      return result;
    }

    v46 = sub_10000C518(&qword_1009399E8);
    v47 = v148;
    *(v148 + 24) = v46;
    v47[4] = sub_100150440(&unk_1009399F0, &qword_1009399E8);
    v149 = sub_10000D134(v47);
    v148 = sub_100753094();
    v141 = v48;
    type metadata accessor for InteractiveTitleHeaderView();
    sub_1007539D4();
    v49 = swift_allocObject();
    swift_weakInit();
    v51 = v145;
    v50 = v146;
    (*(v45 + 16))(v145, v29, v146);
    v52 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v53 = (v143 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    (*(v45 + 32))(v54 + v52, v51, v50);
    *(v54 + v53) = v142;

    goto LABEL_20;
  }

  v34 = sub_10000C518(&qword_1009358B8);
  v35 = v148;
  *(v148 + 24) = v34;
  v35[4] = sub_100150440(&unk_1009358C0, &qword_1009358B8);
  v149 = sub_10000D134(v35);
  v148 = sub_100753094();
  v141 = v36;
  type metadata accessor for ShelfHeaderView();
  sub_1007539D4();
  v37 = swift_allocObject();
  swift_weakInit();
  v39 = v146;
  v38 = v147;
  v40 = v145;
  (*(v147 + 16))(v145, v29, v146);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = (v143 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  (*(v38 + 32))(v43 + v41, v40, v39);
  *(v43 + v42) = v142;

LABEL_20:
  sub_10074D744();
  return result;
}

uint64_t sub_100499B68(uint64_t a1, int *a2)
{
  v54 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F704();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v52 - v12;
  __chkstk_darwin(v13);
  v53 = &v52 - v14;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  __chkstk_darwin(v24);
  v26 = &v52 - v25;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v27 = *(v9 + 8);
  v27(v26, v8);
  v28 = v66;
  if (!v66)
  {
    goto LABEL_16;
  }

  v29 = v65;

  v30 = (v28 >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_16:
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v23, v8);
    if (!v65)
    {
      return 0;
    }

    v31 = sub_100743A34();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v33 = v32;
  v35 = v34;
  (*(v59 + 8))(v7, v60);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v27(v20, v8);
  v36 = v65;
  if (!v65)
  {
    goto LABEL_12;
  }

  if ((sub_100743904() & 1) == 0)
  {

LABEL_12:
    v38 = sub_10049C4B4(v33, v35);
    v40 = v39;
    v60 = type metadata accessor for TitleHeaderView(0);
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v17, v8);
    v59 = v65;
    v54 = v66;
    v41 = v53;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v41, v8);
    v42 = v64;
    v43 = v55;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v43, v8);
    v45 = v62;
    v44 = v63;
    v46 = v56;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v46, v8);
    v47 = v61;
    v48 = sub_10049C82C();
    v49 = v58;
    (*(*v57 + 192))(a1);
    v50 = sub_100747BA4();
    swift_getObjectType();
    LOBYTE(v51) = 1;
    sub_1001072B0(v59, v54, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, 0, 0, v48, v49, v51, v50);
    swift_unknownObjectRelease();

    sub_10049E22C(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView();
  v33 = sub_100060B24(v36, a1, v33, v35);

  return *&v33;
}

uint64_t sub_10049A228(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007457B4();
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10074E984();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752AC4();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v97 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v83 - v12;
  __chkstk_darwin(v13);
  v102 = &v83 - v14;
  v92 = sub_100747C14();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v15;
  __chkstk_darwin(v16);
  v88 = &v83 - v17;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v84);
  v108 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10074F284();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_10092E450);
  v99 = *(v23 - 8);
  __chkstk_darwin(v23);
  v95 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v112 = a2;
  sub_100747C04();
  sub_1007442C4();
  sub_100752764();
  v93 = a3;
  sub_100752D34();
  v109 = v113;
  swift_getKeyPath();
  sub_1007525B4();

  v28 = v113;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
  v30 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork);

  sub_100100BC8(v28);
  *(a1 + v29) = v28;

  sub_100100BDC(v30);

  swift_getKeyPath();
  v110 = v23;
  v111 = v27;
  sub_1007525B4();

  v31 = v113;
  v32 = v114;
  v33 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  v35 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  v34 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);

  sub_1001005A8(v31, v32);
  *v33 = v31;
  v33[1] = v32;

  sub_10010063C(v35, v34);

  if (*(a1 + v29))
  {
    v36 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v36)
    {

      v37 = v36;
      sub_10074F2A4();
      sub_10074F294();
      sub_10074F254();
      (*(v86 + 8))(v22, v87);
      sub_10074F374();
      sub_1007433C4();
      sub_10049E28C(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }
  }

  swift_getKeyPath();
  sub_1007525B4();

  v38 = v113;
  v39 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  v40 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork);

  sub_100100D68(v38);
  *(a1 + v39) = v38;

  sub_100100E7C(v40);

  v41 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_1007525B4();

  if (v114)
  {
    v42 = sub_100753064();
  }

  else
  {
    v42 = 0;
  }

  [v41 setText:v42];

  v43 = *(a1 + v39);
  if (v43)
  {
    v44 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView);
    if (v44)
    {
      v45 = v108;
      (*((swift_isaMask & *a1) + 0x1C0))();
      v46 = v85;
      sub_10015027C(v45 + *(v84 + 20), v85);

      v47 = v44;
      sub_10049E22C(v45, type metadata accessor for TitleHeaderView.Style);
      sub_1005E530C(v43, v46, a1);
      sub_10049E22C(v46, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10074F294();
      sub_10074F254();
      (*(v86 + 8))(v22, v87);
      sub_10074F374();
      sub_1007433C4();
      sub_10049E28C(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }
  }

  v48 = v91;
  v49 = *(v91 + 16);
  v50 = v88;
  v51 = v112;
  v52 = v92;
  v49(v88, v112, v92);
  v53 = v90;
  v49(v90, v50, v52);
  v54 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v55 = swift_allocObject();
  v56 = v94;
  *(v55 + 16) = v94;
  (*(v48 + 32))(v55 + v54, v50, v52);
  v57 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v57 = sub_10049E1C0;
  v57[1] = v55;

  [v41 setNumberOfLines:sub_10049C82C()];

  (*(v48 + 8))(v53, v52);
  v58 = v108;
  (*(*v56 + 192))(v51);
  (*((swift_isaMask & *a1) + 0x1C8))(v58);
  v59 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (v59)
  {
    swift_getKeyPath();
    v60 = v59;
    sub_1007525B4();

    if (v114)
    {
      v61 = sub_100753064();
    }

    else
    {
      v61 = 0;
    }

    [v60 setText:v61];
  }

  sub_10049B138(a1, v112, v93);
  v113 = sub_100747BF4();
  v62 = sub_100754714();
  v116[3] = &type metadata for String;
  v116[0] = v62;
  v116[1] = v63;
  sub_100747BE4();
  v64 = sub_1007544A4();
  v66 = v65;
  sub_100016994(&v113);
  v115 = &type metadata for String;
  v113 = v64;
  v114 = v66;
  v67 = v97;
  sub_100752A94();
  sub_10000C8CC(&v113, &unk_100923520);
  sub_10000C8CC(v116, &unk_100923520);
  swift_getKeyPath();
  v68 = v98;
  v69 = v110;
  v70 = v111;
  sub_1007525B4();

  v71 = sub_10074E974();
  v73 = v72;
  (*(v100 + 8))(v68, v101);
  v115 = &type metadata for String;
  v113 = v71;
  v114 = v73;
  v74 = v96;
  sub_100752AA4();
  v75 = v104;
  v76 = *(v103 + 8);
  v76(v67, v104);
  sub_10000C8CC(&v113, &unk_100923520);
  swift_getKeyPath();
  sub_1007525B4();

  v77 = *(v116[0] + 16);

  v115 = &type metadata for Int;
  v113 = v77;
  v78 = v102;
  sub_100752AA4();
  v76(v74, v75);
  sub_10000C8CC(&v113, &unk_100923520);
  sub_100753C74();
  v76(v78, v75);
  v79 = v95;
  sub_100747C04();
  swift_getKeyPath();
  v80 = v105;
  sub_1007525B4();

  v81 = *(v99 + 8);
  v81(v79, v69);
  [a1 setOverrideUserInterfaceStyle:sub_1002EF020()];
  (*(v106 + 8))(v80, v107);
  [a1 setNeedsLayout];

  return (v81)(v70, v69);
}

uint64_t sub_10049B138(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v4 = sub_100752AC4();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_10000C518(&unk_10092E450);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  if (v47[0])
  {
    v39 = v15;
    v40 = v13;
    v16 = a2;
    sub_10049B838(a2, v12);
    v17 = type metadata accessor for Accessory();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v45;
    (*((swift_isaMask & *v45) + 0x268))(v12, v44);
    sub_10000C8CC(v12, &qword_10093FDB0);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
    *v22 = sub_10049E14C;
    v22[1] = v21;

    sub_1000164A8(v23);

    v24 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
    if (v24)
    {
      v25 = v24;
      v26 = sub_100747BF4();
      v48[3] = &type metadata for Int;
      v48[0] = v26;
      sub_100747BE4();
      v27 = sub_1007544A4();
      v29 = v28;
      sub_100016994(v47);
      v47[3] = &type metadata for String;
      v47[0] = v27;
      v47[1] = v29;
      v30 = v41;
      sub_100752A94();
      sub_10000C8CC(v47, &unk_100923520);
      sub_10000C8CC(v48, &unk_100923520);
      sub_100753C74();

      (*(v42 + 8))(v30, v43);
    }

    else
    {
    }

    return (*(v46 + 8))(v39, v40);
  }

  else
  {
    v32 = v44;
    v31 = v45;
    swift_getKeyPath();
    sub_1007525B4();

    if (v47[0])
    {
      *v12 = v47[0];
      *(v12 + 8) = xmmword_1007C3790;
      v33 = type metadata accessor for Accessory();
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      v34 = *((swift_isaMask & *v31) + 0x268);

      v34(v12, v32);

      sub_10000C8CC(v12, &qword_10093FDB0);
      return (*(v46 + 8))(v15, v13);
    }

    else
    {
      v36 = type metadata accessor for Accessory();
      (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
      (*((swift_isaMask & *v31) + 0x268))(v12, v32);
      sub_10000C8CC(v12, &qword_10093FDB0);
      (*(v46 + 8))(v15, v13);
      v37 = (v31 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      v38 = *(v31 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      *v37 = 0;
      v37[1] = 0;
      return sub_1000164A8(v38);
    }
  }
}

uint64_t sub_10049B838@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10092E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10074EAB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = sub_10074ECB4();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  sub_100747BD4();
  sub_10074EA94();
  sub_10049E28C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v17 = sub_100754324();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_10000D198();
    v19 = sub_100753DD4();
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10049BACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10049BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10000C518(&unk_10092E450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v10 + 8))(v12, v9);
    v15 = v17;
    if (v17)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10005E8C0(v15, Strong, *(v14 + 32), a6, a7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10049BC94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10049A228(a1, a6, a7);
  }

  return result;
}

uint64_t sub_10049BD10(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10049E7C4(a1, a6);
  }

  return result;
}

uint64_t sub_10049BD84(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10049A228(*&a1[OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView], a6, a7);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_100752764();
    sub_100752D34();
    v15 = v19[0];
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {

      sub_100412148(v19);
      if (v16)
      {

        sub_100016994(v19);

        v19[3] = type metadata accessor for InteractiveTitleHeaderView();
        v19[4] = &off_1008683F8;
        v19[0] = a1;
        v17 = a1;
        sub_10004F9EC(v19);

        return sub_10000C8CC(v19, &unk_1009242D0);
      }
    }

    else
    {
    }

    return sub_100016994(v19);
  }

  return result;
}

uint64_t sub_10049BFEC(void *a1)
{
  v2 = sub_10000C518(&unk_10092E450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_100752764();

    sub_100752D34();

    v7 = v11[0];
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {

      sub_100412148(v11);
      if (v8)
      {

        sub_100016994(v11);

        v10[3] = type metadata accessor for InteractiveSectionBackgroundView();
        v10[4] = &off_1008761A8;
        v10[0] = a1;
        v9 = a1;
        sub_10004F9EC(v10);

        return sub_10000C8CC(v10, &unk_1009242D0);
      }
    }

    sub_100016994(v11);
  }

  return result;
}

uint64_t sub_10049C240(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000C518(&unk_10092E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      sub_100747C04();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_10049C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GenericPageShelfSupplementaryProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 32) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 16) = a2;
  return v7;
}

double sub_10049C4B4(double a1, double a2)
{
  v4 = sub_10000C518(&unk_10092E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = sub_100747B94();
    sub_10074ECB4();
    v14 = v13;
    if (qword_1009202A0 != -1)
    {
      swift_once();
    }

    v15 = qword_100928AB8;
    if (v14)
    {
      v16 = sub_100753064();
    }

    else
    {
      v16 = 0;
    }

    [v15 setTitle:v16 forState:0];

    [v15 setImage:0 forState:0];
    v19 = [v15 titleLabel];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [v21 font];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];
      }

      else
      {
        v24 = 0;
      }

      [v21 setFont:v24];
    }

    [v15 sizeThatFits:{a1, a2}];
    v26 = v25;

    v18 = v26 + 0.0;
    [v15 setTitle:0 forState:0];
    [v15 setImage:0 forState:0];
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v11(v7, v4);
    if (v29 && (v17 = sub_100743A34(), , (v17 & 1) != 0))
    {
      return 156.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v18;
}

uint64_t sub_10049C82C()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_100747B94();
  v8 = sub_100753804();

  if (v8)
  {
    return 0;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v10(v3, v0);
    if (v13 && (v11 = sub_100743A34(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10049CA04()
{
  v0 = sub_10000C518(&qword_10092F318);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v20 = sub_10074F704();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v22;
  if (!v22)
  {
    return 0;
  }

  v19 = v21;
  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v16 = v15;
  (*(v3 + 8))(v5, v20);
  v17 = sub_100747B94();
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13(v9, v6);
  sub_10059B0F0(v19, v14, v17, v2);

  sub_10000C8CC(v2, &qword_10092F318);
  return v16;
}

void *sub_10049CD00(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_100499B68(a1, a2));
  if ((v4 & 1) != 0 || ((v5 = v2, v6 = v3, v3 >= v2) ? (v7 = v2) : (v7 = v3), v7 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 absoluteDimension:v5];
    v10 = [v8 estimatedDimension:v6];
    v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v13 = v12;
  }

  v14 = COERCE_DOUBLE(sub_10049CA04());
  if ((v16 & 1) != 0 || ((v17 = v14, v18 = v15, v15 >= v14) ? (v19 = v14) : (v19 = v15), v19 <= 0.0))
  {
    v24 = 0;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension:v17];
    v22 = [v20 absoluteDimension:v18];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionFooter alignment:5];
    v25 = v24;
  }

  v26 = 0;
  v30[4] = v12;
  v30[5] = v24;
  while (v26 != 2)
  {
    v27 = v30[v26++ + 4];
    if (v27)
    {
      v28 = v27;
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }
  }

  sub_10000C518(&qword_100939978);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10049CFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10049D038()
{
  v0 = sub_1007457B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v9 = *(sub_10000C518(&qword_100940630) + 48);
    sub_10000C518(&unk_1009231A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v11 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007539C4();
    v12 = sub_100753064();

    v13 = [v11 backgroundDecorationItemWithElementKind:v12];

    *(v10 + 32) = v13;
    v14 = sub_100748E34();
    (*(*(v14 - 8) + 8))(&v3[v9], v14);
  }

  else if (v8 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v15 = sub_10000C518(&unk_100940620);
    v16 = v15[12];
    v17 = v15[16];
    v18 = v15[20];
    sub_10000C518(&unk_1009231A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v19 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007539C4();
    v20 = sub_100753064();

    v21 = [v19 backgroundDecorationItemWithElementKind:v20];

    *(v10 + 32) = v21;
    v22 = sub_100748E34();
    (*(*(v22 - 8) + 8))(&v3[v18], v22);
    v23 = sub_10074D3E4();
    v24 = *(*(v23 - 8) + 8);
    v24(&v3[v17], v23);
    v24(&v3[v16], v23);
  }

  else if (v8 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v25 = *(sub_10000C518(&qword_1009245B8) + 48);
    sub_10000C518(&unk_1009231A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v26 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007539C4();
    v27 = sub_100753064();

    v28 = [v26 backgroundDecorationItemWithElementKind:v27];

    *(v10 + 32) = v28;
    v29 = sub_100748E34();
    (*(*(v29 - 8) + 8))(&v3[v25], v29);
    v30 = sub_10074DDF4();
    (*(*(v30 - 8) + 8))(v3, v30);
  }

  else if (v8 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v8 == enum case for ShelfBackground.interactive(_:))
  {
    sub_10000C518(&unk_1009231A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v31 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView();
    sub_1007539C4();
    v32 = sub_100753064();

    v33 = [v31 backgroundDecorationItemWithElementKind:v32];

    *(v10 + 32) = v33;
  }

  else
  {
    v34 = enum case for ShelfBackground.editorsChoice(_:);
    v35 = v8;
    sub_10000C518(&unk_1009231A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v36 = objc_opt_self();
    if (v35 == v34)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      sub_1007539C4();
      v37 = sub_100753064();

      v38 = [v36 backgroundDecorationItemWithElementKind:v37];

      *(v10 + 32) = v38;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007539C4();
      v39 = sub_100753064();

      v40 = [v36 backgroundDecorationItemWithElementKind:v39];

      *(v10 + 32) = v40;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v10;
}

uint64_t sub_10049D76C(uint64_t a1, void (*a2)(char *))
{
  v21 = a2;
  v2 = sub_100754724();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007457B4();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15(v11, v8);
  if (v22)
  {
    if (sub_100743A34())
    {
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v16 = sub_100750B04();
      sub_10000D0FC(v16, qword_100982098);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();

      swift_unknownObjectRelease();
      (*(v18 + 8))(v4, v19);
    }

    else
    {
    }
  }

  v21(v7);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_10049DAC8()
{
  v0 = sub_100754724();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007457B4();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13(v9, v6);
  if (v19)
  {
    if (sub_100743A34())
    {
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v14 = sub_100750B04();
      sub_10000D0FC(v14, qword_100982098);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

void *sub_10049DE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_1007457B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092E450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  LODWORD(v10) = enum case for ShelfBackground.interactive(_:);
  (*(v6 + 8))(v8, v5);
  if (v13 != v10)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  sub_100752764();
  sub_100752D34();
  v14 = sub_10031557C(a1, v18, a3);
  sub_10000C518(&qword_10092F170);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A5A00;
  v16 = sub_10049E28C(&qword_100939980, type metadata accessor for InteractiveSectionBackgroundScrollObserver);
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  return v15;
}

uint64_t sub_10049E0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA14();
  *a1 = result;
  return result;
}

uint64_t sub_10049E0E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA24();
  *a1 = result;
  return result;
}

uint64_t sub_10049E114()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10049E164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA04();
  *a1 = result;
  return result;
}

uint64_t sub_10049E194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9E4();
  *a1 = result;
  return result;
}

uint64_t sub_10049E1C0()
{
  sub_100747C14();

  return sub_10049C82C();
}

uint64_t sub_10049E22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049E28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10049E2D8()
{
  sub_100747C14();

  return sub_10049DAC8();
}

uint64_t sub_10049E338(void *a1)
{
  sub_100747C14();

  return sub_10049BFEC(a1);
}

uint64_t sub_10049E3D4()
{
  v1 = *(sub_100747C14() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_100498640(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_10049E480()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10049E5F4()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10049E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_100747C14() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

uint64_t sub_10049E7C4(char *a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_100747C14();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = v4;
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007457B4();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10092F318);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v43;
  v33 = v42;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17(v13, v10);
  if (qword_100921908 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style();
  v20 = sub_10000D0FC(v19, qword_1009826A0);
  v21 = v41;
  sub_10059BCE0(v33, v18, v20, v9, a2);

  sub_10000C8CC(v9, &qword_10092F318);
  sub_100747C04();
  swift_getKeyPath();
  v22 = v34;
  sub_1007525B4();

  v17(v16, v10);
  v23 = sub_1002EF020();
  (*(v35 + 8))(v22, v36);
  [v21 setOverrideUserInterfaceStyle:v23];
  v24 = swift_allocObject();
  swift_weakInit();
  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 16))(v38, a2, v40);
  v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = &v21[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction];
  v31 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction];
  *v30 = sub_10049EC80;
  v30[1] = v29;

  sub_1000164A8(v31);
}

uint64_t LinkableHeaderViewLayout.init(metrics:topSeparator:text:bottomSeparator:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[7];
  a5[6] = a1[6];
  a5[7] = v8;
  v9 = a1[9];
  a5[8] = a1[8];
  a5[9] = v9;
  v10 = a1[3];
  a5[2] = a1[2];
  a5[3] = v10;
  v11 = a1[5];
  a5[4] = a1[4];
  a5[5] = v11;
  v12 = a1[1];
  *a5 = *a1;
  a5[1] = v12;
  sub_100012160(a2, (a5 + 10));
  sub_100012160(a3, a5 + 200);

  return sub_100012160(a4, (a5 + 15));
}

uint64_t sub_10049EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100931390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double LinkableHeaderViewLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_10049F2B8(a2, a1, v2);
}

uint64_t LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v4 + 20, v4[23]);
  sub_100750414();
  v34 = v15;
  v35 = v14;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  MinY = CGRectGetMinY(v38);
  sub_10000C888(v5 + 20, v5[23]);
  sub_100750394();
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10000C888(v5, v5[3]);
  sub_100536120();
  sub_100750564();
  (*(v11 + 8))(v13, v10);
  v32 = a1;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  CGRectGetHeight(v40);
  sub_10000C888(v5 + 25, v5[28]);
  sub_100750404();
  v18 = v17;
  v20 = v19;
  *&v31[1] = a2;
  v31[2] = v21;
  v36 = v22;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v23 = a4;
  v41.size.height = a4;
  v24 = CGRectGetMidX(v41) + v18 * -0.5;
  v42.origin.x = MinX;
  v42.size.height = v34;
  v42.origin.y = MinY;
  v42.size.width = v35;
  MaxY = CGRectGetMaxY(v42);
  sub_10000C888(v5 + 5, v5[8]);
  sub_100750584();
  v27 = MaxY + v26;
  sub_10000C888(v5 + 25, v5[28]);
  sub_100750394();
  sub_10000C888(v5 + 30, v5[33]);
  sub_100750414();
  v34 = v29;
  v35 = v28;
  v43.origin.x = v32;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = v23;
  CGRectGetMinX(v43);
  v44.origin.x = v24;
  v44.origin.y = v27;
  v44.size.width = v18;
  v44.size.height = v20;
  CGRectGetMaxY(v44);
  sub_10000C888(v5 + 10, v5[13]);
  sub_100750554();
  sub_10000C888(v5 + 30, v5[33]);
  sub_100750394();
  return sub_100750314();
}

double sub_10049F2B8(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a3, a3[3]);
  sub_100536120();
  sub_100750564();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000C888(a3 + 25, a3[28]);
  sub_100750404();
  sub_100120E28((a3 + 15), v12);
  if (v13)
  {
    sub_10000C888(v12, v13);
    sub_100536120();
    sub_100750564();
    v9(v8, v5);
    sub_10000C620(v12);
  }

  else
  {
    sub_1000F4268(v12);
  }

  sub_10000C888(a3 + 30, a3[33]);
  sub_100750414();
  sub_10000C888(a3 + 20, a3[23]);
  sub_100750414();
  sub_10000C888(a3 + 5, a3[8]);
  sub_100750584();
  sub_10000C888(a3 + 10, a3[13]);
  sub_100750554();
  return a1;
}

uint64_t sub_10049F5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_10049F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10049F6B8(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v6[0] = 0x3FF0000000000000;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0x3FF0000000000000;
    v6[4] = 0;
    v6[5] = 0;
    [v2 setTransform:v6];

    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha:1.0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10049F824(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 containerView];
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      [v4 addSubview:v5];

      v7 = [v3 view];
      if (v7)
      {
        v8 = v7;
        CGAffineTransformMakeScale(&v17, 1.15, 1.15);
        [v8 setTransform:&v17];

        v9 = [v3 view];
        if (v9)
        {
          v10 = v9;
          [v9 setAlpha:0.0];

          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v3;
          *&v17.tx = sub_10049FB14;
          *&v17.ty = v12;
          *&v17.a = _NSConcreteStackBlock;
          *&v17.b = 1107296256;
          *&v17.c = sub_1000CF7B0;
          *&v17.d = &unk_100877550;
          v13 = _Block_copy(&v17);
          v14 = v3;

          v15 = swift_allocObject();
          *(v15 + 16) = a1;
          *&v17.tx = sub_10049FB6C;
          *&v17.ty = v15;
          *&v17.a = _NSConcreteStackBlock;
          *&v17.b = 1107296256;
          *&v17.c = sub_100144DD8;
          *&v17.d = &unk_1008775A0;
          v16 = _Block_copy(&v17);
          swift_unknownObjectRetain();

          [v11 animateWithDuration:0x20000 delay:v13 options:v16 animations:0.25 completion:0.0];
          _Block_release(v16);
          _Block_release(v13);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_10049FADC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10049FB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10049FB34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10049FB8C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1002548C4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C518(&qword_100923378);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10049FD08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100254EA4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10049FE38(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10049FF7C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100255708(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C518(&unk_100939AF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004A0110(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100255E84(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004A0208(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1002563A4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1004A02FC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100255D50(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C518(&qword_10092FE70);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004A0430(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_100754664();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_100754664();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1004A0FF8(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1004A0528(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100256608(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

id static TodayCardTitleBackingGradient.make(from:)(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [a1 locations];
  [v2 setLocations:v3];

  [a1 startPoint];
  [v2 setStartPoint:?];
  [a1 endPoint];
  [v2 setEndPoint:?];
  v4 = [a1 type];
  [v2 setType:v4];

  v5 = [a1 colors];
  [v2 setColors:v5];

  v6 = v2;
  v7 = [a1 filters];
  [v6 setFilters:v7];

  return v6;
}

uint64_t static TodayCardTitleBackingGradient.make(using:)(uint64_t a1)
{
  v2 = sub_10074FB54();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 != enum case for TodayCard.Style.dark(_:))
  {
    if (v7 != enum case for TodayCard.Style.light(_:))
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_100754534(44);

      v44 = 0xD00000000000002ALL;
      v45 = 0x800000010076F550;
      v46._countAndFlagsBits = sub_10074FB44();
      sub_1007531B4(v46);

      result = sub_100754644();
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  sub_100753094();
  if (v9)
  {
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.32];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.32];
  }

  v13 = [v12 CGColor];

  sub_10000C518(&unk_1009231A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A57A0;
  sub_100016C60(0, &qword_10092BE20);
  v15 = v13;
  *(v14 + 32) = sub_100753FA4(0);
  *(v14 + 40) = sub_100753F94(0.3);
  *(v14 + 48) = sub_100753F94(0.7);
  *(v14 + 56) = sub_100753F94(1.0);
  isa = sub_100753294().super.isa;

  [v10 setLocations:isa];

  [v10 setStartPoint:{0.5, 0.0}];
  [v10 setEndPoint:{0.5, 1.0}];
  [v10 setType:kCAGradientLayerAxial];
  v17 = [objc_opt_self() clearColor];
  v18 = [v17 CGColor];

  sub_10000C518(&unk_1009259C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007A97A0;
  type metadata accessor for CGColor(0);
  *(v19 + 32) = v18;
  *(v19 + 56) = v20;
  *(v19 + 64) = v15;
  *(v19 + 88) = v20;
  *(v19 + 96) = v15;
  *(v19 + 152) = v20;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  v21 = v18;
  v43 = v15;
  v42 = v21;
  v22 = sub_100753294().super.isa;

  [v10 setColors:v22];

  v23 = objc_allocWithZone(CAFilter);
  v24 = sub_100753064();

  v25 = [v23 initWithType:v24];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v27 = sub_10074FC14().super.super.isa;
  v28 = sub_100753064();
  [v26 setValue:v27 forKey:v28];

  v29 = v10;
  v30 = [v29 filters];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1007532A4();
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v34 = sub_100016C60(0, &qword_1009384C8);
  *(inited + 32) = v25;
  *(inited + 88) = v34;
  *(inited + 56) = v34;
  *(inited + 64) = v26;
  v44 = v32;
  v41 = v25;
  v35 = v26;
  sub_1004A0110(inited);
  v36 = sub_100753294().super.isa;

  [v29 setFilters:v36];

  sub_10000C518(&unk_100939A90);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1007A79C0;
  *(v37 + 32) = 0x6E6F697469736F70;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = [objc_allocWithZone(NSNull) init];
  *(v37 + 56) = 0x6E6564646968;
  *(v37 + 64) = 0xE600000000000000;
  *(v37 + 72) = [objc_allocWithZone(NSNull) init];
  *(v37 + 80) = 0x49726564724F6E6FLL;
  *(v37 + 88) = 0xE90000000000006ELL;
  *(v37 + 96) = [objc_allocWithZone(NSNull) init];
  *(v37 + 104) = 0x4F726564724F6E6FLL;
  *(v37 + 112) = 0xEA00000000007475;
  *(v37 + 120) = [objc_allocWithZone(NSNull) init];
  *(v37 + 128) = 0x726579616C627573;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = [objc_allocWithZone(NSNull) init];
  *(v37 + 152) = 0x73746E65746E6F63;
  *(v37 + 160) = 0xE800000000000000;
  *(v37 + 168) = [objc_allocWithZone(NSNull) init];
  *(v37 + 176) = 0x73646E756F62;
  *(v37 + 184) = 0xE600000000000000;
  *(v37 + 192) = [objc_allocWithZone(NSNull) init];
  sub_100413A3C(v37);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0);
  swift_arrayDestroy();
  sub_10000C518(&qword_100939AA0);
  v38 = sub_100752F34().super.isa;

  [v29 setActions:v38];

  return v29;
}

uint64_t sub_1004A0FF8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100754664();
LABEL_9:
  result = sub_100754584();
  *v1 = result;
  return result;
}

uint64_t sub_1004A1098(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AD0, &qword_1009423E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_1009423E0);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100922300);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1238(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AB8, &qword_100939AB0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939AB0);
            v9 = sub_1004A2784(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100748014();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A13C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AC8, &qword_100939AC0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939AC0);
            v9 = sub_1004A280C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10074F3D4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1558(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939B38, &qword_100939B30);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B30);
            v9 = sub_1004A280C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A16E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939BB8, &qword_100939BB0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939BB0);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100923730);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1888(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B08, &qword_100939B00);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B00);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100923500);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1A28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AE8, &qword_100939AE0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939AE0);
            v9 = sub_1004A288C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000C518(&qword_1009242C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1BC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B20, &qword_100939B18);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B18);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &unk_10092E470);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1D64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B68, &qword_100939B60);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B60);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_10092E460);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1F04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939BA0, &qword_100939B98);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B98);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100939B90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A20A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939B78, &unk_100939AF0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&unk_100939AF0);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CGColor(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A2234(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939B88, &qword_100939B80);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B80);
            v9 = sub_1004A280C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugSetting();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A23C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939BD0, &qword_100939BC8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939BC8);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100939BC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A2564(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B50, &qword_100939B48);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B48);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100939B40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004A2704(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1004A2A6C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004A2784(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1004A2804;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004A280C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1004A2A68;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004A288C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1004A290C;
  }

  __break(1u);
  return result;
}

void (*sub_1004A2914(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1004A2994;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004A29A0()
{
  result = qword_100939AA8;
  if (!qword_100939AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939AA8);
  }

  return result;
}

uint64_t sub_1004A2A14(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004A2B2C()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30LocalizationTestViewController_objectGraph];
  v3 = qword_100920D30;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100939BE0;

  sub_1004A5954(v2, v41 + 8);
  *&v41[0] = v2;
  *(&v42 + 1) = v4;
  v39[7] = v41[2];
  v39[8] = v41[3];
  v39[9] = v42;
  v39[5] = v41[0];
  v39[6] = v41[1];
  v5 = objc_allocWithZone(sub_10000C518(&qword_100939C18));
  sub_1004A5CD8(v41, v39);
  v6 = sub_100751D54();
  [v1 addChildViewController:v6];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v6 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 addSubview:v11];

  sub_10000C518(&unk_1009231A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007A57A0;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v12 + 56) = v37;
    sub_100016C60(0, &qword_100922E80);
    isa = sub_100753294().super.isa;

    [v35 activateConstraints:isa];

    [v6 didMoveToParentViewController:v1];
    sub_1004A5D10(v41);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1004A30FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v64 = sub_10000C518(&qword_100939C68);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - v3;
  v76 = sub_10000C518(&qword_100939C70);
  v66 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v55 - v6;
  v61 = sub_100751B14();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000C518(&qword_100939C78);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v55 - v10;
  v74 = sub_10000C518(&qword_100939C80);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v55 - v14;
  v15 = *(a1 + 24);
  v87 = *(a1 + 8);
  v88 = v15;
  *v89 = *(a1 + 40);
  *&v89[9] = *(a1 + 49);
  sub_1004A3B94();
  sub_100751EB4();
  v72 = sub_100751F04();
  v71 = v16;
  v60 = v17;
  v81 = v18;

  if (v88)
  {
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_100754534(48);

    *&v84 = 0x100000000000002ELL;
    *(&v84 + 1) = 0x800000010077F100;
    sub_1007531B4(v87);
  }

  sub_100751EB4();
  v79 = sub_100751F04();
  v78 = v19;
  v57 = v20;
  v80 = v21;

  sub_100751EB4();
  v68 = sub_100751F04();
  v67 = v22;
  v56 = v23;
  v69 = v24;

  *&v84 = 0xD000000000000017;
  *(&v84 + 1) = 0x800000010077F0A0;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v55 - 2) = a1;
  sub_10000C518(&qword_100939C88);
  sub_1004A63D4();
  sub_1007520C4();
  v26 = enum case for Prominence.increased(_:);
  v27 = *(v7 + 104);
  v28 = v9;
  v29 = v9;
  v30 = v61;
  v27(v29, enum case for Prominence.increased(_:), v61);
  sub_1004A656C(&qword_100939CA0, &qword_100939C78, &unk_1007C4090, sub_1004A63D4);
  v31 = v58;
  sub_100751FF4();
  v55 = *(v7 + 8);
  v55(v28, v30);
  v32 = (*(v59 + 8))(v11, v31);
  v84 = xmmword_1007C3E80;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v55 - 2) = a1;
  sub_10000C518(&qword_100939CA8);
  sub_1004A64B4();
  v33 = v62;
  sub_1007520C4();
  v27(v28, v26, v30);
  sub_1004A656C(&qword_100939CC8, &qword_100939C68, &unk_1007C4080, sub_1004A64B4);
  v34 = v75;
  v35 = v64;
  sub_100751FF4();
  v55(v28, v30);
  (*(v63 + 8))(v33, v35);
  v36 = v60 & 1;
  LOBYTE(v84) = v60 & 1;
  v83 = v57 & 1;
  LOBYTE(v28) = v57 & 1;
  LODWORD(v63) = v57 & 1;
  v62 = *(v73 + 16);
  v37 = v70;
  v38 = v74;
  (v62)(v70, v77, v74);
  v39 = v66;
  v61 = *(v66 + 16);
  (v61)(v82, v34, v76);
  v40 = v65;
  v41 = v72;
  v42 = v71;
  *v65 = v72;
  v40[1] = v42;
  *(v40 + 16) = v36;
  v43 = v79;
  v40[3] = v81;
  v40[4] = v43;
  v40[5] = v78;
  *(v40 + 48) = v28;
  v44 = v68;
  v40[7] = v80;
  v40[8] = v44;
  v40[9] = v67;
  LODWORD(v64) = v56 & 1;
  *(v40 + 80) = v56 & 1;
  v40[11] = v69;
  v45 = sub_10000C518(&qword_100939CD0);
  (v62)(v40 + *(v45 + 80), v37, v38);
  v46 = v40 + *(v45 + 96);
  v47 = v76;
  (v61)(v46, v82, v76);
  sub_1004A65FC(v41, v42, v36);

  sub_1004A65FC(v79, v78, v63);

  v48 = v68;
  v49 = v67;
  LOBYTE(v45) = v64;
  sub_1004A65FC(v68, v67, v64);
  v50 = *(v39 + 8);

  v51 = v47;
  v50(v75, v47);
  v52 = *(v73 + 8);
  v53 = v74;
  v52(v77, v74);
  v50(v82, v51);
  v52(v70, v53);
  sub_1004A660C(v48, v49, v45);

  sub_1004A660C(v79, v78, v83);

  sub_1004A660C(v72, v71, v84);
}

uint64_t sub_1004A3B94()
{
  if (*(v0 + 18))
  {
    sub_100754534(20);

    v2 = 0x1000000000000012;
  }

  else
  {
    sub_100754534(41);

    v2 = 0x1000000000000027;
  }

  sub_1007531B4(*(v0 + 24));
  return v2;
}

uint64_t sub_1004A3C50()
{

  sub_10000C518(&qword_100939D08);
  sub_10002DDC8(&qword_100939D10, &qword_100939D08);
  sub_1004A6458();
  sub_1004A6670();
  return sub_1007520B4();
}

uint64_t sub_1004A3D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&qword_100939CD8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1007501F4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_100939CC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  if (*(a1 + 64))
  {
    v20[6] = 0xD000000000000016;
    v20[7] = 0x80000001007C40B0;
    v21 = 1;
    v20[3] = sub_100751B44();
    sub_1007501E4();
    v20[2] = sub_10000C518(&qword_100939C88);
    v20[4] = v4;
    v20[5] = a2;
    v20[1] = sub_10000C518(&qword_100939CE0);
    sub_10000C518(&qword_100939CE8);
    sub_1004A661C();
    sub_1004A63D4();
    sub_10002DDC8(&qword_100939CF8, &qword_100939CE0);
    sub_10002DDC8(&qword_100939D00, &qword_100939CE8);
    sub_1007501B4();
    (*(v9 + 16))(v6, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_10002DDC8(&qword_100939CB8, &qword_100939CC0);
    sub_100751D64();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    sub_100751EB4();
    v13 = sub_100751F04();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    *v6 = v13;
    *(v6 + 1) = v15;
    v6[16] = v17 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_10002DDC8(&qword_100939CB8, &qword_100939CC0);
    return sub_100751D64();
  }
}

uint64_t sub_1004A4174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3);
}

uint64_t sub_1004A41D4()
{

  sub_10000C518(&qword_100939D08);
  sub_10002DDC8(&qword_100939D10, &qword_100939D08);
  sub_1004A6458();
  sub_1004A6670();
  return sub_1007520B4();
}

uint64_t sub_1004A42AC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_1004A66C4(v8, &v7);
}

uint64_t sub_1004A4300()
{
  v1 = sub_10000C518(&qword_100939C40);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = v0[3];
  v13[2] = v0[2];
  v13[3] = v5;
  v13[4] = v0[4];
  v6 = v0[1];
  v13[0] = *v0;
  v13[1] = v6;
  v9 = v13;
  sub_10000C518(&qword_100939C48);
  sub_10002DDC8(&qword_100939C50, &qword_100939C48);
  sub_100751ED4();
  v11 = sub_1007477A4();
  v12 = sub_1004A6384(&qword_100939C58, &type metadata accessor for JSIntentDispatcher);
  sub_100752764();
  sub_100752D34();
  sub_10002DDC8(&qword_100939C60, &qword_100939C40);
  sub_100751F54();
  (*(v2 + 8))(v4, v1);
  return sub_10000C620(v10);
}

uint64_t sub_1004A4530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[6] != a1[4] || a1[7] != a1[5])
  {
    sub_100754754();
  }

  sub_100751E84();
  v5 = sub_100751F04();
  v7 = v6;
  v25 = v8;
  v10 = v9;

  v11 = sub_100751D14();
  v26[0] = 0;
  sub_1004A47F8(a1, &v39);
  v32 = *&v40[48];
  v33 = *&v40[64];
  v34 = *&v40[80];
  v35 = *&v40[96];
  v28 = v39;
  v29 = *v40;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v36[0] = v39;
  v36[1] = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[5] = *&v40[64];
  v36[6] = *&v40[80];
  v36[7] = *&v40[96];
  sub_100016B4C(&v28, &v37, &qword_100939D38);
  sub_10000C8CC(v36, &qword_100939D38);
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v37 = v11;
  *(&v37 + 1) = 0x4020000000000000;
  v38[0] = 0;
  *&v38[65] = *&v27[64];
  v13 = *&v27[48];
  v12 = *&v27[64];
  *&v38[49] = *&v27[48];
  *&v38[33] = *&v27[32];
  v15 = *&v27[16];
  v14 = *&v27[32];
  *&v38[17] = *&v27[16];
  *&v38[128] = *(&v35 + 1);
  *&v38[113] = *&v27[112];
  v17 = *&v27[96];
  v16 = *&v27[112];
  *&v38[97] = *&v27[96];
  v18 = *&v27[80];
  *&v38[81] = *&v27[80];
  v19 = *v27;
  *&v38[1] = *v27;
  v20 = *&v38[96];
  *(a2 + 128) = *&v38[80];
  *(a2 + 144) = v20;
  *(a2 + 160) = *&v38[112];
  v21 = *&v38[32];
  *(a2 + 64) = *&v38[16];
  *(a2 + 80) = v21;
  v22 = *&v38[64];
  *(a2 + 96) = *&v38[48];
  *(a2 + 112) = v22;
  v23 = *v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *&v40[81] = v18;
  *&v40[97] = v17;
  *v41 = v16;
  *&v40[17] = v15;
  *&v40[33] = v14;
  *&v40[49] = v13;
  *&v40[65] = v12;
  v26[152] = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 176) = *&v38[128];
  *&v39 = v11;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  *&v41[15] = *&v27[127];
  *&v40[1] = v19;
  sub_1004A65FC(v5, v7, v25 & 1);

  sub_100016B4C(&v37, v26, &qword_100939D40);
  sub_10000C8CC(&v39, &qword_100939D40);
  sub_1004A660C(v5, v7, v25 & 1);
}

uint64_t sub_1004A47F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v35 = a1[8];
  v38 = a1[9];

  sub_100751E84();
  v37 = sub_100751F04();
  v41 = v6;
  v42 = v7;
  v40 = v8;

  v9 = v4 == v2 && v5 == v3;
  if (!v9 && (sub_100754754() & 1) == 0)
  {
    v57._countAndFlagsBits = v2;
    v57._object = v3;
    sub_1007531B4(v57);
    sub_100751EB4();
    v20 = sub_100751F04();
    v22 = v21;
    v34 = v23;
    v25 = v24;

    v58._countAndFlagsBits = v4;
    v58._object = v5;
    sub_1007531B4(v58);
    sub_100751EB4();
    v26 = sub_100751F04();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    LOBYTE(v52[0]) = v34 & 1;
    sub_1004A65FC(v20, v22, v34 & 1);

    sub_1004A65FC(v26, v28, v30 & 1);

    sub_1004A660C(v26, v28, v30 & 1);

    sub_1004A660C(v20, v22, v34 & 1);

    sub_1004A65FC(v20, v22, v34 & 1);

    sub_1004A65FC(v26, v28, v30 & 1);
    *&v53 = v20;
    *(&v53 + 1) = v22;
    LOBYTE(v54) = v34 & 1;
    *(&v54 + 1) = v25;
    *&v55 = v26;
    *(&v55 + 1) = v28;
    LOBYTE(v56) = v30 & 1;
    *(&v56 + 1) = v32;

    v10._object = v38;
    if (v38)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = 0;
    v39 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10._object = v38;
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v52[0] = 0x203A65746F4ELL;
  *(&v52[0] + 1) = 0xE600000000000000;
  v10._countAndFlagsBits = v35;
  sub_1007531B4(v10);
  sub_100751EA4();
  v11 = sub_100751F04();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v15 & 1;
  v19 = v11;
  v39 = v13;
  sub_1004A65FC(v11, v13, v15 & 1);

LABEL_10:
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v51[0] = v53;
  v51[1] = v54;
  v50 = v56;
  v51[2] = v55;
  v51[3] = v56;
  v45 = v55;
  v46 = v56;
  v43 = v53;
  v44 = v54;
  sub_1004A65FC(v37, v41, v40 & 1);

  sub_1004A65FC(v37, v41, v40 & 1);

  sub_100016B4C(v51, v52, &qword_100939D48);
  sub_1004A6A80(v19, v39, v18, v17);
  sub_10000C8CC(&v53, &qword_100939D48);
  sub_1004A6AC4(v19, v39, v18, v17);
  sub_1004A660C(v37, v41, v40 & 1);

  *a2 = v37;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v43;
  *(a2 + 48) = v44;
  *(a2 + 64) = v45;
  *(a2 + 80) = v46;
  *(a2 + 96) = v19;
  *(a2 + 104) = v39;
  *(a2 + 112) = v18;
  *(a2 + 120) = v17;
  sub_1004A6AC4(v19, v39, v18, v17);
  v52[0] = v47;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v50;
  sub_10000C8CC(v52, &qword_100939D48);
  sub_1004A660C(v37, v41, v40 & 1);
}

double sub_1004A4CA4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28[1] = v1[1];
  v4 = v1[3];
  v28[2] = v1[2];
  v28[3] = v4;
  v28[4] = v1[4];
  v28[0] = v3;
  v5 = sub_100751C84();
  v27 = 0;
  sub_1004A4530(v28, &v14);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v41[8] = v22;
  v41[9] = v23;
  v41[10] = v24;
  v41[4] = v18;
  v41[5] = v19;
  v41[6] = v20;
  v41[7] = v21;
  v41[0] = v14;
  v41[1] = v15;
  v40 = v25;
  v42 = v25;
  v41[2] = v16;
  v41[3] = v17;
  sub_100016B4C(&v29, v13, &qword_100939D30);
  sub_10000C8CC(v41, &qword_100939D30);
  *(&v26[8] + 7) = v37;
  *(&v26[9] + 7) = v38;
  *(&v26[10] + 7) = v39;
  *(&v26[11] + 7) = v40;
  *(&v26[4] + 7) = v33;
  *(&v26[5] + 7) = v34;
  *(&v26[6] + 7) = v35;
  *(&v26[7] + 7) = v36;
  *(v26 + 7) = v29;
  *(&v26[1] + 7) = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[3] + 7) = v32;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_1004A4EB4()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v11 = 0;
    v4 = [v3 resultWithError:&v11];

    if (!v4)
    {
      v9 = v11;
      sub_100741134();

      swift_willThrow();

      v2 = 0;
      goto LABEL_7;
    }

    v5 = v11;
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v8 = sub_100753094();

  return v8;
}

__n128 sub_1004A503C@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1004A5EC8(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1004A508C()
{
  v0 = sub_100741494();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100939C30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007C3E90;
  v72 = 0x800000010077EBD0;
  v75._countAndFlagsBits = 0xD000000000000016;
  v75._object = 0x800000010077EC00;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v5 = sub_1007458B4(v75, v84);
  v7 = v6;
  sub_100741484();
  v8 = sub_100741464();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  v74 = v1 + 8;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = v72;
  *(v4 + 48) = 0xD000000000000025;
  *(v4 + 56) = v12;
  *(v4 + 64) = 1852141647;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v5;
  *(v4 + 88) = v7;
  v72 = 0x800000010077EC20;
  *(v4 + 96) = 0u;
  v76._countAndFlagsBits = 0x525F5245544F4F46;
  v76._object = 0xED00004D45454445;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v13 = sub_1007458B4(v76, v85);
  v15 = v14;
  sub_100741484();
  v16 = sub_100741464();
  v18 = v17;
  v11(v3, v0);
  *(v4 + 112) = v16;
  *(v4 + 120) = v18;
  v19 = v72;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = v19;
  *(v4 + 144) = 0x6D6565646552;
  *(v4 + 152) = 0xE600000000000000;
  *(v4 + 160) = v13;
  *(v4 + 168) = v15;
  v72 = 0x800000010077EC50;
  *(v4 + 176) = 0u;
  v77._object = 0x800000010076D9F0;
  v77._countAndFlagsBits = 0xD000000000000013;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v70 = sub_10074B194(v77, 2, v86);
  v21 = v20;
  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v73 = v0;
  v11(v3, v0);
  *(v4 + 192) = v22;
  *(v4 + 200) = v24;
  v25 = v72;
  *(v4 + 208) = 0xD000000000000041;
  *(v4 + 216) = v25;
  *(v4 + 224) = 0x676E697461522032;
  *(v4 + 232) = 0xE900000000000073;
  *(v4 + 240) = v70;
  *(v4 + 248) = v21;
  v72 = 0x800000010077ECA0;
  *(v4 + 256) = 0u;
  v78._object = 0x800000010076D9F0;
  v78._countAndFlagsBits = 0xD000000000000013;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v26 = sub_10074B194(v78, 1, v87);
  v28 = v27;
  sub_100741484();
  v29 = sub_100741464();
  v31 = v30;
  v11(v3, v0);
  *(v4 + 272) = v29;
  *(v4 + 280) = v31;
  v32 = v72;
  *(v4 + 288) = 0xD000000000000041;
  *(v4 + 296) = v32;
  *(v4 + 304) = 0x676E697461522031;
  *(v4 + 312) = 0xE800000000000000;
  *(v4 + 320) = v26;
  *(v4 + 328) = v28;
  v72 = 0x800000010077ED30;
  v79._countAndFlagsBits = 0xD000000000000028;
  *(v4 + 336) = 0u;
  v79._object = 0x800000010077ED50;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v33 = sub_10074B194(v79, 3, v88);
  v35 = v34;
  sub_100741484();
  v36 = sub_100741464();
  v38 = v37;
  v39 = v73;
  v71 = v11;
  v11(v3, v73);
  *(v4 + 352) = v36;
  *(v4 + 360) = v38;
  *(v4 + 368) = 0xD000000000000036;
  *(v4 + 376) = 0x800000010077ECF0;
  v40 = v72;
  *(v4 + 384) = 0xD000000000000017;
  *(v4 + 392) = v40;
  *(v4 + 400) = v33;
  *(v4 + 408) = v35;
  v72 = 0x800000010077ED80;
  v70 = 0x800000010077EDD0;
  *(v4 + 416) = 0u;
  v80._object = 0x800000010077EDF0;
  v80._countAndFlagsBits = 0xD00000000000002FLL;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v41 = sub_10074B194(v80, 1, v89);
  v43 = v42;
  sub_100741484();
  v44 = sub_100741464();
  v46 = v45;
  v11(v3, v39);
  *(v4 + 432) = v44;
  *(v4 + 440) = v46;
  v47 = v72;
  *(v4 + 448) = 0xD000000000000045;
  *(v4 + 456) = v47;
  v48 = v70;
  *(v4 + 464) = 0xD000000000000014;
  *(v4 + 472) = v48;
  *(v4 + 480) = v41;
  *(v4 + 488) = v43;
  v72 = 0x800000010077EE70;
  *(v4 + 496) = 0u;
  v81._object = 0x800000010077EDF0;
  v81._countAndFlagsBits = 0xD00000000000002FLL;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v70 = sub_10074B194(v81, 2, v90);
  v50 = v49;
  sub_100741484();
  v51 = sub_100741464();
  v53 = v52;
  v54 = v71;
  v71(v3, v39);
  *(v4 + 512) = v51;
  *(v4 + 520) = v53;
  *(v4 + 528) = 0xD000000000000045;
  *(v4 + 536) = 0x800000010077EE20;
  *(v4 + 544) = 0xD000000000000015;
  *(v4 + 552) = 0x800000010077EE70;
  *(v4 + 560) = v70;
  *(v4 + 568) = v50;
  v70 = 0x800000010077EE90;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  *(v4 + 576) = 0u;
  v82._object = 0x800000010077EEF0;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v55 = sub_10074B194(v82, 2, v91);
  v57 = v56;
  sub_100741484();
  v58 = sub_100741464();
  v60 = v59;
  v61 = v73;
  v54(v3, v73);
  *(v4 + 592) = v58;
  *(v4 + 600) = v60;
  *(v4 + 608) = 0xD000000000000050;
  *(v4 + 616) = v70;
  *(v4 + 624) = 0xD000000000000015;
  *(v4 + 632) = v72;
  *(v4 + 640) = v55;
  *(v4 + 648) = v57;
  v83._countAndFlagsBits = 0xD000000000000011;
  *(v4 + 656) = 0u;
  v83._object = 0x800000010077EF50;
  v62 = sub_10074CF34(v83);
  v64 = v63;
  sub_100741484();
  v65 = sub_100741464();
  v67 = v66;
  result = (v54)(v3, v61);
  *(v4 + 672) = v65;
  *(v4 + 680) = v67;
  *(v4 + 688) = 0xD000000000000023;
  *(v4 + 696) = 0x800000010077EF20;
  *(v4 + 704) = 0xB9B4E88D85E5;
  *(v4 + 712) = 0xA600000000000000;
  *(v4 + 720) = v62;
  *(v4 + 728) = v64;
  *(v4 + 736) = 0xD00000000000002FLL;
  *(v4 + 744) = 0x800000010077EF70;
  qword_100939BE0 = v4;
  return result;
}

void sub_1004A5788(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext:a1];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 valueWithObject:sub_100754794() inContext:a1];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_100753D94();
      a2[3] = sub_100016C60(0, &qword_100939D60);
      a2[4] = &protocol witness table for JSValue;

      *a2 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004A58B8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1004A5928@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004A6B08(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1004A5954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_100947360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1004A4EB4();
  v31 = v9;
  v32 = v8;
  v36 = 0;
  v37 = 0xE000000000000000;

  sub_100754534(64);
  v38._object = 0x800000010077EB90;
  v38._countAndFlagsBits = 0x1000000000000032;
  sub_1007531B4(v38);
  v39._object = 0x8000000100766B90;
  v39._countAndFlagsBits = 0xD000000000000013;
  sub_1007531B4(v39);
  v40._countAndFlagsBits = 0x206562206F742022;
  v40._object = 0xEC00000065757274;
  sub_1007531B4(v40);
  v29 = v37;
  v30 = v36;
  sub_100752664();
  sub_100752854();
  sub_100752844();
  sub_100752534();

  (*(v5 + 8))(v7, v4);
  v10 = v36;
  sub_100744AC4();
  sub_100752764();
  v33 = a1;
  sub_100752D34();
  v28 = v36;
  v11 = sub_100744904();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v13 == 0x2D736E61482D687ALL && v14 == 0xEA00000000004E43)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_100754754();
  }

  v26 = v15 & 1;
  v27 = v10 & 1;
  v16 = [objc_opt_self() mainBundle];
  v17._rawValue = &off_100862CC0;
  v18 = sub_100753F84(v17);
  v20 = v19;

  v36 = v18;
  v37 = v20;
  v34 = 26746;
  v35 = 0xE200000000000000;
  sub_1004A5D40();
  sub_1004A5D94();
  LOBYTE(v16) = sub_100752FC4();

  LOBYTE(v20) = v16 & 1;
  v22 = v31;
  v21 = v32;
  v36 = v32;
  v37 = v31;
  v34 = 0x312D313434333431;
  v35 = 0xE800000000000000;
  LOBYTE(v16) = sub_100752FC4();

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v26;
  *(a2 + 17) = v20;
  *(a2 + 18) = v16 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  v24 = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v24;
  *(a2 + 56) = v27;
  return result;
}

unint64_t sub_1004A5D40()
{
  result = qword_100939C20;
  if (!qword_100939C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C20);
  }

  return result;
}

unint64_t sub_1004A5D94()
{
  result = qword_100939C28;
  if (!qword_100939C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C28);
  }

  return result;
}

uint64_t sub_1004A5E00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004A5E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A5EC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v4 = sub_100741494();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752384();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = 0xE400000000000000;
  sub_100752394();
  v53 = sub_100752374();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v17, v6);
  if (v20)
  {
    v58 = v20;
    v22 = 0x6465746365707865;
    v18 = 0xE800000000000000;
    sub_100752394();
    v51 = sub_100752374();
    v24 = v23;
    v21(v14, v6);
    v25 = a1;
    if (v24)
    {
      v50 = v24;
      v22 = 0x6C6175746361;
      sub_100752394();
      v26 = sub_100752374();
      v28 = v27;
      v21(v11, v6);
      if (v28)
      {
        v48 = v26;
        v49 = v28;
        v29 = v52;
        sub_100752394();
        v30 = v21;
        v31 = sub_100752374();
        v33 = v32;
        v30(v29, v6);
        v34 = v54;
        sub_100741484();
        v35 = sub_100741464();
        v37 = v36;
        v38 = sub_1007524B4();
        (*(*(v38 - 8) + 8))(v59, v38);
        v30(v25, v6);
        result = (*(v55 + 8))(v34, v56);
        v40 = v57;
        *v57 = v35;
        v40[1] = v37;
        v41 = v58;
        v40[2] = v53;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v51;
        v40[5] = v42;
        v43 = v49;
        v40[6] = v48;
        v40[7] = v43;
        v40[8] = v31;
        v40[9] = v33;
        return result;
      }

      v44 = v21;

      v18 = 0xE600000000000000;
    }

    else
    {
      v44 = v21;
    }
  }

  else
  {
    v44 = v21;
    v25 = a1;
    v22 = 1701667182;
  }

  v45 = sub_100752E64();
  sub_1004A6384(&qword_100939C38, &type metadata accessor for JSONError);
  swift_allocError();
  *v46 = v22;
  v46[1] = v18;
  v46[2] = &type metadata for LocalizationTestCase;
  (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
  swift_willThrow();
  v47 = sub_1007524B4();
  (*(*(v47 - 8) + 8))(v59, v47);
  return v44(v25, v6);
}

uint64_t sub_1004A6384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004A63D4()
{
  result = qword_100939C90;
  if (!qword_100939C90)
  {
    sub_10000C724(&qword_100939C88);
    sub_1004A6458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C90);
  }

  return result;
}

unint64_t sub_1004A6458()
{
  result = qword_100939C98;
  if (!qword_100939C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C98);
  }

  return result;
}

unint64_t sub_1004A64B4()
{
  result = qword_100939CB0;
  if (!qword_100939CB0)
  {
    sub_10000C724(&qword_100939CA8);
    sub_10002DDC8(&qword_100939CB8, &qword_100939CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939CB0);
  }

  return result;
}

uint64_t sub_1004A656C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004A65FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1004A660C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1004A661C()
{
  result = qword_100939CF0;
  if (!qword_100939CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939CF0);
  }

  return result;
}

unint64_t sub_1004A6670()
{
  result = qword_100939D18;
  if (!qword_100939D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D18);
  }

  return result;
}

__n128 sub_1004A66FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004A6710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1004A6758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A67A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1004A67F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}