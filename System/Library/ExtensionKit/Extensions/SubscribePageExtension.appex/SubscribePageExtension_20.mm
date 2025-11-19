uint64_t sub_1002314B4()
{
  sub_10000C620(v0 + 32);

  sub_10000C620(v0 + 88);
  sub_10000C620(v0 + 128);
  sub_10000C620(v0 + 168);
  sub_10000C620(v0 + 208);
  sub_10000C620(v0 + 248);
  sub_10000C620(v0 + 312);
  if (*(v0 + 400))
  {
    sub_10000C620(v0 + 376);
  }

  if (*(v0 + 440))
  {
    sub_10000C620(v0 + 416);
  }

  if (*(v0 + 480))
  {
    sub_10000C620(v0 + 456);
  }

  sub_10000C620(v0 + 496);
  if (*(v0 + 560))
  {
    sub_10000C620(v0 + 536);
  }

  if (*(v0 + 600))
  {
    sub_10000C620(v0 + 576);
  }

  if (*(v0 + 640))
  {
    sub_10000C620(v0 + 616);
  }

  if (*(v0 + 680))
  {
    sub_10000C620(v0 + 656);
  }

  if (*(v0 + 720))
  {
    sub_10000C620(v0 + 696);
  }

  if (*(v0 + 760))
  {
    sub_10000C620(v0 + 736);
  }

  return _swift_deallocObject(v0, 792, 7);
}

char *sub_1002315F8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  sub_10074A1C4();
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView();
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView] + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pagingDelegate + 8) = &off_10086D990;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC22SubscribePageExtensionP33_1716A80D629D077B00382A9108BDDA4211PageControl_delegate + 8) = &off_10086D980;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = sub_10074F3E4();
  v32[3] = v21;
  v32[4] = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v22 = sub_10000D134(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = sub_10074FC74();
  sub_10000C620(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControlProgress] = v23;

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
    sub_100233434();
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

void sub_100231AA8(char a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = sub_10074F3E4();
  v12 = v3;
  v4 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v13 = v4;
  v5 = sub_10000D134(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = sub_10074FC74();
  sub_10000C620(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer))
      {
        sub_100232B60(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_10000D134(v11);
      v7(v9, v6, v3);
      v10 = sub_10074FC74();
      sub_10000C620(v11);
      if ((v10 & 1) == 0)
      {
        sub_100234A3C(0);
      }
    }
  }
}

void sub_100231BFC()
{
  v1 = sub_10074F3E4();
  v10 = v1;
  v2 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v11 = v2;
  v3 = sub_10000D134(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = sub_10074FC74();
  sub_10000C620(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_10000D134(v9);
        v5(v7, v4, v1);
        v8 = sub_10074FC74();
        sub_10000C620(v9);
        if ((v8 & 1) == 0)
        {
          sub_100234A3C(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer))
    {
      sub_100232B60(0.0);
    }
  }
}

id sub_100231D78()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView];
  sub_1007477B4();
  [v1 setFrame:?];
  sub_1007477B4();
  sub_100753B14();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl];
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

id sub_100231F08()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_100754664();
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
        v6 = sub_100754574();
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

id sub_10023204C(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
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
        v8 = sub_100754574();
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
    v4 = sub_100754664();
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
        v13 = sub_100754574();
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
        v16 = sub_100754664();
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

      *&v13[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = sub_100754664();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = sub_100754664();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setHidden:v22 < 2];
  sub_10053C8B8(a1, a2);

  return [v26 setNeedsLayout];
}

