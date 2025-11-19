void sub_10025CC60(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase] = a1;
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

char *sub_10025CD28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v121 = type metadata accessor for SmallLockupLayout.Metrics();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v12;
  v116 = type metadata accessor for CornerStyle();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase] = 0;
  v22 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *&v5[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer] = 0;
  v24 = &v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_clickAction;
  v26 = sub_10002849C(&unk_10097B3D0);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView] = v27;
  v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardView] = v28;
  type metadata accessor for ArtworkView();
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_artworkView] = static ArtworkView.cardArtworkView.getter();
  if (qword_10096DDF0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_1009D0950);
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
  v38 = type metadata accessor for DynamicTypeLabel();
  v126 = v14;
  v39 = v38;
  v40 = objc_allocWithZone(v38);
  v132 = v19;
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DDF8 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v29, qword_1009D0968);
  v42 = v132;
  v33(v132, v41, v29);
  v35(v42, 0, 1, v29);
  v128(v131, v129, v126);
  v43 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DE00 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v29, qword_1009D0980);
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
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView] = sub_100251D00(1);
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v133.receiver = v5;
  v133.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v133, "initWithFrame:", a1, a2, a3, a4);
  v49 = [v48 contentView];
  [v49 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v50 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel;
  [*(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel) _setTextColorFollowsTintColor:1];
  v51 = *(v48 + v50);
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v52 = [v48 contentView];
  [v52 addSubview:*(v48 + v50)];

  v53 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_titleLabel;
  v54 = *(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_titleLabel);
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v55 = [v48 contentView];
  [v55 addSubview:*(v48 + v53)];

  v56 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_subtitleLabel;
  v57 = *(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_subtitleLabel);
  sub_100005744(0, &qword_100970180);
  v58 = v57;
  v59 = static UIColor.secondaryText.getter();
  [v58 setTextColor:v59];

  v60 = *(v48 + v56);
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v61 = [v48 contentView];
  [v61 addSubview:*(v48 + v56)];

  v62 = [v48 contentView];
  v63 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView;
  [v62 addSubview:*(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView)];

  v64 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardView;
  [*(v48 + v63) addSubview:*(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardView)];
  [*(v48 + v64) setAccessibilityIgnoresInvertColors:1];
  v131 = v64;
  v65 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_artworkView;
  [*(v48 + v64) addSubview:*(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_artworkView)];
  v66 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView;
  v67 = *(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView);
  v68 = v115;
  v69 = v114;
  v70 = v116;
  (*(v115 + 104))(v114, enum case for CornerStyle.arc(_:), v116);
  v71 = v67;
  sub_10025183C(v69, 12, 20.0);

  (*(v68 + 8))(v69, v70);
  v72 = *(v48 + v65);
  v73 = dispatch thunk of RoundedCornerView.borderView.getter();

  if (v73)
  {
    [*(v48 + v65) insertSubview:*(v48 + v66) belowSubview:v73];
  }

  else
  {
    [*(v48 + v65) addSubview:*(v48 + v66)];
  }

  sub_10025DD7C();
  v74 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView;
  v75 = qword_10096D4E0;
  v76 = *(v48 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView);
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = sub_1000056A8(v121, qword_1009CEA80);
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v119;
  v80(v119, v78, v77);
  v82 = *&v76[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v83 = v117;
  v80(v117, v81, v77);
  v84 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
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
  v86 = qword_10096DDC0;
  v87 = *(*(*(v48 + v74) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v88 = v74;
  if (v86 != -1)
  {
    swift_once();
  }

  v89 = v118;
  v90 = sub_1000056A8(v118, qword_1009D08D8);
  v91 = v132;
  v92 = v123;
  v123(v132, v90, v89);
  v93 = v122;
  v122(v91, 0, 1, v89);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v94 = qword_10096DDC8;
  v95 = *(*(*(v48 + v88) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v94 != -1)
  {
    swift_once();
  }

  v96 = sub_1000056A8(v89, qword_1009D08F0);
  v92(v91, v96, v89);
  v93(v91, 0, 1, v89);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v97 = qword_10096DDD0;
  v98 = *(*(*(v48 + v88) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_1000056A8(v89, qword_1009D0908);
  v92(v91, v99, v89);
  v93(v91, 0, 1, v89);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v100 = qword_10096DD80;
  v101 = *(*(v48 + v88) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_1000056A8(v89, qword_1009D0818);
  v92(v91, v102, v89);
  v93(v91, 0, 1, v89);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v103 = qword_10096DD88;
  v104 = *(*(v48 + v88) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel);
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = sub_1000056A8(v89, qword_1009D0830);
  v92(v91, v105, v89);
  v93(v91, 0, 1, v89);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  swift_unknownObjectWeakAssign();
  v106 = *&v131[v48];
  v107 = *(v48 + v88);
  v108 = v48;
  [v106 addSubview:v107];
  v109 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_tapGestureRecognizer;
  [*&v108[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_tapGestureRecognizer] setDelegate:v108];
  v110 = *&v108[v109];
  [v110 addTarget:v108 action:"handleTapWithGestureRecognizer:"];

  [*(v48 + v88) addGestureRecognizer:*&v108[v109]];
  [*(v48 + v88) setUserInteractionEnabled:1];
  sub_10002849C(&qword_10097B110);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007B10D0;
  *(v111 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v111 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v108;
}

void sub_10025DD7C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = static UIContentSizeCategory.<= infix(_:_:)();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY);
    *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY) = 0x3FE0000000000000;
    v5 = 0.5;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = static UIContentSizeCategory.< infix(_:_:)();
    v3 = *&v0[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY);
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

  v8 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
  v9 = [*(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v11 = v10;

  v12 = *v4;
  v13 = [*(v3 + v8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v14 = [*(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v15 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
  *(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY) = v5;
  v16 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
  v17 = [*(v3 + OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v19 = v18;

  v20 = *(v3 + v15);
  v21 = [*(v3 + v16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v19, v20}];
}

id sub_10025E100()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_tapGestureRecognizer] removeTarget:v0 action:0];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer];
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
  result = qword_10097B3C0;
  if (!qword_10097B3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10025E33C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v17 = a1;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = a1;
    v4 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView;
    v5 = *&v2[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView];
    if (!v5)
    {
      v10 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = *&v2[v4];
      if (v11)
      {
        [v11 removeFromSuperview];
        v12 = *&v2[v4];
      }

      else
      {
        v12 = 0;
      }

      *&v2[v4] = v10;
      v13 = v10;

      if (v13)
      {
        v14 = v13[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
        v13[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 2;
        sub_1002C3F30(v14);
        v15 = [v2 contentView];
        [v15 addSubview:v13];
      }

      [v2 setNeedsLayout];

      v16 = *&v2[v4];
      if (!v16)
      {
        goto LABEL_13;
      }

      *(v16 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008BACC0;
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
      type metadata accessor for AppEventFormattedDatePresenter(0);
      swift_allocObject();
      v7 = v6;
      v8 = sub_1006E6CE8(v3, v6, &off_1008BC738);
      v9 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
      swift_beginAccess();
      *&v7[v9] = v8;
    }

    else
    {
LABEL_13:
    }

    [*&v2[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel] setHidden:1];
    sub_10025E61C([objc_allocWithZone(UILongPressGestureRecognizer) init]);
    return [v2 setNeedsLayout];
  }

  v19 = *&v2[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v19)
  {
    [v19 setHidden:1];
  }

  [*&v2[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel] setHidden:0];
  v20 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v2[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v21 = *&v2[v20];
  }

  else
  {
    v21 = 0;
  }

  *&v2[v20] = 0;

  return [v2 setNeedsLayout];
}

void sub_10025E61C(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
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

uint64_t sub_10025E740()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for OfferButtonMetrics();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v73 - v5;
  v81 = type metadata accessor for SmallLockupLayout.Metrics();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v73 - v9;
  v78 = type metadata accessor for LayoutRect();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowcaseItemLayout.Metrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for FlowcaseItemLayout();
  v82 = *(v83 - 8);
  *&v17 = __chkstk_darwin(v83).n128_u64[0];
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v84 = ObjectType;
  objc_msgSendSuper2(&v100, "layoutSubviews", v17);
  v19 = [v1 contentView];
  v20 = sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  v21 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView];
  v79 = v7;
  if (v21)
  {
    v22 = v21;
    if (![v22 isHidden])
    {
      goto LABEL_5;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel];
LABEL_5:
  v23 = qword_10096D4D0;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v13, qword_1009CEA50);
  (*(v14 + 16))(v16, v25, v13);
  v26 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView];
  v98 = v20;
  v99 = &protocol witness table for UIView;
  v96 = &protocol witness table for UIView;
  v97 = v26;
  v95 = v20;
  v85 = v24;
  v94 = v24;
  v27 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_titleLabel];
  v92 = type metadata accessor for DynamicTypeLabel();
  v93 = &protocol witness table for UILabel;
  v91 = v27;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_subtitleLabel];
  v90 = &protocol witness table for UILabel;
  v89 = v92;
  v88 = v28;
  v29 = v26;
  v30 = v27;
  v31 = v28;
  FlowcaseItemLayout.init(metrics:artworkView:captionView:titleText:subtitleText:)();
  FlowcaseItemLayout.placeChildren(relativeTo:in:)();
  (*(v10 + 8))(v12, v78);
  v32 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardView];
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    v35 = static NSObject.== infix(_:_:)();

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
  ArtworkView.frame.setter();
  v45 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView];
  v46 = v86;
  sub_10013F3FC(v86);
  [v45 layoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [v45 traitCollection];
  v52 = v81;
  (*(v36 + 16))(v37, v46, v81);
  v53 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  v55 = v85;
  if ((v56 & 1) == 0 && ((v53 | v54) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v57 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v57 = qword_100991028;
    }

    v58 = v77;
    v59 = sub_1000056A8(v77, v57);
    v60 = v76;
    v61 = v74;
    (*(v76 + 16))(v74, v59, v58);
    v62 = v75;
    (*(v60 + 32))(v75, v61, v58);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v60 + 8))(v62, v58);
    v46 = v86;
    v55 = v85;
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
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
  v70 = *&v1[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView];
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
  sub_100260E74(&qword_10097B3F8, type metadata accessor for EditorialCardCollectionViewCell);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();

  return (*(v82 + 8))(v87, v83);
}

void sub_10025F10C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10002849C(&unk_10097B3D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer);
  if (!v16)
  {
    return;
  }

  v56 = v13;
  sub_100005744(0, &qword_100978360);
  v57 = v16;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = ObjectType;
  v55 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView);
  v18 = [v17 superview];
  v19 = [v1 contentView];
  v20 = v19;
  if (v18)
  {
    if (!v19)
    {

      goto LABEL_16;
    }

    sub_100005744(0, &qword_100972EB0);
    v21 = static NSObject.== infix(_:_:)();

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
      sub_100005744(0, &qword_100972EB0);
      v27 = static NSObject.== infix(_:_:)();

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
    v62 = sub_100260E34;
    v63 = v38;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100007A08;
    v61 = &unk_1008BAD08;
    v39 = _Block_copy(&aBlock);
    v40 = v2;

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v40;
    v62 = sub_100260E40;
    v63 = v41;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v42 = &unk_1008BAD58;
LABEL_41:
    v60 = sub_100504C5C;
    v61 = v42;
    v50 = _Block_copy(&aBlock);
    v51 = v40;

    [v37 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v39 options:v50 animations:0.0 completion:1.0];
    _Block_release(v50);
    _Block_release(v39);

    return;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      [a1 locationInView:v17];
      v34 = v32;
      v35 = v33;
      v36 = (v2 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_initialLongPressLocation);
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

    else if (v22 == 3)
    {
      v23 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_clickAction;
      swift_beginAccess();
      sub_100079A28(v2 + v23, v10);
      v24 = v55;
      if ((*(v55 + 6))(v10, 1, v56) == 1)
      {

        sub_10002B894(v10, &qword_10097B3F0);
      }

      else
      {
        v24[4](v15, v10, v56);
        ObjectGraphPair.value.getter();
        v61 = v54;
        aBlock = v2;
        v45 = v2;
        dispatch thunk of Action.clickSender.setter();

        ObjectGraphPair.objectGraph.getter();
        v46 = sub_10002849C(&unk_100974490);
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          (v24[1])(v15, v56);

          sub_10002B894(v7, &unk_100972A00);
        }

        else
        {
          v52 = v56;
          ObjectGraphPair.value.getter();
          v53 = ObjectGraphPair.objectGraph.getter();
          sub_1005F9AF4(aBlock, 1, v53, v7);

          (v24[1])(v15, v52);

          (*(v47 + 8))(v7, v46);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  [a1 locationInView:v17];
  v28 = v2 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_initialLongPressLocation;
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
      v62 = sub_100261038;
      v63 = v48;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100007A08;
      v61 = &unk_1008BADA8;
      v39 = _Block_copy(&aBlock);
      v40 = v2;

      v49 = swift_allocObject();
      *(v49 + 16) = 1;
      *(v49 + 24) = v40;
      v62 = sub_100261048;
      v63 = v49;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v42 = &unk_1008BADF8;
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
  sub_100005744(0, &qword_100972EB0);
  v31 = static NSObject.== infix(_:_:)();

  if (v31)
  {
    goto LABEL_40;
  }

LABEL_16:
  v25 = v57;
LABEL_17:
}

id sub_10025FAC0(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_10025FB68(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  sub_10025DD7C();
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
    sub_10025FC20();
  }
}

void sub_10025FC20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView);
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [*&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel] layer];
  [v4 setCompositingFilter:v3];

  v5 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
  v6 = [*(*&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v3];

  v7 = [*(*(*&v1[v5] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v3];

  v8 = [*(*&v1[v5] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) layer];
  [v8 setCompositingFilter:v3];
}

BOOL sub_10025FE80(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097B3F0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v37 - v8;
  v10 = *&v3[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    sub_100005744(0, &unk_100993110);
    v11 = a1;
    v12 = v10;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView];
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
          v25 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_clickAction;
          swift_beginAccess();
          sub_100079A28(&v3[v25], v9);
          v26 = sub_10002849C(&unk_10097B3D0);
          v27 = (*(*(v26 - 8) + 48))(v9, 1, v26) != 1;
          sub_10002B894(v9, &qword_10097B3F0);
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
    sub_100005744(0, &qword_100972EB0);
    v33 = v23;
    v34 = v3;
    v35 = static NSObject.== infix(_:_:)();

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

  return *&v3[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction] != 0;
}

void sub_100260310()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    sub_1000798B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10026041C()
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_100260E74(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v4 = *(v1 + v2);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_100260538()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1002C17B4();
  }
}

double sub_100260600()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView;
  [*(v1 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_cardContainerView) bounds];
  v4 = v3 * 0.5;
  [*(v1 + v2) bounds];
  return v4;
}

uint64_t sub_100260664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspectRatio();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Artwork.Crop();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v52 - v18;
  sub_10002C0AC(a1, v61);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for EditorialCard();
  result = swift_dynamicCast();
  if (result)
  {
    v52[1] = v8;
    v53 = v14;
    v21 = v60;
    v22 = EditorialCard.artwork.getter();
    v54 = v21;
    v55 = a2;
    if (v22)
    {
      Artwork.crop.getter();
      static Artwork.Crop.boundingBox.getter();
      sub_100260E74(&unk_10097B3E0, &type metadata accessor for Artwork.Crop);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v53 + 8);
      v24(v16, v13);
      if (v23)
      {
        v52[0] = 5;
      }

      else
      {
        v52[0] = Artwork.Crop.preferredContentMode.getter();
      }

      v24(v19, v13);
      v25 = v59;
      v26 = [v59 contentView];
      sub_100005744(0, &qword_100972EB0);
      LayoutMarginsAware<>.layoutFrame.getter();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      if (qword_10096D4D0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for FlowcaseItemLayout.Metrics();
      sub_1000056A8(v35, qword_1009CEA50);
      FlowcaseItemLayout.Metrics.artworkAspectRatio.getter();
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
      AspectRatio.height(fromWidth:)();
      (*(v10 + 8))(v12, v9);
      v36 = v52[0];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v37 = *&v25[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_artworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v37 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      [v37 setContentMode:v36];
      type metadata accessor for ArtworkView();
      sub_100260E74(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    if (EditorialCard.lockup.getter())
    {
      v38 = dispatch thunk of Lockup.artwork.getter();

      if (v38)
      {
        v39 = *&v59[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView];
        v40 = *(v39 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
        v41 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
        swift_beginAccess();
        v42 = v57;
        v43 = v40 + v41;
        v44 = v56;
        v45 = v58;
        (*(v57 + 16))(v56, v43, v58);
        SmallLockupLayout.Metrics.artworkSize.getter();
        (*(v42 + 8))(v44, v45);
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        v59 = *(v53 + 8);
        (v59)(v16, v13);
        Artwork.config(_:mode:prefersLayeredImage:)();
        v46 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
        v47 = *(v39 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v47 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();

        v48 = *(v39 + v46);
        Artwork.crop.getter();
        v49 = Artwork.Crop.preferredContentMode.getter();
        (v59)(v16, v13);
        [v48 setContentMode:v49];

        v50 = *(v39 + v46);
        type metadata accessor for ArtworkView();
        sub_100260E74(&qword_100970E80, &type metadata accessor for ArtworkView);
        v51 = v50;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }
  }

  return result;
}

void sub_100260E44()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer);
    if (v1)
    {
      [v1 setEnabled:1];
    }
  }
}

uint64_t sub_100260E74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100260EBC()
{
  v1 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase) = 0;
  v3 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_longPressGestureRecognizer) = 0;
  v5 = v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_clickAction;
  v7 = sub_10002849C(&unk_10097B3D0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for TodayBrickPlaceholderView()
{
  result = qword_10097B418;
  if (!qword_10097B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1002610EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = qword_10097B400;
  type metadata accessor for ArtworkView();
  v11 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v10] = v11;
  v12 = qword_10097B408;
  type metadata accessor for Placeholder();
  v13 = static Placeholder.headingTitleText.getter();
  v15 = v14;
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D1760);
  v18 = sub_10025097C(v13, v15, v17);

  *&v5[v12] = v18;
  v19 = qword_10097B410;
  v20 = static Placeholder.titleText.getter();
  v22 = v21;
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v16, qword_1009D1778);
  v24 = sub_10025097C(v20, v22, v23);

  *&v5[v19] = v24;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for TodayBrickPlaceholderView();
  v25 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v26 = *&v25[qword_10097B400];
  v27 = v25;
  [v27 addSubview:v26];
  [v27 addSubview:*&v27[qword_10097B408]];
  [v27 addSubview:*&v27[qword_10097B410]];

  return v27;
}

uint64_t sub_100261344@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for SmallStoryCardLayout();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22 - v11;
  v13 = [v1 traitCollection];
  sub_100187A84(v13, v12);

  v14 = *&v1[qword_10097B400];
  v32 = type metadata accessor for ArtworkView();
  v33 = &protocol witness table for UIView;
  v31 = v14;
  v15 = *&v1[qword_10097B408];
  v29 = sub_100261828();
  v30 = &protocol witness table for UIView;
  v27 = &protocol witness table for UIView;
  v28 = v15;
  v16 = *&v1[qword_10097B410];
  v26 = v29;
  v25 = v16;
  (*(v6 + 16))(v8, v12, v5);
  v17 = v14;
  v18 = v15;
  v19 = v16;
  SmallStoryCardLayout.init(contentView:headingLabel:descriptionLabel:metrics:)();
  sub_100261874();
  v20 = v23;
  Measurable.placeable.getter();
  (*(v2 + 8))(v4, v20);
  return (*(v6 + 8))(v12, v5);
}

void sub_1002615A8()
{
  v1 = *(v0 + qword_10097B410);
}

id sub_1002615F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100261630(uint64_t a1)
{
  v2 = *(a1 + qword_10097B410);
}

void sub_100261694()
{
  v1 = v0;
  v2 = qword_10097B400;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = qword_10097B408;
  type metadata accessor for Placeholder();
  v5 = static Placeholder.headingTitleText.getter();
  v7 = v6;
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1760);
  v10 = sub_10025097C(v5, v7, v9);

  *(v1 + v4) = v10;
  v11 = qword_10097B410;
  v12 = static Placeholder.titleText.getter();
  v14 = v13;
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v8, qword_1009D1778);
  v16 = sub_10025097C(v12, v14, v15);

  *(v1 + v11) = v16;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100261828()
{
  result = qword_100986BF0;
  if (!qword_100986BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100986BF0);
  }

  return result;
}

unint64_t sub_100261874()
{
  result = qword_10097B468;
  if (!qword_10097B468)
  {
    type metadata accessor for SmallStoryCardLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B468);
  }

  return result;
}

unint64_t sub_1002618E0()
{
  result = qword_10097B470;
  if (!qword_10097B470)
  {
    type metadata accessor for RateLimitedAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B470);
  }

  return result;
}

