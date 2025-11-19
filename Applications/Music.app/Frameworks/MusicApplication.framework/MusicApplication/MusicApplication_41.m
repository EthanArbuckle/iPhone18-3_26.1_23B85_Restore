uint64_t type metadata accessor for CuratorActivityCell()
{
  result = qword_E00BD8;
  if (!qword_E00BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PromotionalParallaxViewController.preferredStatusBarStyle.getter()
{
  v1 = *(sub_371110() + 115);

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView);
    if (v3)
    {
      v2 = *(v3 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle);
    }

    else
    {
      v2 = 1;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem);
  if (v4)
  {
    v5 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
    v6 = v4;
    LODWORD(v5) = v5();

    if (v5 == 1)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_370294(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v4 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem);
  *(v4 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = (*(&stru_2E8.size + (swift_isaMask & *v10)))();
  }

  else
  {
    v11 = 0;
  }

  sub_3755F0(v11);

  *(v4 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_needsPropertyUpdate) = 1;
  v12 = (v4 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler);
  v13 = *(v4 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler);
  if (v13)
  {
    v14 = v12[1];
    v15 = swift_allocObject();
    *(v15 + 2) = v13;
    *(v15 + 3) = v14;
    *(v15 + 4) = a2;
    *(v15 + 5) = a3;
    *(v15 + 6) = sub_3775D0;
    *(v15 + 7) = v8;
    *v12 = sub_3776A4;
    v12[1] = v15;
    sub_307CC(v13);

    v16 = v13;
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 2) = a2;
    *(v17 + 3) = a3;
    *(v17 + 4) = sub_3775D0;
    *(v17 + 5) = v8;
    *v12 = sub_377618;
    v12[1] = v17;

    v16 = 0;
  }

  sub_17654(v16);
  sub_373738();
  sub_371830();
}

void sub_37048C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController) = a1;
  if (!v2)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_7;
  }

  v6 = a1;
  if (!a1 || (type metadata accessor for PageHeaderContentViewController(), v6 = v6, v3 = v2, v4 = sub_ABA790(), v3, (v4 & 1) == 0))
  {
LABEL_7:
    sub_371830();

    v5 = v2;
    goto LABEL_8;
  }

  v5 = v6;
LABEL_8:
}

void sub_370560(double a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView);
  if (v4)
  {
    v5 = v4;
    [v5 contentSize];
    v7 = v6;
    [v5 adjustedContentInset];
    v9 = v7 + v8;
    [v5 adjustedContentInset];
    v11 = v9 + v10;
    [v5 bounds];
    if (CGRectGetHeight(v29) >= v11)
    {
LABEL_11:

      return;
    }

    v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem);
    if (!v12)
    {
LABEL_13:
      [v5 adjustedContentInset];
      sub_371110();

      return;
    }

    v13 = *&stru_298.segname[(swift_isaMask & *v12) + 8];
    v14 = v12;
    LOBYTE(v13) = v13();

    if (v13 > 1u)
    {
    }

    else
    {
      v15 = sub_ABB3C0();

      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v16 = *(sub_371110() + 8);
    if (!v16)
    {

      if (a2 < -70.0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    v17 = v16;
    v18 = [v17 _backgroundView];
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v30.origin.x = v21;
      v30.origin.y = v23;
      v30.size.width = v25;
      v30.size.height = v27;
      MaxY = CGRectGetMaxY(v30);

      if (-(MaxY + 10.0 + 70.0) > a2)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    __break(1u);
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.willMove(toParent:)(UIViewController_optional toParent)
{
  v2 = v1;
  isa = toParent.value.super.super.isa;
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "willMoveToParentViewController:", isa);
  v4 = [v1 parentViewController];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 != isa)
  {
    v5 = v4;
    v6 = [v1 navigationItem];
    v7 = v5;
    objc_opt_self();
    v8 = v7;
    if (swift_dynamicCastObjCClass())
    {
LABEL_4:
    }

    else
    {
      while (1)
      {
        v13 = v6;
        v6 = [(objc_class *)v8 navigationItem];

        v14 = [(objc_class *)v8 parentViewController];
        if (!v14)
        {
          break;
        }

        v8 = v14;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_4;
        }
      }

      v8 = v7;
    }

    [v6 setPreferredNavigationBarTintColor:0];
    sub_387B6C(0x3FF0000000000000, 0);
    v9 = [v6 navigationBar];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 _backgroundView];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      [v11 setHidden:1];

      v6 = v12;
    }

LABEL_9:
    if (!isa)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_15:
  v15 = isa;
  v16 = [v2 navigationItem];
  v17 = v15;
  objc_opt_self();
  v18 = v17;
  if (swift_dynamicCastObjCClass())
  {
LABEL_16:
  }

  else
  {
    while (1)
    {
      v19 = v16;
      v16 = [(objc_class *)v18 navigationItem];

      v20 = [(objc_class *)v18 parentViewController];
      if (!v20)
      {
        break;
      }

      v18 = v20;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_16;
      }
    }

    v18 = v17;
  }

  sub_374C7C(v16);
}

Swift::Void __swiftcall PromotionalParallaxViewController.didMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "didMoveToParentViewController:", isa);
  v3 = [v1 navigationItem];
  v4 = [v1 parentViewController];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v6 = v5;
      v7 = [v6 navigationItem];

      v5 = [v6 parentViewController];
      v3 = v7;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = v3;
LABEL_8:
  sub_374C7C(v7);
}

void sub_370BFC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a5 || a2 != a6 || a3 != a7 || a4 != a8)
  {
    [v8 verticalScrollIndicatorInsets];
    v21 = v20 - a1 + a5;
    v23 = v22 - a2 + a6;
    v25 = v24 - a3 + a7;
    v27 = v26 - a4 + a8;

    [v8 setScrollIndicatorInsets:{v21, v23, v25, v27}];
  }
}

id sub_370CC8(id result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a2 != a6 || a3 != a7 || a4 != a8 || a5 != a9)
  {
    v13 = result;
    v22 = [v9 _isAutomaticContentOffsetAdjustmentEnabled];
    [v9 _setAutomaticContentOffsetAdjustmentEnabled:0];
    [v9 contentInset];
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    [v9 contentOffset];
    v34 = v28;
    v35 = v27;
    [v9 setContentInset:{v30 - a2 + a6, v31 - a3 + a7, v32 - a4 + a8, v33 - a5 + a9}];
    v29 = v34 + a2 - a6;
    if (v13 == 2)
    {
      [v9 setContentOffset:{v35, v29}];
    }

    else
    {
      [v9 setContentOffset:v13 & 1 animated:{v35, v29}];
    }

    return [v9 _setAutomaticContentOffsetAdjustmentEnabled:v22];
  }

  return result;
}

id PromotionalParallaxViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView] = 0;
  v9 = &v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v9 = UIEdgeInsetsZero.top;
  v9[1] = left;
  v9[2] = bottom;
  v9[3] = right;
  v13 = &v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
  *v13 = 0;
  v13[8] = 1;
  *&v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController] = 0;
  v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_shouldDisableAnimations] = 0;
  v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay] = 0;
  v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_needsPropertyUpdate] = 0;
  v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset] = 0;
  v14 = &v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_barSymbolButtons] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView;
  type metadata accessor for PromotionalImageryView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController____lazy_storage___promotionalImageryViewCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView] = 0;
  v16 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v4[v16] = TextDrawing.Cache.init()();
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewContentSizeObserver] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoReportingController] = 0;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_lastSeenViewBounds];
  *v17 = 0u;
  v17[1] = 0u;
  *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions] = UIOffsetZero;
  v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = 0;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions];
  *v18 = UIEdgeInsetsZero.top;
  v18[1] = left;
  v18[2] = bottom;
  v18[3] = right;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions];
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating] = 0;
  if (a2)
  {
    v20 = sub_AB9260();
  }

  else
  {
    v20 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v20, a3);

  v22 = v21;
  [*(sub_371110() + 15) addPointer:v22];

  return v22;
}

id sub_371110()
{
  v1 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController____lazy_storage___promotionalImageryViewCoordinator;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController____lazy_storage___promotionalImageryViewCoordinator])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController____lazy_storage___promotionalImageryViewCoordinator];
LABEL_5:

    return v2;
  }

  result = [v0 view];
  if (result)
  {
    v4 = result;
    type metadata accessor for PromotionalImageryViewCoordinator();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 1;
    *(v2 + 88) = 0;
    *(v2 + 96) = 1;
    *(v2 + 104) = 0;
    *(v2 + 112) = 1;
    *(v2 + 113) = 0;
    *(v2 + 115) = 0;
    *(v2 + 120) = [objc_allocWithZone(NSPointerArray) initWithOptions:517];
    *(v2 + 16) = v4;
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t PromotionalParallaxViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = sub_371110();
  v3 = *(v2 + 15);
  v4 = v0;
  result = [v3 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
      v7 = 0;
      while (1)
      {
        v8 = [*(v2 + 15) pointerAtIndex:v7];
        if (v8 && v8 == v4)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_11;
        }
      }

      [*(v2 + 15) removePointerAtIndex:v7];
    }

LABEL_11:

    v10.receiver = v4;
    v10.super_class = ObjectType;
    return objc_msgSendSuper2(&v10, "dealloc");
  }

  return result;
}

void sub_3714A4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView);
  if (a1)
  {
    v5 = a1;
    if (v4)
    {
      sub_377318();
      v6 = v4;
      v5 = v5;
      v7 = sub_ABA790();

      if (v7)
      {
        return;
      }
    }

    v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions);
    v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions + 8);
    v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions + 16);
    v11 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions + 24);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v15 = v5;
    sub_370CC8(&dword_0 + 2, v8, v9, v10, v11, UIEdgeInsetsZero.top, left, bottom, right);
    sub_370BFC(*(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions), *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions + 8), *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions + 16), *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions + 24), UIEdgeInsetsZero.top, left, bottom, right);

    v4 = *(v2 + v3);
    if (!v4)
    {
      v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewContentSizeObserver);
      *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewContentSizeObserver) = 0;
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    return;
  }

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v4;
  v18 = sub_AB3080();

  v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewContentSizeObserver);
  *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewContentSizeObserver) = v18;

  v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController);
  if (!v20)
  {

    goto LABEL_11;
  }

  v16 = *(v20 + 184);
  *(v20 + 184) = v17;
LABEL_9:

LABEL_11:
  v21 = UIEdgeInsetsZero.left;
  v22 = UIEdgeInsetsZero.bottom;
  v23 = UIEdgeInsetsZero.right;
  v24 = (v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions);
  *v24 = UIEdgeInsetsZero.top;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  v25 = (v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions);
  *v25 = UIEdgeInsetsZero.top;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  sub_375B00();
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController))
  {

    sub_38D1A8();
  }

  sub_371830();
}

void sub_37170C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_375B00();
    if (*&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
    {

      sub_38D1A8();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_371830();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_373354(v5);
  }
}

void sub_371830()
{
  v1 = v0;
  *&v2 = COERCE_DOUBLE(sub_ABA680());
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v228 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v228 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay) == 1)
  {
    v13 = [v0 view];
    if (!v13)
    {
      __break(1u);
      goto LABEL_128;
    }

    v14 = v13;
    v15 = [v13 _isInAWindow];

    if (!v15)
    {
      return;
    }
  }

  v16 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView;
  v17 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView);
  if (!v17)
  {
    return;
  }

  v18 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem);
  if (!v18)
  {
    return;
  }

  v239 = v5;
  v240 = v3;
  v241 = *&v2;
  v237 = v11;
  v238 = v9;
  *&v245 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem;
  v246 = *&v12;
  v19 = v17;
  *&v244 = v18;
  v247 = v18;
  v20 = [v1 traitCollection];
  v243 = [v20 horizontalSizeClass];

  v21 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler);
  v22 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler);
  v23 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler + 8);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v22;
  v25[4] = v23;
  v26 = *v21;
  *v21 = 0;
  v21[1] = 0;
  v27 = v22;
  sub_307CC(v22);
  sub_307CC(v22);

  sub_17654(v26);
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating))
  {
    sub_376B70(0, v24, v22);

    sub_17654(v22);

    v28 = v247;

    return;
  }

  v233 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating;
  v242 = v19;
  v236 = v25;

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_needsPropertyUpdate) != 1)
  {
    v243 = sub_3773AC;
    v34 = v22;
    v33 = &unk_E00000;
    goto LABEL_58;
  }

  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_needsPropertyUpdate) = 0;
  v235 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v247)))();
  if (v243 != &dword_0 + 1 && (v29 = (*&stru_248.segname[(swift_isaMask & *v247) - 8])()) != 0 || (v29 = (*(&stru_1F8.size + (swift_isaMask & *v247)))(), v29 | v235))
  {
    v35 = v29;
    v36 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView;
    v37 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
    v38 = v247;
    v234 = v35;
    if (v37)
    {
      v39 = v37;
      goto LABEL_26;
    }

    type metadata accessor for PromotionalParallaxContentView();
    v40 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v41 = v40;
    v42 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle);
    v43 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8);
    v44 = &v40[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle];
    v45 = *&v40[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle];
    v46 = v40[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle + 8];
    *v44 = v42;
    v44[8] = v43;
    if (v46)
    {
      v47 = v40;
      if (v43)
      {
        goto LABEL_25;
      }
    }

    else if (v43)
    {
      v48 = v40;
    }

    else
    {
      v249 = v45;
      v248 = v42;
      sub_7FD28();
      v49 = v41;
      if (sub_AB38E0())
      {
LABEL_25:
        v50 = *(v1 + v36);
        *(v1 + v36) = v41;
        v39 = v41;

        v51 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
        sub_ECA74(v41);

        v37 = 0;
        v38 = v247;
LABEL_26:
        v52 = (*&stru_298.segname[(swift_isaMask & *v38) + 8])(v37);
        v53 = v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle];
        v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] = v52;
        sub_1A9704(v53);
        v54 = (*(&stru_158.reloff + (swift_isaMask & *v247)))();
        v55 = &v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title];
        v56 = *&v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title];
        v57 = *&v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_title + 8];
        *v55 = v54;
        v55[1] = v58;
        sub_1AA2B8(v56, v57);

        v59 = (*(&stru_108.size + (swift_isaMask & *v247)))();
        v60 = &v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle];
        v61 = *&v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle];
        v62 = *&v39[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_subtitle + 8];
        *v60 = v59;
        v60[1] = v63;
        sub_1AA73C(v61, v62);
        v243 = v39;

        v64 = v241;
        if (!*(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController))
        {
          if (v235)
          {
            v65 = *(v1 + v16);
            if (v65)
            {
              v232 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController;
              v66 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_cropStyle;
              v67 = v235;
              swift_beginAccess();
              v68 = *(v67 + v66);
              if (v68)
              {
                v69 = v68;
              }

              else
              {
                v69 = ICStoreArtworkInfoCropStyleSpecificRectangle;
              }

              v70 = v235;
              v229 = v65;
              v71 = v68;
              v72 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v69);
              v231 = v70;

              if (v72)
              {
                [v72 setVideoCacheStoragePolicy:1];
              }

              v73 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent;
              v74 = v243;

              v230 = v72;
              sub_751F4(v72);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
              swift_allocObject();
              v75 = ArtworkVideoReportingController.init()();
              v76 = *&v74[v73];
              v77 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v78 = swift_allocObject();
              *(v78 + 2) = v77;
              *(v78 + 3) = v75;
              *(v78 + 4) = 0x78616C6C61726170;
              *(v78 + 5) = 0xE800000000000000;
              v79 = (v76 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
              v80 = *(v76 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
              *v79 = sub_3774B8;
              v79[1] = v78;

              sub_17654(v80);

              v81 = [v1 navigationController];
              if (v81)
              {
                v82 = v81;
                v83 = [v81 navigationBar];
              }

              else
              {
                v83 = 0;
              }

              type metadata accessor for ParallaxArtworkVideoPlaybackController(0);
              v84 = swift_allocObject();
              v229 = v229;
              v85 = sub_255740(v243, v229, v83, 0x78616C6C61726170, 0xE800000000000000, v84);
              v86 = swift_allocObject();
              *(v86 + 16) = v76;
              *(v86 + 24) = v75;
              v87 = v85[5];
              v85[5] = sub_3774C8;
              v85[6] = v86;

              sub_17654(v87);
              v88 = *(v76 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
              *(v76 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = *(v85 + 56);
              sub_76070(v88);
              (*(*v75 + 136))(*(v85 + 56));
              v89 = v85[8];
              v85[8] = sub_256DF8;
              v85[9] = v75;

              sub_17654(v89);
              v90 = v85[10];
              v85[10] = sub_256E44;
              v85[11] = v75;

              sub_17654(v90);
              v91 = v85[12];
              v85[12] = sub_37753C;
              v85[13] = v75;

              sub_17654(v91);
              v92 = v85[14];
              v85[14] = sub_256EE0;
              v85[15] = v75;

              sub_17654(v92);
              v93 = v85[16];
              v85[16] = sub_256F2C;
              v85[17] = v75;

              sub_17654(v93);

              v94 = swift_allocObject();
              v95 = v247;
              *(v94 + 16) = v247;
              v96 = *(*v75 + 160);
              v97 = v95;
              v96(sub_3775C0, v94);

              *&v232[v1] = v85;

              *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoReportingController) = v75;

              v64 = v241;
            }
          }
        }

        if (v234)
        {
          v98 = JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleSpecificRectangle);
          if (v98)
          {
            v99 = v98;
            v100 = v98;

            sub_74EA4(v99);
          }
        }

        v101 = (*(&stru_248.reloff + (swift_isaMask & *v247)))();
        v102 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent;
        v103 = v243;
        if (v101)
        {
          v104 = ICStoreArtworkInfoCropStyleSpecificRectangle;

          v105 = JSArtwork.artworkCatalog(defaultCropStyle:)(v104);
        }

        else
        {

          v105 = 0;
        }

        sub_74EA4(v105);

        v106 = *&v103[v102];
        v232 = v101;
        if (v101 && (v107 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment, swift_beginAccess(), (v101[v107] & 1) != 0))
        {

          v108 = v239;
          sub_ABA670();
          v109 = v240;
        }

        else
        {

          v110 = UIView.Corner.small.unsafeMutableAddressor();
          v109 = v240;
          v108 = v239;
          (*(v240 + 16))(v239, v110, COERCE_DOUBLE(*&v64));
        }

        v111 = v237;
        (*(v109 + 32))(v237, v108, COERCE_DOUBLE(*&v64));
        (*(v109 + 56))(v111, 0, 1, COERCE_DOUBLE(*&v64));
        v112 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
        swift_beginAccess();
        v113 = v238;
        sub_15F84(v106 + v112, v238, &unk_DFFBC0);
        swift_beginAccess();
        sub_8A01C(v111, v106 + v112);
        swift_endAccess();
        sub_75AE8(v113);
        sub_12E1C(v113, &unk_DFFBC0);
        sub_12E1C(v111, &unk_DFFBC0);

        v114 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v115 = v243;
        v116 = &v243[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight];
        v117 = *&v243[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_didInvalidatePreferredBaseHeight];
        *v116 = sub_377468;
        v116[1] = v114;

        sub_17654(v117);

        v118 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController);
        if (v118)
        {
          v119 = *&v118[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
          v120 = *&v115[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView];
          *&v115[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView] = v119;
          v121 = v119;
          v122 = v118;
          sub_1AA154(v120);
        }

        v123 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler);
        v32 = v234;
        if (v123)
        {

          v123(v115);
          sub_17654(v123);
        }

        v124 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
        [v124 setNeedsLayout];

        v33 = &unk_E00000;
        goto LABEL_53;
      }
    }

    [v41 setNeedsLayout];
    goto LABEL_25;
  }

  v30 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView) = 0;

  v31 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
  sub_ECA74(0);

  v32 = 0;
  v33 = &unk_E00000;