uint64_t sub_100232334(int a1, int a2)
{
  v48 = sub_10074A324();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
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
        v20 = sub_100754574();
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
        v8 = sub_100754664();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_100442148(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_100016C60(0, &qword_10092BE20);

          isa = sub_100753294().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_1001578EC(v29);

          v33 = sub_100753294().super.isa;
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
          [*&v23[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem) || (, v37 = sub_100745D64(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        sub_10074A344();

        v39 = sub_10074A314();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_100442148(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_100016C60(0, &qword_10092BE20);

      v16 = sub_100753294().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_1001578EC(v14);

      v18 = sub_100753294().super.isa;
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

void sub_100232884()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = sub_10074F3E4();
    v26 = v14;
    v15 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
    v27 = v15;
    v16 = sub_10000D134(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = sub_10074FC74();
    sub_10000C620(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_10000D134(v25);
    v18(v23, v17, v14);
    v24 = sub_10074FC74();
    sub_10000C620(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_100234A3C(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = sub_10074F3E4();
  v26 = v6;
  v7 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v27 = v7;
  v8 = sub_10000D134(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = sub_10074FC74();
  sub_10000C620(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_10000D134(v25);
    v10(v20, v9, v6);
    v21 = sub_10074FC74();
    sub_10000C620(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_10053CDE0(v12);
}

void sub_100232B60(double a1)
{
  v3 = sub_1007521E4();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100752224();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100752244();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = sub_10074A204();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074F3E4();
  v50 = v14;
  v51 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v15 = sub_10000D134(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = sub_10074FC74();
  sub_10000C620(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = sub_10074A1D4();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (sub_100754664() < 2)
        {
          return;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        sub_10074A1F4();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_100234C9C;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_1001A67C4;
        v50 = &unk_10086DA48;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_100234A3C(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_100016C60(0, &qword_100926D00);
          v28 = sub_100753774();
          sub_100752234();
          v29 = v38;
          sub_1007522B4();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_100234CDC;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_1000CF7B0;
          v50 = &unk_10086DA98;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          sub_100752204();
          aBlock = _swiftEmptyArrayStorage;
          sub_100234CE4(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000C518(&unk_10092F750);
          sub_1000A8054();
          v34 = v42;
          v35 = v45;
          sub_1007543A4();
          sub_100753734();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_1002332E0(void *a1)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView);

      sub_10053CDE0(1u);
    }

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_100234A3C(0);
    }
  }
}

void sub_100233398(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_100233434()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10074F3E4();
  v10 = v1;
  v11 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v2 = sub_10000D134(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = sub_10074FC74();
  sub_10000C620(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_100234C7C;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1001A67C4;
    v10 = &unk_10086DA20;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_100233654()
{
  v3 = sub_10074A204();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
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

          v11 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView];

          v16 = *(*(*(v11 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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

          v19 = *(v18 + qword_10093CB70);
          if (!v19)
          {
            v11 = v12;
            goto LABEL_35;
          }

          v11 = v19;
          v20 = sub_100743B74();
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
          if (vabdd_f64(v2, Seconds) > 0.5 || (swift_beginAccess(), (v21 = swift_unknownObjectWeakLoadStrong()) == 0) || (v22 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollConfiguration, v23 = v21, swift_beginAccess(), (*(v4 + 16))(v6, &v23[v22], v3), LOBYTE(v22) = sub_10074A1D4(), v23, (*(v4 + 8))(v6, v3), (v22 & 1) == 0) || (swift_beginAccess(), (v13 = swift_unknownObjectWeakLoadStrong()) == 0))
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
              v37 = *(v36 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControlProgress);
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

          v24 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews];
          if (!(v24 >> 62))
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_17;
          }

LABEL_40:
          v41 = v13;
          v25 = sub_100754664();
          v13 = v41;
LABEL_17:

          if (v25 >= 2)
          {
            swift_beginAccess();
            v26 = swift_unknownObjectWeakLoadStrong();
            if (!v26 || (v27 = v26[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isVoiceOverRunning], v26, (v27 & 1) == 0))
            {
              swift_beginAccess();
              v28 = swift_unknownObjectWeakLoadStrong();
              if (!v28 || (v29 = v28[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isReducedMotionEnabled], v28, (v29 & 1) == 0))
              {
                swift_beginAccess();
                v30 = swift_unknownObjectWeakLoadStrong();
                if (!v30 || (v31 = v30[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively], v30, (v31 & 1) == 0))
                {
                  swift_beginAccess();
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView);

                    sub_10053CDE0(1u);
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

      v14 = sub_100754574();
      goto LABEL_7;
    }
  }
}

void sub_100233B94(uint64_t a1, uint64_t a2)
{
  v5 = sub_100743B64();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092E840);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_100234B34(v2 + v16, v19);
  if (v20)
  {
    sub_10000C824(v19, v18);
    sub_100234BA4(v19);
    sub_10000C888(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem))
    {

      sub_100745D14();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_10048C36C(v12);
    sub_10000C620(v18);
  }

  else
  {
    sub_100234BA4(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_100233E10(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_100234B34(v3 + v10, v25);
  if (!v26)
  {
    return sub_100234BA4(v25);
  }

  sub_10000C824(v25, v24);
  sub_100234BA4(v25);
  sub_10000C888(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
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
        v14 = sub_100754574();
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
          v12 = sub_100754664();
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
    v11 = sub_100754664();
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
        v19 = sub_100754574();
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

  sub_10048E528(v3, v21);

  return sub_10000C620(v24);
}

void sub_1002341F4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3())
  {
    *(v3 + v5) = a3();
    v7 = sub_10074F3E4();
    v16 = v7;
    v8 = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
    v17 = v8;
    v9 = sub_10000D134(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = sub_10074FC74();
    sub_10000C620(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_10000D134(v15);
        v11(v13, v10, v7);
        v14 = sub_10074FC74();
        sub_10000C620(v15);
        if ((v14 & 1) == 0)
        {
          sub_100234A3C(0);
        }
      }

      else
      {
        sub_100232B60(0.0);
      }
    }
  }
}

uint64_t sub_100234370(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_100740EA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView()
{
  result = qword_10092E800;
  if (!qword_10092E800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100234594()
{
  result = sub_10074A204();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100234690(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_10053CDE0(a3);
    swift_unknownObjectRelease();
  }
}

id sub_100234860(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002348D4()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_10074A1C4();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControlProgress) = 0;
  sub_100754644();
  __break(1u);
}

void sub_100234A3C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollTimer) = a1;
  v4 = sub_10074F3E4();
  v7[3] = v4;
  v7[4] = sub_100234CE4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v5 = sub_10000D134(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = sub_10074FC74();
  sub_10000C620(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_100234B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100939450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100234BA4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100939450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100234C0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100234C44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100234C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100234CA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100234CE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100234D3C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100234DF0(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  [a1 contentInset];
  return (*(v1 + 16))(v4 + v6 + v7 > *(v1 + 32));
}

uint64_t sub_100234F1C()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DF4();
  byte_10097E8B0 = 1;
  qword_10097E8B8 = result;
  return result;
}

uint64_t sub_100234F6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_itemType;
  v13 = sub_100749D24();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = sub_100745C64();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v46.receiver = v5;
  v46.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_10000C518(&unk_1009231A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A5CF0;
  *(v25 + 32) = v24;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007A5CF0;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007A5CF0;
  *(v29 + 32) = v28;
  sub_10000C518(&qword_10092E9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5620;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = sub_100620BCC(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_1009423E0);
  result = swift_arrayDestroy();
  if (v34 >> 62)
  {
    result = sub_100754664();
    v36 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  if (v36 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v36; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = sub_100754574();
    }

    else
    {
      v38 = *(v34 + 8 * i + 32);
    }

    v39 = v38;
    [v22 addSubview:{v38, v44}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v40 = *&v22[v23];
  if (qword_100920670 != -1)
  {
    v43 = *&v22[v23];
    swift_once();
    v40 = v43;
  }

  v41 = qword_10092E970;
  [v40 setTintColor:{qword_10092E970, v44}];
  [*&v22[v45] setSemanticContentAttribute:3];
  [*&v22[v45] setTintColor:v41];
  sub_100235428();
  sub_10000C518(&unk_1009249D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007A5A00;
  *(v42 + 32) = sub_1007519E4();
  *(v42 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v22;
}

id sub_100235428()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v8._object = 0x8000000100772020;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1007458B4(v8, v9);
  v2 = sub_100753064();

  [v1 setText:v2];

  if (qword_100920670 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_10092E970];
  [v1 setNumberOfLines:1];
  sub_1007509A4();
  if (qword_100920220 != -1)
  {
    swift_once();
  }

  v3 = sub_10074A584();
  v4 = sub_10000D0FC(v3, qword_10097DA20);
  v7[3] = v3;
  v7[4] = sub_1002371F8();
  v5 = sub_10000D134(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_100745BC4();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_1002355C4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_100753824();
  if (qword_100920220 != -1)
  {
    swift_once();
  }

  v4 = sub_10074A584();
  sub_10000D0FC(v4, qword_10097DA20);
  v5.super.isa = v3;
  v6.super.isa = sub_10074A564(v5).super.isa;
  v7 = [v2 preferredContentSizeCategory];
  v8 = sub_100753924();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = [objc_opt_self() configurationWithFont:v6.super.isa scale:v9];

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v12 = v10;
  [v11 setPreferredSymbolConfiguration:v12];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v12];
}

void sub_1002358D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_100753064();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_100235940(uint64_t a1)
{
  sub_10007271C(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return sub_1007514D4();
}

id sub_100235994()
{
  if (qword_100920658 != -1)
  {
    swift_once();
  }

  v1 = qword_10097E8B8;
  byte_10092E968 = byte_10097E8B0;
  qword_10092E970 = qword_10097E8B8;

  return v1;
}

uint64_t sub_100235A08()
{
  ObjectType = swift_getObjectType();
  v18 = sub_100750354();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074DD44();
  __chkstk_darwin(v5 - 8);
  v17 = sub_10074DD54();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_100016C60(0, &qword_10092BFC0);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_10074DD34();
  sub_10074DD04();
  sub_1007477B4();
  sub_10074DD24();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_100235CC8()
{
  v1 = sub_10074DD44();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074DD54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v16 = sub_100016C60(0, &qword_10092BFC0);
  v17 = &protocol witness table for UIView;
  v15[10] = &protocol witness table for UIView;
  v15[11] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v15[9] = v16;
  v15[6] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v15[4] = sub_100745C84();
  v15[5] = &protocol witness table for UILabel;
  v15[1] = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  sub_10074DD34();
  sub_10074DD04();
  sub_10074DD14();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView()
{
  result = qword_10092E9C0;
  if (!qword_10092E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10023602C()
{
  sub_1000D9E5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002360F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30);
}

uint64_t sub_10023615C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30);
  return swift_endAccess();
}

uint64_t sub_100236238(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100236304(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002363C4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100236408(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1002364B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0);
}

uint64_t sub_100236520(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0);
  return swift_endAccess();
}

id sub_100236614()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  LOBYTE(v3._countAndFlagsBits) = sub_100747864();
  v3._object = 0x8000000100772020;
  if (v3._countAndFlagsBits)
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    sub_10074CF34(v3);
  }

  else
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_1007458B4(v3, v15);
  }

  v4 = sub_100753064();

  [v2 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  if (qword_100920668 != -1)
  {
    swift_once();
  }

  v6 = qword_10092E960;
  v7 = [v5 layer];
  [v7 removeAllAnimations];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [v5 setImage:v8];
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  if (qword_100920660 != -1)
  {
    swift_once();
  }

  v10 = qword_10092E958;
  v11 = [v9 layer];
  [v11 removeAllAnimations];

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return [v9 setImage:v12];
}

double sub_1002367DC(uint64_t a1, void *a2)
{
  v77 = a2;
  v64 = a1;
  v2 = sub_10074DD44();
  __chkstk_darwin(v2 - 8);
  v73 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10074DD54();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100750B84();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100750A64();
  v80 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v62 - v8;
  __chkstk_darwin(v9);
  v79 = &v62 - v10;
  v63 = sub_100750BD4();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750E94();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  sub_100750E84();
  sub_1007509A4();
  if (qword_100920220 != -1)
  {
    swift_once();
  }

  v23 = sub_10074A584();
  v24 = sub_10000D0FC(v23, qword_10097DA20);
  v88[3] = v23;
  v88[4] = sub_1002371F8();
  v25 = sub_10000D134(v88);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  sub_100750DE4();
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_10000C620(v88);
  sub_100750E74();
  v78 = v13;
  v67 = v14 + 8;
  v66 = v26;
  v26(v19, v13);
  LOBYTE(v27._countAndFlagsBits) = sub_100747864();
  v27._object = 0x8000000100772020;
  if (v27._countAndFlagsBits)
  {
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    sub_10074CF34(v27);
  }

  else
  {
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    sub_1007458B4(v27, v89);
  }

  v28 = v68;
  v29 = *(v14 + 16);
  v68 = v22;
  v29(v19, v22, v78);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750BA4();
  (*(v62 + 8))(v12, v63);
  v30 = v65;
  sub_100750A54();
  v31 = v77;
  v32 = [v77 traitCollection];
  v33.super.isa = sub_100753824();
  isa = v33.super.isa;
  v35.super.isa = sub_10074A564(v33).super.isa;
  v36 = [v32 preferredContentSizeCategory];
  v37 = sub_100753924();

  if (v37)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v39 = [objc_opt_self() configurationWithFont:v35.super.isa scale:v38];

  v40 = v79;
  sub_100750A44();

  v41 = v80;
  v42 = v72;
  v65 = *(v80 + 8);
  v64 = v80 + 8;
  (v65)(v30, v72);
  if (qword_100920660 != -1)
  {
    swift_once();
  }

  v43 = qword_10092E958;
  v44 = *(v41 + 16);
  v80 = v41 + 16;
  v44(v28, v40, v42);
  v45 = v43;
  v46 = v69;
  sub_100750B94();
  v47 = [v31 traitCollection];
  sub_100750B74();
  v63 = v48;
  v62 = v49;

  v50 = *(v70 + 8);
  v51 = v71;
  v50(v46, v71);
  if (qword_100920668 != -1)
  {
    swift_once();
  }

  v52 = qword_10092E960;
  v44(v28, v40, v42);
  v53 = v52;
  sub_100750B94();
  v54 = [v31 traitCollection];
  sub_100750B74();

  v50(v46, v51);
  v55 = sub_100750F34();
  swift_allocObject();
  v56 = sub_100750F04();
  swift_allocObject();
  v57 = sub_100750F04();
  v86 = v55;
  v87 = &protocol witness table for LayoutViewPlaceholder;
  v84 = &protocol witness table for LayoutViewPlaceholder;
  v85 = v56;
  v83 = v55;
  v82 = v57;
  sub_10000C824(v88, v81);

  sub_10074DD34();
  v58 = v74;
  sub_10074DD04();
  sub_10074DD14();
  v60 = v59;

  (*(v75 + 8))(v58, v76);
  (v65)(v79, v42);
  sub_10000C620(v88);
  v66(v68, v78);
  return v60;
}

unint64_t sub_1002371F8()
{
  result = qword_100934700;
  if (!qword_100934700)
  {
    sub_10074A584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934700);
  }

  return result;
}

uint64_t sub_100237250()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = (*(v1 + 88))(v3, v0);
  if (v12 == enum case for Shelf.ContentType.annotation(_:))
  {
    v13 = 1;
    return v13 & 1;
  }

  if (v12 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v13 = sub_10055CFA8();
    (*(v1 + 8))(v3, v0);
    return v13 & 1;
  }

  result = sub_100746954();
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    v11(v7, v4);
    v16 = *(v17[1] + 16);

    v13 = v15 < v16;
    return v13 & 1;
  }

  __break(1u);
  return result;
}

char *sub_100237548(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_separatorInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v10 = UIEdgeInsetsZero.top;
  v10[1] = left;
  v10[2] = bottom;
  v10[3] = right;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_lineView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_lineView;
  v17 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_lineView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [v15 addSubview:*&v15[v16]];
  return v15;
}

void sub_1002377B8()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  sub_1007477B4();
  sub_100753B14();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  sub_100751364();

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetMidY(v13);
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27SeparatorSpacerReusableView_lineView];
  sub_1007477B4();
  sub_100753B24();
  [v10 setFrame:?];
}

unint64_t sub_1002379BC()
{
  result = qword_10092EAD8;
  if (!qword_10092EAD8)
  {
    sub_10074C734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092EAD8);
  }

  return result;
}

uint64_t sub_100237A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_100742D64();
    v8 = a1;
    sub_10074C724();
    sub_100742D04();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a4;
    v10 = sub_100016C60(0, &qword_100926D00);
    swift_retain_n();

    v14[3] = v10;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = sub_100753774();
    sub_100752D64();

    return sub_10000C620(v14);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v12 = sub_100752E44();
    sub_10000D0FC(v12, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_100238B20();
    swift_allocError();
    *v13 = 0;
    sub_100752DA4();
  }
}

void sub_100237CE8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(GKGameInternal) init];
  sub_10074C724();
  v8 = sub_100753064();

  [v7 setBundleIdentifier:v8];

  v9 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v7];
  v10 = objc_opt_self();
  sub_10000C518(&qword_1009232C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007A5A00;
  *(v11 + 32) = sub_10074C714();
  *(v11 + 40) = v12;
  isa = sub_100753294().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v6;
  v14[4] = a4;
  v18[4] = sub_100238BD0;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10023880C;
  v18[3] = &unk_10086DBD8;
  v15 = _Block_copy(v18);
  v16 = v9;

  v17 = v6;

  [v10 loadLeaderboardsWithIDs:isa setIdentifier:0 game:v16 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100237EF4(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v62 = a1;
  v63 = a3;
  v58 = sub_100742CF4();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007493D4();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074A304();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752614();
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v20 - 8);
  v22 = &v50 - v21;
  v23 = sub_10074F4D4();
  __chkstk_darwin(v23);
  v26 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v27 = sub_100752E44();
    sub_10000D0FC(v27, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    swift_getErrorValue();
    v28 = v64;
    v29 = v65;
    *(&v70 + 1) = v65;
    v30 = sub_10000D134(&v69);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_100752444();
    sub_1000277BC(&v69);
    sub_100752D04();

    sub_100752DA4();
  }

  v53 = v11;
  v54 = v16;
  v55 = v8;
  v33 = v60;
  v32 = v61;
  v34 = v62;
  if (v62)
  {
    if (v62 >> 62)
    {
      v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v13;
      v47 = v25;
      result = sub_100754664();
      v25 = v47;
      v13 = v52;
      v26 = v51;
      if (result)
      {
LABEL_8:
        v52 = v13;
        v62 = v19;
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = v25;
          v36 = v26;
          v37 = sub_100754574();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = v25;
          v36 = v26;
          v37 = *(v34 + 32);
        }

        v38 = v37;
        v39 = v57;
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v40 = *(v35 + 104);
        v51 = v36;
        v40(v36, enum case for FlowPage.gameCenterLeaderboards(_:), v23);
        v41 = sub_100741264();
        (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
        v42 = sub_100743FE4();
        (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
        v68 = &type metadata for GameCenterLeaderboardsPage;
        v66 = v38;
        v67 = v39;
        v43 = v38;
        v44 = v39;
        v45 = v43;
        v57 = v44;
        sub_1007525F4();
        (*(v56 + 104))(v52, enum case for FlowPresentationContext.infer(_:), v53);
        (*(v33 + 104))(v10, enum case for FlowAnimationBehavior.infer(_:), v55);
        (*(v32 + 104))(v7, enum case for FlowOrigin.inapp(_:), v58);
        sub_100752B44();
        sub_100742CD4();
        swift_allocObject();
        v46 = sub_100742C84();
        sub_10052AD94(v46, 1, v59);
        sub_100752D54();
      }
    }

    else
    {
      result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v48 = sub_100752E44();
  sub_10000D0FC(v48, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();

  sub_100238B20();
  swift_allocError();
  *v49 = 1;
  sub_100752DA4();
}

uint64_t sub_10023880C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016C60(0, &qword_10092EAE8);
    v4 = sub_1007532A4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1002388B0()
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();

  return sub_100752DA4();
}

uint64_t sub_100238A08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10000C518(&qword_100930CA0);
  v4 = sub_100752DE4();
  sub_100742D64();
  v7[3] = sub_100016C60(0, &qword_100926D00);
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_100753774();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_100742D14();

  sub_10000C620(v7);
  return v4;
}

unint64_t sub_100238B20()
{
  result = qword_10092EAE0;
  if (!qword_10092EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092EAE0);
  }

  return result;
}

uint64_t sub_100238B88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100238BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100238C08()
{
  result = qword_10092EAF0;
  if (!qword_10092EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092EAF0);
  }

  return result;
}

void sub_100238C60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_artworkLoader] = v24;

  sub_1007442D4();

  sub_100744284();

  v9 = &v3[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = sub_100742734();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView());

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v13 = a3;
  v14 = sub_10003DF10(a3);

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_10074B184();
  v16 = v15;
  sub_100752D34();
  v17 = v24;
  v18 = v16;
  sub_10074B154();

  sub_10023C914(&qword_10092EB68, v19, type metadata accessor for AppEventDetailPageViewController);
  sub_100742724();
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
    [v22 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100239164(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10023C914(&qword_1009230E0, 255, type metadata accessor for VideoView);
  }

  sub_10023C914(&qword_10093B400, 255, type metadata accessor for AppEventDetailPageView);
  sub_10074B164();
}

void sub_10023941C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  if (sub_1007442E4())
  {
    sub_100741444();
    sub_100741424();
    (*(v6 + 8))(v8, v5);
    sub_100746C04();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v14 = v15[1];
  sub_10074B104();
  sub_1004EA904();
}

uint64_t sub_10023975C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752BC4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100930220);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_100742964();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_100742974();
  (*(v13 + 8))(v16, v12);
  if (sub_1007442E4())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v19 + 8))(v7, v20);
    sub_100746C24();
    v17 = sub_100746C34();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_100746C14();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

void sub_100239B2C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView();
    sub_10023C914(&unk_100923110, 255, type metadata accessor for VideoView);
    sub_100744274();
  }

  else
  {
    sub_100016C60(0, &qword_10092BFC0);
    sub_1000F04A0();
    sub_100744274();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10023C914(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v14 = v13;
  sub_100744274();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_10023C914(&qword_1009230E0, 255, type metadata accessor for VideoView);
  }

  sub_10023C914(&qword_10093B400, 255, type metadata accessor for AppEventDetailPageView);
  sub_10074B124();
}

uint64_t sub_100239FC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

uint64_t sub_10023A1C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

void sub_10023A3DC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000C888(&v7[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v15 = v16[1];
  a3(v14);
}

id sub_10023A5F4()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_1004C4774([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_1007537F4();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10023A778(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_100753804() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_100753804();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_100742714();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_100753094();
  v12 = v11;
  if (v10 == sub_100753094() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_100754754();

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

void sub_10023AA1C()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888((v0 + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_100742974();
  (*(v2 + 8))(v4, v1);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v5 = v6[1];
  sub_10074B0E4();
}

uint64_t sub_10023AD14(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  sub_100742734();
  sub_10023C914(&qword_10092EB60, 255, &type metadata accessor for AppEventDetailPagePresenter);
  sub_100748C64();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10000C8CC(v12, &unk_100923520);
}

void sub_10023AECC()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  sub_100742734();
  sub_10023C914(&qword_10092EB60, 255, &type metadata accessor for AppEventDetailPagePresenter);
  sub_100748C64();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_10023C9C0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086DDC0;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_10023B0CC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = sub_100742704();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_objectGraph;
    v8 = sub_10000C518(&unk_100923210);

    sub_1007526C4();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10000C8CC(v4, &unk_100923960);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_1003C0E00(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

id sub_10023B2F4(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v79 = sub_100746BA4();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v68 - v5;
  __chkstk_darwin(v6);
  v76 = &v68 - v7;
  v8 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v8 - 8);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v68 - v11;
  v12 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v12 - 8);
  v70 = &v68 - v13;
  v14 = sub_100744864();
  __chkstk_darwin(v14 - 8);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_100744894();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100747D94();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (sub_100753804())
  {
    v27 = sub_1007537D4();
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

    v30 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkLoader) = v30;

    v32 = sub_100742444();
    v84 = v31;
    sub_10014AB84(v32, v27 & 1, v31);

    if (sub_100742484())
    {
      v33 = sub_10074EC14();
    }

    else
    {
      v33 = sub_100742494();
    }

    *(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mainArtwork) = v33;

    if (sub_100742484())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      sub_10074EC14();
      sub_10074F2A4();
      sub_100750504();

      v34 = sub_1007504F4();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      sub_10074EBB4();
      sub_10074EBF4();
      sub_10074EBC4();
      sub_10074EBA4();
      sub_10074EC04();
      v35 = v69;
      sub_100747D74();
      sub_1007464C4();
      sub_1007526E4();
      sub_10074EB94();
      v36 = v70;
      sub_10074EC24();
      v37 = sub_100741264();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v73;
      sub_10074EBE4();
      v39 = v74;
      sub_10074EBD4();
      type metadata accessor for VideoView();
      sub_10023C914(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v40 = sub_1007464A4();
      sub_10000C8CC(v39, &unk_1009281C0);
      sub_10000C8CC(v38, &unk_1009281C0);
      sub_10000C8CC(v36, &unk_100923970);
      sub_10000C8CC(v85, &unk_1009276E0);
      sub_1004F3744();
      swift_unknownObjectWeakAssign();
      sub_1004EEF90();

      sub_10074EC14();
      v41 = sub_10074F1E4();

      sub_1004EA1C4(v41);

      (*(v71 + 8))(v35, v72);
    }

    else
    {
      sub_1004F3744();
      swift_unknownObjectWeakAssign();
      sub_1004EEF90();
    }

    v42 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButtonActionBlock);
    v44 = v82;
    *v42 = sub_10023C9C8;
    v42[1] = v44;
    swift_retain_n();
    sub_1000164A8(v43);

    [*(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v45 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
    v46 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = v81;
    *v45 = sub_10023C8A8;
    v45[1] = v47;

    sub_1000164A8(v46);
    sub_1004EE4F4();
    v48 = sub_100742454();
    if (v48)
    {
      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = v84;
      *(v50 + 24) = v49;

      sub_1004F3438(sub_10023C90C, v50);
    }

    else
    {
      sub_1004F3438(0, 0);
    }

    v51 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
    v52 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
    v53 = v80;
    *v51 = sub_10023C8C4;
    v51[1] = v53;

    sub_1000164A8(v52);
    sub_1004EE694();
    v54 = v76;
    sub_100742464();
    v55 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v56 = v75;
    v57 = v77;
    v58 = v79;
    (*(v75 + 16))(v77, v25 + v55, v79);
    swift_beginAccess();
    (*(v56 + 24))(v25 + v55, v54, v58);
    swift_endAccess();
    sub_1004EECAC();
    v59 = *(v56 + 8);
    v59(v57, v58);
    v59(v54, v58);
    v60 = v78;
    sub_100742464();
    v61 = sub_100746B84();
    v59(v60, v58);
    v62 = *(*(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
    if (v61 == 2)
    {
      v63 = objc_opt_self();
      v64 = v62;
      v65 = [v63 whiteColor];
    }

    else
    {
      sub_100016C60(0, &qword_100923500);
      v66 = v62;
      v65 = sub_100753EF4();
    }

    v67 = v65;
    [v62 setTintColor:v65];

    *(v25 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_includeBorderInDarkMode) = sub_100742474() & 1;
    sub_1004EE10C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10023BEAC()
{
  v0 = sub_100742964();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    sub_100742734();
    sub_10023C914(&qword_10092EB60, 255, &type metadata accessor for AppEventDetailPagePresenter);
    sub_100748C64();
    (*(v1 + 8))(v3, v0);
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10023C03C()
{
  v0 = sub_100742964();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    sub_100742734();
    sub_10023C914(&qword_10092EB60, 255, &type metadata accessor for AppEventDetailPagePresenter);
    sub_100748C64();
    (*(v1 + 8))(v3, v0);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    aBlock[4] = sub_10023C95C;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086DD70;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_10023C264(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_objectGraph;
  v7 = sub_10000C518(&unk_100923210);

  sub_1007526C4();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960);
  }

  v10 = *(v1 + v6);

  sub_1003C0E00(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_10023C6C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_10023C728()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_10023C768(char a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_isCollapsing) = a1;
  return sub_1004EEBA0();
}

uint64_t sub_10023C7B0()
{
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();
}

uint64_t sub_10023C870()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023C8CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023C914(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10023C964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023C97C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t AppEventFormattedDatePresenter.__allocating_init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v5 + 16) = a1;
  swift_beginAccess();
  *(v5 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_10023DBF8();
  swift_unknownObjectRelease();
  return v5;
}

Swift::Void __swiftcall AppEventFormattedDatePresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_10023CB14(uint64_t a1)
{
  v3 = sub_100741644();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100740FA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v136 = &v102 - v10;
  __chkstk_darwin(v11);
  v137 = &v102 - v12;
  v13 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v13 - 8);
  v132 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v139 = sub_100741454();
  v21 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v133 = &v102 - v24;
  __chkstk_darwin(v25);
  v27 = &v102 - v26;
  __chkstk_darwin(v28);
  v138 = &v102 - v29;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v127 = v7;
    v31 = *(v1 + 32);
    if (!a1)
    {
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(0, 0xE000000000000000, 0, ObjectType, v31);
      return swift_unknownObjectRelease();
    }

    v126 = v6;
    v129 = v31;

    v32 = sub_1007425E4();
    v128 = a1;
    if (v33)
    {
      v34 = v32;
      v35 = v33;
LABEL_14:
      v67 = swift_getObjectType();
      v68 = sub_1007425F4();
      (*(v129 + 32))(v34, v35, v68 & 1, v67);

      swift_unknownObjectRelease();
    }

    sub_1007425C4();
    v37 = v21;
    v40 = *(v21 + 48);
    v38 = v21 + 48;
    v39 = v40;
    v41 = v139;
    if (v40(v20, 1, v139) != 1)
    {
      v122 = v39;
      v123 = v38;
      v43 = v138;
      v44 = v20;
      v45 = *(v37 + 32);
      v45(v138, v44, v41);
      v46 = sub_100742604();
      if (!v47)
      {
        (*(v37 + 8))(v43, v41);
        goto LABEL_13;
      }

      v105 = v45;
      v106 = v37 + 32;
      v103 = v46;
      v116 = v47;
      sub_100741614();
      v120 = sub_10000C518(&unk_10092ECF0);
      v48 = sub_100741634();
      v49 = *(v48 - 8);
      v50 = *(v49 + 72);
      v118 = *(v49 + 80);
      v51 = (v118 + 32) & ~v118;
      v121 = v51;
      v124 = 4 * v50;
      v114 = 5 * v50;
      v52 = swift_allocObject();
      v113 = xmmword_1007AB1A0;
      v115 = v52;
      *(v52 + 1) = xmmword_1007AB1A0;
      v125 = v37;
      v53 = v52 + v51;
      v112 = enum case for Calendar.Component.year(_:);
      v104 = v49;
      v54 = *(v49 + 104);
      v54(v52 + v51);
      v111 = enum case for Calendar.Component.month(_:);
      v55 = v50;
      v54(&v53[v50]);
      v50 *= 2;
      v119 = v55;
      v110 = enum case for Calendar.Component.day(_:);
      v107 = v50;
      v54(&v53[v50]);
      v109 = v50 + v55;
      v108 = enum case for Calendar.Component.hour(_:);
      v54(&v53[v50 + v55]);
      v117 = enum case for Calendar.Component.minute(_:);
      v54(&v53[v124]);
      sub_1001A8FDC(v115);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_100741444();
      sub_1007415C4();

      v56 = *(v125 + 8);
      v125 += 8;
      v115 = v56;
      v56(v27, v139);
      v57 = *(v134 + 1);
      v57(v5, v135);
      sub_100741614();
      v58 = v121;
      v59 = swift_allocObject();
      *(v59 + 16) = v113;
      v60 = v59 + v58;
      (v54)(v60, v112, v48);
      (v54)(v60 + v119, v111, v48);
      (v54)(v60 + v107, v110, v48);
      (v54)(v60 + v109, v108, v48);
      v114 = v49 + 104;
      *&v113 = v54;
      (v54)(v60 + v124, v117, v48);
      sub_1001A8FDC(v59);
      swift_setDeallocating();
      v124 = v48;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1007415C4();
      v61 = v137;
      v62 = v135;
      v63 = v139;

      v57(v5, v62);
      sub_100741614();
      sub_100741604();
      v134 = v57;
      v57(v5, v62);
      v64 = v122;
      if (v122(v17, 1, v63) == 1)
      {

        v65 = v126;
        v66 = *(v127 + 8);
        v66(v136, v126);
        v66(v61, v65);
        v115(v138, v63);
        v42 = v17;
        goto LABEL_11;
      }

      v69 = v17;
      v70 = v105;
      v105(v133, v69, v63);
      sub_100741614();
      v71 = v132;
      sub_100741604();
      v72 = v71;
      v134(v5, v62);
      v73 = v64(v71, 1, v63);
      v74 = v63;
      v75 = v127;
      if (v73 != 1)
      {
        v79 = v130;
        v70(v130, v72, v63);
        sub_100741614();
        v80 = v121;
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1007A5A00;
        v82 = v124;
        (v113)(v81 + v80, v117, v124);
        sub_1001A8FDC(v81);
        swift_setDeallocating();
        v83 = v82;
        v84 = v79;
        (*(v104 + 8))(v81 + v80, v83);
        swift_deallocClassInstance();
        v85 = v131;
        v86 = v133;
        sub_1007415B4();

        v134(v5, v62);
        v87 = sub_100740F94();
        v89 = v88;
        v90 = *(v75 + 8);
        v91 = v126;
        v90(v85, v126);
        if ((v89 & 1) == 0)
        {
          v142._countAndFlagsBits = v103;
          v142._object = v116;
          v143._countAndFlagsBits = 0;
          v143._object = 0xE000000000000000;
          v95 = sub_10074B194(v142, v87, v143);
          v97 = v96;
          v135 = v96;

          v140 = v95;
          v141 = v97;
          sub_1000D5C0C();
          v34 = sub_1007542D4();
          v35 = v98;
          v99 = v84;
          v100 = v139;
          v101 = v115;
          v115(v99, v139);
          v101(v86, v100);
          v90(v136, v91);
          v90(v137, v91);
          v101(v138, v100);

          goto LABEL_14;
        }

        v92 = v84;
        v93 = v139;
        v94 = v115;
        v115(v92, v139);
        v94(v86, v93);
        v90(v136, v91);
        v90(v137, v91);
        v94(v138, v93);
        goto LABEL_13;
      }

      v76 = v115;
      v115(v133, v63);
      v20 = v72;
      v77 = *(v75 + 8);
      v78 = v126;
      v77(v136, v126);
      v77(v137, v78);
      v76(v138, v74);
    }

    v42 = v20;
LABEL_11:
    sub_10000C8CC(v42, &unk_100928740);
LABEL_13:
    v34 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_14;
  }

  return result;
}

uint64_t AppEventFormattedDatePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    v6 = *(v2 + v4);
  }

  sub_10023CB14(v6);
  swift_unknownObjectRelease();
}

void (*AppEventFormattedDatePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10023D9F4;
}

void sub_10023D9F4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
    swift_beginAccess();
    v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
    v7 = 0;
    if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
    {
      v7 = *(v4 + v5);
    }

    sub_10023CB14(v7);
  }

  free(v3);
}

uint64_t AppEventFormattedDatePresenter.init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_10023DBF8();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10023DBF8()
{
  v1 = sub_10000C518(&qword_10092EB80);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  sub_10023DEB8((&v8 - v2));
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  sub_10023F334(v3, v0 + v4);
  swift_endAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v0 + v4, 1, v5))
  {
    v6 = *(v0 + v4);
  }

  sub_10023CB14(v6);

  sub_100016B4C(v0 + v4, v3, &qword_10092EB80);
  sub_10023E394(v3);
  return sub_10000C8CC(v3, &qword_10092EB80);
}

uint64_t AppEventFormattedDatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10000C4F0(v0 + 24);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate, &qword_10092EB80);

  return v0;
}

uint64_t AppEventFormattedDatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10000C4F0(v0 + 24);
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate, &qword_10092EB80);

  return swift_deallocClassInstance();
}

uint64_t sub_10023DEB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_100741454();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v34 - v13;
  v14 = *(v1 + 16);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:
    v32 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(v16);
    v33 = *(*(v32 - 8) + 56);

    return v33(a1, 1, 1, v32);
  }

LABEL_3:
  result = sub_100741404();
  v18 = v14 & 0xC000000000000001;
  v37 = a1;
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = sub_100754574();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v14 + 32);
  }

  v20 = v38 + 56;
  a1 = v9;
  v35 = *(v38 + 56);
  v35(v8, 1, 1, v9);
  if (!v15)
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v8;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v9 = sub_100754664();
  v36 = v8;
  if (v9)
  {
LABEL_8:
    v34 = v20;
    v15 = 0;
    v8 = (v38 + 48);
    v41 = (v38 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v40 = (v38 + 8);
    while (1)
    {
      if (v18)
      {
        v22 = sub_100754574();
        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v16 = sub_100754664();
          if (!v16)
          {
            goto LABEL_28;
          }

          goto LABEL_3;
        }
      }

      v45 = v22;
      sub_1007425D4();
      if ((*v8)(v5, 1, a1) == 1)
      {

        sub_10000C8CC(v5, &unk_100928740);
      }

      else
      {
        v44 = v19;
        v23 = v9;
        v24 = v14;
        v25 = v18;
        v26 = v42;
        v27 = *v41;
        (*v41)(v42, v5, a1);
        if (sub_1007413E4())
        {

          v29 = v36;
          sub_10000C8CC(v36, &unk_100928740);
          (*v40)(v43, a1);
          v27(v29, v26, a1);
          v35(v29, 0, 1, a1);
          v28 = v44;
          goto LABEL_24;
        }

        (*v40)(v26, a1);

        v18 = v25;
        v14 = v24;
        v9 = v23;
      }

      ++v15;
      v21 = v45;
      v19 = v45;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v21 = v19;
LABEL_22:
  (*(v38 + 8))(v43, a1);
  v28 = v21;
  v29 = v36;
LABEL_24:
  v30 = v37;
  *v37 = v28;
  v31 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  sub_10023F400(v29, v30 + *(v31 + 20));
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_10023E394(uint64_t a1)
{
  v3 = sub_1007415E4();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1007415D4();
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1007415A4();
  v65 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100741644();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100740FA4();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100741454();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v62 - v12;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_10000C518(&qword_10092EB80);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v22 - 8);
  v81 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v62 - v31;
  v82 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer;
  v83 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer);
  if (v33)
  {
    [v33 invalidate];
  }

  v34 = a1;
  sub_100016B4C(a1, v21, &qword_10092EB80);
  v35 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v21, 1, v35) == 1)
  {
    sub_10000C8CC(v21, &qword_10092EB80);
    v37 = v84;
    (*(v9 + 56))(v32, 1, 1, v84);
  }

  else
  {
    sub_100016B4C(&v21[*(v35 + 20)], v32, &unk_100928740);
    sub_10023F3A4(v21);
    v37 = v84;
  }

  sub_100741444();
  sub_100016B4C(v34, v18, &qword_10092EB80);
  if (v36(v18, 1, v35) == 1)
  {
    sub_10000C8CC(v18, &qword_10092EB80);
    (*(v9 + 56))(v28, 1, 1, v37);
  }

  else
  {

    sub_10023F3A4(v18);
    sub_1007425C4();

    if ((*(v9 + 48))(v28, 1, v37) != 1)
    {
      v46 = v79;
      (*(v9 + 32))(v79, v28, v37);
      if (sub_1007413E4())
      {
        v47 = v72;
        sub_100741614();
        sub_10000C518(&unk_10092ECF0);
        v48 = sub_100741634();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1007A5A00;
        (*(v49 + 104))(v51 + v50, enum case for Calendar.Component.second(_:), v48);
        sub_1001A8FDC(v51);
        swift_setDeallocating();
        (*(v49 + 8))(v51 + v50, v48);
        swift_deallocClassInstance();
        sub_1007415C4();

        v52 = *(v78 + 8);
        v78 += 8;
        v62 = v52;
        v52(v47, v73);
        sub_100741614();
        v53 = v65;
        (*(v65 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v75);
        v55 = v66;
        v54 = v67;
        (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v76);
        v57 = v69;
        v56 = v70;
        v58 = v15;
        v59 = v68;
        (*(v69 + 104))(v68, enum case for Calendar.RepeatedTimePolicy.first(_:), v70);
        v60 = v72;
        sub_100741624();
        v61 = v59;
        v15 = v58;
        v37 = v84;
        (*(v57 + 8))(v61, v56);
        (*(v54 + 8))(v55, v76);
        (*(v53 + 8))(v74, v75);
        v62(v60, v73);
        (*(v63 + 8))(v77, v64);
        (*(v9 + 8))(v79, v37);
        sub_10000C8CC(v32, &unk_100928740);
        sub_10023F400(v71, v32);
      }

      else
      {
        (*(v9 + 8))(v46, v37);
      }

      goto LABEL_10;
    }
  }

  sub_10000C8CC(v28, &unk_100928740);
LABEL_10:
  v38 = v83;
  v39 = v81;
  sub_100016B4C(v32, v81, &unk_100928740);
  if ((*(v9 + 48))(v39, 1, v37) == 1)
  {
    (*(v9 + 8))(v15, v37);
    sub_10000C8CC(v32, &unk_100928740);
    sub_10000C8CC(v39, &unk_100928740);
    v40 = 0;
  }

  else
  {
    v41 = v80;
    (*(v9 + 32))(v80, v39, v37);
    isa = sub_1007413D4().super.isa;

    v40 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v38 target:"update" selector:0 userInfo:0 repeats:0.0];

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v40 forMode:NSRunLoopCommonModes];

    v44 = *(v9 + 8);
    v44(v41, v37);
    v44(v15, v37);
    sub_10000C8CC(v32, &unk_100928740);
  }

  v45 = *(v38 + v82);
  *(v38 + v82) = v40;
}

uint64_t sub_10023EEEC()
{

  sub_10023DBF8();
}

void sub_10023EFE0()
{
  sub_10023F2E0(319, &unk_10092EBC0, type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10023F0C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C518(&unk_100928740);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10023F190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C518(&unk_100928740);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10023F240()
{
  sub_100742614();
  if (v0 <= 0x3F)
  {
    sub_10023F2E0(319, &unk_10092ECC0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10023F2E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10023F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092EB80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023F3A4(uint64_t a1)
{
  v2 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023F400(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10023F478(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074A3F4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074A454();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074A374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_10074A3E4();
  sub_10074A384();
  v21 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView]];
  sub_10000C518(&unk_1009249D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007A5A00;
  *(v30 + 32) = sub_1007519E4();
  *(v30 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D24();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_10023F918@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_1007506E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007506B4();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_100750794();
  v14 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_100240CF8(&qword_100948380, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  sub_1007507A4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_10000C620(v24);
  v17 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView];
  v23[3] = type metadata accessor for CarouselItemModuleLockupView();
  v23[4] = sub_100240CF8(&unk_10092ED70, type metadata accessor for CarouselItemModuleLockupView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_10000D134(v24);
  v18 = v17;
  sub_1007507A4();
  v16(v8, v2);
  sub_10000C620(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_10000D134(v19);
  sub_1007506D4();
  (*(v10 + 8))(v12, v9);
  return sub_10000C620(v24);
}

uint64_t sub_10023FD50()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_1007507D4();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_100750654();
}

uint64_t sub_10023FE44(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074A454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A464();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_10074A414();
  (*(v8 + 8))(v10, v7);
  sub_10074A434();
  (*(v4 + 8))(v6, v3);
  return sub_100750744();
}

id sub_10024017C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074A464();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074A474();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  sub_1006F2524(a1, a2);
  sub_10074A474();
  v11 = sub_10074A4D4();
  v13 = v12;
  v14 = sub_10074A494();
  sub_10062876C(v9, v11, v13, v14, v15);

  (*(v7 + 8))(v9, v6);
  return [v3 setNeedsLayout];
}

void sub_10024032C()
{
  v1 = sub_10074F314();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074F284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView);
  if (sub_10074A4C4())
  {
    v7 = sub_10074EF64();

    if (v7)
    {
      sub_10074F294();
      sub_10074F254();
      (*(v3 + 8))(v5, v2);
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v8 = sub_100747064();
      sub_10000D0FC(v8, qword_10097E3A8);
      sub_100746F34();
      sub_10074F374();
      v9 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView;
      v10 = *(*(v6 + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v10 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      v11 = *(*(v6 + v9) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_1007433C4();
      sub_100240CF8(&qword_100925570, &type metadata accessor for ArtworkView);
      v12 = v11;
      sub_100744204();
    }
  }
}

uint64_t type metadata accessor for CarouselItemSingleModuleOverlay()
{
  result = qword_10092ED48;
  if (!qword_10092ED48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100240718()
{
  result = sub_10074A464();
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

uint64_t sub_1002407C4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001B5AC(a1);
  sub_10001B5AC(a1);
  sub_1000164A8(v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000164A8(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000164A8(a1);
}

void sub_10024087C()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_100240CF8(&qword_100925570, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100744274();
}

void sub_10024094C()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v13 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_100240BE0(void *a1)
{
  v2 = [a1 touchesForView:*(*(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v4 = sub_100753484();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_100754434();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_100240CB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100240CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100240D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  v40 = sub_10000C518(&qword_100929360);
  v19 = *(v40 - 8);
  *&v20 = __chkstk_darwin(v40).n128_u64[0];
  v22 = &v38 - v21;
  v23 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_1007447C4();
  v24 = sub_1007453B4();

  if (v24)
  {
    v38 = a1;
    if (qword_100921BB8 != -1)
    {
      swift_once();
    }

    v25 = sub_10000D0FC(v13, qword_100982C08);
    sub_100121090(v25, v18);
    v26 = *v18;
    v27 = v24;

    *v18 = v24;
    sub_100121090(v18, v15);
    sub_10000C518(&unk_100923AE0);
    sub_1007434A4();

    sub_10024144C(v18);
  }

  else
  {
    if (qword_100921BB8 != -1)
    {
      swift_once();
    }

    v28 = sub_10000D0FC(v13, qword_100982C08);
    sub_100121090(v28, v18);
    sub_10000C518(&unk_100923AE0);
    sub_1007434A4();
  }

  v29 = sub_1007447C4();
  v30 = v40;
  (*(v19 + 16))(v12, v22, v40);
  (*(v19 + 56))(v12, 0, 1, v30);
  sub_10013C000(v29, v12, v39);

  sub_1002413E4(v12);
  v31 = sub_1007447B4();
  if (!v31)
  {
    v31 = [objc_opt_self() clearColor];
  }

  v32 = v31;
  v33 = ObjectType;
  v43.receiver = v7;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "setBackgroundColor:", v31, v38);
  v34 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
  v42.receiver = v7;
  v42.super_class = v33;
  v35 = v34;
  v36 = objc_msgSendSuper2(&v42, "backgroundColor");
  sub_100743224();

  [v7 setNeedsLayout];
  return (*(v19 + 8))(v22, v30);
}

uint64_t sub_1002411BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1007486F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011F99C(a5, v9);
  sub_100748714();
  sub_1002416DC(&qword_10092EDE8, &type metadata accessor for SmallBreakoutLayout);
  sub_100750D34();
  (*(v7 + 8))(v9, v6);
  v10 = [objc_opt_self() fractionalWidthDimension:1.0];
  v11 = sub_100749A04();

  return v11;
}

uint64_t sub_1002413E4(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100935130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024144C(uint64_t a1)
{
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1002414A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1007486F4();
  __chkstk_darwin(v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100748714();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011F99C(a3, v6);
  swift_getObjectType();
  sub_100120D24();
  v11 = sub_100750F34();
  swift_allocObject();
  v12 = sub_100750F14();
  v17[8] = v11;
  v17[9] = &protocol witness table for LayoutViewPlaceholder;
  v17[5] = v12;
  swift_allocObject();
  v13 = sub_100750F14();
  v17[3] = v11;
  v17[4] = &protocol witness table for LayoutViewPlaceholder;
  v17[0] = v13;
  sub_100748704();
  sub_1002416DC(&qword_10092EDE0, &type metadata accessor for SmallBreakoutLayout);
  sub_100750404();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  return v15;
}

uint64_t sub_1002416DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100241754(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(v8);
  v4 = v9;
  v5 = v10;
  sub_10000C888(v8, v9);
  v6 = a3(v4, v5);
  sub_10000C620(v8);
  return v6;
}

char *sub_1002417D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell()
{
  result = qword_10092EE18;
  if (!qword_10092EE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100241BAC()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10074F654();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000C518(&qword_100923E90);
  v15 = *(sub_10074F584() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007A7250;
  v43 = v17 + v16;
  v49 = 0x4000000000000000;
  sub_10001CC10();
  sub_10074F614();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10074F614();
  v49 = 0;
  v41 = v7;
  sub_10074F614();
  v38 = v14;
  v42 = v11;
  sub_10074F544();
  v49 = 0x4000000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10074F544();
  v49 = 0x4008000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 2 * v27 + v45;
  v49 = 0x4008000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007535A4();
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v49 = 0x4014000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_10092EE28 = v37;
  return result;
}

uint64_t sub_10024257C()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10074F654();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000C518(&qword_100923E90);
  v15 = *(sub_10074F584() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007A7250;
  v43 = v17 + v16;
  v49 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10074F614();
  v49 = 0;
  v41 = v7;
  sub_10074F614();
  v38 = v14;
  v42 = v11;
  sub_10074F544();
  v49 = 0x3FF8000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10074F544();
  v49 = 0x4000000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 2 * v27 + v45;
  v49 = 0x4000000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007535A4();
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 4 * v45;
  v49 = 0x4008000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v49 = 0x4010000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_10092EE30 = v37;
  return result;
}

uint64_t sub_100242F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v65 = a2;
  v72 = sub_1007479B4();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v54 - v4;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  __chkstk_darwin(v7);
  v59 = &v54 - v8;
  v9 = sub_100750304();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100750B04();
  __chkstk_darwin(v55);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v54 - v15;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_100741E54();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741DD4();
  sub_100741E14();
  (*(v20 + 8))(v22, v19);
  if (qword_100921408 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100981950);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v68 = v25 + 16;
  v69(v12, v24, v23);
  v26 = enum case for FontSource.useCase(_:);
  v74 = v10[13];
  v75 = v10 + 13;
  v74(v12);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v80);
  v67 = v10[2];
  v73 = v10 + 2;
  v67(v27, v12, v9);
  v60 = v18;
  sub_100750B14();
  v29 = v10[1];
  v28 = v10 + 1;
  v66 = v29;
  v29(v12, v9);
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v23, qword_100981968);
  v31 = v69;
  v69(v12, v30, v23);
  (v74)(v12, v26, v9);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v80);
  v33 = v67;
  v67(v32, v12, v9);
  sub_100750B14();
  v34 = v66;
  v66(v12, v9);
  v54 = v30;
  v57 = v23;
  v31(v12, v30, v23);
  v56 = v26;
  (v74)(v12, v26, v9);
  v81 = v55;
  v82 = &protocol witness table for StaticDimension;
  sub_10000D134(v80);
  v78 = v9;
  v79 = &protocol witness table for FontSource;
  v35 = sub_10000D134(v77);
  v33(v35, v12, v9);
  sub_100750B14();
  v55 = v9;
  v34(v12, v9);
  v36 = sub_100753804();
  v64 = v28;
  if (v36)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF58;
  }

  v38 = v72;
  v39 = sub_10000D0FC(v72, v37);
  v40 = v76;
  v41 = *(v76 + 16);
  v42 = v58;
  v41(v58, v39, v38);
  v43 = *(v40 + 32);
  v44 = v59;
  v43(v59, v42, v38);
  sub_100747964();
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v45(v44, v38);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v46 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v46 = qword_10093FF58;
  }

  v47 = v72;
  v48 = sub_10000D0FC(v72, v46);
  v49 = v61;
  v41(v61, v48, v47);
  v50 = v63;
  v43(v63, v49, v47);
  sub_100747994();
  v45(v50, v47);
  v69(v12, v54, v57);
  v51 = v55;
  (v74)(v12, v56, v55);
  v78 = v51;
  v79 = &protocol witness table for FontSource;
  v52 = sub_10000D134(v77);
  v67(v52, v12, v51);
  sub_100750B14();
  v66(v12, v51);
  return sub_1007420E4();
}

char *sub_100243850(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v66 = sub_10074AB44();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = v57 - v14;
  v16 = sub_100741E54();
  __chkstk_darwin(v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView;
  sub_100741DD4();
  v20 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v21 = sub_10027562C(v18, 1);
  v67 = v5;
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_100921408 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100981950);
  v25 = *(v23 - 8);
  v65 = *(v25 + 16);
  v65(v15, v24, v23);
  v26 = *(v25 + 56);
  v64 = v25 + 56;
  v26(v15, 0, 1, v23);
  v27 = *(v10 + 104);
  v62 = v10 + 104;
  v63 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  (v27)(v12);
  v29 = sub_100745C84();
  v30 = objc_allocWithZone(v29);
  *&v67[v22] = sub_100745C74();
  v61 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v60 = sub_10000D0FC(v23, qword_100981968);
  v65(v15, v60, v23);
  v57[1] = v25 + 16;
  v59 = v26;
  v26(v15, 0, 1, v23);
  v31 = v66;
  v32 = v63;
  v63(v12, v28, v66);
  v58 = v29;
  v33 = objc_allocWithZone(v29);
  v34 = sub_100745C74();
  v35 = v67;
  v36 = v60;
  *&v67[v61] = v34;
  v37 = v31;
  v38 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v65(v15, v36, v23);
  v59(v15, 0, 1, v23);
  v32(v12, v28, v37);
  v39 = objc_allocWithZone(v58);
  *&v35[v38] = sub_100745C74();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v35[v40] = sub_100154454(0);
  v42 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v68.receiver = v35;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  v49 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  sub_100016C60(0, &qword_100923500);
  v50 = v49;
  v51 = sub_100753DF4();
  [v50 setTextColor:v51];

  v52 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v53 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v54 = sub_100753DF4();
  [v53 setTextColor:v54];

  v55 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  [*&v47[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel] setTextAlignment:1];
  [*&v47[v48] setTextAlignment:1];
  [*&v47[v52] setTextAlignment:1];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView]];
  [v47 addSubview:*&v47[v55]];
  [v47 addSubview:*&v47[v48]];
  [v47 addSubview:*&v47[v52]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_offerButton]];

  return v47;
}

uint64_t sub_100243EC4()
{
  v1 = v0;
  swift_getObjectType();
  v28 = sub_100750354();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100742104();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100742124();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v44.receiver = v0;
  v44.super_class = v24;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  v9 = [v0 traitCollection];
  sub_100242F4C(v9, v5);

  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView];
  v42 = type metadata accessor for InAppPurchaseView();
  v43 = &protocol witness table for UIView;
  v41 = v10;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel];
  v39 = sub_100745C84();
  v40 = &protocol witness table for UILabel;
  v37 = &protocol witness table for UILabel;
  v38 = v11;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v36 = v39;
  v34 = &protocol witness table for UILabel;
  v35 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v33 = v39;
  v32 = v13;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v31 = &protocol witness table for UIView;
  v30 = v15;
  v29 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_100742114();
  sub_1007477B4();
  v21 = v26;
  sub_1007420C4();
  (*(v27 + 8))(v21, v28);
  return (*(v6 + 8))(v8, v25);
}

double sub_10024422C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100742104();
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100742124();
  v5 = *(v26 - 8);
  *&v6 = __chkstk_darwin(v26).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 traitCollection];
  sub_100242F4C(v9, v4);

  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView];
  v40 = type metadata accessor for InAppPurchaseView();
  v41 = &protocol witness table for UIView;
  v39 = v10;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel];
  v37 = sub_100745C84();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v11;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v34 = v37;
  v32 = &protocol witness table for UILabel;
  v33 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v31 = v37;
  v30 = v13;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v29 = &protocol witness table for UIView;
  v28 = v15;
  v27 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_100742114();
  sub_100244DD4(&qword_10092EE88, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v21 = v26;
  sub_100750404();
  v23 = v22;
  (*(v5 + 8))(v8, v21);
  return v23;
}

double sub_100244520(uint64_t a1, void *a2)
{
  v5 = sub_100742124();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074CD14();
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742104();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  v59 = v2;
  sub_100242F4C(v16, v15);

  sub_1007420F4();
  v45 = *(v12 + 8);
  v46 = v12 + 8;
  v49 = v15;
  v47 = v11;
  v45(v15, v11);
  v48 = sub_100750F34();
  swift_allocObject();
  v50 = sub_100750F14();
  v58 = a1;
  sub_100741D74();
  sub_10074EF34();

  v17 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100921408 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  sub_10000D0FC(v18, qword_100981950);
  v19 = [a2 traitCollection];
  sub_100753C14();

  v20 = sub_10074F3F4();
  v70[3] = v20;
  v57 = sub_100244DD4(&qword_10092AC70, &type metadata accessor for Feature);
  v70[4] = v57;
  v21 = sub_10000D134(v70);
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v54 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v55 = v22 + 104;
  v56 = v23;
  v23(v21);
  sub_10074FC74();
  sub_10000C620(v70);
  sub_10074CD04();
  sub_10074CCE4();
  v24 = *(v61 + 8);
  v61 += 8;
  v25 = v24;
  v24(v10, v60);
  sub_100741D84();
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v18, qword_100981968);
  v26 = a2;
  v27 = [a2 traitCollection];
  v43 = v17;
  sub_100753C14();

  v69[3] = v20;
  v69[4] = v57;
  v28 = sub_10000D134(v69);
  v56(v28, v54, v20);
  sub_10074FC74();
  sub_10000C620(v69);
  sub_10074CD04();
  sub_10074CCE4();
  v42 = v25;
  v25(v10, v60);
  v29 = [v26 traitCollection];
  v30 = v49;
  sub_100242F4C(v29, v49);

  sub_1007420D4();
  v45(v30, v47);
  v31 = v48;
  swift_allocObject();
  v47 = sub_100750F14();
  sub_100741D64();
  v32 = v26;
  v33 = [v26 traitCollection];
  sub_100753C14();

  v68[3] = v20;
  v68[4] = v57;
  v34 = sub_10000D134(v68);
  v56(v34, v54, v20);
  sub_10074FC74();
  sub_10000C620(v68);
  sub_10074CD04();
  sub_10074CCE4();
  v42(v10, v60);
  v35 = [v32 traitCollection];
  sub_100242F4C(v35, v30);

  v67[8] = v31;
  v67[9] = &protocol witness table for LayoutViewPlaceholder;
  v67[5] = v50;
  sub_10000C824(v70, v67);
  sub_10000C824(v69, &v66);
  sub_10000C824(v68, &v65);
  v63 = v31;
  v64 = &protocol witness table for LayoutViewPlaceholder;
  v62 = v47;

  v36 = v51;
  sub_100742114();
  sub_100244DD4(&qword_10092EE88, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v37 = v53;
  sub_100750404();
  v39 = v38;

  (*(v52 + 8))(v36, v37);
  sub_10000C620(v68);
  sub_10000C620(v69);
  sub_10000C620(v70);
  return v39;
}

id sub_100244D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100244DD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100244E1C()
{
  v1 = v0;
  v45 = sub_10074AB44();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_100741E54();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView;
  sub_100741DD4();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v12 = sub_10027562C(v9, 1);
  v46 = v1;
  *(v1 + v10) = v12;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_100921408 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100981950);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v44 = v15 + 16;
  v16(v6, v14, v13);
  v43 = *(v15 + 56);
  v43(v6, 0, 1, v13);
  v17 = *(v2 + 104);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v41 = v2 + 104;
  v42 = v17;
  v17(v47);
  v19 = sub_100745C84();
  v20 = objc_allocWithZone(v19);
  *(v46 + v40) = sub_100745C74();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v13, qword_100981968);
  v38 = v16;
  v39 = v21;
  v16(v6, v21, v13);
  v22 = v43;
  v43(v6, 0, 1, v13);
  v23 = v47;
  v37 = v18;
  v24 = v18;
  v25 = v45;
  v26 = v42;
  v42(v47, v24, v45);
  v36 = v19;
  v27 = objc_allocWithZone(v19);
  v28 = sub_100745C74();
  v29 = v46;
  v30 = v39;
  *(v46 + v40) = v28;
  v31 = v25;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v38(v6, v30, v13);
  v22(v6, 0, 1, v13);
  v26(v23, v37, v31);
  v33 = objc_allocWithZone(v36);
  *(v29 + v32) = sub_100745C74();
  v34 = OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v29 + v34) = sub_100154454(0);
  sub_100754644();
  __break(1u);
}

void sub_1002452D4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_1002452E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (sub_100754754() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t sub_10024536C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  *v1 = 0;
  *(v1 + 1) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_100245464(uint64_t a1, uint64_t a2)
{
  v213 = a2;
  v3 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v3 - 8);
  v198 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v197 = &v164 - v6;
  v196 = sub_100746034();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v8 - 8);
  v193 = &v164 - v9;
  v192 = sub_10074C3E4();
  v187 = *(v192 - 8);
  __chkstk_darwin(v192);
  v189 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_10000C518(&unk_100925560);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = &v164 - v11;
  v12 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v12 - 8);
  v185 = &v164 - v13;
  v14 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v14 - 8);
  v186 = &v164 - v15;
  v16 = sub_10074D734();
  v209 = *(v16 - 8);
  v210 = v16;
  __chkstk_darwin(v16);
  v184 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v171 = &v164 - v19;
  __chkstk_darwin(v20);
  v22 = &v164 - v21;
  v23 = sub_10000C518(&qword_100923590);
  __chkstk_darwin(v23 - 8);
  v175 = &v164 - v24;
  v25 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v25 - 8);
  v174 = &v164 - v26;
  v27 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v27 - 8);
  v173 = &v164 - v28;
  v29 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v29 - 8);
  v172 = &v164 - v30;
  v208 = sub_100742284();
  v211 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_100744EA4();
  v203 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_10074ED34();
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v183 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1007455E4();
  v199 = *(v201 - 8);
  __chkstk_darwin(v201);
  v170 = &v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v169 = &v164 - v36;
  v206 = sub_10074F6E4();
  v37 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v179 = &v164 - v40;
  v41 = sub_10074F704();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v212 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v164 - v45;
  __chkstk_darwin(v47);
  v49 = &v164 - v48;
  sub_1007461A4();
  sub_10024A418(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
  result = sub_1007468B4();
  v51 = v215;
  if (!v215)
  {
    return result;
  }

  v205 = v22;
  swift_getKeyPath();
  v214 = v51;
  sub_100746914();

  sub_10074F5C4();
  v52 = *(v42 + 8);
  v52(v49, v41);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5E4();
  v52(v46, v41);
  v53 = v179;
  v54 = v206;
  (*(v37 + 104))(v179, enum case for PageGrid.Direction.vertical(_:), v206);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5D4();
  v167 = v49;
  v176 = v42 + 8;
  v177 = v52;
  v52(v49, v41);
  (*(v37 + 16))(v204, v53, v54);
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  (*(v37 + 8))(v53, v54);
  v204 = sub_10007DC04();
  v168 = a1;
  v55 = sub_1001B4CE0();
  v56 = v180;
  v57 = &v180[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize];
  *v57 = v55;
  *(v57 + 1) = v58;
  sub_10000C518(&unk_100925780);
  v166 = sub_100752764();
  sub_100752D34();
  v179 = *(&v215 + 1);
  v206 = v215;
  v59 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel];
  sub_100746164();
  v178 = v41;
  if (v60)
  {
    v61 = sub_100753064();
  }

  else
  {
    v61 = 0;
  }

  v62 = v203;
  [v59 setText:v61];

  v63 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel];
  sub_100746184();
  if (v64)
  {
    v65 = sub_100753064();
  }

  else
  {
    v65 = 0;
  }

  [v63 setText:v65];

  v66 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel];
  sub_100746094();
  if (v67)
  {
    v68 = sub_100753064();
  }

  else
  {
    v68 = 0;
  }

  [v66 setText:v68];

  v69 = sub_100746104();
  v70 = sub_1007460F4();
  if (v71 == 1)
  {
    sub_1002668B8(0, 0);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v74 = v72;
    v75 = v73;
    v76 = v70;
    v77 = v71;

    sub_1002668B8(v76, v77);
  }

  sub_1002668CC(v74, v75);
  v78 = sub_1007460E4();
  v79 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer;
  v80 = v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
  v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] = v78 & 1;
  sub_100269678(v80);
  v81 = sub_100746124();
  v82 = v183;
  if ((v81 & 1) != 0 && v69)
  {
    v83 = v62;
    v165 = v79;

    v84 = v169;
    sub_100749ED4();
    v85 = v199;
    v86 = v170;
    v87 = v201;
    (*(v199 + 104))(v170, enum case for OfferLabelStyle.none(_:), v201);
    sub_10024A418(&qword_100923598, &type metadata accessor for OfferLabelStyle);
    v88 = sub_100753014();
    v89 = *(v85 + 8);
    v89(v86, v87);
    v89(v84, v87);
    if ((v88 & 1) == 0)
    {

      sub_100749F14();
      sub_100744AC4();
      swift_unknownObjectRetain();
      sub_100752D34();
      sub_100744984();

      v90 = sub_100748304();
      swift_allocObject();
      v91 = sub_1007482E4();
      *(&v216 + 1) = v90;
      *&v215 = v91;
      v92 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerLabelPresenter;
      swift_beginAccess();

      sub_10006644C(&v215, &v56[v92], &unk_100923520);
      swift_endAccess();
      sub_10024A418(&unk_10092EEB0, type metadata accessor for ProductLockupCollectionViewCell);
      swift_unknownObjectRetain();
      sub_1007482F4();
    }

    v79 = v165;
    v62 = v83;
  }

  v93 = sub_100746114();
  v203 = v69;
  if (v93)
  {
    v94 = v93;
    v95 = v182;
    v96 = v181;
  }

  else
  {
    v95 = v182;
    v96 = v181;
    if (!v69)
    {
LABEL_27:
      v102 = 0;
      v101 = 0;
      goto LABEL_28;
    }

    v94 = sub_100749F34();
  }

  (*(v62 + 104))(v96, enum case for OfferTitleType.standard(_:), v95);
  if (!*(v94 + 16) || (v97 = sub_100412914(v96), (v98 & 1) == 0))
  {

    (*(v62 + 8))(v96, v95);
    goto LABEL_27;
  }

  v99 = (*(v94 + 56) + 16 * v97);
  v100 = v62;
  v102 = *v99;
  v101 = v99[1];
  v103 = *(v100 + 8);

  v103(v96, v95);