uint64_t sub_100261940(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v50 = a1;
  v2 = type metadata accessor for Date();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10097B478);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_10002849C(&qword_1009764A0);
  v49 = Promise.__allocating_init()();
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  type metadata accessor for RateLimitedAction();
  static RateLimitedAction.preferencesKey.getter();
  sub_10002849C(&qword_10097B480);
  Preferences.subscript.getter();

  v14 = *(v5 + 8);
  v51 = v4;
  v14(v13, v4);
  if (v53)
  {
  }

  else
  {
    static LocalPreferences.currentApplication.getter();
    static RateLimitedAction.preferencesKey.getter();
    v53 = &_swiftEmptyDictionarySingleton;
    Preferences.subscript.setter();
  }

  static LocalPreferences.currentApplication.getter();
  static RateLimitedAction.preferencesKey.getter();
  Preferences.subscript.getter();

  v46 = v14;
  v14(v9, v51);
  v15 = v53;
  v16 = v48;
  if (!v53)
  {
    goto LABEL_13;
  }

  v17 = RateLimitedAction.actionKey.getter();
  if (!v15[2])
  {

    goto LABEL_12;
  }

  v19 = sub_1000072B8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    RateLimitedAction.rateLimit.getter();
LABEL_14:
    static LocalPreferences.currentApplication.getter();
    static RateLimitedAction.preferencesKey.getter();
    v32 = Preferences.subscript.modify();
    if (*v31)
    {
      v33 = v31;
      v34 = RateLimitedAction.actionKey.getter();
      v36 = v35;
      v37 = v43;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v39 = v38;
      (*(v44 + 8))(v37, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v33;
      *v33 = 0x8000000000000000;
      sub_100051F80(v34, v36, isUniquelyReferenced_nonNull_native, v39);

      *v33 = v52;
    }

    v32(&v53, 0);

    v46(v16, v51);
    v41 = RateLimitedAction.primaryAction.getter();
    sub_1005D0214(v41, 1, v47);

    v30 = v49;
    Promise.pipe(to:)();
    goto LABEL_17;
  }

  v22 = *(v15[7] + 8 * v19);

  *&v23 = COERCE_DOUBLE(RateLimitedAction.rateLimit.getter());
  if ((v24 & 1) == 0)
  {
    v25 = *&v23;
    v26 = v43;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v28 = v27;
    (*(v44 + 8))(v26, v45);
    if (v28 - v22 > v25)
    {
      goto LABEL_14;
    }
  }

  v29 = RateLimitedAction.fallbackAction.getter();
  if (!v29)
  {
    sub_100261ECC();
    swift_allocError();
    v30 = v49;
    Promise.reject(_:)();

    return v30;
  }

  sub_1005D0214(v29, 1, v47);
  v30 = v49;
  Promise.pipe(to:)();

LABEL_17:

  return v30;
}

unint64_t sub_100261ECC()
{
  result = qword_10097B488;
  if (!qword_10097B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B488);
  }

  return result;
}

unint64_t sub_100261F34()
{
  result = qword_10097B490;
  if (!qword_10097B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B490);
  }

  return result;
}

void sub_100261F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = __CocoaDictionary.count.getter();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_100262234(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v21 + 16);
      sub_1000520DC(v19, a7, isUniquelyReferenced_nonNull_native);
      *(v21 + 16) = v32;
      swift_endAccess();
    }

    swift_beginAccess();
    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 32);
        ObjectType = swift_getObjectType();
        (*(v30 + 8))(v29, v19, a8, ObjectType, v30);

        swift_unknownObjectRelease();
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

uint64_t sub_1002621D0()
{

  sub_10001F64C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100262234(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002849C(&qword_100970D00);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for Artwork();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100262470();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10004F058(v12 + 1, 1);
        }

        v2 = v19;
        sub_1002624BC();
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_100262470()
{
  result = qword_1009744B0;
  if (!qword_1009744B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009744B0);
  }

  return result;
}

unint64_t sub_1002624BC()
{
  result = qword_100970D08;
  if (!qword_100970D08)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970D08);
  }

  return result;
}

double *sub_100262514(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        dispatch thunk of Artwork.isPortrait.getter();
      }

      Artwork.config(_:mode:prefersLayeredImage:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100262624()
{
  result = qword_10097B588;
  if (!qword_10097B588)
  {
    type metadata accessor for RateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B588);
  }

  return result;
}

uint64_t sub_100262684(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v85 = a1;
  v58 = type metadata accessor for ActionMetrics();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for RateAction.Parameter();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v55 - v5;
  v6 = type metadata accessor for HttpTemplateParameter();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for LegacyAppState();
  v63 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v84 = type metadata accessor for AdamId();
  v13 = *(v84 - 1);
  __chkstk_darwin(v84);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for HttpTemplateSubstitutions();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0);
  v59 = Promise.__allocating_init()();
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001963E0(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  v76 = v17;
  HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)();
  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_getObjectType();
  RateAction.adamId.getter();
  v18 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v84);
  swift_getObjectType();
  v74 = v12;
  v55[1] = v18;
  dispatch thunk of AppStateMachine.currentState.getter();
  v19 = HttpTemplateAction.parameters.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v84 = *(v81 + 16);
    v21 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v55[0] = v19;
    v22 = v19 + v21;
    v83 = *(v81 + 72);
    v68 = enum case for RateAction.Parameter.rating(_:);
    v77 = v82 + 1;
    v78 = (v82 + 13);
    v82 = (v81 + 8);
    v72 = (v63 + 16);
    v71 = (v63 + 88);
    v70 = enum case for LegacyAppState.openable(_:);
    v66 = (v63 + 8);
    v65 = (v63 + 96);
    v64 = enum case for RateAction.Parameter.version(_:);
    v79 = v6;
    v81 += 16;
    v84(v8, v19 + v21, v6);
    while (1)
    {
      v23 = dispatch thunk of RateAction.rating.getter();
      if ((v24 & 1) == 0)
      {
        v38 = v23;
        v39 = HttpTemplateParameter.key.getter();
        v41 = v40;
        v42 = v69;
        v43 = v80;
        (*v78)(v69, v68, v80);
        v44 = RateAction.Parameter.rawValue.getter();
        v46 = v45;
        (*v77)(v42, v43);
        if (v39 == v44 && v41 == v46)
        {

          v6 = v79;
LABEL_15:
          v86 = v38;
          dispatch thunk of CustomStringConvertible.description.getter();
          HttpTemplateSubstitutions.setParameter(value:for:)();

          (*v82)(v8, v6);
          goto LABEL_4;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v79;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v25 = v73;
      v26 = v75;
      (*v72)(v73, v74, v75);
      v27 = (*v71)(v25, v26);
      if (v27 != v70)
      {
        (*v82)(v8, v6);
        (*v66)(v25, v26);
        goto LABEL_4;
      }

      (*v65)(v25, v26);
      v28 = *&v25[*(sub_10002849C(&unk_100976520) + 48)];
      v29 = type metadata accessor for OpenableDestination();
      (*(*(v29 - 8) + 8))(v25, v29);
      v30 = HttpTemplateParameter.key.getter();
      v32 = v31;
      v33 = v67;
      v34 = v80;
      (*v78)(v67, v64, v80);
      v35 = RateAction.Parameter.rawValue.getter();
      v37 = v36;
      (*v77)(v33, v34);
      if (v30 == v35 && v32 == v37)
      {
        break;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = v79;
      if (v48)
      {
        goto LABEL_17;
      }

      (*v82)(v8, v79);

LABEL_4:
      v22 += v83;
      if (!--v20)
      {
        goto LABEL_19;
      }

      v84(v8, v22, v6);
    }

    v6 = v79;
LABEL_17:
    v49 = [v28 stringValue];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    HttpTemplateSubstitutions.setParameter(value:for:)();

    (*v82)(v8, v6);
    goto LABEL_4;
  }

LABEL_19:

  v50 = v56;
  static ActionMetrics.notInstrumented.getter();
  dispatch thunk of HttpTemplateAction.makeAction(with:body:actionMetrics:)();
  v51 = v63;
  v52 = v59;
  (*(v57 + 8))(v50, v58);

  sub_1005D0448(v53, 1, v62);

  Promise.pipe(to:)();

  swift_unknownObjectRelease();

  (*(v51 + 8))(v74, v75);
  (*(v60 + 8))(v76, v61);
  return v52;
}

double sub_1002632D8()
{
  v27 = type metadata accessor for PageGrid();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v1 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ComponentLayoutOptions();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100970F20);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v21 = &v20 - v4;
  v5 = sub_10002849C(&unk_1009731F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UpsellBreakout();
  sub_100263798(&qword_10097B590, &type metadata accessor for UpsellBreakout);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v29)
  {
    return 0.0;
  }

  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.shelf.getter();
  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v6 + 8))(v8, v5);

  type metadata accessor for NilState();
  sub_100263798(&qword_100995C80, &type metadata accessor for NilState);
  v13 = v21;
  ItemLayoutContext.typedState<A>(as:)();
  v14 = v24;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v16 = v15;
  (*(v25 + 8))(v1, v27);
  sub_100079F24();
  sub_100757820(v16);
  v18 = v17;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v14, v28);
  (*(v22 + 8))(v13, v23);
  return v18;
}

uint64_t sub_100263798(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1002637E0(int a1)
{
  v2 = v1;
  LODWORD(v58) = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MediaOverlayStyle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v60 = &v53 - v9;
  __chkstk_darwin(v8);
  v59 = &v53 - v10;
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v19 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton;
  v20 = objc_allocWithZone(type metadata accessor for CardHeaderButton());
  *&v2[v19] = sub_10061D748(1u);
  v21 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel;
  v22 = type metadata accessor for FontUseCase();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = v11;
  v24 = v5;
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v23);
  v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v2[v21] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v2[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButtonAction] = 0;
  v26 = *(v5 + 104);
  v26(&v2[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_mediaOverlayStyle], enum case for MediaOverlayStyle.matchSystem(_:), v4);
  v2[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_displayMode] = v58 & 1;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  v58 = ObjectType;
  v27 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  v32 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView];
  v34 = *&v33[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode];
  *&v33[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode] = 2;
  v35 = v33;
  if (v34 != 2)
  {
    sub_1000D09CC();
  }

  sub_1000D0E68();
  sub_1000D1940(v34);

  v56 = v32;
  [v31 addSubview:*&v31[v32]];
  v36 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton;
  v37 = *&v31[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton];
  v38 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v54 = *(v24 + 16);
  v55 = v38;
  v54(v59, &v31[v38], v4);
  v26(v60, enum case for MediaOverlayStyle.light(_:), v4);
  sub_100264864();
  v39 = v37;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v63 == v61 && v64 == v62)
  {
    v40 = v4;
    v41 = 2;
  }

  else
  {
    v40 = v4;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  v42 = *(v24 + 8);
  v42(v60, v40);
  v42(v59, v40);

  sub_10061D5DC(v41);

  [v31 addSubview:*&v31[v36]];
  v43 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel;
  [*&v31[v56] addSubview:*&v31[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel]];
  v44 = v57;
  v54(v57, &v31[v55], v40);
  MediaOverlayStyle.userInterfaceStyle.getter();
  v42(v44, v40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = String._bridgeToObjectiveC()();

  v46 = [*&v31[v43] layer];
  [v46 setCompositingFilter:v45];

  sub_10002849C(&qword_10097B110);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007B1890;
  *(v47 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v47 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v47 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v48 = *&v31[v43];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 secondaryLabelColor];
  [v50 setTextColor:v51];

  sub_100263EF0();
  return v31;
}

id sub_100263EF0()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView);
  v7 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  v9 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v6 + v9, v5, v2);
  swift_endAccess();
  sub_1000D0B60();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton);
  v8(v5, v1 + v7, v2);
  v12 = MediaOverlayStyle.inverseUserInterfaceStyle.getter();
  v10(v5, v2);
  [v11 setOverrideUserInterfaceStyle:v12];
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel);
  v8(v5, v1 + v7, v2);
  v14 = MediaOverlayStyle.userInterfaceStyle.getter();
  v10(v5, v2);
  return [v13 setOverrideUserInterfaceStyle:v14];
}