LABEL_53:
  v125 = (*(&stru_2E8.size + (swift_isaMask & *v247)))();
  if (v125)
  {
    v34 = v27;
    v126 = v125;
    sub_3755F0(v125);

    v243 = sub_3773AC;
  }

  else
  {
    sub_371110();
    sub_1D8EB0(0);

    v127 = v33[381];
    v128 = *(v1 + v127);
    if (v128)
    {
      v34 = v27;
      *(v1 + v127) = 0;

      v129 = swift_allocObject();
      v129[2] = v1;
      v129[3] = sub_3773AC;
      v129[4] = v236;
      v130 = v1;
      v243 = sub_37745C;
      v236 = v129;
    }

    else
    {
      v243 = sub_3773AC;
      v34 = v27;
    }
  }

LABEL_58:
  v131 = [v1 view];
  if (!v131)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v132 = v131;
  [v131 bounds];
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;

  v141 = [v1 traitCollection];
  v142 = [v1 view];
  if (!v142)
  {
LABEL_129:
    __break(1u);
    return;
  }

  v143 = v142;
  [v142 safeAreaInsets];
  v145 = v144;

  v146 = v33[381];
  v147 = *(v1 + v146);
  v148 = 0.0;
  v149 = 0.0;
  if (v147)
  {
    v150 = v147;
    v151 = sub_1D4684(v138);
    v153 = v152;
    [v150 bounds];
    if (CGRectGetHeight(v252) != v153)
    {
      v154 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
      [v154 setNeedsLayout];
    }

    v149 = v153 + 0.0;
  }

  v155 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
  if (v155)
  {
    v156 = v155;
    v253.origin.x = v134;
    v253.origin.y = v136;
    v253.size.width = v138;
    v253.size.height = v140;
    Width = CGRectGetWidth(v253);
    v158 = sub_1A70C4(v141, Width);
    v254.origin.x = v134;
    v254.origin.y = v136;
    v254.size.width = v138;
    v254.size.height = v140;
    v159 = CGRectGetWidth(v254);
    v148 = sub_1AAAF0(v141, v159);
    v160 = *&v156[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight];
    *&v156[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_collapsedBaseHeight] = v148;
    v248 = v160;
    v250 = v148;
    if (sub_AB38D0())
    {
      sub_1A7634(0, 0, 1);
      [v156 setNeedsLayout];
    }

    v161 = *&v156[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
    *&v156[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight] = v158;
    v248 = v161;
    v250 = v158;
    if (sub_AB38D0())
    {
      v162 = &v156[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
      *v162 = 0;
      *(v162 + 1) = 0;
      *(v162 + 2) = 0;
      v162[24] = 1;
      sub_1A7634(0, 0, 1);
      [v156 setNeedsLayout];
    }

    v149 = v149 + v158;
  }

  v163 = *(v1 + v245);
  if (!v163)
  {
    v167 = *&UIEdgeInsetsZero.top;
    v166 = *&UIEdgeInsetsZero.bottom;
    v245 = v166;
    v244 = v167;
    if (v149 <= 0.0)
    {
      v171 = *&v166;
      v172 = *&v167;
      goto LABEL_92;
    }

    v168 = 0;
    goto LABEL_80;
  }

  v164 = *&stru_298.segname[(swift_isaMask & *v163) + 8];
  v165 = v163;
  LOBYTE(v164) = v164();

  if (v164 > 1u)
  {

    v174 = *&UIEdgeInsetsZero.top;
    v173 = *&UIEdgeInsetsZero.bottom;
    v245 = v173;
    v244 = v174;
    if (v149 <= 0.0)
    {
      v171 = *&v173;
      v172 = *&v174;
      goto LABEL_93;
    }

    v168 = 1;
    goto LABEL_80;
  }

  v168 = sub_ABB3C0();

  v170 = *&UIEdgeInsetsZero.top;
  v169 = *&UIEdgeInsetsZero.bottom;
  v245 = v169;
  v244 = v170;
  if (v149 > 0.0)
  {
LABEL_80:
    v175 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets);
    v172 = v149 - *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets);
    v176 = v242;
    [v242 bounds];
    Height = CGRectGetHeight(v255);
    v178 = v175[2];
    [v176 contentSize];
    if (v168)
    {
      v171 = *&v245;
      goto LABEL_93;
    }

    v180 = v179 - (Height - (v149 + v178));
    v181 = v149 - v148;
    v183 = v180 >= v149 - v148 || v180 <= 0.0 || v181 <= 0.0;
    v184 = v181 - v180;
    if (v183)
    {
      v171 = *&v245;
    }

    else
    {
      v171 = v184;
    }

    goto LABEL_92;
  }

  v171 = *&v169;
  v172 = *&v170;
  if ((v168 & 1) == 0)
  {
LABEL_92:
    v145 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets);
  }

LABEL_93:
  v185 = v149 - v145;
  v186 = sub_371110();
  v187 = v186[5];
  v186[5] = v148;
  v248 = v187;
  v250 = v148;
  v188 = sub_AB38D0();
  v189 = v34;
  v190 = v236;
  if (v188)
  {
    sub_1D956C();
  }

  v191 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController____lazy_storage___promotionalImageryViewCoordinator);
  v192 = 0.0;
  if (v185 >= 0.0)
  {
    v192 = v185;
  }

  v193 = *(v191 + 32);
  *(v191 + 32) = v192;
  v248 = v193;
  v250 = v192;

  v194 = sub_AB38D0();
  v195 = v242;
  if (v194)
  {
    sub_1D956C();
  }

  if ([v195 _isInAWindow])
  {
    v196 = [v195 layer];
    v197 = [v196 hasBeenCommitted];
  }

  else
  {
    v197 = 0;
  }

  if (*(v1 + *&v246) == 1)
  {
    v198 = *(v1 + v146);
    if (v198)
    {
      [v198 setHidden:v197 ^ 1];
    }

    if ((v197 & 1) == 0)
    {

      sub_17654(v34);

      return;
    }
  }

  v199 = v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions;
  *v199 = v172;
  v200 = *(&v244 + 1);
  v201 = *(&v244 + 1);
  *(v199 + 1) = *(&v244 + 1);
  *(v199 + 2) = v171;
  v202 = *(&v245 + 1);
  v203 = *(&v245 + 1);
  *(v199 + 3) = *(&v245 + 1);
  v204 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions);
  v205 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions + 8);
  v206 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions);
  v207 = *v205;
  v208 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions + 24);
  v209 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions + 16);
  v210 = *v208;
  *v204 = v172;
  *v205 = v201;
  v204[2] = v171;
  *v208 = v203;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_shouldDisableAnimations) & 1) != 0 || ((v197 ^ 1) & 1) != 0 || !*(v1 + v146) || *(v1 + *&v246) != 1 || (*(v1 + v233))
  {
    [v195 contentInset];
    v212 = v211;
    [v195 setScrollIndicatorInsets:{v172, v201, 0.0, v203}];
    [v195 setContentInset:{v172, v201, v171, v203}];
    v248 = v212;
    v250 = v172;
    if ((sub_AB38D0() & 1) != 0 && v212 > 0.0)
    {
      v213 = *(v1 + v146);
      if (!v213)
      {
        [v195 contentOffset];
        [v195 setContentOffset:?];
      }

      sub_373354(v213 != 0);
    }

    goto LABEL_116;
  }

  if (v172 == v206 && v200 == v207 && v171 == v209 && v202 == v210)
  {
LABEL_116:
    (v243)(1);

    sub_17654(v34);

    return;
  }

  v214 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets);
  v246 = fmin(v206 - v172 - v214, 0.0);
  v215 = v206 - v172 + v214;
  v216 = -v215;
  v217 = v215 < 0.0;
  v218 = -0.0;
  if (!v217)
  {
    v218 = v216;
  }

  v241 = v218;
  v219 = swift_allocObject();
  *(v219 + 16) = v243;
  *(v219 + 24) = v190;
  type metadata accessor for PromotionalImageContentInsetAnimator();
  v220 = swift_allocObject();
  *(v220 + 144) = 0x3FD0000000000000;
  v221 = objc_opt_self();
  v222 = v195;
  v223 = v221;
  v224 = v222;

  *(v220 + 152) = [v223 functionWithName:kCAMediaTimingFunctionDefault];
  *(v220 + 160) = 0;
  *(v220 + 168) = 1;
  *(v220 + 176) = 0;
  v225 = v244;
  *(v220 + 184) = v244;
  *(v220 + 192) = v201;
  v226 = v245;
  *(v220 + 200) = v245;
  *(v220 + 208) = v203;
  *(v220 + 216) = v225;
  *(v220 + 224) = v201;
  *(v220 + 232) = v226;
  *(v220 + 240) = v203;
  *(v220 + 248) = UIOffsetZero;
  *(v220 + 24) = v224;
  *(v220 + 32) = 0;
  *(v220 + 40) = v246;
  *(v220 + 48) = 0;
  *(v220 + 56) = v241;
  *(v220 + 64) = v206;
  *(v220 + 72) = v207;
  *(v220 + 80) = v209;
  *(v220 + 88) = v210;
  *(v220 + 96) = v172;
  *(v220 + 104) = v201;
  *(v220 + 112) = v171;
  *(v220 + 120) = v203;
  *(v220 + 16) = v1;
  *(v220 + 128) = sub_3773F0;
  *(v220 + 136) = v219;
  *(v1 + v233) = 1;
  v227 = v1;
  sub_150190();

  sub_17654(v189);
}

void sub_373354(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v12 = v2;
  if (UIScrollView.isScrolling.getter())
  {
    goto LABEL_17;
  }

  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
  if (v5)
  {
    v6 = v5;
    [v12 contentOffset];
    if (v7 < -*&v6[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight] || (a1 & 1) != 0)
    {
      [v12 contentOffset];
      [v12 setContentOffset:?];

      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  if (!*(v3 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView))
  {
    goto LABEL_11;
  }

  [v12 contentOffset];
  v9 = v8;
  [v12 adjustedContentInset];
  if (v9 < -v10 || (a1 & 1) != 0)
  {
    [v12 adjustedContentInset];
    [v12 contentOffset];
    [v12 setContentOffset:?];
LABEL_11:
    if (a1)
    {
LABEL_12:
      v11 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset;
LABEL_16:
      *(v3 + v11) = 0;
      goto LABEL_17;
    }
  }

LABEL_15:
  v11 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset) == 1)
  {
    goto LABEL_16;
  }

LABEL_17:
}

void sub_3734EC(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle);
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8);
    v7 = &v4[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle];
    v8 = *&v4[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle];
    v9 = v4[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_preferredHeightStyle + 8];
    *v7 = v5;
    v7[8] = v6;
    if (v9)
    {
      if (v6)
      {
        goto LABEL_9;
      }
    }

    else if ((v6 & 1) == 0)
    {
      v13 = v8;
      v12 = v5;
      sub_7FD28();
      v11 = v4;
      if (sub_AB38E0())
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = v4;
LABEL_7:
    [v4 setNeedsLayout];
LABEL_8:
  }

LABEL_9:
  if (a2)
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8))
    {
      return;
    }

    goto LABEL_14;
  }

  if ((*(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8) & 1) != 0 || (sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
LABEL_14:
    sub_371830();
    [*(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView) setNeedsLayout];
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1);
  sub_373738();
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoReportingController];
  if (v3)
  {
    v5[0] = 0x78616C6C61726170;
    v5[1] = 0xE800000000000000;
    v4 = *(*v3 + 176);

    v4(v5);
  }
}

uint64_t sub_373738()
{
  v1 = v0;
  v2 = sub_371110();
  v3 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem;
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
  v6 = v4;
  LOBYTE(v5) = v5();

  if (v5 == 1)
  {
  }

  v8 = sub_ABB3C0();

  if ((v8 & 1) == 0)
  {
LABEL_7:
    if ((v2[12] & 1) == 0)
    {
      v9 = v2[11];
      v10 = [v1 navigationItem];
      v11 = [v1 parentViewController];
      if (v11)
      {
        v12 = v11;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v13 = v12;
          v14 = [v13 navigationItem];

          v12 = [v13 parentViewController];
          v10 = v14;
          if (!v12)
          {
            goto LABEL_15;
          }
        }
      }

      v14 = v10;
LABEL_15:
      v15 = [objc_opt_self() whiteColor];
      v16 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
      v17 = UIColor.interpolate(to:ratio:)(v16, v9);

      [v14 setPreferredNavigationBarTintColor:v17];
      v18 = *&v1[v3];
      if (!v18)
      {
        goto LABEL_25;
      }

      v19 = *&stru_298.segname[(swift_isaMask & *v18) + 8];
      v20 = v18;
      LOBYTE(v19) = v19();

      if (v19 > 1u)
      {

        if (v2[12])
        {
LABEL_19:
          v22 = 0.0;
          if (*(v2 + 24) == 2)
          {
            v22 = 1.0;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v21 = sub_ABB3C0();

        if ((v21 & 1) == 0)
        {
LABEL_25:

          goto LABEL_26;
        }

        if (v2[12])
        {
          goto LABEL_19;
        }
      }

      v22 = v2[11];
LABEL_24:
      sub_387B6C(*&v22, 0);
      goto LABEL_25;
    }
  }

LABEL_26:
}

Swift::Void __swiftcall PromotionalParallaxViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v29.receiver = v2;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, "viewDidAppear:", a1);
  v4 = [v2 navigationItem];
  v5 = [v2 parentViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v7 = v6;
      v8 = [v7 navigationItem];

      v6 = [v7 parentViewController];
      v4 = v8;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = v4;
LABEL_8:
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem];
  if (v9)
  {
    v10 = *&stru_298.segname[(swift_isaMask & *v9) + 8];
    v11 = v9;
    if (v10() > 1u)
    {
    }

    else
    {
      v12 = sub_ABB3C0();

      if ((v12 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v13 = [v8 title];
    if (v13)
    {
      v14 = v13;
      v15 = sub_AB92A0();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = *(&stru_158.reloff + (swift_isaMask & *v11));
    v19 = v18();
    if (!v17)
    {

LABEL_24:
      (v18)(v23);
      v24 = sub_AB9260();

      [v8 setTitle:v24];

      sub_373738();
LABEL_25:

      goto LABEL_27;
    }

    if (v15 != v19 || v17 != v20)
    {
      v22 = sub_ABB3C0();

      if (v22)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

LABEL_27:
  v25 = [v8 navigationBar];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 _backgroundView];
    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = v27;
    [v27 setHidden:0];
  }

  if (*&v2[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
  {

    sub_38D1A8();
  }

  else
  {
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1);
  v3 = [v1 navigationItem];
  v4 = [v1 parentViewController];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v6 = v5;
      v7 = [v6 navigationItem];

      v5 = [v6 parentViewController];
      v3 = v7;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = v3;
LABEL_8:
  v8 = *(sub_371110() + 24);

  if (v8 != 2)
  {
    [v7 setTitle:0];
  }

  sub_387B6C(0x3FF0000000000000, 0);
}

Swift::Void __swiftcall PromotionalParallaxViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", a1);
  sub_3740E4();
  if (*&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
  {

    sub_38E2AC();
  }
}

void sub_3740E4()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem];
  if (v1)
  {
    v2 = v0;
    v3 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    v4 = v1;
    LOBYTE(v3) = v3();

    if (v3 > 1u)
    {
    }

    else
    {
      v5 = sub_ABB3C0();

      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    if (*(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay) == 1)
    {
      v6 = [v2 navigationItem];
      v7 = [v2 parentViewController];
      if (v7)
      {
        v8 = v7;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v9 = v8;
          v11 = [v9 navigationItem];

          v8 = [v9 parentViewController];
          v6 = v11;
          if (!v8)
          {
            goto LABEL_15;
          }
        }
      }

      v11 = v6;
LABEL_15:
      v10 = [objc_opt_self() clearColor];
      [v11 setPreferredNavigationBarTintColor:v10];

      sub_387B6C(0x3FF0000000000000, 0);
    }
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.loadView()()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v4, v6, v8, v10}];
  [v11 setAutoresizingMask:18];
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache];
  v13 = [v11 tintColor];
  swift_beginAccess();
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;
  v15 = v13;

  sub_10710C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v11[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_377278;
  v17[1] = v16;

  sub_17654(v18);

  [v1 setView:v11];
}

void sub_374570(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache);
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 24);
    *(v3 + 24) = a1;
    v6 = a1;

    sub_10710C();
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", isa);
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache];
  [v4 displayScale];
  v7 = v6;
  swift_beginAccess();
  *(v5 + 16) = v7;
  sub_106F0C();
  [v2 setNeedsStatusBarAppearanceUpdate];
  v8 = [v4 preferredContentSizeCategory];
  v9 = v8;
  if (!isa)
  {

    goto LABEL_7;
  }

  v10 = [(objc_class *)isa preferredContentSizeCategory];
  v11 = sub_AB92A0();
  v13 = v12;
  if (v11 != sub_AB92A0() || v13 != v14)
  {
    v15 = sub_ABB3C0();

    if (v15)
    {
      goto LABEL_9;
    }

LABEL_7:
    [*(v5 + 64) removeAllObjects];
    [*(v5 + 80) removeAllObjects];
    if (*(v5 + 96))
    {
      *(v5 + 104) = 1;
      if (isa)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v18 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v5];

      if (isa)
      {
        goto LABEL_9;
      }
    }

    v16 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v16 = [(objc_class *)isa horizontalSizeClass];
  LODWORD(isa) = 1;
LABEL_10:
  v17 = [v4 horizontalSizeClass];
  if (!isa || v16 != v17)
  {
    *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_needsPropertyUpdate) = 1;
    sub_371830();
    sub_373354(0);
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.viewDidLayoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidLayoutSubviews");
  sub_371110();
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];
  }

  else
  {
    v3 = 0;
  }

  sub_1D88AC(v3);

  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v12.origin.x = v6;
    v12.origin.y = v7;
    v12.size.width = v8;
    v12.size.height = v9;
    v11 = *&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_lastSeenViewBounds];
    *&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_lastSeenViewBounds] = v12;
    if (CGRectEqualToRect(v11, v12) || ([*&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView] setNeedsLayout], sub_375B00(), !*&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController]))
    {
    }

    else
    {

      sub_38D1A8();
    }

    sub_371830();
    if (*&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
    {

      sub_38D1A8();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PromotionalParallaxViewController.viewDidLoad()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache];
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v5 = v4;

  swift_beginAccess();
  *(v2 + 16) = v5;
  sub_106F0C();
}

