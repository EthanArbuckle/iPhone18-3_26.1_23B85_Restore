char *sub_10045D124()
{
  *&v0[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progress] = 0;
  v1 = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setClipsToBounds:1];
  v3 = [objc_opt_self() systemGray5Color];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView;
  v5 = *&v2[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView];
  sub_100005744(0, &qword_100970180);
  v6 = v5;
  v7 = static UIColor.primaryText.getter();
  [v6 setBackgroundColor:v7];

  [v2 addSubview:*&v2[v4]];
  return v2;
}

void sub_10045D308()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  v2 = [v0 traitCollection];
  [v0 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = [v0 layer];
  [v0 bounds];
  [v11 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v12 = [v1 layer];
  [v0 bounds];
  [v12 setCornerRadius:CGRectGetHeight(v15) * 0.5];
}

id sub_10045D538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10045D5A4(uint64_t a1)
{
  if (qword_10096E488 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1009863C0;
  sub_100047650(a1, *(a1 + 24));
  v2 = v1;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

double sub_10045D630(uint64_t a1, double a2)
{
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E480 != -1)
  {
    swift_once();
  }

  v8 = sub_10002849C(&qword_100986438);
  sub_1000056A8(v8, qword_1009863A8);
  Conditional.evaluate<>(in:)();
  v9 = v28;
  v10 = UITraitCollection.modifyingTraits(_:)();
  v26[1] = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = &UIFontTextStyleCaption2;
    }

    else
    {
      v12 = &UIFontTextStyleHeadline;
    }

    v11 = [objc_opt_self() configurationWithTextStyle:*v12 scale:2];
  }

  else if (v9 == 2)
  {
    v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v13 = v11;
  v27 = *(v5 + 104);
  v27(v7, enum case for SystemImage.star(_:), v4);
  v26[0] = v10;
  v14 = [v13 configurationWithTraitCollection:v10];
  v15 = static SystemImage.load(_:with:)();

  v16 = *(v5 + 8);
  v16(v7, v4);
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];

  if (v9 <= 1)
  {
    if (v9)
    {
      v18 = &UIFontTextStyleCaption2;
    }

    else
    {
      v18 = &UIFontTextStyleHeadline;
    }

    v17 = [objc_opt_self() configurationWithTextStyle:*v18 scale:2];
  }

  else if (v9 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v19 = v27;
  v20 = v17;
  v19(v7, enum case for SystemImage.starFill(_:), v4);
  v21 = v26[0];
  v22 = [v20 configurationWithTraitCollection:v26[0]];
  v23 = static SystemImage.load(_:with:)();

  v16(v7, v4);
  UIImage.baselineOffsetFromBottom.getter();
  [v23 contentInsets];

  if (qword_10096E468 != -1)
  {
    swift_once();
  }

  v24 = sub_10002849C(&qword_100979010);
  sub_1000056A8(v24, qword_100986360);
  Conditional.evaluate<>(in:)();
  if (qword_10096E470 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v24, qword_100986378);
  Conditional.evaluate<>(in:)();
  return a2;
}

unint64_t sub_10045DBE8(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_100005744(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10045DCF0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    type metadata accessor for Artwork();
    sub_1004616A4(&unk_1009811F0, &type metadata accessor for Artwork);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_10045DE34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v9 = type metadata accessor for FlowOrigin();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowAnimationBehavior();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FlowPresentationContext();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - v21;
  v22 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v22 - 8);
  v70 = &v55 - v23;
  v62 = type metadata accessor for FlowPage();
  v61 = *(v62 - 1);
  __chkstk_darwin(v62);
  v69 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v25 - 8);
  v72 = &v55 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = v17;
    v56 = v10;
    v57 = v15;
    v58 = v9;
    v59 = v12;
    v60 = *(result + 32);

    v28 = sub_10045DCF0(a1, a4);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    v31 = sub_100397BF0(_swiftEmptyArrayStorage);
    v32 = sub_10054A47C(a6, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100814880);
    v33 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v34 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
    *(v35 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v35 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v33[v34] = v35;
    v36 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_galleryLayout;
    *&v33[v36] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()) init];
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks] = a4;
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_platform] = v71;
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_placeholderImages] = v31;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworkLoader] = v75;
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex] = v30;
    v37 = *&v33[v36];

    v38 = sub_1000659FC(v37, v32);

    v39 = v38;
    v40 = [v39 navigationItem];
    v41 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v39 action:"dismissFrom:"];
    [v40 setRightBarButtonItem:v41];

    *(*&v39[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_1008C0DA0;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v42 = type metadata accessor for StoreNavigationController();
    v43 = objc_allocWithZone(v42);
    *&v43[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = a6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v78.receiver = v43;
    v78.super_class = v42;

    v45 = objc_msgSendSuper2(&v78, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v45 setDelegate:v45];
    [v45 setModalPresentationStyle:0];
    sub_10002849C(&qword_100973210);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007B0B70;
    *(v46 + 32) = v39;
    sub_100005744(0, &qword_1009711C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setViewControllers:isa];

    v48 = sub_10002849C(&unk_100974490);
    v49 = v72;
    v71 = a6;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {

      return sub_10002B894(v72, &unk_100972A00);
    }

    else
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      (*(v61 + 104))(v69, enum case for FlowPage.viewController(_:), v62);
      v51 = type metadata accessor for URL();
      (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
      v52 = type metadata accessor for ReferrerData();
      (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
      v74 = v42;
      v73 = v45;
      v62 = v45;
      static ActionMetrics.notInstrumented.getter();
      (*(v64 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v65);
      (*(v67 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v68);
      (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v53 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v54 = v72;
      sub_1005F9C8C(v53, 1, v71, v72);

      return (*(v50 + 8))(v54, v48);
    }
  }

  return result;
}

void sub_10045E858(char a1)
{
  v2 = sub_10002849C(&unk_1009731F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v6 - v4;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      memset(v6, 0, sizeof(v6));
      ProductDiffablePagePresenter.didSelectExpandMedia(on:sender:)();

      sub_10002B894(v6, &unk_1009711D0);
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_10045E9B0(char a1)
{
  v2 = sub_10002849C(&unk_1009731F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v6 - v4;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      ShelfLayoutContext.shelf.getter();
      memset(v6, 0, sizeof(v6));
      ProductDiffablePagePresenter.didSelectExpandMedia(on:sender:)();

      sub_10002B894(v6, &unk_1009711D0);
      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_10045EAF0()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10045EB74(void *a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v5 = type metadata accessor for ItemLayoutContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v101 = v7;
  v102 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Shelf.ContentType();
  v107 = *(v8 - 8);
  __chkstk_darwin(v8);
  v98 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v106);
  v108 = &v90 - v10;
  v11 = sub_10002849C(&unk_1009731F0);
  v105 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v14);
  v16 = &v90 - v15;
  v17 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v17 - 8);
  v19 = &v90 - v18;
  v20 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v20 - 8);
  v100 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = &v90 - v23;
  __chkstk_darwin(v24);
  v110 = &v90 - v25;
  type metadata accessor for ProductMediaCollectionViewCell();
  v111 = swift_dynamicCastClass();
  if (!v111)
  {
    return;
  }

  v103 = v8;
  v96 = v6;
  v97 = v5;
  type metadata accessor for ProductMedia();
  sub_1004616A4(&qword_1009717E8, &type metadata accessor for ProductMedia);
  v26 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v27 = v113;
  if (!v113)
  {

    return;
  }

  v99 = v26;
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v93 = ProductMedia.platform.getter();
  v95 = v27;
  v91 = ProductMedia.allPlatforms.getter();
  swift_getKeyPath();
  v94 = a2;
  ItemLayoutContext.subscript.getter();

  sub_100094E74(&v16[*(v14 + 48)], v19);
  v28 = v105;
  if ((*(v105 + 48))(v19, 1, v11) == 1)
  {
    sub_10002B894(v16, &unk_10098FFB0);
    sub_10002B894(v19, &unk_10098FFB0);
    v29 = v107;
    v30 = v110;
    v90 = *(v107 + 56);
    v90(v110, 1, 1, v103);
  }

  else
  {
    swift_getKeyPath();
    v30 = v110;
    ReadOnlyLens.subscript.getter();

    (*(v28 + 8))(v19, v11);
    v29 = v107;
    v90 = *(v107 + 56);
    v90(v30, 0, 1, v103);
    sub_10002B894(v16, &unk_10098FFB0);
  }

  v31 = v108;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v32 = v109;
  ReadOnlyLens.subscript.getter();

  v33 = v13;
  v34 = v32;
  (*(v28 + 8))(v33, v11);
  v35 = v103;
  v90(v32, 0, 1, v103);
  v36 = *(v106 + 48);
  sub_100094EE4(v30, v31);
  sub_100094EE4(v34, v31 + v36);
  v37 = *(v29 + 48);
  if (v37(v31, 1, v35) == 1)
  {
    sub_10002B894(v34, &unk_100992460);
    sub_10002B894(v30, &unk_100992460);
    v38 = v37(v31 + v36, 1, v35);
    v39 = v99;
    v40 = v91;
    if (v38 == 1)
    {
      sub_10002B894(v31, &unk_100992460);
      v41 = v97;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v42 = v100;
  sub_100094EE4(v31, v100);
  v43 = v37(v31 + v36, 1, v35);
  v39 = v99;
  if (v43 == 1)
  {
    sub_10002B894(v109, &unk_100992460);
    sub_10002B894(v110, &unk_100992460);
    (*(v29 + 8))(v42, v103);
    v40 = v91;
LABEL_14:
    sub_10002B894(v31, &qword_100975F10);
    v41 = v97;
    goto LABEL_15;
  }

  v52 = v31 + v36;
  v53 = v98;
  v54 = v103;
  (*(v29 + 32))(v98, v52, v103);
  sub_1004616A4(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v29 + 8);
  v56(v53, v54);
  sub_10002B894(v109, &unk_100992460);
  sub_10002B894(v110, &unk_100992460);
  v56(v42, v54);
  sub_10002B894(v31, &unk_100992460);
  v41 = v97;
  v40 = v91;
  if (v55)
  {
    goto LABEL_27;
  }

LABEL_15:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v93;
  if (!v45)
  {

    v113 = v46;
    goto LABEL_29;
  }

  v47 = v45 - 1;
  if (__OFSUB__(v45, 1))
  {
    goto LABEL_78;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (v47 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v48 = *(v40 + 8 * v47 + 32);

  v113 = v46;
  if (!v48)
  {
    goto LABEL_29;
  }

LABEL_23:
  v112 = v48;
  type metadata accessor for MediaPlatform();
  sub_1004616A4(&qword_100975F18, &type metadata accessor for MediaPlatform);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v49)
  {
LABEL_27:

    LODWORD(v110) = 0;
  }

  else
  {
    v50 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v44)
    {
LABEL_30:
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
LABEL_25:
      v51 = *(v50 + 16);
    }

    LODWORD(v110) = v51 > 1;
  }

  v57 = ProductMedia.items.getter();
  v44 = v57;
  v113 = _swiftEmptyArrayStorage;
  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

  while (1)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
LABEL_34:
    if (v58)
    {
      v40 = 0;
      v39 = (v44 & 0xC000000000000001);
      v41 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            v60 = v113;
            v41 = v97;
            v39 = v99;
            goto LABEL_48;
          }
        }

        else
        {
          if (v40 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_45;
          }
        }

        if (ProductMediaItem.screenshot.getter())
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v40;
        if (v59 == v58)
        {
          goto LABEL_46;
        }
      }
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_48:

    v44 = *(v60 + 2);
    if (!v44)
    {
      goto LABEL_66;
    }

LABEL_51:
    v113 = _swiftEmptyArrayStorage;
    v46 = &v113;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:

      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v113 = v46;
      if (v48)
      {
        goto LABEL_23;
      }

LABEL_29:

      v50 = v40 & 0xFFFFFFFFFFFFFF8;
      if (!v44)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v40 = 0;
    while (1)
    {
      v39 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!ProductMediaItem.screenshot.getter())
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v40 >= *(v60 + 2))
        {
          goto LABEL_63;
        }

        if (!ProductMediaItem.screenshot.getter())
        {
          goto LABEL_83;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v40;
      if (v39 == v44)
      {

        v61 = v113;
        v39 = v99;
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v44 = _CocoaArrayWrapper.endIndex.getter();
  if (v44)
  {
    goto LABEL_51;
  }

LABEL_66:

  v61 = _swiftEmptyArrayStorage;
LABEL_67:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v62;
  *(v63 + 3) = v61;
  v64 = v104;
  *(v63 + 4) = v93;
  *(v63 + 5) = v64;
  v65 = v111;
  v66 = (v111 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v67 = *(v111 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v66 = sub_1004616EC;
  v66[1] = v63;

  sub_10001F63C(v67);

  v68 = *(v65 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
  if (v68)
  {
    type metadata accessor for PlatformSelectorView();
    v69 = swift_dynamicCastClass();
    if (v69)
    {
      v70 = v69;
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = v96;
      v73 = v102;
      (*(v96 + 16))(v102, v94, v41);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v110;
      *(v75 + 24) = v71;
      (*(v72 + 32))(v75 + v74, v73, v41);
      v76 = (v70 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      v77 = *(v70 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      *v76 = sub_1004617C4;
      v76[1] = v75;
      v78 = v68;

      sub_10001F63C(v77);
    }
  }

  v79 = *(v111 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
  v80 = v79;

  if (v79)
  {
    type metadata accessor for PlatformSelectorView();
    v81 = swift_dynamicCastClass();
    if (v81)
    {
      v82 = v81;
      v83 = swift_allocObject();
      swift_weakInit();

      v84 = v96;
      v85 = v102;
      (*(v96 + 16))(v102, v94, v41);
      v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = v110;
      *(v87 + 24) = v83;
      (*(v84 + 32))(v87 + v86, v85, v41);
      v88 = (v82 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      v89 = *(v82 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      *v88 = sub_100461824;
      v88[1] = v87;

      sub_10001F63C(v89);
    }
  }

  else
  {
  }
}

uint64_t sub_10045FA9C(void *a1, uint64_t a2)
{
  v84 = a2;
  v78 = type metadata accessor for FlowOrigin();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FlowAnimationBehavior();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FlowPresentationContext();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v82 = &v66 - v9;
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v81 = &v66 - v11;
  v69 = type metadata accessor for FlowPage();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v13 - 8);
  v83 = &v66 - v14;
  v15 = type metadata accessor for Shelf.ContentsMetadata();
  v88 = *(v15 - 8);
  v89 = v15;
  __chkstk_darwin(v15);
  v87 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductMediaMetadata();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009731F0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v86 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v66 - v25;
  swift_getKeyPath();
  v93 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v85 = *(v22 + 8);
  v85(v26, v21);
  v98 = _swiftEmptyArrayStorage;
  v27 = *(v99 + 16);
  if (!v27)
  {

    v29 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_21:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_12;
    }
  }

  v90 = v20;
  v91 = v18;
  v92 = v17;
  v28 = v99 + 32;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    sub_10002C0AC(v28, v96);
    sub_10002C0AC(v96, v95);
    sub_10002849C(&qword_100973D50);
    type metadata accessor for ProductMediaItem();
    if (swift_dynamicCast())
    {
      v30 = ProductMediaItem.screenshot.getter();

      sub_100007000(v96);
      if (v30)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v98;
      }
    }

    else
    {
      sub_100007000(v96);
    }

    v28 += 40;
    --v27;
  }

  while (v27);

  v18 = v91;
  v17 = v92;
  v20 = v90;
  if (v29 >> 62)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_12:
  type metadata accessor for ProductMediaItem();
  sub_1004616A4(&qword_100972AC0, &type metadata accessor for ProductMediaItem);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!*&v96[0])
  {
  }

  v31 = ProductMediaItem.screenshot.getter();

  if (!v31)
  {
  }

  v67 = v31;
  swift_getKeyPath();
  v32 = v86;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v33 = v87;
  ReadOnlyLens.subscript.getter();

  v85(v32, v21);
  v35 = v88;
  v34 = v89;
  if ((*(v88 + 88))(v33, v89) == enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v35 + 96))(v33, v34);
    (*(v18 + 32))(v20, v33, v17);
    v36 = sub_10045DCF0(v67, v29);
    v38 = v20;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    v90 = v38;
    v40 = ProductMediaMetadata.platform.getter();
    v92 = v17;
    v41 = sub_100397BF0(_swiftEmptyArrayStorage);
    v42 = v84;
    v43 = sub_10054A47C(v84, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100814880);
    v44 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v91 = v18;
    v45 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
    *(v46 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v46 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v44[v45] = v46;
    v47 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_galleryLayout;
    *&v44[v47] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()) init];
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks] = v29;
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_platform] = v40;
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_placeholderImages] = v41;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworkLoader] = *&v96[0];
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex] = v39;
    v48 = *&v44[v47];

    v49 = sub_1000659FC(v48, v43);

    v50 = v49;
    v51 = [v50 navigationItem];
    v52 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v50 action:"dismissFrom:"];
    [v51 setRightBarButtonItem:v52];

    *(*&v50[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_1008C0DA0;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v53 = type metadata accessor for StoreNavigationController();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v42;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94.receiver = v54;
    v94.super_class = v53;

    v56 = objc_msgSendSuper2(&v94, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v56 setDelegate:v56];
    [v56 setModalPresentationStyle:0];
    sub_10002849C(&qword_100973210);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007B0B70;
    *(v57 + 32) = v50;
    sub_100005744(0, &qword_1009711C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 setViewControllers:isa];

    v59 = sub_10002849C(&unk_100974490);
    v60 = v83;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v60, 1, v59) == 1)
    {
      (*(v91 + 8))(v90, v92);

      return sub_10002B894(v60, &unk_100972A00);
    }

    else
    {
      v97 = 0;
      memset(v96, 0, sizeof(v96));
      (*(v68 + 104))(v80, enum case for FlowPage.viewController(_:), v69);
      v63 = type metadata accessor for URL();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v64 = type metadata accessor for ReferrerData();
      (*(*(v64 - 8) + 56))(v82, 1, 1, v64);
      v95[3] = v53;
      v95[0] = v56;
      v93 = v56;
      static ActionMetrics.notInstrumented.getter();
      (*(v70 + 104))(v75, enum case for FlowPresentationContext.infer(_:), v71);
      (*(v73 + 104))(v77, enum case for FlowAnimationBehavior.infer(_:), v74);
      (*(v76 + 104))(v79, enum case for FlowOrigin.inapp(_:), v78);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v65 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      sub_1005F9C8C(v65, 1, v84, v60);

      (*(v91 + 8))(v90, v92);
      return (*(v61 + 8))(v60, v59);
    }
  }

  else
  {

    return (*(v35 + 8))(v33, v34);
  }
}