void sub_100264134(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButtonAction);
  *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

id sub_10026420C()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView];
  [v0 bounds];
  [v2 bounds];
  [v2 setBounds:?];
  [v0 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  [v2 setCenter:{MidX, CGRectGetMidY(v33)}];
  v8 = [v0 traitCollection];
  v9 = UITraitCollection.isSizeClassCompact.getter();

  if (v9)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v1 bounds];
  CGSize.subtracting(insets:)();
  v11 = *&v1[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel];
  [v11 sizeThatFits:?];
  v13 = v12;
  v15 = v14;
  v34.origin.x = v10;
  v34.origin.y = 72.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetMaxY(v34);
  [v2 contentSize];
  [v2 setContentSize:?];
  [v11 bounds];
  [v11 setBounds:?];
  v35.origin.x = v10;
  v35.origin.y = 72.0;
  v35.size.width = v13;
  v35.size.height = v15;
  v16 = CGRectGetMidX(v35);
  v36.origin.x = v10;
  v36.origin.y = 72.0;
  v36.size.width = v13;
  v36.size.height = v15;
  [v11 setCenter:{v16, CGRectGetMidY(v36)}];
  v17 = *&v1[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton];
  [v1 bounds];
  [v17 sizeThatFits:{v18, v19}];
  v20 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v17 bounds];
  [v17 setBounds:?];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v29 = CGRectGetMidX(v37);
  v38.origin.x = v22;
  v38.origin.y = v24;
  v38.size.width = v26;
  v38.size.height = v28;
  return [v17 setCenter:{v29, CGRectGetMidY(v38)}];
}

uint64_t sub_10026456C()
{
  sub_10002849C(&unk_100985700);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView);
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_1007B1890;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionLearnMoreView()
{
  result = qword_10097B5E0;
  if (!qword_10097B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100264724()
{
  result = type metadata accessor for MediaOverlayStyle();
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

uint64_t sub_1002647EC()
{
  sub_10002849C(&unk_100985700);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B1890;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_100264864()
{
  result = qword_10097B5F0;
  if (!qword_10097B5F0)
  {
    type metadata accessor for MediaOverlayStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B5F0);
  }

  return result;
}

id sub_1002648C0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel];
  if (qword_10096E660 != -1)
  {
    swift_once();
  }

  v3 = qword_1009D2268;
  v4 = unk_1009D2270;
  v5 = qword_1009D2278;
  v6 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
  }

  else
  {
    v7 = UITraitCollection.isSizeClassCompact.getter();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];

  return [a1 setNeedsLayout];
}

void sub_1002649AC()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButton;
  v11 = objc_allocWithZone(type metadata accessor for CardHeaderButton());
  *(v1 + v10) = sub_10061D748(1u);
  v12 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel;
  v13 = type metadata accessor for FontUseCase();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v1 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_backButtonAction) = 0;
  v15 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = type metadata accessor for MediaOverlayStyle();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100264C30(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_10026511C();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v8 = Shelf.ContentType.string.getter();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_1000072B8(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = Shelf.ContentType.string.getter();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1000DACDC(v16, v18);
    swift_endAccess();
  }

  else
  {

    Shelf.ContentType.string.getter();
    v20 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

id sub_100265058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10026511C()
{
  result = qword_10097B648;
  if (!qword_10097B648)
  {
    type metadata accessor for PurchasesContentPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B648);
  }

  return result;
}

uint64_t sub_100265174(uint64_t a1)
{
  type metadata accessor for PurchasesContentPresenter();
  sub_10026511C();
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1 || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
  {
    return 0;
  }

  v3 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  if (sub_100647D6C(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100265270()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for InteractiveProductReviewsShelfHeaderView();
    static UICollectionReusableView.elementKind.getter();
    v8 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v10 = [v7 _visibleSupplementaryViewOfKind:v8 atIndexPath:isa];

    if (v10)
    {
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v1 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState;
        if ((*(v1 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState + 40) & 1) == 0)
        {
          v13 = *v12;
          v14 = *(v12 + 16);
          v15 = *(v12 + 24);
          v16 = &v11[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState];
          if ((v11[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState + 40] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v16, v13), vceqq_f64(*(v16 + 24), v15)))) & 1) == 0 || *(v16 + 2) != v14)
          {
            *v16 = v13;
            *(v16 + 2) = v14;
            *(v16 + 24) = v15;
            v16[40] = 0;
            [v11 setNeedsLayout];
          }
        }
      }
    }
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100265474()
{
  v1 = OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v2 = type metadata accessor for ShelfLayoutContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveProductReviewsShelfScrollObserver()
{
  result = qword_10097B688;
  if (!qword_10097B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100265584()
{
  result = type metadata accessor for ShelfLayoutContext();
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

uint64_t sub_100265634(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100265654(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1002656A4()
{
  result = qword_10097B788;
  if (!qword_10097B788)
  {
    type metadata accessor for InteractiveProductReviewsShelfScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B788);
  }

  return result;
}

uint64_t sub_1002656FC(unint64_t a1, __n128 a2, __n128 a3)
{
  v59 = a3;
  v60 = a2;
  v5 = type metadata accessor for PageGrid();
  *&v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for ShelfLayoutContext();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    *&v51 = v19;
    result = _CocoaArrayWrapper.endIndex.getter();
    v19 = v51;
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v11;
  v57 = v7;
  v54 = v10;
  v55 = v5;
  if (result)
  {
    *&v51 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = v3;
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v23 = v3;
      v24 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v25 = [v24 indexPath];
    swift_unknownObjectRelease();
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = IndexPath.section.getter();
    (*(v18 + 8))(v21, v51);
  }

  else
  {
    v23 = v3;
    v52 = 0;
  }

  v26 = OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v50 = *(v12 + 16);
  v27 = v23;
  v28 = v23 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v29 = v56;
  v50(v16, v28, v56);
  v30 = v54;
  ShelfLayoutContext.contentPageGrid.getter();
  v31 = *(v12 + 8);
  v31(v16, v29);
  PageGrid.columnWidth.getter();
  v51 = v32;
  v33 = *(v58 + 8);
  v34 = v30;
  v35 = v55;
  v33(v34, v55);
  v36 = v53;
  v50(v53, v27 + v26, v29);
  v37 = v57;
  ShelfLayoutContext.contentPageGrid.getter();
  v31(v36, v29);
  PageGrid.interColumnSpace.getter();
  v58 = v38;
  result = (v33)(v37, v35);
  v40 = *&v58;
  v39 = v59.n128_u64[0];
  *&v41.f64[0] = v51;
  *&v42.f64[0] = v60.n128_u64[0];
  v61 = v60.n128_u64[0];
  v62 = v59.n128_u64[0];
  v43 = v52;
  v63 = v52;
  v64 = v51;
  v65 = v58;
  v44 = v27 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState;
  v45 = *(v27 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState);
  v46 = *(v27 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState + 16);
  v47 = *(v27 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState + 24);
  v48 = *(v27 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState + 40);
  *v44 = v60.n128_u64[0];
  *(v44 + 8) = v39;
  *(v44 + 16) = v43;
  *(v44 + 24) = v41.f64[0];
  *(v44 + 32) = v40;
  *(v44 + 40) = 0;
  if (v48)
  {
    return sub_100265270();
  }

  *&v42.f64[1] = v39;
  v41.f64[1] = v40;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v42, v45), vceqq_f64(v41, v47)))) & 1) == 0 || v43 != v46)
  {
    return sub_100265270();
  }

  return result;
}