void sub_374C7C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem;
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem);
  if (v5)
  {
    v6 = *&stru_298.segname[(swift_isaMask & *v5) + 8];
    v7 = v5;
    LOBYTE(v6) = v6();

    if (v6 > 1u)
    {
LABEL_7:

      return;
    }

    v8 = sub_ABB3C0();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
    if (v9)
    {
      v10 = *&stru_298.segname[(swift_isaMask & *v9) + 8];
      v11 = v9;
      LOBYTE(v10) = v10();

      if (v10 == 1)
      {
        goto LABEL_7;
      }

      v12 = sub_ABB3C0();

      if (v12)
      {
        return;
      }
    }
  }

  v13 = sub_371110();
  if (v13[24])
  {
    if (v13[24] == 1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = 0;
    goto LABEL_23;
  }

  v16 = *(v2 + v4);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = *&stru_298.segname[(swift_isaMask & *v16) + 8];
  v18 = v16;
  LOBYTE(v17) = v17();

  if (v17 != 1)
  {
    v19 = sub_ABB3C0();

    if (v19)
    {
      v15 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v15 = [objc_opt_self() whiteColor];
    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:
  v14 = 0.0;
LABEL_23:
  v23 = v15;
  v25 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView);
  v20 = v15;
  if (v25)
  {
    v21 = v25;
    v20 = 0;
  }

  [a1 setPreferredNavigationBarTintColor:{v20, v23}];
  if (sub_387998() == 2)
  {
    if (v25)
    {

      [a1 _setManualScrollEdgeAppearanceProgress:v14];
    }

    v22 = v24;
  }

  else
  {

    v22 = v25;
  }
}

void PromotionalParallaxViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v25.receiver = v3;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = *&v3[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView];
  if (v7)
  {
    v8 = v7;
    [v8 adjustedContentInset];
    v10 = v9;
    [v8 contentOffset];
    v12 = v11;

    v13 = v10 + v12 <= 0.0;
  }

  else
  {
    v13 = 1;
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_377280;
  v24 = v14;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_CF24C;
  v22 = &block_descriptor_113;
  v15 = _Block_copy(&v19);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v13;
  v23 = sub_3772D8;
  v24 = v17;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_CF24C;
  v22 = &block_descriptor_8_2;
  v18 = _Block_copy(&v19);

  [a1 animateAlongsideTransition:v15 completion:v18];
  _Block_release(v18);
  _Block_release(v15);
}

uint64_t sub_375350()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_371830();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_371110();

    sub_1D915C();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_371110();

    if (v6[114] == 1)
    {
      sub_1D956C();
      v6[114] = 0;
    }
  }

  return result;
}

void sub_37543C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView];
    if (v5)
    {
      if (*&Strong[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView])
      {
        Strong[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset] = 1;
      }

      else if (a3)
      {
        v6 = Strong;
        v7 = v5;
        [v7 adjustedContentInset];
        [v7 contentOffset];
        [v7 setContentOffset:?];

        Strong = v7;
      }
    }
  }
}

BOOL sub_375594()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_371830();
  }

  return Strong == 0;
}

void sub_3755F0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView;
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView);
  if (v5)
  {
    v46 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView);
    if (a1)
    {
      v6 = (*(&stru_68.flags + (swift_isaMask & *a1)))(v5);
      v8 = v7;
    }

    else
    {
      v20 = v5;
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v21 = &v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText];
    v22 = *&v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText];
    v23 = *&v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText + 8];
    *v21 = v6;
    v21[1] = v8;
    v24 = v22 == v6 && v23 == v8;
    if (!v24 && (sub_ABB3C0() & 1) == 0)
    {
      [v46 setNeedsLayout];
    }

    if (a1)
    {
      v26 = (*&stru_B8.segname[(swift_isaMask & *a1) - 8])(v25);
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = 0x746C7561666564;
    v30 = &v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
    v31 = *&v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
    v32 = *&v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText + 8];
    *v30 = v26;
    v30[1] = v28;
    v33 = v31 == v26 && v32 == v28;
    if (!v33 && (sub_ABB3C0() & 1) == 0)
    {
      [v46 setNeedsLayout];
    }

    if (a1)
    {
      v35 = (*(&stru_B8.size + (swift_isaMask & *a1)))(v34);
      v36 = v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo];
      v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo] = v35 & 1;
      if ((v35 & 1) == v36)
      {
LABEL_28:
        v39 = (*(&stru_B8.flags + (swift_isaMask & *a1)))();
        v37 = v46;
        if (v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style])
        {
          v40 = 0x676E696E726177;
        }

        else
        {
          v40 = 0x746C7561666564;
        }

        v41 = v39 & 1;
        v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style] = v41;
        if (v41)
        {
          v29 = 0x676E696E726177;
        }

        if (v40 == v29)
        {
          goto LABEL_34;
        }

LABEL_39:
        v44 = sub_ABB3C0();
        swift_bridgeObjectRelease_n();
        if ((v44 & 1) == 0)
        {
          sub_1D6438();
          [v46 setNeedsLayout];
        }

        goto LABEL_42;
      }
    }

    else
    {
      v37 = v46;
      v38 = v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo];
      v46[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo] = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_1D65D0();
    [v46 setNeedsLayout];
    v37 = v46;
    if (a1)
    {
      goto LABEL_28;
    }

LABEL_35:
    v42 = v37[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style];
    v37[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style] = 0;
    if (v42)
    {
      v43 = 0x676E696E726177;
    }

    else
    {
      v43 = 0x746C7561666564;
    }

    if (v43 == 0x746C7561666564)
    {
LABEL_34:

      swift_bridgeObjectRelease_n();
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  type metadata accessor for UpsellBannerView();
  v9 = a1;
  v10 = sub_1D4E04(a1, 0.0, 0.0, 0.0, 0.0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = &v10[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection];
  v15 = *&v10[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection];
  *v14 = sub_3775C8;
  v14[1] = v13;
  v16 = v10;

  sub_17654(v15);

  v17 = v16[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar];
  v16[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar] = 1;
  if ((v17 & 1) == 0)
  {
    [v16 setNeedsLayout];
  }

  *&v16[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textDrawingCache] = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache);
  swift_retain_n();

  sub_1D74A4();

  v18 = *(v2 + v4);
  *(v2 + v4) = v10;
  v46 = v16;

  v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
  sub_ECA80(v10);

  sub_371110();
  sub_1D8EB0(1);

LABEL_42:
  v45 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
  [v45 setNeedsLayout];
}

uint64_t sub_375B00()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView);
  if (v2)
  {
    v3 = v2;
    [v3 adjustedContentInset];
    v5 = v4;
    v7 = v6;
    [v3 contentOffset];
    v9 = v8;
    v11 = v10;

    v12 = v7 + v9;
    v13 = v5 + v11;
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
  }

  v14 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions);
  v15 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions + 8);
  v16 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView;
  v17 = *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
  v18 = &v17[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset];
  *v18 = v12;
  v18[1] = v13;
  type metadata accessor for CGPoint(0);
  v19 = v17;
  if (sub_AB38D0())
  {
    sub_EC654(1);
  }

  v20 = *(v1 + v16);
  v21 = &v20[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions];
  *v21 = v14;
  *(v21 + 1) = v15;
  type metadata accessor for UIOffset(0);
  v22 = v20;
  if (sub_AB38D0())
  {
    sub_EC654(1);
  }

  v23 = sub_371110();
  v25 = v23[6];
  v24 = v23[7];
  v23[6] = v12;
  v23[7] = v13;
  if (v25 != v12 || v24 != v13)
  {
    sub_1D956C();
  }
}

void sub_375CB4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem];
  if (v5)
  {
    v6 = *&stru_298.segname[(swift_isaMask & *v5) + 8];
    v7 = v5;
    v8 = v6();

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_ABB3C0();
    }

    v10 = *(v2 + v4);
    if (v10)
    {
      v11 = *&stru_298.segname[(swift_isaMask & *v10) + 8];
      v12 = v10;
      v13 = v11();

      if (v13 > 1u)
      {

        goto LABEL_38;
      }

      v39 = v4;
      v14 = sub_ABB3C0();

      if (v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = v4;
    }
  }

  else
  {
    v39 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem;
    v9 = 0;
  }

  v15 = v9;
  v16 = a1;
  v17 = [v2 navigationItem];
  v18 = [v2 parentViewController];
  if (v18)
  {
    v19 = v18;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v20 = v19;
      v21 = [v20 navigationItem];

      v19 = [v20 parentViewController];
      v17 = v21;
      if (!v19)
      {
        goto LABEL_18;
      }
    }
  }

  v21 = v17;
LABEL_18:
  v22 = sub_387998();

  if (v22 <= 1u)
  {
    a1 = v16;
LABEL_23:
    v23 = sub_ABB3C0();

    if (v23 & 1) == 0 || (*(a1 + 113))
    {
      goto LABEL_32;
    }

LABEL_27:
    v24 = *&v39[v2];
    if (v24)
    {
      v25 = *&stru_298.segname[(swift_isaMask & *v24) + 8];
      v26 = v24;
      v27 = v25();

      if (v27 == 1)
      {

        goto LABEL_32;
      }

      v28 = sub_ABB3C0();

      if (v28)
      {
        goto LABEL_32;
      }
    }

LABEL_38:
    v34 = [v2 navigationItem];
    v35 = [v2 parentViewController];
    if (v35)
    {
      v36 = v35;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v37 = v36;
        v41 = [v37 navigationItem];

        v36 = [v37 parentViewController];
        v33 = v41;
        v34 = v41;
        if (!v36)
        {
          goto LABEL_46;
        }
      }
    }

    v33 = v34;
LABEL_46:
    v38 = *(a1 + 104);
    if (*(a1 + 112))
    {
      v38 = 0.0;
    }

    goto LABEL_52;
  }

  a1 = v16;
  if (v22 == 2)
  {

    if ((*(v16 + 113) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v22 == 3)
  {
    goto LABEL_23;
  }

LABEL_32:
  if ((v15 & 1) == 0)
  {
    return;
  }

  v29 = [v2 navigationItem];
  v30 = [v2 parentViewController];
  if (v30)
  {
    v31 = v30;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v32 = v31;
      v40 = [v32 navigationItem];

      v31 = [v32 parentViewController];
      v33 = v40;
      v29 = v40;
      if (!v31)
      {
        goto LABEL_51;
      }
    }
  }

  v33 = v29;
LABEL_51:
  v38 = 0.0;
LABEL_52:
  v42 = v33;
  [v33 _setManualScrollEdgeAppearanceProgress:v38];
}

void sub_376298()
{
  v0 = sub_AB3430();
  v71 = *(v0 - 8);
  v72 = v0;
  __chkstk_darwin(v0);
  v70 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB3820();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {

    return;
  }

  v22 = v21;
  v23 = *&v20[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem];
  if (!v23 || (v67 = v4, v68 = v18, v24 = *(&stru_2E8.size + (swift_isaMask & *v23)), v25 = v23, v26 = v24(), v25, !v26))
  {

    return;
  }

  v27 = v20;
  v65 = v22;
  [v65 bounds];
  v89[0] = v22;
  v89[1] = v28;
  v89[2] = v29;
  v89[3] = v30;
  v89[4] = v31;
  v90 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v89, 15, v81);
  v85[0] = v81[0];
  v85[1] = v81[1];
  v86 = v82;
  v87 = v83;
  v88 = v84;
  v66 = v27;
  PresentationSource.init(viewController:position:)(v27, v85, v80);
  v64 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v32 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v78, 0, sizeof(v78));
  v79 = 0;
  (*(*(v32 - 8) + 56))(v68, 1, 1, v32);
  sub_15F84(v78, &v75, &unk_DE8E30);
  if (*(&v76 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v33 = _s30CollectionViewSelectionHandlerVMa();
    v34 = swift_dynamicCast();
    v35 = *(v33 - 8);
    (*(v35 + 56))(v9, v34 ^ 1u, 1, v33);
    v36 = (*(v35 + 48))(v9, 1, v33);
    v38 = v73;
    v37 = v74;
    if (v36 != 1)
    {
      (*(v73 + 16))(v15, &v9[*(v33 + 20)], v74);
      sub_2D6C0(v9, _s30CollectionViewSelectionHandlerVMa);
      v39 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_12E1C(&v75, &unk_DE8E30);
    v40 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
    v38 = v73;
    v37 = v74;
  }

  sub_12E1C(v9, &qword_E037A0);
  v39 = 1;
LABEL_12:
  (*(v38 + 56))(v15, v39, 1, v37);
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41 && (v42 = v41, sub_12B2FC(), v44 = v43, v46 = v45, v42, v44))
  {
    ObjectType = swift_getObjectType();
    (*(v46 + 8))(ObjectType, v46);
    v49 = v48;
    swift_unknownObjectRelease();
    sub_15F84(v15, v13, &unk_DE8E20);
    if ((*(v38 + 48))(v13, 1, v37) == 1)
    {
      sub_12E1C(v13, &unk_DE8E20);
      v75 = 0u;
      v76 = 0u;
      v77 = 0;
    }

    else
    {
      (*(v38 + 32))(v69, v13, v37);
      sub_2D668();
      sub_ABAD10();
    }

    v51 = swift_getObjectType();
    v52 = v70;
    sub_3B8F68();
    v50 = sub_21CCAC(1, v52, &v75, v51, v49);
    (*(v71 + 8))(v52, v72);
    sub_12E1C(&v75, &qword_DF2BD0);
    sub_12E1C(v15, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v15, &unk_DE8E20);
    v50 = 0;
  }

  v53 = v26;
  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    sub_12AFE8();
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  sub_15F28(v80, &v75);
  sub_15F84(v78, (v6 + 104), &unk_DE8E30);
  v59 = v67;
  v58 = v68;
  sub_15F84(v68, &v6[*(v67 + 28)], &unk_DEA510);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 8) = 1;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  sub_2D594(&v75, v6);
  *(v6 + 12) = 0;
  v60 = *v64;
  *(&v76 + 1) = v59;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v75);
  sub_2D604(v6, boxed_opaque_existential_0);
  v62 = v60;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v53, 0, v50, v57, &v75);

  sub_12E1C(v58, &unk_DEA510);
  sub_12E1C(v78, &unk_DE8E30);
  sub_1611C(v80);
  sub_2D6C0(v6, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v75, &unk_DE8E40);
}

void sub_376B70(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating] = (a1 & 1) == 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v6[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay] = 0;
  }

  if (a3)
  {
    a3();
  }
}

void sub_376C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&Strong[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView];
    if (v9)
    {
      v10 = v9;

      v11 = *&v10[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundArtworkComponent];

      v12 = [*(v11 + 112) image];

      if (v12)
      {

        v13[0] = a3;
        v13[1] = a4;
        (*(*a2 + 184))(v13);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_376D20(uint64_t a1, void *a2)
{
  v2 = (*(&stru_298.reserved2 + (swift_isaMask & *a2)))();
  if (!v2)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_9:
    sub_12E1C(&v7, &unk_DE8E40);
    return 0;
  }

  v3 = v2;
  if ([v2 storeID])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = v9;
  v8 = v10;

  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  sub_9ACFC(&v7, &v9);
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  sub_ABB3A0();
  v4 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = sub_AB92A0();
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v9);
  return v5;
}

void sub_376E88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_371830();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);

    [v4 setNeedsLayout];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_373354(0);
  }
}

uint64_t sub_376F64(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView))
  {
    v3 = *(a2 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView);
    if (*&v3[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView])
    {
      v4 = a3;
      v5 = a1;
      v6 = v3;
      sub_ECA80(0);

      sub_371830();
      a1 = v5;
      a3 = v4;
    }
  }

  return a3(a1 & 1);
}

void _s16MusicApplication33PromotionalParallaxViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v3 = UIEdgeInsetsZero.top;
  v3[1] = left;
  v3[2] = bottom;
  v3[3] = right;
  v7 = v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_shouldDisableAnimations) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_needsPropertyUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pendingCompletionHandler);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_barSymbolButtons) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView;
  type metadata accessor for PromotionalImageryView();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController____lazy_storage___promotionalImageryViewCoordinator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView) = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v10) = TextDrawing.Cache.init()();
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewContentSizeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoReportingController) = 0;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_lastSeenViewBounds);
  *v11 = 0u;
  v11[1] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions) = UIOffsetZero;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay) = 0;
  v12 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewContentInsetAdditions);
  *v12 = UIEdgeInsetsZero.top;
  v12[1] = left;
  v12[2] = bottom;
  v12[3] = right;
  v13 = (v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_previousBackgroundViewScrollInsetAdditions);
  *v13 = UIEdgeInsetsZero.top;
  v13[1] = left;
  v13[2] = bottom;
  v13[3] = right;
  *(v1 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_377240()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3772A0()
{

  return swift_deallocObject();
}

unint64_t sub_377318()
{
  result = qword_E00CE0;
  if (!qword_E00CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E00CE0);
  }

  return result;
}

uint64_t sub_377364()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3773B8()
{

  return swift_deallocObject();
}

uint64_t sub_37741C()
{

  return swift_deallocObject();
}

uint64_t sub_377470()
{

  return swift_deallocObject();
}

uint64_t sub_3774C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1;
  sub_76070(v5);
  return (*(*v4 + 136))(a1);
}

uint64_t sub_37753C(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 216))(v4);
}

uint64_t sub_377588()
{

  return swift_deallocObject();
}

uint64_t sub_3775D8()
{

  return swift_deallocObject();
}

uint64_t sub_377618()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

uint64_t sub_37765C()
{

  return swift_deallocObject();
}

uint64_t sub_3776A4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16))();
  v4 = v1(v3);
  return v2(v4);
}

id JSInlineSocialUpsellViewController.__allocating_init(inlineSocialUpsell:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  *&v4[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v4[v5] = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v4[v6] = TextDrawing.Cache.init()();
  *&v4[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_inlineSocialUpsell] = a1;
  v8.receiver = v4;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

id JSInlineSocialUpsellViewController.init(inlineSocialUpsell:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v2[v5] = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v2[v6] = TextDrawing.Cache.init()();
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_inlineSocialUpsell] = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

void JSInlineSocialUpsellViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v2) = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v3) = TextDrawing.Cache.init()();
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSInlineSocialUpsellViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() whiteColor];
    [v8 setBackgroundColor:v9];

    type metadata accessor for InlineSocialUpsellView();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView];
    *&v1[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView] = v10;
    v12 = v10;

    [v12 setClipsToBounds:1];
    [v8 addSubview:v12];
    v56 = v1;
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_inlineSocialUpsell];
    v14 = &v13[OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_title];
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v54[1] = v5;
    v55 = v8;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v15 = sub_AB9320();
      v17 = v18;
    }

    v19 = &v12[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = v15;
    v19[1] = v17;

    sub_209688(v20, v21);

    v22 = &v13[OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_subtitle];
    swift_beginAccess();
    v23 = *v22;
    if (v22[1])
    {
      v24 = v22[1];
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v23 = sub_AB9320();
      v24 = v25;
    }

    v26 = &v12[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
    swift_beginAccess();
    v27 = *v26;
    v28 = v26[1];
    *v26 = v23;
    v26[1] = v24;

    sub_209984(v27, v28);

    v29 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_artwork;
    swift_beginAccess();
    v30 = *&v13[v29];
    if (v30)
    {
      v31 = ICStoreArtworkInfoCropStyleBoundedBox;
      v32 = v30;
      v33 = JSArtwork.artworkCatalog(defaultCropStyle:)(v31);
    }

    else
    {
      v33 = 0;
    }

    v34 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
    swift_beginAccess();
    v35 = *&v12[v34];
    *&v12[v34] = v33;
    v36 = v33;

    v37 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
    sub_74EA4(v33);
    v38 = swift_allocObject();
    v39 = v56;
    swift_unknownObjectWeakInit();
    v40 = &v12[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_closeButtonHandler];
    swift_beginAccess();
    v41 = *v40;
    *v40 = sub_3782C0;
    v40[1] = v38;

    sub_17654(v41);

    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v13;
    v44 = &v12[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonHandler];
    swift_beginAccess();
    v45 = *v44;
    *v44 = sub_3783B0;
    v44[1] = v43;

    v46 = v13;
    sub_17654(v45);

    v47 = *&v39[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache];
    v48 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache;
    swift_beginAccess();
    *&v12[v48] = v47;
    swift_retain_n();

    v49 = *&v12[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView];
    v50 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v51 = *(v49 + v50);
    *(v49 + v50) = v47;
    swift_retain_n();
    sub_2E6210(v51);

    v52 = *&v39[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference];
    v53 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
    swift_beginAccess();
    *&v12[v53] = v52;

    *(*&v12[v37] + 16) = v52;

    sub_3783B8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_37805C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_378094()
{
  v0 = sub_AB3430();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_inlineSocialUpsell);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v8 = Strong, sub_12B2FC(), v10 = v9, v12 = v11, v8, v10))
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      v15 = v14;
      swift_unknownObjectRelease();
      v16 = swift_getObjectType();
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_3B8F68();
      v17 = sub_21CCAC(1, v3, v22, v16, v15);
      (*(v1 + 8))(v3, v0);
      sub_378E18(v22);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_12AFE8();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    JSInlineSocialUpsell.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(v17, v21);
  }

  return result;
}