LABEL_28:
  swift_getObjectType();
  v104 = v56[v79];
  v105 = swift_unknownObjectRetain();
  v106 = sub_10026F6E4(v105, v104, v56);
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_100746174();
  v107 = sub_1007424E4();
  v109 = v108;
  (*(v200 + 8))(v82, v202);
  ObjectType = swift_getObjectType();
  v111 = v207;
  v182 = v107;
  v200 = ObjectType;
  v202 = v109;
  sub_1007423D4();
  v181 = v102;
  v179 = v101;
  v170 = v106;
  sub_10024707C(v111, v102, v101, v106);
  v112 = *(v211 + 8);
  v211 += 8;
  v183 = v112;
  (v112)(v111, v208);
  if (v203)
  {

    sub_100414F4C(_swiftEmptyArrayStorage);
    v113 = sub_100742E24();
    v114 = v172;
    (*(*(v113 - 8) + 56))(v172, 1, 1, v113);
    v115 = sub_100745E94();
    v116 = v173;
    (*(*(v115 - 8) + 56))(v173, 1, 1, v115);
    v117 = sub_10074F8B4();
    v118 = v79;
    v119 = v174;
    (*(*(v117 - 8) + 56))(v174, 1, 1, v117);
    v120 = v175;
    (*(v199 + 56))(v175, 1, 1, v201);
    v215 = 0u;
    v216 = 0u;
    v201 = sub_100749EA4();

    sub_10000C8CC(&v215, &unk_100923520);
    sub_10000C8CC(v120, &qword_100923590);
    v121 = v119;
    v79 = v118;
    sub_10000C8CC(v121, &unk_100925520);
    sub_10000C8CC(v116, &unk_1009259A0);
    sub_10000C8CC(v114, &unk_100925530);
  }

  else
  {
    v201 = 0;
  }

  v122 = sub_100746134();
  v123 = v209;
  v124 = *(v209 + 104);
  if (v122)
  {
    v125 = v205;
    v126 = v210;
    v124(v205, enum case for OfferButtonPresenterViewAlignment.center(_:), v210);
  }

  else
  {
    if (v56[v79])
    {
      v127 = &enum case for OfferButtonPresenterViewAlignment.right(_:);
    }

    else
    {
      v127 = &enum case for OfferButtonPresenterViewAlignment.left(_:);
    }

    v128 = v171;
    v126 = v210;
    v124(v171, *v127, v210);
    v125 = v205;
    (*(v123 + 32))(v205, v128, v126);
  }

  v129 = v182;
  v130 = sub_100746064();
  (*(v123 + 16))(v184, v125, v126);
  (*(v123 + 56))(v185, 1, 1, v126);
  sub_10024A418(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v131 = v186;
  sub_10074A9C4();
  v132 = sub_10000C518(&unk_10092EEA0);
  (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  v133 = v187;
  v134 = v192;
  (*(v187 + 104))(v189, enum case for OfferButtonSubtitlePosition.below(_:), v192);
  (*(v133 + 56))(v193, 1, 1, v134);
  sub_10024A418(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  v135 = v188;
  sub_10074A9C4();
  sub_10015DE40(v201, v130, 0, v131, v135, v213, 0, 0);

  (*(v190 + 8))(v135, v191);
  sub_10000C8CC(v131, &unk_100925540);
  v136 = &v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  v137 = v167;
  v138 = v179;
  v139 = v202;
  *v136 = v129;
  v136[1] = v139;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v141 = swift_allocObject();
  v142 = v181;
  v141[2] = v140;
  v141[3] = v142;
  v143 = v170;
  v141[4] = v138;
  v141[5] = v143;

  sub_1007423A4();

  v144 = [v56 contentView];
  sub_10074F664();
  [v144 setLayoutMargins:?];

  v145 = [v56 traitCollection];
  LOBYTE(v144) = sub_1007537D4();

  v146 = 0;
  if (v144)
  {
    v147 = sub_100746134();
    v148 = v213;
    v149 = v168;
    v150 = v197;
    if (v147)
    {
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5D4();
      v146 = v151;
      v177(v137, v178);
    }
  }

  else
  {
    v148 = v213;
    v149 = v168;
    v150 = v197;
  }

  *&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = v146;
  v152 = v194;
  sub_100746154();
  v153 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  v154 = v195;
  v155 = v196;
  (*(v195 + 24))(&v56[v153], v152, v196);
  swift_endAccess();
  sub_1002680A4();
  (*(v154 + 8))(v152, v155);
  sub_100247290(v149, v148);
  v156 = v207;
  sub_1007423D4();
  sub_1007460A4();
  (v183)(v156, v208);
  v157 = sub_100746134();
  v158 = v198;
  sub_10024894C(v150, v198);
  v159 = sub_100746144();
  if (v159)
  {
  }

  *&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight] = sub_1001B5AC8(v158, v159 != 0, v157 & 1, v149);
  v160 = sub_100248DAC(v158, v157 & 1, v149, v148);
  sub_1002669B4(v160);
  sub_10000C8CC(v158, &unk_10092EE90);
  sub_10000C8CC(v150, &unk_10092EE90);
  *&v56[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = sub_1001B5154();
  v161 = sub_1007460C4();
  v162 = sub_100746134();
  v163 = sub_10024858C(v161, v162 & 1, v149, v148);

  sub_1002669A8(v163);
  [v56 setNeedsLayout];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v209 + 8))(v205, v210);
  return (v177)(v212, v178);
}