uint64_t sub_100265C18(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100265C60()
{
  v1 = v0;
  ProductPageLink.text.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  ProductPageLink.systemImageName.getter();
  if (v2)
  {
    v3 = static SystemImage.load(_:with:includePrivateImages:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v1[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
  *&v1[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = v3;
  v5 = v3;

  sub_1005B06B4();

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for SearchLinkView()
{
  result = qword_10097B7F0;
  if (!qword_10097B7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100265DD4()
{
  if (qword_10096EC98 != -1)
  {
    swift_once();
  }

  v1 = qword_1009D32B0;
  qword_1009CEB40 = qword_1009D32B0;

  return v1;
}

uint64_t sub_100265E38(void *a1)
{
  v2 = type metadata accessor for DynamicTextAppearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  DynamicTextAppearance.init()();
  if (qword_10096D4E8 != -1)
  {
    swift_once();
  }

  DynamicTextAppearance.withTextStyle(_:)();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = [a1 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  DynamicTextAppearance.withNumberOfLines(_:)();
  v12(v8, v2);
  DynamicTextAppearance.withLineBreakMode(_:)();
  return (v12)(v11, v2);
}

uint64_t sub_100266008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getObjectType();
  v8 = [a3 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  sub_10026736C(v9, 0);
  sub_1000CB084(a1, v27);
  sub_10002C0AC(a2, v23);
  v10 = sub_1002671D4(a3);
  v12 = v11;
  v25 = &type metadata for SearchLinkLayout;
  v26 = sub_1002679AC();
  v13 = swift_allocObject();
  v24 = v13;
  v14 = sub_100267A00();
  v15 = swift_allocObject();
  sub_10002C0AC(v23, v15 + 16);
  sub_1000CB084(v27, &v21);
  if (v22)
  {
    sub_100005A38(&v21, v20);
    v16 = swift_allocObject();
    sub_100005A38(v20, v16 + 16);
    sub_100007000(v23);
    sub_1000CC370(v27);
    v17 = &type metadata for AutoAdjustingPlaceable;
    v18 = v14;
  }

  else
  {
    sub_100007000(v23);
    sub_1000CC370(v27);
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v13[2] = v16;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v17;
  v13[6] = v18;
  v13[7] = v15;
  v13[10] = &type metadata for AutoAdjustingPlaceable;
  v13[11] = v14;
  v13[12] = v10;
  v13[13] = v12;
  static Center.Axis.vertical.getter();
  v27[3] = type metadata accessor for Center();
  v27[4] = &protocol witness table for Center;
  sub_1000056E0(v27);
  Center.init(_:filling:)();
  a4[3] = type metadata accessor for Margins();
  a4[4] = &protocol witness table for Margins;
  sub_1000056E0(a4);
  return Margins.init(insets:child:)();
}

char *sub_100266254(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DynamicTextAppearance();
  __chkstk_darwin(v10 - 8);
  v11 = qword_10097B7E0;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = qword_10097B7E8;
  type metadata accessor for DynamicLabel();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36.receiver = v4;
  v36.super_class = type metadata accessor for SearchLinkView();
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = qword_10097B7E0;
  v19 = qword_10096EC90;
  v20 = *&v17[qword_10097B7E0];
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setTintColor:qword_1009D32A8];

  v21 = *&v17[v18];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  ArtworkView.backgroundColor.setter();

  v25 = *&v17[v18];
  ArtworkView.shouldSymbolImageSelfSize.setter();

  v26 = qword_10096ECA8;
  v27 = *&v17[v18];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1009D32C0;
  ArtworkView.preferredSymbolConfiguration.setter();

  [v17 addSubview:*&v17[v18]];
  v29 = qword_10097B7E8;
  v30 = qword_10096EC78;
  v31 = *&v17[qword_10097B7E8];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTextColor:qword_1009D3290];

  v32 = *&v17[v29];
  v33 = [v17 traitCollection];

  sub_100265E38(v33);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();

  [v17 addSubview:*&v17[v29]];
  sub_10002849C(&qword_10097B110);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B10D0;
  *(v34 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v17;
}

id sub_10026663C(void *a1, void *a2)
{
  v4 = type metadata accessor for DynamicTextAppearance();
  v5 = [a2 preferredContentSizeCategory];
  v6 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  if (v6 != v9)
  {
    v10 = [a1 traitCollection];
    sub_100265E38(v10);

    dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
  }

  return [a1 setNeedsLayout];
}

void sub_1002667A0(uint64_t a1)
{
  v2 = qword_10097B7E0;
  *(a1 + v2) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10097B7E8;
  type metadata accessor for DynamicLabel();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100266860@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[qword_10097B7E0];
  v5 = ArtworkView.image.getter();
  if (v5)
  {

    v6 = type metadata accessor for ArtworkView();
    v7 = sub_100267A7C(&qword_100989780, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v31[1] = 0;
    v31[2] = 0;
  }

  v31[0] = v5;
  v31[3] = v6;
  v31[4] = v7;
  v8 = *&v2[qword_10097B7E8];
  v30[3] = type metadata accessor for DynamicLabel();
  v30[4] = &protocol witness table for UILabel;
  v30[0] = v8;
  v9 = v8;
  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  sub_10026736C(v11, 0);
  sub_1000CB084(v31, v29);
  sub_10002C0AC(v30, v25);
  v12 = sub_10026703C(v2);
  v14 = v13;
  v27 = &type metadata for SearchLinkLayout;
  v28 = sub_1002679AC();
  v15 = swift_allocObject();
  v26 = v15;
  v16 = sub_100267A00();
  v17 = swift_allocObject();
  sub_10002C0AC(v25, v17 + 16);
  sub_1000CB084(v29, &v23);
  if (v24)
  {
    sub_100005A38(&v23, v22);
    v18 = swift_allocObject();
    sub_100005A38(v22, v18 + 16);
    sub_100007000(v25);
    sub_1000CC370(v29);
    v19 = &type metadata for AutoAdjustingPlaceable;
    v20 = v16;
  }

  else
  {
    sub_100007000(v25);
    sub_1000CC370(v29);
    v19 = 0;
    v20 = 0;
    v18 = 0;
  }

  v15[2] = v18;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = v19;
  v15[6] = v20;
  v15[7] = v17;
  v15[10] = &type metadata for AutoAdjustingPlaceable;
  v15[11] = v16;
  v15[12] = v12;
  v15[13] = v14;
  static Center.Axis.vertical.getter();
  v29[3] = type metadata accessor for Center();
  v29[4] = &protocol witness table for Center;
  sub_1000056E0(v29);
  Center.init(_:filling:)();
  a1[3] = type metadata accessor for Margins();
  a1[4] = &protocol witness table for Margins;
  sub_1000056E0(a1);
  Margins.init(insets:child:)();
  sub_100007000(v30);
  return sub_1000CC370(v31);
}

void sub_100266B38()
{
  v1 = *(v0 + qword_10097B7E8);
}

id sub_100266B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100266BB0(uint64_t a1)
{
  v2 = *(a1 + qword_10097B7E8);
}

id sub_100266C28()
{
  if (qword_10096ECA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1009D32C0;

  return v0;
}

double sub_100266C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EB48C(a1, a3, WitnessTable);
}

void sub_100266D00(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1003E9668(a1, a2, a3, WitnessTable);
}

void sub_100266D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1003EBB84(a1, a3, WitnessTable);
}

uint64_t sub_100266DD0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003E99E0(a1, WitnessTable, a2);
}

uint64_t sub_100266E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EB4BC(a1, a2, a4, WitnessTable);
}

uint64_t sub_100266F00(void *a1)
{
  a1[1] = sub_100267A7C(&qword_10097B848, type metadata accessor for SearchLinkView);
  a1[2] = sub_100267A7C(&qword_10097B850, type metadata accessor for SearchLinkView);
  result = sub_100267A7C(&qword_10097B858, type metadata accessor for SearchLinkView);
  a1[3] = result;
  return result;
}

uint64_t sub_100266FAC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

id sub_10026703C(void *a1)
{
  if (qword_10096D4E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1009CEB40;
  sub_10002849C(&qword_10097B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_10003D684(sub_100267AC4, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

id sub_1002671D4(void *a1)
{
  if (qword_10096D4E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1009CEB40;
  sub_10002849C(&qword_10097B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_10003D684(sub_100267A54, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

double sub_10026736C(uint64_t a1, char a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_16:
    v19 = (a2 & 1) == 0;
    result = 9.0;
    v21 = 4.0;
    goto LABEL_17;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_14:
    v19 = (a2 & 1) == 0;
    result = 10.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

LABEL_25:
    v19 = (a2 & 1) == 0;
    result = 11.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_25;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {

LABEL_30:
    v19 = (a2 & 1) == 0;
    result = 12.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_30;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

LABEL_35:
    v19 = (a2 & 1) == 0;
    result = 13.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_35;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {

LABEL_40:
    v19 = (a2 & 1) == 0;
    result = 14.0;
    v21 = 7.0;
LABEL_17:
    if (!v19)
    {
      return v21;
    }

    return result;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_40;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
  {

    return 17.0;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 17.0;
  if ((v47 & 1) == 0)
  {
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
    {

      return 20.0;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 20.0;
    if ((v52 & 1) == 0)
    {
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
      {

        return 24.0;
      }

      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 24.0;
      if ((v57 & 1) == 0)
      {
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
        if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
        {

          return 28.0;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 28.0;
        if ((v62 & 1) == 0)
        {
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;
          if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
          {

            return 31.0;
          }

          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v19 = (v67 & 1) == 0;
          result = 10.0;
          v21 = 31.0;
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1002679AC()
{
  result = qword_100992190;
  if (!qword_100992190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992190);
  }

  return result;
}

unint64_t sub_100267A00()
{
  result = qword_10097B870;
  if (!qword_10097B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B870);
  }

  return result;
}

uint64_t sub_100267A7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100267AF4()
{
  result = qword_10097B880;
  if (!qword_10097B880)
  {
    type metadata accessor for LocalAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B880);
  }

  return result;
}

uint64_t sub_100267B4C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalAction.perform()();
  sub_10002849C(&qword_1009764A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100267C54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D6>, double a5@<D7>)
{
  v29[3] = a3;
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageGrid.Direction();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  v19 = sub_10002849C(&qword_100974650);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v21 = a1;
  v23 = v29 - v22;
  sub_1002687CC(v21, v29 - v22);
  sub_1002687CC(a2, &v23[*(v20 + 56)]);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v31)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v14 + 104))(v18, *v24, v13);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

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
    if (qword_10096EEF0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v25 == enum case for Shelf.ContentType.arcadeFooter(_:) || v25 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
LABEL_18:
    (*(v14 + 16))(v30, v18, v13);
    if (qword_10096DB10 == -1)
    {
LABEL_19:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v14 + 8))(v18, v13);
      return sub_10026883C(v23);
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
    if (qword_10096ED30 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v14 + 8))(v18, v13);
  sub_10026883C(v23);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002682F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PageGrid.Direction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  v12 = sub_10002849C(&qword_100974650);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v18[-v14];
  sub_1002687CC(a2, &v18[-v14]);
  sub_1002687CC(a3, &v15[*(v13 + 56)]);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v16 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v18[15])
  {
    v16 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v16, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v6 + 8))(v11, v5);
  return sub_10026883C(v15);
}

uint64_t sub_100268594()
{
  sub_100268778();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_100268678()
{
  sub_100268778();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

unint64_t sub_100268778()
{
  result = qword_10097B888;
  if (!qword_10097B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B888);
  }

  return result;
}

uint64_t sub_1002687CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10098FFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026883C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100974650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002688A4(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ShelfBackground();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v15 = *(v9 + 8);
  v15(v14, v8);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v15(v11, v8);
  if (v31 && (ShelfHeader.hasTrailingArtwork.getter() & 1) != 0)
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for StaticDimension();
    sub_1000056A8(v16, qword_1009D2430);
    ShelfLayoutContext.traitEnvironment.getter();
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
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
  sub_1001E15F0(v7, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v29);
}

double sub_100268C44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v148 = a5;
  v8 = type metadata accessor for ShelfBackground();
  v9 = *(v8 - 8);
  v140 = v8;
  v141 = v9;
  __chkstk_darwin(v8);
  v149 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ShelfLayoutContext();
  v12 = *(v11 - 8);
  v146 = v11;
  v147 = v12;
  __chkstk_darwin(v11);
  v143 = v13;
  v145 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009731F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v138 - v19;
  __chkstk_darwin(v21);
  v23 = &v138 - v22;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v24 == a2)
  {
  }

  else
  {
    v139 = a2;
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v27 == v139)
      {

        v28 = a3;
        goto LABEL_18;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28 = a3;
      if (v68)
      {
LABEL_18:
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        ReadOnlyLens.subscript.getter();

        (*(v15 + 8))(v17, v14);
        if (v151)
        {

          v69 = sub_10002849C(&qword_10097BA88);
          v70 = v148;
          *(v148 + 24) = v69;
          v70[4] = sub_10022AA64(&qword_10097BA90, &qword_10097BA88);
          v149 = sub_1000056E0(v70);
          v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v141 = v71;
          type metadata accessor for ShelfFooterView();
          static UICollectionReusableView.defaultReuseIdentifier.getter();
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
          v79 = sub_10002849C(&qword_10097BA80);
          v80 = v148;
          *(v148 + 24) = v79;
          v80[4] = sub_10022AA64(&unk_10097F590, &qword_10097BA80);
          sub_1000056E0(v80);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          type metadata accessor for InfiniteScrollFooterView();
          static UICollectionReusableView.defaultReuseIdentifier.getter();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (static UICollectionReusableView.elementKind.getter() == a1 && v81 == v139)
      {

LABEL_27:
        v83 = sub_10002849C(&qword_10097BA70);
        v84 = v148;
        *(v148 + 24) = v83;
        v84[4] = sub_10022AA64(&qword_10097BA78, &qword_10097BA70);
        v149 = sub_1000056E0(v84);
        v148 = static UICollectionReusableView.elementKind.getter();
        static UICollectionReusableView.defaultReuseIdentifier.getter();
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

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v82)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (static UICollectionReusableView.elementKind.getter() == a1 && v91 == v139)
      {

LABEL_33:
        v93 = sub_10002849C(&qword_10097BA60);
        v94 = v148;
        *(v148 + 24) = v93;
        v94[4] = sub_10022AA64(&qword_10097BA68, &qword_10097BA60);
        v149 = sub_1000056E0(v94);
        v148 = static UICollectionReusableView.elementKind.getter();
        static UICollectionReusableView.defaultReuseIdentifier.getter();
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

      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (static UICollectionReusableView.elementKind.getter() == a1 && v101 == v139)
      {

LABEL_38:
        v103 = sub_10002849C(&qword_10097BA50);
        v104 = v148;
        *(v148 + 24) = v103;
        v104[4] = sub_10022AA64(&qword_10097BA58, &qword_10097BA50);
        v149 = sub_1000056E0(v104);
        v148 = static UICollectionReusableView.elementKind.getter();
        static UICollectionReusableView.defaultReuseIdentifier.getter();
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

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v102)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView();
      if (static UICollectionReusableView.elementKind.getter() == a1 && v111 == v139)
      {

LABEL_43:
        v113 = sub_10002849C(&qword_10097BA40);
        v114 = v148;
        *(v148 + 24) = v113;
        v114[4] = sub_10022AA64(&qword_10097BA48, &qword_10097BA40);
        v149 = sub_1000056E0(v114);
        v148 = static UICollectionReusableView.elementKind.getter();
        static UICollectionReusableView.defaultReuseIdentifier.getter();
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

      v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v112)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (static UICollectionReusableView.elementKind.getter() == a1 && v121 == v139)
      {

LABEL_48:
        v123 = sub_10002849C(&qword_10097BA30);
        v124 = v148;
        *(v148 + 24) = v123;
        v124[4] = sub_10022AA64(&qword_10097BA38, &qword_10097BA30);
        v149 = sub_1000056E0(v124);
        v148 = static UICollectionReusableView.elementKind.getter();
        static UICollectionReusableView.defaultReuseIdentifier.getter();
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

      v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v122)
      {
        goto LABEL_48;
      }

      type metadata accessor for SpacerSupplementary();
      if (static SpacerSupplementary.topElementKind.getter() == a1 && v131 == v139)
      {
        goto LABEL_51;
      }

      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v132)
      {
        goto LABEL_53;
      }

      if (static SpacerSupplementary.bottomElementKind.getter() == a1 && v135 == v139)
      {
LABEL_51:
      }

      else
      {
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
      v133 = sub_10002849C(&qword_10097A540);
      v134 = v148;
      *(v148 + 24) = v133;
      v134[4] = sub_10022AA64(&qword_10097A548, &qword_10097A540);
      sub_1000056E0(v134);
      static SpacerSupplementary.makeSpacerRegistration(elementKind:)();
      return result;
    }
  }

  v29 = a3;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v30 = *(v15 + 8);
  v30(v23, v14);
  if (!v150)
  {
    v32 = v140;
    v33 = v149;
    goto LABEL_14;
  }

  v31 = ShelfHeader.shouldUseShelfHeader.getter();

  v32 = v140;
  v33 = v149;
  if ((v31 & 1) == 0)
  {
LABEL_14:
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v30(v20, v14);
    v44 = (*(v141 + 88))(v33, v32);
    v45 = v147;
    if (v44 != enum case for ShelfBackground.interactive(_:))
    {
      v55 = sub_10002849C(&qword_10097A550);
      v56 = v148;
      *(v148 + 24) = v55;
      v56[4] = sub_10022AA64(&qword_10097A558, &qword_10097A550);
      sub_1000056E0(v56);
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140 = v57;
      type metadata accessor for TitleHeaderView(0);
      v58 = static UICollectionReusableView.defaultReuseIdentifier.getter();
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

      ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
      (*(v141 + 8))(v149, v32);
      return result;
    }

    v46 = sub_10002849C(&qword_10097BA98);
    v47 = v148;
    *(v148 + 24) = v46;
    v47[4] = sub_10022AA64(&qword_10097BAA0, &qword_10097BA98);
    v149 = sub_1000056E0(v47);
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v48;
    type metadata accessor for InteractiveTitleHeaderView();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
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

  v34 = sub_10002849C(&qword_10097BAA8);
  v35 = v148;
  *(v148 + 24) = v34;
  v35[4] = sub_10022AA64(&qword_10097BAB0, &qword_10097BAA8);
  v149 = sub_1000056E0(v35);
  v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v141 = v36;
  type metadata accessor for ShelfHeaderView();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
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
  ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  return result;
}

uint64_t sub_100269DCC(uint64_t a1, int *a2)
{
  v54 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageGrid();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
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
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

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
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v27(v23, v8);
    if (!v65)
    {
      return 0;
    }

    v31 = ShelfHeader.hasTrailingArtwork.getter();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  ShelfLayoutContext.supplementaryPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v33 = v32;
  v35 = v34;
  (*(v59 + 8))(v7, v60);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v27(v20, v8);
  v36 = v65;
  if (!v65)
  {
    goto LABEL_12;
  }

  if ((ShelfHeader.shouldUseShelfHeader.getter() & 1) == 0)
  {

LABEL_12:
    v38 = sub_10026C6C4(v33, v35);
    v40 = v39;
    v60 = type metadata accessor for TitleHeaderView(0);
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v27(v17, v8);
    v59 = v65;
    v54 = v66;
    v41 = v53;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v27(v41, v8);
    v42 = v64;
    v43 = v55;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v27(v43, v8);
    v45 = v62;
    v44 = v63;
    v46 = v56;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v27(v46, v8);
    v47 = v61;
    v48 = sub_10026CA3C();
    v49 = v58;
    (*(*v57 + 192))(a1);
    v50 = ShelfLayoutContext.traitEnvironment.getter();
    swift_getObjectType();
    LOBYTE(v51) = 1;
    sub_1003F7390(v59, v54, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, 0, 0, v48, v49, v51, v50);
    swift_unknownObjectRelease();

    sub_10026ECE4(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView();
  v33 = sub_10066D5E0(v36, a1, v33, v35);

  return *&v33;
}

uint64_t sub_10026A490(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfBackground();
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Shelf.ContentType();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AutomationSemantics();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v97 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v83 - v12;
  __chkstk_darwin(v13);
  v102 = &v83 - v14;
  v92 = type metadata accessor for ShelfLayoutContext();
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
  v87 = type metadata accessor for Artwork.Crop();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&unk_1009731F0);
  v99 = *(v23 - 8);
  __chkstk_darwin(v23);
  v95 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v112 = a2;
  ShelfLayoutContext.shelf.getter();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v93 = a3;
  inject<A, B>(_:from:)();
  v109 = v113;
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = v113;
  v29 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
  v30 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork);

  sub_1003F1948(v28);
  *(a1 + v29) = v28;

  sub_1003F195C(v30);

  swift_getKeyPath();
  v110 = v23;
  v111 = v27;
  ReadOnlyLens.subscript.getter();

  v31 = v113;
  v32 = v114;
  v33 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
  v35 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
  v34 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);

  sub_1003F1328(v31, v32);
  *v33 = v31;
  v33[1] = v32;

  sub_1003F13BC(v35, v34);

  if (*(a1 + v29))
  {
    v36 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView);
    if (v36)
    {

      v37 = v36;
      Artwork.size.getter();
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v86 + 8))(v22, v87);
      Artwork.config(_:mode:prefersLayeredImage:)();
      type metadata accessor for ArtworkView();
      sub_10026ED44(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v38 = v113;
  v39 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
  v40 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork);

  sub_1003F1AE8(v38);
  *(a1 + v39) = v38;

  sub_1003F1BFC(v40);

  v41 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (v114)
  {
    v42 = String._bridgeToObjectiveC()();
  }

  else
  {
    v42 = 0;
  }

  [v41 setText:v42];

  v43 = *(a1 + v39);
  if (v43)
  {
    v44 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView);
    if (v44)
    {
      v45 = v108;
      (*((swift_isaMask & *a1) + 0x1C0))();
      v46 = v85;
      sub_1001EFDF0(v45 + *(v84 + 20), v85);

      v47 = v44;
      sub_10026ECE4(v45, type metadata accessor for TitleHeaderView.Style);
      sub_1003FA3DC(v43, v46, a1);
      sub_10026ECE4(v46, type metadata accessor for TitleHeaderView.TextConfiguration);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v86 + 8))(v22, v87);
      Artwork.config(_:mode:prefersLayeredImage:)();
      type metadata accessor for ArtworkView();
      sub_10026ED44(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
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
  v57 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
  *v57 = sub_10026EC84;
  v57[1] = v55;

  [v41 setNumberOfLines:sub_10026CA3C()];

  (*(v48 + 8))(v53, v52);
  v58 = v108;
  (*(*v56 + 192))(v51);
  (*((swift_isaMask & *a1) + 0x1C8))(v58);
  v59 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
  if (v59)
  {
    swift_getKeyPath();
    v60 = v59;
    ReadOnlyLens.subscript.getter();

    if (v114)
    {
      v61 = String._bridgeToObjectiveC()();
    }

    else
    {
      v61 = 0;
    }

    [v60 setText:v61];
  }

  sub_10026B3A0(a1, v112, v93);
  v113 = ShelfLayoutContext.index.getter();
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v116[3] = &type metadata for String;
  v116[0] = v62;
  v116[1] = v63;
  ShelfLayoutContext.id.getter();
  v64 = AnyHashable.description.getter();
  v66 = v65;
  sub_10003D614(&v113);
  v115 = &type metadata for String;
  v113 = v64;
  v114 = v66;
  v67 = v97;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v113, &unk_1009711D0);
  sub_10002B894(v116, &unk_1009711D0);
  swift_getKeyPath();
  v68 = v98;
  v69 = v110;
  v70 = v111;
  ReadOnlyLens.subscript.getter();

  v71 = Shelf.ContentType.rawValue.getter();
  v73 = v72;
  (*(v100 + 8))(v68, v101);
  v115 = &type metadata for String;
  v113 = v71;
  v114 = v73;
  v74 = v96;
  AutomationSemantics.attribute(key:value:)();
  v75 = v104;
  v76 = *(v103 + 8);
  v76(v67, v104);
  sub_10002B894(&v113, &unk_1009711D0);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v77 = *(v116[0] + 16);

  v115 = &type metadata for Int;
  v113 = v77;
  v78 = v102;
  AutomationSemantics.attribute(key:value:)();
  v76(v74, v75);
  sub_10002B894(&v113, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v76(v78, v75);
  v79 = v95;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v80 = v105;
  ReadOnlyLens.subscript.getter();

  v81 = *(v99 + 8);
  v81(v79, v69);
  [a1 setOverrideUserInterfaceStyle:sub_1001AAD64()];
  (*(v106 + 8))(v80, v107);
  [a1 setNeedsLayout];

  return (v81)(v70, v69);
}

uint64_t sub_10026B3A0(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v4 = type metadata accessor for AutomationSemantics();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfLayoutContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_10002849C(&unk_1009731F0);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (v47[0])
  {
    v39 = v15;
    v40 = v13;
    v16 = a2;
    sub_10026BAA0(a2, v12);
    v17 = type metadata accessor for Accessory();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v45;
    (*((swift_isaMask & *v45) + 0x268))(v12, v44);
    sub_10002B894(v12, &qword_100984340);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
    *v22 = sub_10026EBF4;
    v22[1] = v21;

    sub_10001F63C(v23);

    v24 = *(v18 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView);
    if (v24)
    {
      v25 = v24;
      v26 = ShelfLayoutContext.index.getter();
      v48[3] = &type metadata for Int;
      v48[0] = v26;
      ShelfLayoutContext.id.getter();
      v27 = AnyHashable.description.getter();
      v29 = v28;
      sub_10003D614(v47);
      v47[3] = &type metadata for String;
      v47[0] = v27;
      v47[1] = v29;
      v30 = v41;
      static AutomationSemantics.shelf(_:id:parentId:)();
      sub_10002B894(v47, &unk_1009711D0);
      sub_10002B894(v48, &unk_1009711D0);
      UIView.setAutomationSemantics(_:)();

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
    ReadOnlyLens.subscript.getter();

    if (v47[0])
    {
      *v12 = v47[0];
      *(v12 + 8) = xmmword_1007C3720;
      v33 = type metadata accessor for Accessory();
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      v34 = *((swift_isaMask & *v31) + 0x268);

      v34(v12, v32);

      sub_10002B894(v12, &qword_100984340);
      return (*(v46 + 8))(v15, v13);
    }

    else
    {
      v36 = type metadata accessor for Accessory();
      (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
      (*((swift_isaMask & *v31) + 0x268))(v12, v32);
      sub_10002B894(v12, &qword_100984340);
      (*(v46 + 8))(v15, v13);
      v37 = (v31 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      v38 = *(v31 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      *v37 = 0;
      v37[1] = 0;
      return sub_10001F63C(v38);
    }
  }
}

uint64_t sub_10026BAA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Shelf.PresentationHints();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = Action.title.getter();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.accessoriesFollowBackground.getter();
  sub_10026ED44(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_100028BB8();
    v19 = static UIColor.primaryText.getter();
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10026BD34@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.footerTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10026BD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v10 + 8))(v12, v9);
    v15 = v17;
    if (v17)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10067044C(v15, Strong, *(v14 + 32), a6, a7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10026BEF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10026A490(a1, a6, a7);
  }

  return result;
}

uint64_t sub_10026BF74(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10026E724(a1, a6);
  }

  return result;
}

uint64_t sub_10026BFE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10026A490(*&a1[OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView], a6, a7);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v15 = v19[0];
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {

      sub_1003D78D8(v19);
      if (v16)
      {

        sub_10003D614(v19);

        v19[3] = type metadata accessor for InteractiveTitleHeaderView();
        v19[4] = &off_1008BC4B0;
        v19[0] = a1;
        v17 = a1;
        sub_1002B52F4(v19);

        return sub_10002B894(v19, &unk_10097E140);
      }
    }

    else
    {
    }

    return sub_10003D614(v19);
  }

  return result;
}

uint64_t sub_10026C268(void *a1)
{
  v2 = sub_10002849C(&unk_1009731F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();

    v7 = v11[0];
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {

      sub_1003D78D8(v11);
      if (v8)
      {

        sub_10003D614(v11);

        v10[3] = type metadata accessor for InteractiveSectionBackgroundView();
        v10[4] = &off_1008C29C0;
        v10[0] = a1;
        v9 = a1;
        sub_1002B52F4(v10);

        return sub_10002B894(v10, &unk_10097E140);
      }
    }

    sub_10003D614(v11);
  }

  return result;
}

uint64_t sub_10026C4BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_10002849C(&unk_1009731F0);
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
      ShelfLayoutContext.shelf.getter();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

double sub_10026C6C4(double a1, double a2)
{
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = ShelfLayoutContext.traitCollection.getter();
    Action.title.getter();
    v14 = v13;
    if (qword_10096D648 != -1)
    {
      swift_once();
    }

    v15 = qword_10097E830;
    if (v14)
    {
      v16 = String._bridgeToObjectiveC()();
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
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v11(v7, v4);
    if (v29 && (v17 = ShelfHeader.hasTrailingArtwork.getter(), , (v17 & 1) != 0))
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

uint64_t sub_10026CA3C()
{
  v0 = sub_10002849C(&unk_1009731F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = ShelfLayoutContext.traitCollection.getter();
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v8)
  {
    return 0;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v10(v3, v0);
    if (v13 && (v11 = ShelfHeader.hasTrailingArtwork.getter(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10026CC14()
{
  v0 = sub_10002849C(&qword_10097BA20);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v20 = type metadata accessor for PageGrid();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v22;
  if (!v22)
  {
    return 0;
  }

  v19 = v21;
  ShelfLayoutContext.supplementaryPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v16 = v15;
  (*(v3 + 8))(v5, v20);
  v17 = ShelfLayoutContext.traitCollection.getter();
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v13(v9, v6);
  sub_10050D898(v19, v14, v17, v2);

  sub_10002B894(v2, &qword_10097BA20);
  return v16;
}

double *sub_10026CF10(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_100269DCC(a1, a2));
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

  v14 = COERCE_DOUBLE(sub_10026CC14());
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
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10002849C(&qword_10097BA18);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

double *sub_10026D1F8()
{
  v0 = type metadata accessor for ShelfBackground();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v9 = *(sub_10002849C(&qword_100978420) + 48);
    sub_10002849C(&qword_100973210);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B0B70;
    v11 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 backgroundDecorationItemWithElementKind:v12];

    *(v10 + 32) = v13;
    v14 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v14 - 8) + 8))(&v3[v9], v14);
  }

  else if (v8 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v15 = sub_10002849C(&qword_100978418);
    v16 = v15[12];
    v17 = v15[16];
    v18 = v15[20];
    sub_10002849C(&qword_100973210);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B0B70;
    v19 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 backgroundDecorationItemWithElementKind:v20];

    *(v10 + 32) = v21;
    v22 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v22 - 8) + 8))(&v3[v18], v22);
    v23 = type metadata accessor for ShelfBackgroundGradientLocation();
    v24 = *(*(v23 - 8) + 8);
    v24(&v3[v17], v23);
    v24(&v3[v16], v23);
  }

  else if (v8 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v25 = *(sub_10002849C(&qword_100978410) + 48);
    sub_10002849C(&qword_100973210);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B0B70;
    v26 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 backgroundDecorationItemWithElementKind:v27];

    *(v10 + 32) = v28;
    v29 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v29 - 8) + 8))(&v3[v25], v29);
    v30 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
    (*(*(v30 - 8) + 8))(v3, v30);
  }

  else if (v8 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v8 == enum case for ShelfBackground.interactive(_:))
  {
    sub_10002849C(&qword_100973210);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B0B70;
    v31 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 backgroundDecorationItemWithElementKind:v32];

    *(v10 + 32) = v33;
  }

  else
  {
    v34 = enum case for ShelfBackground.editorsChoice(_:);
    v35 = v8;
    sub_10002849C(&qword_100973210);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B0B70;
    v36 = objc_opt_self();
    if (v35 == v34)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      static UICollectionReusableView.elementKind.getter();
      v37 = String._bridgeToObjectiveC()();

      v38 = [v36 backgroundDecorationItemWithElementKind:v37];

      *(v10 + 32) = v38;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      static UICollectionReusableView.elementKind.getter();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v36 backgroundDecorationItemWithElementKind:v39];

      *(v10 + 32) = v40;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v10;
}

uint64_t sub_10026D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_10026D998(uint64_t a1, void (*a2)(char *))
{
  v21 = a2;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShelfBackground();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v15 = *(v9 + 8);
  v15(v14, v8);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v15(v11, v8);
  if (v22)
  {
    if (ShelfHeader.hasTrailingArtwork.getter())
    {
      if (qword_10096E6B0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for StaticDimension();
      sub_1000056A8(v16, qword_1009D2430);
      ShelfLayoutContext.traitEnvironment.getter();
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();

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

uint64_t sub_10026DCF4()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ShelfBackground();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v13 = *(v7 + 8);
  v13(v12, v6);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v13(v9, v6);
  if (v19)
  {
    if (ShelfHeader.hasTrailingArtwork.getter())
    {
      if (qword_10096E6B0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for StaticDimension();
      sub_1000056A8(v14, qword_1009D2430);
      ShelfLayoutContext.traitEnvironment.getter();
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

double *sub_10026E03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = type metadata accessor for ShelfBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  LODWORD(v10) = enum case for ShelfBackground.interactive(_:);
  (*(v6 + 8))(v8, v5);
  if (v13 != v10)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v14 = sub_100711E80(a1, v18, a3);
  sub_10002849C(&qword_10096FDB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B10D0;
  v16 = sub_10026ED44(&qword_10097BA28, type metadata accessor for InteractiveSectionBackgroundScrollObserver);
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  return v15;
}

uint64_t sub_10026E2DC()
{
  type metadata accessor for ShelfLayoutContext();

  return sub_10026DCF4();
}

uint64_t sub_10026E33C(void *a1)
{
  type metadata accessor for ShelfLayoutContext();

  return sub_10026C268(a1);
}

uint64_t sub_10026E3D8()
{
  v1 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1002688A4(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_10026E558()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10026E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

uint64_t sub_10026E724(char *a1, uint64_t a2)
{
  v41 = a1;
  v3 = type metadata accessor for ShelfLayoutContext();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = v4;
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfBackground();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_10097BA20);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v43;
  v33 = v42;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17(v13, v10);
  if (qword_10096E740 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style();
  v20 = sub_1000056A8(v19, qword_1009D2640);
  v21 = v41;
  sub_10050E5B4(v33, v18, v20, v9, a2);

  sub_10002B894(v9, &qword_10097BA20);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v22 = v34;
  ReadOnlyLens.subscript.getter();

  v17(v16, v10);
  v23 = sub_1001AAD64();
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
  v30 = &v21[OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction];
  v31 = *&v21[OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction];
  *v30 = sub_10026EBDC;
  v30[1] = v29;

  sub_10001F63C(v31);
}

uint64_t sub_10026EC84()
{
  type metadata accessor for ShelfLayoutContext();

  return sub_10026CA3C();
}

uint64_t sub_10026ECE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10026ED44(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10026EDD8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppPromotion();
  sub_10026EFA0(&qword_1009744D8, &type metadata accessor for AppPromotion);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_100079F24();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1005397D8(v6, v4, v7, ObjectType);
  v10 = v9;
  swift_unknownObjectRelease_n();

  return v10;
}

uint64_t sub_10026EFA0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10026EFE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for SmallLockupLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_materialBackground;
  *&v5[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v5[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = &v5[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_selectionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v50.receiver = v5;
  v50.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v25 = v21;
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v25 setOverrideUserInterfaceStyle:2];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v26 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView;
  v27 = qword_10096EE88;
  v28 = *&v25[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v14, qword_1009D37B0);
  (*(v15 + 16))(v17, v29, v14);
  v30 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v15 + 24))(&v28[v30], v17, v14);
  swift_endAccess();
  [v28 setNeedsLayout];

  (*(v15 + 8))(v17, v14);
  v31 = qword_10096E400;
  v32 = *(*&v25[v26] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for FontUseCase();
  v34 = sub_1000056A8(v33, qword_1009D1B80);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v36(v13, v34, v33);
  v37 = *(v35 + 56);
  v37(v13, 0, 1, v33);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v38 = qword_10096E408;
  v39 = *(*&v25[v26] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_1000056A8(v33, qword_1009D1B98);
  v36(v13, v40, v33);
  v37(v13, 0, 1, v33);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v41 = [*(*&v25[v26] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  [*(*&v25[v26] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v25[v26] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  v42 = [*&v25[v26] layer];
  [v42 setAllowsGroupBlending:0];

  v43 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_materialBackground;
  v44 = *&v25[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_materialBackground];
  sub_10075B130(20.0);

  [v25 addSubview:*&v25[v43]];
  v45 = [*&v25[v43] contentView];
  [v45 addSubview:*&v25[v26]];

  v46 = [*&v25[v43] contentView];
  v47 = [v46 layer];

  [v47 setAllowsGroupBlending:0];
  return v25;
}

uint64_t sub_10026F604()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Center();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_materialBackground];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView];
  v15[3] = type metadata accessor for SmallLockupView();
  v15[4] = sub_100270970(&qword_10097BAF8, type metadata accessor for SmallLockupView);
  v15[0] = v8;
  sub_10002C0AC(v15, v13);
  v14[3] = type metadata accessor for Margins();
  v14[4] = &protocol witness table for Margins;
  sub_1000056E0(v14);
  v9 = v8;
  Margins.init(insets:child:)();
  static Center.Axis.neither.getter();
  Center.init(_:filling:)();
  sub_100007000(v15);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = [v0 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  return (*(v3 + 8))(v6, v2);
}

double sub_10026F884(double a1, double a2)
{
  v5 = type metadata accessor for Center();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10070A300(v14);
  sub_10002C0AC(v14, v12);
  v13[3] = type metadata accessor for Margins();
  v13[4] = &protocol witness table for Margins;
  sub_1000056E0(v13);
  Margins.init(insets:child:)();
  static Center.Axis.neither.getter();
  Center.init(_:filling:)();
  sub_100007000(v14);
  v9 = sub_100270564(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

id sub_10026FA50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - v18;
  v20 = HeroCarouselItemOverlay.lockup.getter();
  if (v20)
  {
    v21 = v20;
    v22 = *&v2[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView];
    [v22 setHidden:0];
    v23 = sub_10002849C(&unk_100973240);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = type metadata accessor for OfferStyle();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = type metadata accessor for OfferEnvironment();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_10002849C(&unk_1009701A0);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = type metadata accessor for OfferTint();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_1004F3190(v21, v22, v19, a2, 0, 0, v16, v13, v7, v10);
    sub_10002B894(v7, &unk_100973AD0);
    v22[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v22 setNeedsLayout];
    sub_10002B894(v10, &unk_100970150);
    sub_10002B894(v13, &unk_100970160);
    sub_10002B894(v16, &qword_100973AE0);
    sub_10002B894(v19, &unk_100973230);
    v28 = *&v22[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
    v30 = *&v22[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
    sub_100028BB8();
    v31 = v30;
    v32 = static UIColor.secondaryText.getter();
    [v31 setTextColor:v32];

    [*&v22[v29] _setTextColorFollowsTintColor:0];
    v33 = [*&v22[v29] layer];
    [v33 setCompositingFilter:kCAFilterPlusL];

    [v3 setNeedsLayout];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView] setHidden:1];

    return [v2 setNeedsLayout];
  }
}

void sub_10026FF8C()
{
  v1 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Artwork.Crop();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HeroCarouselItemOverlay.lockup.getter())
  {
    v6 = dispatch thunk of Lockup.artwork.getter();

    if (v6)
    {
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v3 + 8))(v5, v2);
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v7, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      v8 = *(v0 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView);
      v9 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v10 = *(v8 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v10 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v11 = *(v8 + v9);
      type metadata accessor for ArtworkView();
      sub_100270970(&qword_100970E80, &type metadata accessor for ArtworkView);
      v12 = v11;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

uint64_t sub_1002702E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4);
}

void sub_100270308()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_100270970(&qword_100970E80, &type metadata accessor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_1002703F4(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v7 = [v2 traitCollection];
    v8 = type metadata accessor for SnapshotPageTraitEnvironment();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v10 = a1;
    v10[1] = a2;
    *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
    v27.receiver = v9;
    v27.super_class = v8;
    v11 = objc_msgSendSuper2(&v27, "init");
    v12 = [v11 traitCollection];
    v13 = UITraitCollection.isRegularPad.getter();

    if (v13)
    {
      [v11 pageContainerSize];
      v16 = sub_10048F38C(v14, v15);
      v18 = v17 + v17;
      v19 = j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v16);

      return v18 + v19;
    }

    else
    {
      [v11 pageMarginInsets];
      v21 = v20;
      v23 = v22;
      [v11 pageContainerSize];
      v25 = v24;

      return v25 - v21 - v23;
    }
  }

  return a1;
}

double sub_100270564(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for Resize.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = type metadata accessor for Center();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_1000056E0(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_1002703F4(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10002C0AC(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = type metadata accessor for Resize();
    v46 = &protocol witness table for Resize;
    sub_1000056E0(v44);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  }

  else
  {
    MeasurementRange.init(minimum:maximum:)();
    v28 = v27;
    v30 = v29;
    sub_10002C0AC(v47, v43);
    MeasurementRange.init(minimum:maximum:)();
    v32 = v31;
    v34 = v33;
    v45 = type metadata accessor for Constrain();
    v46 = &protocol witness table for Constrain;
    sub_1000056E0(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    Constrain.init(_:width:height:)();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    MeasurementRange.constrain(_:)();
  }

  sub_10002A400(v44, v45);
  v37 = [a2 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v39 = v38;

  sub_100007000(v44);
  sub_100007000(v47);
  return v39;
}

uint64_t sub_100270970(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002709B8()
{
  v1 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100270A78()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
LABEL_8:
        [v5 safeAreaInsets];

        return;
      }

      goto LABEL_11;
    }
  }

  v6 = [v0 parentViewController];
  if (v6)
  {
    v7 = v6;
    v5 = [v6 viewIfLoaded];

    if (v5)
    {
      goto LABEL_8;
    }
  }
}

char *sub_100270BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  *(v3 + qword_10097BB00) = 0;
  v7 = v3 + qword_1009CEB60;
  *(v3 + qword_1009CEB60 + 8) = 0;
  swift_unknownObjectWeakInit();
  SearchAction.term.getter();
  if (!v8)
  {

    sub_1001611EC(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AdvertRotationControllerProvider();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v3 + qword_10097BB08) = v15;
  *(v3 + qword_1009CEB58) = a2;

  v9 = sub_1003BE498(a1, a3);
  v10 = *&v9[qword_1009CF410];
  v11 = v9;
  v12 = v10;

  CompoundScrollObserver.addChild(_:)();

  result = [v11 collectionView];
  if (result)
  {
    v14 = result;
    [result setKeyboardDismissMode:1];

    return v11;
  }

  __break(1u);
  return result;
}

id sub_100270DD0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = a1;
  v11.super_class = ObjectType;
  v7 = a1;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    memset(v10, 0, sizeof(v10));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v10, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100270FA4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

void sub_1002710EC(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v11 + 8))(v13, v10);
}

void sub_100271228(void *a1, double a2, double a3)
{
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v13[4] = sub_10027404C;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1006D1458;
  v13[3] = &unk_1008BB518;
  v11 = _Block_copy(v13);
  v12 = v3;

  [a1 animateAlongsideTransition:v11 completion:0];
  _Block_release(v11);
}

uint64_t sub_10027138C()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100274054;
  *(v2 + 24) = v1;
  v5[4] = sub_10006F094;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000489A8;
  v5[3] = &unk_1008BB590;
  v3 = _Block_copy(v5);

  [v0 performWithoutAnimation:v3];
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  return result;
}

void sub_1002714F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    [v2 reloadData];
  }
}

void sub_100271570(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100271228(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1002715F0()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_10097C0F8);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10002849C(&qword_10097C100);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10002849C(&qword_10097C108);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_100413748();
  SearchResultsDiffablePagePresenter.onBeginTrackingGuidedSearchImpressions.getter();
  sub_10002849C(&qword_10097C110);
  sub_100097060(&qword_10097C118, &qword_10097C110);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v5 + 8))(v7, v4);
  SearchResultsDiffablePagePresenter.onDisplayResultsMessage.getter();
  sub_10002849C(&qword_10097C120);
  sub_100097060(&qword_10097C128, &qword_10097C120);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v8 = v12;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v13 + 8))(v8, v14);
  SearchResultsDiffablePagePresenter.onShowNoResults.getter();
  sub_10002849C(&qword_10097C130);
  sub_100097060(&qword_10097C138, &qword_10097C130);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v9 = v15;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_100271A28(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_1009CEB60;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_100271AB8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100274044;
}

uint64_t sub_100271B1C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_1009CEB60;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_100271BAC(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100274010;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100274018;
}

id sub_100271C3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  v71 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v66 - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v70 = v66 - v11;
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  SearchResultsUnavailableReason.title.getter();
  v15 = v14;
  SearchResultsUnavailableReason.message.getter();
  v16 = SearchResultsUnavailableReason.action.getter();
  v17 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v72 = v15;
  v73 = v17;
  v68 = a1;
  if (v16)
  {
    v67 = v4;
    v18 = Action.title.getter();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v66[1] = v20;
    v21 = Action.artwork.getter();
    if (v21)
    {
      v22 = v21;
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        sub_100330100(v22, 0);
      }
    }

    sub_100005744(0, &qword_10097CD40);
    v23 = swift_allocObject();
    *(v23 + 16) = v73;
    *(v23 + 24) = v16;

    v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v4 = v67;
  }

  static UIContentUnavailableConfiguration.search()();

  UIContentUnavailableConfiguration.text.setter();
  UIContentUnavailableConfiguration.secondaryText.setter();
  if (v16)
  {
    v24 = v16;
    v25 = [v24 title];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = [v24 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v31(v74, 0);
    }

    v32 = [v24 image];
    if (v32)
    {
      v33 = v32;
      v34 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.image.setter();
      v34(v74, 0);
      v35 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.imagePadding.setter();
      v35(v74, 0);
      v36 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.imagePlacement.setter();
      v36(v74, 0);
      v37 = [objc_opt_self() configurationWithScale:1];
      v38 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      v38(v74, 0);
    }

    v39 = v24;
    v40 = UIContentUnavailableConfiguration.buttonProperties.modify();
    UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
    v40(v74, 0);
  }

  else
  {
  }

  v42 = v70;
  v41 = v71;
  (*(v71 + 32))(v70, v8, v4);
  v43 = SearchResultsUnavailableReason.contextCard.getter();
  if (v43)
  {
    v44 = v43;
    v45 = v69;
    (*(v41 + 16))(v69, v42, v4);
    v46 = objc_allocWithZone(type metadata accessor for ContextualContentUnavailableView());
    v47 = v73;

    v48 = sub_100690D64(v45, v44, v47);
  }

  else
  {
    sub_100005744(0, &qword_10097C140);
    (*(v41 + 16))(v69, v42, v4);
    v48 = UIContentUnavailableView.init(configuration:)();
  }

  v49 = objc_allocWithZone(type metadata accessor for OverlayViewController());
  v50 = v48;
  v51 = OverlayViewController.init(overlayView:)();
  v52 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v53 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v54 = *&v2[v52];
  *&v2[v52] = v51;
  v55 = v51;

  result = [v2 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v74[0] = v59;
    v74[1] = v61;
    v74[2] = v63;
    v74[3] = v65;
    v75 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    return (*(v41 + 8))(v42, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1002722D8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100273FEC;
}

void sub_100272364(void *a1)
{
  v1 = a1;
  sub_10027233C();
}

uint64_t sub_1002723D4(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1000674A8(v6 + v15, v22);
  if (v23)
  {
    sub_10002C0AC(v22, v21);
    sub_10002B894(v22, &unk_10097F510);
    v18 = a2;
    v19 = v7;
    sub_10002A400(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v12 + 8))(v14, v11);
    v16 = sub_100007000(v21);
  }

  else
  {
    v16 = sub_10002B894(v22, &unk_10097F510);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v8 + 8))(v10, v7);
}

void sub_100272668(void *a1)
{
  v1 = a1;
  sub_1002723AC();
}

uint64_t sub_1002726B0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_100273FA4(&qword_10097C0F0, type metadata accessor for SearchResultsDiffablePageViewController);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_1000073E8(v18, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v19, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v10 = type metadata accessor for SearchResultsPageLayoutSectionProvider();
  swift_allocObject();
  sub_10002C0AC(v17, v16);
  sub_10002C0AC(v16, v15);

  v11 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v16);
  result = sub_100007000(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

id sub_1002729C4()
{
  v1 = v0;
  swift_getObjectType();
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B5350;
  sub_10002849C(&qword_10097C0D8);
  swift_allocObject();
  swift_retain_n();

  v3 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v4 = sub_100097060(&qword_10097C0E0, &qword_10097C0D8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for SearchResultsCollectionElementsObserver();
  v5 = swift_allocObject();
  v6 = sub_100273FA4(&qword_10097C0E8, type metadata accessor for SearchResultsCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  v8 = sub_100273FA4(&qword_1009717C8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  sub_100273FA4(&qword_10097C0F0, type metadata accessor for SearchResultsDiffablePageViewController);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v2 + 80) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
    type metadata accessor for CompoundCollectionElementsObserver();
    swift_allocObject();
    v10 = CompoundCollectionElementsObserver.init(children:)();
    sub_100739E4C();
    if (swift_dynamicCastClass())
    {
      CompoundCollectionElementsObserver.removingChildren(where:)();
      CompoundCollectionElementsObserver.addChild(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100272CF0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchResultsPageShelfLayoutSpacingProvider;
  result = sub_100273F50();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100272D24()
{
  sub_10002849C(&qword_10097C0A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B1890;
  v2 = [v0 collectionView];
  type metadata accessor for SearchResultItemSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v3 + 24) = &off_1008BB3A8;
  swift_unknownObjectWeakAssign();
  v4 = sub_100273FA4(&qword_10097C0B0, type metadata accessor for SearchResultItemSupplementaryProvider);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  sub_10002849C(&qword_10097C0B8);
  sub_100097060(&qword_10097C0C0, &qword_10097C0B8);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_10002C0AC(v9, v5 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v6 = swift_allocObject();
  sub_100005A38(v9, v6 + 16);
  *(v5 + 56) = v6;
  v7 = sub_100273FA4(&qword_10097C0C8, type metadata accessor for GenericPageItemSupplementaryProvider);
  *(v1 + 48) = v5;
  *(v1 + 56) = v7;
  type metadata accessor for CompoundItemSupplementaryProvider();
  swift_allocObject();
  return CompoundItemSupplementaryProvider.init(children:)();
}

void sub_100272F3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097C0A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_100727DFC(a1);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v5 + 8))(v7, v4);
  if (v8 == a1)
  {
    *(v2 + qword_10097BB00) = dispatch thunk of SearchResultsDiffablePagePresenter.isAutoPlayEnabled.getter() & 1;
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v9 = v10[1];
    dispatch thunk of VideoPlaybackCoordinator.isAutoPlayEnabled.setter();
  }
}

void sub_1002730DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v11, isa);

  type metadata accessor for SearchTransparencyView();
  if (static UICollectionReusableView.elementKind.getter() == a3 && v13 == a4)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a2;
    if (dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLink.getter())
    {
      v18 = LinkableText.linkedSubstrings.getter();
      v19 = sub_1000D6F24(v18, sub_1000C17B0);

      v20 = LinkableText.styledText.getter();
      sub_1002F6004(v20, 0, v19);

      [v16 setNeedsLayout];
    }

    else
    {
    }
  }
}

uint64_t sub_1002732B8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002730DC(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

id sub_1002733FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_10027356C(result);

    PageGrid.columnCount.getter();
    dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLinkIndex(columnCount:)();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      IndexPath.init(item:section:)();
      v11 = 0;
    }

    (*(v4 + 8))(v7, v3);
    v12 = type metadata accessor for IndexPath();
    return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10027356C(void *a1)
{
  v2 = type metadata accessor for PageEnvironment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v7 + 104))(v18 - v12, enum case for PageGrid.Direction.vertical(_:), v6, v11);
  [a1 bounds];
  v18[0] = v14;
  v18[1] = v15;
  sub_100270A78();
  v16 = [a1 traitCollection];
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)();
  (*(v7 + 16))(v9, v13, v6);
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v13, v6);
}

double sub_10027384C(void *a1)
{
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLink.getter();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    sub_10027356C(a1);
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    sub_100273BA4(v9, v8, a1);
    v11 = v10;

    v12 = *(v3 + 8);
    v12(v5, v2);
    if (v11 != 0.0)
    {
      sub_10027356C(a1);
      PageGrid.interRowSpace.getter();
      v14 = v13;
      v12(v5, v2);
      return v11 + v14;
    }
  }

  return v7;
}

uint64_t sub_1002739B8()
{

  sub_1001611EC(v0 + qword_1009CEB60);
}

uint64_t sub_100273A08(uint64_t a1)
{

  sub_1001611EC(a1 + qword_1009CEB60);
}

uint64_t type metadata accessor for SearchResultsDiffablePageViewController()
{
  result = qword_10097BB38;
  if (!qword_10097BB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100273B48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_1009CF3E0);
  a1[3] = type metadata accessor for SearchResultsDiffablePagePresenter();
  a1[4] = &protocol witness table for SearchResultsDiffablePagePresenter;
  *a1 = v3;
}

double sub_100273BA4(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for LabelPlaceholderCompatibility();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LinkableText.plainText.getter();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E170 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  sub_1000056A8(v9, qword_1009D13D0);
  v10 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v11 = type metadata accessor for Feature();
  v16 = v11;
  v17 = sub_100273FA4(&qword_100972E50, &type metadata accessor for Feature);
  v12 = sub_1000056E0(v15);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  isFeatureEnabled(_:)();
  sub_100007000(v15);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v6 + 8))(v8, v5);
  sub_10002A400(v15, v16);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  if (qword_10096D908 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009CFB10, qword_1009CFB28);
  AnyDimension.topMargin(from:in:)();
  if (qword_10096D910 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009CFB38, qword_1009CFB50);
  AnyDimension.bottomMargin(from:in:)();
  sub_100007000(v15);
  return a1;
}

unint64_t sub_100273F50()
{
  result = qword_10097C0D0;
  if (!qword_10097C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C0D0);
  }

  return result;
}

uint64_t sub_100273FA4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100274068()
{
  v1 = ProductNavigationBarMode.rawValue.getter();
  if (v1 == ProductNavigationBarMode.rawValue.getter())
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility);
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView) setHidden:v2];
  if (ProductOfferButtonMode.isHidden.getter())
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton);
    v4 = 1;
  }

  else
  {
    v5 = ProductNavigationBarMode.rawValue.getter();
    v6 = ProductNavigationBarMode.rawValue.getter();
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton);
    if (v5 == v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1);
    }
  }

  return [v3 setHidden:v4];
}

