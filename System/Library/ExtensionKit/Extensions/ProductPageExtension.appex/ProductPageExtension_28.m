uint64_t sub_10032C4B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView);
  sub_100016F40(0, &qword_1009441F0);
  v5 = v4;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_10032C550(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v7 = sub_1007701BC();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (([v10 isHidden] & 1) != 0 || !objc_msgSend(v11, "isUserInteractionEnabled"))
      {
      }

      else
      {
        [v17 convertPoint:v11 toCoordinateSpace:{a2, a3}];
        v13 = [v11 pointInside:a1 withEvent:?];

        if (v13)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

uint64_t sub_10032C900(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10032C990(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView];
  if (v4)
  {
    [v4 removeFromSuperview];
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
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
    if (Strong)
    {
      [v8 insertSubview:v6 aboveSubview:Strong];
    }

    else
    {
      [v8 insertSubview:v6 aboveSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView]];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_10032CA74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v2 - 8);
  v102 = &v95[-v3];
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v95[-v9];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel] = 0;
  v11 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer] = 0;
  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock];
  *v12 = 0;
  v12[1] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer] = 0;
  v13 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer] = 0;
  v14 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
  v17 = enum case for MediaOverlayStyle.matchSystem(_:);
  v18 = sub_10076361C();
  (*(*(v18 - 8) + 104))(&v1[v16], v17, v18);
  v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter] = 0;
  v19 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] = v19;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView] = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView] = v20;
  v21 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] = v21;
  v22 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView] = v22;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] = [objc_allocWithZone(type metadata accessor for OverlayContentContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView] = v23;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = sub_10076D3DC();
  v103 = *(v24 - 8);
  v25 = v103 + 56;
  v26 = *(v103 + 56);
  v26(v10, 1, 1, v24);
  v27 = *(v5 + 104);
  v100 = (v5 + 104);
  v106 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  v96 = enum case for DirectionalTextAlignment.none(_:);
  v97 = v4;
  (v27)(v7);
  v29 = sub_1007626BC();
  v30 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel] = sub_1007626AC();
  v26(v10, 1, 1, v24);
  v106(v7, v28, v4);
  v31 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel] = sub_1007626AC();
  v101 = v24;
  v104 = v26;
  v105 = v25;
  v26(v10, 1, 1, v24);
  v106(v7, v96, v97);
  v32 = objc_allocWithZone(v29);
  v100 = v10;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel] = sub_1007626AC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton] = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
  v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView] = v33;
  type metadata accessor for SmallLockupView();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView] = v34;
  v35 = sub_1002B3CD0();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton] = v35;
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v41 = v37;
  [v41 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v41 setClipsToBounds:0];
  v42 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView;
  [*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView) setClipsToBounds:0];
  [*(v41 + v42) setContentInsetAdjustmentBehavior:2];
  [v41 addSubview:*(v41 + v42)];
  v43 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView;
  v44 = qword_10093F8D0;
  v45 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView);
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10076BCFC();
  v47 = sub_10000A61C(v46, qword_10099D510);
  v48 = *(v46 - 8);
  v49 = v102;
  (*(v48 + 16))(v102, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_10075F97C();

  v50 = *(v41 + v43);
  sub_10075F95C();

  [*(v41 + v42) addSubview:*(v41 + v43)];
  v102 = v42;
  v51 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView;
  [*(v41 + v42) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView)];
  v52 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView;
  [*(v41 + v51) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView)];
  v53 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView)];
  v54 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView;
  [*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView) setContentMode:2];
  [*(v41 + v54) setClipsToBounds:1];
  [*(v41 + v54) setAccessibilityIgnoresInvertColors:1];
  [*(v41 + v53) addSubview:*(v41 + v54)];
  v55 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView)];
  v56 = *(v41 + v51);
  v106 = v36;
  [v56 addSubview:v36];
  v57 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView;
  v58 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView);
  LOBYTE(v51) = v58[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  v58[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 1;
  v59 = v58;
  sub_1004B413C(v51);

  *(*(v41 + v57) + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100891398;
  swift_unknownObjectWeakAssign();
  [*(v41 + v55) addSubview:*(v41 + v57)];
  v60 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel;
  v61 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel);
  v62 = sub_100016F40(0, &qword_100942F10);
  v63 = v61;
  v64 = sub_100770CFC();
  v65 = [v64 colorWithAlphaComponent:0.7];

  [v63 setTextColor:v65];
  [*(v41 + v55) addSubview:*(v41 + v60)];
  v66 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel);
  v67 = sub_100770CFC();
  [v66 setTextColor:v67];

  v68 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton);
  [v68 addTarget:v41 action:"notifyMeButtonTapped:" forControlEvents:64];

  v69 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView;
  v70 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView);
  ObjectType = v62;
  v71 = sub_100770CFC();
  v72 = [v71 colorWithAlphaComponent:0.5];

  [v70 setBackgroundColor:v72];
  [*(v41 + v52) addSubview:*(v41 + v69)];
  v73 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView;
  v74 = qword_100940AE0;
  v75 = *(*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = v101;
  v77 = sub_10000A61C(v101, qword_1009A0EB0);
  v78 = *(v103 + 16);
  v79 = v100;
  v78(v100, v77, v76);
  v80 = v104;
  v104(v79, 0, 1, v76);
  sub_1007625DC();

  v81 = qword_100940AE8;
  v82 = *(*(v41 + v73) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = sub_10000A61C(v76, qword_1009A0EC8);
  v78(v79, v83, v76);
  v80(v79, 0, 1, v76);
  sub_1007625DC();

  v84 = *(*(v41 + v73) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v85 = sub_100770CFC();
  v86 = [v85 colorWithAlphaComponent:0.7];

  [v84 setTextColor:v86];
  v87 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView;
  v88 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView);
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 whiteColor];
  v92 = [v91 colorWithAlphaComponent:0.2];

  sub_1007638DC();
  v93 = *(v41 + v87);
  sub_1007638EC();

  [*(v41 + v87) setUserInteractionEnabled:0];
  [*(v41 + v87) setHidden:1];
  [*&v102[v41] addSubview:*(v41 + v87)];
  sub_1003260D0();
  sub_1003267F0();
  sub_100326E58();

  return v41;
}

void sub_10032D864()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing) = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_10076361C();
  (*(*(v8 - 8) + 104))(v0 + v6, v7, v8);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10032DA50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10077111C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock];
  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock];
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v3[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v3[v13] = 0;

    [v3 setNeedsLayout];
    v12 = *v11;
  }

  *v11 = a1;
  v11[1] = a2;
  sub_10001CE50(a1);
  result = sub_1000167E0(v12);
  if (*v11)
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton])
    {
      sub_100016F40(0, &qword_100947240);
      if (qword_10093FF40 != -1)
      {
        swift_once();
      }

      v18 = sub_10000A61C(v6, qword_100952950);
      swift_beginAccess();
      (*(v7 + 16))(v10, v18, v6);
      v19 = sub_10077112C();
      v20 = *&v3[v17];
      if (v20)
      {
        [v20 removeFromSuperview];
        v21 = *&v3[v17];
      }

      else
      {
        v21 = 0;
      }

      *&v3[v17] = v19;
      v22 = v19;

      sub_100016F40(0, &qword_100942F10);
      v23 = sub_100770CFC();
      v24 = [v23 colorWithAlphaComponent:0.7];

      [v22 setTintColor:v24];
      [v22 setHitTestInsets:{-10.0, -10.0, -10.0, -10.0}];
      [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] addSubview:v22];
      sub_100326E58();

      [v3 setNeedsLayout];
      result = *&v3[v17];
      if (result)
      {
        return [result addTarget:v3 action:"didTapShareButton:" forControlEvents:64];
      }
    }
  }

  return result;
}

void sub_10032DD5C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10032C900(&qword_100942810, type metadata accessor for VideoView);
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
      sub_100016F40(0, &qword_1009441F0);
      v5 = v4;
      v6 = sub_100770EEC();

      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];
        }

        [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView] setHidden:0];
        v9 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer;
        if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer])
        {
          [v5 removeGestureRecognizer:?];
          v10 = *&v1[v9];
        }

        else
        {
          v10 = 0;
        }

        *&v1[v9] = 0;

        v11 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView;
        v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
        if (v12)
        {
          [v12 removeFromSuperview];
          v13 = *&v1[v11];
        }

        else
        {
          v13 = 0;
        }

        *&v1[v11] = 0;

        [v1 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10032DF50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032DF94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10032DFAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10032DFE4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10032E03C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009505F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032E0A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10032E104()
{
  result = qword_100952B10;
  if (!qword_100952B10)
  {
    sub_100016F40(255, &qword_10094A280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952B10);
  }

  return result;
}

uint64_t sub_10032E194()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10032E1F0(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  [a1 contentInset];
  return (*(v1 + 16))(v4 + v6 + v7 > *(v1 + 32));
}

id sub_10032E26C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_10032E2D0();

  return v2;
}

id sub_10032E2D0()
{
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths;
  if (!*(*&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16))
  {
    return 0;
  }

  [v0 bounds];
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v2 = sub_100765C9C();
  sub_10000A61C(v2, qword_1009A04D8);
  v3 = [v0 traitCollection];
  sub_100765BDC();
  v5 = v4;

  v6 = *&v0[v1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();

    v11 = 0.0;
    v12 = 32;
    do
    {
      v13 = *(v6 + v12);
      v14 = [v8 absoluteDimension:{v13, v27}];
      v15 = [v8 absoluteDimension:v5];
      v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

      v17 = [v10 itemWithLayoutSize:v16];
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10077021C();
      }

      v11 = v11 + v13;
      sub_10077025C();

      v12 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
  }

  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v11];
  v21 = [v19 absoluteDimension:v5];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = objc_opt_self();
  sub_100016F40(0, &qword_100952C70);
  isa = sub_1007701AC().super.isa;

  v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

  v18 = [objc_opt_self() sectionWithGroup:v25];
  return v18;
}

void sub_10032E6B0()
{
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon])
  {
    swift_beginAccess();

    v2 = sub_10032EB68(v1);

    v3 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths;
    v4 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16);
    if (v2 >> 62)
    {
      if (v4 != sub_10077158C())
      {
        goto LABEL_31;
      }
    }

    else if (v4 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits];
    if (!v5)
    {
      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    [v0 bounds];
    CGRectGetMinX(v53);
    [v0 bounds];
    CGRectGetWidth(v54);
    v6 = [v0 traitCollection];
    [v6 displayScale];

    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator];
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = v7;
      [v0 bounds];
      sub_100770A4C();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      [v8 setFrame:{v10, v12, v14, v16}];
    }

    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator];
    if (v17)
    {
      v18 = v17;
      [v0 bounds];
      CGRectGetMaxY(v55);
      swift_unknownObjectRetain();
      [v0 bounds];
      sub_100770A4C();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      swift_unknownObjectRelease();
      [v18 setFrame:{v20, v22, v24, v26}];
    }

    [v5 pageMarginInsets];
    v28 = v27;
    [v5 pageMarginInsets];
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v30 = v28 + v29;
      if (!v4)
      {
        goto LABEL_19;
      }

      v31 = *&v0[v3];
      if (v4 <= *(v31 + 16))
      {
        if (v4 >= 4)
        {
          v32 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = (v31 + 48);
          v34 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = v30 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
            v33 += 4;
            v34 -= 4;
          }

          while (v34);
          if (v4 == v32)
          {
LABEL_19:
            [v0 bounds];
            Width = CGRectGetWidth(v56);
            v39 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
            v40 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
            if (v40)
            {
              v41 = (Width - v30) * 0.5;
              if (v41 < 0.0)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v41;
              }

              v43 = v40;
              [v0 bounds];
              MinY = CGRectGetMinY(v57);
              [v0 bounds];
              v45 = CGRectGetWidth(v58);
              if (v45 >= v30)
              {
                v46 = v30;
              }

              else
              {
                v46 = v45;
              }

              [v0 bounds];
              [v43 setFrame:{v42, MinY, v46, CGRectGetHeight(v59)}];

              v47 = *&v0[v39];
              if (v47)
              {
                v48 = v47;
                [v0 bounds];
                [v48 setScrollEnabled:CGRectGetWidth(v60) < v30];

                if (v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] == 1)
                {
                  v49 = *&v0[v39];
                  if (v49)
                  {
                    v50 = v49;

                    v51 = [v50 collectionViewLayout];

                    [v51 invalidateLayout];
                    swift_unknownObjectRelease();
LABEL_32:

                    return;
                  }

LABEL_40:
                  __break(1u);
                  return;
                }

                swift_unknownObjectRelease();
LABEL_31:

                goto LABEL_32;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          v32 = 0;
        }

        v35 = v4 - v32;
        v36 = (v31 + 8 * v32 + 32);
        do
        {
          v37 = *v36++;
          v30 = v30 + v37;
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }
}

void *sub_10032EB68(uint64_t a1)
{
  v25 = a1;
  v24 = sub_10076C45C();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_1007632BC();
  v8 = v7;
  v26 = _swiftEmptyArrayStorage;
  if (!(v7 >> 62))
  {
    v23 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_10077158C();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v22 = v8 & 0xC000000000000001;
  v11 = (v1 + 8);
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v21 = v12;
    v13 = v10;
    while (1)
    {
      if (v22)
      {
        v1 = sub_10077149C();
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v1 = *(v8 + 8 * v13 + 32);

        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v14 = v9;
      sub_10076B48C();
      v15 = sub_10076C44C();
      v16 = *v11;
      (*v11)(v6, v24);
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_10076B48C();
      if (*(v25 + 16))
      {
        v17 = sub_1006108B4(v3);
        if (v18)
        {
          break;
        }
      }

      v16(v3, v24);
      ++v13;
      v9 = v14;
      if (v10 == v14)
      {
        v12 = v21;
        goto LABEL_25;
      }
    }

    v19 = *(*(v25 + 56) + 8 * v17);

    v16(v3, v24);
    v1 = v19;
LABEL_16:
    sub_10077019C();
    v9 = v14;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
      v9 = v14;
    }

    sub_10077025C();
    v12 = v26;
  }

  while (v10 != v9);
LABEL_25:

  return v12;
}