id sub_10024707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  if (a3)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  [v7 setTextAlignment:a4];
  [v7 setHidden:(a3 == 0) | ((sub_100742274() & 1) == 0)];

  return [v4 setNeedsLayout];
}

uint64_t sub_100247150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100742284();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_getObjectType();
    sub_1007423D4();
    sub_10024707C(v12, a4, a5, a6);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_100247290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v149 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v137 = &v131 - v10;
  v11 = sub_100750534();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10074F7B4();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10074F704();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v17 - 8);
  v148 = sub_10000C518(&qword_10092BBE0);
  v145 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v131 - v18;
  sub_1007461A4();
  sub_10024A418(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
  v146 = a1;
  sub_1007468B4();
  if (v154)
  {
    v132 = v14;
    v19 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView;
    v20 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
    v150 = v154;
    v134 = v11;
    v133 = v12;
    v136 = v5;
    v135 = v6;
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_uber);

      v22 = sub_100746144();
      if (v21)
      {
        v154 = v21;
        if (v22)
        {
          v151 = v22;
          sub_10074E664();
          sub_10024A418(&qword_10092EEC0, &type metadata accessor for Uber);
          v23 = sub_100753014();

          v24 = v23 ^ 1;
LABEL_13:
          v131 = v8;
          v26 = *&v3[v19];
          if (v26 && (v27 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView], v28 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer, (v29 = *(*(v27 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents)) != 0))
          {
            type metadata accessor for VideoView();
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              sub_10024A418(&qword_1009230E0, type metadata accessor for VideoView);
              v31 = v29;
              v32 = v26;
              v33 = [v30 superview];
              if (v33)
              {
                v30 = v33;
                v34 = *(v27 + v28);
                sub_100016C60(0, &qword_100922300);
                v35 = v34;
                v36 = sub_100753FC4();

                LODWORD(v30) = v36 ^ 1;
              }

              else
              {

                LODWORD(v30) = 1;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v37 = sub_100746144();
          if (v37)
          {
            v38 = v37;
            if ((v24 | v30))
            {
              v39 = sub_100746134();
              v40 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber;
              v41 = v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber];
              v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] = v39 & 1;
              if ((v39 & 1) != v41)
              {
                sub_100268568();
              }

              sub_10024A0FC(v3, v3);
              sub_1002690AC();
              sub_100269300();
              v42 = v146;
              sub_100746964();
              sub_100752EB4();
              swift_getKeyPath();
              sub_1001B58AC();

              sub_100752E94();

              v43 = v154;
              v44 = objc_allocWithZone(type metadata accessor for UberHeaderView());
              v45 = v149;

              v46 = sub_100640EE8(v38, (v43 & 1) == 0, v45);
              sub_1002669C0(v46);
              v47 = *&v3[v19];
              if (v47)
              {
                swift_getKeyPath();
                v48 = v47;
                v49 = v141;
                sub_100746914();

                sub_10074F664();
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;
                (*(v142 + 8))(v49, v143);
                v58 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
                [*&v48[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] layoutMargins];
                if (v51 == v62 && v53 == v59 && v55 == v60 && v57 == v61 || ([*&v48[v58] setLayoutMargins:{v51, v53, v55, v57, v131}], objc_msgSend(v48, "invalidateIntrinsicContentSize"), (v63 = *&v48[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver]) == 0))
                {
                }

                else
                {

                  v63(v64);

                  sub_1000164A8(v63);
                }
              }

              v65 = sub_1001AF640(v42, v149);
              if (v3[v40] == 1)
              {
                v66 = [v3 contentView];
                [v66 setOverrideUserInterfaceStyle:2];

                sub_100266A7C();
                v67 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow;
                if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow])
                {
                  v68 = [objc_allocWithZone(type metadata accessor for ChevronView()) init];
                  [v68 setOverrideUserInterfaceStyle:2];
                  v69 = *&v3[v67];
                  if (v69)
                  {
                    [v69 removeFromSuperview];
                    v70 = *&v3[v67];
                  }

                  else
                  {
                    v70 = 0;
                  }

                  *&v3[v67] = v68;
                  v71 = v68;

                  v72 = [v3 contentView];
                  [v72 addSubview:v71];
                }

                v73 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView];
                v74 = v139;
                v75 = v138;
                v76 = v140;
                (*(v139 + 104))(v138, enum case for Wordmark.arcade(_:), v140);
                swift_getKeyPath();
                sub_100746914();

                v77 = v154;
                sub_1007441A4();

                (*(v74 + 8))(v75, v76);
                [v73 setHidden:0];
                [*&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel] setHidden:1];
                v78 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel];
                v79 = [v78 text];
                v80 = v79;
                if (v79)
                {
                }

                [v78 setHidden:v80 == 0];
                v81 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
                swift_beginAccess();
                v82 = *&v3[v81];
                if (v82)
                {
                  [v82 removeFromSuperview];
                  v83 = *&v3[v81];
                }

                else
                {
                  v83 = 0;
                }

                *&v3[v81] = 0;

                [v3 setNeedsLayout];
                v84 = [v3 contentView];
                [v84 overrideUserInterfaceStyle];

                sub_100753094();
                v85 = sub_100753064();

                v86 = [v78 layer];
                [v86 setCompositingFilter:v85];

                v87 = [v73 layer];
                [v87 setCompositingFilter:v85];

                v88 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
                if (v88)
                {
                  [v88 setHidden:1];
                }

                v89 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
                if (v89)
                {
                  v90 = [v89 layer];
                  [v90 setCompositingFilter:v85];
                }

                v91 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
                if (v91)
                {
                  v92 = [v91 layer];
                  [v92 setCompositingFilter:v85];
                }
              }

              sub_1007442C4();
              sub_100752764();
              sub_100752D34();
              sub_100249424(v42, v154, v65);

              (*(v145 + 8))(v147, v148);
            }

            else
            {
            }
          }

          if (v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber])
          {
            goto LABEL_83;
          }

          v93 = [v3 contentView];
          [v93 setOverrideUserInterfaceStyle:0];

          v94 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow;
          v95 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow];
          if (v95)
          {
            [v95 removeFromSuperview];
            v96 = *&v3[v94];
          }

          else
          {
            v96 = 0;
          }

          v97 = v136;
          v98 = v135;
          *&v3[v94] = 0;

          sub_1007460B4();
          v99 = sub_100753114();

          v100 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
          if (v99)
          {
            swift_beginAccess();
            v101 = *&v3[v100];
            if (v101)
            {
              [v101 removeFromSuperview];
              v102 = *&v3[v100];
            }

            else
            {
              v102 = 0;
            }

            *&v3[v100] = 0;

            [v3 setNeedsLayout];
            goto LABEL_72;
          }

          swift_beginAccess();
          v103 = *&v3[v100];
          if (v103)
          {
LABEL_60:
            v104 = v103;
            sub_1007460B4();
            if (v105)
            {
              v106 = sub_100753064();
            }

            else
            {
              v106 = 0;
            }

            [v104 setText:{v106, v131}];

            goto LABEL_72;
          }

          if (qword_10091FEB8 != -1)
          {
            swift_once();
          }

          v107 = sub_10000C518(&qword_100923C40);
          sub_10000D0FC(v107, qword_10097CC08);
          swift_getKeyPath();
          sub_100746914();

          v153 = v151;
          v108 = v132;
          sub_100743464();
          swift_unknownObjectRelease();
          if (qword_10091FFE0 != -1)
          {
            swift_once();
          }

          v109 = sub_10000C518(&unk_10092BC10);
          sub_10000D0FC(v109, qword_10097CFC0);
          swift_getKeyPath();
          sub_100746914();

          v152 = v153;
          sub_100743464();
          swift_unknownObjectRelease();
          v110 = v133;
          v111 = v137;
          v112 = v134;
          (*(v133 + 16))(v137, v108, v134);
          (*(v110 + 56))(v111, 0, 1, v112);
          (*(v98 + 104))(v131, enum case for DirectionalTextAlignment.leading(_:), v97);
          v113 = objc_allocWithZone(sub_100745C84());
          v114 = sub_100745C74();
          v115 = *&v3[v100];
          if (v115)
          {
            [v115 removeFromSuperview];
            v116 = *&v3[v100];
          }

          else
          {
            v116 = 0;
          }

          *&v3[v100] = v114;
          v126 = v114;

          v127 = [v3 contentView];
          [v127 addSubview:v126];

          [v3 setNeedsLayout];
          swift_beginAccess();
          v128 = *&v3[v100];
          if (v128)
          {
            swift_endAccess();
            sub_100016C60(0, &qword_100923500);
            v129 = v128;
            v130 = sub_100753DE4();
            [v129 setTextColor:v130];

            (*(v133 + 8))(v132, v134);
            v103 = *&v3[v100];
            if (v103)
            {
              goto LABEL_60;
            }
          }

          else
          {
            (*(v133 + 8))(v132, v134);
            swift_endAccess();
            v103 = *&v3[v100];
            if (v103)
            {
              goto LABEL_60;
            }
          }