char *sub_100274160(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_animationVerticalOffset] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_navigationBarMode] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButtonMode] = 0;
  v11 = &v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer;
  *&v5[v12] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility] = 0;
  v13 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton] = sub_1000F5284(1);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ProductTitleView();
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setHeightShouldBeIncreasedByTabBarHeight:1];
  v18 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer;
  [*&v16[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer] setEnabled:0];
  v19 = *&v16[v18];
  [v19 addTarget:v16 action:"didTapIcon:"];

  v20 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView;
  [*&v16[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView] addGestureRecognizer:*&v16[v18]];
  [*&v16[v20] setHidden:1];
  v21 = OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton;
  [*&v16[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton] setHidden:1];
  [v16 addSubview:*&v16[v20]];
  [v16 addSubview:*&v16[v21]];
  [*&v16[v21] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v16[v21] + OBJC_IVAR____TtC8AppStore11OfferButton_imageView) setContentMode:1];
  [*&v16[v21] setShowsLargeContentViewer:1];
  v22 = *&v16[v21];
  v23 = objc_allocWithZone(UILargeContentViewerInteraction);
  v24 = v22;
  v25 = [v23 init];
  [v24 addInteraction:v25];

  v26 = [v16 traitCollection];
  LOBYTE(v24) = UITraitCollection.isSizeClassCompact.getter();

  if (v24)
  {
    v27 = 16.0;
  }

  else
  {
    v27 = 20.0;
  }

  [v16 layoutMargins];
  v29 = v28;
  [v16 layoutMargins];
  [v16 setLayoutMargins:{v29, v27}];
  sub_10002849C(&qword_10097B110);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007B10D0;
  *(v30 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

double sub_1002745A4(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isSizeClassCompact.getter();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, _UINavigationBarTitleViewOverlayRects.backButtonRect.getter(), v7, (v18 & 1) == 0))
  {
    if (CGRectGetMinY(v17) <= 50.0)
    {
      y = v17.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v17.origin.x;
    width = v17.size.width;
    height = v17.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v19);
    [v2 bounds];
    v9 = CGRectGetHeight(v20);
    [v2 floatingTabBarHeight];
    MidY = MinY + (v9 - v10) * 0.5;
  }

  return MidY + a1 * -0.5;
}