uint64_t sub_10032EF38(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_10032F1F4(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3, void *a4)
{
  v5 = v4;
  v87 = a4;
  ObjectType = swift_getObjectType();
  v80 = sub_1007632CC();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076C45C();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v81 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel) = 1;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader) = a2;

  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph) = a3;
  v84 = a2;

  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon) = a1;
  v85 = a3;

  v88 = a1;
  v14 = sub_1007632BC();
  v15 = v14;
  v93[0] = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_16:
    v16 = sub_10077158C();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v90 = v5;
      v17 = 0;
      v5 = (v89 + 1);
      v91 = (v89 + 1);
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v20 = v93[0];
            v5 = v90;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        sub_10076B48C();
        v19 = sub_10076C44C();
        (*v5)(v13, v92);
        if (v19)
        {
          sub_1007714CC();
          sub_1007714FC();
          v5 = v91;
          sub_10077150C();
          sub_1007714DC();
        }

        else
        {
        }

        ++v17;
        if (v18 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_18:

  v21 = v86;
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = sub_10077158C();
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v22 = *(v20 + 16);
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_64;
  }

  v23 = 0;
  v90 = v20 & 0xC000000000000001;
  v91 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  v24 = v88;
  ++v89;
  v82 = v22;
  v83 = v20;
  do
  {
    if (v90)
    {
      sub_10077149C();
    }

    else
    {
    }

    sub_10076B48C();
    v30 = v91;
    swift_beginAccess();
    if (*(v5 + v30))[2] && (sub_1006108B4(v21), (v31))
    {
      swift_endAccess();
      v32 = *v89;

      v32(v21, v92);
    }

    else
    {
      swift_endAccess();
      (*v89)(v21, v92);
      v25 = v85;
      Badge.enrich(objectGraph:)(v85);
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = v24;
      v26[4] = v84;
      v26[5] = v25;
      v26[6] = v87;
      v27 = sub_100016F40(0, &qword_1009471F0);

      v21 = v86;

      v28 = v5;
      swift_unknownObjectRetain();
      v29 = sub_10077068C();
      v93[3] = v27;
      v93[4] = &protocol witness table for OS_dispatch_queue;
      v93[0] = v29;
      sub_10076FC6C();
      v22 = v82;

      sub_10000CD74(v93);
    }

    ++v23;
  }

  while (v22 != v23);
LABEL_32:

  v33 = v87;
  v34 = swift_getObjectType();
  v35 = [v33 snapshotPageTraitEnvironment];
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits) = v35;
  swift_unknownObjectRelease();
  if (sub_10076328C() & 1) != 0 && (sub_1007632AC())
  {
    v36 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator;
    v37 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator);
    if (!v37)
    {
      sub_100301570([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator);
      v37 = *(v5 + v36);
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    sub_100016F40(0, &qword_100942F10);
    v38 = v37;
    v39 = sub_100770CDC();
    [v38 setBackgroundColor:v39];
  }

  else
  {
    v40 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator;
    v41 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator);
    if (v41)
    {
      [v41 removeFromSuperview];
      v39 = *(v5 + v40);
    }

    else
    {
      v39 = 0;
    }

    *(v5 + v40) = 0;
  }

LABEL_42:
  if ((sub_10076329C() & 1) == 0 && *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) != 1 || (sub_1007632AC() & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator;
    v47 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator);
    if (v47)
    {
      [v47 removeFromSuperview];
      v45 = *(v5 + v46);
    }

    else
    {
      v45 = 0;
    }

    *(v5 + v46) = 0;
    goto LABEL_52;
  }

  v42 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator;
  v43 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator);
  if (v43 || (sub_100301570([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator), (v43 = *(v5 + v42)) != 0))
  {
    sub_100016F40(0, &qword_100942F10);
    v44 = v43;
    v45 = sub_100770CDC();
    [v44 setBackgroundColor:v45];

LABEL_52:
  }

  v48 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
  v49 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView);
  if (!v49)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = v49;
  v51 = v87;
  [v87 pageMarginInsets];
  v53 = v52;
  [v51 pageMarginInsets];
  v55 = v54;
  [v51 pageMarginInsets];
  v57 = v56;
  [v51 pageMarginInsets];
  [v50 setContentInset:{v53, v55, v57}];

  swift_beginAccess();

  v59 = sub_10032EB68(v58);

  v60 = v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  if ((*(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken + 8) & 1) != 0 || (v61 = *v60, v61 != sub_100330A24(v59)))
  {
    *v60 = sub_100330A24(v59);
    v60[8] = 0;
    [v5 bounds];
    v63 = *(v5 + v48);
    if (!v63)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v64 = v62;
    [v63 contentInset];
    v66 = *(v5 + v48);
    if (!v66)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v67 = v64 - v65;
    [v66 contentInset];
    v69 = v67 - v68;
    [v5 bounds];
    v71 = v70;
    v72 = v77;
    sub_1007632DC();
    sub_1003302CC(v59, v72, v87, v69, v71, ObjectType, v34);
    v74 = v73;
    (*(v78 + 8))(v72, v80);
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths) = v74;

    *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 1;
  }

  v75 = *(v5 + v48);
  if (!v75)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v76 = v75;

  [v76 reloadData];

  [v5 setNeedsLayout];
  *(v5 + v81) = 0;
  if (*(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) == 1)
  {
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
    sub_10032F1F4(v88, v84, v85, v87);
  }
}

void sub_10032FBEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10076C45C();
  __chkstk_darwin(v12 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {

    sub_10076B48C();
    swift_beginAccess();

    sub_100098764(v15, v14);
    swift_endAccess();
    if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel) == 1)
    {

      *(a2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 1;
    }

    else
    {
      sub_10032F1F4(a3, a4, a5, a6);
    }
  }
}

uint64_t sub_10032FD28()
{
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v3[3] = &type metadata for String;
  v3[0] = sub_1007716EC();
  v3[1] = v1;
  sub_10076F30C();
  sub_10000CFBC(v3, &unk_1009434C0);
  sub_10076FBEC();
}