LABEL_72:
          v117 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView];
          [v117 setHidden:{1, v131}];
          v118 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
          if (v118)
          {
            [v118 removeFromSuperview];
          }

          v119 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
          if (v119)
          {
            [v119 removeFromSuperview];
          }

          v120 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView];
          if (v120)
          {
            [v120 removeFromSuperview];
          }

          v121 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel] layer];
          [v121 setCompositingFilter:0];

          v122 = [v117 layer];
          [v122 setCompositingFilter:0];

          v123 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
          if (v123)
          {
            [v123 setHidden:0];
          }

          v124 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
          if (v124)
          {
            v125 = [v124 layer];
            [v125 setCompositingFilter:0];
          }

          sub_100266C2C();
LABEL_83:
          [v3 setNeedsLayout];

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v22 = sub_100746144();
    }

    if (!v22)
    {
      v24 = 0;
      goto LABEL_13;
    }

LABEL_12:

    v24 = 1;
    goto LABEL_13;
  }

  sub_1002669C0(0);
  v25 = v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber];
  v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  if (v25 == 1)
  {
    sub_100268568();
  }

  sub_10024A0FC(v2, v2);
  sub_1002690AC();
  sub_100269300();
}

uint64_t sub_10024858C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1;
  }

  v27 = a4;

  v11 = sub_10007DC04();
  v12 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerView);
  if (v12)
  {
    type metadata accessor for BannerCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v30 = v13;
      v15 = v12;
      v16 = 0;
LABEL_7:
      sub_100016C60(0, &qword_100923500);
      v20 = v14;
      v21 = sub_100753E04();
      [v20 setBackgroundColor:v21];

      goto LABEL_8;
    }
  }

  v30 = 0;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = &v30;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10024A3E0;
  *(v16 + 24) = v18;
  aBlock[4] = sub_100045E0C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_10086DF60;
  v19 = _Block_copy(aBlock);

  [v17 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = sub_10024A3E0;
  v14 = v30;
  if (v30)
  {
    goto LABEL_7;
  }

LABEL_8:
  v22 = 0.0;
  if ((v28 & 1) == 0)
  {
    if (qword_10091FEE8 == -1)
    {
LABEL_10:
      sub_10000C888(qword_10097CCC8, qword_10097CCE0);
      sub_100536120();
      sub_100750564();
      v22 = v23;
      (*(v8 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v30)
  {
    v24 = v30;
    sub_100170D58(a1, v28 & 1, v11, v27, v22, 0.0, 0.0);
  }

  swift_unknownObjectRelease();

  a1 = v30;
  sub_1000164A8(v16);
  return a1;
}

uint64_t sub_10024894C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_10000C518(&qword_10092BBF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  sub_100016B4C(a1, v9, &unk_10092EE90);
  v13 = sub_100746084();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_10000C8CC(v9, &unk_10092EE90);
  }

  else
  {
    v24 = a2;
    sub_100746074();
    (*(v14 + 8))(v9, v13);
    v16 = sub_100743E44();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_10000C8CC(v12, &qword_10092BBF0);
      a2 = v24;
    }

    else
    {
      v18 = sub_100743E34();
      (*(v17 + 8))(v12, v16);
      a2 = v24;
      if (v18)
      {
        v19 = qword_100921F00;
        goto LABEL_9;
      }
    }
  }

  sub_100016B4C(a1, v6, &unk_10092EE90);
  if (v15(v6, 1, v13) != 1)
  {
    (*(v14 + 32))(a2, v6, v13);
    v20 = 0;
    if (qword_100921F00 == -1)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  sub_10000C8CC(v6, &unk_10092EE90);
  v19 = qword_100921F00;
LABEL_9:
  v20 = 1;
  if (v19 != -1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = sub_100752E44();
  sub_10000D0FC(v21, qword_100983378);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752CE4();

  return (*(v14 + 56))(a2, v20, 1, v13);
}

char *sub_100248DAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092EE90);
  __chkstk_darwin(v11 - 8);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  sub_100016B4C(a1, &v44 - v15, &unk_10092EE90);
  v17 = sub_100746084();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_100016B4C(v16, v13, &unk_10092EE90);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10000C8CC(v16, &unk_10092EE90);
      return 0;
    }

    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  sub_100744AC4();
  sub_1007526E4();
  if (sub_100744924())
  {

LABEL_8:

    sub_10000C8CC(v16, &unk_10092EE90);
    v22 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView);
    v23 = a2;
    if (v22 && (type metadata accessor for BannerCollectionViewCell(), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for BannerCollectionViewCell());
      v25 = [v27 initWithFrame:{0.0, 0.0, 0.0, 0.0, v44, v45}];
    }

    v28 = sub_10007DC04();
    v29 = 0.0;
    if ((v23 & 1) == 0)
    {
      if (qword_10091FEE0 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10097CCA0, qword_10097CCB8);
      sub_100536120();
      sub_100750564();
      v29 = v30;
      (*(v8 + 8))(v10, v7);
    }

    sub_100016C60(0, &qword_100923500);
    v31 = v25;
    v32 = sub_100753E04();
    [v31 setBackgroundColor:v32];

    sub_100170D58(v21, v23 & 1, v28, v45, v29, 0.0, v29);
    swift_unknownObjectRelease();

    return v31;
  }

  v33 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView);
  if (v33 && (type metadata accessor for LinkableHeaderCollectionViewCell(), (v34 = swift_dynamicCastClass()) != 0))
  {
    v35 = v34;
    v36 = v33;
  }

  else
  {
    v37 = objc_allocWithZone(type metadata accessor for LinkableHeaderCollectionViewCell());
    v35 = [v37 initWithFrame:{0.0, 0.0, 0.0, 0.0, v44, v45}];
  }

  sub_100016C60(0, &qword_100923500);
  v38 = v35;
  v39 = sub_100753E04();
  [v38 setBackgroundColor:v39];

  sub_10074ED74();
  sub_10007DC04();
  swift_unknownObjectRelease();
  v40 = *(*&v38[OBJC_IVAR____TtC22SubscribePageExtension32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label);
  v41 = sub_100743EA4();
  v42 = sub_1001D3738(v41, sub_1000E12F0);

  v43 = sub_100743E94();
  sub_10004DF04(v43, 0, v42);

  [v38 setNeedsLayout];

  sub_10000C8CC(v16, &unk_10092EE90);
  return v38;
}