double sub_1002746EC(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isSizeClassCompact.getter();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, _UINavigationBarTitleViewOverlayRects.backButtonRect.getter(), v7, (v20 & 1) == 0))
  {
    if (CGRectGetMinY(v19) <= 50.0)
    {
      y = v19.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v19.origin.x;
    width = v19.size.width;
    height = v19.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v21);
    [v2 bounds];
    v9 = CGRectGetHeight(v22);
    [v2 floatingTabBarHeight];
    v11 = MinY + (v9 - v10) * 0.5;
    [v2 floatingTabBarHeight];
    MidY = v12 + v11;
  }

  return MidY + a1 * -0.5;
}

uint64_t sub_100274844()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v6 - 8);
  v8 = v101 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for ProductTitleView());
  v115.receiver = v0;
  v115.super_class = v9;
  objc_msgSendSuper2(&v115, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton];
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = &v10[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  v12 = v10[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16];
  v106 = v10;
  v101[0] = v5;
  v107 = v8;
  if (v12)
  {
    v13 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v10[v13], v114);
    sub_10002A400(v114, v114[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v15 = v14;
    v17 = v16;
    sub_100007000(v114);
    *v11 = v15;
    v11[1] = v17;
    *(v11 + 16) = 0;
  }

  else
  {
    v17 = v11[1];
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMaxX(v116);
  sub_1002745A4(v17);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  v105 = v18;
  v104 = v19;
  v103 = v20;
  v102 = v21;
  CGRect.adding(outsets:)();
  MaxX = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 traitCollection];
  v31 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v32 = [v1 contentOverlayRects];
  v101[1] = sub_100276C7C();
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v31 & 1) == 0)
  {
    v33 = sub_1005C3244(v33);
  }

  v108 = v3;
  v109 = v2;
  MidX = *&v9;
  if (v33 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v38 = *(v33 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v38 CGRectValue];
      x = v118.origin.x;
      y = v118.origin.y;
      width = v118.size.width;
      height = v118.size.height;
      v125.origin.x = MaxX;
      v125.origin.y = v25;
      v125.size.width = v27;
      v125.size.height = v29;
      if (!CGRectIntersectsRect(v118, v125))
      {

        goto LABEL_20;
      }

      v45 = [v1 traitCollection];
      v46 = UITraitCollection.prefersRightToLeftLayouts.getter();

      v47 = x;
      v48 = y;
      v49 = width;
      v50 = height;
      if (v46)
      {
        MaxX = CGRectGetMaxX(*&v47);
      }

      else
      {
        MinX = CGRectGetMinX(*&v47);
        v117.origin.x = MaxX;
        v117.origin.y = v25;
        v117.size.width = v27;
        v117.size.height = v29;
        v37 = CGRectGetWidth(v117);

        MaxX = MinX - v37;
      }

      ++v35;
      if (v40 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_20:

  v119.origin.x = MaxX;
  v119.origin.y = v25;
  v119.size.width = v27;
  v119.size.height = v29;
  v51 = CGRectGetMinX(v119);
  LayoutMarginsAware<>.layoutFrame.getter();
  v52 = CGRectGetMinX(v120);
  v53 = 0.0;
  v54 = v109;
  v55 = v108;
  if (v52 <= v51 && (v121.origin.x = MaxX, v121.origin.y = v25, v121.size.width = v27, v121.size.height = v29, v56 = CGRectGetMaxX(v121), LayoutMarginsAware<>.layoutFrame.getter(), v56 <= CGRectGetMaxX(v122)))
  {
    CGRect.subtracting(insets:)();
    v105 = v58;
    v104 = v59;
    v103 = v60;
    v102 = v61;
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v105 = 0.0;
    v104 = 0.0;
    v103 = 0.0;
    v102 = 0.0;
  }

  v1[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1] = v57;
  sub_100274068();
  v33 = *&v1[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView];
  v62 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  swift_beginAccess();
  v63 = v107;
  sub_1000727A0(v33 + v62, v107);
  v64 = *(v55 + 48);
  v65 = v64(v63, 1, v54);
  sub_100072810(v63);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 != 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v70 = v69;
    if (v64(v33 + v62, 1, v54))
    {
      v68 = 40.0;
    }

    else
    {
      v71 = v101[0];
      (*(v55 + 16))(v101[0], v33 + v62, v54);
      AspectRatio.height(fromWidth:)();
      v68 = v72;
      (*(v55 + 8))(v71, v54);
    }

    v73 = *(v33 + OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView);
    [v73 sizeThatFits:{1.79769313e308, 1.79769313e308, v101[0]}];
    v75 = v74;
    v77 = v76;
    v78 = [v73 isHidden];
    v79 = v75 + 50.0;
    if (v78)
    {
      v79 = 40.0;
    }

    if (v79 >= v70)
    {
      v67 = v70;
    }

    else
    {
      v67 = v79;
    }

    if (v68 <= v77)
    {
      v68 = v77;
    }

    LayoutMarginsAware<>.layoutFrame.getter();
    MidX = CGRectGetMidX(v123);
    v66 = sub_1002746EC(v68);
    v80 = [v1 contentOverlayRects];
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v111 = v81;
    v82 = &v1[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility];
    if ((v1[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1] & 1) == 0)
    {
      sub_10002849C(&qword_100973210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B0B70;
      *(inited + 32) = [objc_opt_self() valueWithCGRect:{MaxX, v25, v27, v29}];
      sub_100394BB8(inited);
      v81 = v111;
    }

    v53 = MidX + v67 * -0.5;
    if (v81 >> 62)
    {
      v84 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = 0;
    do
    {
      v86 = v85;
      if (v84 == v85)
      {
        break;
      }

      if ((v81 & 0xC000000000000001) != 0)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v85 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v87 = *(v81 + 8 * v85 + 32);
      }

      v88 = v87;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_52;
      }

      [v87 CGRectValue];
      v126.origin.x = v53;
      v126.origin.y = v66;
      v126.size.width = v67;
      v126.size.height = v68;
      v89 = CGRectIntersectsRect(v124, v126);

      v85 = v86 + 1;
    }

    while (!v89);

    *v82 = v84 != v86;
    sub_100274068();
  }

  [v33 setFrame:{v53, v66, v67, v68, v101[0]}];
  v90 = type metadata accessor for OfferButton();
  v91 = v106;
  v113.receiver = v106;
  v113.super_class = v90;
  objc_msgSendSuper2(&v113, "frame");
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v112.receiver = v91;
  v112.super_class = v90;
  objc_msgSendSuper2(&v112, "setFrame:", v105, v104, v103, v102);
  return sub_1000F4A10(v93, v95, v97, v99);
}