void sub_3782C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];

    if (v2)
    {
      v3 = [v2 windowScene];

      if (v3)
      {
        sub_415318(v3);
      }
    }
  }
}

uint64_t sub_378370()
{

  return swift_deallocObject();
}

void sub_3783B8()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v0 traitCollection];
      v13 = *&v0[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView];
      if (v13)
      {
        v14 = type metadata accessor for InlineSocialUpsellView();
        v44.receiver = v13;
        v44.super_class = v14;
        v15 = v13;
        objc_msgSendSuper2(&v44, "frame");
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v43.receiver = v15;
        v43.super_class = v14;
        objc_msgSendSuper2(&v43, "setFrame:", v5, v7, v9, v11);
        type metadata accessor for CGRect(0);
        v39 = v17;
        v40 = v19;
        v41 = v21;
        v42 = v23;
        v38.receiver = v15;
        v38.super_class = v14;
        objc_msgSendSuper2(&v38, "frame");
        v34 = v24;
        v35 = v25;
        v36 = v26;
        v37 = v27;
        if (sub_AB38D0())
        {
          v28 = [v15 traitCollection];
          sub_209030(v28);
        }

        InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(v12, v9);
        v30 = v29;
      }

      else
      {
        v30 = 0.0;
      }

      v45.origin.x = v5;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v11;
      Width = CGRectGetWidth(v45);
      type metadata accessor for CGSize(0);
      [v1 preferredContentSize];
      v39 = v32;
      v40 = v33;
      if (sub_AB38D0())
      {
        [v1 setPreferredContentSize:{Width, v30, *&Width, *&v30}];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall JSInlineSocialUpsellViewController.viewDidLayoutSubviews()()
{
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = type metadata accessor for InlineSocialUpsellView();
      v37.receiver = v2;
      v37.super_class = v13;
      objc_msgSendSuper2(&v37, "frame");
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v36.receiver = v2;
      v36.super_class = v13;
      objc_msgSendSuper2(&v36, "setFrame:", v6, v8, v10, v12);
      type metadata accessor for CGRect(0);
      v32 = v15;
      v33 = v17;
      v34 = v19;
      v35 = v21;
      v31.receiver = v2;
      v31.super_class = v13;
      objc_msgSendSuper2(&v31, "frame");
      v27 = v22;
      v28 = v23;
      v29 = v24;
      v30 = v25;
      if (sub_AB38D0())
      {
        v26 = [v2 traitCollection];
        sub_209030(v26);

        v2 = v4;
        v4 = v26;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void JSInlineSocialUpsellViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_3789BC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_114;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_37894C(uint64_t a1, void *a2)
{
  sub_3783B8();
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall JSInlineSocialUpsellViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_3783B8();
  }
}

uint64_t sub_378DE0()
{

  return swift_deallocObject();
}

uint64_t sub_378E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_378E94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & 1;
}

id sub_378F04(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v38 = sub_AB7C10();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C50();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v36 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C20();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_cropStyle] = 0;
  v10 = &v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  *v10 = 0;
  v10[8] = -1;
  *&v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_loadedImageTexture] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_resizeTexture] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_gaussianBlur] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer____lazy_storage___resizeRenderPipelineDescriptor] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer____lazy_storage___treatmentRenderPipelineDescriptor] = 0;
  v11 = &v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureFallbackCopyAllocator];
  *v11 = sub_37B078;
  v11[1] = 0;
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[3];
  v15 = a1[5];
  v16 = &v1[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context];
  v17 = *(a1 + 1);
  *v16 = *a1;
  v16[1] = v17;
  v16[2] = *(a1 + 2);
  v18 = type metadata accessor for MaterialRenderer();
  v44.receiver = v1;
  v44.super_class = v18;
  v31[1] = v13;
  swift_unknownObjectRetain();
  v31[0] = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v33 = v14;
  v32 = v15;
  v19 = objc_msgSendSuper2(&v44, "init");
  sub_13C80(0, &qword_DE8ED0);
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  v20 = v19;
  v34 = sub_ABA190();
  (*(v7 + 8))(v9, v6);
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  *(v21 + 24) = *a1;
  *(v21 + 16) = v20;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(a1 + 2);
  *(v21 + 72) = ObjectType;
  aBlock[4] = sub_37C288;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_55_1;
  v23 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v33;
  v25 = v32;
  v26 = v36;
  sub_AB7C30();
  v42 = _swiftEmptyArrayStorage;
  sub_37C1E0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  v28 = v37;
  v27 = v38;
  sub_ABABB0();
  v29 = v34;
  sub_ABA160();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v41 + 8))(v28, v27);
  (*(v39 + 8))(v26, v40);
  _Block_release(v23);

  return v20;
}

void sub_379418(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = objc_allocWithZone(MPSImageGaussianBlur);
  LODWORD(v5) = 30.0;
  v6 = [v4 initWithDevice:v3 sigma:v5];
  [v6 setEdgeMode:0];
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_gaussianBlur);
  *(a1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_gaussianBlur) = v6;
}

void sub_379490(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v12 = v6 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource;
  v13 = *(v6 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8);
  if (v13 != 255)
  {
    if (a2 != -1)
    {
      v14 = *v12;
      if (v13)
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (a2)
      {
        goto LABEL_14;
      }

      sub_13C80(0, &qword_DFA720);
      v15 = v14;
      v16 = sub_ABA790();
      sub_3EB30(v14, v13);
      if (v16)
      {
        goto LABEL_10;
      }
    }

LABEL_14:
    v18 = *v12;
    *v12 = a1;
    v19 = *(v12 + 8);
    *(v12 + 8) = a2;
    sub_37C074(a1, a2);
    sub_3EB30(v18, v19);
    if (a3)
    {
      a3(1);
    }

    if (a2 != -1 && (a2 & 1) != 0)
    {
      v20 = [a1 CGImage];
      if (v20)
      {
        v21 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00E10);
        inited = swift_initStackObject();
        v23 = MTKTextureLoaderOptionSRGB;
        *(inited + 32) = MTKTextureLoaderOptionSRGB;
        *(inited + 16) = xmmword_AF85F0;
        *(inited + 40) = 0;
        v24 = MTKTextureLoaderOptionTextureUsage;
        *(inited + 64) = &type metadata for Bool;
        *(inited + 72) = v24;
        *(inited + 104) = &type metadata for UInt;
        *(inited + 80) = 3;
        v25 = v23;
        v26 = v24;
        sub_977C0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCC0);
        swift_arrayDestroy();
        v27 = *(v7 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context + 24);
        type metadata accessor for Option(0);
        sub_37C1E0(&qword_E00E20, type metadata accessor for Option);
        isa = sub_AB8FD0().super.isa;
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = swift_allocObject();
        v30[2] = v29;
        v30[3] = a5;
        v30[4] = a6;
        v30[5] = a1;
        aBlock[4] = sub_37C164;
        aBlock[5] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_37B600;
        aBlock[3] = &block_descriptor_43_6;
        v31 = _Block_copy(aBlock);
        sub_37C074(a1, a2);
        sub_307CC(a5);

        [v27 newTextureWithCGImage:v21 options:isa completionHandler:v31];
        _Block_release(v31);
      }

      else if (a5)
      {
        sub_37C088();
        v32 = swift_allocError();
        *v33 = a1;
        v34 = a1;
        a5(0, v32);
      }

      return;
    }

    if (!a5)
    {
      return;
    }

    v17 = 1;
LABEL_22:
    a5(v17, 0);
    return;
  }

  if (a2 != -1)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (a3)
  {
    a3(0);
  }

  if (a5)
  {
    v17 = 0;
    goto LABEL_22;
  }
}

void sub_379944(void *a1)
{
  if (qword_DE67C0 != -1)
  {
    swift_once();
  }

  if (xmmword_E70D50)
  {
    v3 = *(&xmmword_E70D70 + 1);
    v4 = unk_E70D68;
    v5 = *(&xmmword_E70D50 + 1);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = v4;
    v7 = v3;
    v8 = [v5 commandBuffer];
    if (v8)
    {
      v9 = v8;
      v10 = (v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource);
      v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8);
      if (v11 == 255)
      {
        [a1 setClearColor:{0.0, 0.0, 0.0, 0.0}];
        v21 = [a1 currentRenderPassDescriptor];
        if (v21)
        {
          v22 = v21;
          v23 = [v9 renderCommandEncoderWithDescriptor:v21];
          if (v23)
          {
            [v23 endEncoding];
            sub_37BE68(a1, v9);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

LABEL_27:

            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v87 = v6;
        if (v11)
        {
          v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_loadedImageTexture);
          swift_unknownObjectRetain_n();
          if (v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v24 = *v10;
          sub_37C074(*v10, v11);
          v25 = sub_37BBD4(v24);
          swift_unknownObjectRetain();
          v26 = v11;
          v12 = v25;
          sub_3EB30(v24, v26);
          if (v25)
          {
LABEL_8:
            v86 = v7;
            v13 = [a1 colorPixelFormat];
            v14 = OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_resizeTexture;
            v15 = *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_resizeTexture);
            if (v15)
            {
              goto LABEL_32;
            }

            [a1 frame];
            if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v16 > -9.22337204e18)
            {
              if (v16 < 9.22337204e18)
              {
                v18 = v12;
                v19 = v16;
                if (!v16)
                {
                  goto LABEL_31;
                }

                if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v17 > -9.22337204e18)
                  {
                    if (v17 < 9.22337204e18)
                    {
                      if (v17)
                      {
                        v20 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v13 width:v19 / 4 height:v17 / 4 mipmapped:0];
                        [v20 setUsage:7];
                        v19 = [*(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context) newTextureWithDescriptor:v20];
                      }

                      else
                      {
                        v19 = 0;
                      }

LABEL_31:
                      *(v1 + v14) = v19;
                      swift_unknownObjectRelease();
                      v15 = *(v1 + v14);
                      v12 = v18;
                      if (!v15)
                      {

                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        goto LABEL_57;
                      }

LABEL_32:
                      swift_unknownObjectRetain();
                      v27 = [a1 currentRenderPassDescriptor];
                      if (v27)
                      {
                        v82 = v13;
                        v83 = v12;
                        v85 = v15;
                        v28 = v27;
                        v29 = [v27 colorAttachments];
                        v30 = [v29 objectAtIndexedSubscript:0];

                        if (v30)
                        {
                          swift_unknownObjectRetain();
                          [v30 setTexture:v85];

                          v31 = [v28 colorAttachments];
                          v32 = [v31 objectAtIndexedSubscript:0];

                          if (v32)
                          {
                            [v32 setLoadAction:2];

                            v33 = [v28 colorAttachments];
                            v34 = [v33 objectAtIndexedSubscript:0];

                            if (v34)
                            {
                              [v34 setStoreAction:1];

                              v35 = [v28 depthAttachment];
                              if (v35)
                              {
                                v36 = v35;
                                [v35 setLoadAction:0];

                                v37 = [v28 depthAttachment];
                                if (v37)
                                {
                                  v38 = v37;
                                  [v37 setStoreAction:0];

                                  v39 = [v28 stencilAttachment];
                                  if (v39)
                                  {
                                    v40 = v39;
                                    [v39 setLoadAction:0];

                                    v84 = v28;
                                    v41 = [v28 stencilAttachment];
                                    if (v41)
                                    {
                                      v42 = v41;
                                      [v41 setStoreAction:0];

                                      v43 = [v85 width];
                                      v44 = v43 / [(__CVBuffer *)v83 width];
                                      v45 = [v85 height];
                                      v46 = v45 / [(__CVBuffer *)v83 height];
                                      v94[0] = 1.0;
                                      if (((v44 < v46) ^ *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_cropStyle)))
                                      {
                                        v47 = v44 * [(__CVBuffer *)v83 height];
                                        v48 = 1.0 / (v47 / [v85 height]);
                                      }

                                      else
                                      {
                                        v49 = v46 * [(__CVBuffer *)v83 width];
                                        v50 = [v85 width];
                                        v48 = 1.0;
                                        v94[0] = 1.0 / (v49 / v50);
                                      }

                                      v94[1] = -v48;
                                      v51 = sub_37AB44(v13);
                                      if (v51)
                                      {
                                        v52 = v51;
                                        v53 = [v9 renderCommandEncoderWithDescriptor:v28];
                                        if (v53)
                                        {
                                          v54 = v53;
                                          v55 = sub_AB9260();
                                          [v54 setLabel:v55];

                                          [v54 setRenderPipelineState:v52];
                                          [v54 setVertexBytes:&unk_CF1580 length:32 atIndex:0];
                                          [v54 setVertexBytes:v94 length:8 atIndex:1];
                                          [v54 setFragmentTexture:v83 atIndex:0];
                                          [v54 drawPrimitives:4 vertexStart:0 vertexCount:4];
                                          [v54 endEncoding];
                                          v56 = *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_gaussianBlur);
                                          if (!v56)
                                          {
                                            swift_unknownObjectRelease();

                                            swift_unknownObjectRelease();
                                            swift_unknownObjectRelease();
LABEL_64:
                                            swift_unknownObjectRelease_n();
                                            goto LABEL_65;
                                          }

                                          v81 = v56;
                                          v57 = swift_slowAlloc();
                                          v58 = swift_allocObject();
                                          *(v58 + 16) = v57;
                                          v92 = sub_37BF4C;
                                          v93 = v58;
                                          aBlock = _NSConcreteStackBlock;
                                          v89 = 1107296256;
                                          v90 = sub_CF24C;
                                          v91 = &block_descriptor_115;
                                          v59 = _Block_copy(&aBlock);

                                          [v9 addCompletedHandler:v59];
                                          _Block_release(v59);
                                          *v57 = v85;
                                          v60 = *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureFallbackCopyAllocator + 8);
                                          v92 = *(v1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureFallbackCopyAllocator);
                                          v93 = v60;
                                          aBlock = _NSConcreteStackBlock;
                                          v89 = 1107296256;
                                          v90 = sub_37A78C;
                                          v91 = &block_descriptor_34_1;
                                          v61 = _Block_copy(&aBlock);
                                          swift_unknownObjectRetain();

                                          [v81 encodeToCommandBuffer:v9 inPlaceTexture:v57 fallbackCopyAllocator:v61];
                                          _Block_release(v61);
                                          v62 = [a1 currentRenderPassDescriptor];
                                          if (!v62)
                                          {
                                            swift_unknownObjectRelease();

                                            swift_unknownObjectRelease();
                                            swift_unknownObjectRelease();

                                            swift_unknownObjectRelease_n();
LABEL_65:
                                            swift_unknownObjectRelease_n();
                                            goto LABEL_66;
                                          }

                                          v63 = v62;
                                          v64 = [v62 depthAttachment];
                                          if (v64)
                                          {
                                            v65 = v64;
                                            [v64 setLoadAction:0];

                                            v66 = [v63 depthAttachment];
                                            if (v66)
                                            {
                                              v67 = v66;
                                              [v66 setStoreAction:0];

                                              v68 = [v63 stencilAttachment];
                                              if (v68)
                                              {
                                                v69 = v68;
                                                [v68 setLoadAction:0];

                                                v70 = [v63 stencilAttachment];
                                                if (v70)
                                                {
                                                  v71 = v70;
                                                  [v70 setStoreAction:0];

                                                  v72 = [v9 renderCommandEncoderWithDescriptor:v63];
                                                  if (v72)
                                                  {
                                                    v73 = v72;
                                                    v74 = sub_37AD84(v82);
                                                    if (v74)
                                                    {
                                                      v75 = v74;
                                                      v76 = v63;
                                                      v77 = sub_AB9260();
                                                      [v73 setLabel:v77];

                                                      [v73 setRenderPipelineState:v75];
                                                      [v73 setVertexBytes:&unk_CF1580 length:32 atIndex:0];
                                                      sub_37BFA8(v82);
                                                      aBlock = __PAIR64__(v79, v78);
                                                      v89 = v80;
                                                      [v73 setFragmentBytes:&aBlock length:16 atIndex:0];
                                                      [v73 setFragmentTexture:v85 atIndex:0];
                                                      swift_unknownObjectRelease();
                                                      [v73 drawPrimitives:4 vertexStart:0 vertexCount:4];
                                                      [v73 endEncoding];
                                                      sub_37BE68(a1, v9);
                                                      swift_unknownObjectRelease();

                                                      swift_unknownObjectRelease();
                                                      swift_unknownObjectRelease();
                                                      swift_unknownObjectRelease();
                                                      swift_unknownObjectRelease_n();
                                                      swift_unknownObjectRelease();

                                                      swift_unknownObjectRelease();
LABEL_66:

                                                      swift_unknownObjectRelease();
                                                      swift_unknownObjectRelease();
                                                      swift_unknownObjectRelease();
                                                      return;
                                                    }

                                                    swift_unknownObjectRelease();

                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();

                                                    swift_unknownObjectRelease();
                                                  }

                                                  else
                                                  {
                                                    swift_unknownObjectRelease();

                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                  }

                                                  goto LABEL_64;
                                                }

LABEL_84:
                                                __break(1u);
                                                return;
                                              }

LABEL_83:
                                              __break(1u);
                                              goto LABEL_84;
                                            }

LABEL_82:
                                            __break(1u);
                                            goto LABEL_83;
                                          }

LABEL_81:
                                          __break(1u);
                                          goto LABEL_82;
                                        }

                                        swift_unknownObjectRelease();

                                        swift_unknownObjectRelease();
                                      }

                                      else
                                      {
                                        swift_unknownObjectRelease();
                                      }

                                      swift_unknownObjectRelease_n();
                                      swift_unknownObjectRelease_n();

                                      goto LABEL_26;
                                    }

LABEL_80:
                                    __break(1u);
                                    goto LABEL_81;
                                  }

LABEL_79:
                                  __break(1u);
                                  goto LABEL_80;
                                }

LABEL_78:
                                __break(1u);
                                goto LABEL_79;
                              }

LABEL_77:
                              __break(1u);
                              goto LABEL_78;
                            }

LABEL_76:
                            __break(1u);
                            goto LABEL_77;
                          }
                        }

                        else
                        {
                          __break(1u);
                        }

                        __break(1u);
                        goto LABEL_76;
                      }

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
LABEL_57:
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease_n();
                      return;
                    }

LABEL_73:
                    __break(1u);
                  }

LABEL_72:
                  __break(1u);
                  goto LABEL_73;
                }

LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            __break(1u);
            goto LABEL_70;
          }
        }

        swift_unknownObjectRelease();
        v6 = v87;
      }
    }

LABEL_26:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_27;
  }
}

uint64_t sub_37A78C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v7(v8, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id sub_37A88C(id result, double a2, double a3)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a2)
  {
    return 0;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a3 < 9.22337204e18)
  {
    if (a3)
    {
      v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:result width:a2 / 4 height:a3 / 4 mipmapped:0];
      [v4 setUsage:7];
      v5 = [*(v3 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context) newTextureWithDescriptor:v4];

      return v5;
    }

    return 0;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_37A9F4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v3 = sub_AB9260();
  [v2 setLabel:v3];

  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context + 16);
  v5 = sub_AB9260();
  v6 = [v4 newFunctionWithName:v5];

  [v2 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v7 = sub_AB9260();
  v8 = [v4 newFunctionWithName:v7];

  [v2 setFragmentFunction:v8];
  swift_unknownObjectRelease();
  return v2;
}

id sub_37AB44(uint64_t a1)
{

  return sub_37ADF8(a1, sub_37A9D4, "Failed to create resize render pipeline state. error=%@");
}