uint64_t sub_1002493C4(void *a1)
{
  *a1 = [objc_allocWithZone(type metadata accessor for BannerCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return _objc_release_x1();
}

void sub_100249424(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_10074E644();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView])
  {

    sub_10074E654();
    v11 = (*(v8 + 88))(v10, v7);
    if (v11 == enum case for Uber.AssetType.artwork(_:))
    {
      v12 = [v3 traitCollection];
      v13 = sub_1007537D4();

      if (v13)
      {
        if (!sub_10074E5D4())
        {
          goto LABEL_11;
        }

LABEL_10:

        sub_100249650(v14, a1, a2, a3);

        return;
      }

      if (sub_10074E634())
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (v11 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_10074E624())
      {
        sub_10074EC14();

        goto LABEL_10;
      }

LABEL_11:

      return;
    }

    v15 = enum case for Uber.AssetType.icon(_:);
    v16 = v11;

    if (v16 != v15)
    {
      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_100249650(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v74 = a2;
  v8 = sub_1007504F4();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v10 - 8);
  v70 = &v58 - v11;
  v12 = sub_10000C518(&qword_10092BBE0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v58 - v14;
  v15 = sub_10074E5E4();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v58 - v19;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = sub_10074F704();
  __chkstk_darwin(v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  v31 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
  if (v31)
  {
    v61 = v28;
    v62 = v27;
    v63 = a1;
    v64 = v13;
    v65 = v12;
    v32 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_uber];

    v33 = v31;
    v34 = [v33 backgroundColor];
    v60 = v33;
    v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView];
    v36 = type metadata accessor for MediaView();
    v81.receiver = v35;
    v81.super_class = v36;
    objc_msgSendSuper2(&v81, "setBackgroundColor:", v34);
    [*(*&v35[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v34];
    v37 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
    if (v37)
    {
      v38 = v37;
      [v38 setBackgroundColor:v34];
    }

    swift_getKeyPath();
    sub_100746914();

    sub_10074F5E4();
    v40 = v39;
    sub_10074F5D4();
    v42 = v40 - v41;
    swift_getKeyPath();
    sub_100746914();

    v43 = v80;
    v44 = sub_1007537D4();

    v59 = v17;
    v66 = a3;
    if (v44)
    {
      sub_10074E604();
      (*(v75 + 104))(v22, enum case for Uber.Style.inline(_:), v15);
      sub_10024A418(&qword_10092EED0, &type metadata accessor for Uber.Style);
      sub_100753274();
      sub_100753274();
      if (v78 == v76 && v79 == v77)
      {
        v45 = v32;
        v46 = 1;
      }

      else
      {
        v45 = v32;
        v46 = sub_100754754();
      }

      v47 = *(v75 + 8);
      v47(v22, v15);
      v47(v25, v15);

      if (v46)
      {
        v42 = v42 - a4;
      }

      v32 = v45;
    }

    sub_100746964();
    v48 = v73;
    sub_100752EB4();
    v49 = v72;
    v74 = v32;
    sub_10074E604();
    swift_getKeyPath();
    sub_1001B58AC();
    v50 = v65;
    sub_100752E94();

    v51 = v78;
    sub_10074F674();
    v53 = v52;
    v54 = [v71 traitCollection];
    sub_1006439D4(v54, v49, (v51 & 1) == 0, v53, *&v42, 0);
    if (sub_1007537D4())
    {
      (*(v75 + 104))(v59, enum case for Uber.Style.inline(_:), v15);
      sub_10024A418(&qword_10092EED0, &type metadata accessor for Uber.Style);
      sub_100753274();
      sub_100753274();
      if (v78 == v76 && v79 == v77)
      {
        (*(v75 + 8))(v59, v15);

LABEL_18:
        sub_10074F374();

        (*(v75 + 8))(v49, v15);
        type metadata accessor for UberHeaderView();
        sub_10024A418(&qword_10092EEC8, type metadata accessor for UberHeaderView);
        v57 = v60;
        sub_100744204();

        (*(v64 + 8))(v48, v50);
        (*(v61 + 8))(v30, v62);
        return;
      }

      v55 = sub_100754754();
      (*(v75 + 8))(v59, v15);

      if (v55)
      {
        goto LABEL_18;
      }
    }

    sub_10074F2A4();
    v56 = v67;
    sub_100750504();
    sub_1007504B4();
    (*(v68 + 8))(v56, v69);
    goto LABEL_18;
  }
}

uint64_t sub_100249F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200);
}

uint64_t sub_100249F78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_100923200);
  return swift_endAccess();
}

uint64_t sub_10024A058(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText + 8);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v5, *v5 == v4) ? (v7 = v6 == a2) : (v7 = 0), !v7 && (result = sub_100754754(), (result & 1) == 0)))
  {
LABEL_10:

    return sub_1002668B8(v4, a2);
  }

  return result;
}