void sub_100460A00(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = type metadata accessor for ShelfLayoutContext();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v94 = v5;
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Shelf.ContentType();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v100);
  v104 = &v83 - v7;
  v8 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v83 - v11;
  __chkstk_darwin(v12);
  v99 = &v83 - v13;
  v14 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v14 - 8);
  v92 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = &v83 - v17;
  __chkstk_darwin(v18);
  v101 = &v83 - v19;
  v20 = type metadata accessor for Shelf.ContentsMetadata();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_1009731F0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v97 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v106 = type metadata accessor for ProductMediaMetadata();
  v30 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformSelectorView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v93 = v30;
    v88 = v32;
    v90 = v4;
    v89 = v3;
    v33 = a1;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v34 = *(v25 + 8);
    v34(v29, v24);
    if ((*(v21 + 88))(v23, v20) != enum case for Shelf.ContentsMetadata.productMedia(_:))
    {

      (*(v21 + 8))(v23, v20);
      return;
    }

    v35 = v34;
    (*(v21 + 96))(v23, v20);
    (*(v93 + 32))(v105, v23, v106);
    v36 = ProductMediaMetadata.platform.getter();
    v87 = ProductMediaMetadata.allPlatforms.getter();
    v37 = v96;
    v38 = v98;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v37, &unk_10098FFB0);
    v39 = v99;
    sub_100094E74(v38, v99);
    v40 = (*(v25 + 48))(v39, 1, v24);
    v84 = v33;
    v86 = v36;
    v85 = v35;
    if (v40 == 1)
    {
      sub_10002B894(v39, &unk_10098FFB0);
      v41 = 1;
      v42 = v101;
    }

    else
    {
      swift_getKeyPath();
      v42 = v101;
      ReadOnlyLens.subscript.getter();

      v35(v39, v24);
      v41 = 0;
    }

    v43 = *(v107 + 56);
    v44 = v102;
    v43(v42, v41, 1, v102);
    v45 = v97;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v46 = v103;
    ReadOnlyLens.subscript.getter();

    v47 = v45;
    v48 = v42;
    v85(v47, v24);
    v43(v46, 0, 1, v44);
    v49 = *(v100 + 48);
    v50 = v104;
    sub_100094EE4(v42, v104);
    sub_100094EE4(v46, v50 + v49);
    v51 = *(v107 + 48);
    if (v51(v50, 1, v44) == 1)
    {
      sub_10002B894(v46, &unk_100992460);
      v52 = v104;
      sub_10002B894(v42, &unk_100992460);
      v53 = v51(v52 + v49, 1, v44);
      v54 = v90;
      v55 = v93;
      v56 = v86;
      if (v53 == 1)
      {
        sub_10002B894(v52, &unk_100992460);
LABEL_24:

        v75 = 0;
LABEL_30:
        v76 = swift_allocObject();
        swift_weakLoadStrong();

        (*(v55 + 8))(v105, v106);
        swift_weakInit();

        v77 = v95;
        v78 = v89;
        (*(v54 + 16))(v95, v108, v89);
        v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v75;
        *(v80 + 24) = v76;
        (*(v54 + 32))(v80 + v79, v77, v78);
        v81 = (v88 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
        v82 = *(v88 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
        *v81 = sub_10046163C;
        v81[1] = v80;

        sub_10001F63C(v82);

        return;
      }
    }

    else
    {
      v57 = v92;
      sub_100094EE4(v50, v92);
      v58 = v51(v50 + v49, 1, v44);
      v54 = v90;
      if (v58 != 1)
      {
        v67 = v48;
        v68 = v57;
        v69 = v107;
        v70 = v50 + v49;
        v71 = v91;
        (*(v107 + 32))(v91, v70, v44);
        sub_1004616A4(&qword_100972720, &type metadata accessor for Shelf.ContentType);
        v72 = v50;
        v73 = dispatch thunk of static Equatable.== infix(_:_:)();
        v74 = *(v69 + 8);
        v74(v71, v44);
        sub_10002B894(v103, &unk_100992460);
        sub_10002B894(v67, &unk_100992460);
        v74(v68, v44);
        sub_10002B894(v72, &unk_100992460);
        v55 = v93;
        v56 = v86;
        v59 = v87;
        if (v73)
        {
          goto LABEL_24;
        }

LABEL_13:
        v60 = v59 >> 62;
        if (v59 >> 62)
        {
          v61 = _CocoaArrayWrapper.endIndex.getter();
          if (v61)
          {
LABEL_15:
            v62 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            else if ((v59 & 0xC000000000000001) == 0)
            {
              if ((v62 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v62 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v63 = *(v59 + 8 * v62 + 32);

                v110 = v56;
                if (v63)
                {
                  goto LABEL_20;
                }

                goto LABEL_27;
              }

              __break(1u);
              return;
            }

            v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v110 = v56;
            if (v63)
            {
LABEL_20:
              v109 = v63;
              type metadata accessor for MediaPlatform();
              sub_1004616A4(&qword_100975F18, &type metadata accessor for MediaPlatform);
              v64 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v64)
              {
                goto LABEL_24;
              }

              v65 = v59 & 0xFFFFFFFFFFFFFF8;
              if (!v60)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

LABEL_27:

            v65 = v59 & 0xFFFFFFFFFFFFFF8;
            if (!v60)
            {
LABEL_22:
              v66 = *(v65 + 16);
LABEL_29:

              v75 = v66 > 1;
              goto LABEL_30;
            }

LABEL_28:
            v66 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_29;
          }
        }

        else
        {
          v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_27;
      }

      sub_10002B894(v103, &unk_100992460);
      v52 = v104;
      sub_10002B894(v48, &unk_100992460);
      (*(v107 + 8))(v57, v44);
      v55 = v93;
      v56 = v86;
    }

    sub_10002B894(v52, &qword_100975F10);
    v59 = v87;
    goto LABEL_13;
  }
}

void sub_10046163C()
{
  type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 + 16);

  sub_10045E9B0(v1);
}

uint64_t sub_1004616A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004616F8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100461828(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *v5;
  Width = CGRectGetWidth(*&a2);
  v13 = Width;
  if (v11 == 1)
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetWidth(v53);
    v14 = *(v5 + 9);
  }

  else
  {
    v13 = Width * 0.5;
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v15 = CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Height = CGRectGetHeight(v55);
    if (Height >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = Height;
    }
  }

  sub_10002A400(v5 + 10, *(v5 + 13));
  v43 = v14;
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  v17 = *(v5 + 2);
  v18 = *(v5 + 6);
  if (v11)
  {
    v19 = *(v5 + 2);
  }

  else
  {
    v19 = *(v5 + 6);
  }

  v38 = v19;
  v44 = v13;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  CGRectGetHeight(v56);
  sub_10002A400(v5 + 15, *(v5 + 18));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v21 = v20;
  v40 = v22;
  v41 = v17;
  if (v11)
  {
    v23 = *(v5 + 1);
    v37 = v23;
  }

  else
  {
    v37 = *(v5 + 1);
    v23 = *(v5 + 5);
    v17 = v18;
  }

  sub_10002A400(v5 + 15, *(v5 + 18));
  v39 = v23;
  v36 = v21;
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  CGRectGetWidth(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v44;
  v58.size.height = v43;
  CGRectGetHeight(v58);
  v35 = v17;
  if (v11)
  {
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v24 = v41;
    CGRectGetWidth(v59);
  }

  else
  {
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v44;
    v60.size.height = v43;
    CGRectGetMaxX(v60);
    v24 = v41;
  }

  v25 = v5[2] | v11 ^ 1;
  sub_10002A400(v5 + 25, *(v5 + 28));
  Measurable.placeable.getter();
  sub_10002A400(v51, v52);
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v51);
  v61.origin.x = a2;
  v61.origin.y = a3;
  v42 = a4;
  v61.size.width = a4;
  v61.size.height = a5;
  CGRectGetHeight(v61);
  sub_10002A400(v5 + 20, *(v5 + 23));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  v31 = v37;
  if (v25 == 1)
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.height = v43;
    v62.size.width = v44;
    MaxY = CGRectGetMaxY(v62);
    v33 = 56;
    if (v11)
    {
      v33 = 24;
    }

    v31 = MaxY - *&v5[v33] - v29;
    v30 = v38;
  }

  sub_10002A400(v5 + 20, *(v5 + 23));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  if (v11)
  {
    type metadata accessor for TodayListCardLockupContainer();
    sub_1003692D0(*(v5 + 35), a1);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.height = v43;
  v63.size.width = v44;
  CGRectGetMaxY(v63);
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v27;
  v64.size.height = v29;
  CGRectGetMaxY(v64);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = v42;
  v65.size.height = a5;
  CGRectGetWidth(v65);
  sub_10002A400(v5 + 30, *(v5 + 33));
  Measurable.placeable.getter();
  sub_10002A400(v51, v52);
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v51);
  sub_1000CB084((v5 + 328), &v49);
  if (v50)
  {
    sub_100005A38(&v49, v51);
    sub_1000CB084((v5 + 288), &v47);
    if (v48)
    {
      sub_100005A38(&v47, &v49);
      sub_1000CB084((v5 + 368), &v45);
      if (v46)
      {
        sub_100005A38(&v45, &v47);
        sub_10002A400(v51, v52);
        dispatch thunk of Placeable.measure(toFit:with:)();
        v66.origin.y = a3;
        v66.origin.x = a2;
        v66.size.width = v42;
        v66.size.height = a5;
        CGRectGetHeight(v66);
        v67.origin.x = v35;
        v67.origin.y = v39;
        v67.size.width = v36;
        v67.size.height = v40;
        CGRectGetMaxY(v67);
        v68.origin.x = v35;
        v68.origin.y = v39;
        v68.size.width = v36;
        v68.size.height = v40;
        CGRectGetMaxY(v68);
        sub_10002A400(&v49, v50);
        CGRect.withLayoutDirection(using:relativeTo:)();
        dispatch thunk of Placeable.place(at:with:)();
        sub_10002A400(v51, v52);
        dispatch thunk of Placeable.place(at:with:)();
        sub_10002A400(&v47, v48);
        CGRect.withLayoutDirection(using:relativeTo:)();
        dispatch thunk of Placeable.place(at:with:)();
        sub_100007000(&v47);
        sub_100007000(&v49);
        return sub_100007000(v51);
      }

      sub_1000CC370(&v45);
      sub_100007000(&v49);
    }

    else
    {
      sub_1000CC370(&v47);
    }

    sub_100007000(v51);
  }

  else
  {
    sub_1000CC370(&v49);
  }

  sub_1000CB084((v5 + 288), v51);
  if (v52)
  {
    sub_10002A400(v51, v52);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v51);
  }

  else
  {
    sub_1000CC370(v51);
  }

  sub_1000CB084((v5 + 328), v51);
  if (v52)
  {
    sub_10002A400(v51, v52);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v51);
  }

  else
  {
    sub_1000CC370(v51);
  }

  sub_1000CB084((v5 + 288), v51);
  if (v52)
  {
    sub_10002A400(v51, v52);
    dispatch thunk of Placeable.place(at:with:)();
    return sub_100007000(v51);
  }

  return sub_1000CC370(v51);
}