id sub_37ABD8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_37AC3C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v3 = sub_AB9260();
  [v2 setLabel:v3];

  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context + 16);
  v5 = sub_AB9260();
  v6 = [v4 newFunctionWithName:v5];

  [v2 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v7 = sub_AB9260();
  v8 = [v4 newFunctionWithName:v7];

  [v2 setFragmentFunction:v8];
  swift_unknownObjectRelease();
  return v2;
}

id sub_37AD84(uint64_t a1)
{

  return sub_37ADF8(a1, sub_37ABB8, "Failed to create treatment render pipeline state: error=%@");
}

id sub_37ADF8(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v6 = a2();
  v7 = [v6 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
    __break(1u);
  }

  [v8 setPixelFormat:a1];

  v9 = *(v3 + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_context);
  v23 = 0;
  v10 = [v9 newRenderPipelineStateWithDescriptor:v6 error:&v23];
  v11 = v23;
  if (v10)
  {
  }

  else
  {
    v12 = v11;
    v13 = sub_AB3050();

    swift_willThrow();
    v23 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    sub_13C80(0, &qword_E05350);
    swift_dynamicCast();
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    __swift_project_value_buffer(v14, qword_E71608);
    v15 = v22;
    v16 = sub_AB4BA0();
    v17 = sub_AB9F30();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_0, v16, v17, a3, v18, 0xCu);
      sub_37BB6C(v19);
    }

    return 0;
  }

  return v10;
}

id sub_37B078(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:objc_msgSend(a3 width:"pixelFormat") height:objc_msgSend(a3 mipmapped:"width"), objc_msgSend(a3, "height"), 0];
  result = [objc_msgSend(a2 "device")];
  if (result)
  {
    v6 = result;

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_37B168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = sub_AB7C10();
  v27 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB7C50();
  v25 = *(v14 - 8);
  v26 = v14;
  __chkstk_darwin(v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0);
  v24 = sub_ABA150();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a1;
  v17[7] = a2;
  aBlock[4] = sub_37C1D0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_49_1;
  v18 = _Block_copy(aBlock);

  sub_307CC(a4);
  v19 = a6;
  swift_unknownObjectRetain();
  swift_errorRetain();

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_37C1E0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  v20 = v23;
  sub_ABABB0();
  v21 = v24;
  sub_ABA160();
  (*(v27 + 8))(v13, v20);
  (*(v25 + 8))(v16, v26);
  _Block_release(v18);
}

void sub_37B470(uint64_t a1, void (*a2)(BOOL, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8);
    if (v11 != 255 && (v11 & 1) != 0)
    {
      v12 = *(Strong + OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource);
      sub_13C80(0, &qword_DFA720);
      v13 = v12;
      if (sub_ABA790())
      {
        *&v10[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_loadedImageTexture] = a5;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (a2)
        {
          a2(a5 != 0, a6);
        }

        sub_3EB30(v12, v11);
LABEL_13:

        return;
      }

      sub_3EB30(v12, v11);
    }

    if (a2)
    {
      sub_37C088();
      v14 = swift_allocError();
      *v15 = 0;
      a2(0, v14);
    }

    goto LABEL_13;
  }

  if (a2)
  {
    a2(0, 0);
  }
}

uint64_t sub_37B600(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_37B6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaterialRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_37B828()
{
  result = qword_E00E00;
  if (!qword_E00E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00E00);
  }

  return result;
}

uint64_t sub_37B87C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71608);
  __swift_project_value_buffer(v0, qword_E71608);
  return static Logger.music(_:)();
}

unint64_t sub_37B8E0(void *a1)
{
  sub_ABAD90(23);

  v2 = [a1 description];
  v3 = sub_AB92A0();
  v5 = v4;

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_AB94A0(v8);
  return 0xD000000000000014;
}

uint64_t sub_37B9F4(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  if (a1 == 1)
  {
    return 0;
  }

  v12[7] = v1;
  v12[8] = v2;
  if (qword_DE6AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_E71608);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136446210;
    type metadata accessor for ContentMode(0);
    v9 = sub_AB9350();
    v11 = sub_425E68(v9, v10, v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Falling back to MaterialRenderer.CropStyle.fit [contentMode is unsupported] contentMode=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return 0;
}

uint64_t sub_37BB6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__CVBuffer *sub_37BBD4(void *a1)
{
  [a1 itemTimeForHostTime:CACurrentMediaTime()];
  v2 = image;
  v3 = v21;
  v4 = v22;
  v5 = v23;
  if ([a1 hasNewPixelBufferForItemTime:&image])
  {
    image = v2;
    v21 = v3;
    v22 = v4;
    v23 = v5;
    result = [a1 copyPixelBufferForItemTime:&image itemTimeForDisplay:0];
    if (!result)
    {
      return result;
    }

    v7 = result;
    if (qword_DE67C0 != -1)
    {
      swift_once();
    }

    if (xmmword_E70D50)
    {
      image = 0;
      v8 = *(&xmmword_E70D70 + 1);
      Width = CVPixelBufferGetWidth(v7);
      Height = CVPixelBufferGetHeight(v7);
      v11 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, v8, v7, 0, MTLPixelFormatBGRA8Unorm, Width, Height, 0, &image);
      if (v11)
      {
        v12 = v11;
        if (qword_DE6AE8 != -1)
        {
          swift_once();
        }

        v13 = sub_AB4BC0();
        __swift_project_value_buffer(v13, qword_E71608);
        v14 = sub_AB4BA0();
        v15 = sub_AB9F30();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 67109120;
          *(v16 + 4) = v12;
          _os_log_impl(&dword_0, v14, v15, "Unsuccessful return value creating CVMetalTexture: %d", v16, 8u);
        }

        v17 = image;
      }

      else
      {
        if (image)
        {
          v18 = CVMetalTextureGetTexture(image);
          v19 = image;

          return v18;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_37BE68(void *a1, void *a2)
{
  result = [a1 currentDrawable];
  if (result)
  {
    v5 = result;
    if ([a1 presentsWithTransaction])
    {
      [a2 commit];
      [a2 waitUntilScheduled];
      [v5 present];
    }

    else
    {
      [a2 presentDrawable:v5];
      [a2 commit];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_37BF4C()
{
  swift_unknownObjectRelease();
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_37BFA8(uint64_t result)
{
  if (result != 552 && result != 80)
  {
    v1._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v1);

    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

id sub_37C074(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

unint64_t sub_37C088()
{
  result = qword_E00E08;
  if (!qword_E00E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00E08);
  }

  return result;
}

uint64_t sub_37C0DC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_37C114()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_37C170()
{

  if (*(v0 + 24))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_37C1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_37C228()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_37C2C8(double a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))();
  if (v5)
  {
    v6 = v5;
    if (*(*(v5 + OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet) + 16) && (swift_getObjectType(), swift_conformsToProtocol2()) && v3)
    {
      [v6 frame];
      CGRectGetWidth(v8);
    }

    else
    {
    }
  }

  return a1;
}

void sub_37C39C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && v2)
  {
    v6 = v5;
    v7 = *(a2 + 8);
    v17 = v2;
    v8 = v7(a1, a2);
    if (v8)
    {
      v9 = v8;
      ObjectType = swift_getObjectType();
      v11 = (*(v6 + 16))(ObjectType, v6);
      swift_beginAccess();
      v12 = *(v11 + 120);
      v13 = *(v11 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v12) & 0xF;
      }

      if (v13)
      {
        v14 = (*(v6 + 24))(ObjectType, v6);
        [v17 effectiveUserInterfaceLayoutDirection];
        v15 = (*(a2 + 32))(a1, a2);
        [v15 bounds];

        if (*(*&v9[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
        {
          sub_37C7B0(v9, v11);
          [v9 frame];
          CGRectGetWidth(v19);
        }

        v16 = v14;
        sub_ABA490();
        [v16 setFrame:?];
      }

      else
      {
        [v9 setHidden:1];
      }
    }

    else
    {
    }
  }
}

id sub_37C67C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0 || (result = [v0 contentView]) == 0)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2 || (result = [v2 contentView]) == 0)
    {

      return v3;
    }
  }

  return result;
}

id sub_37C740()
{
  result = [v0 contentView];
  if (!result)
  {

    return v2;
  }

  return result;
}

id sub_37C7B0(void *a1, uint64_t a2)
{
  v5 = &selRef__authenticateReturningError_;
  [v2 frame];
  sub_ABA4A0();
  v53 = v6;
  v54 = v7;
  rect = v8;
  v52 = v9;
  [v2 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v2 traitCollection];
  [v18 displayScale];
  v20 = v19;

  sub_2E94A4(v61, v11, v13, v15, v17, v20);
  v21 = v61[0];

  v22 = sub_37CC54(v21, a2);
  v24 = v23;

  if (v24)
  {
    goto LABEL_12;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v22 >= *(v21 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = &v21[176 * v22];
  v27 = *(v26 + 2);
  v28 = *(v26 + 4);
  v57[1] = *(v26 + 3);
  v57[2] = v28;
  v57[0] = v27;
  v29 = *(v26 + 5);
  v30 = *(v26 + 6);
  v31 = *(v26 + 8);
  v57[5] = *(v26 + 7);
  v57[6] = v31;
  v57[3] = v29;
  v57[4] = v30;
  v32 = *(v26 + 9);
  v33 = *(v26 + 10);
  v34 = *(v26 + 12);
  v59 = *(v26 + 11);
  v60 = v34;
  v57[7] = v32;
  v58 = v33;
  v35 = v59;
  v36 = v34;
  v37 = *&v57[0];
  sub_2F52E4(v57, v56);
  v62.origin.x = v53;
  v62.origin.y = v54;
  v62.size.width = rect;
  v62.size.height = v52;
  CGRectGetMinX(v62);
  v63.origin = v35;
  v63.size = v36;
  CGRectGetMaxX(v63);
  swift_beginAccess();
  v39 = *(v37 + 32);
  v38 = *(v37 + 40);
  v40 = *(v37 + 48);
  v41 = *(v37 + 56);
  v42 = *(v37 + 64);
  v43 = *(v37 + 72);
  v44 = *(v37 + 80);
  if (v43 < 0)
  {
    sub_37D174(*(v37 + 32), *(v37 + 40), *(v37 + 48), *(v37 + 56), *(v37 + 64), *(v37 + 72), *(v37 + 80));
    v66.origin.x = v53;
    v66.origin.y = v54;
    v66.size.width = rect;
    v66.size.height = v52;
    CGRectGetMidY(v66);
    [a1 frame];
    v50 = v41;
    v5 = &selRef__authenticateReturningError_;
    sub_C7504(v39, v38, v40, v50, v42, v43, v44);
    sub_2F5398(v57);
LABEL_12:
    [a1 v5[107]];
    sub_ABA490();
    [a1 setFrame:?];
    return sub_3F250(v61);
  }

  v45 = v44;
  v51 = v39;
  sub_37D174(v39, v38, v40, v41, v42, v43, v44);
  v46 = [v45 _fontAdjustedForCurrentContentSizeCategory];
  if (v46)
  {
    v47 = v46;

    v45 = v47;
  }

  result = [a1 font];
  if (result)
  {
    v48 = result;
    v49 = v58;
    v64.origin.x = v53;
    v64.origin.y = v54;
    v64.size.width = rect;
    v64.size.height = v52;
    CGRectGetMinY(v64);
    v65.origin = v35;
    v65.size = v36;
    CGRectGetMinY(v65);
    if (v49 >= 2)
    {
      [v45 lineHeight];
      [v45 leading];
    }

    [v48 ascender];
    [v45 ascender];

    sub_C7504(v51, v38, v40, v41, v42, v43, v44);
    sub_2F5398(v57);
    v5 = &selRef__authenticateReturningError_;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_37CC54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    v7 = &selRef_performWithResponseHandler_;
    v47 = v4;
    while (1)
    {
      v8 = v6[9];
      v60[8] = v6[8];
      v60[9] = v8;
      v60[10] = v6[10];
      v9 = v6[5];
      v60[4] = v6[4];
      v60[5] = v9;
      v10 = v6[7];
      v60[6] = v6[6];
      v60[7] = v10;
      v11 = v6[1];
      v60[0] = *v6;
      v60[1] = v11;
      v12 = v6[3];
      v60[2] = v6[2];
      v60[3] = v12;
      v13 = *&v60[0];
      if (*&v60[0] == a2)
      {
        return v5;
      }

      if (*(*&v60[0] + 16) == *(a2 + 16) && *(*&v60[0] + 24) == *(a2 + 24) || (sub_ABB3C0() & 1) != 0)
      {
        swift_beginAccess();
        v14 = *(v13 + 48);
        v15 = *(v13 + 80);
        v16 = *(v13 + 96);
        v52 = *(v13 + 64);
        v53 = v15;
        v18 = *(a2 + 32);
        v17 = *(a2 + 48);
        v54 = v16;
        v55 = v18;
        v50 = *(v13 + 32);
        v51 = v14;
        v19 = *(a2 + 64);
        v20 = *(a2 + 80);
        v56 = v17;
        v57 = v19;
        v21 = *(a2 + 96);
        v58 = v20;
        v59 = v21;
        if ((*(&v52 + 1) & 0x8000000000000000) != 0)
        {
          if ((*(&v57 + 1) & 0x8000000000000000) != 0)
          {
            if (v50 == v55)
            {
              sub_2F52E4(v60, v49);
              sub_2F118(&v55, v49);
              sub_2F118(&v50, v49);
            }

            else
            {
              v31 = sub_ABB3C0();
              sub_2F52E4(v60, v49);
              sub_2F118(&v55, v49);
              sub_2F118(&v50, v49);
              if ((v31 & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_30;
          }
        }

        else if ((*(&v57 + 1) & 0x8000000000000000) == 0)
        {
          v48 = v55;
          v61 = v50;
          v45 = *(&v55 + 1);
          v46 = *(&v50 + 1);
          v39 = BYTE8(v57);
          v40 = BYTE8(v52);
          v44 = v56;
          v22 = v58;
          v23 = v52;
          v41 = *(&v51 + 1);
          v42 = *(&v56 + 1);
          v43 = v51;
          v24 = v53;
          sub_2F52E4(v60, v49);
          sub_2F118(&v55, v49);
          sub_2F118(&v50, v49);
          v25 = [v24 v7[226]];
          if (v25)
          {
            v26 = v25;

            v24 = v26;
          }

          v27 = v22;
          v28 = [v27 v7[226]];
          if (v28)
          {
            v29 = v28;

            v27 = v29;
          }

          sub_8A924();
          v30 = sub_ABA790();

          if (v30)
          {
            if (v61)
            {
              v4 = v47;
              v7 = &selRef_performWithResponseHandler_;
              if (!v48 || (sub_ABA790() & 1) == 0)
              {
LABEL_47:
                sub_2F174(&v55);
                sub_2F174(&v50);
LABEL_48:
                sub_2F5398(v60);
                goto LABEL_4;
              }
            }

            else
            {
              v4 = v47;
              v7 = &selRef_performWithResponseHandler_;
              if (v48)
              {
                goto LABEL_47;
              }
            }

            if (v46)
            {
              if (!v45 || (sub_ABA790() & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            else if (v45)
            {
              goto LABEL_47;
            }

            if (v43 != v44)
            {
              goto LABEL_47;
            }

            if (v41 != v42)
            {
              goto LABEL_47;
            }

            v49[0] = v23;
            sub_7FD28();
            if ((sub_AB38E0() & 1) == 0 || v39 != v40)
            {
              goto LABEL_47;
            }

LABEL_30:
            if (*(&v53 + 1) != *(&v58 + 1))
            {
              goto LABEL_47;
            }

            v49[0] = v54;
            sub_7FD28();
            if (sub_AB38E0())
            {
              v49[0] = *(&v54 + 1);
              v32 = sub_AB38E0();
              sub_2F174(&v55);
              sub_2F174(&v50);
              if (v32)
              {
                swift_beginAccess();
                v7 = &selRef_performWithResponseHandler_;
                if (*(v13 + 112) == *(a2 + 112) && *(v13 + 120) == *(a2 + 120) || (sub_ABB3C0() & 1) != 0)
                {
                  v33 = *(v13 + 256);
                  v34 = *(a2 + 256);
                  if (!v33)
                  {
                    sub_2F5398(v60);
                    if (!v34)
                    {
                      return v5;
                    }

                    goto LABEL_4;
                  }

                  if (v34)
                  {
                    type metadata accessor for TextDrawing.View();
                    v35 = v34;
                    v36 = v33;
                    v37 = sub_ABA790();

                    sub_2F5398(v60);
                    if (v37)
                    {
                      return v5;
                    }

                    goto LABEL_4;
                  }
                }

                goto LABEL_48;
              }
            }

            else
            {
              sub_2F174(&v55);
              sub_2F174(&v50);
            }

            sub_2F5398(v60);
          }

          else
          {
            sub_2F174(&v55);
            sub_2F174(&v50);
            sub_2F5398(v60);
            v4 = v47;
          }

          v7 = &selRef_performWithResponseHandler_;
        }
      }

LABEL_4:
      ++v5;
      v6 += 11;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  return 0;
}

id sub_37D174(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a6 < 0)
  {
  }

  else
  {
    v8 = a2;
    v9 = a7;

    return a1;
  }
}

void sub_37D204()
{
  v0 = sub_AB9260();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier:v0];

  if (!v2)
  {
    v2 = [v1 mainBundle];
  }

  qword_E71620 = v2;
}

Swift::Void __swiftcall PlaybackIntentDescriptor.configureForPlayActivity(using:)(UIViewController_optional using)
{
  if (using.value.super.super.isa)
  {
    v12 = using.value.super.super.isa;
    v1 = UIViewController.playActivityInformation.getter();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v8 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
    v9 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v9 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {

      v10 = sub_AB9260();
    }

    else
    {
      v10 = 0;
    }

    [v8 setPlayActivityFeatureName:v10];

    if (v7 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_AB3250().super.isa;
    }

    [v8 setPlayActivityRecommendationData:isa];

    sub_466A4(v5, v7);
  }
}

void sub_37D3DC(void (*a1)(void))
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.playbackController.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_425E68(0xD00000000000001ELL, 0x8000000000B61070, &v12);
    _os_log_impl(&dword_0, v7, v8, "Unexpected call to %s. Adding to player in legacy code is no longer supported: Expected picking music instead of playing it.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  (*(v3 + 8))(v5, v2);

  if (a1)
  {
    a1(0);
  }
}

uint64_t sub_37D5B4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_initializedProperties) == 2)
  {
    v71 = OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_initializedProperties;
    v72 = a1;
    v73 = a2;
    v68 = OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_requestedProperties;
    v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_requestedProperties);
    v6 = [v5 properties];
    v7 = sub_AB9B40();

    v8 = sub_AB92A0();
    v10 = sub_4DFDA8(v8, v9, v7);
    v12 = v11;
    v14 = v13;

    v69 = v14;
    sub_F01A0(v10, v12, v14);
    v15 = sub_AB92A0();
    v17 = sub_4DFDA8(v15, v16, v7);
    v19 = v18;
    LOBYTE(v14) = v20;

    v21 = v14;
    sub_F01A0(v17, v19, v14);
    v22 = sub_AB92A0();
    v24 = sub_4DFDA8(v22, v23, v7);
    v26 = v25;
    v28 = v27;

    sub_F01A0(v24, v26, v28);
    v29 = sub_AB92A0();
    v31 = sub_4DFDA8(v29, v30, v7);
    v33 = v32;
    v35 = v34;

    sub_F01A0(v31, v33, v35);
    v36 = sub_AB92A0();
    v38 = sub_4DFDA8(v36, v37, v7);
    v40 = v39;
    v42 = v41;

    sub_F01A0(v38, v40, v42);
    v43 = sub_AB92A0();
    v70 = v7;
    v45 = sub_4DFDA8(v43, v44, v7);
    v47 = v46;
    v49 = v48;

    sub_F01A0(v45, v47, v49);
    v50 = *(v2 + v68);
    v51 = [v50 relationships];
    sub_119B5C();
    v52 = sub_AB8FF0();

    v53 = sub_AB92A0();
    if (*(v52 + 16))
    {
      sub_2EBF88(v53, v54);
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56 & 1 | ((~v69 != 0) << 8) | ((~v21 != 0) << 16) | ((~v28 != 0) << 24);
    v58 = v57 | ((~v35 != 0) << 32) | ((~v42 != 0) << 40);
    v59 = v2 + v71;
    *v59 = v57;
    *(v59 + 4) = WORD2(v58);
    *(v59 + 6) = (v58 | ((v49 != -1) << 48)) >> 48;

    v4 = v72;
    v3 = v73;
  }

  v75 = 1;
  v60 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin(v60);
  v67[2] = v2;
  v67[3] = v4;
  v67[4] = v3;
  v67[5] = &v75;
  v61 = objc_allocWithZone(MusicModelTVShowEpisodeDetailItem);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_37E118;
  *(v62 + 24) = v67;
  aBlock[4] = sub_57B84;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_116;
  v63 = _Block_copy(aBlock);

  v64 = [v61 initWithIdentifiers:v60 block:v63];
  _Block_release(v63);

  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
  }

  else
  {
    v66 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v64 personalizationStyle:v75];

    return v66;
  }

  return result;
}

void sub_37DAB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_initializedProperties;
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *(a2 + v10) | ((*(a2 + v10 + 4) | (*(a2 + v10 + 6) << 16)) << 32);
  if (*(a2 + v10) == 2)
  {
    goto LABEL_25;
  }

  if ((*(a2 + v10) & 0x100) != 0)
  {
    (*&stru_298.segname[(swift_isaMask & *a3) + 8])();
    v18 = sub_AB9260();

    [v12 setHeadlineText:v18];

    v17 = *(a2 + v10) | ((*(a2 + v10 + 4) | (*(a2 + v10 + 6) << 16)) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_26;
  }

  if ((v17 & 0x10000) != 0)
  {
    (*(&stru_298.offset + (swift_isaMask & *a3)))();
    v19 = sub_AB9260();

    [v12 setTitleText:v19];

    v17 = *(a2 + v10) | ((*(a2 + v10 + 4) | (*(a2 + v10 + 6) << 16)) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_27;
  }

  if ((v17 & 0x1000000) != 0)
  {
    (*(&stru_298.reserved2 + (swift_isaMask & *a3)))();
    v20 = sub_AB9260();

    [v12 setShowNameText:v20];

    v17 = *(a2 + v10) | ((*(a2 + v10 + 4) | (*(a2 + v10 + 6) << 16)) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_28;
  }

  if ((v17 & 0x100000000) != 0)
  {
    (*&stru_2E8.segname[swift_isaMask & *a3])();
    v21 = sub_AB9260();

    [v12 setDescriptionText:v21];

    v17 = *(a2 + v10) | ((*(a2 + v10 + 4) | (*(a2 + v10 + 6) << 16)) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_29;
  }

  if ((v17 & 0x10000000000) != 0)
  {
    v22 = (*(&stru_2E8.size + (swift_isaMask & *a3)))();
    sub_12B924(v22);
    isa = sub_AB9740().super.isa;

    [v12 setEpisodeInformationItems:isa];

    v17 = *(a2 + v10) | ((*(a2 + v10 + 4) | (*(a2 + v10 + 6) << 16)) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_30;
  }

  if ((v17 & 0x1000000000000) != 0)
  {
    v24 = (*(&stru_108.flags + (swift_isaMask & *a3)))();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v28[4] = sub_37E184;
    v28[5] = v25;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_119878;
    v28[3] = &block_descriptor_20_3;
    v26 = _Block_copy(v28);
    v27 = v24;

    [v12 setBackgroundArtworkCatalogBlock:v26];
    _Block_release(v26);
  }
}

id sub_37DFE4(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = ICStoreArtworkInfoCropStyleBoundedBox;
  v3 = a2;
  v4 = JSArtwork.artworkCatalog(defaultCropStyle:)(v2);

  return v4;
}

id sub_37E064()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelTVShowEpisodeDetailItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_37E14C()
{

  return swift_deallocObject();
}

id sub_37E18C(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_initializedProperties];
  v3[6] = 0;
  *(v3 + 2) = 0;
  *v3 = 2;
  *&v1[OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication37JSModelTVShowEpisodeDetailItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelTVShowEpisodeDetailItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_37E3B4()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for JSParagraphViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    v3 = qword_E71898;
    [v2 setBackgroundColor:qword_E71898];
    v4 = sub_37F240();
    v5 = *&v0[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_paragraphViewModel];
    v6 = (*&stru_108.segname[(swift_isaMask & *v5) + 16])();
    v7 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title];
    v8 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title];
    v9 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title + 8];
    *v7 = v6;
    v7[1] = v10;
    sub_4CEC20(v8, v9);

    v12 = (*&stru_158.sectname[swift_isaMask & *v5])(v11);
    v13 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
    v14 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
    v15 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8];
    *v13 = v12;
    v13[1] = v16;
    sub_4CEE20(v14, v15);

    v18 = (*(&stru_158.offset + (swift_isaMask & *v5)))(v17);
    v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_backgroundStyle] = v18;
    if (v18)
    {
      if (v18 == 1)
      {
        if (qword_DE6CA8 != -1)
        {
          swift_once();
        }

        v19 = &qword_E718E8;
      }

      else
      {
        if (qword_DE6C80 != -1)
        {
          swift_once();
        }

        v19 = &qword_E718C0;
      }

      v3 = *v19;
    }

    v20 = [v4 setBackgroundColor:v3];
    v21 = (*&stru_1A8.segname[swift_isaMask & *v5])(v20);
    sub_4CDC88((v21 & 1));
    v22 = (*&stru_248.sectname[swift_isaMask & *v5])();
    v23 = OBJC_IVAR____TtC16MusicApplication13ParagraphView_hidesDivider;
    v24 = v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_hidesDivider];
    v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_hidesDivider] = v22 & 1;
    if ((v22 & 1) != v24)
    {
      v25 = sub_4CFAA8();
      [v25 setHidden:v4[v23]];

      v22 = [v4 setNeedsLayout];
      v26 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v26)
      {

        v26(v4);
        v22 = sub_17654(v26);
      }
    }

    v27 = (*(&stru_248.offset + (swift_isaMask & *v5)))(v22);
    v28 = sub_4CE638(v27 & 1);
    v29 = (*(&stru_1A8.flags + (swift_isaMask & *v5)))(v28);
    v30 = OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize;
    v31 = v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize];
    v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize] = v29;
    if (v31 != v29)
    {
      sub_4CEF60();
      v29 = [v4 setNeedsLayout];
      v32 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v32)
      {

        v32(v4);
        v29 = sub_17654(v32);
      }
    }

    v33 = (*&stru_1F8.segname[(swift_isaMask & *v5) + 16])(v29);
    v34 = v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_titleSize];
    v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_titleSize] = v33;
    if (v34 != v4[v30])
    {
      sub_4CF970();
      v33 = [v4 setNeedsLayout];
      v35 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v35)
      {

        v35(v4);
        v33 = sub_17654(v35);
      }
    }

    v36 = (*&stru_298.segname[swift_isaMask & *v5])(v33);
    if (v37)
    {
      v36 = 6;
    }

    sub_4CE4D0(v36);
    [v4 setClipsToBounds:1];
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    v40 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    *v39 = sub_37FBF4;
    v39[1] = v38;

    sub_17654(v40);

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_moreButtonHandler];
    v43 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_moreButtonHandler];
    *v42 = sub_37FC10;
    v42[1] = v41;

    sub_17654(v43);

    [v2 addSubview:v4];
    sub_37F2C4();
  }

  else
  {
    __break(1u);
  }
}