void sub_10024A0FC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber;
  if (*(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    sub_100753F54();
  }

  else
  {
    if (qword_10091FEC8 != -1)
    {
      swift_once();
    }

    v5 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v5, qword_10097CC38);
    v13 = a1;
    sub_100743464();
  }

  sub_100753F54();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer;
  sub_10024A2B8(a1, *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer), a2);
  sub_100753F54();
  v7 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v7)
  {
    v8 = *(a2 + v6);
    v9 = v7;
    v10 = [a1 traitCollection];
    if ((*(a2 + v4) & 1) != 0 || (v8 & 1) != 0 && (sub_1007537E4() & 1) == 0)
    {

      v11 = 1;
    }

    else
    {
      v12 = sub_1007537F4();

      if (v12)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    [v9 setTextAlignment:{v11, v13}];
  }
}

uint64_t sub_10024A2B8(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_1007537E4() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_1007537F4();

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

uint64_t sub_10024A34C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024A384()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10024A3F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10024A418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024A460(uint64_t a1, unsigned int a2)
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

uint64_t sub_10024A4BC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10024A528()
{
  result = qword_10092EED8;
  if (!qword_10092EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092EED8);
  }

  return result;
}

unint64_t sub_10024A580()
{
  result = qword_10092EEE0;
  if (!qword_10092EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092EEE0);
  }

  return result;
}

double sub_10024A5D4()
{
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  if (Height < Width)
  {
    Width = Height;
  }

  [v0 bounds];
  v3 = CGRectGetMidX(v23) - Width * 0.5;
  [v0 bounds];
  v4 = CGRectGetMidY(v24) - Width * 0.5;
  [v0 bounds];
  v5 = ceil(CGRectGetHeight(v25) * 0.6 * 0.5);
  [v0 bounds];
  v6 = ceil(CGRectGetHeight(v26) * 0.5) - v5;
  [v0 bounds];
  v7 = ceil(CGRectGetHeight(v27) * 0.6 * 0.5);
  [v0 bounds];
  v8 = ceil(CGRectGetHeight(v28) * 0.5) - v7;
  v29.origin.x = v3;
  v29.origin.y = v4;
  v29.size.width = Width;
  v29.size.height = Width;
  v30 = CGRectInset(v29, v6, v8);
  x = v30.origin.x;
  y = v30.origin.y;
  v11 = v30.size.width;
  v12 = v30.size.height;
  [v0 bounds];
  v13 = ceil(ceil(CGRectGetHeight(v31) * 0.08) * -0.5);
  [v0 bounds];
  v14 = ceil(ceil(CGRectGetHeight(v32) * 0.08) * -0.5);
  v15 = x;
  v16 = y;
  v17 = v11;
  v18 = v12;

  *&result = CGRectInset(*&v15, v13, v14);
  return result;
}

void sub_10024A784()
{
  v1 = sub_100753064();
  v2 = [v0 animationForKey:v1];

  if (v2)
  {

    v3 = sub_100753064();
    [v0 removeAnimationForKey:v3];
  }

  [v0 removeAllAnimations];
  v4 = sub_10024B9E4();
  v5 = sub_100753064();
  [v0 addAnimation:v4 forKey:v5];
}

uint64_t sub_10024A8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_100754754() & 1) != 0 || a1 == 0x6F72507265746E65 && a2 == 0xED00007373657267 || (sub_100754754() & 1) != 0 || a1 == 0x676F725074697865 && a2 == 0xEC00000073736572 || (sub_100754754() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_100753064();
  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS____TtC22SubscribePageExtension20InstallProgressLayer;
  v7 = objc_msgSendSuper2(&v8, "needsDisplayForKey:", v6);

  return v7;
}

id sub_10024AA58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v3 || (sub_100754754() & 1) != 0)
  {
    v4 = sub_100753064();
    v5 = [objc_opt_self() animationWithKeyPath:v4];

    v6 = [v2 presentationLayer];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = sub_100753064();
    v9 = [v7 valueForKey:v8];

    if (v9)
    {
      sub_100754314();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    v11 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v12 = sub_10000C888(&v21, *(&v22 + 1));
      v13 = *(*(&v20 + 1) - 8);
      v14 = __chkstk_darwin(v12);
      v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = sub_100754734();
      (*(v13 + 8))(v16, v11);
      sub_10000C620(&v21);
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

    [v5 setFromValue:{v17, v19, v20, v21, v22}];
    swift_unknownObjectRelease();
    [v5 setDuration:0.4];
  }

  else
  {
    v10 = sub_100753064();
    v23.receiver = v2;
    v23.super_class = type metadata accessor for InstallProgressLayer();
    v5 = objc_msgSendSuper2(&v23, "actionForKey:", v10);
  }

  return v5;
}

void sub_10024AD5C(CGContext *a1)
{
  CGContextSetFillColorWithColor(a1, *&v1[OBJC_IVAR____TtC22SubscribePageExtension20InstallProgressLayer_stageColor]);
  [v1 bounds];
  CGContextFillRect(a1, v7);
  [v1 enterProgress];
  if (v3 > COERCE_DOUBLE(1))
  {
    sub_10024AF98(a1);
  }

  [v1 progress];
  if (v4 > COERCE_DOUBLE(1))
  {
    sub_10024B18C(a1);
  }

  [v1 exitProgress];
  if (v5 > COERCE_DOUBLE(1))
  {

    sub_10024AE9C(a1);
  }
}

void sub_10024AE9C(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v12.origin.x = sub_10024A5D4();
  Width = CGRectGetWidth(v12);
  v13.origin.x = sub_10024A5D4();
  Height = CGRectGetHeight(v13);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 exitProgress];
  v7 = v6;
  [v1 bounds];
  v8 = CGRectGetWidth(v14);
  [v1 bounds];
  v9 = CGRectGetHeight(v15);
  if (v8 > v9)
  {
    v9 = v8;
  }

  v10 = v5 - (v5 + v7 * (ceil(sqrt(v9 * 0.5 * (v9 * 0.5) + v9 * 0.5 * (v9 * 0.5))) - v5));
  v16.origin.x = sub_10024A5D4();
  v17 = CGRectInset(v16, v10, v10);
  CGContextFillEllipseInRect(a1, v17);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_10024AF98(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v22.origin.x = sub_10024A5D4();
  Width = CGRectGetWidth(v22);
  v23.origin.x = sub_10024A5D4();
  Height = CGRectGetHeight(v23);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 enterProgress];
  v7 = v5 * (1.0 - v6);
  [v1 bounds];
  v8 = CGRectGetWidth(v24);
  [v1 bounds];
  v9 = CGRectGetHeight(v25);
  if (v9 < v8)
  {
    v8 = v9;
  }

  [v1 bounds];
  v10 = CGRectGetMidX(v26) - v8 * 0.5;
  [v1 bounds];
  v11 = CGRectGetMidY(v27) - v8 * 0.5;
  [v1 bounds];
  v12 = ceil(CGRectGetHeight(v28) * 0.6 * 0.5);
  [v1 bounds];
  v13 = ceil(CGRectGetHeight(v29) * 0.5) - v12;
  [v1 bounds];
  v14 = ceil(CGRectGetHeight(v30) * 0.6 * 0.5);
  [v1 bounds];
  v15 = ceil(CGRectGetHeight(v31) * 0.5) - v14;
  v32.origin.x = v10;
  v32.origin.y = v11;
  v32.size.width = v8;
  v32.size.height = v8;
  v33 = CGRectInset(v32, v13, v15);
  v34 = CGRectInset(v33, v7, v7);
  x = v34.origin.x;
  y = v34.origin.y;
  v18 = v34.size.width;
  v19 = v34.size.height;
  [v1 bounds];
  v20 = CGRectGetHeight(v35);
  CGContextSetLineWidth(a1, ceil(v20 * 0.08));
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v18;
  v36.size.height = v19;
  CGContextStrokeEllipseInRect(a1, v36);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_10024B18C(CGContext *a1)
{
  v2 = v1;
  v4 = sub_10074FC04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  [v2 bounds];
  Width = CGRectGetWidth(v34);
  [v2 bounds];
  Height = CGRectGetHeight(v35);
  if (Height < Width)
  {
    Width = Height;
  }

  [v2 bounds];
  v10 = CGRectGetMidX(v36) - Width * 0.5;
  [v2 bounds];
  v11 = CGRectGetMidY(v37) - Width * 0.5;
  [v2 bounds];
  v12 = ceil(CGRectGetHeight(v38) * 0.6 * 0.5);
  [v2 bounds];
  v13 = ceil(CGRectGetHeight(v39) * 0.5) - v12;
  [v2 bounds];
  v14 = ceil(CGRectGetHeight(v40) * 0.6 * 0.5);
  [v2 bounds];
  v15 = ceil(CGRectGetHeight(v41) * 0.5) - v14;
  v42.origin.x = v10;
  v42.origin.y = v11;
  v42.size.width = Width;
  v42.size.height = Width;
  v43 = CGRectInset(v42, v13, v15);
  CGRectGetMidX(v43);
  [v2 bounds];
  ceil(CGRectGetHeight(v44) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v45) * 0.5);
  [v2 bounds];
  v16 = CGRectGetWidth(v46);
  [v2 bounds];
  v17 = CGRectGetHeight(v47);
  if (v17 < v16)
  {
    v16 = v17;
  }

  [v2 bounds];
  v18 = CGRectGetMidX(v48) - v16 * 0.5;
  [v2 bounds];
  v19 = CGRectGetMidY(v49) - v16 * 0.5;
  [v2 bounds];
  v20 = ceil(CGRectGetHeight(v50) * 0.6 * 0.5);
  [v2 bounds];
  v21 = ceil(CGRectGetHeight(v51) * 0.5) - v20;
  [v2 bounds];
  v22 = ceil(CGRectGetHeight(v52) * 0.6 * 0.5);
  [v2 bounds];
  v23 = ceil(CGRectGetHeight(v53) * 0.5) - v22;
  v54.origin.x = v18;
  v54.origin.y = v19;
  v54.size.width = v16;
  v54.size.height = v16;
  v55 = CGRectInset(v54, v21, v23);
  CGRectGetMidY(v55);
  [v2 bounds];
  ceil(CGRectGetHeight(v56) * 0.6 * 0.5);
  [v2 bounds];
  CGRectGetHeight(v57);
  [v2 bounds];
  ceil(CGRectGetHeight(v58) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v59) * 0.5);
  [v2 bounds];
  v24 = CGRectGetWidth(v60);
  [v2 bounds];
  v25 = CGRectGetHeight(v61);
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  [v2 bounds];
  v27 = CGRectGetMidX(v62) - v26 * 0.5;
  [v2 bounds];
  v28 = CGRectGetMidY(v63) - v26 * 0.5;
  [v2 bounds];
  v29 = ceil(CGRectGetHeight(v64) * 0.6 * 0.5);
  [v2 bounds];
  v30 = ceil(CGRectGetHeight(v65) * 0.5) - v29;
  [v2 bounds];
  v31 = ceil(CGRectGetHeight(v66) * 0.6 * 0.5);
  [v2 bounds];
  v32 = ceil(CGRectGetHeight(v67) * 0.5) - v31;
  v68.origin.x = v27;
  v68.origin.y = v28;
  v68.size.width = v26;
  v68.size.height = v26;
  v69 = CGRectInset(v68, v30, v32);
  CGRectGetMidY(v69);
  [v2 progress];
  sub_100753554();
  sub_100753564();
  CGContextClosePath(a1);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  sub_100753584();
  (*(v5 + 8))(v7, v4);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

id sub_10024B854(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v5 = [v4 CGColor];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension20InstallProgressLayer_originAngle] = 0x4012D97C7F3321D2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InstallProgressLayer();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10024B958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10024B9E4()
{
  v0 = sub_100753064();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  isa = sub_1007534B4().super.super.isa;
  [v1 setFromValue:isa];

  v3 = sub_100753424().super.super.isa;
  [v1 setToValue:v3];

  v4 = v1;
  [v4 setDuration:0.3];
  [v4 setFillMode:kCAFillModeForwards];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

void sub_10024BAF8(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase] = a1;
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

uint64_t sub_10024BBC0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - v6;
  v7 = sub_10000C518(&qword_100928550);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  sub_100753804();
  sub_100753804();
  v96 = vdupq_n_s64(0x405A400000000000uLL);
  v93 = vdupq_n_s64(0x4056000000000000uLL);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for CGSize(0);
  sub_100743484();
  v96.i64[0] = 0x402E000000000000;
  v93.i64[0] = 0x402C000000000000;
  sub_100743484();
  *v4 = UIFontTextStyleBody;
  v62 = enum case for FontSource.textStyle(_:);
  v60 = v2[13];
  v61 = v2 + 13;
  v60(v4);
  v97 = sub_100750B04();
  v98 = &protocol witness table for StaticDimension;
  v9 = v97;
  v57 = v97;
  sub_10000D134(v96.i64);
  v94 = v1;
  v95 = &protocol witness table for FontSource;
  v10 = sub_10000D134(v93.i64);
  v58 = v2[2];
  v58(v10, v4, v1);
  v59 = v2 + 2;
  v11 = UIFontTextStyleBody;
  sub_100750B14();
  v12 = v2[1];
  v55 = v2 + 1;
  v12(v4, v1);
  v13 = v12;
  v56 = v12;
  *v4 = v11;
  v14 = v62;
  v15 = v60;
  (v60)(v4, v62, v1);
  v94 = v9;
  v95 = &protocol witness table for StaticDimension;
  v50 = sub_10000D134(v93.i64);
  v91 = v1;
  v92 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v90);
  v17 = v58;
  v58(v16, v4, v1);
  v18 = v11;
  v51 = v18;
  sub_100750B14();
  v13(v4, v1);
  *v4 = v18;
  v15(v4, v14, v1);
  v19 = v15;
  v20 = v57;
  v91 = v57;
  v92 = &protocol witness table for StaticDimension;
  sub_10000D134(v90);
  v88 = v1;
  v89 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v87);
  v17(v21, v4, v1);
  sub_100750B14();
  v22 = v56;
  v56(v4, v1);
  *v4 = v51;
  v23 = v62;
  v19(v4, v62, v1);
  v88 = v20;
  v89 = &protocol witness table for StaticDimension;
  sub_10000D134(v87);
  v85 = v1;
  v86 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v84);
  v58(v24, v4, v1);
  sub_100750B14();
  v22(v4, v1);
  *v4 = UIFontTextStyleFootnote;
  v25 = v60;
  (v60)(v4, v23, v1);
  v85 = v20;
  v86 = &protocol witness table for StaticDimension;
  sub_10000D134(v84);
  v82 = v1;
  v83 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v81);
  v27 = v58;
  v58(v26, v4, v1);
  v28 = UIFontTextStyleFootnote;
  sub_100750B14();
  v29 = v56;
  v56(v4, v1);
  *v4 = v28;
  v25(v4, v62, v1);
  v82 = v57;
  v83 = &protocol witness table for StaticDimension;
  sub_10000D134(v81);
  v79 = v1;
  v80 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v78);
  v27(v30, v4, v1);
  v31 = v28;
  sub_100750B14();
  v29(v4, v1);
  *v4 = v31;
  v32 = v60;
  (v60)(v4, v62, v1);
  v33 = v57;
  v79 = v57;
  v80 = &protocol witness table for StaticDimension;
  sub_10000D134(v78);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v75);
  v35 = v58;
  v58(v34, v4, v1);
  v36 = v31;
  sub_100750B14();
  v56(v4, v1);
  *v4 = v36;
  v37 = v62;
  v32(v4, v62, v1);
  v76 = v33;
  v77 = &protocol witness table for StaticDimension;
  sub_10000D134(v75);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v72);
  v35(v38, v4, v1);
  v39 = v36;
  sub_100750B14();
  v40 = v56;
  v56(v4, v1);
  *v4 = v39;
  (v60)(v4, v37, v1);
  v73 = v33;
  v74 = &protocol witness table for StaticDimension;
  v50 = sub_10000D134(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v41 = sub_10000D134(v69);
  v35(v41, v4, v1);
  v42 = v39;
  v51 = v42;
  sub_100750B14();
  v40(v4, v1);
  *v4 = v42;
  v43 = v62;
  v44 = v60;
  (v60)(v4, v62, v1);
  v70 = v33;
  v71 = &protocol witness table for StaticDimension;
  sub_10000D134(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_10000D134(v66);
  v46 = v58;
  v58(v45, v4, v1);
  sub_100750B14();
  v40(v4, v1);
  *v4 = v51;
  v44(v4, v43, v1);
  v67 = v57;
  v68 = &protocol witness table for StaticDimension;
  sub_10000D134(v66);
  v64 = v1;
  v65 = &protocol witness table for FontSource;
  v47 = sub_10000D134(v63);
  v46(v47, v4, v1);
  sub_100750B14();
  v40(v4, v1);
  v64 = sub_1007507D4();
  v65 = &protocol witness table for ZeroDimension;
  sub_10000D134(v63);
  sub_1007507C4();
  return sub_1007477D4();
}

char *sub_10024C578(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = v60 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_1007469A4();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  v21 = sub_10000D0FC(v20, qword_100980A38);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v67 = v21;
  v69 = v22 + 16;
  v70 = v23;
  (v23)(v16);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v66 = v25;
  v25(v16, 0, 1, v20);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v64 = *(v11 + 104);
  v65 = v11 + 104;
  v64(v13);
  v27 = v10;
  v63 = sub_100745C84();
  v28 = objc_allocWithZone(v63);
  *&v5[v19] = sub_100745C74();
  v29 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separatorView] = 0;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
  v31 = sub_100751374();
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  sub_1007433C4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_artworkView] = sub_1007431D4();
  v62 = v5;
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v32 = sub_10000D0FC(v20, qword_1009809D8);
  v70(v16, v32, v20);
  v33 = v66;
  v66(v16, 0, 1, v20);
  v60[1] = v24;
  v61 = v27;
  v34 = v64;
  (v64)(v13, v26, v27);
  v35 = v63;
  v36 = objc_allocWithZone(v63);
  v37 = sub_100745C74();
  v38 = v62;
  *&v62[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_titleLabel] = v37;
  v70(v16, v67, v20);
  v33(v16, 0, 1, v20);
  v34(v13, v26, v61);
  v39 = objc_allocWithZone(v35);
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_subtitleLabel] = sub_100745C74();
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerButton] = sub_100154454(0);
  v71.receiver = v38;
  v71.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  v42 = [v41 contentView];
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v43 = [v41 contentView];
  [v43 addSubview:*&v41[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_artworkView]];

  v44 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_titleLabel;
  v45 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_100745C34();

  v46 = [v41 contentView];
  [v46 addSubview:*&v41[v44]];

  v47 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_subtitleLabel;
  v48 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_100016C60(0, &qword_100923500);
  v49 = v48;
  v50 = sub_100753DF4();
  [v49 setTextColor:v50];

  v51 = *&v41[v47];
  sub_100745C34();

  v52 = v41;
  v53 = [v52 contentView];
  [v53 addSubview:*&v41[v47]];

  v54 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();

  v55 = [v52 contentView];
  [v55 addSubview:*&v52[v54]];

  v56 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel;
  [*&v52[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v52[v56] setText:0];
  [*&v52[v56] setHidden:1];
  v57 = *&v52[v56];
  sub_100745C34();

  v58 = [v52 contentView];
  [v58 addSubview:*&v52[v56]];

  return v52;
}