id sub_1002751A8()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    AspectRatio.height(fromWidth:)();
    (*(v3 + 8))(v5, v2);
  }

  v7 = *(v1 + OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView);
  [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  return [v7 isHidden];
}

void sub_1002753B4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_navigationBarMode] = a1;
  v12 = *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView];
  if ([v12 isHidden] && (v13 = *&v5[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton], objc_msgSend(*&v6[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton], "isHidden")) && (v14 = ProductNavigationBarMode.rawValue.getter(), v14 == ProductNavigationBarMode.rawValue.getter()))
  {
    v55.receiver = v13;
    v55.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v55, "frame");
    if (CGRectIsEmpty(v66) || ([v12 frame], CGRectIsEmpty(v67)))
    {
      [v6 setNeedsLayout];
    }
  }

  else
  {
    v53 = a5;
    v54 = a4;
    [v12 frame];
    Height = CGRectGetHeight(v68);
    v16 = sub_1002746EC(Height);
    v17 = *&v6[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton];
    v18 = type metadata accessor for OfferButton();
    v65.receiver = v17;
    v65.super_class = v18;
    objc_msgSendSuper2(&v65, "frame");
    v19 = CGRectGetHeight(v69);
    v20 = sub_1002745A4(v19);
    if (a1 == 1)
    {
      v21 = v20 + 4.0;
    }

    else
    {
      v21 = v20;
    }

    if (a1 == 1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + 4.0;
    }

    if (a1 == 1)
    {
      v23 = v16 + 4.0;
    }

    else
    {
      v23 = v16;
    }

    if (a1 == 1)
    {
      v24 = 0.0;
    }

    else
    {
      v16 = v16 + 4.0;
      v24 = 1.0;
    }

    if (a1 == 1)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v23;
    v26[5] = v16;
    v26[6] = v21;
    v26[7] = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = a1 != 1;
    if (a3)
    {
      v28 = a1 != 1;
      v29 = v6;
      [v12 setAlpha:v25];
      [v17 setAlpha:v25];
      v30 = v12;
      [v30 frame];
      [v30 setFrame:?];

      v64.receiver = v17;
      v64.super_class = v18;
      v31 = v17;
      objc_msgSendSuper2(&v64, "frame");
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v63.receiver = v31;
      v63.super_class = v18;
      objc_msgSendSuper2(&v63, "frame");
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v62.receiver = v31;
      v62.super_class = v18;
      objc_msgSendSuper2(&v62, "setFrame:", v33, v22, v35, v37);
      sub_1000F4A10(v39, v41, v43, v45);

      sub_100275A2C(v6, v28);
      if (v54)
      {
        v54();
      }
    }

    else
    {
      sub_100276890(v6, v24, v23, v21);
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v48[2] = sub_100276C48;
      v48[3] = v26;
      v48[4] = v47;
      v60 = sub_100276C60;
      v61 = v48;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100007A08;
      v59 = &unk_1008BB658;
      v49 = _Block_copy(&aBlock);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = sub_100276C58;
      v51[3] = v27;
      v51[4] = v50;
      v51[5] = v54;
      v51[6] = v53;
      v60 = sub_100276C6C;
      v61 = v51;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100504C5C;
      v59 = &unk_1008BB6A8;
      v52 = _Block_copy(&aBlock);

      sub_10000827C(v54);

      [v46 animateWithDuration:v49 animations:v52 completion:*&a2];

      _Block_release(v52);
      _Block_release(v49);
    }
  }
}

void sub_1002758C0(char *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView];
    v10 = a1;
    [v9 setAlpha:a3];
    v11 = *&v10[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton];
    [v11 setAlpha:a3];
    v12 = v9;
    [v12 frame];
    [v12 setFrame:?];

    v13 = type metadata accessor for OfferButton();
    v31.receiver = v11;
    v31.super_class = v13;
    v14 = v11;
    objc_msgSendSuper2(&v31, "frame");
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v30.receiver = v14;
    v30.super_class = v13;
    objc_msgSendSuper2(&v30, "frame");
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29.receiver = v14;
    v29.super_class = v13;
    objc_msgSendSuper2(&v29, "setFrame:", v16, a7, v18, v20);
    sub_1000F4A10(v22, v24, v26, v28);
  }
}

void sub_100275A2C(char *a1, char a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView];
    v4 = a1;
    [v3 frame];
    IsEmpty = CGRectIsEmpty(v12);
    v6 = 1;
    if (!IsEmpty && (a2 & 1) == 0)
    {
      v6 = v4[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility];
    }

    [v3 setHidden:v6];
    v7 = *&v4[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton];
    v11.receiver = v7;
    v11.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v11, "frame");
    v8 = CGRectIsEmpty(v13);
    v9 = 1;
    if (!v8 && (a2 & 1) == 0)
    {
      if ((ProductOfferButtonMode.isHidden.getter() & 1) != 0 || (v10 = ProductNavigationBarMode.rawValue.getter(), v10 == ProductNavigationBarMode.rawValue.getter()))
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1];
      }
    }

    [v7 setHidden:v9];
  }
}

void sub_100275B50(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

void sub_100275BB4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2();

  if (a5)
  {
    a5();
  }
}

id sub_100275C3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  if (a2)
  {

    v7 = String._bridgeToObjectiveC()();

    [v4 setText:v7];

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v3 traitCollection];
      v10 = UITraitCollection.isSizeClassCompact.getter();

      goto LABEL_8;
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView] setText:0];
  }

  v10 = 1;
LABEL_8:
  [v4 setHidden:v10 & 1];

  return [v3 setNeedsLayout];
}

char *sub_100275E34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView;
  type metadata accessor for ArtworkView();
  *&v4[v11] = static ArtworkView.iconArtworkView.getter();
  v12 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView;
  type metadata accessor for DynamicTypeLabel();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconWidth] = 0x4044000000000000;
  v13 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  v14 = type metadata accessor for AspectRatio();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v20 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView;
  v21 = *&v19[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  [v23 setFont:v24];

  [*&v19[v20] setNumberOfLines:1];
  v25 = *&v19[v20];
  v26 = [v19 traitCollection];

  LOBYTE(v23) = UITraitCollection.isSizeClassCompact.getter();
  [v25 setHidden:v23 & 1];

  [v19 addSubview:*&v19[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView]];
  [v19 addSubview:*&v19[v20]];
  sub_10002849C(&qword_10097B110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B10D0;
  *(v27 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v27 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v19;
}

id sub_1002761BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "layoutSubviews", v5);
  v8 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    AspectRatio.height(fromWidth:)();
    (*(v4 + 8))(v7, v3);
  }

  v9 = *&v1[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  if ([v9 isHidden])
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidX(v21);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidY(v22);
    return ArtworkView.frame.setter();
  }

  else
  {
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v12 = v11;
    v14 = v13;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v23);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidY(v24);
    ArtworkView.frame.setter();
    ArtworkView.frame.getter();
    v15 = CGRectGetMaxX(v25) + 10.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    MidY = CGRectGetMidY(v26);
    LayoutMarginsAware<>.layoutFrame.getter();
    v17 = CGRectGetMaxX(v27) - v15;
    if (v17 >= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    return [v9 setFrame:{v15, MidY - v14 * 0.5, v18, v14}];
  }
}