void sub_37EA70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_37F41C();
  }
}

void sub_37EB0C()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for JSParagraphViewController();
  objc_msgSendSuper2(&v37, "viewDidLayoutSubviews");
  v1 = sub_37F240();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = type metadata accessor for ParagraphView();
    v36.receiver = v1;
    v36.super_class = v12;
    objc_msgSendSuper2(&v36, "frame");
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v35.receiver = v1;
    v35.super_class = v12;
    objc_msgSendSuper2(&v35, "setFrame:", v5, v7, v9, v11);
    type metadata accessor for CGRect(0);
    v31 = v14;
    v32 = v16;
    v33 = v18;
    v34 = v20;
    v30.receiver = v1;
    v30.super_class = v12;
    objc_msgSendSuper2(&v30, "frame");
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    if (sub_AB38D0())
    {
      [v1 setNeedsLayout];
      v25 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v25)
      {

        v25(v1);
        sub_17654(v25);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_37ECFC(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for JSParagraphViewController();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_37FC18;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_CF24C;
  v9[3] = &block_descriptor_117;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_37EE10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isViewLoaded])
    {
      v2 = sub_37F240();
      v3 = [v1 view];
      if (v3)
      {
        v4 = v3;
        [v3 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v20.origin.x = v6;
        v20.origin.y = v8;
        v20.size.width = v10;
        v20.size.height = v12;
        Width = CGRectGetWidth(v20);
        sub_4CDE34(Width, 1.79769313e308);
        v15 = v14;
        v17 = v16;

        type metadata accessor for CGSize(0);
        [v1 preferredContentSize];
        if (sub_AB38D0())
        {
          [v1 setPreferredContentSize:{v15, v17}];
        }

        v18 = [v1 view];
        if (v18)
        {
          v19 = v18;
          [v18 setNeedsLayout];

          v1 = v19;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_8:
  }
}

void sub_37F068(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for JSParagraphViewController();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_37F2C4();
  }
}

id sub_37F240()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ParagraphView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_37F2C4()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = sub_37F240();
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      Width = CGRectGetWidth(v26);
      sub_4CDE34(Width, 1.79769313e308);
      v15 = v14;
      v17 = v16;

      type metadata accessor for CGSize(0);
      [v1 preferredContentSize];
      v24 = v18;
      v25 = v19;
      v22 = v15;
      v23 = v17;
      if (sub_AB38D0())
      {
        [v1 setPreferredContentSize:{v15, v17, *&v15, *&v17, v24, v25}];
      }

      v20 = [v1 view];
      if (v20)
      {
        v21 = v20;
        [v20 setNeedsLayout];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_37F41C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v1 = __chkstk_darwin(v0 - 8);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v36 - v3;
  v5 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v36 - v15);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  sub_12AFE8();
  if (v19)
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      (*(v22 + 24))(ObjectType, v22);

      goto LABEL_6;
    }
  }

  v23 = type metadata accessor for MetricsPageProperties();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
LABEL_6:
  v24 = sub_AB31C0();
  v25 = *(*(v24 - 8) + 56);
  v39 = v4;
  v25(v4, 1, 1, v24);
  sub_37FA6C(v18, v16);
  v26 = type metadata accessor for MetricsPageProperties();
  v27 = *(*(v26 - 8) + 48);
  if (v27(v16, 1, v26) == 1)
  {
    sub_37FADC(v16);
    v37 = 0xE000000000000000;
    v38 = 0;
  }

  else
  {
    v28 = *v16;
    v37 = v16[1];
    v38 = v28;

    sub_37FB44(v16, type metadata accessor for MetricsPageProperties);
  }

  sub_37FA6C(v18, v13);
  if (v27(v13, 1, v26) == 1)
  {
    sub_37FADC(v13);
    v36 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v29 = *(v13 + 3);
    v36 = *(v13 + 2);

    sub_37FB44(v13, type metadata accessor for MetricsPageProperties);
  }

  v25(v41, 1, 1, v24);
  sub_37FA6C(v18, v10);
  if (v27(v10, 1, v26) == 1)
  {
    sub_37FADC(v10);
    v30 = v39;
LABEL_15:
    v31 = sub_96B2C(_swiftEmptyArrayStorage);

    goto LABEL_16;
  }

  v31 = *&v10[*(v26 + 28)];

  sub_37FB44(v10, type metadata accessor for MetricsPageProperties);
  v30 = v39;
  if (!v31)
  {
    goto LABEL_15;
  }

LABEL_16:
  v32 = v40;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(1701998445, 0xE400000000000000, 5, 44, v30, 0, 0, 12, v40, 0, 0, 1024, v38, v37, v36, v29, v41, v31, 1, 2, 0, 0, 0);
  v33 = MetricsReportingController.shared.unsafeMutableAddressor();
  v34 = *&stru_B8.sectname[swift_isaMask & **v33];
  v35 = *v33;
  v34(v32, 0, 0, 0, 0, 0);
  sub_37FB44(v32, type metadata accessor for MetricsEvent.Click);
  sub_37FADC(v18);
}

id sub_37F984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSParagraphViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_37FA28()
{
  v0 = sub_37F240();
  v1 = [v0 backgroundColor];

  return v1;
}

uint64_t sub_37FA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_37FADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_37FB44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_37FBA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_37FC1C()
{
  sub_171590(v0 + OBJC_IVAR____TtC16MusicApplication29PersonalMixFeedbackController_feedbackURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalMixFeedbackController()
{
  result = qword_E00ED8;
  if (!qword_E00ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_37FCDC()
{
  sub_26E00C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_37FD94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_37FDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_37FE4C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_381368(v3, v2);
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_37FF08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(v2 + 32) != 1)
  {
    goto LABEL_8;
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v4 results];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 dataSource];
    if ([v9 respondsToSelector:"indexOfSectionForSectionIndexTitleAtIndex:"])
    {
      v10 = [v9 indexOfSectionForSectionIndexTitleAtIndex:a1];

      swift_unknownObjectRelease();
      if ((v10 & 0x8000000000000000) != 0 || v10 == sub_AB2A10())
      {
LABEL_8:
        v11 = 1;
        goto LABEL_9;
      }

      sub_AB37C0();
      v11 = 0;
    }

    else
    {

      swift_unknownObjectRelease();
      v11 = 1;
    }
  }

  else
  {

    v11 = 1;
  }

LABEL_9:
  v12 = sub_AB3820();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v11, 1, v12);
}

id sub_380070(uint64_t a1, char a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24))
  {
    v10 = v7;
    result = [*(v2 + 24) results];
    if (!result)
    {
      return result;
    }

    v12 = result;
    v13 = [result numberOfSections];
    if ((a2 & 1) == 0 && (a1 & 0x8000000000000000) == 0 && v13 > a1 && [v12 numberOfItemsInSection:a1] > 0)
    {
      v14 = *(v2 + 16);
      [v14 contentOffset];
      v16 = v15;
      sub_AB37C0();
      isa = sub_AB3770().super.isa;
      (*(v6 + 8))(v9, v10);
      [v14 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];

      [v14 contentOffset];
      v19 = v18;

      return (vabdd_f64(v19, v16) > 0.00000011920929);
    }
  }

  return 0;
}

uint64_t sub_380230(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_381368(v2, Strong);

    sub_3802B0(v5, v4);
  }
}

void sub_3802B0(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_36:
    v29 = v3;
    v4 = sub_ABB060();
    v3 = v29;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v32 = v3;
      v33 = v3 & 0xC000000000000001;
      v30 = v3 & 0xFFFFFFFFFFFFFF8;
      v31 = v4;
      do
      {
        if (v33)
        {
          v8 = sub_360324(v5, v3);
        }

        else
        {
          if (v5 >= *(v30 + 16))
          {
            goto LABEL_35;
          }

          v8 = *(v3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v11 = swift_allocObject();
        swift_weakInit();
        v12 = qword_DE6AF8;

        if (v12 != -1)
        {
          swift_once();
        }

        v13 = qword_E00FC0;
        if (objc_getAssociatedObject(a2, qword_E00FC0))
        {
          sub_ABAB50();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        v38[0] = v36;
        v38[1] = v37;
        key = v13;
        if (*(&v37 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01198);
          if (swift_dynamicCast())
          {
            v14 = v35;
            goto LABEL_21;
          }
        }

        else
        {
          sub_9BC10(v38);
        }

        v14 = &_swiftEmptyDictionarySingleton;
LABEL_21:
        v15 = a2;
        [a2 removeKeyCommand:v9];
        v16 = swift_allocObject();
        *(v16 + 16) = sub_381150;
        *(v16 + 24) = v11;
        v17 = v9;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38[0] = v14;
        v19 = sub_2EC4C4(v17);
        v20 = v14[2];
        v21 = (v3 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_33;
        }

        a2 = v3;
        if (v14[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v24 = *&v38[0];
            if (v3)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_3313FC();
            v24 = *&v38[0];
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_327BB8(v22, isUniquelyReferenced_nonNull_native);
          v23 = sub_2EC4C4(v17);
          if ((a2 & 1) != (v3 & 1))
          {
            sub_3811BC();
            sub_ABB4C0();
            __break(1u);
            return;
          }

          v19 = v23;
          v24 = *&v38[0];
          if (a2)
          {
LABEL_4:
            v6 = (v24[7] + 16 * v19);
            *v6 = sub_381190;
            v6[1] = v16;

            goto LABEL_5;
          }
        }

        v24[(v19 >> 6) + 8] |= 1 << v19;
        *(v24[6] + 8 * v19) = v17;
        v25 = (v24[7] + 16 * v19);
        *v25 = sub_381190;
        v25[1] = v16;
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_34;
        }

        v24[2] = v28;
LABEL_5:
        a2 = v15;
        [v15 addKeyCommand:v17];
        sub_3811BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E011A0);
        sub_381208();
        isa = sub_AB8FD0().super.isa;

        objc_setAssociatedObject(v15, key, isa, &dword_0 + 1);

        ++v5;
        v3 = v32;
      }

      while (v10 != v31);
    }
  }
}

uint64_t sub_3806A8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 64);
    if (v4)
    {
      goto LABEL_10;
    }

    v5 = *(result + 24);
    if (v5)
    {
      v6 = [v5 results];
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = [v8 dataSource];
          if ([v9 respondsToSelector:"sectionIndexTitles"])
          {
            v10 = [v9 sectionIndexTitles];
            swift_unknownObjectRelease();
            v11 = sub_AB9760();
          }

          else
          {
            swift_unknownObjectRelease();
            v11 = 0;
          }

          *(v3 + 64) = v11;

          v4 = *(v3 + 64);
          if (!v4)
          {
          }

          goto LABEL_10;
        }
      }
    }

    v4 = *(v3 + 64);
    if (!v4)
    {
    }

LABEL_10:

    v12 = [a1 input];
    if (!v12)
    {
    }

    v13 = v12;
    v14 = sub_AB92A0();
    v16 = v15;

    v17 = *(v4 + 16);
    if (!v17)
    {
LABEL_34:
    }

    v18 = 0;
    v19 = (v4 + 40);
    while (1)
    {
      v20 = *(v19 - 1) == v14 && *v19 == v16;
      if (v20 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      ++v18;
      v19 += 2;
      if (v17 == v18)
      {
        goto LABEL_34;
      }
    }

    v21 = *(v3 + 24);
    if (v21)
    {
      v21 = [v21 results];
      if (v21)
      {
        v22 = v21;
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          v24 = [v23 dataSource];
          if ([v24 respondsToSelector:"indexOfSectionForSectionIndexTitleAtIndex:"])
          {
            v25 = [v24 indexOfSectionForSectionIndexTitleAtIndex:v18];

            swift_unknownObjectRelease();
            v26 = v25 >> 63;
            v21 = (v25 & ~(v25 >> 63));
LABEL_33:
            sub_380070(v21, v26);
            goto LABEL_34;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v21 = 0;
      }
    }

    LOBYTE(v26) = 1;
    goto LABEL_33;
  }

  return result;
}