id sub_10032FECC()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon] = 0;

  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  v1 = sub_1000FDD24(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  swift_beginAccess();
  *&v0[v2] = v1;

  v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v3 = 0;
  v3[8] = 1;
  result = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
  if (result)
  {
    [result reloadData];
    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for InformationRibbonCollectionViewCell()
{
  result = qword_100952C50;
  if (!qword_100952C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003300C8()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100330194(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v9 = sub_100765C9C();
  sub_10000A61C(v9, qword_1009A04D8);
  v10 = [a7 traitCollection];
  sub_100765BDC();

  return a1;
}

void (*sub_10033024C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7))(char *, uint64_t)
{
  result = sub_100330914();
  if (result)
  {
    sub_10032F1F4(result, a3, a4, a7);
  }

  return result;
}

void sub_1003302CC(unint64_t a1, char *a2, void *a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1007632CC();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v19)
  {
    return;
  }

  v20 = [a3 traitCollection];
  v21 = sub_10077071C();

  if (v21)
  {
    if (!v18)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v23 = sub_10077158C();
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v23)
      {
        v25 = sub_10077023C();
        *(v25 + 16) = v23;
        memset_pattern16((v25 + 32), &unk_10078C990, 8 * v23);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v18)
  {
    v24 = sub_10077158C();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v22 = floor(a4 / v24);
  if (*&v22 <= 136.0)
  {
    if (v24 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v24)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v30 = type metadata accessor for BadgeView(0);
    v31 = 0;
    v14 = a1 & 0xC000000000000001;
    a2 = _swiftEmptyArrayStorage;
    v32 = 0.0;
    while (1)
    {
      if (v14)
      {
        v33 = sub_10077149C();
      }

      else
      {
        v33 = *(a1 + 8 * v31 + 32);
      }

      v34 = sub_1004FE3F8(v33, v31, 0, v24, a3, a4, a5, v30, a7);

      if (v34 >= 105.0)
      {
        if (v34 >= 136.0)
        {
          v35 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10049D1CC(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v35 = floor(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v18 = *(a2 + 2);
      v36 = *(a2 + 3);
      v13 = v18 + 1;
      if (v18 >= v36 >> 1)
      {
        a2 = sub_10049D1CC((v36 > 1), v18 + 1, 1, a2);
      }

      ++v31;
      *(a2 + 2) = v13;
      *&a2[8 * v18 + 32] = v35;
      v32 = v32 + v35;
      if (v24 == v31)
      {
        a4 = a4 - v32;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        a3 = a2 + 32;
        v55 = _swiftEmptyArrayStorage;
        sub_1004BBAA4(0, v13, 0);
        v17 = 0;
        v38 = v55;
        a7 = v55[2];
        do
        {
          v39 = *(a3 + v17);
          v55 = v38;
          v40 = v38[3];
          if (&v17[a7] >= v40 >> 1)
          {
            sub_1004BBAA4((v40 > 1), &v17[a7 + 1], 1);
            v38 = v55;
          }

          v41 = v17 + 1;
          v38[2] = &v17[a7 + 1];
          *&v38[a7 + 4 + v17] = 136.0 - v39;
          v17 = v41;
        }

        while (v13 != v41);
        v42 = &v41[a7];
        if (&v41[a7 - 1] <= 2)
        {
          v43 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v43 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        v44 = (v38 + 6);
        a5 = 0.0;
        v45 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v44 - 2) + *(v44 - 1) + *v44 + v44[1];
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        if (v42 != v43)
        {
LABEL_54:
          v46 = &v41[a7 - v43];
          v47 = &v38[v43 + 4];
          do
          {
            v48 = *v47++;
            a5 = a5 + v48;
            --v46;
          }

          while (v46);
        }

        if (v13 <= v42)
        {
          a1 = 4;
          while (1)
          {
            v49 = *&v38[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_1004BDB10(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(a4 * (v49 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v19 = sub_10077158C();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v54 = v22;
  (*(v14 + 16))(v17, a2, v13);
  if ((*(v14 + 88))(v17, v13) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v24 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v24)
    {
      return;
    }

    v26 = sub_10077023C();
    *(v26 + 16) = v24;
    v27 = (v26 + 32);
    if (v24 < 4)
    {
      v28 = 0;
      v29 = v54;
LABEL_67:
      v53 = v24 - v28;
      do
      {
        *v27++ = v29;
        --v53;
      }

      while (v53);
      return;
    }

    v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    v27 += v24 & 0x7FFFFFFFFFFFFFFCLL;
    v29 = v54;
    v50 = vdupq_lane_s64(v54, 0);
    v51 = (v26 + 48);
    v52 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 4;
    }

    while (v52);
    if (v24 != v28)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v24 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v24)
    {
      v37 = sub_10077023C();
      *(v37 + 16) = v24;
      memset_pattern16((v37 + 32), &unk_10078C980, 8 * v24);
    }

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_100330914()
{
  v0 = *(sub_10076B75C() + 16);

  if (v0)
  {
    result = sub_10076B75C();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_10000A570(result + 32, v3);

    sub_10000A5D4(&qword_1009575A0);
    sub_1007632EC();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t sub_1003309BC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100330A24(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_7:

      v5._countAndFlagsBits = sub_10076B4BC();
      if (v5._object)
      {
        object = v5._object;
      }

      else
      {
        v5._countAndFlagsBits = 0;
        object = 0xE000000000000000;
      }

      v5._object = object;
      sub_1007700CC(v5);

      v7._countAndFlagsBits = sub_10076B4DC();
      if (v7._object)
      {
        v8 = v7._object;
      }

      else
      {
        v7._countAndFlagsBits = 0;
        v8 = 0xE000000000000000;
      }

      v7._object = v8;
      sub_1007700CC(v7);

      ++v3;
      if (v4 == i)
      {
        goto LABEL_20;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v9 = sub_10077012C();

  return v9;
}

void sub_100330BA4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_itemLayoutContext;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon] = 0;
  v4 = &v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v4 = 0;
  v4[8] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits] = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *&v0[v5] = sub_1000FDD24(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] = _swiftEmptyArrayStorage;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v27[4] = sub_100331A24;
  v27[5] = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1002BAFEC;
  v27[3] = &unk_100891600;
  v9 = _Block_copy(v27);
  v10 = v6;

  v11 = [v8 initWithSectionProvider:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(UICollectionView) initWithFrame:v11 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
  v14 = *&v10[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
  *&v10[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = *&v10[v13];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v16 setAlwaysBounceVertical:0];
  v17 = *&v10[v13];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for BadgeCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = sub_10076FF6C();
  [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  v21 = *&v10[v13];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v10[v13];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v25 setDataSource:v10];
  v26 = *&v10[v13];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v26 setDelegate:v10];
  if (*&v10[v13])
  {
    [v10 addSubview:?];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_100330F94()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon) = 0;
  v3 = v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *(v0 + v4) = sub_1000FDD24(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1003310F4(void *a1, uint64_t a2)
{
  v5 = sub_10076C45C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon))
  {
    v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph);
    if (v13)
    {
      v43 = v10;
      v44 = a2;
      v14 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
      swift_beginAccess();
      v42 = v2;

      v16 = sub_10032EB68(v15);

      type metadata accessor for BadgeCollectionViewCell();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v41 = v17;
        v18 = a1;
        v19 = sub_10075E09C();
        if (v16 >> 62)
        {
          v38 = v19;
          v20 = sub_10077158C();
          if (v38 < v20)
          {
LABEL_6:
            v39 = v20;
            v21 = sub_10075E09C();
            v22 = v16 & 0xC000000000000001;
            v40 = v18;
            if ((v16 & 0xC000000000000001) == 0)
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v21 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_10;
              }

              __break(1u);
              goto LABEL_42;
            }

            sub_10077149C();
LABEL_10:
            sub_10076B48C();

            v23 = sub_10076C44C();
            v24 = *(v6 + 8);
            v24(v12, v43);
            if (v23)
            {
              v25 = sub_10075E09C();
              if (v22)
              {
                sub_10077149C();
              }

              else
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                if (v25 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_45:
                  __break(1u);
                  return;
                }
              }

              sub_10076B48C();

              v26 = v42;
              swift_beginAccess();
              v27 = *(v26 + v14);
              if (*(v27 + 16))
              {
                v28 = sub_1006108B4(v8);
                if (v29)
                {
                  v30 = *(*(v27 + 56) + 8 * v28);
                  swift_endAccess();

                  v24(v8, v43);
                  goto LABEL_26;
                }
              }

              swift_endAccess();
              v24(v8, v43);
            }

            v31 = sub_10075E09C();
            if (v22)
            {
              v30 = sub_10077149C();
LABEL_25:

LABEL_26:

              if ((sub_10076329C() & 1) != 0 || *(v42 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) == 1)
              {
                v32 = sub_1007632AC();
              }

              else
              {
                v32 = 1;
              }

              v33 = sub_10075E09C();
              if (sub_10076328C())
              {
                v34 = sub_1007632AC();
              }

              else
              {
                v34 = 1;
              }

              v35 = sub_10076B3CC();
              v36 = v41;
              v37 = v39;
              sub_1004FD0B0(v30, v33, 0, v39, v35, v13);
              [*&v36[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView] setHidden:v34 & 1];
              [*&v36[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView] setHidden:v32 & 1];
              [*&v36[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView] setHidden:v33 == v37 - 1];
              [v36 setNeedsLayout];

              goto LABEL_37;
            }

            if ((v31 & 0x8000000000000000) == 0)
            {
              if (v31 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v30 = *(v16 + 8 * v31 + 32);

                goto LABEL_25;
              }

              goto LABEL_43;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19 < v20)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_37:
    }
  }
}

uint64_t sub_1003315C8(void *a1)
{
  v3 = sub_10076C45C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  type metadata accessor for BadgeCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader))
    {
      v11 = *(result + OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_badgeView);
      v12 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView);
      if (v12)
      {
        v13 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgeType;
        swift_beginAccess();
        (*(v4 + 16))(v9, v11 + v13, v3);
        (*(v4 + 104))(v6, enum case for BadgeType.artwork(_:), v3);
        sub_1003319A4(&unk_100952C60, &type metadata accessor for BadgeType);
        v18[0] = a1;

        v14 = v12;
        sub_10077018C();
        sub_10077018C();
        if (v18[3] == v18[1] && v18[4] == v18[2])
        {
          v15 = *(v4 + 8);
          v15(v6, v3);
          v15(v9, v3);
        }

        else
        {
          v16 = sub_10077167C();
          v17 = *(v4 + 8);
          v17(v6, v3);
          v17(v9, v3);

          if ((v16 & 1) == 0)
          {
LABEL_9:
          }
        }

        sub_10075FD2C();
        sub_1003319A4(&qword_100941820, &type metadata accessor for ArtworkView);
        sub_100760BFC();
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1003318E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon);
  if (v1)
  {
    swift_beginAccess();

    v3 = sub_10032EB68(v2);

    if (v3 >> 62)
    {
      v1 = sub_10077158C();
    }

    else
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_1003319A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003319EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100331A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100331A88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = sub_100768FEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10076443C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v21 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v21 = qword_100944CA0;
  }

  v22 = sub_10000A61C(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_10033350C();
  sub_10076759C();
  sub_10076440C();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_100331FD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_10075FD2C();
  v12 = sub_10075FB3C();
  sub_1007638EC();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_1007600FC();
  v14 = sub_1007600BC();
  v16 = sub_1004B958C(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = sub_1007600EC();
  v20 = sub_1004B958C(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_100332210@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2D20, v101);
  v71 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_10015E5E0(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = sub_10075FD2C();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_100016F40(0, &qword_100956550);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_100016F40(0, &qword_1009441F0);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_100333934();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_10015E5E0(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_10000CF78(v97, v98);
  v15 = sub_1007711AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  sub_10076D21C();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_10000DB7C(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_1001A8FD8(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_10000CF78(v73, v74);
    v23 = sub_1007711AC();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    sub_10076D6BC();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_10000DB7C(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_1001A8FD8(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_10000CF78(v73, v74);
    v31 = sub_1007711AC();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    sub_10076D6BC();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_10000DB7C(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_10000A570(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_10000CF78(v88, v89);
  v39 = sub_1007711AC();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  sub_10076D6BC();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_10000DB7C(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_1001A8FD8(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_10000CF78(v73, v74);
    v47 = sub_1007711AC();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    sub_10076D6BC();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_10000DB7C(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_1001A8FD8(v84, &v79[37] + 8);
  sub_1001A8FD8(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_10000CF78(v73, v74);
    v55 = sub_1007711AC();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    sub_10076D6AC();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_10000DB7C(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_1001A8FD8(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_10000CF78(v73, v74);
    v63 = sub_1007711AC();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    sub_10076D6BC();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_100333A90(v80);
      sub_100333A90(v82);
      sub_100333A90(v86);
      sub_100333A90(v95);
      sub_10015E58C(v100);
      sub_10000CD74(v91);
      sub_100333A90(v92);
      sub_100333A90(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_10000DB7C(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_100333A90(v80);
      sub_100333A90(v82);
      sub_100333A90(v86);
      sub_100333A90(v95);
      sub_10015E58C(v100);
      sub_10000CD74(v91);
      sub_100333A90(v92);
      sub_100333A90(v84);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v80);
    sub_100333A90(v82);
    sub_100333A90(v86);
    sub_100333A90(v95);
    sub_10015E58C(v100);
    sub_10000CD74(v91);
    sub_100333A90(v92);
    sub_100333A90(v84);
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_10015E58C(v101);
  sub_10000CD74(v88);
  return sub_10000CD74(v97);
}

double sub_100333214(double a1)
{
  v3 = sub_10076443C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  if (qword_100941430 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (sub_10077071C())
  {
    v11 = &xmmword_1009A2E90;
  }

  else
  {
    v11 = &xmmword_1009A2D20;
  }

  sub_10015E5E0(v11, v20);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v12 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v12 = qword_100944CA0;
  }

  v13 = sub_10000A61C(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_1007643EC();
    v15 = v14;
    sub_1007643EC();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_10015E58C(v20);
  return v17;
}

unint64_t sub_10033350C()
{
  result = qword_100945580;
  if (!qword_100945580)
  {
    sub_100768FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945580);
  }

  return result;
}

double sub_100333564()
{
  v1 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_100768FEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946750);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v20 = sub_10000A61C(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_10033350C();
  sub_10076759C();
  sub_10076440C();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

unint64_t sub_100333934()
{
  result = qword_100952CE8;
  if (!qword_100952CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952CE8);
  }

  return result;
}

uint64_t sub_100333988()
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

uint64_t sub_100333A90(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094BB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100333AF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_10075FD2C();
  v3 = sub_10075FB3C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_1007600FC();
  v5 = sub_1007600BC();
  v7 = sub_1004B958C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = sub_1007600EC();
  v11 = sub_1004B958C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

id sub_100333C2C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_10076C38C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(v14, v4 + v17, &unk_1009434A0);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016E2C(v4 + v17, v11, &unk_1009434A0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10003837C(v11, v18 + v19, &unk_1009434A0);
  swift_endAccess();
  sub_1003DC6B0(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10076C70C();
    if (!v22)
    {
      sub_100016F40(0, &qword_100942F10);
      v22 = sub_100770D8C();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &off_100911000;
  if (sub_10076C76C())
  {
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = sub_10077071C();

    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_10052C358(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:sub_1007704FC()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = sub_10076C7FC();
  sub_100761BFC();
  sub_10000A5D4(&qword_100945700);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10000CFBC(&v50, &qword_1009456F8);
    goto LABEL_17;
  }

  sub_100012498(&v50, v54);
  sub_10000CF78(v54, v55);
  v35 = [v5 traitCollection];
  v36 = sub_1007684EC();

  if (!v36)
  {
LABEL_16:
    sub_10000CD74(v54);
    v24 = &off_100911000;
LABEL_17:
    v53 = sub_10076C7FC();
    if (swift_dynamicCast())
    {
      sub_100012498(&v50, v54);
      sub_10000CF78(v54, v55);
      v41 = [v5 traitCollection];
      v42 = sub_1007684FC();

      if (v42)
      {
        sub_10000CF78(v54, v55);
        v43 = sub_1007684CC();
        if (v43)
        {
          v44 = v49;
          sub_100335F64(v42, v43, a1, a2, a3, v49);

          sub_10000CD74(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_10000CD74(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10000CFBC(&v50, &qword_1009456F8);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_10000CF78(v54, v55);
  v37 = sub_1007684CC();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_10033742C(v36, v38, a1, a2, a3, v39);

  sub_10000CD74(v54);
  v40 = v39;
  v24 = &off_100911000;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer);
  sub_10030E4AC(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded)];
  (*((swift_isaMask & *v5) + 0x278))(v46);
  sub_100335DC8();
  return [v5 v24[194]];
}

void sub_1003342F8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  if (a3)
  {

    swift_dynamicCastClass();
  }

  else
  {
    v61 = v15;
    v62 = v14;
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003837C(v17, v4 + v19, &unk_1009434A0);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_100016E2C(v4 + v19, v12, &unk_1009434A0);
    v21 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_10003837C(v12, v20 + v21, &unk_1009434A0);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_10030E29C(v25);
    *(v20 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory) = v25;
    sub_100275F40();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_10052C358(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:sub_1007704FC()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_10033A568(v32);
      v33 = *&v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
      sub_100310A38(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_100016E2C(v4 + v36, v61, &unk_1009434A0);
          v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_10052C0C8(v40, 0, v37, v39);

          sub_10000CFBC(v37, &unk_1009434A0);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_100016E2C(v4 + v43, v62, &unk_1009434A0);
      v45 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_100276360(v47, 0, v44, v46);

      sub_10000CFBC(v44, &unk_1009434A0);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*((swift_isaMask & *v4) + 0x278))();
      [v4 setNeedsLayout];
    }
  }
}

void sub_10033499C()
{
  sub_1003DC268();
  v1 = [v0 contentView];
  sub_1001EEC4C();
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_100334A48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009434A0);
}

uint64_t sub_100334AB4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v6, &unk_1009434A0);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016E2C(v1 + v6, v5, &unk_1009434A0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10003837C(v5, v7 + v8, &unk_1009434A0);
  return swift_endAccess();
}

void sub_100334C00(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_10033A910(v2);
}

void *sub_100334C4C()
{
  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100334C84(char a1)
{
  if (a1)
  {

    sub_1003396F8();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_100334D3C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_10030E29C(v4);
  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory) = v4;
  sub_100275F40();
}

uint64_t sub_100334DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v4 = sub_10076BF9C();
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076BD9C();
  __chkstk_darwin(v7 - 8);
  v80 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BFFC();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v11 - 8);
  v75 = &v59 - v12;
  v79 = sub_10076BEDC();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v77 = &v59 - v15;
  v74 = sub_10077164C();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100766D4C();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076A75C();
  v68 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_10076C38C();
  v85 = *(v24 - 8);
  v86 = v24;
  __chkstk_darwin(v24);
  v83 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v59 - v27;
  sub_10076C84C();
  sub_10033CF0C(&qword_100947150, &type metadata accessor for TodayCard);
  result = sub_10076332C();
  v30 = v90;
  if (v90)
  {
    v89 = sub_10076C7FC();
    sub_100761BFC();
    sub_10000A5D4(&qword_100945700);
    if (swift_dynamicCast())
    {
      v62 = v18;
      v65 = v6;
      v67 = a2;
      sub_100012498(v87, &v90);
      type metadata accessor for TodayCardGridTracker();
      sub_10076F64C();
      sub_10076FC1C();
      v66 = *&v87[0];
      v31 = sub_1003B1704();
      v32 = _swiftEmptyArrayStorage;
      *&v87[0] = _swiftEmptyArrayStorage;
      v84 = v30;
      v33 = sub_10076C6FC();
      v64 = v9;
      LODWORD(v63) = v31;
      if (v33)
      {
        swift_getKeyPath();
        sub_10076338C();

        swift_getKeyPath();
        sub_10076338C();

        v34 = v89;
        sub_1005DE768(v31, v28, v89);
        sub_1005B1CD8(v31);
        sub_10076BFCC();

        (*(v85 + 8))(v28, v86);
        sub_10077019C();
        if (*((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v32 = *&v87[0];
      }

      sub_10000CF78(&v90, v91);
      swift_getKeyPath();
      sub_10076338C();

      v35 = v89;
      v36 = sub_1007684DC();

      if (v36)
      {
        sub_10000CF78(&v90, v91);
        if (sub_1007684CC())
        {
          swift_getKeyPath();
          v37 = v83;
          sub_10076338C();

          swift_getKeyPath();
          sub_10076338C();

          v60 = v89;
          v38 = sub_10077073C();
          v39 = v63;
          v61 = v38;
          sub_1005DE768(v63, v37, v38);
          sub_1005B1CD8(v39);
          v40 = v68;
          v41 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v39 != 6)
          {
            v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v39 != 4)
          {
            v41 = v42;
          }

          v43 = v62;
          (*(v68 + 104))(v20, *v41, v62);
          (*(v40 + 32))(v23, v20, v43);
          v44 = sub_1007701CC();

          (*(v40 + 8))(v23, v43);
          sub_10076A73C();
          if (v45)
          {
            sub_10076BEFC();
          }

          v46 = v79;
          v47 = v78;
          v48 = v75;
          v49 = v69;
          sub_10076A74C();
          sub_100766D1C();
          sub_100770ACC();
          sub_100770A8C();
          v50 = v73;
          v51 = v71;
          v52 = v74;
          (*(v73 + 104))(v71, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v74);
          sub_100770AAC();
          (*(v50 + 8))(v51, v52);
          (*(v70 + 8))(v49, v72);
          sub_10076A72C();
          v53 = *(v47 + 48);
          v54 = v53(v48, 1, v46);
          v63 = v44;
          if (v54 == 1)
          {
            v55 = v77;
            sub_10076BEEC();
            if (v53(v48, 1, v46) != 1)
            {
              sub_10000CFBC(v48, &qword_100952D60);
            }
          }

          else
          {
            v55 = v77;
            (*(v47 + 32))(v77, v48, v46);
          }

          v56 = v81;
          sub_10076BDAC();
          v79 = v36;
          sub_10076C01C();
          v57 = v61;
          [v61 displayScale];
          (*(v47 + 16))(v76, v55, v46);
          sub_10076BFDC();
          sub_10076BFEC();
          sub_100764B3C();
          swift_allocObject();
          sub_100764B1C();

          (*(v82 + 8))(v56, v64);
          (*(v47 + 8))(v55, v46);
          (*(v85 + 8))(v83, v86);
          sub_10077019C();
          if (*((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          v32 = *&v87[0];
        }

        else
        {
        }
      }

      v58._rawValue = v32;
      sub_100760BAC(v58);

      return sub_10000CD74(&v90);
    }

    else
    {

      v88 = 0;
      memset(v87, 0, sizeof(v87));
      return sub_10000CFBC(v87, &qword_1009456F8);
    }
  }

  return result;
}

void sub_100335B00()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1000167E0(v2);
  v3 = (*(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getObjectType();
      sub_10076A00C();
    }
  }
}

void sub_100335C58()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  v4 = (*(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_getObjectType();
      sub_100769FFC();
    }
  }
}

void sub_100335DC8()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = sub_10077071C();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = sub_1007706FC();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_10033A568(v6);
}

uint64_t sub_100335F64(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v157 = a6;
  v168 = a5;
  v169 = a2;
  LODWORD(v166) = a4;
  v9 = sub_10000A5D4(&qword_10094B040);
  __chkstk_darwin(v9 - 8);
  v134 = &v129 - v10;
  v161 = sub_10076C38C();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v132 = v11;
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10075DDBC();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  v135 = sub_10000A5D4(&unk_100952D70);
  __chkstk_darwin(v135);
  v136 = &v129 - v15;
  v16 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v16 - 8);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v129 - v19;
  __chkstk_darwin(v20);
  v137 = &v129 - v21;
  __chkstk_darwin(v22);
  v138 = &v129 - v23;
  v24 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v24 - 8);
  v156 = &v129 - v25;
  v26 = sub_10076BF9C();
  __chkstk_darwin(v26 - 8);
  v162 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10076BD9C();
  v159 = *(v144 - 8);
  __chkstk_darwin(v144);
  v158 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10076BFFC();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v30 - 8);
  v32 = &v129 - v31;
  v33 = sub_10076BEDC();
  v164 = *(v33 - 8);
  v165 = v33;
  __chkstk_darwin(v33);
  v151 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v150 = sub_10077164C();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_100766D4C();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076A75C();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v48 = sub_10076C70C();
  if (!v48)
  {
    v49 = sub_10076BE1C();
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
  v54 = sub_10077073C();
  v55 = v166;
  v163 = v54;
  sub_1005DE768(v166, v168, v54);
  sub_1005B1CD8(v55);
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
  v58 = sub_1007701CC();
  (*(v42 + 8))(v47, v41);
  sub_10076A73C();
  if (v59)
  {
    sub_10076BEFC();
  }

  v60 = v165;
  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v61 = v149;
  v62 = v146;
  v63 = v150;
  (*(v149 + 104))(v146, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v150);
  sub_100770AAC();
  (*(v61 + 8))(v62, v63);
  (*(v145 + 8))(v40, v147);
  v150 = v58;
  sub_10076A72C();
  v64 = v164;
  v65 = *(v164 + 48);
  v66 = v65(v32, 1, v60);
  v67 = v167;
  if (v66 == 1)
  {
    v68 = v152;
    sub_10076BEEC();
    v69 = v60;
    if (v65(v32, 1, v60) != 1)
    {
      sub_10000CFBC(v32, &qword_100952D60);
    }
  }

  else
  {
    v68 = v152;
    (*(v64 + 32))(v152, v32, v60);
    v69 = v60;
  }

  v70 = v153;
  sub_10076BDAC();
  sub_10076C01C();
  v71 = v163;
  [v163 displayScale];
  v72 = v164;
  (*(v164 + 16))(v151, v68, v69);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v73 = sub_100764B1C();

  (*(v154 + 8))(v70, v155);
  (*(v72 + 8))(v68, v165);
  v74 = *&v67[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v67[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v75 = v166;
  }

  else
  {
    v75 = v67[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v166 = v170;
  v164 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong);

  v165 = v74;
  v162 = v73;
  v163 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  v77 = *(v74 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  sub_100764ADC();
  v79 = v78;
  v81 = v80;
  v82 = [*(v77 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) image];
  v83 = v160;
  v84 = v156;
  v85 = v161;
  v154 = *(v160 + 16);
  (v154)(v156, v168, v161);
  (*(v83 + 56))(v84, 0, 1, v85);
  LODWORD(v155) = v75;
  sub_1003955EC(v82, v79, v81, 0, v169, v84, v75);

  sub_10000CFBC(v84, &unk_1009434A0);
  v86 = *(v77 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded);
  v157 = v77;
  if (v86)
  {
    v87 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v88 = v138;
    sub_100016E2C(v77 + v87, v138, &qword_100943190);
    v89 = v137;
    sub_100764B2C();
    v90 = v159;
    v91 = v144;
    (*(v159 + 56))(v89, 0, 1, v144);
    v92 = *(v135 + 48);
    v93 = v136;
    sub_100016E2C(v88, v136, &qword_100943190);
    sub_100016E2C(v89, v93 + v92, &qword_100943190);
    v94 = *(v90 + 48);
    if (v94(v93, 1, v91) == 1)
    {
      sub_10000CFBC(v89, &qword_100943190);
      sub_10000CFBC(v88, &qword_100943190);
      if (v94(v93 + v92, 1, v91) == 1)
      {
        sub_10000CFBC(v93, &qword_100943190);
        goto LABEL_29;
      }
    }

    else
    {
      v95 = v130;
      sub_100016E2C(v93, v130, &qword_100943190);
      if (v94(v93 + v92, 1, v91) != 1)
      {
        v125 = v159;
        v126 = v158;
        (*(v159 + 32))(v158, v93 + v92, v91);
        sub_10033CF0C(&qword_100943198, &type metadata accessor for Artwork.URLTemplate);
        v127 = sub_10076FF1C();
        v128 = *(v125 + 8);
        v128(v126, v91);
        sub_10000CFBC(v137, &qword_100943190);
        sub_10000CFBC(v138, &qword_100943190);
        v128(v95, v91);
        sub_10000CFBC(v93, &qword_100943190);
        v77 = v157;
        if (v127)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10000CFBC(v137, &qword_100943190);
      sub_10000CFBC(v138, &qword_100943190);
      (*(v159 + 8))(v95, v91);
    }

    sub_10000CFBC(v93, &unk_100952D70);
    v77 = v157;
  }

LABEL_27:
  if ((*(v77 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v96 = v141;
    sub_10075DDAC();
    v97 = v142;
    v98 = *(v142 + 16);
    v99 = v139;
    v100 = v143;
    v98(v139, v96, v143);
    sub_10033CF0C(&qword_10094F558, &type metadata accessor for UUID);
    sub_10077140C();
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

    sub_100760B7C();

    sub_10000CFBC(&v170, &qword_100943310);

    v113 = v133;
    sub_100764B2C();
    (*(v159 + 56))(v113, 0, 1, v144);
    v114 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    v115 = v157;
    swift_beginAccess();
    v116 = v115;
    sub_10003837C(v113, v115 + v114, &qword_100943190);
    swift_endAccess();
    v117 = v134;
    v118 = v143;
    v111(v134, v141, v143);
    (*(v142 + 56))(v117, 0, 1, v118);
    v119 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10003837C(v117, v116 + v119, &qword_10094B040);
    swift_endAccess();
  }

LABEL_29:
  v120 = v165;
  [*&v163[v165] setHidden:0];
  [*(v120 + v164) setHidden:1];

  *(v120 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 1;
  v121 = *&v167[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v121)
  {
    v122 = *&v121[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    v123 = v121;
    [v122 setHidden:0];
    [*&v123[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_10033742C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v219 = a6;
  v253 = a5;
  v254 = a4;
  v255 = a2;
  v7 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v7 - 8);
  v208 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = &v207 - v10;
  v11 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v11 - 8);
  v218 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v217 = &v207 - v14;
  v250 = sub_10075DB7C();
  v15 = *(v250 - 8);
  __chkstk_darwin(v250);
  v211 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v248);
  v249 = &v207 - v17;
  v18 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v18 - 8);
  v216 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v215 = &v207 - v21;
  __chkstk_darwin(v22);
  v257 = &v207 - v23;
  __chkstk_darwin(v24);
  v258 = &v207 - v25;
  v26 = sub_10076BF9C();
  __chkstk_darwin(v26 - 8);
  v246 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076BD9C();
  __chkstk_darwin(v28 - 8);
  v243 = &v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10076BFFC();
  v245 = *(v247 - 8);
  __chkstk_darwin(v247);
  v244 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v31 - 8);
  v239 = &v207 - v32;
  v242 = sub_10076BEDC();
  v264 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v207 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v241 = &v207 - v35;
  v238 = sub_10077164C();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_100766D4C();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v233 = &v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_10076A75C();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v230 = &v207 - v40;
  v41 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v41 - 8);
  v228 = &v207 - v42;
  v226 = sub_10076121C();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v227 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_10076481C();
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v267 = &v207 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000A5D4(&qword_100952D68);
  __chkstk_darwin(v45 - 8);
  v210 = &v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v223 = &v207 - v48;
  __chkstk_darwin(v49);
  v214 = &v207 - v50;
  __chkstk_darwin(v51);
  v53 = &v207 - v52;
  v265 = sub_1007611EC();
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
  v85 = sub_10076C70C();
  v271 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  sub_10076B84C();
  v98 = v15;
  v86 = sub_10076BE1C();

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
  sub_10076B82C();
  sub_1007611BC();
  v87 = v270;
  v88 = v265;
  v268 = *(v270 + 16);
  v256 = v270 + 16;
  v268(v75, v84, v265);
  sub_10033CF0C(&unk_1009603F0, &type metadata accessor for VideoControls);
  sub_10077125C();
  v89 = sub_10077127C();
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
    sub_10077128C();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v260 = *(v87 + 56);
  v260(v53, v91, 1, v88);
  sub_10000CFBC(v53, &qword_100952D68);
  v220 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v272[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v269;
  v261 = v90;
  v94 = v221;
  if (v92)
  {
    sub_1007611CC();
    v268(v75, v266, v88);
    v95 = v213;
    sub_10077125C();
    if (sub_10077127C())
    {
      v90 = v261;
      v261(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v214;
    }

    else
    {
      sub_10077128C();
      v101 = v270;
      v90 = v261;
      v261(v72, v88);
      v102 = *(v101 + 32);
      v97 = v214;
      v102(v214, v95, v88);
      v96 = 0;
    }

    v260(v97, v96, 1, v88);
    sub_10000CFBC(v97, &qword_100952D68);
  }

  sub_10076B7EC();
  sub_1007611BC();
  v268(v75, v93, v88);
  v103 = v94;
  v104 = v222;
  sub_10077125C();
  if (sub_10077127C())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v242;
    v107 = v223;
  }

  else
  {
    sub_10077128C();
    v108 = v270;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v223;
    v109(v223, v104, v88);
    v105 = 0;
    v106 = v242;
  }

  v260(v107, v105, 1, v88);
  sub_10000CFBC(v107, &qword_100952D68);
  v110 = v224;
  if (v272[v220] == 4 && (v272[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    sub_1007611CC();
    v268(v75, v269, v88);
    v111 = v209;
    sub_10077125C();
    if (sub_10077127C())
    {
      v112 = v261;
      v261(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v210;
    }

    else
    {
      sub_10077128C();
      v115 = v270;
      v261(v110, v88);
      v116 = *(v115 + 32);
      v114 = v210;
      v116(v210, v111, v88);
      v113 = 0;
    }

    v260(v114, v113, 1, v88);
    sub_10000CFBC(v114, &qword_100952D68);
  }

  (*(v225 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v226);
  sub_10076B84C();
  sub_10076BEFC();
  v117 = v228;
  sub_10076D3AC();

  v118 = sub_10076D39C();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v268;
  v268(v262, v269, v88);
  v119(v263, v266, v88);
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  sub_1007647FC();
  sub_10076B84C();
  v268 = [v272 traitCollection];
  v120 = sub_10077073C();
  v121 = v254;
  sub_1005DE768(v254, v253, v120);
  v122 = v121;
  sub_1005B1CD8(v121);
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
  v129 = sub_1007701CC();
  (*(v123 + 8))(v128, v127);
  sub_10076A73C();
  if (v130)
  {
    sub_10076BEFC();
  }

  v131 = v241;
  v132 = v239;
  v133 = v233;
  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v134 = v237;
  v135 = v235;
  v136 = v238;
  (*(v237 + 104))(v235, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v238);
  sub_100770AAC();
  (*(v134 + 8))(v135, v136);
  (*(v234 + 8))(v133, v236);
  sub_10076A72C();
  v137 = v264;
  v138 = *(v264 + 48);
  v139 = v138(v132, 1, v106);
  v262 = v129;
  if (v139 == 1)
  {
    sub_10076BEEC();
    v140 = v106;
    v141 = v131;
    if (v138(v132, 1, v106) != 1)
    {
      sub_10000CFBC(v132, &qword_100952D60);
    }
  }

  else
  {
    (*(v137 + 32))(v131, v132, v106);
    v140 = v106;
    v141 = v131;
  }

  v142 = v244;
  sub_10076BDAC();
  sub_10076C01C();
  [v120 displayScale];
  v260 = v120;
  v143 = v264;
  (*(v264 + 16))(v240, v141, v140);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v263 = sub_100764B1C();

  (*(v245 + 8))(v142, v247);
  (*(v143 + 8))(v141, v140);
  v144 = *&v272[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v145 = v258;
  sub_10076B85C();
  v146 = v259;
  v147 = *(v259 + 56);
  v148 = 1;
  v149 = v250;
  (v147)(v145, 0, 1, v250);
  v264 = v144;
  v268 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v151 = Strong;
    v152 = v257;
    (*(v146 + 16))(v257, Strong + qword_1009A2520, v149);

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
  sub_100016E2C(v145, v153, &unk_1009435D0);
  sub_100016E2C(v152, v153 + v154, &unk_1009435D0);
  v155 = *(v146 + 48);
  if (v155(v153, 1, v149) == 1)
  {
    sub_10000CFBC(v152, &unk_1009435D0);
    sub_10000CFBC(v145, &unk_1009435D0);
    v156 = v155(v153 + v154, 1, v149);
    v157 = v272;
    if (v156 == 1)
    {
      sub_10000CFBC(v153, &unk_1009435D0);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v158 = v215;
  sub_100016E2C(v153, v215, &unk_1009435D0);
  if (v155(v153 + v154, 1, v149) == 1)
  {
    sub_10000CFBC(v257, &unk_1009435D0);
    sub_10000CFBC(v258, &unk_1009435D0);
    (*(v259 + 8))(v158, v149);
LABEL_43:
    sub_10000CFBC(v153, &unk_100964140);
    v159 = v264;
    goto LABEL_44;
  }

  v166 = v259;
  v167 = v211;
  (*(v259 + 32))(v211, v153 + v154, v149);
  sub_10033CF0C(&qword_100944C38, &type metadata accessor for URL);
  v168 = sub_10076FF1C();
  v169 = *(v166 + 8);
  v169(v167, v149);
  sub_10000CFBC(v257, &unk_1009435D0);
  sub_10000CFBC(v258, &unk_1009435D0);
  v169(v158, v149);
  sub_10000CFBC(v153, &unk_1009435D0);
  v157 = v272;
  v159 = v264;
  if ((v168 & 1) == 0)
  {
LABEL_44:
    sub_100762F0C();
    v264 = sub_10076F64C();
    sub_10076FC1C();
    v160 = v273;
    sub_10076B7CC();
    v161 = v216;
    sub_10076B85C();
    (v262)(v161, 0, 1, v149);
    v162 = v217;
    sub_10076B81C();
    v163 = v218;
    sub_10076B80C();
    v164 = type metadata accessor for TodayCardVideoView();
    sub_10033CF0C(&qword_10094F540, type metadata accessor for TodayCardVideoView);
    v262 = v164;
    v165 = sub_100762EEC();
    sub_10000CFBC(v163, &unk_10094C030);
    sub_10000CFBC(v162, &unk_10094C030);
    sub_10000CFBC(v161, &unk_1009435D0);
    sub_10000CFBC(&v273, &qword_100943310);
    if (v165)
    {
      if ((v165[qword_10099F2A0] & 1) == 0)
      {
        v260 = v160;
        v165[qword_10099F298] = *(v159 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory);
        sub_10039DEFC();
        swift_unknownObjectWeakAssign();
        v170 = v268;
        v171 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v172 = v165;
        sub_10056A2D0(v171);

        v173 = *(v170 + v159);
        v174 = v172;
        sub_10076B84C();
        sub_10076BEFC();
        v176 = v175;
        v178 = v177;

        v179 = sub_10076C38C();
        v180 = *(v179 - 8);
        v181 = v212;
        (*(v180 + 16))(v212, v253, v179);
        (*(v180 + 56))(v181, 0, 1, v179);
        v182 = swift_unknownObjectWeakLoadStrong();
        v271 = v174;
        swift_unknownObjectWeakAssign();
        sub_10056A2D0(v182);

        v183 = &v173[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
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
        *&v173[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v255;

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
        sub_100016E2C(v181, v208, &unk_1009434A0);
        sub_1005697E4(v190);
        v191 = v254;
        v173[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory] = v254;
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

        sub_10000CFBC(v181, &unk_1009434A0);
        sub_100760C4C();
        sub_10076FC1C();
        sub_10033CF0C(&qword_10094F550, type metadata accessor for TodayCardVideoView);
        sub_100760B8C();
        [*(v268 + v159) setHidden:0];
        [*(v159 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v159 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v157 = v272;
  }

LABEL_61:
  v198 = *&v157[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v198)
  {
    v199 = *&v198[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    v200 = v198;
    [v199 setHidden:1];
    [*&v200[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v201 = swift_unknownObjectWeakLoadStrong();
  v202 = v266;
  v203 = v261;
  if (v201)
  {
    *(v201 + qword_1009602C8 + 8) = &off_100891650;
    v204 = v201;
    swift_unknownObjectWeakAssign();
  }

  sub_10033AD68();

  (*(v251 + 8))(v267, v252);
  v205 = v265;
  v203(v269, v265);
  return (v203)(v202, v205);
}

void (*sub_1003395DC(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100339650;
}

void sub_100339650(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_10056A2D0(Strong);

    Strong = v4;
  }

  else
  {
    sub_10056A2D0(Strong);
  }
}

void sub_1003396F8()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_10014CF98(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

void sub_100339800()
{
  v0 = sub_10076688C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007668CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_1009602F0];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_1005EFAB8(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_100339A9C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E768);
  sub_10000A61C(v0, qword_10099E768);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100339C00(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v29 = a1;
  sub_1007639FC();
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0D78);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_10076D9AC();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_10076D9BC();
  v25 = v3[1];
  v25(v5, v2);
  sub_100763A2C();
  if (qword_100940A98 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v6, qword_1009A0DD8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_10076D9BC();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100763ABC();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v32);
  v15(v18, v5, v2);
  sub_10076D9BC();
  v16(v5, v2);
  sub_100763A3C();
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000A61C(v24, qword_1009A0CD0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v32);
  v28(v21, v5, v2);
  sub_10076D9BC();
  v16(v5, v2);
  sub_100763ACC();
  return sub_100763A1C();
}

char *sub_10033A0F4(double a1, double a2, double a3, double a4)
{
  v28[1] = swift_getObjectType();
  v9 = sub_10075FEEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  sub_10027608C(v12, 20.0);
  (*(v10 + 8))(v12, v9);
  v22 = *&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v22)
  {
    v23 = v22;
    [v23 _setContinuousCornerRadius:20.0];
    v24 = [v23 layer];
    [v24 setMaskedCorners:sub_1007704FC()];
  }

  v29.receiver = *&v17[v21];
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, "_setContinuousCornerRadius:", 20.0);
  sub_10030DF18();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_10000A5D4(&unk_100945BF0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100783DD0;
  *(v25 + 32) = sub_10076E88C();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_100016F40(0, &qword_100944E30);
  sub_10077075C();
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_1003DCA00();
  v26 = *(*&v17[v19] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  sub_10039431C(v17, &off_100891668);

  return v17;
}

void sub_10033A568(char a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  sub_100276264();
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v3 + v2) == 1)
  {
    if (!v4)
    {
      return;
    }

    v5 = *&v4[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring);
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring) = 1;
    if (v6)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = swift_unknownObjectWeakLoadStrong();
    v21 = v4;
    sub_1002837C8(Strong);
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      if (v8)
      {
        type metadata accessor for VideoView();
        v11 = v8;
        v12 = sub_100770EEC();

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
      sub_100283DF4();

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

  v14 = *&v4[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
  v15 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring);
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  if (v15 != 1)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  v21 = v4;
  sub_1002837C8(0);
  swift_unknownObjectWeakAssign();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if (v8)
    {
      type metadata accessor for VideoView();
      v18 = v8;
      v19 = sub_100770EEC();

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
    sub_100283DF4();
    goto LABEL_24;
  }

  if (v8)
  {
    goto LABEL_23;
  }

  v20 = v21;
LABEL_26:
}

void sub_10033A7EC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_10030E334();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(v3);
  }
}

void sub_10033A910(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
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
        v26 = sub_10076C7FC();
        sub_100761BFC();
        sub_10000A5D4(&qword_100945700);
        if (swift_dynamicCast())
        {
          sub_100012498(v24, v27);
          sub_10000CF78(v27, v28);
          v14 = [v23 traitCollection];
          v15 = sub_1007684EC();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_100016E2C(&v16[v19], v5, &unk_1009434A0);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10000CFBC(v5, &unk_1009434A0);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_10000CF78(v27, v28);
              v20 = sub_1007684CC();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_10033742C(v15, v21, v13, v18, v9, v11);

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
          sub_10000CD74(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10000CFBC(v24, &qword_1009456F8);
      }

      else
      {
      }
    }
  }
}

void sub_10033AD68()
{
  v1 = v0;
  v2 = sub_100762EDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1005EC3F0() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton))
  {
    sub_1003396F8();
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_1009602F0;
      v12 = *&v25[qword_1009602F0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_10014CC44(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_10076055C();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1005EC3F0() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_10033C7CC;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009AEDC;
        aBlock[3] = &unk_100891720;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_10033B118()
{
  v1 = v0;
  v2 = sub_100762EDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1005EC3F0() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_10055177C();
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_1009602F0;
      v12 = *&v25[qword_1009602F0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_10014CC44(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_10076055C();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1005EC3F0() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_10033CF64;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009AEDC;
        aBlock[3] = &unk_100891770;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

id sub_10033B4D8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell();
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_100335DC8();
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    sub_100587DD0(v10, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    sub_10077071C();
    sub_1007704EC();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = sub_10077071C();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100016E2C(&v1[v15], v4, &unk_1009434A0);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10000CFBC(v4, &unk_1009434A0);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = sub_1007706DC(v41, v42).super.isa;

          sub_1005DE2F4(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1007704EC();
  [v18 setFrame:{sub_100102A30(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v29)
  {
    v30 = v29;
    [v1 bounds];
    MinX = CGRectGetMinX(v44);
    [v18 frame];
    MaxY = CGRectGetMaxY(v45);
    [v18 frame];
    Width = CGRectGetWidth(v46);
    [v1 bounds];
    Height = CGRectGetHeight(v47);
    [v18 frame];
    [v30 setFrame:{MinX, MaxY, Width, Height - CGRectGetHeight(v48)}];
  }

  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_10033BA5C()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryCardCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  sub_1002767A0();
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v3)
  {
    [*(*(v3 + OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) setImage:0];
  }

  return sub_100310D58();
}

uint64_t sub_10033BB90(void *a1)
{
  sub_10000CF78(a1, a1[3]);
  v2 = sub_10076E36C();
  if (sub_10077086C())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_10008B8A4(a1, a1[3]);
  return sub_10076E37C();
}

uint64_t sub_10033BCE8()
{
  sub_10000A5D4(&unk_1009434B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016F40(0, &qword_1009441F0);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_1000F94EC(v9);
  return v1;
}

void sub_10033BEB4()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
}

id sub_10033BF34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell()
{
  result = qword_100952D38;
  if (!qword_100952D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033C0C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong);
}

uint64_t (*sub_10033C158(uint64_t **a1))()
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
  v2[4] = sub_1003395DC(v2);
  return sub_100019A4C;
}

uint64_t sub_10033C1F0(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10033C260(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10033C2AC()
{
  swift_weakAssign();
}

uint64_t sub_10033C36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10033C3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10033C42C(uint64_t *a1))()
{
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
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10033C4C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

void sub_10033C570(uint64_t a1)
{
  if (a1)
  {
    if ((*((swift_isaMask & *v1) + 0x330))())
    {
      v2 = [v1 backgroundView];
      if (v2)
      {
        v3 = v2;
        [v2 setBackgroundColor:0];
      }
    }
  }
}

uint64_t sub_10033C66C(uint64_t a1)
{
  result = sub_10033CF0C(&qword_100952D50, type metadata accessor for StoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

id sub_10033C754(void *a1)
{
  sub_100335DC8();

  return [a1 setNeedsLayout];
}

uint64_t sub_10033C794()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10033C7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10033C7F0()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView) + qword_10094D6A8) = v5;
    sub_1001EDB98();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_100275DD8();
}

id sub_10033C928()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DFB08();
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_10056970C();
  if (v1[v7])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = type metadata accessor for TodayCardInfoLayerView();
  v21.receiver = v6;
  v21.super_class = v15;
  objc_msgSendSuper2(&v21, "_setContinuousCornerRadius:", v14);
  sub_10030DF18();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10027608C(v5, v16);
  (*(v3 + 8))(v5, v2);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v17)
  {
    v18 = v17;
    [v18 _setContinuousCornerRadius:v16];
    v19 = [v18 layer];
    [v19 setMaskedCorners:sub_1007704FC()];
  }

  sub_100335DC8();
  sub_1003DCA00();
  sub_10033AD68();
  return [v1 setNeedsLayout];
}

uint64_t sub_10033CC24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10033CC5C()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

void sub_10033CDCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10075DDBC() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10076C38C() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_100394D18(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_10033CF0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ProductRatingsView()
{
  result = qword_100952DB0;
  if (!qword_100952DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10033D018()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940C50 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v30 = sub_10000A61C(v4, qword_1009A12E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v31 = v5 + 16;
  v6(v3, v30, v4);
  v23 = enum case for FontSource.useCase(_:);
  v28 = v1[13];
  v28(v3);
  v29 = sub_10076D9AC();
  *(&v43 + 1) = v29;
  *v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v42);
  *(&v37 + 1) = v0;
  *&v38[0] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(&v36);
  v8 = v1[2];
  v8(v7, v3, v0);
  sub_10076D9BC();
  v22 = v1[1];
  v22(v3, v0);
  *&v44[8] = xmmword_10079C110;
  v9 = v30;
  v24 = v4;
  v30 = v6;
  v6(v3, v9, v4);
  v10 = v23;
  (v28)(v3, v23, v0);
  *(&v37 + 1) = v29;
  *&v38[0] = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v36);
  *(&v34 + 1) = v0;
  *&v35[0] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v33);
  v25 = v8;
  v26 = v1 + 2;
  v8(v11, v3, v0);
  v12 = v22;
  sub_10076D9BC();
  v27 = v1 + 1;
  v12(v3, v0);
  if (qword_100940C60 != -1)
  {
    swift_once();
  }

  v13 = v24;
  v14 = sub_10000A61C(v24, qword_1009A1318);
  v30(v3, v14, v13);
  v15 = v28;
  (v28)(v3, v10, v0);
  v16 = v10;
  if (qword_10093FF60 != -1)
  {
    swift_once();
  }

  v17 = qword_10099E8A0;
  *&v39 = sub_100767EAC();
  *(&v39 + 1) = sub_10033E8BC(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  sub_10000DB7C(v38 + 1);
  v18 = v17;
  sub_100767E9C();
  v40 = xmmword_10079C120;
  v41 = 0x4069C00000000000;
  if (qword_100940C58 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v13, qword_1009A1300);
  v30(v3, v19, v13);
  (v15)(v3, v16, v0);
  *(&v34 + 1) = v29;
  *&v35[0] = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v33);
  v32[3] = v0;
  v32[4] = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v32);
  v25(v20, v3, v0);
  sub_10076D9BC();
  v12(v3, v0);
  *(v35 + 8) = xmmword_10079C130;
  xmmword_10099E7A8 = v42;
  unk_10099E7B8 = v43;
  xmmword_10099E7C8 = *v44;
  unk_10099E810 = v38[1];
  unk_10099E820 = v39;
  unk_10099E830 = v40;
  unk_10099E7E0 = v36;
  *(&v35[1] + 1) = 0x4077000000000000;
  qword_10099E7D8 = *&v44[16];
  qword_10099E840 = v41;
  unk_10099E7F0 = v37;
  unk_10099E800 = v38[0];
  xmmword_10099E868 = v35[0];
  unk_10099E878 = v35[1];
  result = *&v34;
  xmmword_10099E848 = v33;
  unk_10099E858 = v34;
  return result;
}

uint64_t sub_10033D590()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10099E888);
  sub_10000A61C(v7, qword_10099E888);
  if (qword_100940C58 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1300);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A12E8);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

char *sub_10033D7A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v80 = sub_10076DD3C();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v4[qword_100952DA8] = 0;
  sub_10076D4BC();
  *&v4[qword_100952D80] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for RatingView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v16 = &v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v16 = 0;
  v16[8] = 1;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v17 = qword_100944D30;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 0;
  *v16 = 0;
  v16[8] = 1;
  v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v18 = type metadata accessor for StarRow();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 0, 0, 1, 0, 1);
  v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v21 = objc_allocWithZone(v18);
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 0, 0, 1, 0, 1);
  v83.receiver = v15;
  v83.super_class = v14;
  v22 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v23 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v25 = *&v24[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v24[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v22[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v26 = v24;
  sub_100062B94(v25);

  if (*&v22[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v22 addSubview:?];
  }

  [v22 addSubview:{*&v22[v23], v80}];

  *&v5[qword_100952D88] = v22;
  sub_10076DD2C();
  if (qword_100940C60 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  sub_10000A61C(v27, qword_1009A1318);
  sub_10076DCFC();
  v28 = *(v10 + 8);
  v29 = v80;
  v28(v12, v80);
  *&v5[qword_100952D90] = sub_10076D4AC();
  sub_10076DD2C();
  sub_10076DCFC();
  v28(v12, v29);
  *&v5[qword_100952D98] = sub_10076D4AC();
  *&v5[qword_100952DA0] = [objc_allocWithZone(type metadata accessor for ProductRatingsHistogramView()) init];
  v82.receiver = v5;
  v82.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  v31 = qword_100952D80;
  v32 = *&v30[qword_100952D80];
  sub_1000325F0();
  v33 = v30;
  v34 = v32;
  v35 = sub_100770CFC();
  [v34 setTextColor:v35];

  v36 = *&v30[v31];
  v37 = v33;
  [v37 addSubview:v36];
  v38 = qword_100952D88;
  v39 = *&v37[qword_100952D88];
  v40 = sub_100770CFC();
  v41 = *&v39[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
  *&v39[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = v40;
  v42 = v40;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_1000620A4();
  }

  v43 = *&v37[v38];
  v44 = sub_100770D0C();
  v45 = sub_100770CFC();
  v46 = sub_100770D0C();
  v47.super.isa = sub_100770CFC();
  v48.super.isa = v44;
  v49.super.isa = v45;
  v50.super.isa = v46;
  v51.super.isa = sub_100770E3C(v48, v49, v50, v47).super.isa;
  isa = v51.super.isa;
  v53 = *&v43[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
  *&v43[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = v51;
  if (v53)
  {
    v54 = v51.super.isa;
    v55 = v53;
    v56 = sub_100770EEC();

    if (v56)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v57 = v51.super.isa;
    v55 = 0;
  }

  sub_1000620A4();
  v54 = isa;
LABEL_14:

  v58 = *&v37[v38];
  v59 = [v37 traitCollection];

  v60 = [v59 accessibilityContrast];
  v61 = v60 == 0;
  v62 = v58[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars];
  v58[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = v61;
  if ((v61 ^ v62))
  {
    v63 = *&v58[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView];
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v63 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v61;
      if (((v60 == 0) ^ v64))
      {
        sub_10006363C();
      }
    }
  }

  v65 = qword_10093FF68;
  v66 = *&v37[v38];
  if (v65 != -1)
  {
    swift_once();
  }

  [v66 setMaximumContentSizeCategory:qword_10099E8A8];

  [v37 addSubview:*&v37[v38]];
  v67 = qword_100952D90;
  v68 = qword_10093FF60;
  v69 = *&v37[qword_100952D90];
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = qword_10099E8A0;
  [v69 setMaximumContentSizeCategory:qword_10099E8A0];

  v71 = *&v37[v67];
  v84._object = 0x80000001007E0020;
  v84._countAndFlagsBits = 0xD000000000000012;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_100767D6C(v84, 5, v85);
  v72 = sub_10076FF6C();

  [v71 setText:v72];

  v73 = *&v37[v67];
  v74 = sub_100770D1C();
  [v73 setTextColor:v74];

  [v37 addSubview:*&v37[v67]];
  v75 = qword_100952D98;
  [*&v37[qword_100952D98] setMaximumContentSizeCategory:v70];
  v76 = *&v37[v75];
  v77 = sub_100770D1C();
  [v76 setTextColor:v77];

  [v37 addSubview:*&v37[v75]];
  [v37 addSubview:*&v37[qword_100952DA0]];
  sub_10033E0A0();
  sub_10000A5D4(&unk_100945BF0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_100784500;
  *(v78 + 32) = sub_10076E59C();
  *(v78 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v78 + 48) = sub_10076E65C();
  *(v78 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v37;
}

void sub_10033E0A0()
{
  v19 = sub_10076D3DC();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076DD3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_10033E3F8();
  v18[1] = *&v0[qword_100952D80];
  sub_10076DD2C();
  if (qword_10093FF58 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v9, qword_10099E888);
  v20 = v0;
  v10 = v0;
  sub_10075FDCC();

  sub_10076DCFC();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  sub_10076D49C();
  v11 = *&v10[qword_100952D88];
  v12 = [v10 traitCollection];
  v13 = [v12 accessibilityContrast];

  v14 = v13 == 0;
  v15 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars);
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars) = v14;
  if (v14 != v15)
  {
    v16 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v16 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v14;
      if (((v13 == 0) ^ v17))
      {
        sub_10006363C();
      }
    }
  }
}

void sub_10033E390(uint64_t a1)
{
  *(a1 + qword_100952DA8) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10033E3F8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706EC();

  v4 = qword_100952DA8;
  v5 = v1[qword_100952DA8] | v3 ^ 1;
  [*&v1[qword_100952D88] setHidden:v5 & 1];
  [*&v1[qword_100952DA0] setHidden:(v5 & 1) == 0];
  v6 = *&v1[qword_100952D90];
  v7 = (v1[v4] & v3 & 1) == 0;

  return [v6 setHidden:v7];
}

id sub_10033E4C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_10093FF50 != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for ProductRatingsLayout;
  a1[4] = sub_1000837C8();
  v4 = swift_allocObject();
  *a1 = v4;
  sub_100083890(&xmmword_10099E7A8, v4 + 16);
  v5 = *(v2 + qword_100952D80);
  v6 = sub_10076D4BC();
  *(v4 + 264) = v6;
  *(v4 + 272) = &protocol witness table for UILabel;
  *(v4 + 240) = v5;
  type metadata accessor for RatingView();
  v7 = v5;
  sub_10076D2DC();
  v8 = *(v2 + qword_100952D90);
  *(v4 + 344) = v6;
  *(v4 + 352) = &protocol witness table for UILabel;
  *(v4 + 320) = v8;
  v9 = *(v2 + qword_100952D98);
  *(v4 + 384) = v6;
  *(v4 + 392) = &protocol witness table for UILabel;
  *(v4 + 360) = v9;
  v13 = *(v2 + qword_100952DA0);
  *(v4 + 424) = type metadata accessor for ProductRatingsHistogramView();
  *(v4 + 432) = sub_10033E8BC(&qword_100952E18, type metadata accessor for ProductRatingsHistogramView);
  *(v4 + 400) = v13;
  *(v4 + 440) = *(v2 + qword_100952DA8);
  v10 = v8;
  v11 = v9;

  return v13;
}

void sub_10033E6C4()
{
  v1 = *(v0 + qword_100952DA0);
}

void sub_10033E734(uint64_t a1)
{
  v2 = *(a1 + qword_100952DA0);
}

unint64_t sub_10033E7CC()
{
  result = qword_100952E00;
  if (!qword_100952E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952E00);
  }

  return result;
}

uint64_t sub_10033E844()
{
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 72);
  sub_10000CD74(v0 + 112);
  sub_10000CD74(v0 + 176);
  sub_10000CD74(v0 + 240);
  sub_10000CD74(v0 + 280);
  sub_10000CD74(v0 + 320);
  sub_10000CD74(v0 + 360);
  sub_10000CD74(v0 + 400);

  return _swift_deallocObject(v0, 441, 7);
}

uint64_t sub_10033E8BC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10033EA4C()
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
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext];
  sub_10076D9CC();
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  v22 = (v21 - v18) * 0.5;
  [v1 safeAreaInsets];

  return [v16 setFrame:{v22, v23 + 16.0, v18, v20}];
}

uint64_t sub_10033ECF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10033ED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_10076E71C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext;
  v43 = v8;
  if (qword_10093F770 != -1)
  {
    v38 = v12;
    swift_once();
    v12 = v38;
    v8 = v43;
  }

  v16 = sub_10000A61C(v12, qword_10099CFD0);
  sub_10033ECF0(v16, v14);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v4[v15] = sub_1000F1E60(v14);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_navigationBarMargins] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContextTopPadding] = 0x4030000000000000;
  sub_100016F40(0, &qword_100947DB0);
  v18 = *(v8 + 16);
  v41 = v7;
  v42 = a1;
  v18(v10, a1, v7);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_emptyReason] = sub_10077094C();
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext;
  v21 = *&v19[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext];
  v22 = v19;
  v23 = v21;
  v24 = sub_100767BBC();
  v25 = sub_100767BAC();
  if (v25)
  {
    v26 = v25;

    v27 = sub_10076B8EC();
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
    v31 = sub_10076B8FC();
    v40 = v20;
    if (v31)
    {
      v32 = v31;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v32, 0);
      }
    }

    sub_100016F40(0, &qword_1009641D0);
    v34 = swift_allocObject();
    *(v34 + 16) = v44;
    *(v34 + 24) = v26;
    v33 = sub_100770F1C();
    v20 = v40;
  }

  else
  {
    v33 = 0;
  }

  sub_1000F2654(v24, v33);

  v35 = *&v22[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_emptyReason];
  v36 = v22;
  [v36 addSubview:v35];
  [v36 addSubview:*&v19[v20]];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v43 + 8))(v42, v41);
  return v36;
}

uint64_t sub_10033F178()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10033F1B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10076664C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1007665CC();
  sub_10033FA08(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v13 = sub_10077124C();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_100372F00(v12, v13 & 1, v13 & 1, a6);
}

id sub_10033F318(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_10076664C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1007665CC();
  sub_10033FA08(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_10077124C();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_1003720DC(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_10033F544(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = sub_10077164C();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B5BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100942C28);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_10002ABBC(a1, v13);
  sub_10002ABBC(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_10002ABBC(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_10033FA08(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
      v24 = sub_10076FF1C();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10000CFBC(v20, &unk_1009568A0);
      v25(v16, v6);
      sub_10000CFBC(v13, &unk_1009568A0);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10000CFBC(v20, &unk_1009568A0);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10000CFBC(v13, &qword_100942C28);
    return 0;
  }

  sub_10000CFBC(v20, &unk_1009568A0);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10000CFBC(v13, &unk_1009568A0);
LABEL_9:
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D9AC();
  sub_10000A61C(v26, qword_1009A2350);
  sub_10076D17C();
  sub_10076D40C();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_10033FA08(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10033FA50(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_10077164C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  v18 = *(v5 + 83);
  v19 = *(v5 + 81);
  if ((v18 & 1) != 0 || v19 != 6)
  {
    v22 = v19 == 4;
    v23 = v19 == 6;
    v21 = *(v6 + 8);
  }

  else
  {
    v20 = sub_10077071C();
    v21 = *(v5 + 8);
    if ((v20 & 1) == 0)
    {
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v68 = CGRectInset(v67, *(v5 + 8), 0.0);
      v22 = 0;
      if (v68.size.width * *(v5 + 32) > *(v5 + 40))
      {
        width = v68.size.width * *(v5 + 32);
      }

      else
      {
        width = *(v5 + 40);
      }

      v25 = 1;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 1;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = a4;
  v64.size.height = a5;
  v65 = CGRectInset(v64, v21, 0.0);
  width = v65.size.width;
  if (!v23)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v25 = 0;
    v26 = CGRectGetWidth(v66) - width - v21;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:
  v69.origin.x = a2;
  v69.origin.y = a3;
  v69.size.width = a4;
  v69.size.height = a5;
  v26 = (CGRectGetWidth(v69) - width - v21) * 0.5;
LABEL_14:
  v27 = *(v6 + 84);
  v28 = *(v6 + 56);
  v63 = v21;
  if ((v27 & 1) == 0)
  {
    LODWORD(v61) = v18;
    *&v59[1] = a1;
    v30 = *(v13 + 104);
    v31 = v17;
    v59[0] = v26;
    v30(v17, enum case for FloatingPointRoundingRule.up(_:), v12);
    v32 = v62;
    v30(v62, enum case for FloatingPointRoundingRule.down(_:), v12);
    sub_100770A1C();
    v34 = v33;
    v36 = v35;
    v60 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = width;
    v42 = v41;
    v44 = v43;
    v45 = *(v13 + 8);
    v45(v32, v12);
    v45(v31, v12);
    v18 = v61;
    v70.origin.x = v34;
    v70.origin.y = v36;
    v70.size.width = v42;
    width = v40;
    a5 = v39;
    a4 = v38;
    a3 = v37;
    a2 = v60;
    v70.size.height = v44;
    CGRectInset(v70, v59[0], 0.0);
    sub_10076D9CC();
    v62 = v46;
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v28 bounds];
  v62 = v29;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    width = CGRectGetWidth(v71);
  }

LABEL_19:
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  Height = CGRectGetHeight(v72);
  v48 = *(v6 + 64);
  if (v48)
  {
    [*(v6 + 64) sizeThatFits:{width, Height}];
    v61 = v49;
    v51 = v50;
    if (*&v48[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView])
    {
      v52 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v61 = 0;
    v51 = 0.0;
  }

  v52 = 1;
LABEL_24:
  v53 = *(v6 + 82);
  v60 = v51;
  if (v53 == 4)
  {
    if (((v22 | v18 ^ 1 | v52) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    CGRectGetMaxY(v74);
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    CGRectGetMaxY(v75);
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v18)
    {
      CGRectGetMinX(*&v54);
    }

    else
    {
      CGRectGetMidX(*&v54);
    }

    goto LABEL_33;
  }

  if ((v22 | v52) == 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  CGRectGetMaxY(v73);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  sub_1007709CC();
  result = [v28 setFrame:?];
  if (v48)
  {
    sub_1007709CC();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_10033FF94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10033FFB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 85))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100340000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100340070(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10034008C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003400AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

char *sub_1003400F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = sub_10076771C();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = sub_10076D1AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100940CD0 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v61 = sub_10000A61C(v15, qword_1009A1468);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  sub_10076D9BC();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v64);
  v23 = v58;
  v58(v22, v14, v11);
  sub_10076D9BC();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v64);
  v23(v27, v14, v11);
  sub_10076D9BC();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v64);
  v58(v30, v14, v11);
  v31 = v62;
  sub_10076D9BC();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(sub_1007626BC());
  *&v31[v32] = sub_1007626AC();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_100340904(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  sub_10076D17C();
  sub_10076D40C();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_100340BFC(double a1)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel);
  sub_10076D17C();
  sub_10076D40C();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  sub_10076D17C();
  sub_10076D40C();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  sub_10076D17C();
  sub_10076D40C();
  v20 = v19;
  v9(v6, v3);
  sub_10076D17C();
  sub_10076D40C();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView()
{
  result = qword_100952F08;
  if (!qword_100952F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003410E0()
{
  result = sub_10076D9AC();
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

void sub_100341184()
{
  v0 = sub_10076771C();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100940CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1468);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  sub_10076D9BC();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v43);
  v17 = v36;
  v36(v16, v7, v4);
  sub_10076D9BC();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v43);
  v17(v19, v7, v4);
  v20 = v42;
  sub_10076D9BC();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v43);
  v36(v24, v7, v4);
  sub_10076D9BC();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(sub_1007626BC());
  *(v20 + v25) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100341714()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10099E8C0);
  sub_10000A61C(v4, qword_10099E8C0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_100341870(void *a1, void *a2)
{
  v4 = sub_10076F08C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F0CC();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v11 = sub_10077068C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100342998;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100891B60;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_100341B0C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_10076F08C();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100762F6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v23 = sub_10077068C();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v18 = v24;
  v17 = v25;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_100342840;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100891B10;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  v21 = v23;
  sub_10077069C();
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_100341E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_10000A5D4(&qword_100952FD8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = sub_10075FAEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_100762F4C();
  v17 = sub_10075FABC();
  v18 = objc_allocWithZone(IAMValueEvent);
  v19 = sub_10076FF6C();
  v35 = v17 & 1;
  v20 = [v18 initWithName:v19 value:{sub_1007716BC(), v32, v33}];
  swift_unknownObjectRelease();

  [a2 receiveEvent:v20];
  LOBYTE(v19) = sub_10075FADC();
  v21 = objc_allocWithZone(IAMValueEvent);
  v22 = sub_10076FF6C();
  v35 = v19 & 1;
  v23 = [v21 initWithName:v22 value:sub_1007716BC()];
  swift_unknownObjectRelease();

  v24 = v34;
  [a2 receiveEvent:v23];

  sub_100762F5C();
  sub_100762F4C();
  v25 = (v24 + *(v5 + 56));
  v26 = *(v8 + 32);
  v26(v24, v13, v7);
  v26(v25, v10, v7);
  v27 = *(v8 + 88);
  if (v27(v24, v7) == enum case for ArcadeState.purchasing(_:) && v27(v25, v7) == enum case for ArcadeState.subscribed(_:))
  {
    (*(v8 + 96))(v25, v7);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10028484C();
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    else
    {
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    v30 = *(sub_10000A5D4(&qword_10094D3D8) + 48);
    v31 = sub_1007676BC();
    (*(*(v31 - 8) + 8))(v25 + v30, v31);
    return (v28)(v24, v7);
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    return sub_1003428F0(v24);
  }
}

uint64_t sub_1003422F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100342370(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10076F68C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate();
  v12 = objc_allocWithZone(v11);
  sub_10076F64C();

  sub_10076FC1C();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v34.receiver = v12;
  v34.super_class = v11;
  v13 = objc_msgSendSuper2(&v34, "init");

  *(v4 + 32) = v13;
  sub_100767E8C();
  sub_10076FC1C();
  v14 = v33;
  *(v4 + 40) = v33;
  sub_100016F40(0, &qword_100944EF0);
  v15 = v14;
  sub_10076FC1C();
  v16 = v33;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_rootViewController] = a2;
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = a2;
  *(v4 + 24) = objc_msgSendSuper2(&v32, "init");
  [*(v4 + 16) setMetricsDelegate:*(v4 + 32)];
  *(v4 + 48) = a3;
  v20 = *(v4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(a3 + 16);
  *(a3 + 16) = sub_10034270C;
  *(a3 + 24) = v21;

  v23 = v20;
  sub_1000167E0(v22);
  v24 = *(v4 + 40);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v4 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v28 = v26;
  v29 = v24;

  sub_100767DFC();

  return v4;
}

uint64_t sub_1003426D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100342714()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10034274C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100342794()
{
  v1 = sub_100762F6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100342840()
{
  v1 = *(sub_100762F6C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100341E8C(v0 + v2, v4, v5);
}

uint64_t sub_1003428D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003428F0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100952FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100342958()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003429B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  [v1 frame];
  MinX = CGRectGetMinX(v4);
  [v1 frame];
  CGRectGetMinY(v5);
  [v1 frame];
  CGRectGetWidth(v6);
  [v1 frame];
  CGRectGetHeight(v7);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView] frame];
  CGRectGetHeight(v8);
  return MinX;
}

void *sub_100342A6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_100342AA4(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100342AFC;
}

void sub_100342AFC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1004F9DA0(v2);
  }

  else
  {
    sub_1004F9DA0(*a1);
  }
}

uint64_t sub_100342B94(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100342D68(&qword_100952FE8, type metadata accessor for VideoCardCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100342C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100342D68(&qword_100952FE8, type metadata accessor for VideoCardCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_100342D68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100342DC4()
{
  result = qword_100952FF0;
  if (!qword_100952FF0)
  {
    sub_1007689FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952FF0);
  }

  return result;
}

uint64_t sub_100342E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F50C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_1003767CC(Strong);

  v17 = v9;
  sub_10003F040();
  v10 = v9;
  sub_10000A5D4(&qword_100952FF8);
  if (swift_dynamicCast())
  {
    sub_100012498(v15, v18);
    v11 = v19;
    v12 = v20;
    sub_10000CF78(v18, v19);
    (*(v12 + 8))(a1, a2, v11, v12);
    sub_10000A5D4(&qword_100942C70);
    (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
    v13 = sub_10076FC8C();

    sub_10000CD74(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_10034303C(v15);
    sub_10000A5D4(&qword_100942C70);
    sub_1003430A4();
    swift_allocError();
    v13 = sub_10076FC7C();
  }

  return v13;
}

uint64_t sub_10034303C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100953000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003430A4()
{
  result = qword_100953008;
  if (!qword_100953008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953008);
  }

  return result;
}

unint64_t sub_10034310C()
{
  result = qword_100953010;
  if (!qword_100953010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953010);
  }

  return result;
}

uint64_t sub_100343170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v31[1] = a1;
  v32 = a2;
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31[0] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_10076C36C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v31 - v14;
  v16 = sub_10000A5D4(&qword_100942C40);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = v31 - v18;
  sub_100016E2C(v32, v31 - v18, &qword_1009499A0);
  v20 = *(v17 + 56);
  v21 = v10;
  v32 = v19;
  sub_100016E2C(v34, &v19[v20], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v22 = *(v11 + 104);
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v38)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v24 = *v23;
  v34 = v15;
  v25 = v15;
  v26 = v31[0];
  v22(v25, v24, v10);
  swift_getKeyPath();
  sub_10076F49C();

  (*(v5 + 104))(v26, enum case for Shelf.ContentType.appTrailerLockup(_:), v4);
  sub_10022DD04();
  sub_10077018C();
  sub_10077018C();
  if (v38 == v36 && v39 == v37)
  {
    v27 = 32.0;
  }

  else if (sub_10077167C())
  {
    v27 = 32.0;
  }

  else
  {
    v27 = 20.0;
  }

  v28 = *(v5 + 8);
  v28(v26, v4);
  v28(v9, v4);

  v29 = v34;
  (*(v11 + 16))(v33, v34, v21);
  sub_1006C4580(v27);
  sub_10076C33C();
  (*(v11 + 8))(v29, v21);
  return sub_10000CFBC(v32, &qword_100942C40);
}

uint64_t sub_1003435F4()
{
  sub_1003439A8();

  return sub_1007620BC();
}

uint64_t sub_1003436D8()
{
  sub_1003439A8();

  return sub_1007620AC();
}

uint64_t sub_1003437C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v22[5] = a5;
  v22[6] = a6;
  v22[4] = a4;
  *&v22[2] = a8;
  *&v22[3] = a9;
  v22[0] = a7;
  v22[1] = a1;
  v12 = sub_10000A5D4(&qword_100942C40);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v22 - v17;
  v19 = *v9;
  sub_100016E2C(a2, v22 - v17, &qword_1009499A0);
  sub_100016E2C(a3, &v18[*(v13 + 56)], &qword_1009499A0);
  v22[7] = v19;
  sub_100016E2C(v18, v15, &qword_100942C40);
  v20 = *(v13 + 56);
  sub_1007620BC();
  sub_10000CFBC(v18, &qword_100942C40);
  sub_10000CFBC(&v15[v20], &qword_1009499A0);
  return sub_10000CFBC(v15, &qword_1009499A0);
}

unint64_t sub_1003439A8()
{
  result = qword_100953018;
  if (!qword_100953018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953018);
  }

  return result;
}

uint64_t sub_100343A2C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10076BEDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v29);
  sub_10000A5D4(&unk_100942830);
  sub_100761EDC();
  if (swift_dynamicCast())
  {
    v11 = sub_100761E7C();
    if (qword_10093F638 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10000A61C(v12, qword_10099CCD0);
    sub_10076D36C();
    if (v11)
    {

      sub_10076BEEC();
      sub_10076BE9C();
      (*(v8 + 8))(v10, v7);
      sub_10076BFCC();
      v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v13 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10075FD2C();
      sub_10034737C(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }

    v14 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
    v15 = sub_100761E4C();
    sub_10029E930(v15, a2);
  }

  else
  {
    sub_10000A570(a1, v29);
    sub_10076C52C();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v28 = v8;
    v17 = v2;
    v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
    v19 = sub_10076C4BC();
    sub_10029E930(v19, a2);

    if (sub_10076C4CC())
    {
      v20 = qword_10093F638;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_10000A61C(v21, qword_10099CCD0);
      sub_10076D36C();

      sub_10076BEEC();
      sub_10076BE9C();
      (*(v28 + 8))(v10, v7);
      sub_10076BFCC();
      v22 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v22 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10075FD2C();
      sub_10034737C(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView);
      v24 = a1[3];
      v25 = a1[4];
      v26 = sub_10000CF78(a1, v24);
      sub_1004F1948(v26, a2, v23, v24, v25);
    }
  }
}

uint64_t sub_100344018(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_10034415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100761E4C();
    v9 = sub_10076B9FC();

    if (v9)
    {
      v10 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_10034431C(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a1;
  ObjectType = swift_getObjectType();

  return sub_10034537C(a2, v10, a7, v7, ObjectType);
}

uint64_t sub_100344388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100761EDC();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100345560(v5, a3);
  }

  else
  {
    sub_10076C52C();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_1003463C4(v7, a3);
  }
}

double sub_1003444C8(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, uint64_t a9, void *a10)
{
  v100 = a6;
  v99 = a5;
  v98 = a4;
  v107 = a3;
  v106 = a2;
  v108 = a1;
  v103 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  __chkstk_darwin(v103);
  v105 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v104);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10076997C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v21 = sub_10076DDDC();
  swift_allocObject();
  v101 = sub_10076DDBC();
  swift_allocObject();
  v96 = sub_10076DDBC();
  swift_allocObject();
  v95 = sub_10076DDBC();
  swift_allocObject();
  v94 = sub_10076DDBC();
  swift_allocObject();
  v92 = sub_10076DDBC();
  swift_allocObject();
  v90 = sub_10076DDBC();
  swift_allocObject();
  v102 = sub_10076DDBC();
  swift_allocObject();
  v97 = sub_10076DDBC();
  v22 = [a7 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v93 = sub_10076DDBC();
  swift_allocObject();
  v91 = sub_10076DDBC();
  swift_allocObject();
  v89 = sub_10076DDBC();
  v23 = [a7 traitCollection];
  v24 = [v23 preferredContentSizeCategory];
  sub_10077087C();

  sub_100016F40(0, &qword_100942F00);
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  sub_10000A61C(v25, qword_1009A2098);
  v26 = [a7 traitCollection];
  v27 = sub_100770B3C();

  v28 = sub_10076C04C();
  v111 = v28;
  v83 = sub_10034737C(&qword_100943230, &type metadata accessor for Feature);
  v112 = v83;
  v29 = sub_10000DB7C(aBlock);
  v30 = *(v28 - 8);
  v31 = *(v30 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v84 = v28;
  v81 = v31;
  v80 = v30 + 104;
  v31(v29);
  sub_10076C90C();
  sub_10000CD74(aBlock);

  v85 = v27;
  sub_10076996C();
  sub_10076994C();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v88 = v15;
  v79 = v33;
  v33(v20, v15);
  if (qword_100940618 != -1)
  {
    swift_once();
  }

  v34 = qword_10099FD10;
  v35 = *algn_10099FD18;
  v36 = qword_10099FD20;
  v37 = [a7 traitCollection];
  v38 = sub_10077071C();
  v87 = v32;
  if (v38)
  {
  }

  else
  {
    v39 = sub_1007706EC();

    if (v39)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }
  }

  v40 = v36;
  v106 = a7;
  v41 = [a7 traitCollection];
  v42 = objc_allocWithZone(NSMutableAttributedString);
  v43 = v40;
  v44 = v42;
  v45 = v108;
  v46 = [v44 initWithAttributedString:v108];
  v107 = [v45 length];
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  *(v47 + 24) = v41;
  *(v47 + 32) = v46;
  *(v47 + 40) = 1;
  v48 = swift_allocObject();
  v48[2] = sub_1000275EC;
  v48[3] = v47;
  v112 = sub_1000ACB04;
  v113 = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v111 = &unk_100891E18;
  v49 = _Block_copy(aBlock);
  v50 = v43;
  v51 = v41;
  v52 = v46;

  [v45 enumerateAttributesInRange:0 options:v107 usingBlock:{0x100000, v49}];

  _Block_release(v49);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
    goto LABEL_24;
  }

  v108 = a10;
  v53 = v84;
  v111 = v84;
  v112 = v83;
  v54 = sub_10000DB7C(aBlock);
  v81(v54, v82, v53);
  v55 = v50;
  sub_10076C90C();
  sub_10000CD74(aBlock);
  v56 = v86;
  v107 = v55;
  sub_10076993C();
  sub_10076994C();
  v79(v56, v88);
  v57 = v99;
  if (v99)
  {
    v58 = HIBYTE(v99) & 0xF;
    v59 = v98;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v58 = v98 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v88) = v58 != 0;
    v48 = v106;
  }

  else
  {
    LODWORD(v88) = 0;
    v48 = v106;
    v59 = v98;
  }

  type metadata accessor for AppPromotionSubtitleView();
  v60 = [v48 traitCollection];
  sub_1004758F0(v59, v57, v100, 0, v60, v109);

  v61 = [v48 traitCollection];
  LOBYTE(v60) = sub_10077071C();

  if (v60)
  {
    if (qword_10093F640 == -1)
    {
LABEL_18:
      v62 = qword_10099CCE8;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_10093F638 != -1)
  {
    swift_once();
  }

  v62 = qword_10099CCD0;
LABEL_22:
  v63 = v105;
  v64 = sub_10000A61C(v103, v62);
  sub_1000BD5B0(v64, v63);
  v65 = v104;
  v66 = (v14 + *(v104 + 20));
  v66[3] = v21;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  *v66 = v101;
  v67 = (v14 + v65[6]);
  v67[3] = v21;
  v67[4] = &protocol witness table for LayoutViewPlaceholder;
  *v67 = v96;
  v68 = (v14 + v65[7]);
  v68[3] = v21;
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  *v68 = v95;
  v69 = (v14 + v65[8]);
  v69[3] = v21;
  v69[4] = &protocol witness table for LayoutViewPlaceholder;
  *v69 = v94;
  v70 = (v14 + v65[9]);
  v70[3] = v21;
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  *v70 = v92;
  v71 = (v14 + v65[10]);
  v71[3] = v21;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  *v71 = v90;
  v72 = (v14 + v65[11]);
  v72[3] = v21;
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  *v72 = v102;
  v73 = (v14 + v65[12]);
  v73[3] = v21;
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  *v73 = v97;
  sub_10000A570(v114, v14 + v65[13]);
  sub_10000A570(aBlock, v14 + v65[14]);
  sub_10000A570(v109, v14 + v65[15]);
  v74 = (v14 + v65[16]);
  v74[3] = v21;
  v74[4] = &protocol witness table for LayoutViewPlaceholder;
  *v74 = v93;
  v75 = (v14 + v65[17]);
  v75[3] = v21;
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  *v75 = v91;
  v76 = (v14 + v65[18]);
  v76[3] = v21;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  *v76 = v89;
  sub_1000BD614(v63, v14);
  *(v14 + v65[19]) = v88;

  sub_100101080(v48, v14);

  sub_10000CD74(v109);
  sub_10000CD74(aBlock);
  sub_10000CD74(v114);
  sub_1000BE98C(v14);
  return a8;
}

void sub_100345140(uint64_t a1, char *a2)
{
  v3 = sub_10076B96C();
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E67C();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (sub_10076BB3C())
    {
      v6 = sub_100766AAC();
      v8 = v7;

      if (v8)
      {
        sub_10075E1BC();
        v9 = sub_10075E19C();
        if (v9)
        {
          v10 = v9;
          sub_10076BB7C();

          sub_10000A5D4(&unk_10094A8C0);
          sub_10076F64C();

          sub_10076FC1C();
          v11 = v17[1];
          v12 = v17[2];
          type metadata accessor for SubscriptionLockupPresenter();
          swift_allocObject();
          v13 = a2;
          v14 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v6, v8, v5, a2, &off_10088F6E8, v10, v11, v12);
          v15 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v13[v15] = v14;

          return;
        }
      }
    }
  }

  v16 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v16] = 0;

  sub_10029D7B0(0, 0);
}

double sub_10034537C(double a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_100761EDC();
  if (swift_dynamicCastClass())
  {

    sub_100761EBC();
    v9 = sub_10076C5AC();

    v10 = a5;
    v26 = a4;
    v11 = sub_100761E9C();
    v13 = v12;
    v14 = sub_100761ECC();
    v16 = v15;
    v17 = sub_100761E2C();
    v18 = sub_1003444C8(v9, v11, v13, v14, v16, v17, a3, a1, v26, v10);
  }

  else
  {
    sub_10076C52C();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    sub_10076C50C();
    v19 = sub_10076C5AC();

    v20 = sub_10076C4FC();
    v22 = v21;
    v23 = sub_10076C51C();
    v18 = sub_1003444C8(v19, v20, v22, v23, v24, 0, a3, a1, a4, a5);
  }

  return v18;
}

uint64_t sub_100345560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v5 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v5 - 8);
  v103 = &v84 - v6;
  v102 = sub_100768FEC();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10000A5D4(&unk_100946750);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v101 = &v84 - v8;
  v9 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v9 - 8);
  v106 = &v84 - v10;
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v108 = &v84 - v12;
  v13 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v13 - 8);
  v107 = &v84 - v14;
  v15 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v15 - 8);
  v112 = &v84 - v16;
  v17 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v17 - 8);
  v19 = &v84 - v18;
  v20 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v20 - 8);
  v98 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v110 = &v84 - v23;
  v105 = sub_10076361C();
  v24 = *(v105 - 8);
  __chkstk_darwin(v105);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100761E9C();
  sub_1000BB788(v27, v28);
  sub_100761EBC();
  v29 = sub_10076C5AC();

  sub_1000BB8E8(v29);
  v30 = sub_100761ECC();
  v32 = v31;
  v33 = sub_100761E2C();
  sub_100475DC4(v30, v32, v33);
  v34 = v19;

  v35 = v112;

  v36 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_100761E8C();
  v37 = sub_1007635FC();
  v38 = v105;
  (*(v24 + 8))(v26, v105);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_1000BB310();
  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v109 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
  v40 = v110;
  v41 = v39;
  v42 = sub_100761E4C();
  v43 = sub_10000A5D4(&qword_100945590);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v97 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = sub_10075F78C();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  sub_10075E67C();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v92 = v45;
    v93 = v43;
    v95 = v34;
    v96 = a1;
    v50 = v48;
    v104 = v48;
    v51 = v49;
    v89 = sub_1007628DC();
    v52 = *(v89 - 8);
    v88 = *(v52 + 56);
    v90 = v52 + 56;
    v53 = v107;
    v88(v107, 1, 1, v89);
    v87 = *(v111 + 56);
    v105 = v42;
    v54 = v108;
    v87(v108, 1, 1, v113);
    v55 = sub_10076C54C();
    v56 = *(v55 - 8);
    v85 = *(v56 + 56);
    v86 = v56 + 56;
    v57 = v106;
    v85(v106, 1, 1, v55);
    swift_retain_n();
    sub_1004D0A60(v50, v51, v40, v114, 1, 0, v35, v53, v57, v54);
    sub_10000CFBC(v57, &unk_100949290);
    v51[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    v91 = v51;
    [v51 setNeedsLayout];
    sub_10000CFBC(v54, &qword_10094F730);
    sub_10000CFBC(v53, &unk_1009492A0);
    v58 = v35;
    v94 = v41;
    v59 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v60 = sub_10075E66C();
    v88(v53, 1, 1, v89);
    v87(v54, 1, 1, v113);
    v85(v57, 1, 1, v55);
    sub_1004D0A60(v60, v59, v40, v114, 0, 0, v58, v53, v57, v54);
    sub_10000CFBC(v57, &unk_100949290);
    v59[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v105;
    sub_10000CFBC(v61, &qword_10094F730);
    sub_10000CFBC(v53, &unk_1009492A0);
    v63 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = sub_10076BB5C();
    if (v64)
    {
    }

    sub_100261178(v64 != 0);
    v65 = *&v59[v63];
    v66 = sub_10076BB3C();

    v67 = sub_10076BA2C();

    v68 = v98;
    v92(v98, 1, 1, v93);
    v69 = v99;
    v70 = v102;
    (*(v99 + 104))(v100, enum case for OfferButtonSubtitlePosition.below(_:), v102);
    (*(v69 + 56))(v103, 1, 1, v70);
    sub_10034737C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v71 = v101;
    sub_10076759C();
    sub_1001F12C8(v66, v67, 0, v68, v71, v114, 0, 0);

    (*(v111 + 8))(v71, v113);
    sub_10000CFBC(v68, &unk_100946760);
    v46 = v94;
    sub_100345140(v62, v94);

    v34 = v95;
    sub_10029E170(v46, v95);
    a1 = v96;
    v35 = v112;
    v40 = v110;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] setHidden:1];
    v72 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v73 = sub_1007628DC();
    v74 = v107;
    (*(*(v73 - 8) + 56))(v107, 1, 1, v73);
    v75 = v108;
    (*(v111 + 56))(v108, 1, 1, v113);
    v76 = sub_10076C54C();
    v77 = v106;
    (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
    sub_1004D0A60(v42, v72, v40, v114, 0, 0, v35, v74, v77, v75);
    sub_10000CFBC(v77, &unk_100949290);
    v72[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v72 setNeedsLayout];
    sub_10000CFBC(v75, &qword_10094F730);
    sub_10000CFBC(v74, &unk_1009492A0);
    sub_10029E170(v46, v34);
  }

  sub_10000CFBC(v35, &unk_10094D210);
  sub_10000CFBC(v34, &qword_10094FCE8);
  sub_10000CFBC(v40, &unk_100946760);
  v78 = swift_allocObject();
  v79 = v109;
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  *(v80 + 2) = v78;
  *(v80 + 3) = a1;
  *(v80 + 4) = v114;
  v81 = (v79 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  v82 = *(v79 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  *v81 = sub_1003463B8;
  v81[1] = v80;

  sub_1000167E0(v82);
}

uint64_t sub_100346338()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100346370()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003463C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v6 - 8);
  v114 = v94 - v7;
  v113 = sub_100768FEC();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10000A5D4(&unk_100946750);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v112 = v94 - v9;
  v10 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v10 - 8);
  v116 = v94 - v11;
  v12 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v12 - 8);
  v118 = v94 - v13;
  v14 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v14 - 8);
  v117 = v94 - v15;
  v16 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v16 - 8);
  v124 = v94 - v17;
  v18 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v18 - 8);
  v122 = v94 - v19;
  v20 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v20 - 8);
  v109 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v120 = v94 - v23;
  v24 = sub_10076361C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076C4FC();
  sub_1000BB788(v28, v29);
  sub_10076C50C();
  v30 = sub_10076C5AC();

  sub_1000BB8E8(v30);
  v31 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView);
  sub_10076C51C();
  v32 = *(v31 + qword_1009588E8);
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_1009588F0) setHidden:1];
  sub_100760C4C();
  v35 = a2;
  sub_10076F63C();

  v36 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_10076C4DC();
  v37 = sub_1007635FC();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView);
  sub_1004F16F4();
  sub_1000BB310();
  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (sub_10076C4CC())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView);
  }

  v39 = v122;
  v40 = v120;
  v115 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView);
  v42 = sub_10076C4BC();
  v43 = sub_10000A5D4(&qword_100945590);
  v44 = *(v43 - 8);
  v107 = *(v44 + 56);
  v108 = v43;
  v106 = v44 + 56;
  v107(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = sub_10075F78C();
  (*(*(v45 - 8) + 56))(v124, 1, 1, v45);
  sub_10075E67C();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v119 = v41;
  if (v47)
  {
    v49 = v47;
    v104 = a1;
    v105 = v3;
    v100 = sub_1007628DC();
    v50 = *(v100 - 8);
    v99 = *(v50 + 56);
    v101 = v50 + 56;
    v51 = v117;
    v99(v117, 1, 1, v100);
    v98 = *(v121 + 56);
    v52 = v118;
    v98(v118, 1, 1, v123);
    v96 = sub_10076C54C();
    v53 = *(v96 - 8);
    v95 = *(v53 + 56);
    v97 = v53 + 56;
    v54 = v116;
    v95(v116, 1, 1, v96);
    v55 = v46;
    swift_retain_n();
    v56 = v40;
    v57 = v40;
    v58 = v115;
    v59 = v124;
    sub_1004D0A60(v49, v48, v57, v115, 1, 0, v124, v51, v54, v52);
    sub_10000CFBC(v54, &unk_100949290);
    v48[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    v102 = v48;
    [v48 setNeedsLayout];
    sub_10000CFBC(v52, &qword_10094F730);
    sub_10000CFBC(v51, &unk_1009492A0);
    v60 = v49;
    v61 = *&v119[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v103 = v60;
    v62 = v58;
    v63 = sub_10075E66C();
    v99(v51, 1, 1, v100);
    v98(v52, 1, 1, v123);
    v95(v54, 1, 1, v96);
    v64 = v62;
    sub_1004D0A60(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10000CFBC(v54, &unk_100949290);
    v61[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v61 setNeedsLayout];

    sub_10000CFBC(v52, &qword_10094F730);
    sub_10000CFBC(v51, &unk_1009492A0);
    v65 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = sub_10076BB5C();
    v67 = v55;
    if (v66)
    {
    }

    sub_100261178(v66 != 0);
    v68 = *&v61[v65];
    v69 = sub_10076BB3C();

    v70 = sub_10076BA2C();

    v71 = v109;
    (v107)(v109, 1, 1, v108);
    v72 = v110;
    v73 = v113;
    (*(v110 + 104))(v111, enum case for OfferButtonSubtitlePosition.below(_:), v113);
    (*(v72 + 56))(v114, 1, 1, v73);
    sub_10034737C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v74 = v112;
    sub_10076759C();
    v75 = v64;
    sub_1001F12C8(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v121 + 8))(v74, v123);
    sub_10000CFBC(v71, &unk_100946760);
    v76 = v119;
    sub_100345140(v67, v119);

    v39 = v122;
    sub_10029E170(v76, v122);
    v3 = v105;
    v77 = v124;
    v78 = v120;
  }

  else
  {
    [v48 setHidden:1];
    v94[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v80 = sub_1007628DC();
    v81 = v117;
    (*(*(v80 - 8) + 56))(v117, 1, 1, v80);
    v82 = v118;
    (*(v121 + 56))(v118, 1, 1, v123);
    v83 = sub_10076C54C();
    v84 = v116;
    (*(*(v83 - 8) + 56))(v116, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v115;
    v77 = v124;
    sub_1004D0A60(v85, v79, v86, v115, 0, 0, v124, v81, v84, v82);
    sub_10000CFBC(v84, &unk_100949290);
    v79[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v79 setNeedsLayout];
    v76 = v119;
    v75 = v87;
    sub_10000CFBC(v82, &qword_10094F730);
    sub_10000CFBC(v81, &unk_1009492A0);
    sub_10029E170(v76, v39);
  }

  sub_10000CFBC(v77, &unk_10094D210);
  sub_10000CFBC(v39, &qword_10094FCE8);
  sub_10000CFBC(v78, &unk_100946760);
  sub_10076C4BC();
  v88 = sub_10076B9FC();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1003472A4;
    *(v88 + 24) = v89;

    v90 = sub_1003472E4;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  *v91 = v90;
  v91[1] = v88;
  return sub_1000167E0(v92);
}

uint64_t sub_100347264()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003472AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10034730C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100347364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034737C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ArcadeSeeAllGamesButton()
{
  result = qword_100953078;
  if (!qword_100953078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100347468(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_100953070];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v1[qword_100953068] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  [v11 setTintColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 whiteColor];
  [v14 setBackgroundColor:v15];

  [v14 addTarget:v14 action:"navigateToSeeAllGames" forControlEvents:64];
  v16 = sub_10076FF6C();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v14 setImage:v17 forState:0];
  if (qword_1009409B8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A0B38);
  v20 = [v14 traitCollection];
  (*(*(v18 - 8) + 16))(v7, v19, v18);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v30[3] = v4;
  v30[4] = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v30);
  (*(v5 + 16))(v21, v7, v4);
  sub_10076C8EC();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  sub_10000CD74(v30);
  v24 = floor(v23);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v24 = v24 + -5.0;
  }

  v26 = [objc_opt_self() configurationWithPointSize:v24];
  [v14 setPreferredSymbolConfiguration:v26 forImageInState:0];

  sub_1007641DC();
  sub_10000A5D4(&unk_100945BF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100783DD0;
  *(v27 + 32) = sub_10076E88C();
  *(v27 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v14;
}

void sub_1003478E4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 bounds];
  Height = CGRectGetHeight(v10);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }
}

void sub_1003479E0(void *a1)
{
  v1 = a1;
  sub_1003478E4();
}

void sub_100347A28(char *a1)
{
  v1 = &a1[qword_100953070];
  if (a1[qword_100953070 + 16])
  {
    v2 = qword_1009409B8;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_10076D3DC();
    v5 = sub_10000A61C(v4, qword_1009A0B38);
    v6 = [v3 traitCollection];
    sub_1001ACC0C(v5);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_100347B0C(char *a1)
{
  v1 = &a1[qword_100953070];
  if (a1[qword_100953070 + 16])
  {
    v2 = qword_1009409B8;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_10076D3DC();
    v5 = sub_10000A61C(v4, qword_1009A0B38);
    v6 = [v3 traitCollection];
    sub_1001ACC0C(v5);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

id sub_100347BF0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[qword_100953070];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  if (qword_1009409B8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A0B38);
  v9 = [v0 traitCollection];
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v19[3] = v2;
  v19[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v19);
  (*(v3 + 16))(v10, v5, v2);
  sub_10076C8EC();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_10000CD74(v19);
  v13 = floor(v12);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v13 = v13 + -5.0;
  }

  v15 = [objc_opt_self() configurationWithPointSize:v13];
  [v0 setPreferredSymbolConfiguration:v15 forImageInState:0];

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "invalidateIntrinsicContentSize");
}

void sub_100347E70(void *a1)
{
  v1 = a1;
  sub_100347BF0();
}

uint64_t sub_100347EB8()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v49 = v37 - v2;
  v3 = sub_10075F65C();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100765F6C();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = sub_10076C15C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  v26 = *(v0 + qword_100953068);
  sub_10076148C();
  v37[0] = v26;
  sub_10076F5CC();
  v37[1] = v52;
  sub_10076124C();
  v27 = sub_10075DB7C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    sub_10075DB6C();
    if (v29(v22, 1, v27) != 1)
    {
      sub_10000CFBC(v22, &unk_1009435D0);
    }
  }

  else
  {
    (*(v28 + 32))(v25, v22, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.arcadeSeeAllGames(_:), v13);
  sub_100050CC0(v25, v19);
  v30 = sub_10076096C();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v50 = 0u;
  v51 = 0u;
  sub_10076F4DC();
  (*(v38 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v42 + 104))(v45, enum case for FlowAnimationBehavior.infer(_:), v43);
  (*(v46 + 104))(v48, enum case for FlowOrigin.inapp(_:), v47);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v31 = sub_10075F5EC();
  v32 = sub_10000A5D4(&unk_1009428E0);
  v33 = v49;
  v34 = v37[0];
  sub_10076F5AC();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v33, 1, v32) == 1)
  {
    sub_10000CFBC(v25, &unk_1009435D0);

    return sub_10000CFBC(v33, &unk_100943200);
  }

  else
  {
    sub_100263C24(v31, 1, v34, v33);

    sub_10000CFBC(v25, &unk_1009435D0);
    return (*(v35 + 8))(v33, v32);
  }
}

void sub_100348628(void *a1)
{
  v1 = a1;
  sub_100347EB8();
}

uint64_t sub_1003486C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10034871C(int a1)
{
  sub_10077145C(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x64726177726F66;
    }

    else
    {
      v2._countAndFlagsBits = 1701736302;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v2._countAndFlagsBits = 0x647261776B636162;
  }

  v2._object = v3;
  sub_1007700CC(v2);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  sub_1007700CC(v11);
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v6._countAndFlagsBits = v5;
  }

  else
  {
    v6._countAndFlagsBits = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  v6._object = v7;
  sub_1007700CC(v6);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_1007700CC(v12);
  v13._countAndFlagsBits = sub_10077034C();
  sub_1007700CC(v13);

  v14._object = 0x80000001007E0580;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_1007700CC(v14);
  if ((a1 & 0x10000) != 0)
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_1007700CC(v8);

  return 0;
}

uint64_t sub_1003488DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10034C30C(*(a1 + 8) | v2, *(a2 + 8) | v3, *a1, *a2);
}

uint64_t sub_100348914()
{
  if (*(v0 + 10))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_10034871C(*(v0 + 8) | v1);
}