id sub_100276524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductTitleView.IconTitleView()
{
  result = qword_10097C1F8;
  if (!qword_10097C1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100276640()
{
  sub_10007225C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1002766F0(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  if (v3)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 20.0;
  }

  [a1 layoutMargins];
  v6 = v5;
  [a1 layoutMargins];

  return [a1 setLayoutMargins:{v6, v4}];
}

void sub_1002767A0()
{
  v1 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_animationVerticalOffset) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_navigationBarMode) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButtonMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100276890(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView);
  [v7 frame];
  if (CGRectIsEmpty(v31))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility);
  }

  [v7 setHidden:v8];
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton);
  v10 = type metadata accessor for OfferButton();
  v30.receiver = v9;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "frame");
  if (CGRectIsEmpty(v32) || (ProductOfferButtonMode.isHidden.getter() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1);
  }

  [v9 setHidden:v11];
  [v7 setAlpha:a2];
  [v9 setAlpha:a2];
  [v7 frame];
  [v7 setFrame:?];
  v29.receiver = v9;
  v29.super_class = v10;
  objc_msgSendSuper2(&v29, "frame");
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v28.receiver = v9;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "frame");
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27.receiver = v9;
  v27.super_class = v10;
  objc_msgSendSuper2(&v27, "setFrame:", v13, a4, v15, v17);
  return sub_1000F4A10(v19, v21, v23, v25);
}

id sub_100276A58(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 traitCollection];
    v10 = UITraitCollection.isSizeClassCompact.getter();
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  [v2 setHidden:v10 & 1];

  return [a1 setNeedsLayout];
}

void sub_100276B44()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView;
  type metadata accessor for ArtworkView();
  *(v0 + v2) = static ArtworkView.iconArtworkView.getter();
  v3 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconWidth) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  v5 = type metadata accessor for AspectRatio();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100276C7C()
{
  result = qword_100982940;
  if (!qword_100982940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982940);
  }

  return result;
}

id sub_100276CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8AppStore25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_presenter) = a1;
  type metadata accessor for ImpressionsCalculator();

  BaseObjectGraph.optional<A>(_:)();
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_1000659FC(v8, a2);

  sub_100277CDC(&qword_10097C268);
  v10 = v9;
  dispatch thunk of SearchHintsPresenter.view.setter();

  return v10;
}

id sub_100276E70()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8AppStore35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_1000632CC(v20);
  v22 = *&v1[v10];
  v23 = v22;
  sub_1000632E0(v22);
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_100028BB8();
    v28 = static UIColor.defaultBackground.getter();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v38 = String._bridgeToObjectiveC()();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v49, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return dispatch thunk of BasePresenter.didLoad()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002773BC(void *a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_100277D1C;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1006D1458;
    v21[3] = &unk_1008BB718;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_100277668(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 snapshotPageTraitEnvironment];
    v6 = [v1 collectionView];
    v7 = [v5 snapshotPageTraitEnvironment];
    *&v4[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v7;
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v6 collectionViewLayout];
      [v8 invalidateLayout];
    }

    [v6 reloadData];

    swift_unknownObjectRelease();
    v9 = [v1 collectionView];
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10027781C()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_impressionsCalculator])
  {
    ImpressionsCalculator.removeAllElements()();
  }

  sub_10002849C(&qword_100977128);
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    swift_getObjectType();
    dispatch thunk of ImpressionsTracker.removeAllImpressions()();
    swift_unknownObjectRelease();
  }

  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_1002778E0()
{
}

id sub_100277950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100277A24()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_100277A6C()
{
  sub_10002849C(&qword_100977128);
  BaseObjectGraph.optional<A>(_:)();
  return v1;
}

uint64_t sub_100277AC8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_presenter);
  a1[3] = type metadata accessor for SearchHintsPresenter();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;
}

uint64_t sub_100277B24(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100277CDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100277D24(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = type metadata accessor for ActionOutcome();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10002C0AC(v8, &v23);
      v9 = v24;
      v10 = v25;
      sub_10002A400(&v23, v24);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = [Strong traitCollection];

      v13 = (*(v10 + 8))(v21, v12, v22, v9, v10);
      if (v13)
      {
        sub_100005A38(&v23, v26);
        sub_100005A38(v26, v27);
        v14 = v28;
        v15 = v29;
        sub_10002A400(v27, v28);
        v16 = swift_unknownObjectUnownedLoadStrong();
        (*(v15 + 16))(v21, v16, v22, v14, v15);

        sub_100007000(v27);
        return;
      }

      ++v7;
      sub_100007000(&v23);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_10002849C(&qword_1009764A0);
    (*(v19 + 104))(v18, enum case for ActionOutcome.unsupported(_:), v20);
    Promise.__allocating_init(value:)();
  }
}

uint64_t sub_100277F58()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100277FC0()
{
  result = qword_100986BA0;
  if (!qword_100986BA0)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986BA0);
  }

  return result;
}

unint64_t sub_100278044()
{
  result = qword_100974C58;
  if (!qword_100974C58)
  {
    type metadata accessor for GameCenterActivityFeedCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C58);
  }

  return result;
}

double sub_10027809C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = sub_100079F24();
  swift_getObjectType();
  sub_10077DC28(v6, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1002781F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0x4040000000000000;
  }

  else
  {
    sub_100753DA8(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_1002783F4()
{
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_100005744(0, &qword_1009730E0);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_100005744(0, &unk_100993000);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_100005744(0, &qword_10097FB80);
  *(inited + 120) = v13;
  v14 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  return v14;
}

void sub_10027857C()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v41 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v16 = v0;
      v17 = qword_10096E1B8;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for FontUseCase();
      v19 = sub_1000056A8(v18, qword_1009D14A8);
      v20 = *(v18 - 8);
      (*(v20 + 16))(v8, v19, v18);
      (*(v20 + 56))(v8, 0, 1, v18);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v0 = v16;
      v23 = *&v16[v12];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v16[v12];
      }

      else
      {
        v24 = 0;
      }

      *&v16[v12] = v22;
      v25 = v22;

      v26 = [v16 contentView];
      [v26 addSubview:v25];

      [v16 setNeedsLayout];
    }

    v27 = &v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v28 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v28)
    {
      v43 = v10;
      v29 = *v27;
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      v33 = v27[5];
      v34 = v27[6];
      v44 = *v27;
      v45 = v30;
      v46 = v31;
      v47 = v32;
      v48 = v28;
      v49 = v33;
      v50 = v34;
      v35 = *&v0[v12];
      if (v35)
      {
        sub_100279E9C(v29, v30, v31, v32, v28, v33);
        v42 = v35;
        sub_1002783F4();
        v41 = objc_allocWithZone(NSAttributedString);
        v36 = String._bridgeToObjectiveC()();

        type metadata accessor for Key(0);
        sub_100279EDC(&qword_100976620, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v38 = [v41 initWithString:v36 attributes:isa];

        v39 = v42;
        [v42 setAttributedText:v38];
        sub_100279A5C(v29, v30, v31, v32, v28, v33);
      }

      else
      {
      }
    }

    else
    {

      v40 = *&v0[v12];
      if (v40)
      {
        [v40 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }
}

void sub_100278A64()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

uint64_t sub_100278D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TodayCard.Style();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StringCharacteristics();
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006160F8(a1, a2, a3);
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaBrandedSingleApp();
  if (swift_dynamicCastClass())
  {
    v37 = v11;
    v38 = v9;
    v39 = v8;
    v18 = [v4 traitCollection];
    v19 = UITraitCollection.isRegularPad.getter();

    TodayCard.titleCharacteristics.getter();
    static Locale.storefront.getter();
    sub_100279CAC(v19 & 1, v17, v14, v41);
    v20 = v42;
    v21 = &v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v41[1];
    *v21 = v41[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v41[2];
    *(v21 + 6) = v20;
    sub_100279E34(v41, v40);
    sub_100279A5C(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_100279E6C(v41);
    v29 = TodayCard.title.getter();
    v30 = &v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    sub_10027857C();
    v32 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v32)
    {
      v33 = v32;
      v34 = v37;
      TodayCard.style.getter();
      v35 = TodayCard.Style.cardTitleTextColor.getter();
      (*(v38 + 8))(v34, v39);
      [v33 setTextColor:v35];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_100279050(uint64_t a1, uint64_t a2)
{
  sub_100616F20(a1, a2);
  type metadata accessor for TodayCard();
  sub_100279EDC(&qword_100977390, &type metadata accessor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v7)
  {
    TodayCard.media.getter();
    type metadata accessor for TodayCardMediaBrandedSingleApp();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v3 = TodayCardMediaWithArtwork.artwork(for:)();

      if (v3)
      {
      }

      else
      {

        TodayCardMediaAppIcon.icon.getter();

        v4 = Artwork.config(_:mode:prefersLayeredImage:)();

        sub_10002849C(&qword_100973210);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1007B0B70;
        *(v5 + 32) = v4;

        ArtworkLoader.prefetchArtwork(using:)(v5);
      }
    }
  }

  return result;
}

id sub_100279248(uint64_t a1, uint64_t a2)
{
  sub_1006168F0(a1, a2);
  v3 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_1002792B4()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100987160);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-v4 - 8];
  v6 = *&v0[OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaBrandedSingleApp();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_100560E80();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    TodayCardMediaAppIcon.icon.getter();
    Artwork.style.getter();

    v18 = type metadata accessor for Artwork.Style();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_100279A9C(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10002B894(v5, &unk_100987160);
    TodayCardMediaAppIcon.icon.getter();

    Artwork.config(_:mode:prefersLayeredImage:)();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
    sub_100279EDC(&qword_10097C360, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView);
    AnyHashable.init<A>(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v21, &qword_10096FB90);
  }

  else
  {
  }
}

void sub_1002796AC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v4)
    {
      v5 = v4;

      v6 = *&v5[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v5[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v7 = a1;

      v3 = v5;
      sub_100560E80();
    }
  }
}

void sub_1002797FC()
{
  sub_100279A5C(*(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell()
{
  result = qword_10097C350;
  if (!qword_10097C350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10027999C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002799B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100279A00(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_100279A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_100279A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100987160);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100279B14()
{
  v0 = type metadata accessor for StringCharacteristics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1.5;
  if ((Locale.isChinese.getter() & 1) == 0 && (Locale.isJapanese.getter() & 1) == 0 && (Locale.isKorean.getter() & 1) == 0)
  {
    static StringCharacteristics.extraTallCharacters.getter();
    sub_100279EDC(&qword_10097C368, &type metadata accessor for StringCharacteristics);
    v5 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v6 = *(v1 + 8);
    v6(v3, v0);
    if ((v5 & 1) == 0)
    {
      static StringCharacteristics.accentedCharacters.getter();
      v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v6(v3, v0);
      if (v7)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

double sub_100279CAC@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v14 = v9 * sub_100279B14();
  [v13 setMinimumLineHeight:v14];
  [v13 setMaximumLineHeight:v14];
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 8))(a3, v15);
  v16 = type metadata accessor for StringCharacteristics();
  (*(*(v16 - 8) + 8))(a2, v16);
  result = 60.0;
  *a4 = xmmword_1007C4000;
  *(a4 + 16) = xmmword_1007C4010;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_100279E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_100279EDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100279F24(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_10002849C(&qword_10097C370);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_10002849C(&qword_100973AC8);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = type metadata accessor for OfferLabelStyle();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_100973230);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_10027BEC8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  AccessibilityConditional.init(value:axValue:)();
  v45 = sub_10002849C(&unk_100973240);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = type metadata accessor for OfferStyle();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = type metadata accessor for OfferEnvironment();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = type metadata accessor for OfferTint();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_10002849C(&unk_1009701A0);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_1004F3190(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10002B894(v51, &unk_100970150);
  sub_10002B894(v49, &unk_100973AD0);
  sub_10002B894(v26, &unk_100970160);
  sub_10002B894(v29, &qword_100973AE0);
  sub_10002B894(v40, &unk_100973230);
  type metadata accessor for MixedMediaLockup();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (Lockup.searchAdOpportunity.getter() && (v61 = SearchAdOpportunity.searchAd.getter(), , v61))
  {
  }

  else
  {
    v62 = type metadata accessor for Feature();
    v177 = v62;
    v178 = sub_10027BEC8(&qword_100972E50, &type metadata accessor for Feature);
    v63 = sub_1000056E0(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = isFeatureEnabled(_:)();
    sub_100007000(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_useAdsLocale] = Lockup.useAdsLocale.getter() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includesMetadataInformationInLockup] = MixedMediaLockup.showMetadataInformationInLockup.getter() & 1;
    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute] = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter() & 1;
    v66 = type metadata accessor for Feature();
    v177 = v66;
    v178 = sub_10027BEC8(&qword_100972E50, &type metadata accessor for Feature);
    v67 = sub_1000056E0(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = isFeatureEnabled(_:)();
    sub_100007000(v176);
    if (v66 & 1) != 0 && (MixedMediaLockup.showMetadataInformationInLockup.getter())
    {
      if (Lockup.offerDisplayProperties.getter())
      {
        v68 = v163;
        OfferDisplayProperties.offerLabelStyle.getter();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_10027BEC8(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
        v72 = dispatch thunk of static Equatable.== infix(_:_:)();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_1000A9F50(v139);

          goto LABEL_98;
        }
      }

      v74 = Lockup.rating.getter();
      if (v74)
      {
        v75 = v74;
        Lockup.ratingCount.getter();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_1003A2E44(v82);

          v83 = *&v44[v79];
          v84 = String._bridgeToObjectiveC()();

          [v83 setText:v84];

          v85 = Lockup.isEditorsChoice.getter();
          v86 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_1000A9F50(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = Lockup.isEditorsChoice.getter();
      v148 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_1000A9F50(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_1000A9F50(v87);
    v88 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (Lockup.offerDisplayProperties.getter())
    {
      OfferDisplayProperties.offerLabelStyle.getter();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_100031660(v56, v55, &qword_100973AC8);
    sub_100031660(v98, v55 + v102, &qword_100973AC8);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10002B894(v98, &qword_100973AC8);
      v55 = v173;
      sub_10002B894(v56, &qword_100973AC8);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10002B894(v55, &qword_100973AC8);
LABEL_98:
        v149 = MixedMediaLockup.searchTagRibbonItems.getter();
        if (v149)
        {
          v150 = v149;
          if (sub_1004849E0(v149, 0))
          {
            v151 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
            sub_100044DF8(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_100031660(v55, v161, &qword_100973AC8);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_10027BEC8(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
        LODWORD(v170) = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10002B894(v166, &qword_100973AC8);
        sub_10002B894(v106, &qword_100973AC8);
        v111(v104, v99);
        sub_10002B894(v107, &qword_100973AC8);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10002B894(v166, &qword_100973AC8);
      sub_10002B894(v56, &qword_100973AC8);
      (*(v168 + 8))(v104, v99);
    }

    sub_10002B894(v55, &qword_10097C370);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (Lockup.offerDisplayProperties.getter())
    {
      v112 = v163;
      OfferDisplayProperties.offerLabelStyle.getter();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_10027BEC8(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
      v116 = dispatch thunk of static Equatable.== infix(_:_:)();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_1000A9F50(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!Lockup.searchAdOpportunity.getter())
      {
        goto LABEL_104;
      }

      v118 = SearchAdOpportunity.searchAd.getter();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (Lockup.isEditorsChoice.getter())
    {
      v119 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_1000A9F50(v121);
LABEL_108:
      [v44 setNeedsLayout];
    }

    v125 = Lockup.rating.getter();
    if (v125)
    {
      v126 = v125;
      Lockup.ratingCount.getter();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_1000A9F50(v128);
        v129 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_1003A2E44(v134);

        v135 = *&v44[v131];
        v136 = String._bridgeToObjectiveC()();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = MixedMediaLockup.metadataRibbonItems.getter();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_1004849E0(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (MixedMediaLockup.screenshots.getter() >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  result = MixedMediaLockup.trailers.getter();
  v94 = v160;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_100031660(v156, v94, &unk_1009731E0);
    v96 = type metadata accessor for ItemLayoutContext();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10002B894(v94, &unk_1009731E0);
    }

    else
    {
      type metadata accessor for BundleSearchResult();
      sub_10027BEC8(&qword_10097C378, &type metadata accessor for BundleSearchResult);
      ItemLayoutContext.typedModel<A>(is:)();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    sub_100328B9C(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_1000A9F50(v142);
    v143 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = result;
  v155 = _CocoaArrayWrapper.endIndex.getter();
  result = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:

    v95 = Trailers.videos.getter();

    if (v95 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    goto LABEL_50;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_48;
  }

  __break(1u);
  return result;
}