void sub_380968()
{
  v1 = v0;
  *(v0 + 64) = 0;

  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = sub_381260();
  if (!v2 || (v3 = *(v0 + 24)) == 0)
  {
LABEL_17:
    v18 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (v18 != 1)
    {
      goto LABEL_35;
    }

    v19 = sub_381260();
    if (v19)
    {
      v20 = v19;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (*(v1 + 32) == 1)
        {
          v42 = Strong;
          v22 = *(v20 + 16);
          if (v22)
          {

            sub_ABAEC0();
            v23 = objc_opt_self();
            v24 = v20 + 40;
            do
            {

              v25 = sub_AB9260();
              v26 = [v23 keyCommandWithInput:v25 modifierFlags:0 action:"indexKeyCommandHandler:"];

              sub_ABAE90();
              sub_ABAED0();
              sub_ABAEE0();
              sub_ABAEA0();
              v24 += 16;
              --v22;
            }

            while (v22);
          }

          else
          {
          }

          sub_380230(_swiftEmptyArrayStorage);
          goto LABEL_34;
        }
      }
    }

    sub_380230(_swiftEmptyArrayStorage);
    goto LABEL_35;
  }

  v4 = v2;

  v5 = [v3 results];
  if (!v5)
  {

    goto LABEL_17;
  }

  v6 = v5;
  if (*(v4 + 16) && [v5 numberOfSections] > 1)
  {
    v7 = *(v1 + 40) < [v6 totalItemCount];
    v8 = *(v1 + 32);
    *(v1 + 32) = v7;
    if (((v7 ^ v8) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v9 = *(v1 + 32);
    *(v1 + 32) = 0;
    if ((v9 & 1) == 0)
    {
LABEL_31:

      goto LABEL_35;
    }
  }

  v10 = sub_381260();
  if (!v10 || (v11 = v10, (v12 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
LABEL_30:
    sub_380230(_swiftEmptyArrayStorage);
    goto LABEL_31;
  }

  if (*(v1 + 32) != 1)
  {

    goto LABEL_30;
  }

  v42 = v12;
  v13 = *(v11 + 16);
  if (v13)
  {

    sub_ABAEC0();
    v14 = objc_opt_self();
    v15 = v11 + 40;
    do
    {

      v16 = sub_AB9260();
      v17 = [v14 keyCommandWithInput:v16 modifierFlags:0 action:"indexKeyCommandHandler:"];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
  }

  sub_380230(_swiftEmptyArrayStorage);

LABEL_34:

LABEL_35:
  v27 = *(v1 + 16);
  [v27 _reloadSectionIndexTitles];
  v43 = [v27 accessoryViewAtEdge:1];
  if (v43)
  {
    v28 = *(v1 + 32);
    v29 = v43;
    if (v28 == 1 && sub_381260())
    {
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    v31 = v30[2];

    [v29 setHidden:v31 == 0];

    LODWORD(v31) = *(v1 + 32);
    v32 = v29;
    if (v31 == 1 && sub_381260())
    {
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
    }

    v34 = v33[2];

    v35 = 1.0;
    if (!v34)
    {
      v35 = 0.0;
    }

    [v32 setAlpha:v35];

    v36 = [v32 layer];
    [v36 setZPosition:10.0];

    v37 = objc_opt_self();
    v38 = v32;
    v39 = [v37 clearColor];
    [v38 setBackgroundColor:v39];
  }

  if (*(v1 + 32) == 1 && sub_381260())
  {
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

  v41 = v40[2];

  [v27 setShowsVerticalScrollIndicator:v41 == 0];
}

uint64_t sub_380EE8()
{
  result = swift_slowAlloc();
  qword_E00FC0 = result;
  return result;
}

uint64_t sub_380F10()
{
  if (qword_DE6AF8 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E00FC0))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01198);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

uint64_t sub_381000(uint64_t a1)
{
  result = sub_380F10();
  if (result)
  {
    v3 = result;
    if (*(result + 16) && (v4 = sub_2EC4C4(a1), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 16 * v4);

      v7 = a1;
      v6(&v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_381118()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_381158()
{

  return swift_deallocObject();
}

unint64_t sub_3811BC()
{
  result = qword_E02D50;
  if (!qword_E02D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E02D50);
  }

  return result;
}

unint64_t sub_381208()
{
  result = qword_E011A8;
  if (!qword_E011A8)
  {
    sub_3811BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E011A8);
  }

  return result;
}

uint64_t sub_381260()
{
  if (!*(v0 + 64))
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v3 = [v2 results];
      if (v3)
      {
        v4 = v3;
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = [v5 dataSource];
          if ([v6 respondsToSelector:"sectionIndexTitles"])
          {
            v7 = [v6 sectionIndexTitles];
            swift_unknownObjectRelease();
            v8 = sub_AB9760();
          }

          else
          {
            swift_unknownObjectRelease();
            v8 = 0;
          }

          *(v0 + 64) = v8;
        }

        else
        {
        }
      }
    }
  }

  return *(v0 + 64);
}

void sub_381368(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_ABB060();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = &selRef_isMovingFromParentViewController;
    v8 = &off_DE6000;
    v19 = v3;
    while (1)
    {
      if (v6)
      {
        v9 = sub_360324(v5, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      [a2 v7[156]];
      if (v8[351] != -1)
      {
        swift_once();
      }

      v11 = qword_E00FC0;
      if (objc_getAssociatedObject(a2, qword_E00FC0))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
      }

      v23[0] = v21;
      v23[1] = v22;
      if (*(&v22 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01198);
        if (swift_dynamicCast())
        {
          v12 = v20;
          v13 = v10;
          v14 = sub_2EC4C4(v13);
          if (v15)
          {
            v16 = v14;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v23[0] = v20;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_3313FC();
              v12 = *&v23[0];
            }

            sub_27C990(v16, v12);

            v3 = v19;
LABEL_23:
            sub_3811BC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E011A0);
            sub_381208();
            v18.super.isa = sub_AB8FD0().super.isa;
          }

          else
          {

            if (v20)
            {
              goto LABEL_23;
            }

            v18.super.isa = 0;
          }

          v8 = &off_DE6000;
          objc_setAssociatedObject(a2, v11, v18.super.isa, &dword_0 + 1);
          swift_unknownObjectRelease();
          v7 = &selRef_isMovingFromParentViewController;
          goto LABEL_7;
        }
      }

      else
      {
        sub_9BC10(v23);
      }

      objc_setAssociatedObject(a2, v11, 0, &dword_0 + 1);
LABEL_7:
      ++v5;

      if (v4 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

char *sub_381618()
{
  v1 = v0;
  v26 = sub_ABA140();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_ABA100();
  __chkstk_darwin(v5);
  v6 = sub_AB7C50();
  __chkstk_darwin(v6 - 8);
  v25 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue;
  v24[1] = sub_13C80(0, &qword_DE8ED0);
  v24[0] = "UpdateNotification";
  sub_AB7C30();
  *&v28[0] = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_809E0(&qword_DED7A0, &qword_E01270);
  sub_ABABB0();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v0[v25] = sub_ABA180();
  *&v0[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accountStoreDidChangeNotificationObserver] = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_lastAuthenticationAttempt;
  v8 = sub_AB3430();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_pendingProfileAccessBlocks] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_pendingProfileUpdateBlocks] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_profileInvalidationTimer] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount] = 0;
  v9 = &v1[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
  sub_C32A0(v28);
  v10 = v28[7];
  *(v9 + 6) = v28[6];
  *(v9 + 7) = v10;
  *(v9 + 8) = v28[8];
  *(v9 + 18) = v29;
  v11 = v28[3];
  *(v9 + 2) = v28[2];
  *(v9 + 3) = v11;
  v12 = v28[5];
  *(v9 + 4) = v28[4];
  *(v9 + 5) = v12;
  v13 = v28[1];
  *v9 = v28[0];
  *(v9 + 1) = v13;
  v14 = type metadata accessor for MediaSocialProfileCoordinator();
  v27.receiver = v1;
  v27.super_class = v14;
  v15 = objc_msgSendSuper2(&v27, "init");
  v16 = ICUserIdentityStoreDidChangeNotification;
  v17 = objc_opt_self();
  v18 = v15;
  v19 = v16;
  v20 = [v17 defaultIdentityStore];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v18[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accountStoreDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, v20, 1, 1, sub_386FC0, v21);

  v22 = [objc_opt_self() sharedMonitor];
  [v22 registerObserver:v18];

  return v18;
}

uint64_t sub_381AB0(uint64_t a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB2BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(result + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
    v12 = result;
    (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v13 = *(v9 + 80);
    v20 = v5;
    v14 = (v13 + 24) & ~v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    (*(v9 + 32))(v15 + v14, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    aBlock[4] = sub_38708C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_109;
    v16 = _Block_copy(aBlock);
    v17 = v12;
    sub_AB7C30();
    v23 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    v18 = v22;
    sub_ABABB0();
    sub_ABA160();
    (*(v3 + 8))(v18, v2);
    (*(v21 + 8))(v7, v20);
    _Block_release(v16);
  }

  return result;
}

NSString sub_381E98()
{
  result = sub_AB9260();
  qword_E71628 = result;
  return result;
}

uint64_t sub_381ED0(uint64_t a1, uint64_t a2)
{
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB7C50();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_386F8C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_96;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_AB7C30();
  v18 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_809E0(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  sub_ABA160();
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  _Block_release(v13);
}

uint64_t sub_3821A0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB7C50();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  v14 = *a1;
  v25 = a1[1];
  v26 = v14;
  v24 = *(a1 + 5);
  v15 = swift_allocObject();
  v16 = a1[1];
  *(v15 + 24) = *a1;
  *(v15 + 16) = v3;
  *(v15 + 40) = v16;
  *(v15 + 56) = a1[2];
  *(v15 + 72) = a2;
  *(v15 + 80) = a3;
  aBlock[4] = sub_386F1C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_90_1;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  sub_15F84(&v26, v22, &unk_DEE6F0);
  sub_15F84(&v25, v22, &unk_DEE6F0);
  sub_15F84(&v24, v22, &unk_E01260);

  sub_AB7C30();
  v22[0] = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_809E0(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  sub_ABA160();
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v21);
  _Block_release(v17);
}

void sub_382544(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
  v6[6] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
  v6[7] = v2;
  v6[8] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
  v3 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
  v6[2] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
  v6[3] = v3;
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
  v6[4] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
  v6[5] = v4;
  v5 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
  v6[0] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
  v6[1] = v5;
  if (sub_90064(v6) == 1)
  {
    sub_383228();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount) = 0;
  }
}

void sub_382654(void *a1, uint64_t a2)
{
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = sub_AB7CF0();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v8 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_pendingProfileAccessBlocks;
    swift_beginAccess();
    a1 = *(v8 + v2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v2) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  a1 = sub_6C420(0, a1[2] + 1, 1, a1);
  *(v8 + v2) = a1;
LABEL_3:
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12 >> 1)
  {
    a1 = sub_6C420((v12 > 1), v13 + 1, 1, a1);
  }

  a1[2] = v13 + 1;
  v14 = &a1[2 * v13];
  v14[4] = sub_386E30;
  v14[5] = v5;
  *(v8 + v2) = a1;
  swift_endAccess();
  v15 = [objc_opt_self() sharedPrivacyInfo];
  v16 = [v15 privacyAcknowledgementRequiredForMusic];

  if ((v16 & 1) == 0)
  {
    v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
    v18 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
    v46 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
    v47 = v17;
    v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
    v48 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
    v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
    v21 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
    v42 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
    v43 = v20;
    v22 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
    v23 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
    v44 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
    v45 = v23;
    v24 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
    v40 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
    v41 = v24;
    v56 = v46;
    v57 = v19;
    v58 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
    v52 = v42;
    v53 = v22;
    v54 = v44;
    v55 = v18;
    v49 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
    v59 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
    v50 = v40;
    v51 = v21;
    v25 = sub_90064(&v50);
    if (v25 <= 1)
    {
      if (v25)
      {
        sub_383228();
      }

      else
      {
        v34 = v56;
        v35 = v57;
        v36 = v58;
        v37 = v59;
        v30 = v52;
        v31 = v53;
        v32 = v54;
        v33 = v55;
        v28 = v50;
        v29 = v51;
        UIScreen.Dimensions.size.getter(*&v50);
        v60[6] = v34;
        v60[7] = v35;
        v60[8] = v36;
        v61 = v37;
        v60[2] = v30;
        v60[3] = v31;
        v60[4] = v32;
        v60[5] = v33;
        v60[0] = v28;
        v60[1] = v29;
        v38[6] = v46;
        v38[7] = v47;
        v38[8] = v48;
        v39 = v49;
        v38[2] = v42;
        v38[3] = v43;
        v38[4] = v44;
        v38[5] = v45;
        v38[0] = v40;
        v38[1] = v41;
        sub_C343C(v38, &v27);
        sub_384938(v60, 0);
        sub_3863E8(&v40);
      }
    }
  }
}

void sub_3829DC(__int128 *a1, void *a2, uint64_t a3)
{
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v25.receiver - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = sub_AB7CF0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v10 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_pendingProfileUpdateBlocks;
    swift_beginAccess();
    a2 = *(v10 + v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + v3) = a2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  a2 = sub_6C444(0, a2[2] + 1, 1, a2);
  *(v10 + v3) = a2;
LABEL_3:
  v15 = a2[2];
  v14 = a2[3];
  if (v15 >= v14 >> 1)
  {
    a2 = sub_6C444((v14 > 1), v15 + 1, 1, a2);
  }

  a2[2] = v15 + 1;
  v16 = &a2[2 * v15];
  v16[4] = sub_386D94;
  v16[5] = v7;
  *(v10 + v3) = a2;
  swift_endAccess();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  updated = type metadata accessor for MediaSocialProfileUpdateOperation();
  v19 = objc_allocWithZone(updated);
  *&v19[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_photoUploadDictionary] = 0;
  v20 = a1[1];
  v27 = *a1;
  v29 = v20;
  v28 = *(a1 + 5);
  v21 = &v19[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate];
  *v21 = v27;
  *(v21 + 1) = v20;
  *(v21 + 2) = a1[2];
  v22 = &v19[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_responseHandler];
  *v22 = sub_386DC0;
  v22[1] = v17;
  sub_15F84(&v27, v26, &unk_DEE6F0);
  sub_15F84(&v29, v26, &unk_DEE6F0);
  sub_15F84(&v28, v26, &unk_E01260);
  v25.receiver = v19;
  v25.super_class = updated;
  v23 = objc_msgSendSuper2(&v25, "init");
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01250);
  v24 = [swift_getObjCClassFromMetadata() preferredQueue];
  [v24 addOperation:v23];
}

uint64_t sub_382D20(uint64_t a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(result + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    aBlock[4] = sub_386E08;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_75_1;
    v13 = _Block_copy(aBlock);
    v16 = v6;
    v14 = v13;
    v17 = v11;
    swift_errorRetain();
    sub_AB7C30();
    v19 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    sub_ABA160();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v16);
    _Block_release(v14);
  }

  return result;
}

uint64_t sub_383028()
{
  v1 = sub_AB7CC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_AB7CF0();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_C32A0(v22);
    v8 = v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state;
    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
    v24[6] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
    v24[7] = v9;
    v24[8] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
    v25 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
    v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
    v24[2] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
    v24[3] = v10;
    v11 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
    v24[4] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
    v24[5] = v11;
    v12 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
    v24[0] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
    v24[1] = v12;
    v13 = v22[7];
    *(v8 + 96) = v22[6];
    *(v8 + 112) = v13;
    *(v8 + 128) = v22[8];
    *(v8 + 144) = v23;
    v14 = v22[3];
    *(v8 + 32) = v22[2];
    *(v8 + 48) = v14;
    v15 = v22[5];
    *(v8 + 64) = v22[4];
    *(v8 + 80) = v15;
    v16 = v22[1];
    *v8 = v22[0];
    *(v8 + 16) = v16;
    sub_3863E8(v24);
    v17 = *(v8 + 112);
    v26[6] = *(v8 + 96);
    v26[7] = v17;
    v26[8] = *(v8 + 128);
    v27 = *(v8 + 144);
    v18 = *(v8 + 48);
    v26[2] = *(v8 + 32);
    v26[3] = v18;
    v19 = *(v8 + 80);
    v26[4] = *(v8 + 64);
    v26[5] = v19;
    v20 = *(v8 + 16);
    v26[0] = *v8;
    v26[1] = v20;
    result = sub_90064(v26);
    if (((1 << result) & 0xB) != 0)
    {
      *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_383228()
{
  v1 = sub_AB7CC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34.receiver - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_AB7CF0();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_386C50(v37);
    v7 = v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state;
    v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
    v39[6] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
    v39[7] = v8;
    v39[8] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
    v40 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
    v39[2] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
    v39[3] = v9;
    v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
    v39[4] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
    v39[5] = v10;
    v11 = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
    v39[0] = *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
    v39[1] = v11;
    v12 = v37[7];
    *(v7 + 96) = v37[6];
    *(v7 + 112) = v12;
    *(v7 + 128) = v37[8];
    *(v7 + 144) = v38;
    v13 = v37[3];
    *(v7 + 32) = v37[2];
    *(v7 + 48) = v13;
    v14 = v37[5];
    *(v7 + 64) = v37[4];
    *(v7 + 80) = v14;
    v15 = v37[1];
    *v7 = v37[0];
    *(v7 + 16) = v15;
    sub_3863E8(v39);
    v16 = *(v7 + 112);
    v41[6] = *(v7 + 96);
    v41[7] = v16;
    v41[8] = *(v7 + 128);
    v42 = *(v7 + 144);
    v17 = *(v7 + 48);
    v41[2] = *(v7 + 32);
    v41[3] = v17;
    v18 = *(v7 + 80);
    v41[4] = *(v7 + 64);
    v41[5] = v18;
    v19 = *(v7 + 16);
    v41[0] = *v7;
    v41[1] = v19;
    if (((1 << sub_90064(v41)) & 0xB) != 0)
    {
      *(v0 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount) = 0;
    }

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = type metadata accessor for MediaSocialProfileRequestOperation();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile];
    sub_C32A0(v35);
    v24 = v35[1];
    *v23 = v35[0];
    *(v23 + 1) = v24;
    v25 = v35[2];
    v26 = v35[3];
    v27 = v35[5];
    *(v23 + 4) = v35[4];
    *(v23 + 5) = v27;
    *(v23 + 2) = v25;
    *(v23 + 3) = v26;
    v28 = v35[6];
    v29 = v35[7];
    v30 = v35[8];
    *(v23 + 18) = v36;
    *(v23 + 7) = v29;
    *(v23 + 8) = v30;
    *(v23 + 6) = v28;
    v31 = &v22[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_responseHandler];
    *v31 = sub_386C84;
    v31[1] = v20;
    v34.receiver = v22;
    v34.super_class = v21;
    v32 = objc_msgSendSuper2(&v34, "init");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01250);
    v33 = [swift_getObjCClassFromMetadata() preferredQueue];
    [v33 addOperation:v32];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_383520(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(result + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
    v13 = result;
    v14 = swift_allocObject();
    v15 = *(a1 + 112);
    *(v14 + 120) = *(a1 + 96);
    *(v14 + 136) = v15;
    *(v14 + 152) = *(a1 + 128);
    v16 = *(a1 + 48);
    *(v14 + 56) = *(a1 + 32);
    *(v14 + 72) = v16;
    v17 = *(a1 + 80);
    *(v14 + 88) = *(a1 + 64);
    *(v14 + 104) = v17;
    v18 = *(a1 + 16);
    *(v14 + 24) = *a1;
    *(v14 + 16) = v13;
    v19 = *(a1 + 144);
    *(v14 + 40) = v18;
    *(v14 + 168) = v19;
    *(v14 + 176) = a2;
    aBlock[4] = sub_386D2C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_65_0;
    v20 = _Block_copy(aBlock);
    v22 = v8;
    v21 = v20;
    v23 = v13;
    sub_15F84(a1, &v25, &unk_E05300);
    swift_errorRetain();
    sub_AB7C30();
    v25 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    sub_ABA160();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v22);
    _Block_release(v21);
  }

  return result;
}

uint64_t sub_3838A4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 112);
  v138 = *(a1 + 96);
  v139 = v5;
  v140 = *(a1 + 128);
  v141 = *(a1 + 144);
  v6 = *(a1 + 48);
  v134 = *(a1 + 32);
  v135 = v6;
  v7 = *(a1 + 80);
  v136 = *(a1 + 64);
  v137 = v7;
  v8 = *(a1 + 16);
  v132 = *a1;
  v133 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - v10;
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16;
  v17 = sub_AB7CF0();
  (*(v13 + 8))(v15, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_8:
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v12;
    v34[4] = 3;

    sub_49FDA4(1, sub_386604, v34);
  }

  if (a2)
  {
    *&v112 = a2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    if (swift_dynamicCast())
    {
      v12 = v122;
      if (*(&v122 + 1) == 3)
      {
        sub_386328(&v102);
        v18 = &v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
        v19 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112];
        v118 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96];
        v119 = v19;
        v120 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128];
        v121 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144];
        v20 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48];
        v114 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32];
        v115 = v20;
        v21 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80];
        v116 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64];
        v117 = v21;
        v22 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16];
        v112 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
        v113 = v22;
        v23 = v109;
        *(v18 + 6) = v108;
        *(v18 + 7) = v23;
        *(v18 + 8) = v110;
        *(v18 + 18) = v111;
        v24 = v105;
        *(v18 + 2) = v104;
        *(v18 + 3) = v24;
        v25 = v107;
        *(v18 + 4) = v106;
        *(v18 + 5) = v25;
        v26 = v103;
        *v18 = v102;
        *(v18 + 1) = v26;
        sub_3863E8(&v112);
        v27 = *(v18 + 7);
        v128 = *(v18 + 6);
        v129 = v27;
        v130 = *(v18 + 8);
        v131 = *(v18 + 18);
        v28 = *(v18 + 3);
        v124 = *(v18 + 2);
        v125 = v28;
        v29 = *(v18 + 5);
        v126 = *(v18 + 4);
        v127 = v29;
        v30 = *(v18 + 1);
        v122 = *v18;
        v123 = v30;
        if (((1 << sub_90064(&v122)) & 0xB) != 0)
        {
          *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount] = 0;
        }

        sub_AB3420();
        v31 = sub_AB3430();
        (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
        v32 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_lastAuthenticationAttempt;
        swift_beginAccess();
        sub_386514(v11, &v2[v32]);
        swift_endAccess();
        if (qword_DE6D60 == -1)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }

      sub_386500(v122, *(&v122 + 1));
    }
  }

  v35 = *(a1 + 112);
  v118 = *(a1 + 96);
  v119 = v35;
  v120 = *(a1 + 128);
  v121 = *(a1 + 144);
  v36 = *(a1 + 48);
  v114 = *(a1 + 32);
  v115 = v36;
  v37 = *(a1 + 80);
  v116 = *(a1 + 64);
  v117 = v37;
  v38 = *(a1 + 16);
  v112 = *a1;
  v113 = v38;
  if (sub_90064(&v112) == 1)
  {
    v39 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount;
    v40 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount];
    if (v40 < 3)
    {
      *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount] = v40 + 1;
      v41 = swift_allocObject();
      *(v41 + 16) = v2;
      v42 = v2;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_3864F8, v41);
    }

    sub_3864C4(&v82);
    v59 = &v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
    v60 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112];
    v98 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96];
    v99 = v60;
    v100 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128];
    v101 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144];
    v61 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48];
    v94 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32];
    v95 = v61;
    v62 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80];
    v96 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64];
    v97 = v62;
    v63 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16];
    v92 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
    v93 = v63;
    v64 = v89;
    *(v59 + 6) = v88;
    *(v59 + 7) = v64;
    *(v59 + 8) = v90;
    *(v59 + 18) = v91;
    v65 = v85;
    *(v59 + 2) = v84;
    *(v59 + 3) = v65;
    v66 = v87;
    *(v59 + 4) = v86;
    *(v59 + 5) = v66;
    v67 = v83;
    *v59 = v82;
    *(v59 + 1) = v67;
    sub_3863E8(&v92);
    v68 = *(v59 + 7);
    v108 = *(v59 + 6);
    v109 = v68;
    v110 = *(v59 + 8);
    v111 = *(v59 + 18);
    v69 = *(v59 + 3);
    v104 = *(v59 + 2);
    v105 = v69;
    v70 = *(v59 + 5);
    v106 = *(v59 + 4);
    v107 = v70;
    v71 = *(v59 + 1);
    v102 = *v59;
    v103 = v71;
    if (((1 << sub_90064(&v102)) & 0xB) != 0)
    {
      *&v2[v39] = 0;
    }

    sub_C32A0(&v72);
    v128 = v78;
    v129 = v79;
    v130 = v80;
    v131 = v81;
    v124 = v74;
    v125 = v75;
    v126 = v76;
    v127 = v77;
    v122 = v72;
    v123 = v73;
    return sub_384938(&v122, a2);
  }

  else
  {
    v78 = v118;
    v79 = v119;
    v80 = v120;
    v74 = v114;
    v75 = v115;
    v76 = v116;
    v77 = v117;
    v72 = v112;
    v73 = v113;
    v88 = v138;
    v89 = v139;
    v90 = v140;
    v84 = v134;
    v85 = v135;
    v86 = v136;
    v87 = v137;
    v82 = v132;
    v83 = v133;
    v98 = v118;
    v99 = v119;
    v100 = v120;
    v94 = v114;
    v95 = v115;
    v96 = v116;
    v97 = v117;
    v81 = v121;
    v91 = v141;
    v101 = v121;
    v92 = v112;
    v93 = v113;
    UIScreen.Dimensions.size.getter(*&v132);
    v44 = &v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
    v45 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112];
    v108 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96];
    v109 = v45;
    v110 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128];
    v111 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144];
    v46 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48];
    v104 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32];
    v105 = v46;
    v47 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80];
    v106 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64];
    v107 = v47;
    v48 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16];
    v102 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
    v103 = v48;
    v49 = v99;
    *(v44 + 6) = v98;
    *(v44 + 7) = v49;
    *(v44 + 8) = v100;
    *(v44 + 18) = v101;
    v50 = v95;
    *(v44 + 2) = v94;
    *(v44 + 3) = v50;
    v51 = v97;
    *(v44 + 4) = v96;
    *(v44 + 5) = v51;
    v52 = v93;
    *v44 = v92;
    *(v44 + 1) = v52;
    sub_C343C(&v82, &v122);
    sub_C343C(&v72, &v122);
    sub_3863E8(&v102);
    v53 = *(v44 + 7);
    v128 = *(v44 + 6);
    v129 = v53;
    v130 = *(v44 + 8);
    v131 = *(v44 + 18);
    v54 = *(v44 + 3);
    v124 = *(v44 + 2);
    v125 = v54;
    v55 = *(v44 + 5);
    v126 = *(v44 + 4);
    v127 = v55;
    v56 = *(v44 + 1);
    v122 = *v44;
    v123 = v56;
    if (((1 << sub_90064(&v122)) & 0xB) != 0)
    {
      *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount] = 0;
    }

    v57 = [objc_opt_self() scheduledTimerWithTimeInterval:v2 target:"handleProfileDidExpire:" selector:0 userInfo:0 repeats:30.0];
    v58 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_profileInvalidationTimer];
    *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_profileInvalidationTimer] = v57;

    sub_384938(a1, a2);
    return sub_12E1C(a1, &unk_E05300);
  }
}