uint64_t sub_10046209C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004620E4(uint64_t result, int a2, int a3)
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1004621A0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004621BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100462210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100462278()
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
  *(v6 + 16) = xmmword_1007B1890;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  static PageGrid.HorizontalMargins.zero.getter();
  static UIEdgeInsets.horizontal(left:right:)();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_1009D1CB8 = v6;
  return result;
}

uint64_t sub_100462678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_10002849C(&qword_100986538);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData();
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100983518);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = type metadata accessor for AdamId();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = type metadata accessor for URL();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = type metadata accessor for FlowPage();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination();
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  FlowAction.page.getter();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      FlowAction.pageUrl.getter();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = type metadata accessor for ShelfBasedProductPage();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v103 = v304;
      if (v304)
      {

        v104 = ShelfBasedProductPage.fullProductFetchedAction.getter();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_10002849C(&qword_100983698);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = FlowAction.pageDataPageRenderMetrics.getter();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      FlowAction.pageUrl.getter();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      type metadata accessor for DynamicUIRequestInfo();
      FlowAction.pageData<A>(as:or:)();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_10096D120 != -1)
        {
          swift_once();
        }

        v128 = type metadata accessor for OSLogger();
        sub_1000056A8(v128, qword_1009CE218);
        sub_10002849C(&unk_100972A10);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1890;
        LogMessage.init(stringLiteral:)();
        v306 = v297;
        sub_1000056E0(&v304);
        FlowAction.page.getter();
        static LogMessage.sensitive(_:)();
        sub_10002B894(&v304, &unk_1009711D0);
        Logger.debug(_:)();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_10002849C(&qword_100983680);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      FlowAction.pageUrl.getter();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10002B894(v98, &qword_100982460);
        v92 = v302;
        if (qword_10096D120 == -1)
        {
LABEL_15:
          v107 = type metadata accessor for OSLogger();
          sub_1000056A8(v107, qword_1009CE218);
          sub_10002849C(&unk_100972A10);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B1890;
          LogMessage.init(stringLiteral:)();
          v306 = v297;
          sub_1000056E0(&v304);
          FlowAction.page.getter();
          static LogMessage.sensitive(_:)();
          sub_10002B894(&v304, &unk_1009711D0);
          Logger.debug(_:)();

LABEL_16:
          sub_10002B894(v92, &unk_1009711D0);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      FlowAction.pageUrl.getter();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_10002849C(&qword_100983688);
      (*(v115 + 16))(v95, v72, v99);
      FlowAction.origin.getter();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_100005744(0, &qword_1009711C0);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v127 = v304;
      if (!v304)
      {
        if (qword_10096D120 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_10002849C(&qword_100982820);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v127 = v304;
      if (!v304)
      {
        if (qword_10096D120 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      FlowAction.pageUrl.getter();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = type metadata accessor for Video();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      if (v304)
      {
        v133 = Video.preview.getter();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_10002849C(&qword_100983668) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      FlowAction.pageUrl.getter();
      v135 = type metadata accessor for GenericPage();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();

      v136 = v304;
      v137 = *(sub_10002849C(&unk_10097CCB0) + 48);
      *v95 = v136;
      sub_1000476A0(v134, v95 + v137, &qword_100982460);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      FlowAction.pageUrl.getter();
      v139 = type metadata accessor for SearchChartsAndCategoriesPage();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();

      v140 = v304;
      v141 = *(sub_10002849C(&qword_100983670) + 48);
      *v95 = v140;
      sub_1000476A0(v138, v95 + v141, &qword_100982460);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      FlowAction.pageUrl.getter();
      v143 = type metadata accessor for TopChartsPage();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();

      v144 = v304;
      v145 = *(sub_10002849C(&qword_100983608) + 48);
      *v95 = v144;
      sub_1000476A0(v142, v95 + v145, &qword_100982460);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      FlowAction.pageUrl.getter();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10002B894(v148, &qword_100982460);
      if (qword_10096D120 == -1)
      {
LABEL_60:
        v149 = type metadata accessor for OSLogger();
        sub_1000056A8(v149, qword_1009CE218);
        sub_10002849C(&unk_100972A10);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1890;
        LogMessage.init(stringLiteral:)();
        v306 = v297;
        sub_1000056E0(&v304);
        FlowAction.page.getter();
        static LogMessage.sensitive(_:)();
        sub_10002B894(&v304, &unk_1009711D0);
        Logger.debug(_:)();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      FlowAction.pageUrl.getter();
      type metadata accessor for ArticlePage();
      FlowAction.pageData<A>(as:or:)();
      sub_100031660(v302, &v304, &unk_1009711D0);
      if (v306)
      {
        type metadata accessor for TodayCard();
        swift_dynamicCast();
      }

      else
      {
        sub_10002B894(&v304, &unk_1009711D0);
      }

      v154 = ArticlePage.__allocating_init(copying:replacingCard:)();

      v155 = *(sub_10002849C(&qword_1009835C0) + 48);
      *v95 = v154;
      sub_1000476A0(v288, v95 + v155, &qword_100982460);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_100005744(0, &qword_100984880);
      FlowAction.pageData<A>(as:or:)();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      FlowAction.pageUrl.getter();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        type metadata accessor for InAppPurchaseInstallPage();
        FlowAction.pageData<A>(as:or:)();

        v160 = v304;
        v161 = *(sub_10002849C(&qword_1009835B0) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      FlowAction.pageUrl.getter();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      FlowAction.pageData<A>(as:or:)();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_10002849C(&unk_1009835A0) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10002B894(v283, &qword_100972A80);
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      v167 = type metadata accessor for OSLogger();
      sub_1000056A8(v167, qword_1009CE218);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      v306 = v297;
      sub_1000056E0(&v304);
      FlowAction.page.getter();
      static LogMessage.sensitive(_:)();
      sub_10002B894(&v304, &unk_1009711D0);
      Logger.debug(_:)();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = type metadata accessor for ReviewsPage();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v163 = v304;
      if (!v304)
      {
        if (qword_10096D120 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        FlowAction.pageUrl.getter();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        FlowAction.pageUrl.getter();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          type metadata accessor for MSOContext();
          v177 = v276;
          FlowAction.pageData<A>(as:or:)();

          v178 = *(sub_10002849C(&qword_100983578) + 48);
          v175(v95, v176, v174);
          sub_1000476A0(v177, v95 + v178, &qword_100983518);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = type metadata accessor for GenericPage();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        FlowAction.pageData<A>(as:or:)();
        v163 = v304;
        if (!v304)
        {
          if (qword_10096D120 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          FlowAction.pageData<A>(as:or:)();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_10096D120 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = type metadata accessor for Review();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          FlowAction.pageData<A>(as:or:)();
          v163 = v304;
          if (!v304)
          {
            if (qword_10096D120 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = type metadata accessor for EditorsChoice();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          FlowAction.pageData<A>(as:or:)();
          v163 = v304;
          if (!v304)
          {
            if (qword_10096D120 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            FlowAction.pageUrl.getter();
            type metadata accessor for ArcadePage();
            FlowAction.pageData<A>(as:or:)();
            v183 = v304;
            sub_10002849C(&qword_1009703B8);
            *v95 = v183;
            sub_100031660(v182, v263, &qword_100982460);
            sub_100031660(v182, v266, &qword_100982460);
            ArcadePageUrls.init(subscriberUrl:nonSubscriberUrl:)();

            sub_10002B894(v182, &qword_100982460);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            type metadata accessor for ArcadeSubscribePage();
            FlowAction.pageData<A>(as:or:)();
            v184 = v304;
            v185 = sub_10002849C(&qword_100983638);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            FlowAction.pageUrl.getter();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              FlowAction.pageUrl.getter();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                type metadata accessor for ArcadeSeeAllGamesPage();
                FlowAction.pageData<A>(as:or:)();

                v193 = v304;
                v194 = *(sub_10002849C(&qword_100983648) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              FlowAction.pageUrl.getter();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_10002849C(&qword_100975958);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                type metadata accessor for ArcadeWelcomePage();
                FlowAction.pageData<A>(as:or:)();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = type metadata accessor for ArcadeWelcomePage.ContentType();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              FlowAction.pageData<A>(as:or:)();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_10096D120 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              FlowAction.pageData<A>(as:or:)();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_100466FD8(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_10002849C(&qword_100983570) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = type metadata accessor for IndexPath();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10002B894(v271, &qword_100986538);
              if (qword_10096D120 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              FlowAction.pageData<A>(as:or:)();
              v211 = v304;
              if (!v304)
              {
                if (qword_10096D120 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  FlowAction.pageData<A>(as:or:)();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = type metadata accessor for ReportConcernAction();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  FlowAction.pageData<A>(as:or:)();
                  if (v304)
                  {
                    v214 = ReportConcernAction.reasons.getter();
                    v215 = ReportConcernAction.explanation.getter();
                    v217 = v216;
                    v218 = ReportConcernAction.sendAction.getter();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = type metadata accessor for ShareSheetAction();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      if (v304)
                      {
                        sub_10002849C(&qword_100983590);
                        *v95 = ShareSheetAction.data.getter();
                        v95[1] = ShareSheetAction.activities.getter();
                        ShareSheetAction.shareSheetStyle.getter();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_10096D120 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      FlowAction.pageUrl.getter();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        type metadata accessor for GenericPage();
                        FlowAction.pageData<A>(as:or:)();

                        v233 = v304;
                        v234 = *(sub_10002849C(&unk_10097CCB0) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      FlowAction.pageUrl.getter();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        type metadata accessor for GenericPage();
                        FlowAction.pageData<A>(as:or:)();

                        v239 = v304;
                        v240 = *(sub_10002849C(&unk_10097CCB0) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = type metadata accessor for AppEventDetailPage();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_10096D120 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100031660(v302, &v304, &unk_1009711D0);
                      if (v306)
                      {
                        sub_100005744(0, &qword_100972EB0);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10002B894(&v304, &unk_1009711D0);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = type metadata accessor for ContingentOfferDetailPage();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_10096D120 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100031660(v302, &v304, &unk_1009711D0);
                      if (v306)
                      {
                        sub_100005744(0, &qword_100972EB0);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10002B894(&v304, &unk_1009711D0);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          FlowAction.pageData<A>(as:or:)();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = type metadata accessor for OfferItemDetailPage();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_10096D120 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100031660(v302, &v304, &unk_1009711D0);
                      if (v306)
                      {
                        sub_100005744(0, &qword_100972EB0);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10002B894(&v304, &unk_1009711D0);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_100466FD8(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = type metadata accessor for ReviewSummaryReportConcernAction();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  FlowAction.pageData<A>(as:or:)();
                  if (v304)
                  {
                    v221 = ReviewSummaryReportConcernAction.concerns.getter();
                    v222 = ReviewSummaryReportConcernAction.comment.getter();
                    v224 = v223;
                    v225 = ReviewSummaryReportConcernAction.sendAction.getter();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_10096D120 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              FlowAction.pageData<A>(as:or:)();
              v211 = v304;
              if (!v304)
              {
                if (qword_10096D120 != -1)
                {
                  swift_once();
                }

                v219 = type metadata accessor for OSLogger();
                sub_1000056A8(v219, qword_1009CE218);
                sub_10002849C(&unk_100972A10);
                type metadata accessor for LogMessage();
                *(swift_allocObject() + 16) = xmmword_1007B1890;
                LogMessage.init(stringLiteral:)();
                v306 = v297;
                sub_1000056E0(&v304);
                FlowAction.page.getter();
                static LogMessage.sensitive(_:)();
                sub_10002B894(&v304, &unk_1009711D0);
                Logger.debug(_:)();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          type metadata accessor for MarketingItemRequestInfo();
          FlowAction.pageData<A>(as:or:)();
          v163 = v304;
          if (!v304)
          {
            if (qword_10096D120 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = type metadata accessor for SearchAction();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  FlowAction.pageData<A>(as:or:)();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_100466FD8(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10002B894(v92, &unk_1009711D0);
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination();
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_100466FD8(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10002B894(v5, &unk_1009796F0);
  }

  return result;
}

uint64_t sub_100466FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004670DC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D1D08);
  sub_1000056A8(v4, qword_1009D1D08);
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1490);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004672BC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D1D38);
  sub_1000056A8(v4, qword_1009D1D38);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D14A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_1004674A4(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PageGrid.Breakpoint();
  base_props = v9[-1].base_props;
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      goto LABEL_8;
    }

    PageGrid.activeBreakPoint.getter();
    if (qword_10096E990 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_1000056A8(v9, qword_1009D2A80);
      sub_100467DA0();
      v14 = dispatch thunk of static Comparable.< infix(_:_:)();
      v15 = base_props[1];
      ++base_props;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &StringUserDefaultsDebugSetting;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v17 = static UIContentSizeCategory.<= infix(_:_:)();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (static UIContentSizeCategory.<= infix(_:_:)())
      {
        if (static UIContentSizeCategory.>= infix(_:_:)())
        {
          static UIContentSizeCategory.<= infix(_:_:)();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  PageGrid.containerWidth.getter();
  PageGrid.containerWidth.getter();
  if (v4 == 4)
  {
    if (qword_10096E4A0 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_1000056A8(v5, qword_1009D1CD8);
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_10096E498 != -1)
      {
        swift_once();
      }

      v18 = qword_1009D1CC0;
    }

    else
    {
      if (qword_10096E4A8 != -1)
      {
        swift_once();
      }

      v18 = qword_1009D1CF0;
    }

    v20 = sub_1000056A8(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    AspectRatio.height(fromWidth:)();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_100467918(unsigned __int8 a1, uint64_t a2, void *a3)
{
  LOBYTE(v4) = a1;
  v5 = a1;
  v6 = type metadata accessor for AspectRatio();
  v21 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PageGrid.Breakpoint();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      goto LABEL_8;
    }

    v20 = a3;
    PageGrid.activeBreakPoint.getter();
    if (qword_10096E990 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_1000056A8(v9, qword_1009D2A80);
      sub_100467DA0();
      v14 = dispatch thunk of static Comparable.< infix(_:_:)();
      (v10[1])(v12, v9);
      a3 = v20;
      if (v14)
      {
        break;
      }

LABEL_8:
      v4 = &StringUserDefaultsDebugSetting;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v15 = static UIContentSizeCategory.<= infix(_:_:)();

        if (v15)
        {
          return;
        }
      }

      else
      {
      }

      v17 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (static UIContentSizeCategory.<= infix(_:_:)())
      {
        if (static UIContentSizeCategory.>= infix(_:_:)())
        {
          static UIContentSizeCategory.<= infix(_:_:)();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_100699534(v4);
  PageGrid.containerWidth.getter();
  if (v5 == 4)
  {
    if (qword_10096E4A0 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D1CD8);
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_10096E498 != -1)
      {
        swift_once();
      }

      v16 = qword_1009D1CC0;
    }

    else
    {
      if (qword_10096E4A8 != -1)
      {
        swift_once();
      }

      v16 = qword_1009D1CF0;
    }

    v18 = sub_1000056A8(v6, v16);
    v19 = v21;
    (*(v21 + 16))(v8, v18, v6);
    AspectRatio.height(fromWidth:)();
    (*(v19 + 8))(v8, v6);
  }
}

unint64_t sub_100467DA0()
{
  result = qword_100986540;
  if (!qword_100986540)
  {
    type metadata accessor for PageGrid.Breakpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986540);
  }

  return result;
}

double sub_100467DF8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = type metadata accessor for FontSource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((UITraitCollection.isRegularPad.getter() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D1490);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v26);
  (*(v11 + 16))(v18, v13, v10);
  CGFloat.scalingLike(_:with:)();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_100007000(v26);
  static Dimensions.defaultRoundingRule.getter();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

unint64_t sub_100468270()
{
  result = qword_100986548;
  if (!qword_100986548)
  {
    type metadata accessor for AdTransparencyAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986548);
  }

  return result;
}

uint64_t sub_1004682D0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = type metadata accessor for FlowOrigin();
  v44 = *(v2 - 1);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationContext();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v36 = &v31 - v9;
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v33 = &v31 - v11;
  v13 = type metadata accessor for FlowPage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v34 = type metadata accessor for ActionMetrics();
  v17 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v31 - v20;
  AdTransparencyAction.adTransparencyData.getter();
  v22 = objc_allocWithZone(ADTransparencyViewController);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 initWithTransparencyDetails:v23];

  static ActionMetrics.notInstrumented.getter();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.viewController(_:), v13);
  v25 = type metadata accessor for URL();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = type metadata accessor for ReferrerData();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v48 = sub_100065AF0();
  v47 = v24;
  v27 = v34;
  (*(v17 + 16))(v32, v21, v34);
  (*(v38 + 104))(v37, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v41 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowOrigin.inapp(_:), v45);
  v45 = v24;
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  (*(v17 + 8))(v21, v27);
  v29 = sub_1005D01FC(v28, 1, v46);

  return v29;
}

char *sub_1004688C8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  AutoScrollConfiguration.init(isAutoScrollEnabled:autoScrollInterval:autoScrollRestartDelay:autoScrollMaxInterval:)();
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView();
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView] + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pagingDelegate + 8) = &off_1008C3EE0;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl_delegate + 8) = &off_1008C3ED0;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = type metadata accessor for Feature.iOS();
  v32[3] = v21;
  v32[4] = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v22 = sub_1000056E0(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = isFeatureEnabled(_:)();
  sub_100007000(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress] = v23;

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
    sub_10046A704();
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

void sub_100468D78(char a1)
{
  v2 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = type metadata accessor for Feature.iOS();
  v12 = v3;
  v4 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v13 = v4;
  v5 = sub_1000056E0(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = isFeatureEnabled(_:)();
  sub_100007000(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
      {
        sub_100469E30(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_1000056E0(v11);
      v7(v9, v6, v3);
      v10 = isFeatureEnabled(_:)();
      sub_100007000(v11);
      if ((v10 & 1) == 0)
      {
        sub_10046BD0C(0);
      }
    }
  }
}

void sub_100468ECC()
{
  v1 = type metadata accessor for Feature.iOS();
  v10 = v1;
  v2 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v11 = v2;
  v3 = sub_1000056E0(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = isFeatureEnabled(_:)();
  sub_100007000(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_1000056E0(v9);
        v5(v7, v4, v1);
        v8 = isFeatureEnabled(_:)();
        sub_100007000(v9);
        if ((v8 & 1) == 0)
        {
          sub_10046BD0C(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
    {
      sub_100469E30(0.0);
    }
  }
}

id sub_100469048()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 setFrame:?];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.subtracting(insets:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl];
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

id sub_1004691D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
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
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

id sub_10046931C(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
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
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    v4 = _CocoaArrayWrapper.endIndex.getter();
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
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
        v16 = _CocoaArrayWrapper.endIndex.getter();
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

      *&v13[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setHidden:v22 < 2];
  sub_1005C4C74(a1, a2);

  return [v26 setNeedsLayout];
}

uint64_t sub_100469604(int a1, int a2)
{
  v48 = type metadata accessor for HeroCarouselItemOverlay.OverlayType();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
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
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
        v8 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_10051C094(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_100005744(0, &qword_10097FB80);

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_1002A4E98(v29);

          v33 = Array._bridgeToObjectiveC()().super.isa;
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
          [*&v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem) || (, v37 = HeroCarouselItem.overlay.getter(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        HeroCarouselItemOverlay.overlayType.getter();

        v39 = HeroCarouselItemOverlay.OverlayType.displaysModuleGradient.getter();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_10051C094(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_100005744(0, &qword_10097FB80);

      v16 = Array._bridgeToObjectiveC()().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_1002A4E98(v14);

      v18 = Array._bridgeToObjectiveC()().super.isa;
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

void sub_100469B54()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = type metadata accessor for Feature.iOS();
    v26 = v14;
    v15 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
    v27 = v15;
    v16 = sub_1000056E0(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = isFeatureEnabled(_:)();
    sub_100007000(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_1000056E0(v25);
    v18(v23, v17, v14);
    v24 = isFeatureEnabled(_:)();
    sub_100007000(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_10046BD0C(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = type metadata accessor for Feature.iOS();
  v26 = v6;
  v7 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v27 = v7;
  v8 = sub_1000056E0(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = isFeatureEnabled(_:)();
  sub_100007000(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_1000056E0(v25);
    v10(v20, v9, v6);
    v21 = isFeatureEnabled(_:)();
    sub_100007000(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_1005C519C(v12);
}

void sub_100469E30(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = type metadata accessor for AutoScrollConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Feature.iOS();
  v50 = v14;
  v51 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v15 = sub_1000056E0(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = AutoScrollConfiguration.isAutoScrollEnabled.getter();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 2)
        {
          return;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        AutoScrollConfiguration.autoScrollInterval.getter();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_10046BEE4;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_100080D48;
        v50 = &unk_1008C3F98;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_10046BD0C(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_100005744(0, &qword_1009729E0);
          v28 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          v29 = v38;
          + infix(_:_:)();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_10046BEEC;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_100007A08;
          v50 = &unk_1008C3FE8;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_10046BEF4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
          sub_10002849C(&unk_1009729F0);
          sub_1000079A4();
          v34 = v42;
          v35 = v45;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_10046A5B0(void *a1)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);

      sub_1005C519C(1u);
    }

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_10046BD0C(0);
    }
  }
}

void sub_10046A668(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_10046A704()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Feature.iOS();
  v10 = v1;
  v11 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v2 = sub_1000056E0(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100007000(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_10046BEDC;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100080D48;
    v10 = &unk_1008C3F70;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_10046A924()
{
  v3 = type metadata accessor for AutoScrollConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
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

          v11 = *&v15[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView];

          v16 = *(*(*(v11 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

          v19 = *(v18 + qword_100988CE0);
          if (!v19)
          {
            v11 = v12;
            goto LABEL_35;
          }

          v11 = v19;
          v20 = dispatch thunk of VideoPlayer.playerItem.getter();
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
          if (vabdd_f64(v2, Seconds) > 0.5 || (swift_beginAccess(), (v21 = swift_unknownObjectWeakLoadStrong()) == 0) || (v22 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration, v23 = v21, swift_beginAccess(), (*(v4 + 16))(v6, &v23[v22], v3), LOBYTE(v22) = AutoScrollConfiguration.isAutoScrollEnabled.getter(), v23, (*(v4 + 8))(v6, v3), (v22 & 1) == 0) || (swift_beginAccess(), (v13 = swift_unknownObjectWeakLoadStrong()) == 0))
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
              v37 = *(v36 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress);
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

          v24 = *&v13[OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews];
          if (!(v24 >> 62))
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_17;
          }

LABEL_40:
          v41 = v13;
          v25 = _CocoaArrayWrapper.endIndex.getter();
          v13 = v41;
LABEL_17:

          if (v25 >= 2)
          {
            swift_beginAccess();
            v26 = swift_unknownObjectWeakLoadStrong();
            if (!v26 || (v27 = v26[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isVoiceOverRunning], v26, (v27 & 1) == 0))
            {
              swift_beginAccess();
              v28 = swift_unknownObjectWeakLoadStrong();
              if (!v28 || (v29 = v28[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isReducedMotionEnabled], v28, (v29 & 1) == 0))
              {
                swift_beginAccess();
                v30 = swift_unknownObjectWeakLoadStrong();
                if (!v30 || (v31 = v30[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively], v30, (v31 & 1) == 0))
                {
                  swift_beginAccess();
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *(v32 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);

                    sub_1005C519C(1u);
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

      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }
  }
}

void sub_10046AE64(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TitleEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100986660);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_10046BE04(v2 + v16, v19);
  if (v20)
  {
    sub_10002C0AC(v19, v18);
    sub_10046BE74(v19);
    sub_10002A400(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem))
    {

      dispatch thunk of HeroCarouselItem.titleEffect.getter();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_10066AD50(v12);
    sub_100007000(v18);
  }

  else
  {
    sub_10046BE74(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_10046B0E0(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_10046BE04(v3 + v10, v25);
  if (!v26)
  {
    return sub_10046BE74(v25);
  }

  sub_10002C0AC(v25, v24);
  sub_10046BE74(v25);
  sub_10002A400(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
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
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
          v12 = _CocoaArrayWrapper.endIndex.getter();
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
    v11 = _CocoaArrayWrapper.endIndex.getter();
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
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

  sub_10066CE24(v3, v21);

  return sub_100007000(v24);
}

void sub_10046B4C4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3())
  {
    *(v3 + v5) = a3();
    v7 = type metadata accessor for Feature.iOS();
    v16 = v7;
    v8 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
    v17 = v8;
    v9 = sub_1000056E0(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = isFeatureEnabled(_:)();
    sub_100007000(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_1000056E0(v15);
        v11(v13, v10, v7);
        v14 = isFeatureEnabled(_:)();
        sub_100007000(v15);
        if ((v14 & 1) == 0)
        {
          sub_10046BD0C(0);
        }
      }

      else
      {
        sub_100469E30(0.0);
      }
    }
  }
}

uint64_t sub_10046B640(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView()
{
  result = qword_100986620;
  if (!qword_100986620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046B864()
{
  result = type metadata accessor for AutoScrollConfiguration();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10046B960(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_1005C519C(a3);
    swift_unknownObjectRelease();
  }
}

id sub_10046BB30(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10046BBA4()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  AutoScrollConfiguration.init(isAutoScrollEnabled:autoScrollInterval:autoScrollRestartDelay:autoScrollMaxInterval:)();
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10046BD0C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer) = a1;
  v4 = type metadata accessor for Feature.iOS();
  v7[3] = v4;
  v7[4] = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v5 = sub_1000056E0(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100007000(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_10046BE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100990DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046BE74(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100990DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10046BEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10046BF4C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for CornerStyle();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v50 = ObjectType;
  v13 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView;
  *(*&v13[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008C4010;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v47 = v15;
  v17 = [v16 traitCollection];
  v18 = [(NSString *)v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v20 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v22 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v22)
    {
      v23 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v24 = [(NSString *)v17 preferredContentSizeCategory];
  v25 = UIContentSizeCategoryAccessibilityMedium;
  v26 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v27 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v27)
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    v23 = 0;
    v17 = v25;
  }

LABEL_12:

  v28 = v47;
  [v47 setMaximumContentSizeCategory:v23];

  v29 = [v16 contentView];
  [v29 addSubview:*&v13[v14]];

  v30 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer;
  v31 = *&v16[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v32 = type metadata accessor for TodayCardInfoLayerView();
  v52.receiver = v31;
  v52.super_class = v32;
  v33 = v16;
  objc_msgSendSuper2(&v52, "_setContinuousCornerRadius:", 20.0);
  sub_1000A3894();
  *&v33[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = 0x402E000000000000;
  v35 = v48;
  v34 = v49;
  (*(v48 + 104))(v12, enum case for CornerStyle.continuous(_:), v49);
  sub_10070C5EC(v12, 15.0);
  (*(v35 + 8))(v12, v34);
  v36 = *&v33[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v36)
  {
    v37 = v36;
    [v37 _setContinuousCornerRadius:15.0];
    v38 = [v37 layer];
    [v38 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  v39 = [v33 contentView];
  [v39 _setContinuousCornerRadius:20.0];

  v40 = [v33 contentView];
  v41 = [v40 layer];

  [v41 setMaskedCorners:3];
  v42 = *&v16[v30];
  v43 = *&v42[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType];
  *&v42[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType] = kCAGradientLayerAxial;
  v44 = v42;
  v45 = kCAGradientLayerAxial;

  sub_10046C4F0();
  sub_10002849C(&qword_10097B110);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007B10D0;
  *(v46 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v46 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v51[3] = v50;
  v51[0] = v33;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v51);
  return v33;
}

uint64_t sub_10046C4F0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  v2 = [v0 traitCollection];
  v3 = [(NSString *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v5 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v7 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v7)
    {
      v8 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(NSString *)v2 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryAccessibilityMedium;
  v11 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v12 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v12)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v2 = v10;
  }

LABEL_12:

  [v1 setMaximumContentSizeCategory:v8];

  return [v0 setNeedsLayout];
}

double sub_10046C6FC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = 0.0;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
    if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v6 = *v7, *v7 <= 0.0) || (v8 = [v0 traitCollection], v9 = UITraitCollection.isSizeClassCompact.getter(), v8, (v9 & 1) == 0))
    {
      v10 = [v1 traitCollection];
      v11 = UITraitCollection.prefersRightToLeftLayouts.getter();

      v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(v1 + v12, v5);
      v13 = [v1 traitCollection];
      sub_1004EDF34(v5, v13);
      if (v11)
      {
        v6 = v15;
      }

      else
      {
        v6 = v14;
      }

      sub_10046DF7C(v5);
    }
  }

  return v6;
}

id sub_10046C904()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;

  v5 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v6 = v4 + -30.0 + -14.0 + -14.0;
    [*&v1[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] bounds];
    Height = CGRectGetHeight(v37);
  }

  else
  {
    v8 = [v1 contentView];
    [v8 bounds];
    v6 = v9;
    Height = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1002C65CC(v36);
  sub_1002C97E0(v11, v36, v6, Height);
  sub_1001A927C(v36);

  if (v1[v5] == 1 && ((v12 = [v1 traitCollection], v13 = v12, !v1[v5]) ? (v14 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v14 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory), sub_1000A805C(v12, v1[*v14], v36), v13, v1[v5] == 1))
  {
    v15 = [v1 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetMinY(v38);
    MinY = sub_10046C6FC();
  }

  else
  {
    v25 = [v1 contentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v39.origin.x = v27;
    v39.origin.y = v29;
    v39.size.width = v31;
    v39.size.height = v33;
    MinY = CGRectGetMinY(v39);
  }

  v34 = [v1 contentView];
  [v34 bounds];

  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v11 setFrame:?];
}

void sub_10046CBD0()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
    [v1 frame];
    CGRect.subtracting(insets:)();
    [v1 setFrame:?];
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
    if (v2)
    {
      v3 = v2;
      [v3 frame];
      CGRect.subtracting(insets:)();
      [v3 setFrame:?];
    }
  }
}

uint64_t sub_10046CD88(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TodayCard.Style();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v45 = &v42 - v15;
  sub_1002108CC(a1, a2, a3, a4);
  v16 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaAppEvent();
  if (swift_dynamicCastClass())
  {
    v42 = a4;
    v44 = v16;
    v17 = TodayCardMediaAppEvent.formattedDates.getter();
    v18 = *&v5[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
    type metadata accessor for AppEventFormattedDatePresenter(0);
    swift_allocObject();
    v19 = v18;
    v20 = sub_1006E6CE8(v17, v18, &off_1008BC738);

    v21 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    *&v19[v21] = v20;

    [v5 setNeedsLayout];
    v22 = [v5 backgroundView];
    if (v22)
    {
      v23 = v22;
      v24 = TodayCardMediaAppEvent.tintColor.getter();
      [v23 setBackgroundColor:v24];
    }

    v43 = v13;
    v25 = *&v5[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
    v26 = TodayCardMediaAppEvent.tintColor.getter();
    [v25 setBackgroundColor:v26];

    v27 = TodayCardMediaAppEvent.tintColor.getter();
    v28 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v29 = *&v19[v28];
    if (v29)
    {
      v30 = v29;
      [v30 setBackgroundColor:v27];
    }

    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    BaseObjectGraph.optional<A>(_:)();
    v31 = v48;
    v32 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v33 = *&v19[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v34 = v33;
    sub_1002C55E4(v31);
    v35 = *&v19[v32];
    *&v19[v32] = v31;
    v36 = v31;

    sub_1002C5748(v33);
    v37 = v45;
    TodayCard.style.getter();
    v38 = v43;
    (*(v11 + 104))(v43, enum case for TodayCard.Style.white(_:), v10);
    sub_1001DDE20();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v48 == v46 && v49 == v47)
    {
      v39 = 1;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    v41 = *(v11 + 8);
    v41(v38, v10);
    v41(v37, v10);

    [v19 setOverrideUserInterfaceStyle:v39];
    sub_10046D1D4();
    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_10046D1D4()
{
  v1 = v0;
  sub_1004EB9C0();
  v2 = [v0 contentView];
  sub_1005504B4();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setAccessibilityLabel:v4];

  v5 = [v1 contentView];
  v6 = [*(*&v1[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel) text];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v21[0] = v9;
  v10 = 0;
  v21[1] = sub_1005504B4();
  v21[2] = v11;
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v13 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100033E38(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_100033E38((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[2 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_10002849C(&unk_100984350);
  swift_arrayDestroy();
  sub_10002849C(&unk_100977380);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v20 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v20];
}

void sub_10046D458(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_100214D80(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v36 = a1;
    v10 = [v4 backgroundView];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 backgroundView];
      v13 = [v12 backgroundColor];

      [v11 setBackgroundColor:v13];
    }

    v14 = *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
    v15 = [*&v9[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView] backgroundColor];
    [v14 setBackgroundColor:v15];

    v16 = OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView;
    v17 = *&v9[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
    v18 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    v19 = *(v17 + v18);
    if (v19)
    {
      v20 = *(v19 + 16);
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    v21 = *&v4[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
    type metadata accessor for AppEventFormattedDatePresenter(0);
    swift_allocObject();
    v22 = v21;
    v23 = sub_1006E6CE8(v20, v21, &off_1008BC738);

    v24 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    *&v22[v24] = v23;

    [v4 setNeedsLayout];
    v25 = *&v9[v16];
    v26 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v27 = *(v25 + v26);
    if (v27)
    {
      v28 = [v27 backgroundColor];
    }

    else
    {
      v28 = 0;
    }

    v29 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v30 = *&v22[v29];
    if (v30)
    {
      v31 = v30;
      [v31 setBackgroundColor:v28];
    }

    [v22 setOverrideUserInterfaceStyle:{objc_msgSend(*&v9[v16], "overrideUserInterfaceStyle")}];
    v32 = [*&v9[v16] maximumContentSizeCategory];
    [v22 setMaximumContentSizeCategory:v32];

    v33 = [v4 contentView];
    v34 = [v9 contentView];
    v35 = [v34 overrideUserInterfaceStyle];

    [v33 setOverrideUserInterfaceStyle:v35];
  }
}

void sub_10046D7A0()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v3 = v2;
  v4 = sub_1006E6CE8(_swiftEmptyArrayStorage, v2, &off_1008BC738);

  v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *&v3[v5] = v4;

  [v1 setNeedsLayout];
  v6 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7)
  {
    [v7 setBackgroundColor:0];
  }

  v8 = [v1 contentView];
  [v8 setOverrideUserInterfaceStyle:0];
}

id sub_10046D928()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100217E70();
  v6 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  v7 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v6 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style);
  *(v6 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) = v8;
  sub_1002C3F30(v9);
  if (v1[v7])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0;
  }

  v11 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v12 = type metadata accessor for TodayCardInfoLayerView();
  v22.receiver = v11;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, "_setContinuousCornerRadius:", v10);
  sub_1000A3894();
  if (v1[v7])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = v13;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10070C5EC(v5, v13);
  (*(v3 + 8))(v5, v2);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v14)
  {
    v15 = v14;
    [v15 _setContinuousCornerRadius:v13];
    v16 = [v15 layer];
    [v16 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  if (v1[v7])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 20.0;
  }

  v18 = [v1 contentView];
  [v18 _setContinuousCornerRadius:v17];

  v19 = [v1 contentView];
  v20 = [v19 layer];

  [v20 setMaskedCorners:3];
  return [v1 setNeedsLayout];
}

id sub_10046DC04()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100217D2C();
  v6 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v7 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v9 = v0[*v8];
  if (v9 == 4)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v9 == 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  if (v7)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style);
  *(v12 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) = v13;
  sub_1002C3F30(v14);
  if (v1[v6])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v17 = type metadata accessor for TodayCardInfoLayerView();
  v23.receiver = v16;
  v23.super_class = v17;
  objc_msgSendSuper2(&v23, "_setContinuousCornerRadius:", v15);
  sub_1000A3894();
  if (v1[v6])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = v18;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10070C5EC(v5, v18);
  (*(v3 + 8))(v5, v2);
  v19 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v19)
  {
    v20 = v19;
    [v20 _setContinuousCornerRadius:v18];
    v21 = [v20 layer];
    [v21 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppEventTodayCardCollectionViewCell()
{
  result = qword_100986700;
  if (!qword_100986700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046DF7C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097DBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10046DFE4()
{
  type metadata accessor for DebugMetricsViewModel();
  swift_allocObject();
  return sub_10046F6F8();
}

uint64_t sub_10046E01C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10002849C(&qword_100986800);
  __chkstk_darwin(v2 - 8);
  v57 = &v37 - v3;
  v4 = type metadata accessor for SearchFieldPlacement();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PlainListStyle();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10002849C(&qword_100986808);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v37 - v8;
  v45 = sub_10002849C(&qword_100986810);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v37 - v10;
  v47 = sub_10002849C(&qword_100986818);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v38 = &v37 - v12;
  v50 = sub_10002849C(&qword_100986820);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v37 - v13;
  v14 = *(v1 + 16);
  v54 = *(v1 + 8);
  v53 = v14;
  v52 = *(v1 + 24);
  type metadata accessor for DebugMetricsViewModel();
  sub_10046FDDC(&qword_100986828, type metadata accessor for DebugMetricsViewModel);
  StateObject.wrappedValue.getter();
  v44 = v1;
  v67 = *(v1 + 32);
  v15 = *(v1 + 48);
  v62 = *(v1 + 32);
  v63 = v15;
  v37 = v15;
  sub_10002849C(&qword_100986830);
  State.wrappedValue.getter();
  v16 = sub_10046E8F4(v65, *(&v65 + 1));

  *&v62 = v16;
  v59 = &v62;
  v60 = sub_10046ED48;
  v61 = 0;
  sub_10002849C(&qword_100986838);
  sub_10046FC08();
  List<>.init(content:)();

  PlainListStyle.init()();
  v17 = sub_100097060(&qword_100986858, &qword_100986808);
  v18 = v11;
  v19 = v39;
  v20 = v42;
  View.listStyle<A>(_:)();
  (*(v43 + 8))(v7, v20);
  (*(v40 + 8))(v9, v19);
  v65 = v67;
  v66 = v15;
  State.projectedValue.getter();
  v21 = v49;
  static SearchFieldPlacement.automatic.getter();
  *&v62 = v19;
  *(&v62 + 1) = v20;
  v63 = v17;
  v64 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v38;
  View.searchable(text:placement:prompt:)();

  (*(v55 + 8))(v21, v56);
  (*(v46 + 8))(v18, v22);
  v62 = __PAIR128__(OpaqueTypeConformance2, v22);
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  v26 = v47;
  View.keyboardType(_:)();
  (*(v48 + 8))(v23, v26);
  v27 = v57;
  static TextInputAutocapitalization.never.getter();
  v28 = type metadata accessor for TextInputAutocapitalization();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  *&v62 = v26;
  *(&v62 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  v30 = v50;
  View.textInputAutocapitalization(_:)();
  sub_10002B894(v27, &qword_100986800);
  (*(v51 + 8))(v25, v30);
  v31 = v44;
  v62 = v67;
  v68 = v37;
  v32 = swift_allocObject();
  v33 = *(v31 + 16);
  *(v32 + 16) = *v31;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v31 + 32);
  *(v32 + 64) = *(v31 + 48);
  v34 = (v29 + *(sub_10002849C(&qword_100986860) + 36));
  *v34 = sub_10046FCC0;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;

  sub_10046FCC8();
  sub_10019D860(&v62, &v65);
  return sub_10046FCD0(&v68, &v65);
}

double *sub_10046E8F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002849C(&qword_100972620);
  __chkstk_darwin(v4 - 8);
  v38 = &v29 - v5;
  v29 = type metadata accessor for DebugMetricsEvent();
  v39 = *(v29 - 8);
  __chkstk_darwin(v29);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v42;
  v36 = *(v42 + 16);
  if (!v36)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_19:

    return v13;
  }

  v34 = a1;
  v35 = a2;
  v12 = 0;
  v31 = (v39 + 32);
  v32 = v39 + 16;
  v30 = (v39 + 8);
  v13 = _swiftEmptyArrayStorage;
  v14 = v29;
  v33 = v42;
  while (v12 < *(result + 2))
  {
    v15 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v16 = *(v39 + 72);
    (*(v39 + 16))(v9, result + v15 + v16 * v12, v14);
    v17 = v14;
    DebugMetricsEvent.fields.getter();
    v18 = Dictionary.description.getter();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v40 = v34;
    v41 = v35;
    v21 = type metadata accessor for Locale();
    v22 = v38;
    (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
    sub_10007FED4();
    StringProtocol.range<A>(of:options:range:locale:)();
    v24 = v23;
    sub_10002B894(v22, &qword_100972620);

    if (v24)
    {
      (*v30)(v9, v17);
      v14 = v17;
    }

    else
    {
      v25 = *v31;
      (*v31)(v37, v9, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v17;
      }

      else
      {
        sub_1001444D0(0, *(v13 + 2) + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v28 = *(v13 + 2);
      v27 = *(v13 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_1001444D0(v27 > 1, v28 + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      *(v13 + 2) = v28 + 1;
      v25(v13 + v15 + v28 * v16, v37, v14);
    }

    ++v12;
    result = v33;
    if (v36 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10046ED48(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  v5 = type metadata accessor for DebugMetricsEvent();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  sub_10046FDDC(&qword_100976BC0, type metadata accessor for DebugMetricsEventDetailView.Summary);
  sub_10046FDDC(&qword_1009868B0, type metadata accessor for DebugMetricsEventDetailView);
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_10046EEBC(void *a1)
{
  type metadata accessor for DebugMetricsViewModel();
  sub_10046FDDC(&qword_100986828, type metadata accessor for DebugMetricsViewModel);
  *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_10046F010();
}

uint64_t sub_10046EF98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10046F010()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100986870);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10002849C(&qword_100986878);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_10002849C(&qword_100986880);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = sub_100084270(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v14 = OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v14) = v13;

  if (*(v1 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder))
  {
    v24 = *(v1 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder);

    DebugMetricsEventRecorder.$events.getter();
    sub_1000076C0();
    v16 = static OS_dispatch_queue.main.getter();
    v22 = v8;
    v23 = v9;
    v17 = v16;
    v25 = v16;
    v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_100097060(&qword_100986888, &qword_100986878);
    sub_10046FDDC(&qword_100986890, sub_1000076C0);
    v19 = v22;
    Publisher.receive<A>(on:options:)();
    sub_10002B894(v4, &qword_100986870);

    (*(v6 + 8))(v19, v5);
    swift_allocObject();
    swift_weakInit();
    sub_100097060(&qword_100986898, &qword_100986880);
    v20 = v23;
    Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v12, v20);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10046F428()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1005C3454(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10046F4C4()
{
  v1 = OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel__eventsSnapshot;
  v2 = sub_10002849C(&qword_1009867F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugMetricsViewModel()
{
  result = qword_100986750;
  if (!qword_100986750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046F5E0()
{
  sub_10046F688();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10046F688()
{
  if (!qword_100986760)
  {
    sub_10002D1A8(&unk_100986768);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100986760);
    }
  }
}

uint64_t sub_10046F6F8()
{
  v1 = sub_10002849C(&qword_1009867F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel__eventsSnapshot;
  v8[1] = _swiftEmptyArrayStorage;
  sub_10002849C(&unk_100986768);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100084270(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_cancellables) = v6;
  *(v0 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder) = 0;
  return v0;
}

uint64_t sub_10046F84C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10046F89C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10046F91C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10046F998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10002849C(&unk_100986768);
  type metadata accessor for UUID();
  sub_10002849C(&qword_100986850);
  sub_100097060(&qword_1009868A0, &unk_100986768);
  sub_100097060(&qword_100986848, &qword_100986850);
  sub_10046FDDC(&qword_1009868A8, &type metadata accessor for DebugMetricsEvent);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10046FB3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10046FB84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10046FC08()
{
  result = qword_100986840;
  if (!qword_100986840)
  {
    sub_10002D1A8(&qword_100986838);
    sub_100097060(&qword_100986848, &qword_100986850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986840);
  }

  return result;
}

uint64_t sub_10046FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100986868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046FD70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_10046FDDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10046FE24()
{
  result = qword_1009868B8;
  if (!qword_1009868B8)
  {
    sub_10002D1A8(&qword_100986860);
    sub_10002D1A8(&qword_100986820);
    sub_10002D1A8(&qword_100986818);
    sub_10002D1A8(&qword_100986810);
    sub_10002D1A8(&qword_100986808);
    type metadata accessor for PlainListStyle();
    sub_100097060(&qword_100986858, &qword_100986808);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868B8);
  }

  return result;
}

unint64_t sub_100470010()
{
  result = qword_1009868C0;
  if (!qword_1009868C0)
  {
    type metadata accessor for InAppPurchaseAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868C0);
  }

  return result;
}

uint64_t sub_100470068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v4 - 8);
  v72 = &v68 - v5;
  v70 = type metadata accessor for ActionMetrics();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OpenableDestination();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LegacyAppState();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v85 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdamId();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v78 = sub_10002849C(&qword_1009764A0);
  v89 = Promise.__allocating_init()();
  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_getObjectType();
  InAppPurchaseAction.appAdamId.getter();
  v88 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v86 = v20;
  swift_unknownObjectRelease();
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (!InAppPurchaseAction.streamlineBuyAction.getter())
  {
LABEL_6:
    v68 = a2;
    v80 = InAppPurchaseAction.appBundleId.getter();
    v29 = v28;
    v79 = InAppPurchaseAction.productIdentifier.getter();
    v77 = v30;
    v87 = a1;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for OSLogger();
    v75 = sub_1000056A8(v76, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B5360;
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v94 = &type metadata for String;
    aBlock = v80;
    v92 = v29;

    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0);
    LogMessage.init(stringLiteral:)();
    v94 = &type metadata for String;
    v31 = v77;
    aBlock = v79;
    v92 = v77;

    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0);
    Logger.debug(_:)();

    InAppPurchaseAction.appTitle.getter();
    v33 = v32;
    InAppPurchaseAction.productTitle.getter();
    v35 = v34;
    v76 = v29;
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    if (v33)
    {
      v38 = String._bridgeToObjectiveC()();

      v39 = v31;
      if (v35)
      {
LABEL_10:
        v40 = String._bridgeToObjectiveC()();

        goto LABEL_13;
      }
    }

    else
    {
      v38 = 0;
      v39 = v31;
      if (v35)
      {
        goto LABEL_10;
      }
    }

    v40 = 0;
LABEL_13:
    v41 = v85;
    v42 = [objc_allocWithZone(SKPurchaseIntent) initWithBundleId:v36 productIdentifier:v37 appName:v38 productName:v40];

    InAppPurchaseAction.additionalBuyParams.getter();
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    v45 = v76;
    [v42 setAdditionalBuyParams:v44];

    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    v47 = v83;
    v46 = v84;
    if ((*(v83 + 88))(v41, v84) != enum case for LegacyAppState.openable(_:))
    {

      (*(v47 + 8))(v41, v46);
      goto LABEL_30;
    }

    (*(v47 + 96))(v41, v46);

    (*(v81 + 8))(v41, v82);
    InAppPurchaseAction.minimumShortVersionSupportingInAppPurchaseFlow.getter();
    if (v48)
    {
      v49 = InAppPurchaseAction.appBundleId.getter();
      v51 = v50;
      v52 = objc_allocWithZone(LSApplicationRecord);
      v53 = sub_10047148C(v49, v51, 1);
      if (!v53)
      {

LABEL_29:

        goto LABEL_30;
      }

      v88 = v53;
      v54 = [v53 shortVersionString];
      if (v54)
      {
        v55 = v54;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v55) = static VersionStringUtil.isShortVersionString(_:atLeast:)();

        if (v55)
        {
          v56 = swift_allocObject();
          v56[2] = v80;
          v56[3] = v45;
          v56[4] = v79;
          v56[5] = v39;
          v95 = sub_100471568;
          v96 = v56;
          aBlock = _NSConcreteStackBlock;
          v92 = 1107296256;
          v93 = sub_100007A08;
          v94 = &unk_1008C4178;
          v57 = _Block_copy(&aBlock);

          [v42 send:v57];
          _Block_release(v57);
          InAppPurchaseAction.appAdamId.getter();
          (*(v81 + 104))(v71, enum case for OpenableDestination.app(_:), v82);
          if (InAppPurchaseAction.installRequiredAction.getter())
          {
            v58 = v72;
            Action.actionMetrics.getter();

            v59 = v69;
            v60 = v70;
            (*(v69 + 56))(v58, 0, 1, v70);
            (*(v59 + 32))(v73, v58, v60);
            v27 = v89;
          }

          else
          {
            v63 = v69;
            v64 = v72;
            v65 = v70;
            (*(v69 + 56))(v72, 1, 1, v70);
            static ActionMetrics.notInstrumented.getter();
            v66 = (*(v63 + 48))(v64, 1, v65);
            v27 = v89;
            if (v66 != 1)
            {
              sub_10002B894(v64, &unk_100993040);
            }
          }

          type metadata accessor for OpenAppAction();
          swift_allocObject();
          v67 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
          sub_1005D0478(v67, 1, v68);
          Promise.pipe(to:)();

          goto LABEL_34;
        }

LABEL_30:
        v61 = InAppPurchaseAction.installRequiredAction.getter();
        if (v61)
        {
          sub_1005D0214(v61, 1, v68);
        }

        else
        {
          sub_100471438();
          swift_allocError();
          Promise.__allocating_init(error:)();
        }

        v27 = v89;
        Promise.pipe(to:)();
LABEL_34:

        swift_unknownObjectRelease();

        return v27;
      }
    }

    goto LABEL_29;
  }

  type metadata accessor for OfferAction();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_6;
  }

  v23 = v22;
  OfferAction.adamId.getter();
  InAppPurchaseAction.appAdamId.getter();
  v24 = sub_100471574(v19, v16, a1, a2);
  v25 = a2;
  v26 = v24;
  v21(v16, v11);
  v21(v19, v11);
  if (v26)
  {

    swift_unknownObjectRelease();

    return v26;
  }

  else
  {
    OfferAction.purchaseToken.getter();
    sub_100470D58(v90, &aBlock);
    sub_100007000(v90);
    OfferAction.purchaseToken.setter();

    sub_1005D04A8(v23, 1, v25);

    v27 = v89;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
  }

  return v27;
}

uint64_t sub_100470D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LegacyAppState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  (*(v5 + 16))(v7, v10, v4);
  v11 = (*(v5 + 88))(v7, v4);
  v12 = enum case for LegacyAppState.openable(_:);
  if (v11 == enum case for LegacyAppState.openable(_:))
  {
    (*(v5 + 96))(v7, v4);

    v13 = type metadata accessor for OpenableDestination();
    (*(*(v13 - 8) + 8))(v7, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_1000073E8(a1, v33);
  sub_100005744(0, &qword_1009868D0);
  if (swift_dynamicCast())
  {
    v14 = a2;
    v15 = v31;
    v16 = String._bridgeToObjectiveC()();
    v28 = v15;
    v17 = [v15 valueForKey:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    a2 = v14;
    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v18 = v30;
        if (v11 != v12)
        {
          v20 = v29;
          v21 = sub_100005744(0, &qword_1009868D8);
          v22 = v28;
          v23 = a2;
          v24 = NSDictionary.init(dictionary:)();
          *&v33[0] = v20;
          *(&v33[0] + 1) = v18;

          v25._object = 0x8000000100814ED0;
          v25._countAndFlagsBits = 0xD000000000000013;
          String.append(_:)(v25);

          v26 = String._bridgeToObjectiveC()();

          *&v33[0] = 0x6D61726150797562;
          *(&v33[0] + 1) = 0xE900000000000073;
          [v24 __swift_setObject:v26 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

          swift_unknownObjectRelease();
          v23[3] = v21;

          *v23 = v24;
          return (*(v5 + 8))(v10, v4);
        }

        (*(v5 + 8))(v10, v4);
      }

      else
      {
        (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
      (*(v5 + 8))(v10, v4);

      sub_10002B894(v33, &unk_1009711D0);
    }
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }

  return sub_1000073E8(a1, a2);
}

uint64_t sub_1004711F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5360;
  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v10, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v12 = &type metadata for String;
  v10 = a3;
  v11 = a4;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v10, &unk_1009711D0);
  Logger.debug(_:)();
}

unint64_t sub_100471438()
{
  result = qword_1009868C8;
  if (!qword_1009868C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868C8);
  }

  return result;
}

id sub_10047148C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100471574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v54 = a2;
  v52 = a1;
  v5 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ActionMetrics();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpenableDestination();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AdamId();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LegacyAppState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InAppPurchaseState();
  v53 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
  result = static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.getter();
  if (result)
  {
    v50 = v19;
    v37 = v7;
    v38 = v10;
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    v39 = a4;
    inject<A, B>(_:from:)();
    v23 = v55;
    swift_getObjectType();
    v51 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v49 = v23;
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)();
    if ((InAppPurchaseState.hasBeenPurchased.getter() & 1) != 0 || (swift_getObjectType(), dispatch thunk of AppStateMachine.currentState.getter(), v24 = LegacyAppState.hasBeenPurchased.getter(), (*(v16 + 8))(v18, v15), (v24)) && (swift_getObjectType(), dispatch thunk of AppStateMachine.currentState.getter(), v25 = LegacyAppState.isLocalApplication.getter(), (*(v16 + 8))(v18, v15), (v25))
    {
      (*(v40 + 16))(v44, v54, v41);
      (*(v42 + 104))(v48, enum case for OpenableDestination.app(_:), v43);
      if (InAppPurchaseAction.installRequiredAction.getter())
      {
        v26 = v37;
        Action.actionMetrics.getter();

        v28 = v46;
        v27 = v47;
        (*(v46 + 56))(v26, 0, 1, v47);
        (*(v28 + 32))(v38, v26, v27);
        v29 = v50;
      }

      else
      {
        v31 = v46;
        v30 = v47;
        v32 = v37;
        (*(v46 + 56))(v37, 1, 1, v47);
        static ActionMetrics.notInstrumented.getter();
        v33 = (*(v31 + 48))(v32, 1, v30);
        v29 = v50;
        if (v33 != 1)
        {
          sub_10002B894(v32, &unk_100993040);
        }
      }

      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v34 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      v35 = sub_1005D0478(v34, 1, v39);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v21, v29);
      return v35;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v53 + 8))(v21, v50);
      return 0;
    }
  }

  return result;
}

unint64_t sub_100471BDC()
{
  result = qword_1009868E0;
  if (!qword_1009868E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868E0);
  }

  return result;
}

uint64_t sub_100471C38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_100471C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100471D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100471D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100471DC0(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v5, *(v5 + 24));
  AnyDimension.value(with:)();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v59 = *(v13 + 104);
  v59(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  CGFloat.rounded(_:toScale:)();
  v60 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_10002A400(v6 + 5, v6[8]);
  AnyDimension.value(with:)();
  v59(v15, v16, v12);
  [a1 displayScale];
  CGFloat.rounded(_:toScale:)();
  v55 = v19;
  v18(v15, v12);
  sub_10002A400(v6 + 13, v6[16]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v58 = v20;
  v56 = v21;
  v23 = v22 + 4.0;
  sub_10002A400(v6 + 18, v6[21]);
  v24 = a4;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v27 = v25;
  v59 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v52 = v29;
  v53 = v26;
  v57 = v25;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  v31 = CGRectGetMinX(v61) + (v23 - v30) * 0.5;
  v32 = v60;
  v50 = v60 - v56;
  v51 = v31;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  MinX = CGRectGetMinX(v62);
  v54 = v32 + v55;
  v55 = v32 + v55 - v53;
  v56 = MinX + (v23 - v27) * 0.5;
  v63.origin.x = a2;
  v63.origin.y = a3;
  v47 = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v34 = CGRectGetWidth(v63) - v23 - *(v5 + 88);
  sub_10002A400((v5 + 184), *(v5 + 208));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v60 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = v24;
  v64.size.height = a5;
  v40 = CGRectGetMaxX(v64) - v39;
  v41 = v54 - v38;
  v48 = v41;
  v49 = v39;
  sub_10002A400((v5 + 224), *(v5 + 248));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v46 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v54 = v44;
  v65.origin.x = a2;
  v65.origin.y = v47;
  v65.size.width = v24;
  v65.size.height = a5;
  v53 = CGRectGetMaxX(v65) - v44;
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v39;
  v66.size.height = v60;
  CGRectGetMinY(v66);
  sub_10002A400((v5 + 104), *(v5 + 128));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 144), *(v5 + 168));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 184), *(v5 + 208));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 224), *(v5 + 248));
  CGRect.withLayoutDirection(using:relativeTo:)();
  return dispatch thunk of Placeable.place(at:with:)();
}

double sub_100472318(double a1)
{
  v2 = v1;
  sub_10002A400(v1, v1[3]);
  AnyDimension.value(with:)();
  sub_10002A400(v2 + 5, v2[8]);
  AnyDimension.value(with:)();
  sub_10002A400(v2 + 18, v2[21]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  return a1;
}

uint64_t sub_1004723FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100472554();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100472454()
{
  result = qword_1009868E8;
  if (!qword_1009868E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868E8);
  }

  return result;
}

unint64_t sub_1004724AC()
{
  result = qword_1009868F0;
  if (!qword_1009868F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868F0);
  }

  return result;
}

unint64_t sub_100472554()
{
  result = qword_1009868F8;
  if (!qword_1009868F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868F8);
  }

  return result;
}

uint64_t sub_1004725A8()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D1DA8 = v0;
  unk_1009D1DB0 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D1D90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100472664(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView]];

  v14 = [v11 contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView]];

  return v11;
}

id sub_100472980()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView];
  v12 = sub_1000AB0CC();
  v14 = v13;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MinX = CGRectGetMinX(v39);
  v35 = v6;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MinY = CGRectGetMinY(v40);
  v37 = MinX;
  v16 = MinX;
  v17 = v12;
  v18 = v14;
  [v11 setFrame:v16];
  if (qword_10096E4D0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D1D90, qword_1009D1DA8);
  v19 = [v1 traitCollection];
  AnyDimension.value(with:)();
  v21 = v20;

  v41.origin.x = v4;
  v41.origin.y = v35;
  v41.size.width = v8;
  v41.size.height = v10;
  Height = CGRectGetHeight(v41);
  v42.origin.y = MinY;
  v42.origin.x = v37;
  v42.size.width = v17;
  v42.size.height = v18;
  v23 = Height - (v21 + CGRectGetHeight(v42));
  v24 = *&v1[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView];
  v43.origin.x = v4;
  v43.origin.y = v35;
  v43.size.width = v8;
  v43.size.height = v10;
  [v24 sizeThatFits:{CGRectGetWidth(v43), v23}];
  v26 = v25;
  v28 = v27;
  v44.origin.x = v4;
  v44.origin.y = v35;
  v44.size.width = v8;
  v44.size.height = v10;
  v29 = CGRectGetMinX(v44);
  v45.origin.y = MinY;
  v45.origin.x = v37;
  v45.size.width = v17;
  v45.size.height = v18;
  MaxY = CGRectGetMaxY(v45);
  sub_10002A400(qword_1009D1D90, qword_1009D1DA8);
  v31 = [v1 traitCollection];
  AnyDimension.value(with:)();
  v33 = v32;

  return [v24 setFrame:{v29, MaxY + v33, v26, v28}];
}

id sub_100472C7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100472D20(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = &_swiftEmptyArrayStorage;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  return v1;
}

uint64_t sub_100472F04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 48;
    while (v6 < *(v3 + 16))
    {
      swift_unknownObjectRetain();
      v8 = TodayCardOverlay.Kind.rawValue.getter();
      v9 = TodayCardOverlay.Kind.rawValue.getter();
      result = swift_unknownObjectRelease();
      if (v8 == v9)
      {

        swift_beginAccess();
        v11 = sub_100547CA0(v6);
        v13 = v12;
        swift_endAccess();
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 136);
        swift_unknownObjectRetain();
        v15(ObjectType, v13);
        swift_unknownObjectRelease();
        return v11;
      }

      ++v6;
      v7 += 24;
      if (v4 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_100473600(a1);
    return (*(v10 + 8))();
  }

  return result;
}

uint64_t sub_100473080(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    if ((a4 & 1) == 0)
    {
      v7 = result;
      result = swift_beginAccess();
      v8 = *(v4 + 24);
      v9 = *(v8 + 2) + 1;
      if (v9 < *(v4 + 16))
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_100033D18(0, v9, 1, v8);
          *(v4 + 24) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_100033D18((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v8 = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[24 * v11];
        *(v14 + 4) = v7;
        *(v14 + 5) = a2;
        *(v14 + 6) = a3;
        *(v4 + 24) = v8;
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_100473194()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100473200(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10047332C()
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 80))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_1004733BC()
{
}

uint64_t sub_1004733EC()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100473478@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v11[1];
  v7 = UITraitCollection.isSizeClassRegular.getter();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v8 = 0;
  }

  v9 = type metadata accessor for ComponentSeparator();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_100473600(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return type metadata accessor for TodayCardArcadeLockupOverlayView();
      }

      if (a1 != 7)
      {
        goto LABEL_17;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 4)
    {
      return type metadata accessor for TodayCardActionOverlayView();
    }

    else
    {
      return type metadata accessor for TodayCardThreeLineOverlayView();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return type metadata accessor for TodayCardMarketingLockupOverlayView();
        }

LABEL_17:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 2)
    {
      return type metadata accessor for TodayCardChinLockupListView(0);
    }

    else
    {
      return type metadata accessor for TodayCardParagraphOverlayView();
    }
  }
}

uint64_t sub_100473734(uint64_t a1, void *a2)
{
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v44 = sub_10002849C(&unk_100982A90);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - v3;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v54 = &v41 - v5;
  v6 = type metadata accessor for FlowOrigin();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FlowPresentationContext();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for FlowPage();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = type metadata accessor for URL();
  v57 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph);
  if (result)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    v56 = result;

    _StringGuts.grow(_:)(29);

    *&v60 = 0xD00000000000001BLL;
    *(&v60 + 1) = 0x8000000100815260;
    String.append(_:)(v55);
    URL.init(string:)();

    result = (*(v57 + 48))(v24, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = v57;
      (*(v57 + 32))(v27, v24, v25);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v30 = *(v16 + 104);
      v41 = v18;
      v30(v18, enum case for FlowPage.product(_:), v15);
      v31 = *(v29 + 16);
      v55._object = v27;
      v31(v21, v27, v25);
      (*(v29 + 56))(v21, 0, 1, v25);
      v32 = type metadata accessor for ReferrerData();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
      v58 = 0u;
      v59 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (*(v46 + 104))(v45, enum case for FlowPresentationContext.infer(_:), v47);
      (*(v48 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v49);
      (*(v52 + 104))(v51, enum case for FlowOrigin.inapp(_:), v53);
      static FlowActionPresentation.stackPush.getter();
      v33 = type metadata accessor for FlowAction();
      swift_allocObject();
      v34 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v35 = sub_10002849C(&unk_100974490);
      v36 = v54;
      BaseObjectGraph.optional<A>(_:)();
      v37 = *(v35 - 8);
      if ((*(v37 + 48))(v36, 1, v35) == 1)
      {
        (*(v57 + 8))(v55._object, v25);

        return sub_10002B894(v36, &unk_100972A00);
      }

      else
      {
        *(&v61 + 1) = v33;
        v62 = sub_10047570C(&qword_100986BA0, 255, &type metadata accessor for FlowAction);
        *&v60 = v34;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        (*(v42 + 104))(v43, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v44);

        ActionDispatcher.perform(_:withMetrics:asPartOf:)();

        (*(v38 + 8))(v39, v40);
        (*(v57 + 8))(v55._object, v25);
        sub_100007000(&v60);
        return (*(v37 + 8))(v36, v35);
      }
    }
  }

  return result;
}

uint64_t sub_10047403C(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10002849C(&qword_100978EF8);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100005A38(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10002A400(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_100007000(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10002B894(&v11, &unk_100986B90);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004741CC(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10002849C(&qword_100978F00);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100005A38(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10002A400(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_100007000(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10002B894(&v11, &unk_100986B80);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_10047435C()
{
  v1 = v0;
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for StoreTab();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 viewControllers];
  sub_100065AF0();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(v9 + 32);
  }

  v28 = v10;

  type metadata accessor for TabPlaceholderViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph];
    if (v12)
    {
      v8 = v4;
      v13 = v4[2];
      v26 = v11;
      v13(v7, v11 + OBJC_IVAR____TtC8AppStore28TabPlaceholderViewController_storeTab, v3);

      v14 = [v1 traitCollection];
      v27 = v12;
      v15 = sub_1001F51DC(v14, 0, v12);

      if (v15)
      {
        v16 = [v26 tabBarItem];
        [v15 setTabBarItem:v16];

        sub_10002849C(&qword_100973210);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1007B0B70;
        *(v17 + 32) = v15;
        v18 = v15;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v1 setViewControllers:isa animated:0];

LABEL_15:
        (*(v8 + 1))(v7, v3);
        return;
      }

      v26 = v13;
      if (qword_10096D120 == -1)
      {
LABEL_14:
        v21 = type metadata accessor for OSLogger();
        sub_1000056A8(v21, qword_1009CE218);
        sub_10002849C(&unk_100972A10);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v22._object = 0x8000000100815210;
        v22._countAndFlagsBits = 0xD000000000000041;
        LogMessage.StringInterpolation.appendLiteral(_:)(v22);
        v29[3] = v3;
        v23 = sub_1000056E0(v29);
        v26(v23, v7, v3);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002B894(v29, &unk_1009711D0);
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v24);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        goto LABEL_15;
      }

LABEL_22:
      swift_once();
      goto LABEL_14;
    }
  }

  v20 = v28;
}

void sub_100474A40(int a1, id a2)
{
  v3 = [a2 navigationBar];
  [a2 pageMarginInsets];
  [v3 setLayoutMargins:?];
}

uint64_t sub_100474CBC(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for StoreNavigationController();
  v3 = objc_msgSendSuper2(&v12, "popToRootViewControllerAnimated:", a1 & 1);
  if (v3)
  {
    v4 = v3;
    sub_100065AF0();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  v6 = [v1 viewControllers];
  sub_100065AF0();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    v11 = [v10 contentScrollView];
    [v11 _scrollToTopIfPossible:a1 & 1];

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_100474E94(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [v2 viewControllers];
    sub_100065AF0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 > 1;
  }

  else
  {
    sub_10006C234(a2, v19);
    v9 = v20;
    if (v20)
    {
      v10 = sub_10002A400(v19, v20);
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100007000(v19);
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for StoreNavigationController();
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, "canPerformAction:withSender:", a1, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

id sub_100475338()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100475430(char a1)
{
  v2 = [*v1 popViewControllerAnimated:a1 & 1];

  return v2;
}

id sub_100475470()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v14 = *&v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 16];
  v3 = v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 32];
  result = [v0 layoutMargins];
  if ((v3 & 1) != 0 || (v7.f64[1] = v8, v5.f64[1] = v6, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v5), vceqq_f64(v14, v7)))) & 1) == 0))
  {
    [v0 layoutMargins];
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    *(v2 + 3) = v12;
    v2[32] = 0;
    v15.receiver = v0;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "layoutMarginsDidChange");
  }

  return result;
}

uint64_t sub_10047570C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double *sub_100475754(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_100005744(0, &qword_100972EB0);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v11 = sub_100475754(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_100097060(&unk_100986C00, &qword_100986BF8);
              for (j = 0; j != v20; ++j)
              {
                sub_10002849C(&qword_100986BF8);
                v24 = sub_100548E5C(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_100005744(0, &qword_100986BF0);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100475CD4(void *a1)
{
  v113 = type metadata accessor for DispatchWorkItemFlags();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DispatchQoS();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchTime();
  v108 = *(v116 - 8);
  __chkstk_darwin(v116);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v107 = &v94 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect + 32])
  {
    v118.origin.x = v14;
    v118.origin.y = v16;
    v118.size.width = v18;
    v118.size.height = v20;
    v28 = CGRectGetWidth(v118) * 0.3;
    v119.origin.x = v14;
    v119.origin.y = v16;
    v119.size.width = v18;
    v119.size.height = v20;
    v29 = CGRectGetHeight(v119) * 0.3;
    v120.origin.x = v14;
    v120.origin.y = v16;
    v120.size.width = v18;
    v120.size.height = v20;
    v121 = CGRectInset(v120, v28, v29);
    x = v121.origin.x;
    y = v121.origin.y;
    width = v121.size.width;
    height = v121.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v106 = v1;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v122.origin.x = v14;
  v122.origin.y = v16;
  v122.size.width = v18;
  v122.size.height = v20;
  v105 = CGRectGetWidth(v122);
  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  v99 = CGRectGetWidth(v123);
  v124.origin.x = v14;
  v124.origin.y = v16;
  v124.size.width = v18;
  v124.size.height = v20;
  v97 = CGRectGetHeight(v124);
  v125.origin.x = x;
  v125.origin.y = y;
  v125.size.width = width;
  v125.size.height = height;
  v96 = CGRectGetHeight(v125);
  v126.origin.x = v14;
  v126.origin.y = v16;
  v126.size.width = v18;
  v126.size.height = v20;
  MidX = CGRectGetMidX(v126);
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  v34 = CGRectGetMidX(v127);
  v128.size.height = v20;
  v35 = v34;
  *&v104 = v14;
  v128.origin.x = v14;
  v103 = v16;
  v128.origin.y = v16;
  v102 = v18;
  v128.size.width = v18;
  v101 = v128.size.height;
  MidY = CGRectGetMidY(v128);
  v114 = x;
  v129.origin.x = x;
  v98 = y;
  v129.origin.y = y;
  v115 = width;
  v129.size.width = width;
  v100 = height;
  v129.size.height = height;
  v37 = CGRectGetMidY(v129);
  v38 = sqrt((v105 - v99) * (v105 - v99) + (v97 - v96) * (v97 - v96));
  v39 = sqrt((MidX - v35) * (MidX - v35) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v39 = v38;
  }

  v99 = v39 / 0.7 / v39;
  v40 = [a1 viewForKey:UITransitionContextToViewKey];
  v41 = *&v40;
  if (*&v40 != 0.0)
  {
    v42 = v40;
    v43 = [a1 containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v42 setFrame:{v45, v47, v49, v51}];
    v52 = v42;
    v53 = [a1 containerView];
    [v53 insertSubview:v52 below:v12];
  }

  v105 = v41;
  v54 = v114;
  v130.origin.x = v114;
  v55 = v98;
  v130.origin.y = v98;
  v130.size.width = v115;
  v56 = v100;
  v130.size.height = v100;
  MinY = CGRectGetMinY(v130);
  v58 = *&v104;
  *&v131.origin.x = v104;
  v59 = v103;
  v131.origin.y = v103;
  v60 = v102;
  v131.size.width = v102;
  v61 = v101;
  v131.size.height = v101;
  v62 = MinY - CGRectGetMinY(v131);
  v132.origin.x = v54;
  v132.origin.y = v55;
  v63 = v115;
  v132.size.width = v115;
  v132.size.height = v56;
  v64 = CGRectGetMidX(v132);
  v133.origin.x = v58;
  v133.origin.y = v59;
  v133.size.width = v60;
  v133.size.height = v61;
  v65 = CGRectGetMidX(v133);
  CATransform3DMakeTranslation(&aBlock, v64 - v65, v62, 0.0);
  v26[3] = v59;
  v134.origin.x = v58;
  v134.origin.y = v59;
  v134.size.width = v60;
  v134.size.height = v61;
  v66 = CGRectGetWidth(v134);
  v135.origin.x = v114;
  v135.origin.y = v59;
  v135.size.width = v63;
  v135.size.height = v56;
  v67 = CGRectGetWidth(v135);
  v115 = *&v26;
  v26[2] = v58 + (v66 - v67) * 0.5;
  v68 = String._bridgeToObjectiveC()();
  v69 = [objc_opt_self() animationWithKeyPath:v68];

  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 valueWithCATransform3D:&aBlock];
  [v71 setToValue:v72];

  [v71 setDamping:16.0];
  [v71 setMass:1.0];
  [v71 setStiffness:150.0];
  [v71 setInitialVelocity:v99];
  v73 = v71;
  [v73 settlingDuration];
  [v73 setDuration:?];
  [v73 setFillMode:kCAFillModeForwards];
  [v73 setRemovedOnCompletion:0];

  if (v12)
  {
    v74 = [v12 layer];
    v75 = String._bridgeToObjectiveC()();
    [v74 addAnimation:v73 forKey:v75];
  }

  [v73 settlingDuration];
  sub_100005744(0, &qword_1009729E0);
  *&v104 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
  static DispatchTime.now()();
  v76 = v107;
  + infix(_:_:)();
  v114 = v108[1];
  (*&v114)(v7, v116);
  v77 = swift_allocObject();
  v78 = v106;
  *(v77 + 16) = a1;
  *(v77 + 24) = v78;
  *&aBlock.m21 = sub_10017BBF0;
  *&aBlock.m22 = v77;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008C4490;
  v79 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v108 = v78;

  static DispatchQoS.unspecified.getter();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  v80 = v12;
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  v81 = v110;
  v82 = v113;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v83 = v104;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v79);

  (*(v112 + 8))(v81, v82);
  (*(v109 + 8))(v5, v111);
  (*&v114)(v76, v116);
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  v86 = v108;
  *(v85 + 2) = v108;
  *(v85 + 3) = v80;
  v85[4] = v115;
  *&aBlock.m21 = sub_100476D64;
  *&aBlock.m22 = v85;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008C44E0;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v80;

  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  *&aBlock.m21 = sub_100476D70;
  *&aBlock.m22 = v90;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100504C5C;
  *&aBlock.m14 = &unk_1008C4530;
  v91 = _Block_copy(&aBlock);
  v92 = v89;

  [v84 animateWithDuration:131201 delay:v87 options:v91 animations:0.35 completion:0.0];

  _Block_release(v91);
  _Block_release(v87);
}

id sub_100476948(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    swift_beginAccess();
    result = [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect + 32) == 1)
    {
      return [a2 setAlpha:0.0];
    }
  }

  return result;
}

void sub_100476A70(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_100005744(0, &qword_100972EB0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100475754(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *&v4[v9 + 4];
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

id sub_100476D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100476DB0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_1000417F0(a1, &v16 - v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_10022C934(a1);
  if (v14)
  {
  }

  return v14;
}

char *sub_100477164(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel;
  if (qword_10096E190 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v10, qword_1009D1430);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel();
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_1002F5B8C(v13, 0, 0);
  v19 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel;
  if (qword_10096E198 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v10, qword_1009D1448);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_1002F5B8C(v13, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel];
  sub_100028BB8();
  v29 = v28;
  v30 = static UIColor.secondaryText.getter();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel];
  v33 = static UIColor.secondaryText.getter();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_1004774AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel();
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_10047763C(v14, v13, v17);
  sub_100007000(v13);
  sub_100007000(v14);
  sub_10002A400(v17, v17[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v4 + 8))(v7, v3);
  return sub_100007000(v17);
}

uint64_t sub_10047763C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v89 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v102 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for FontSource();
  v113 = *(v110 - 8);
  __chkstk_darwin(v110);
  v101 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10096FE38);
  v15 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v91 = *(v15 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B1E00;
  v92 = v17;
  v106 = v17 + v16;
  v19 = a1[3];
  v18 = a1[4];
  v20 = sub_10002A400(a1, v19);
  v122 = v19;
  v21 = *(v18 + 8);
  v22 = v12;
  v23 = v14;
  v123 = v21;
  v24 = sub_1000056E0(&v121);
  (*(*(v19 - 8) + 16))(v24, v20, v19);
  v25 = *(v22 + 104);
  v109 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v111 = v11;
  v108 = v22 + 104;
  v107 = v25;
  v25(v14);
  v112 = v8;
  v26 = v8 + 104;
  v27 = *(v8 + 104);
  v28 = v10;
  v105 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v88 = v7;
  v104 = v26;
  v103 = v27;
  v27(v10);
  if (qword_10096E190 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_1009D1430);
  v31 = *(v29 - 8);
  v32 = v101;
  v86 = *(v31 + 16);
  v85 = v31 + 16;
  v86(v101, v30, v29);
  v33 = v113;
  v34 = *(v113 + 104);
  v84 = enum case for FontSource.useCase(_:);
  v35 = v110;
  v83 = v113 + 104;
  v82 = v34;
  v34(v32);
  v81 = type metadata accessor for StaticDimension();
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v118);
  *(&v116 + 1) = v35;
  v117 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(&v115);
  v37 = *(v33 + 16);
  v80 = v33 + 16;
  v79 = v37;
  v37(v36, v32, v35);
  StaticDimension.init(_:scaledLike:)();
  v38 = *(v33 + 8);
  v113 = v33 + 8;
  v78 = v38;
  v38(v32, v35);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v39 = sub_10002849C(&unk_10097E8A0);
  v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v41 = v40 + *(v4 + 72);
  v75 = *(v4 + 80);
  v76 = v39;
  v74 = v41;
  v42 = swift_allocObject();
  v73 = xmmword_1007B10D0;
  *(v42 + 16) = xmmword_1007B10D0;
  v77 = v40;
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114 = v42;
  v43 = sub_1001A25E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v44 = sub_10002849C(&unk_10097E8B0);
  v45 = sub_1000ED83C();
  v46 = v102;
  v98 = v44;
  v96 = v45;
  v47 = v89;
  v100 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v48 = *(v4 + 8);
  v94 = v4 + 8;
  v99 = v48;
  v48(v46, v47);
  sub_100036530(&v115);
  v49 = v112 + 8;
  v50 = v88;
  v97 = *(v112 + 8);
  v97(v28, v88);
  v51 = *(v22 + 8);
  v52 = v22 + 8;
  v53 = v111;
  v95 = v51;
  v87 = v52;
  v51(v23, v111);
  sub_100007000(&v118);
  sub_100007000(&v121);
  v54 = v47;
  v55 = v23;
  v56 = v90[3];
  v57 = v90[4];
  v58 = sub_10002A400(v90, v56);
  v122 = v56;
  v123 = *(v57 + 8);
  v59 = sub_1000056E0(&v121);
  (*(*(v56 - 8) + 16))(v59, v58, v56);
  v107(v55, v109, v53);
  v103(v28, v105, v50);
  v60 = v28;
  if (qword_10096E198 != -1)
  {
    swift_once();
  }

  v61 = sub_1000056A8(v29, qword_1009D1448);
  v62 = v101;
  v86(v101, v61, v29);
  v63 = v110;
  v82(v62, v84, v110);
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v118);
  *(&v116 + 1) = v63;
  v117 = &protocol witness table for FontSource;
  v64 = sub_1000056E0(&v115);
  v79(v64, v62, v63);
  StaticDimension.init(_:scaledLike:)();
  v78(v62, v63);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v65 = swift_allocObject();
  *(v65 + 16) = v73;
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114 = v65;
  v66 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v99(v66, v54);
  sub_100036530(&v115);
  v97(v60, v50);
  v67 = v111;
  v112 = v49;
  v95(v55, v111);
  sub_100007000(&v118);
  sub_100007000(&v121);
  v68 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v69 = LayoutViewPlaceholder.init(representing:)();
  v122 = v68;
  v123 = &protocol witness table for LayoutViewPlaceholder;
  v121 = v69;
  v103(v60, v105, v50);
  v119 = &type metadata for CGFloat;
  v120 = &protocol witness table for CGFloat;
  v117 = 0;
  v118 = 0x4032000000000000;
  v115 = 0u;
  v116 = 0u;
  v114 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v107(v55, v109, v67);
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v95(v55, v67);
  v99(v66, v54);
  sub_100036530(&v115);
  v97(v60, v50);
  sub_100007000(&v118);
  sub_100007000(&v121);
  v70 = type metadata accessor for _VerticalFlowLayout();
  v71 = v93;
  v93[3] = v70;
  v71[4] = sub_1001A25E0(&qword_100975328, &type metadata accessor for _VerticalFlowLayout);
  v71[5] = sub_1001A25E0(&qword_100978040, &type metadata accessor for _VerticalFlowLayout);
  sub_1000056E0(v71);
  return _VerticalFlowLayout.init(expandChildrenToFit:children:)();
}

double sub_100478358()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel);
  v10 = type metadata accessor for DynamicTypeLinkedLabel();
  v11 = &protocol witness table for UILabel;
  v8[4] = &protocol witness table for UILabel;
  v9[0] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel);
  v8[3] = v10;
  v8[0] = v2;
  v3 = v1;
  v4 = v2;
  sub_10047763C(v9, v8, v12);
  sub_100007000(v8);
  sub_100007000(v9);
  sub_10002A400(v12, v12[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v6 = v5;
  sub_100007000(v12);
  return v6;
}

void sub_100478560()
{
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel;
  if (qword_10096E190 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v1, qword_1009D1430);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel();
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_1002F5B8C(v4, 0, 0);
  v10 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel;
  if (qword_10096E198 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v1, qword_1009D1448);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_1002F5B8C(v4, 0, 0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for SearchLandingLayoutSectionProvider()
{
  result = qword_100986C70;
  if (!qword_100986C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1004787E4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10)
{
  v124 = a7;
  v121 = a8;
  v122 = a5;
  v118 = a4;
  v125 = a3;
  v127 = a2;
  v123 = a10;
  v120 = a9;
  v129 = type metadata accessor for ItemLayoutContext();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v13 - 8);
  v110 = &v106 - v14;
  v108 = type metadata accessor for PageGrid();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Shelf.ContentType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v116 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = sub_10002849C(&unk_1009731F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v23 + 8);
  v115 = v23 + 8;
  v113 = v28;
  v28(v27, v22);
  v112 = *(v17 + 88);
  v29 = v112(v21, v16);
  v126 = v17;
  v119 = v21;
  if (v29 != enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_20;
  }

  v30 = ASKDeviceTypeGetCurrent();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
    goto LABEL_4;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = v126;
  if ((v36 & 1) == 0)
  {
    v30 = ASKDeviceTypeGetCurrent();
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
    if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
    {
LABEL_4:

      v35 = v126;
      goto LABEL_6;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v35 = v126;
    if ((v67 & 1) == 0)
    {
LABEL_20:
      v129 = &v106;
      __chkstk_darwin(v29);
      __chkstk_darwin(v68);
      type metadata accessor for BasePageLayoutSectionProvider();
      v69 = method lookup function for BasePageLayoutSectionProvider();
      v70 = v118;
      v71 = a6;
      v117 = a6;
      v72 = v124;
      v128 = v69(a1, sub_10002F0EC, &v106 - 4, v118, v122, v71, v124, v121, v120, v123);
      v73 = v114;
      ShelfLayoutContext.shelf.getter();
      swift_getKeyPath();
      v74 = v116;
      ReadOnlyLens.subscript.getter();

      v113(v73, v22);
      v75 = v112(v74, v16);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v127();
        v62 = sub_10040C1D8(a1, v76, v70, v122, v117, v72, v121, v120, v123);
      }

      else
      {
        v77 = v128;
        v78 = v117;
        if (v75 != enum case for Shelf.ContentType.ribbonFlow(_:))
        {
          v35 = v126;
          if (v75 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            v62 = v128;
            [v128 setOrthogonalScrollingBehavior:2];
          }

          else
          {
            (*(v126 + 8))(v116, v16);
            v62 = v77;
          }

          goto LABEL_25;
        }

        v79 = v127();
        v62 = sub_10040D51C(a1, v79, v118, v122, v78, v124, v121, v120, v123);
      }

      v35 = v126;
LABEL_25:
      v21 = v119;
      goto LABEL_26;
    }
  }

LABEL_6:
  v37 = (v127)(v29);
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  v114 = v38;
  if (v38)
  {
    v117 = a6;
    v115 = a1;
    v116 = v16;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100144108(0, v38, 0);
    v127 = type metadata accessor for SearchActionContentView(0);
    v39 = aBlock[0];
    v40 = *(v109 + 16);
    v41 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v125 = v37;
    v42 = v37 + v41;
    v43 = *(v109 + 72);
    v44 = v38;
    v45 = (v109 + 8);
    do
    {
      v47 = v128;
      v46 = v129;
      v40(v128, v42, v129);
      v48 = sub_100448E18(v47);
      (*v45)(v47, v46);
      aBlock[0] = v39;
      v50 = *(v39 + 2);
      v49 = *(v39 + 3);
      if (v50 >= v49 >> 1)
      {
        sub_100144108((v49 > 1), v50 + 1, 1);
        v39 = aBlock[0];
      }

      *(v39 + 2) = v50 + 1;
      v39[v50 + 4] = v48;
      v42 += v43;
      --v44;
    }

    while (v44);
    v16 = v116;
    v37 = v125;
    v35 = v126;
    v21 = v119;
    a1 = v115;
  }

  v51 = COERCE_DOUBLE(sub_1003E616C(v39));
  if ((v52 & 1) != 0 || v51 <= 0.0)
  {

    sub_100005744(0, &unk_100990AB0);
    v59 = type metadata accessor for ShelfLayoutContext();
    v60 = *(v59 - 8);
    v61 = v110;
    (*(v60 + 16))(v110, a1, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
    sub_1004795D4(v61);
    goto LABEL_26;
  }

  v125 = v37;
  v53 = *&v51;
  v54 = v107;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v56 = v55;
  v57 = *(v111 + 8);
  v111 += 8;
  v128 = v57;
  (v57)(v54, v108);
  if (v56 >= 2.0)
  {

    v58 = v122;
    v81 = v114;
    if (v114)
    {
      v82 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v82 + 16) = v81;
      v83 = (v82 + 32);
      if (v81 >= 4)
      {
        v84 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        v83 += v81 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v53);
        v86 = (v82 + 48);
        v87 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v86[-1] = v85;
          *v86 = v85;
          v86 += 2;
          v87 -= 4;
        }

        while (v87);
        if (v81 == v84)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v84 = 0;
      }

      v88 = v81 - v84;
      do
      {
        *v83++ = v53;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v58 = v122;
  }

LABEL_39:
  v89 = static ComponentLayoutBuilder.verticalLayoutGroup(for:withItemHeights:in:itemSupplementaryProvider:asPartOf:)();

  v90 = objc_opt_self();
  v129 = v89;
  v91 = [v90 sectionWithGroup:v89];
  swift_getObjectType();
  v92 = v58;
  dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &qword_10097F460);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v91 setBoundarySupplementaryItems:isa];

  v62 = v91;
  dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &unk_10097D670);
  v94 = Array._bridgeToObjectiveC()().super.isa;

  [v91 setDecorationItems:v94];

  v95 = v107;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  v97 = v96;
  v99 = v98;
  (v128)(v95, v108);
  sub_10002A400(v92, v92[3]);
  ShelfLayoutSpacingProvider.topPaddingValue(in:)();
  v101 = v100;
  sub_10002A400(v92, v92[3]);
  ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
  [v91 setContentInsets:{v101, v97, v102, v99}];
  BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
  v103 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
  v105 = v104;

  if (v103)
  {
    aBlock[4] = v103;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006BBC70;
    aBlock[3] = &unk_1008C4558;
    v103 = _Block_copy(aBlock);
  }

  v21 = v119;
  v35 = v126;
  [v62 setVisibleItemsInvalidationHandler:v103];
  _Block_release(v103);

LABEL_26:
  (*(v35 + 8))(v21, v16);
  return v62;
}