double sub_10024CD14()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100928550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = sub_100747814();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_10024BBC0(v10);

  sub_1007477E4();
  (*(v7 + 8))(v10, v6);
  v13[1] = v1;
  sub_100743464();
  (*(v3 + 8))(v5, v2);
  return *&v13[2];
}

void sub_10024CEE0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    [v2 addSubview:v7];
  }

LABEL_4:
}

uint64_t sub_10024CF88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100754724();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_1009249B0);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = sub_10000C518(&qword_100928550);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = sub_100747814();
  v24 = *(v26 - 8);
  *&v12 = __chkstk_darwin(v26).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v16 = sub_100753804();

  if (v16)
  {
    if (qword_100921CF0 != -1)
    {
      swift_once();
    }

    v17 = sub_100751374();
    v18 = sub_10000D0FC(v17, qword_100982E40);
    v19 = *(*(v17 - 8) + 16);
    v20 = v30;

    return v19(v20, v18, v17);
  }

  else
  {
    v22 = [a1 traitCollection];
    sub_10024BBC0(v14);

    sub_1007477E4();
    v31 = a1;
    sub_100743464();
    (*(v9 + 8))(v11, v8);
    sub_1007477F4();
    sub_1007502D4();
    sub_100743514();
    (*(v28 + 8))(v5, v29);
    (*(v25 + 8))(v7, v27);
    if (qword_100921CF0 != -1)
    {
      swift_once();
    }

    v23 = sub_100751374();
    sub_10000D0FC(v23, qword_100982E40);
    sub_100751314();
    return (*(v24 + 8))(v14, v26);
  }
}

id sub_10024D3D4()
{
  v1 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_100751374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_100229A24(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000C8CC(v3, &qword_100933250);
    result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_10024D7B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_100750354();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100747834();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747814();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = sub_100751374();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  v75 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v13);
  v16 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v105 = v18;
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separatorView];
  v76 = v10;
  v77 = v6;
  v78 = v5;
  if (v25)
  {
    v26 = v25;
    if ([v26 isHidden])
    {
    }

    else
    {
      v27 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v12 + 16);
      v28(v15, &v26[v27], v11);
      sub_100751324();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v68 = *(v12 + 8);
      v68(v15, v11);
      [v26 setFrame:{v30, v32, v34, v36}];
      v37 = &v26[v27];
      v5 = v78;
      v28(v15, v37, v11);
      v10 = v76;
      v6 = v77;
      sub_100753B44();

      v68(v15, v11);
    }
  }

  v38 = [v1 traitCollection];
  sub_10024BBC0(v10);

  v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerButton];
  v40 = &v39[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v39[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v41 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v39[v41], v102);
    sub_10000C888(v102, v103);
    sub_10074AE54();
    v43 = v42;
    v45 = v44;
    sub_10000C620(v102);
    *v40 = v43;
    *(v40 + 1) = v45;
    v40[16] = 0;
  }

  sub_100747804();
  (*(v6 + 16))(v79, v10, v5);
  v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_artworkView];
  v103 = sub_1007433C4();
  v104 = &protocol witness table for UIView;
  v102[0] = v46;
  v47 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v47)
  {
    v48 = sub_100745C84();
    v49 = &protocol witness table for UILabel;
    v50 = v47;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = v50;
  v100 = v48;
  v101 = v49;
  v51 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_titleLabel];
  v52 = sub_100745C84();
  v95 = v52;
  v96 = &protocol witness table for UILabel;
  v93 = &protocol witness table for UILabel;
  v94 = v51;
  v53 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  v92 = v52;
  v91 = v53;
  v54 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v54)
  {
    v55 = &protocol witness table for UILabel;
    v56 = v52;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v54;
  v89 = v56;
  v90 = v55;
  v57 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel];
  v84 = v52;
  v83 = v57;
  v81 = type metadata accessor for OfferButton();
  v82 = &protocol witness table for UIView;
  v80 = v39;
  v58 = v47;
  v59 = v51;
  v60 = v53;
  v61 = v54;
  v62 = v57;
  v63 = v39;
  v64 = v46;
  v65 = v70;
  sub_100747824();
  v66 = v69;
  sub_1007477C4();
  (*(v71 + 8))(v66, v73);
  sub_10024EB5C(&qword_100929AD0, type metadata accessor for MediumLockupCollectionViewCell);
  sub_10074AAF4();
  (*(v72 + 8))(v65, v74);
  return (*(v77 + 8))(v76, v78);
}

id sub_10024DEEC(char a1, uint64_t a2)
{
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100920ED0 != -1)
    {
      swift_once();
    }

    v16 = sub_100750534();
    v17 = sub_10000D0FC(v16, qword_1009809C0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_100745C84());
    v20 = sub_100745C74();
    v2 = v15;
    sub_10024CEE0(v20, &OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_10024E19C()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100980AB0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_100745C84());
  v15 = sub_100745C74();
  sub_10024CEE0(v15, &OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_100745C34();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016C60(0, &qword_100923500);
      v18 = v17;
      v19 = sub_100753DE4();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for MediumLockupCollectionViewCell()
{
  result = qword_10092EFE8;
  if (!qword_10092EFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024E5E0()
{
  sub_1002296F8(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1002296F8(319, &qword_10092F000, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10024E728()
{
  sub_100743204();
  sub_1007433C4();
  sub_10024EB5C(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_10024E7C0(uint64_t a1)
{
  result = sub_10024EB5C(&qword_10092F008, type metadata accessor for MediumLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_10024E818(void *a1)
{
  v2 = sub_100747814();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007479B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v21 - v12;
  v14 = [a1 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v15 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v15 = qword_10093FF58;
  }

  v16 = sub_10000D0FC(v6, v15);
  (*(v7 + 16))(v9, v16, v6);

  (*(v7 + 32))(v13, v9, v6);
  v17 = [a1 traitCollection];
  sub_10024BBC0(v5);

  sub_100747964();
  sub_100747994();
  sub_100747804();
  sub_100747834();
  sub_10024EB5C(&qword_10092F010, &type metadata accessor for MediumLockupLayout);
  sub_100750D34();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_10024EB5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10024EBA4()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100980A38);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_100745C84());
  *(v1 + v11) = sub_100745C74();
  v16 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter);
  *v16 = 0u;
  v16[1] = 0u;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separatorView) = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
  v18 = sub_100751374();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  sub_100754644();
  __break(1u);
}

uint64_t sub_10024EED4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D6>, double a5@<D7>)
{
  v29[3] = a3;
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074F6E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  v19 = sub_10000C518(&qword_100923228);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v21 = a1;
  v23 = v29 - v22;
  sub_10024FA4C(v21, v29 - v22);
  sub_10024FA4C(a2, &v23[*(v20 + 56)]);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v31)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v14 + 104))(v18, *v24, v13);
  swift_getKeyPath();
  sub_1007525B4();

  v25 = (*(v10 + 88))(v12, v9);
  *&v29[1] = a4;
  *&v29[2] = a5;
  if (v25 == enum case for Shelf.ContentType.footnote(_:) || v25 == enum case for Shelf.ContentType.quote(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.appShowcase(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.banner(_:) || v25 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_18;
  }

  if (v25 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    (*(v14 + 16))(v30, v18, v13);
    if (qword_100920558 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v25 == enum case for Shelf.ContentType.arcadeFooter(_:) || v25 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
LABEL_18:
    (*(v14 + 16))(v30, v18, v13);
    if (qword_1009207D8 == -1)
    {
LABEL_19:

      sub_10074F6B4();
      (*(v14 + 8))(v18, v13);
      return sub_10024FAC0(v23);
    }

LABEL_21:
    swift_once();
    goto LABEL_19;
  }

  v26 = enum case for Shelf.ContentType.appPromotion(_:);
  v27 = v25;
  (*(v14 + 16))(v30, v18, v13);
  if (v27 == v26)
  {
    if (qword_100920200 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_1004E97E0(0.0);
  sub_10074F6B4();
  (*(v14 + 8))(v18, v13);
  sub_10024FAC0(v23);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10024F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074F6E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  v12 = sub_10000C518(&qword_100923228);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v18[-v14];
  sub_10024FA4C(a2, &v18[-v14]);
  sub_10024FA4C(a3, &v15[*(v13 + 56)]);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v16 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v18[15])
  {
    v16 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v16, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  (*(v6 + 8))(v11, v5);
  return sub_10024FAC0(v15);
}

uint64_t sub_10024F814()
{
  sub_10024F9F8();

  return sub_100745684();
}

uint64_t sub_10024F8F8()
{
  sub_10024F9F8();

  return sub_100745674();
}

unint64_t sub_10024F9F8()
{
  result = qword_10092F018;
  if (!qword_10092F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092F018);
  }

  return result;
}

uint64_t sub_10024FA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10093D6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024FAC0(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100923228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10024FB2C()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

  result = sub_100754574();
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

char *sub_10024FC4C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v59 = sub_100754074();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100932470);
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
        sub_10074ECB4();
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
        sub_10001E2C8(0, v14[2] + 1, 1);
        v14 = v63[0];
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        a1 = v63;
        sub_10001E2C8((v21 > 1), v22 + 1, 1);
        v14 = v63[0];
      }

      v14[2] = v22 + 1;
      v23 = &v14[2 * v22];
      v23[4] = v17;
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
  a1 = v14[2];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v24 = *&v3[v11];
  if (v24 >> 62)
  {
LABEL_44:
    result = sub_100754664();
    v26 = a1 - result;
    if (!__OFSUB__(a1, result))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          if (!sub_100754664())
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v3[v11] = a1;
        if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a1 = sub_10025F2C0(a1);
        }

        v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v52)
        {
          goto LABEL_43;
        }

        v53 = v52 - 1;
        v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
        *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v53;
        *&v3[v11] = a1;
        swift_endAccess();
        [v54 removeFromSuperview];
        v62 = v54;
        swift_beginAccess();
        sub_10000C518(&qword_10092AEF8);
        sub_1007512D4();
        swift_endAccess();
      }
    }
  }

  else
  {
    do
    {
      swift_beginAccess();
      sub_10000C518(&qword_10092AEF8);
      sub_1007512B4();
      swift_endAccess();
      v27 = v62;
      swift_beginAccess();
      v28 = v27;
      sub_100753284();
      if (*((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100753304();
      }

      sub_100753344();
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

  v29 = sub_10024FB2C();
  if (v29)
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v57 = sub_100016C60(0, &qword_100929CC0);
    LODWORD(v56) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
    v55 += 13;
    do
    {
      if (qword_100920688 != -1)
      {
        swift_once();
      }

      v35 = qword_10092F020;
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      *(v36 + 24) = v33;
      v37 = v34 & 1;
      *(v36 + 32) = v34 & 1;
      v38 = v35;

      v39 = sub_100753FF4();
      v40 = v32;
      [v40 removeActionForIdentifier:v38 forControlEvents:0x2000];

      sub_10074ECB4();

      sub_100754164();
      sub_1007541C4();
      v41 = objc_opt_self();
      v42 = [v41 tintColor];
      v43 = [v42 colorWithAlphaComponent:0.08];

      sub_100754114();
      v44 = [v41 tintColor];
      sub_100754124();
      (*v55)(v58, v56, v59);
      sub_100754084();
      sub_1007540C4();
      v45 = v60;
      sub_100751A04();
      v46 = sub_1007519F4();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_100754144();
      v47 = sub_1007541F4();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      sub_100754224();
      [v40 setEnabled:v37];

      [v40 addAction:v39 forControlEvents:0x2000];

      v32 = sub_10024FB2C();
      v33 = v48;
      v34 = v49;
    }

    while (v32);
  }

  return [v3 setNeedsLayout];
}

NSString sub_100250498()
{
  result = sub_100753064();
  qword_10092F020 = result;
  return result;
}

id sub_100250744@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(UIButton) init];
  *a1 = result;
  return result;
}

uint64_t sub_100250780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000C8CC(v7, &unk_100923960);
  }

  sub_1003C0E00(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

uint64_t sub_1002508C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007410D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1000168F0();
  return sub_1007410E4();
}

void sub_100250984()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  sub_100016C60(0, &qword_10093B420);

  v2 = sub_1007532D4();

  if (v2)
  {
    [v0 bounds];
    v4 = v3;
    v5 = *&v0[v1];
    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      v8 = sub_100754664();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          v18 = sub_100754664();
          if (!v18)
          {
            return;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
              v20 = sub_100754574();
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
            sub_100753B24();
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
        v10 = sub_100754574();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
        v6 = sub_100754664();
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
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
            v32 = sub_100754574();
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
          sub_100753B24();
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

    v30 = sub_100754664();
    if (v30)
    {
      goto LABEL_28;
    }
  }
}