uint64_t sub_384064(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_AB7C10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB7C50();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v22 = *(result + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1 & 1;
    *(v18 + 32) = a2;
    *(v18 + 40) = a4;
    *(v18 + 48) = a5;
    aBlock[4] = sub_386660;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_58;
    v19 = _Block_copy(aBlock);
    v21 = v17;
    swift_errorRetain();
    sub_386674(a4, a5);
    sub_AB7C30();
    v24 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    sub_ABABB0();
    sub_ABA160();
    (*(v10 + 8))(v12, v9);
    (*(v13 + 8))(v15, v23);
    _Block_release(v19);
  }

  return result;
}

uint64_t sub_38438C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_15FBC4();
  v8 = swift_allocError();
  *v9 = a4;
  v9[1] = a5;
  sub_386674(a4, a5);
  sub_386934(a2, v8);
}

uint64_t sub_38441C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
  v6[6] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
  v6[7] = v1;
  v6[8] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
  v2 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
  v6[2] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
  v6[3] = v2;
  v3 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
  v6[4] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
  v6[5] = v3;
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
  v6[0] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
  v6[1] = v4;
  result = sub_90064(v6);
  if (result == 2)
  {
    return sub_383228();
  }

  return result;
}

uint64_t sub_384494(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_AB7C50();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = sub_AB7CF0();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    result = sub_384B00(a1);
    if (!a1)
    {
      sub_383028();
      sub_13C80(0, &qword_DE8ED0);
      (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
      v19 = sub_ABA190();
      (*(v9 + 8))(v11, v8);
      v20 = swift_allocObject();
      *(v20 + 16) = v2;
      aBlock[4] = sub_3864A8;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_43_7;
      v21 = _Block_copy(aBlock);
      v22 = v2;
      sub_AB7C30();
      v30 = _swiftEmptyArrayStorage;
      sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_809E0(&qword_DF06D0, &unk_DE9C30);
      v23 = v26;
      v24 = v29;
      sub_ABABB0();
      sub_ABA160();
      (*(v28 + 8))(v23, v24);
      (*(v25 + 8))(v7, v27);
      _Block_release(v21);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_384938(uint64_t a1, uint64_t a2)
{
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = sub_AB7CF0();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_pendingProfileAccessBlocks;
    swift_beginAccess();
    v13 = *(v2 + v12);
    *(v2 + v12) = _swiftEmptyArrayStorage;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 40;
      do
      {
        v16 = *(v15 - 8);
        v17 = *(a1 + 112);
        v23[6] = *(a1 + 96);
        v23[7] = v17;
        v23[8] = *(a1 + 128);
        v24 = *(a1 + 144);
        v18 = *(a1 + 48);
        v23[2] = *(a1 + 32);
        v23[3] = v18;
        v19 = *(a1 + 80);
        v23[4] = *(a1 + 64);
        v23[5] = v19;
        v20 = *(a1 + 16);
        v23[0] = *a1;
        v23[1] = v20;
        v22 = a2;

        v16(v23, &v22);

        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_384B00(uint64_t a1)
{
  v27 = a1;
  v2 = sub_AB7C10();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = sub_AB7CF0();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v19 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_pendingProfileUpdateBlocks;
    swift_beginAccess();
    v20 = *(v1 + v19);
    *(v1 + v19) = _swiftEmptyArrayStorage;
    sub_13C80(0, &qword_DE8ED0);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v21 = sub_ABA190();
    (*(v9 + 8))(v11, v8);
    v22 = swift_allocObject();
    v23 = v27;
    *(v22 + 16) = v20;
    *(v22 + 24) = v23;
    aBlock[4] = sub_3864A0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_37_1;
    v24 = _Block_copy(aBlock);
    swift_errorRetain();
    sub_AB7C30();
    v32 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    v25 = v31;
    sub_ABABB0();
    sub_ABA160();
    (*(v30 + 8))(v4, v25);
    (*(v28 + 8))(v7, v29);
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_384FA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = a2;

      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_385018(void *a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB7C50();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_386458;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_31_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_AB7C30();
  v17 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_809E0(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  sub_ABA160();
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
  _Block_release(v11);
}

uint64_t sub_3852DC(uint64_t a1, id a2)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_profileInvalidationTimer;
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_profileInvalidationTimer);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [a2 invalidate];
    v6 = *(a1 + v3);
    *(a1 + v3) = 0;
  }

  v7 = a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state;
  v8 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
  v31[6] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
  v31[7] = v8;
  v31[8] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
  v32 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
  v9 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
  v31[2] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
  v31[3] = v9;
  v10 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
  v31[4] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
  v31[5] = v10;
  v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
  v31[0] = *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
  v31[1] = v11;
  result = sub_90064(v31);
  if (!result)
  {
    sub_C32A0(v25);
    v13 = *(v7 + 112);
    v27[6] = *(v7 + 96);
    v27[7] = v13;
    v27[8] = *(v7 + 128);
    v28 = *(v7 + 144);
    v14 = *(v7 + 48);
    v27[2] = *(v7 + 32);
    v27[3] = v14;
    v15 = *(v7 + 80);
    v27[4] = *(v7 + 64);
    v27[5] = v15;
    v16 = *(v7 + 16);
    v27[0] = *v7;
    v27[1] = v16;
    v17 = v25[7];
    *(v7 + 96) = v25[6];
    *(v7 + 112) = v17;
    *(v7 + 128) = v25[8];
    *(v7 + 144) = v26;
    v18 = v25[3];
    *(v7 + 32) = v25[2];
    *(v7 + 48) = v18;
    v19 = v25[5];
    *(v7 + 64) = v25[4];
    *(v7 + 80) = v19;
    v20 = v25[1];
    *v7 = v25[0];
    *(v7 + 16) = v20;
    sub_3863E8(v27);
    v21 = *(v7 + 112);
    v29[6] = *(v7 + 96);
    v29[7] = v21;
    v29[8] = *(v7 + 128);
    v30 = *(v7 + 144);
    v22 = *(v7 + 48);
    v29[2] = *(v7 + 32);
    v29[3] = v22;
    v23 = *(v7 + 80);
    v29[4] = *(v7 + 64);
    v29[5] = v23;
    v24 = *(v7 + 16);
    v29[0] = *v7;
    v29[1] = v24;
    result = sub_90064(v29);
    if (result > 2)
    {
      if (result != 3)
      {
        return result;
      }
    }

    else if (result >= 2)
    {
      return result;
    }

    *(a1 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount) = 0;
  }

  return result;
}

void sub_3854D4()
{
  v1 = sub_AB7C10();
  v58 = *(v1 - 8);
  v59 = v1;
  __chkstk_darwin(v1);
  v56 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_AB7C50();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_AB7C20();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_AB3430();
  v52 = *(v10 - 8);
  __chkstk_darwin(v10);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v0;
  v16 = *&v0[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = sub_AB7CF0();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600);
  v18 = static ICUserIdentityStore.activeAccountDSID.getter();
  v19 = v60;
  if (!v18)
  {
    goto LABEL_7;
  }

  v20 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112];
  v21 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80];
  v86 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96];
  v87 = v20;
  v22 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112];
  v88 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128];
  v23 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48];
  v24 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16];
  v82 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32];
  v83 = v23;
  v25 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48];
  v26 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80];
  v84 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64];
  v85 = v26;
  v27 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16];
  v81[0] = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
  v81[1] = v27;
  v77 = v86;
  v78 = v22;
  v79 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128];
  v73 = v82;
  v74 = v25;
  v75 = v84;
  v76 = v21;
  v89 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144];
  v80 = *&v60[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144];
  v71 = v81[0];
  v72 = v24;
  sub_386328(v90);
  v67 = v90[6];
  v68 = v90[7];
  v69 = v90[8];
  v70 = v91;
  v63 = v90[2];
  v64 = v90[3];
  v65 = v90[4];
  v66 = v90[5];
  *&v61[152] = v90[0];
  v62 = v90[1];
  sub_38635C(v81, v61);
  sub_386394();
  v28 = sub_AB38D0();
  v98 = v77;
  v99 = v78;
  v100 = v79;
  v101 = v80;
  v94 = v73;
  v95 = v74;
  v96 = v75;
  v97 = v76;
  v92 = v71;
  v93 = v72;
  sub_3863E8(&v92);
  if (v28)
  {
    v29 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_lastAuthenticationAttempt;
    swift_beginAccess();
    sub_15F84(&v19[v29], v9, &unk_E01230);
    v30 = v52;
    if ((*(v52 + 48))(v9, 1, v10) == 1)
    {
      sub_12E1C(v9, &unk_E01230);
LABEL_7:
      sub_383028();
      sub_13C80(0, &qword_DE8ED0);
      v34 = v53;
      (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v53);
      v52 = sub_ABA190();
      (*(v4 + 8))(v6, v34);
      v35 = swift_allocObject();
      *(v35 + 16) = v19;
      *&v94 = sub_387100;
      *(&v94 + 1) = v35;
      *&v92 = _NSConcreteStackBlock;
      *(&v92 + 1) = 1107296256;
      *&v93 = sub_1B5EB4;
      *(&v93 + 1) = &block_descriptor_118;
      v36 = _Block_copy(&v92);
      v37 = v19;
      v38 = v18;
      v39 = v54;
      sub_AB7C30();
      *&v90[0] = _swiftEmptyArrayStorage;
      sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_809E0(&qword_DF06D0, &unk_DE9C30);
      v40 = v56;
      v41 = v59;
      v19 = v60;
      sub_ABABB0();
      v42 = v52;
      sub_ABA160();
      (*(v58 + 8))(v40, v41);
      v43 = v39;
      v18 = v38;
      (*(v55 + 8))(v43, v57);
      _Block_release(v36);

      goto LABEL_8;
    }

    v31 = v51;
    (*(v30 + 32))(v51, v9, v10);
    sub_AB33B0();
    v33 = v32;
    (*(v30 + 8))(v31, v10);
    if (v33 > 10.0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v44 = [objc_opt_self() sharedPrivacyInfo];
  v45 = [v44 privacyAcknowledgementRequiredForMusic];

  if ((v45 & 1) == 0)
  {
    v46 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112];
    v98 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96];
    v99 = v46;
    v100 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128];
    v101 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144];
    v47 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48];
    v94 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32];
    v95 = v47;
    v48 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80];
    v96 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64];
    v97 = v48;
    v49 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16];
    v92 = *&v19[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state];
    v93 = v49;
    if (sub_90064(&v92) == 1)
    {
      sub_383228();
    }
  }
}

void sub_385D38(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_DE6B00 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_E71628 object:a1];
}

BOOL sub_385DE4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v32[6] = *(a1 + 96);
  v32[7] = v3;
  v32[8] = *(a1 + 128);
  v33 = *(a1 + 144);
  v4 = *(a1 + 48);
  v32[2] = *(a1 + 32);
  v32[3] = v4;
  v5 = *(a1 + 80);
  v32[4] = *(a1 + 64);
  v32[5] = v5;
  v6 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v6;
  v7 = sub_90064(v32);
  if (v7 <= 1)
  {
    v13 = a2[7];
    v28 = a2[6];
    v29 = v13;
    v30 = a2[8];
    v31 = *(a2 + 18);
    v14 = a2[3];
    v24 = a2[2];
    v25 = v14;
    v15 = a2[5];
    v26 = a2[4];
    v27 = v15;
    v16 = a2[1];
    v22 = *a2;
    v23 = v16;
    if (v7)
    {
      return sub_90064(&v22) == 1;
    }

    else
    {
      return sub_90064(&v22) == 0;
    }
  }

  else if (v7 == 2)
  {
    v17 = a2[7];
    v28 = a2[6];
    v29 = v17;
    v30 = a2[8];
    v31 = *(a2 + 18);
    v18 = a2[3];
    v24 = a2[2];
    v25 = v18;
    v19 = a2[5];
    v26 = a2[4];
    v27 = v19;
    v20 = a2[1];
    v22 = *a2;
    v23 = v20;
    return sub_90064(&v22) == 2;
  }

  else
  {
    if (v7 != 3)
    {
      return 0;
    }

    v8 = a2[7];
    v28 = a2[6];
    v29 = v8;
    v30 = a2[8];
    v31 = *(a2 + 18);
    v9 = a2[3];
    v24 = a2[2];
    v25 = v9;
    v10 = a2[5];
    v26 = a2[4];
    v27 = v10;
    v11 = a2[1];
    v22 = *a2;
    v23 = v11;
    return sub_90064(&v22) == 3;
  }
}