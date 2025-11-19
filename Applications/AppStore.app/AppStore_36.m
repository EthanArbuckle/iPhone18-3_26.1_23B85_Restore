void sub_10040796C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView) setAlpha:a1];
    [*&v3[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton] setAlpha:a1];
  }
}

id sub_100407A00(void *a1)
{
  v2 = v1;
  sub_100407B94(a1);
  sub_100407E54(a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v5)
  {
    v6 = -*&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin];
  }

  else
  {
    v6 = 0.0;
  }

  [*&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v6}];
  sub_1004083BC();
  sub_100407F6C();
  if (*&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v8 = [Strong traitCollection];

      if (v8)
      {
        v9 = v8;
        if (UITraitCollection.isSizeClassCompact.getter())
        {
          LODWORD(v8) = UITraitCollection.prefersAccessibilityLayouts.getter();
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (!a1)
        {
LABEL_18:
          if ((v8 & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          sub_1004CEBC4(0);
          goto LABEL_20;
        }

LABEL_11:
        v10 = a1;
        if (UITraitCollection.isSizeClassCompact.getter())
        {
          v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

          if (((v8 ^ v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if ((v8 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_21:

  return [v2 setNeedsLayout];
}

void sub_100407B94(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [a1 horizontalSizeClass];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v2 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (!a1 || v8 != v10)
  {
    sub_100407174();
    v11 = [v2 traitCollection];
    UITraitCollection.isSizeClassRegular.getter();

    v12 = enum case for CornerStyle.continuous(_:);
    v13 = *(v5 + 104);
    v13(v7, enum case for CornerStyle.continuous(_:), v4);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v13(v7, v12, v4);
    dispatch thunk of ShadowView.setCorner(radius:style:)();
    v14(v7, v4);
    v13(v7, v12, v4);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    v14(v7, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _setCornerRadius:26.0];

    v16 = [v2 traitCollection];
    v17 = UITraitCollection.isSizeClassRegular.getter();

    if (v17)
    {
      sub_100407240();
    }

    else
    {
      v18 = *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView];
      if (v18)
      {
        [v18 setHidden:1];
      }
    }

    [v2 setNeedsLayout];
  }
}

void sub_100407E54(id a1)
{
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
    if (v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode] == 1)
    {
      v6 = [v1 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = v7 != 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView];

    [v9 setHidden:v8];
  }
}

void sub_100407F6C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v40 - v6;
  v43 = *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView);
  v8 = v43;
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v48 = v3 + 16;
  v10(v7, v0 + v9, v2);
  v11 = MediaOverlayStyle.userInterfaceStyle.getter();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v8 setOverrideUserInterfaceStyle:v11];
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
  v44 = v9;
  v45 = v1;
  v14 = v7;
  v42 = v7;
  v15 = v7;
  v16 = v2;
  v10(v15, v1 + v9, v2);
  v41 = v10;
  v17 = MediaOverlayStyle.userInterfaceStyle.getter();
  v18 = v14;
  v19 = v16;
  v46 = v3 + 8;
  v12(v18, v16);
  v47 = v12;
  v20 = v13;
  [v13 setOverrideUserInterfaceStyle:v17];
  v21 = v40;
  v22 = v19;
  v10(v40, v1 + v9, v19);
  MediaOverlayStyle.userInterfaceStyle.getter();
  v12(v21, v19);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = String._bridgeToObjectiveC()();

  v49[3] = sub_100005744(0, &qword_1009846D0);
  v49[0] = v23;
  v24 = v23;
  sub_1002DCF64(v49);
  v25 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v26 = [*&v20[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] isHidden];
  v27 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = [*(*&v20[v27] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v28 setCompositingFilter:v24];

  v29 = [*&v20[v25] isHidden];
  v30 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v29)
  {
    v30 = v25;
  }

  v31 = [*(*(*&v20[v30] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v31 setCompositingFilter:v24];

  v32 = [*&v20[v25] isHidden];
  v33 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v32)
  {
    v33 = v25;
  }

  v34 = *(*&v20[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v35 = v42;
  v41(v42, v45 + v44, v22);
  v36 = v34;
  v37 = MediaOverlayStyle.userInterfaceStyle.getter();
  v47(v35, v22);
  if (v37 == 1)
  {
    sub_100005744(0, &qword_100970180);
    v38 = static UIColor.appTint.getter();
  }

  else
  {
    v38 = [objc_opt_self() whiteColor];
  }

  v39 = v38;
  [v36 setTintColor:v38];
}

uint64_t sub_1004083BC()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView];
  v10 = [v0 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096DBD8 != -1)
    {
      swift_once();
    }

    v11 = qword_1009845E0;
  }

  else
  {
    if (qword_10096DBD0 != -1)
    {
      swift_once();
    }

    v11 = qword_1009845C8;
  }

  v12 = sub_1000056A8(v1, v11);
  v13 = *(v2 + 16);
  v13(v8, v12, v1);

  v14 = *&v9[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v13(v4, v8, v1);
  v15 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 24))(&v14[v15], v4, v1);
  swift_endAccess();
  [v14 setNeedsLayout];
  v16 = *(v2 + 8);
  v16(v4, v1);
  [v9 setNeedsLayout];
  return (v16)(v8, v1);
}

uint64_t sub_100408654(int a1, id a2)
{
  [a2 locationInView:v2];
  v4 = v3;
  v6 = v5;
  v7 = [v2 hitTest:0 withEvent:?];
  sub_100005744(0, &qword_100978360);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    return 1;
  }

  [v2 bounds];
  v12.x = v4;
  v12.y = v6;
  if (!CGRectContainsPoint(v13, v12))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    return 0;
  }

  sub_100005744(0, &qword_100972EB0);
  v7 = v7;
  v8 = v2;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return 0;
}

id sub_10040894C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageView()
{
  result = qword_1009846A8;
  if (!qword_1009846A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100408B34()
{
  result = type metadata accessor for MediaOverlayStyle();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_100408C2C()
{
  result = qword_1009846B8;
  if (!qword_1009846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009846B8);
  }

  return result;
}

void sub_100408CA0(void *a1)
{
  v2 = v1;
  sub_1000CFFBC();
  swift_unknownObjectWeakAssign();
  sub_1000CDB94();
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.isSizeClassRegular.getter();

  if (v4)
  {
    sub_100407240();
  }

  [v2 setNeedsLayout];
}

uint64_t (*sub_100408D58(uint64_t **a1))()
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
  v2[4] = sub_100405794(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100408DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100408E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100408E9C(uint64_t *a1))()
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
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100408F38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_1004090A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004091E0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator) = 0;
  v2 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView;
  type metadata accessor for ShadowView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView()) init];
  v7 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView;
  v8 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView());
  *(v1 + v7) = sub_10071D610(0);
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView;
  v10 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView());
  *(v1 + v9) = sub_1002637E0(0);
  v11 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView();
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView) = 0;
  v14 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_videoBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_isCollapsing) = 0;
  v15 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = type metadata accessor for MediaOverlayStyle();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for FlowDestination()
{
  result = qword_100984748;
  if (!qword_100984748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004094B0()
{
  sub_100409AA4(319);
  if (v0 <= 0x3F)
  {
    sub_100409C14(319, &qword_100984780, &type metadata accessor for FlowOrigin);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        sub_100409C14(319, &qword_100984788, &type metadata accessor for DynamicUIRequestInfo);
        if (v3 <= 0x3F)
        {
          sub_10040A254(319, &qword_100984790, &qword_100984798, &type metadata accessor for SearchAction, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10040A094(319, &qword_1009847A0, &qword_1009847A8);
            if (v5 <= 0x3F)
            {
              sub_10040A254(319, &qword_1009847B0, &qword_1009847B8, &type metadata accessor for Artwork, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_10040A180(319, &qword_1009847C0, &qword_1009847C8);
                if (v7 <= 0x3F)
                {
                  sub_10040A094(319, &qword_1009847D0, &qword_1009847D8);
                  if (v8 <= 0x3F)
                  {
                    sub_10040A094(319, &qword_1009847E0, &qword_1009847E8);
                    if (v9 <= 0x3F)
                    {
                      sub_100409CFC();
                      if (v10 <= 0x3F)
                      {
                        sub_100409D94();
                        if (v11 <= 0x3F)
                        {
                          sub_100409E38();
                          if (v12 <= 0x3F)
                          {
                            sub_100409EB8();
                            if (v13 <= 0x3F)
                            {
                              sub_10040A208(319, &qword_100984830, &type metadata accessor for MarketingItemRequestInfo);
                              if (v14 <= 0x3F)
                              {
                                sub_100409F4C();
                                if (v15 <= 0x3F)
                                {
                                  sub_100409FCC();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_10040A064();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_100005744(319, &qword_1009711C0);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_10040A208(319, &qword_100984860, &type metadata accessor for URL);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_10040A094(319, &qword_100984868, &qword_100984870);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_10040A118();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_10040A3C4(319, &qword_100984888);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_10040A180(319, &qword_100984890, &qword_100984898);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_100409C14(319, &qword_1009848A0, &type metadata accessor for AdamId);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_10040A208(319, &qword_1009848A8, &type metadata accessor for ReviewsPage);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_100409C98(319, &qword_1009848B0, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_10040A254(319, &qword_1009848B8, &qword_1009848B0, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_10040A180(319, &qword_1009848C0, &qword_100983518);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            type metadata accessor for GenericPage();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_10040A2A8();
                                                              if (v30 <= 0x3F)
                                                              {
                                                                type metadata accessor for Review();
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  type metadata accessor for EditorsChoice();
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_10040A2D8();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_10040A36C();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_10040A410();
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_10040A4A0();
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_10040A520();
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_10040A5A0();
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_10040A620();
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100409AA4(uint64_t a1)
{
  if (!qword_100984758)
  {
    __chkstk_darwin(a1);
    type metadata accessor for URL();
    sub_10002D1A8(&qword_100984760);
    sub_10002D1A8(&qword_100984768);
    sub_10002D1A8(&qword_100984770);
    sub_10002D1A8(&qword_100984778);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100984758);
    }
  }
}

void sub_100409C14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for URL();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100409C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100409CFC()
{
  if (!qword_1009847F0)
  {
    type metadata accessor for ShareSheetData();
    sub_10002D1A8(&qword_1009847F8);
    type metadata accessor for ShareSheetAction.ShareSheetStyle();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1009847F0);
    }
  }
}

void sub_100409D94()
{
  if (!qword_100984800)
  {
    sub_10002D1A8(&qword_100984808);
    sub_10002D1A8(&unk_100984350);
    type metadata accessor for HttpTemplateAction();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100984800);
    }
  }
}

void sub_100409E38()
{
  if (!qword_100984810)
  {
    sub_10002D1A8(&qword_100984818);
    type metadata accessor for ArcadePageUrls();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984810);
    }
  }
}

void sub_100409EB8()
{
  if (!qword_100984820)
  {
    sub_10002D1A8(&qword_100982460);
    sub_10002D1A8(&qword_100984828);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100984820);
    }
  }
}

void sub_100409F4C()
{
  if (!qword_100984838)
  {
    sub_10002D1A8(&qword_100984840);
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984838);
    }
  }
}

void sub_100409FCC()
{
  if (!qword_100984848)
  {
    sub_10002D1A8(&qword_100984850);
    type metadata accessor for ArcadeWelcomePage.ContentType();
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100984848);
    }
  }
}

void *sub_10040A064()
{
  result = qword_100984858;
  if (!qword_100984858)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100984858);
  }

  return result;
}

void sub_10040A094(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10002D1A8(a3);
    sub_10002D1A8(&qword_100982460);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10040A118()
{
  if (!qword_100984878)
  {
    sub_100005744(255, &qword_100984880);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100984878);
    }
  }
}

void sub_10040A180(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for URL();
    sub_10002D1A8(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10040A208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10040A254(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_100409C98(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_10040A2A8()
{
  result = qword_1009848C8;
  if (!qword_1009848C8)
  {
    result = &type metadata for OnboardingConfiguration;
    atomic_store(&type metadata for OnboardingConfiguration, &qword_1009848C8);
  }

  return result;
}

void sub_10040A2D8()
{
  if (!qword_1009848D0)
  {
    sub_100005744(255, &qword_1009848D8);
    sub_100005744(255, &qword_1009848E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009848D0);
    }
  }
}

void sub_10040A36C()
{
  if (!qword_1009848E8)
  {
    sub_10040A3C4(0, &qword_10098A3F0);
    if (!v1)
    {
      atomic_store(v0, &qword_1009848E8);
    }
  }
}

void sub_10040A3C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10040A410()
{
  if (!qword_1009848F0)
  {
    sub_100005744(255, &qword_1009848E0);
    sub_10002D1A8(&unk_100977380);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009848F0);
    }
  }
}

void sub_10040A4A0()
{
  if (!qword_1009848F8)
  {
    type metadata accessor for AppEventDetailPage();
    sub_10002D1A8(&qword_100980960);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009848F8);
    }
  }
}

void sub_10040A520()
{
  if (!qword_100984900)
  {
    type metadata accessor for ContingentOfferDetailPage();
    sub_10002D1A8(&qword_100980960);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984900);
    }
  }
}

void sub_10040A5A0()
{
  if (!qword_100984908)
  {
    type metadata accessor for OfferItemDetailPage();
    sub_10002D1A8(&qword_100980960);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984908);
    }
  }
}

void sub_10040A620()
{
  if (!qword_100984910)
  {
    sub_100005744(255, &qword_1009711C0);
    type metadata accessor for IndexPath();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984910);
    }
  }
}

uint64_t sub_10040A6A4()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100118188(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x73657461647075;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v17 = *(sub_10002849C(&qword_100983688) + 48);
      v18 = type metadata accessor for FlowOrigin();
      (*(*(v18 - 8) + 8))(v3 + v17, v18);
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 8))(v3, v19);
      return 0x6E776F6E6B6E75;
    case 2:
      sub_1001181EC(v3);
      return 0x65746973626577;
    case 3:
      sub_10002849C(&qword_100983680);

      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 8))(v3, v13);
      return 0x5563696D616E7964;
    case 4:
      sub_1001181EC(v3);
      return 0x686372616573;
    case 5:

      v21 = sub_10002849C(&qword_100983670);
      sub_10002B894(v3 + *(v21 + 48), &qword_100982460);
      return 0xD000000000000019;
    case 6:
      sub_1001181EC(v3);
      return 0x7972656C6C6167;
    case 7:
      sub_10002849C(&qword_100983668);

      v28 = type metadata accessor for URL();
      (*(*(v28 - 8) + 8))(v3, v28);
      return 0x6F65646976;
    case 8:

      v15 = sub_10002849C(&unk_10097CCB0);
      sub_10002B894(v3 + *(v15 + 48), &qword_100982460);
      return 1701273968;
    case 9:

      v27 = sub_10002849C(&qword_100983608);
      sub_10002B894(v3 + *(v27 + 48), &qword_100982460);
      return 0x7472616843706F74;
    case 10:

      v11 = *(sub_10002849C(&qword_100983590) + 64);
      v12 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      return 0x6568536572616873;
    case 11:
      sub_1001181EC(v3);
      return 0x6F4374726F706572;
    case 12:
      sub_1001181EC(v3);
      return 0xD00000000000001ALL;
    case 13:

      v9 = *(sub_10002849C(&qword_1009703B8) + 48);
      v10 = type metadata accessor for ArcadePageUrls();
      (*(*(v10 - 8) + 8))(v3 + v9, v10);
      return 0x656461637261;
    case 14:
      sub_10002849C(&qword_100983638);

      sub_10002B894(v3, &qword_100982460);
      return 0x7553656461637261;
    case 15:
    case 33:
      sub_1001181EC(v3);
      return 0xD000000000000013;
    case 16:

      v7 = *(sub_10002849C(&qword_100983648) + 48);
      v8 = type metadata accessor for URL();
      goto LABEL_29;
    case 17:

      v22 = sub_10002849C(&qword_100975958);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 8))(v3 + v24, v25);
      v26 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v26 - 8) + 8))(v3 + v23, v26);
      return 0x6557656461637261;
    case 18:
      sub_1001181EC(v3);
      return 0xD00000000000001CLL;
    case 19:
      sub_1001181EC(v3);
      return 0x746E6F4377656976;
    case 20:
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 8))(v3, v20);
      return 0x7961646F74;
    case 21:

      v31 = sub_10002849C(&qword_1009835C0);
      sub_10002B894(v3 + *(v31 + 48), &qword_100982460);
      return 0x656C6369747261;
    case 22:
      sub_1001181EC(v3);
      return 0x6573616863727570;
    case 23:
      sub_1001181EC(v3);
      return 0x6775626564;
    case 24:
      sub_10002849C(&qword_1009835B0);

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 8))(v3, v16);
      goto LABEL_21;
    case 25:
      v34 = *(sub_10002849C(&unk_1009835A0) + 48);
      v35 = type metadata accessor for AdamId();
      (*(*(v35 - 8) + 8))(v3 + v34, v35);
      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 8))(v3, v36);
      return 0x7665526574697277;
    case 26:
      sub_1001181EC(v3);
      return 0x73776569766572;
    case 27:
      sub_1001181EC(v3);
      return 0x746E756F636361;
    case 28:
      sub_10002B894(v3, &qword_100982460);
      return 0x65636E616E6966;
    case 29:
      v29 = sub_10002849C(&qword_100983578);
      sub_10002B894(v3 + *(v29 + 48), &qword_100983518);
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 8))(v3, v30);
      return 7304045;
    case 30:
      sub_1001181EC(v3);
      return 0x486E6F6973726576;
    case 31:
      return 0x696472616F626E6FLL;
    case 32:
      sub_1001181EC(v3);
      return 0x6544776569766572;
    case 34:
      sub_1001181EC(v3);
      goto LABEL_7;
    case 35:
      sub_1001181EC(v3);
      return 0xD000000000000017;
    case 36:
      sub_1001181EC(v3);
      return 0x6D65766569686361;
    case 37:

      v33 = sub_10002849C(&unk_10097CCB0);
      sub_10002B894(v3 + *(v33 + 48), &qword_100982460);
      return 0x4479636176697270;
    case 38:

      v32 = sub_10002849C(&unk_10097CCB0);
      sub_10002B894(v3 + *(v32 + 48), &qword_100982460);
      return 0xD000000000000012;
    case 39:

      v14 = sub_10002849C(&unk_10097CCB0);
      sub_10002B894(v3 + *(v14 + 48), &qword_100982460);
      goto LABEL_21;
    case 40:
      sub_1001181EC(v3);
      return 0x746E657645707061;
    case 41:
      sub_1001181EC(v3);
      goto LABEL_46;
    case 42:
      sub_1001181EC(v3);
      return 0x657449726566666FLL;
    case 43:

      v7 = *(sub_10002849C(&qword_100983570) + 48);
      v8 = type metadata accessor for IndexPath();
LABEL_29:
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      return 0xD000000000000011;
    case 44:
      return result;
    case 45:
      return 0x75506E6564646968;
    case 46:
      return 0x6F53676E696D6F63;
    case 47:
LABEL_7:
      result = 0xD000000000000016;
      break;
    case 48:
LABEL_46:
      result = 0xD000000000000015;
      break;
    case 49:
LABEL_21:
      result = 0xD000000000000014;
      break;
    case 50:
      result = 0xD000000000000013;
      break;
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 52:
      result = 0x676E697373696DLL;
      break;
    default:
      sub_10002849C(&qword_100983698);

      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x746375646F7270;
      break;
  }

  return result;
}

uint64_t sub_10040B47C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FlowPresentationContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xFu:
    case 0x1Bu:
      sub_1001181EC(v13);
      goto LABEL_14;
    case 3u:
      sub_10002849C(&qword_100983680);

      v23 = type metadata accessor for URL();
      (*(*(v23 - 8) + 8))(v13, v23);
      goto LABEL_14;
    case 4u:
      sub_1001181EC(v13);
      v14 = &enum case for FlowPresentationContext.select(_:);
      goto LABEL_24;
    case 6u:
      sub_1001181EC(v13);
      goto LABEL_11;
    case 7u:
      sub_10002849C(&qword_100983668);

      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 8))(v13, v22);
      goto LABEL_11;
    case 0xAu:

      v41 = *(sub_10002849C(&qword_100983590) + 64);
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.presentModalPopover(_:), v4);
      v42 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
      return (*(*(v42 - 8) + 8))(&v13[v41], v42);
    case 0xEu:
      sub_10002849C(&qword_100983638);

      v33 = ASKDeviceTypeGetCurrent();
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
      {

        v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
        if (v39)
        {
          v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v7, *v40, v4);
      (*(v5 + 32))(a1, v7, v4);
      return sub_10002B894(v13, &qword_100982460);
    case 0x11u:

      v15 = sub_10002849C(&qword_100975958);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 8))(&v13[v17], v18);
      v19 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v19 - 8) + 8))(&v13[v16], v19);
      goto LABEL_14;
    case 0x13u:
    case 0x17u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
      sub_1001181EC(v13);
      goto LABEL_3;
    case 0x15u:

      v21 = sub_10002849C(&qword_1009835C0);
      sub_10002B894(&v13[*(v21 + 48)], &qword_100982460);
      goto LABEL_3;
    case 0x18u:
      sub_10002849C(&qword_1009835B0);

      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 8))(v13, v20);
LABEL_3:
      v14 = &enum case for FlowPresentationContext.presentModal(_:);
      goto LABEL_24;
    case 0x1Cu:
      sub_10002B894(v13, &qword_100982460);
LABEL_14:
      v24 = ASKDeviceTypeGetCurrent();
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {

        v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v31 = &enum case for FlowPresentationContext.presentModalPageSheet(_:);
        if (v30)
        {
          v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v10, *v31, v4);
      return (*(v5 + 32))(a1, v10, v4);
    case 0x1Fu:
      v14 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      goto LABEL_24;
    case 0x2Du:
LABEL_11:
      v14 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
LABEL_24:
      result = (*(v5 + 104))(a1, *v14, v4);
      break;
    default:
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.push(_:), v4);
      result = sub_1001181EC(v13);
      break;
  }

  return result;
}

uint64_t sub_10040BB0C()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() - 7;
  result = 0;
  switch(v4)
  {
    case 0:
      sub_10002849C(&qword_100983668);

      goto LABEL_9;
    case 3:

      v9 = *(sub_10002849C(&qword_100983590) + 64);
      v10 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      goto LABEL_10;
    case 4:
    case 5:
    case 12:
    case 25:
    case 26:
    case 33:
    case 34:
    case 35:
      sub_1001181EC(v3);
      return 0;
    case 14:

      v6 = &v3[*(sub_10002849C(&qword_1009835C0) + 48)];
      goto LABEL_6;
    case 18:
      v7 = *(sub_10002849C(&unk_1009835A0) + 48);
      v8 = type metadata accessor for AdamId();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
LABEL_9:
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 8))(v3, v11);
LABEL_10:
      result = 0;
      break;
    case 21:
      v6 = v3;
LABEL_6:
      sub_10002B894(v6, &qword_100982460);
      result = 0;
      break;
    case 24:
      return result;
    default:
      sub_1001181EC(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t type metadata accessor for GenericPageLayoutSectionProvider()
{
  result = qword_100984940;
  if (!qword_100984940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10040BDD4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a4;
  v42 = a5;
  v13 = type metadata accessor for Shelf.ContentType();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_1009731F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v35 = a2;
  v36 = a3;
  v44 = a2;
  v45 = a3;
  type metadata accessor for BasePageLayoutSectionProvider();
  v20 = method lookup function for BasePageLayoutSectionProvider();
  v37 = a10;
  v33 = a9;
  v21 = v13;
  v22 = v20(a1, sub_10028A62C, v43, v41, v42, v38, v39, v40, a9, a10);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v17 + 8))(v19, v16);
  v23 = v34;
  v24 = (*(v34 + 88))(v15, v21);
  if (v24 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    v25 = v35();
    v26 = sub_10040C1D8(a1, v25, v41, v42, v38, v39, v40, v33, v37);

LABEL_5:

    return v26;
  }

  v27 = v37;
  v28 = v41;
  v29 = v42;
  if (v24 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v30 = v35();
    v26 = sub_10040D51C(a1, v30, v28, v29, v38, v39, v40, v33, v27);

    goto LABEL_5;
  }

  if (v24 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    [v22 setOrthogonalScrollingBehavior:2];
  }

  else
  {
    (*(v23 + 8))(v15, v21);
  }

  return v22;
}

uint64_t sub_10040C138(uint64_t a1)
{
  swift_allocObject();
  sub_10002C0AC(a1, v4);
  v2 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(a1);
  return v2;
}

uint64_t sub_10040C1D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9)
{
  v159 = a8;
  v160 = a7;
  v133 = a6;
  v132 = a5;
  v134 = a4;
  v135 = a3;
  v156 = a1;
  v10 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v10 - 8);
  v142 = &v128 - v11;
  v153 = sub_10002849C(&qword_100984990);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v128 - v12;
  v147 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v128 - v15;
  v144 = type metadata accessor for TextAppearance();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v136 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v128 - v18;
  __chkstk_darwin(v19);
  v138 = &v128 - v20;
  __chkstk_darwin(v21);
  v139 = &v128 - v22;
  __chkstk_darwin(v23);
  v140 = &v128 - v24;
  __chkstk_darwin(v25);
  v141 = &v128 - v26;
  v150 = type metadata accessor for LabelPlaceholder();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v158 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for PageGrid();
  v157 = *(v155 - 8);
  __chkstk_darwin(v155);
  v154 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ItemLayoutContext();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = _swiftEmptyArrayStorage;
  v33 = *(a2 + 16);
  v161 = v30;
  v130 = a2;
  v131 = v33;
  if (v33)
  {
    type metadata accessor for RibbonBarItem();
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    *&v163 = v35;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v162 = _swiftEmptyArrayStorage;
    v35(v32, v36, v29);
    while (1)
    {
      sub_10040F0B4(&qword_100978EE0, &type metadata accessor for RibbonBarItem);
      ItemLayoutContext.typedModel<A>(as:)();
      (*(v34 - 8))(v32, v29);
      if (v168[0])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v162 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v162 = aBlock;
      }

      v36 += v37;
      if (!--v33)
      {
        break;
      }

      (v163)(v32, v36, v29);
    }
  }

  else
  {
    v162 = _swiftEmptyArrayStorage;
  }

  v38 = v154;
  v39 = v156;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v41 = v40;
  v42 = v157 + 8;
  v43 = *(v157 + 8);
  v44 = v155;
  v43(v38, v155);
  v45 = ShelfLayoutContext.traitCollection.getter();
  v46 = type metadata accessor for SnapshotPageTraitEnvironment();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v48 = v41;
  *(v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v47[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v45;
  v169.receiver = v47;
  v169.super_class = v46;
  v49 = objc_msgSendSuper2(&v169, "init");
  v50 = [v49 traitCollection];

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v52 = v51;
  v43(v38, v44);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v54 = v53;
  v43(v38, v44);
  v55 = sub_1006EAE98(v162, v50, v52, v54);

  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    sub_100005744(0, &unk_100990AB0);
    v67 = type metadata accessor for ShelfLayoutContext();
    v68 = *(v67 - 8);
    v69 = v142;
    (*(v68 + 16))(v142, v39, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();

    sub_10002B894(v69, &qword_10097F480);
    return v70;
  }

  v142 = v43;
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v162 = a9;
  v56 = type metadata accessor for FontUseCase();
  sub_1000056A8(v56, qword_1009D17A8);
  v57 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v58 = v136;
  TextAppearance.init()();
  v59 = v137;
  *&v163 = v57;
  TextAppearance.withFont(_:)();
  v60 = *(v143 + 8);
  v61 = v144;
  v60(v58, v144);
  v62 = v138;
  TextAppearance.withTextAlignment(_:)();
  v60(v59, v61);
  v63 = v139;
  TextAppearance.withLineBreakMode(_:)();
  v60(v62, v61);
  v64 = v140;
  TextAppearance.withLineSpacing(_:)();
  v60(v63, v61);
  TextAppearance.withNumberOfLines(_:)();
  v60(v64, v61);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v65 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v129 = v55;
  v66 = v145;
  if (v65)
  {
    sub_1006EA400(v50, v145);
  }

  else
  {
    sub_1006EA738();
  }

  (*(v146 + 32))(v149, v66, v147);
  v166 = 0;
  aBlock = 0u;
  v165 = 0u;
  v71 = v150;
  v168[3] = v150;
  v168[4] = &protocol witness table for LabelPlaceholder;
  v72 = sub_1000056E0(v168);
  v73 = v148;
  v74 = v158;
  (*(v148 + 16))(v72, v158, v71);
  v75 = type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  *&aBlock = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  sub_10040F0B4(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout);
  v76 = v151;
  v149 = v75;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v77 = v153;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v79 = v78;

  (*(v152 + 8))(v76, v77);
  (*(v73 + 8))(v74, v71);
  v168[0] = _swiftEmptyArrayStorage;
  v80 = v129;
  *&v163 = v129[2];
  v157 = v42;
  if (!v163)
  {
    v86 = 0.0;
LABEL_26:

    v95 = (v163 - 1);
    static RibbonBarItemCellLayout.interItemSpacing.getter();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v96 = swift_allocObject();
    v163 = xmmword_1007B0B70;
    *(v96 + 16) = xmmword_1007B0B70;
    *(v96 + 32) = v50;
    v97 = v50;
    v98 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    Double.rawValue(in:)();
    v100 = v99;

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v86 + v100 * v95];
    v104 = [v102 absoluteDimension:v79];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100005744(0, &qword_10098EFE0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v108 = objc_opt_self();
    static RibbonBarItemCellLayout.interItemSpacing.getter();
    v109 = swift_allocObject();
    *(v109 + 16) = v163;
    *(v109 + 32) = v97;
    *&v163 = v97;
    v110 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    Double.rawValue(in:)();
    v112 = v111;

    v113 = [v108 fixedSpacing:v112];
    [v107 setInterItemSpacing:v113];

    v70 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    v114 = v134;
    dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &qword_10097F460);
    v115 = Array._bridgeToObjectiveC()().super.isa;

    [v70 setBoundarySupplementaryItems:v115];

    dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &unk_10097D670);
    v116 = Array._bridgeToObjectiveC()().super.isa;

    [v70 setDecorationItems:v116];

    v117 = v154;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    v119 = v118;
    v121 = v120;
    (v142)(v117, v155);
    sub_10002A400(v114, v114[3]);
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    v123 = v122;
    sub_10002A400(v114, v114[3]);
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    [v70 setContentInsets:{v123, v119, v124, v121}];
    [v70 setOrthogonalScrollingBehavior:1];
    BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
    v125 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
    v127 = v126;

    if (v125)
    {
      v166 = v125;
      v167 = v127;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v165 = sub_1006BBC70;
      *(&v165 + 1) = &unk_1008C1DA0;
      v125 = _Block_copy(&aBlock);
    }

    [v70 setVisibleItemsInvalidationHandler:v125];
    _Block_release(v125);

    return v70;
  }

  v81 = objc_opt_self();
  v158 = objc_opt_self();
  result = objc_opt_self();
  if (v131)
  {
    if (v163 <= v131)
    {
      v83 = result;
      v153 = v50;
      swift_getObjectType();
      v84 = 0;
      v85 = v80 + 4;
      v86 = 0.0;
      do
      {
        v87 = v85[v84];
        v88 = [v81 absoluteDimension:v87];
        v89 = [v81 absoluteDimension:v79];
        v90 = [v158 sizeWithWidthDimension:v88 heightDimension:v89];

        dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
        sub_100005744(0, &qword_100982860);
        v91 = v90;
        v92 = Array._bridgeToObjectiveC()().super.isa;

        v93 = [v83 itemWithLayoutSize:v91 supplementaryItems:v92];

        v94 = v93;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v84;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v86 = v86 + v87;
      }

      while (v163 != v84);
      v50 = v153;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10040D51C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v187 = a4;
  v227 = a8;
  v230 = a7;
  v185 = a5;
  v186 = a6;
  v188 = a3;
  v193 = a1;
  v10 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v10 - 8);
  v189 = &v182 - v11;
  v12 = sub_10002849C(&qword_10096FD88);
  v13 = *(v12 - 8);
  v233 = v12;
  v234 = v13;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v203 = &v182 - v16;
  v215 = sub_10002849C(&qword_100984990);
  v224 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v182 - v17;
  v213 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v223 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v231 = &v182 - v20;
  v211 = type metadata accessor for TextAppearance();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v182 - v23;
  __chkstk_darwin(v24);
  v208 = &v182 - v25;
  __chkstk_darwin(v26);
  v207 = &v182 - v27;
  __chkstk_darwin(v28);
  v206 = &v182 - v29;
  __chkstk_darwin(v30);
  v205 = &v182 - v31;
  v204 = type metadata accessor for LabelPlaceholder();
  v221 = *(v204 - 8);
  __chkstk_darwin(v204);
  v229 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for PageGrid();
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for ItemLayoutContext();
  v34 = *(v232 - 1);
  __chkstk_darwin(v232);
  v217 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  *&v235 = _swiftEmptyArrayStorage;
  v39 = *(a2 + 16);
  v182 = a2;
  v183 = v34;
  v184 = v39;
  if (v39)
  {
    type metadata accessor for RibbonBarItem();
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    ObjectType = v41;
    v42 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v225 = *(v40 + 56);
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v232;
      (ObjectType)(v38, v42, v232);
      sub_10040F0B4(&qword_100978EE0, &type metadata accessor for RibbonBarItem);
      ItemLayoutContext.typedModel<A>(as:)();
      (*(v40 - 8))(v38, v43);
      if (v254[0])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v218 = v235;
      }

      v42 += v225;
      --v39;
    }

    while (v39);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

  v44 = v191;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v46 = v45;
  v47 = *(v194 + 8);
  v194 += 8;
  v190 = v47;
  v47(v44, v192);
  v48 = ShelfLayoutContext.traitCollection.getter();
  v49 = type metadata accessor for SnapshotPageTraitEnvironment();
  v50 = objc_allocWithZone(v49);
  v51 = &v50[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v51 = v46;
  *(v51 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v50[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v48;
  v258.receiver = v50;
  v258.super_class = v49;
  v52 = objc_msgSendSuper2(&v258, "init");
  v53 = [v52 traitCollection];

  v54 = v218;
  if (v218 >> 62)
  {
    v94 = v218;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v94;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_37:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v55 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_11:
  v56 = v54;
  v257 = _swiftEmptyArrayStorage;
  sub_100144188(0, v55 & ~(v55 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_94;
  }

  v57 = v257;
  v58 = sub_100005744(0, &qword_1009730E0);
  v59 = 0;
  v60 = v56;
  v200 = v56 & 0xC000000000000001;
  v201 = v58;
  v198 = (v223 + 32);
  v199 = (v222 + 8);
  v196 = (v224 + 1);
  v197 = (v221 + 2);
  v195 = (v221 + 1);
  v216 = v53;
  v202 = v55;
  do
  {
    if (v200)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = RibbonBarItem.title.getter();
    v221 = v63;
    v222 = v62;
    v64 = RibbonBarItem.artwork.getter();
    ObjectType = v57;
    if (v64)
    {
      Artwork.size.getter();
      v66 = v65;
      v68 = v67;

      v219 = v68;
      v220 = v66;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    v69 = RibbonBarItem.artwork.getter();
    if (v69)
    {
    }

    v223 = v69;
    v225 = v61;
    if (qword_10096E2B8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for FontUseCase();
    sub_1000056A8(v70, qword_1009D17A8);
    v53 = v216;
    v71 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v72 = v210;
    TextAppearance.init()();
    v73 = v209;
    v224 = v71;
    TextAppearance.withFont(_:)();
    v74 = *v199;
    v75 = v211;
    (*v199)(v72, v211);
    v76 = v208;
    TextAppearance.withTextAlignment(_:)();
    v74(v73, v75);
    v77 = v207;
    TextAppearance.withLineBreakMode(_:)();
    v74(v76, v75);
    v78 = v206;
    TextAppearance.withLineSpacing(_:)();
    v74(v77, v75);
    TextAppearance.withNumberOfLines(_:)();
    v74(v78, v75);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v79 = v212;
      sub_1006EA400(v53, v212);
    }

    else
    {
      v79 = v212;
      if (v64)
      {
        CGSize.fitting(_:mode:)();
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4028000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0;
      }

      else
      {
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251 = 0x4024000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248 = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245 = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242 = 0x4024000000000000;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239 = 0x4024000000000000;
      }

      RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)();
      v53 = v216;
    }

    (*v198)(v231, v79, v213);
    if (v223)
    {
      v80 = type metadata accessor for EmptyPlaceable();
      swift_allocObject();
      v81 = EmptyPlaceable.init()();
      *(&v236 + 1) = v80;
      v237 = sub_10040F0B4(&qword_1009768B0, &type metadata accessor for EmptyPlaceable);
      *&v235 = v81;
    }

    else
    {
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
    }

    v82 = v204;
    v255 = v204;
    v256 = &protocol witness table for LabelPlaceholder;
    v83 = sub_1000056E0(v254);
    v84 = v229;
    (*v197)(v83, v229, v82);
    type metadata accessor for RibbonBarItemCellLayout();
    swift_allocObject();
    *&v235 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
    sub_10040F0B4(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout);
    v85 = v214;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v86 = v215;
    dispatch thunk of Placeable.measure(toFit:with:)();
    v88 = v87;
    v90 = v89;

    (*v196)(v85, v86);
    (*v195)(v84, v82);
    v57 = ObjectType;
    v257 = ObjectType;
    v92 = *(ObjectType + 16);
    v91 = *(ObjectType + 24);
    if (v92 >= v91 >> 1)
    {
      sub_100144188((v91 > 1), v92 + 1, 1);
      v57 = v257;
    }

    ++v59;
    *(v57 + 2) = v92 + 1;
    v93 = &v57[2 * v92];
    *(v93 + 4) = v88;
    *(v93 + 5) = v90;
    v60 = v218;
  }

  while (v202 != v59);

LABEL_38:
  type metadata accessor for CGSize(0);
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    sub_100005744(0, &unk_100990AB0);
    v129 = type metadata accessor for ShelfLayoutContext();
    v130 = *(v129 - 8);
    v131 = v189;
    (*(v130 + 16))(v189, v193, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();

    sub_10002B894(v131, &qword_10097F480);
    return v132;
  }

  type metadata accessor for RibbonBarItemCellLayout();
  static RibbonBarItemCellLayout.interItemSpacing.getter();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1007B0B70;
  *(v95 + 32) = v53;
  v96 = v53;
  v97 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  Double.rawValue(in:)();
  v99 = v98;

  v100 = v191;
  ShelfLayoutContext.contentPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v102 = v101;
  result = v190(v100, v192);
  v104 = *(v57 + 2);
  v105 = _swiftEmptyArrayStorage;
  v216 = v96;
  ObjectType = v57;
  if (!v104)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_67:
    v225 = a9;

    v55 = _swiftEmptyArrayStorage;
    v254[0] = _swiftEmptyArrayStorage;
    v222 = *(v105 + 2);
    if (!v222)
    {

      v159 = _swiftEmptyArrayStorage;
      v134 = 0.0;
LABEL_86:
      v160 = objc_opt_self();
      v161 = [v160 absoluteDimension:v102];
      v162 = [v160 absoluteDimension:v134];
      v55 = [objc_opt_self() sizeWithWidthDimension:v161 heightDimension:v162];

      if (!(v159 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_10098EFE0);
LABEL_88:

        v163 = objc_opt_self();
        sub_100005744(0, &qword_10098EFE0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v165 = [v163 verticalGroupWithLayoutSize:v55 subitems:isa];

        v166 = [objc_opt_self() fixedSpacing:10.0];
        [v165 setInterItemSpacing:v166];

        v167 = objc_opt_self();
        v234 = v165;
        v132 = [v167 sectionWithGroup:v165];
        swift_getObjectType();
        v168 = v187;
        dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
        sub_100005744(0, &qword_10097F460);
        v169 = Array._bridgeToObjectiveC()().super.isa;

        [v132 setBoundarySupplementaryItems:v169];

        dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
        sub_100005744(0, &unk_10097D670);
        v170 = Array._bridgeToObjectiveC()().super.isa;

        [v132 setDecorationItems:v170];

        v171 = v191;
        ShelfLayoutContext.contentPageGrid.getter();
        PageGrid.horizontalDirectionalMargins.getter();
        v173 = v172;
        v175 = v174;
        v190(v171, v192);
        sub_10002A400(v168, v168[3]);
        ShelfLayoutSpacingProvider.topPaddingValue(in:)();
        v177 = v176;
        sub_10002A400(v168, v168[3]);
        ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
        [v132 setContentInsets:{v177, v173, v178, v175}];
        BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
        v179 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
        v181 = v180;

        if (v179)
        {
          v237 = v179;
          v238 = v181;
          *&v235 = _NSConcreteStackBlock;
          *(&v235 + 1) = 1107296256;
          *&v236 = sub_1006BBC70;
          *(&v236 + 1) = &unk_1008C1DC8;
          v179 = _Block_copy(&v235);
        }

        [v132 setVisibleItemsInvalidationHandler:{v179, v182, v183}];
        _Block_release(v179);

        return v132;
      }

LABEL_95:
      sub_100005744(0, &qword_10098EFE0);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_88;
    }

    v221 = v105 + 4;
    v219 = objc_opt_self();
    v232 = objc_opt_self();
    v231 = objc_opt_self();
    v218 = objc_opt_self();
    v133 = 0;
    v134 = 0.0;
    v220 = v105;
    while (v133 < *(v105 + 2))
    {
      v223 = v133;
      v135 = v221[v133];
      v136 = *(*&v135 + 16);
      if (v136)
      {
        *&v235 = _swiftEmptyArrayStorage;

        specialized ContiguousArray.reserveCapacity(_:)();
        v229 = (*&v135 + ((v234[80] + 32) & ~v234[80]));
        ObjectType = swift_getObjectType();
        v137 = objc_opt_self();
        v138 = 0;
        v139 = 0.0;
        v140 = 0.0;
        while (v138 < *(*&v135 + 16))
        {
          v141 = v226;
          sub_10040F044(&v229[*(v234 + 9) * v138], v226);
          v142 = (v141 + *(v233 + 48));
          v143 = *v142;
          v144 = v142[1];
          if (v140 <= v144)
          {
            v140 = v142[1];
          }

          ++v138;
          v139 = v139 + v143;
          dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
          v145 = v232;
          v146 = [v232 absoluteDimension:v143];
          v147 = [v145 absoluteDimension:v144];
          v55 = [v231 sizeWithWidthDimension:v146 heightDimension:v147];

          sub_100005744(0, &qword_100982860);
          v148 = Array._bridgeToObjectiveC()().super.isa;

          v149 = [v137 itemWithLayoutSize:v55 supplementaryItems:v148];

          sub_10002B894(v141, &qword_10096FD88);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v136 == v138)
          {

            v55 = _swiftEmptyArrayStorage;
            goto LABEL_78;
          }
        }

        __break(1u);
        break;
      }

      v139 = 0.0;
      v140 = 0.0;
LABEL_78:
      if (v136 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v136;
      }

      v151 = v232;
      v152 = [v232 absoluteDimension:{v99 * (v150 - 1) + v139, v182, v183}];
      v153 = [v151 absoluteDimension:v140];
      v154 = [v231 sizeWithWidthDimension:v152 heightDimension:v153];

      sub_100005744(0, &qword_10098EFE0);
      v155 = Array._bridgeToObjectiveC()().super.isa;

      v156 = [v219 horizontalGroupWithLayoutSize:v154 subitems:v155];

      v157 = [v218 fixedSpacing:v99];
      [v156 setInterItemSpacing:v157];

      v158 = v156;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v133 = v223 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v134 = v134 + v140 + 10.0;
      v105 = v220;
      if (v133 == v222)
      {
        v159 = v254[0];

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v184)
  {
    if (v104 <= v184)
    {
      v106 = *(v183 + 16);
      v107 = v182 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v231 = *(v183 + 72);
      v108 = (v183 + 8);
      v109 = v57 + 5;
      v110 = v102;
      v224 = _swiftEmptyArrayStorage;
      do
      {
        v111 = *(v109 - 1);
        v112 = *v109;
        (v106)(v217, v107, v232);
        v113 = ceil(v111);
        if (v102 > v111)
        {
          v114 = v113;
        }

        else
        {
          v114 = v102;
        }

        if (v110 >= v114)
        {
          v117 = v105;
          v118 = v224;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100033CF4(0, *(v105 + 2) + 1, 1, v105);
          }

          v116 = *(v105 + 2);
          v115 = *(v105 + 3);
          v117 = v105;
          if (v116 >= v115 >> 1)
          {
            v117 = sub_100033CF4((v115 > 1), v116 + 1, 1, v105);
          }

          *(v117 + 2) = v116 + 1;
          *&v117[v116 + 4] = v224;
          v110 = v102;
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = (v203 + *(v233 + 48));
        v106();
        *v119 = v114;
        v119[1] = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v118;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = sub_100033CD0(0, *(v118 + 2) + 1, 1, v118);
        }

        v123 = *(v121 + 2);
        v122 = *(v121 + 3);
        v224 = v121;
        if (v123 >= v122 >> 1)
        {
          v224 = sub_100033CD0(v122 > 1, v123 + 1, 1, v224);
        }

        v124 = v224;
        *(v224 + 2) = v123 + 1;
        sub_10040EFD4(v203, v124 + ((v234[80] + 32) & ~v234[80]) + *(v234 + 9) * v123);
        if (v104 == 1)
        {

          v125 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100033CF4(0, *(v117 + 2) + 1, 1, v117);
          }

          v127 = *(v125 + 2);
          v126 = *(v125 + 3);
          v128 = v125;
          if (v127 >= v126 >> 1)
          {
            v128 = sub_100033CF4((v126 > 1), v127 + 1, 1, v125);
          }

          (*v108)(v217, v232);
          *(v128 + 2) = v127 + 1;
          v105 = v128;
          *&v128[v127 + 4] = v224;
        }

        else
        {
          (*v108)(v217, v232);
          v105 = v117;
        }

        v110 = v110 - (v99 + v114);
        v107 += v231;
        v109 += 2;
        --v104;
      }

      while (v104);
      goto LABEL_67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10040EFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FD88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F044(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FD88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10040F104()
{
  sub_10022BA74(v0 + OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver()
{
  result = qword_1009849D0;
  if (!qword_1009849D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040F1BC()
{
  sub_10022B99C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10040F258(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v13 = a1;
  sub_1001F16B4();
  v7 = a1;
  sub_10002849C(&qword_100984A80);
  if (swift_dynamicCast())
  {
    sub_100007000(v12);
    ItemLayoutContext.indexPath.getter();
    v8 = type metadata accessor for IndexPath();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_1000F4070(v6, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_10040F3DC(void *a1)
{
  v2 = v1;
  VerticalStack.init(with:)();
  if (*(v2 + 1) == 1)
  {
    v8 = type metadata accessor for Resize();
    v9 = &protocol witness table for Resize;
    v4 = sub_1000056E0(v7);
    sub_10040F5D0(a1, v4);
  }

  else
  {
    sub_10002C0AC(v2 + 104, v6);
    v8 = type metadata accessor for Margins();
    v9 = &protocol witness table for Margins;
    sub_1000056E0(v7);
    Margins.init(insets:child:)();
  }

  VerticalStack.add(_:with:)();
  sub_100007000(v7);
  static UIEdgeInsets.horizontal(left:right:)();
  sub_10002A400((v2 + 144), *(v2 + 168));
  Measurable.placeable.getter();
  v6[3] = type metadata accessor for Margins();
  v6[4] = &protocol witness table for Margins;
  sub_1000056E0(v6);
  Margins.init(insets:child:)();
  static Center.Axis.vertical.getter();
  v8 = type metadata accessor for Center();
  v9 = &protocol witness table for Center;
  sub_1000056E0(v7);
  Center.init(_:filling:)();
  VerticalStack.add(_:with:)();
  return sub_100007000(v7);
}

uint64_t sub_10040F5D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v41 = type metadata accessor for Resize.Rule();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v43 = (&v33 - v8);
  __chkstk_darwin(v9);
  v42 = (&v33 - v10);
  __chkstk_darwin(v11);
  v13 = (&v33 - v12);
  v14 = type metadata accessor for Margins();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DisjointStack();
  v40 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  DisjointStack.init(with:)();
  DisjointStack.insert(_:at:with:)();
  CGRect.subtracting(insets:)();
  CGRectGetWidth(v50);
  v20 = [a1 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  v36 = v3;
  sub_10002C0AC(v3 + 104, v47);
  v38 = v17;
  Margins.init(insets:child:)();
  v46[3] = v14;
  v46[4] = &protocol witness table for Margins;
  v37 = v14;
  v21 = sub_1000056E0(v46);
  v39 = v15;
  (*(v15 + 16))(v21, v17, v14);
  *v13 = sub_1002F1298;
  v13[1] = 0;
  v22 = *(v5 + 104);
  v23 = v41;
  v22(v13, enum case for Resize.Rule.recalculated(_:), v41);
  v24 = enum case for Resize.Rule.unchanged(_:);
  v25 = v42;
  v22(v42, enum case for Resize.Rule.unchanged(_:), v23);
  v26 = v43;
  v22(v43, v24, v23);
  v22(v45, v24, v23);
  v48 = type metadata accessor for Resize();
  v49 = &protocol witness table for Resize;
  sub_1000056E0(v47);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v27 = v19;
  v34 = v19;
  DisjointStack.insert(_:at:with:)();
  sub_100007000(v47);
  v28 = v35;
  v48 = v35;
  v49 = &protocol witness table for DisjointStack;
  v29 = sub_1000056E0(v47);
  v30 = v40;
  (*(v40 + 16))(v29, v27, v28);
  v22(v13, v24, v23);
  v31 = *(v36 + 48);
  v25[3] = &type metadata for CGFloat;
  v25[4] = &protocol witness table for CGFloat;
  *v25 = v31;
  v22(v25, enum case for Resize.Rule.replaced(_:), v23);
  v22(v26, v24, v23);
  v22(v45, v24, v23);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  (*(v39 + 8))(v38, v37);
  return (*(v30 + 8))(v34, v28);
}

uint64_t sub_10040FBA8()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ZeroDimension();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  DisjointStack.Properties.topEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.leadingEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.bottomEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  return DisjointStack.Properties.trailingEdge.setter();
}

uint64_t sub_10040FD50()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  DisjointStack.Properties.bottomEdge.setter();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return DisjointStack.Properties.leadingEdge.setter();
}

uint64_t sub_10040FE74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10040FEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10040FF38(void *a1)
{
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F3DC(a1);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_100410070(void *a1)
{
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F3DC(a1);
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_100410198@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004101AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
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

uint64_t sub_100410200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1004103BC(unint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  __chkstk_darwin(v8);
  v56 = &v45 - v9;
  __chkstk_darwin(v10);
  v50 = &v45 - v11;
  __chkstk_darwin(v12);
  v46 = &v45 - v13;
  __chkstk_darwin(v14);
  v49 = &v45 - v15;
  sub_100005744(0, &qword_100984B00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v59.receiver = v1;
  v59.super_class = v17;
  objc_msgSendSuper2(&v59, "prepareForCollectionViewUpdates:", isa);

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if (a1 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      v48 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate;
      v54 = a1;
      v55 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate;
      v58 = a1 & 0xC000000000000001;
      v20 = (v4 + 32);
      v51 = v4 + 8;
      v52 = (v4 + 16);
      v21 = &selRef_numberOfSegments;
      v53 = v18;
      do
      {
        if (v58)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(a1 + 8 * v19 + 32);
        }

        v23 = v22;
        if (![v22 v21[414]])
        {
          v24 = [v23 indexPathAfterUpdate];
          if (v24)
          {
            v25 = v46;
            v26 = v24;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = *v20;
            v28 = v49;
            (*v20)(v49, v25, v3);
            (*v52)(v50, v28, v3);
            v29 = v48;
            v30 = *&v1[v48];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v29] = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_10003421C(0, *(v30 + 2) + 1, 1, v30);
              *&v1[v48] = v30;
            }

            v33 = *(v30 + 2);
            v32 = *(v30 + 3);
            if (v33 >= v32 >> 1)
            {
              v30 = sub_10003421C(v32 > 1, v33 + 1, 1, v30);
            }

            *(v30 + 2) = v33 + 1;
            v27(&v30[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33], v50, v3);
            v34 = v49;
            *&v1[v48] = v30;
            (*(v4 + 8))(v34, v3);
            v18 = v53;
            a1 = v54;
            v21 = &selRef_numberOfSegments;
          }
        }

        if ([v23 v21[414]] == 1 && (v35 = objc_msgSend(v23, "indexPathBeforeUpdate")) != 0)
        {
          v36 = v47;
          v37 = v35;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = *v20;
          v39 = v56;
          (*v20)(v56, v36, v3);
          (*v52)(v57, v39, v3);
          v40 = v55;
          v41 = *&v1[v55];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v40] = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_10003421C(0, *(v41 + 2) + 1, 1, v41);
            *&v1[v55] = v41;
          }

          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_10003421C(v43 > 1, v44 + 1, 1, v41);
          }

          *(v41 + 2) = v44 + 1;
          v38(&v41[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44], v57, v3);
          *&v1[v55] = v41;

          (*(v4 + 8))(v56, v3);
          v18 = v53;
          a1 = v54;
          v21 = &selRef_numberOfSegments;
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }
}

char *sub_1004109D0(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "initialLayoutAttributesForAppearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate];

  v9 = sub_1003B7068(a1, v8);

  if (v9)
  {
    [v7 setAlpha:0.4];
    v10 = sub_100411374();
    v11 = *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  return v7;
}

char *sub_100410AF0(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate];

  v9 = sub_1003B7068(a1, v8);

  if (v9)
  {
    v10 = sub_10041195C();
    v11 = *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  [v7 setZIndex:1];
  return v7;
}

id sub_100410C00(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

double *sub_100410D08(double a1, double a2, double a3, double a4)
{
  v30 = type metadata accessor for IndexPath();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v38.receiver = v4;
  v38.super_class = v11;
  result = objc_msgSendSuper2(&v38, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    v14 = sub_100005744(0, &qword_1009759D0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v37 = _swiftEmptyArrayStorage;
      v17 = v4;
      v4 = &v37;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v31 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate;
      v34 = v15 & 0xFFFFFFFFFFFFFF8;
      v35 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled;
      v27 = v9 + 1;
      v28 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_14;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v34 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v18 + 32);
LABEL_14:
        v9 = v19;
        [v19 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (!swift_dynamicCast())
        {
          goto LABEL_8;
        }

        v20 = i;
        v21 = v14;
        v22 = v36;
        [v36 setZIndex:3];
        if ((*(v17 + v35) & 1) != 0 && (v23 = [v17 collectionView]) != 0)
        {
          v33 = v23;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = sub_1005567FC();
            swift_unknownObjectRelease();
            v24 = [v22 indexPath];
            v25 = v29;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v26 = IndexPath.item.getter();
            (*v27)(v25, v30);
            if (v26 < v32)
            {
              [v22 setZIndex:4];
            }

            v9 = v22;
            v17 = v28;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v9 = v22;
LABEL_7:
        v14 = v21;
        i = v20;
LABEL_8:
        ++v18;
        v4 = &v37;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (i == v18)
        {

          return v37;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_100411374()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v17, Width, 0.0, 0.0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 valueWithCATransform3D:&v17];
  [v7 setFromValue:v8];

  v9 = *&CATransform3DIdentity.m33;
  *&v17.m31 = *&CATransform3DIdentity.m31;
  *&v17.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v17.m41 = *&CATransform3DIdentity.m41;
  *&v17.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v17.m11 = *&CATransform3DIdentity.m11;
  *&v17.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v17.m21 = *&CATransform3DIdentity.m21;
  *&v17.m23 = v12;
  v13 = [v6 valueWithCATransform3D:&v17];
  [v7 setToValue:v13];

  v14 = v7;
  v15 = CACurrentMediaTime();
  [v14 setBeginTime:v15 + IndexPath.row.getter() * 0.05];
  [v14 setFillMode:kCAFillModeBackwards];
  [v14 setMass:1.0];
  [v14 setStiffness:250.0];
  [v14 setDamping:28.0];
  [v14 setInitialVelocity:0.0];
  [v14 settlingDuration];
  [v14 setDuration:?];

  return v14;
}

id sub_1004115CC(void *a1)
{
  v15 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v15 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100005744(0, &qword_1009759D0);
  if (swift_dynamicCast())
  {
    v7 = v16;
    [v16 setZIndex:3];
    if (*(v1 + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = sub_1005567FC();
          swift_unknownObjectRelease();
          v11 = [v7 indexPath];
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v12 = IndexPath.item.getter();
          (*(v3 + 8))(v6, v2);
          if (v12 < v10)
          {
            [v7 setZIndex:4];
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v14 = v15;

    return v14;
  }
}

id sub_1004118F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10041195C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  [v2 setBeginTime:CACurrentMediaTime()];
  [v2 setDuration:0.1];
  v3 = v2;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setFromValue:isa];

  v5 = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setToValue:v5];

  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1043207291;
  LODWORD(v8) = 1059816735;
  LODWORD(v9) = 1.0;
  v10 = [v6 initWithControlPoints:v7 :0.0 :v8 :v9];
  [v3 setTimingFunction:v10];

  return v3;
}

uint64_t sub_100411AA4(uint64_t a1)
{
  v2 = type metadata accessor for Dependency();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v123 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for MetricsLogger.Configuration();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v103 - v6;
  v134 = type metadata accessor for OSLogger();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ASKBagContract.AdPlacementBagValue();
  v135 = *(v133 - 8);
  __chkstk_darwin(v133);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  v14 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = v138;
  sub_100412FA8();
  v130 = v14;
  inject<A, B>(_:from:)();
  v16 = v138;
  v17 = [v138 ams_activeiTunesAccount];
  if (v17)
  {
    v18 = v17;
    if ([v17 ams_isManagedAppleID])
    {
      if (qword_10096D130 != -1)
      {
        swift_once();
      }

      v135 = sub_1000056A8(v134, qword_1009CE248);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1E00;
      LogMessage.init(stringLiteral:)();
      v140 = &type metadata for String;
      v138 = 0xD000000000000020;
      v139 = 0x8000000100812500;
      static LogMessage.safe(_:)();
      sub_10002B894(&v138, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      return a1;
    }
  }

  v119 = v16;
  v19 = [objc_opt_self() ams_sharedAccountStore];
  v20 = [v19 ams_fetchLocaliTunesAccount];

  v138 = 0;
  v21 = [v20 resultWithError:&v138];

  if (!v21)
  {
    v26 = v138;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_11;
  }

  v22 = v138;
  v23 = [v21 ams_storefront];

  if (!v23)
  {
LABEL_11:
    v122 = 0;
    v25 = 0;
    goto LABEL_12;
  }

  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

LABEL_12:
  v125 = v25;
  static Locale.storefront.getter();
  v121 = Locale.identifier.getter();
  v124 = v27;
  (*(v11 + 8))(v13, v10);
  if (ASKBagContract.isSearchLandingAdsEnabled.getter())
  {
    v128 = 1;
  }

  else
  {
    v28 = ASKBagContract.enabledAdPlacements.getter();
    v29 = v135;
    v30 = v133;
    (*(v135 + 104))(v9, enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:), v133);
    v128 = sub_1003B7020(v9, v28);

    (*(v29 + 8))(v9, v30);
  }

  v116 = v9;
  v118 = v2;
  v120 = a1;
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v134, qword_1009CE248);
  v32 = *(v132 + 16);
  v109 = v31;
  v32(v131);
  v33 = sub_10002849C(&unk_100972A10);
  v34 = *(type metadata accessor for LogMessage() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v106 = *(v34 + 80);
  v108 = v33;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1007CC5F0;
  v107 = v36;
  LogMessage.init(stringLiteral:)();
  v140 = &type metadata for String;
  v138 = 0xD000000000000020;
  v139 = 0x8000000100812500;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v37 = ASKBagContract.isSponsoredAdsEnabled.getter();
  if (v37)
  {
    v38 = 0x64656C62616E45;
  }

  else
  {
    v38 = 0x64656C6261736944;
  }

  v39 = 0xE800000000000000;
  v136 = v15;
  v140 = &type metadata for String;
  if (v37)
  {
    v39 = 0xE700000000000000;
  }

  v138 = v38;
  v139 = v39;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  if (v128)
  {
    v40 = 0x64656C62616E45;
  }

  else
  {
    v40 = 0x64656C6261736944;
  }

  v140 = &type metadata for String;
  v41 = 0xE700000000000000;
  if (!v128)
  {
    v41 = 0xE800000000000000;
  }

  v138 = v40;
  v139 = v41;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v42 = ASKBagContract.enabledAdPlacements.getter();
  v43 = v135;
  v44 = v135 + 104;
  v45 = *(v135 + 104);
  v46 = v116;
  v110 = enum case for ASKBagContract.AdPlacementBagValue.today(_:);
  v47 = v133;
  v45(v116);
  v127 = v45;
  v48 = sub_1003B7020(v46, v42);

  v50 = *(v43 + 8);
  v49 = v43 + 8;
  v126 = v50;
  v50(v46, v47);
  v51 = 0x64656C62616E45;
  if (!v48)
  {
    v51 = 0x64656C6261736944;
  }

  v52 = 0xE800000000000000;
  if (v48)
  {
    v52 = 0xE700000000000000;
  }

  v140 = &type metadata for String;
  v138 = v51;
  v139 = v52;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v53 = ASKBagContract.enabledAdPlacements.getter();
  v104 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
  v45(v46);
  v54 = sub_1003B7020(v46, v53);

  v55 = v126;
  v126(v46, v47);
  v56 = 0x64656C62616E45;
  if (!v54)
  {
    v56 = 0x64656C6261736944;
  }

  v140 = &type metadata for String;
  v57 = 0xE700000000000000;
  if (!v54)
  {
    v57 = 0xE800000000000000;
  }

  v138 = v56;
  v139 = v57;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v58 = ASKBagContract.enabledAdPlacements.getter();
  v103 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
  v111 = v44;
  v127(v46);
  v59 = sub_1003B7020(v46, v58);

  v135 = v49;
  v55(v46, v47);
  v60 = 0x64656C62616E45;
  if (!v59)
  {
    v60 = 0x64656C6261736944;
  }

  v61 = 0xE700000000000000;
  if (!v59)
  {
    v61 = 0xE800000000000000;
  }

  v140 = &type metadata for String;
  v138 = v60;
  v139 = v61;
  v105 = v35;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0);
  v62 = v134;
  v63 = v131;
  Logger.info(_:)();

  (*(v132 + 8))(v63, v62);
  v137 = &_swiftEmptyArrayStorage;
  v131 = type metadata accessor for AdHeaderProvider();
  v64 = swift_allocObject();
  v138 = sub_1001962CC(&_swiftEmptyArrayStorage);
  sub_10002849C(&qword_100984B08);
  swift_allocObject();
  v65 = Box.init(value:)();
  v132 = v64;
  *(v64 + 16) = v65;
  v66 = ASKBagContract.isSponsoredAdsEnabled.getter();
  a1 = v120;
  if (v66)
  {
    sub_100413058(&qword_100984B38, &type metadata accessor for MetricsLogger.Configuration);
    v67 = v113;
    v68 = v115;
    inject<A>(_:from:)();
    v69 = v114;
    v70 = v112;
    (*(v114 + 16))(v112, v67, v68);
    type metadata accessor for SearchAdsSponsoredSearchSessionManager();
    swift_allocObject();
    v71 = v125;

    v72 = v124;

    v73 = a1;
    v74 = v132;

    v75 = sub_1003DEA70(v122, v71, v121, v72, v74, v70);
    a1 = v73;

    sub_10002849C(&qword_1009844F0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1007B10D0;
    sub_10002849C(&unk_1009767E0);
    v77 = sub_100413058(&qword_100984B40, type metadata accessor for SearchAdsSponsoredSearchSessionManager);
    v138 = v75;
    v139 = v77;
    static Dependency.satisfying<A>(_:with:)();

    sub_100394804(v76);
    (*(v69 + 8))(v67, v68);
  }

  if (v128 || (v78 = ASKBagContract.enabledAdPlacements.getter(), v79 = v133, (v127)(v46, v110, v133), v80 = sub_1003B7020(v46, v78), , v126(v46, v79), v80) || (v81 = ASKBagContract.enabledAdPlacements.getter(), v82 = v133, (v127)(v46, v104, v133), v83 = sub_1003B7020(v46, v81), , v126(v46, v82), v83) || (v84 = ASKBagContract.enabledAdPlacements.getter(), v85 = v133, (v127)(v46, v103, v133), v86 = sub_1003B7020(v46, v84), , v126(v46, v85), v86))
  {
    sub_10002849C(&unk_100973AF0);
    inject<A, B>(_:from:)();
    v87 = v138;
    v88 = v125;
    v89 = v132;
    if (v125)
    {
      v90 = v139;
      v91 = v136;
      v92 = ASKBagContract.promotedContentContextPrefetchLimit.getter();
      v93 = type metadata accessor for PromotedContentOnDeviceAdProvider();
      swift_allocObject();

      swift_unknownObjectRetain();
      v94 = sub_100122B84(v122, v88, v121, v124, v92, v89, v91, v87, v90);

      swift_unknownObjectRelease();
      sub_10002849C(&qword_1009844F0);
      v95 = swift_allocObject();
      *(v95 + 1) = xmmword_1007B10D0;
      sub_10002849C(&qword_100984B20);
      v140 = v93;
      v141 = sub_100413058(&qword_100984B30, type metadata accessor for PromotedContentOnDeviceAdProvider);
      v138 = v94;

      static Dependency.satisfying<A>(_:with:)();
      sub_100007000(&v138);
    }

    else
    {

      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v95 = &_swiftEmptyArrayStorage;
    }

    sub_100394804(v95);
    swift_unknownObjectRelease();
    v96 = v119;
    v97 = v118;
    v98 = v123;
  }

  else
  {

    v96 = v119;
    v97 = v118;
    v98 = v123;
    v89 = v132;
  }

  v99 = v137;
  if (*(v137 + 2))
  {
    v138 = v89;
    static Dependency.satisfying<A>(_:with:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_10003474C(0, v99[2] + 1, 1, v99);
    }

    v101 = v99[2];
    v100 = v99[3];
    if (v101 >= v100 >> 1)
    {
      v99 = sub_10003474C(v100 > 1, v101 + 1, 1, v99);
    }

    v99[2] = v101 + 1;
    (*(v129 + 32))(v99 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v101, v98, v97);
    v138 = v99;
    sub_10002849C(&qword_100984B10);
    sub_100412FF4();
    a1 = dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();
  }

  else
  {
  }

  type metadata accessor for AdsService();
  inject<A, B>(_:from:)();
  sub_10002849C(&unk_1009767E0);
  BaseObjectGraph.optional<A>(_:)();
  sub_10002849C(&qword_100984B20);
  BaseObjectGraph.optional<A>(_:)();
  dispatch thunk of AdsService.registerDependencies(sessionProviding:onDeviceAdProvider:)();

  swift_unknownObjectRelease();
  sub_10002B894(&v138, &qword_100984B28);
  return a1;
}

unint64_t sub_100412FA8()
{
  result = qword_10098D1A0;
  if (!qword_10098D1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D1A0);
  }

  return result;
}

unint64_t sub_100412FF4()
{
  result = qword_100984B18;
  if (!qword_100984B18)
  {
    sub_10002D1A8(&qword_100984B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984B18);
  }

  return result;
}

uint64_t sub_100413058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004130A0()
{
  v1 = sub_10002849C(&qword_10097F538);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985298);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_1009852A0);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_1009852A8);
  sub_100097060(&qword_1009852B0, &qword_1009852A8);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560);
  sub_100097060(&qword_10097F568, &qword_10097F560);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538);
}

uint64_t sub_100413748()
{
  v1 = sub_10002849C(&qword_10097F538);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985280);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_10097C0B8);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985288);
  sub_100097060(&qword_100985290, &qword_100985288);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560);
  sub_100097060(&qword_10097F568, &qword_10097F560);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538);
}

uint64_t sub_100413DF0()
{
  v1 = sub_10002849C(&qword_10097F538);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985258);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_100985260);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985268);
  sub_100097060(&qword_100985270, &qword_100985268);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560);
  sub_100097060(&qword_10097F568, &qword_10097F560);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538);
}

uint64_t sub_100414498()
{
  v1 = sub_10002849C(&qword_10097F538);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985208);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_100985210);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985218);
  sub_100097060(&qword_100985220, &qword_100985218);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560);
  sub_100097060(&qword_10097F568, &qword_10097F560);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538);
}

uint64_t sub_100414B40()
{
  v1 = sub_10002849C(&qword_10097F538);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985230);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_100985238);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985240);
  sub_100097060(&qword_100985248, &qword_100985240);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560);
  sub_100097060(&qword_10097F568, &qword_10097F560);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538);
}

void sub_1004151E8(uint64_t a1, void (*a2)(char *), uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v33 = a5;
  v34 = a4;
  v32 = a3;
  v7 = v5;
  v31 = sub_10002849C(&qword_10097F530);
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v30 - v10;
  v12 = sub_10002849C(&unk_10097F490);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_10002849C(&qword_100977FC8);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  a2(v14);
  sub_10002B894(v14, &unk_10097F490);
  v17 = SnapshotUpdate.useReloadData.getter();
  v18 = qword_10097F2F8;
  if (v17)
  {
    swift_beginAccess();
    v19 = *&v7[v18];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    SnapshotUpdate.contentSnapshot.getter();
    dispatch thunk of ModelMappedDiffableDataSource.applySnapshotUsingReloadData(_:animatingDifferences:completion:)();
  }

  else
  {
    swift_beginAccess();
    v21 = *&v7[v18];
    if (!v21)
    {
      goto LABEL_7;
    }

    v20 = v21;
    SnapshotUpdate.contentSnapshot.getter();
    SnapshotUpdate.animated.getter();
    dispatch thunk of ModelMappedDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  (*(v9 + 8))(v11, v31);
LABEL_7:
  v22 = v32;
  sub_10002849C(v32);
  sub_100097060(v33, v22);
  dispatch thunk of VisibleShelfSupplementaryCollectionElementsObserver.reconfigureVisibleShelfSupplementaries<A>(in:asPartOf:)();
  v23 = [v7 collectionView];
  if (!v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 window];

  if (v25)
  {

    v26 = [v7 collectionView];
    if (!v26)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v27 = v26;
    dispatch thunk of CompoundScrollObserver.didScroll(in:)();
  }

  v28 = [v7 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  [v28 bounds];

  ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  if (SnapshotUpdate.isInitialFullPageSnapshot.getter())
  {
    ArtworkLoader.didFinishLoadingInitialViewport()();
  }
}

void sub_100415600(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v97, &unk_1009711D0);
  if (v98)
  {
    sub_100005744(0, &qword_100972EB0);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_100005744(0, &qword_1009729E0);
      *v17 = static OS_dispatch_queue.main.getter();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = _dispatchPreconditionTest(_:)();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_100975F50;
        v82 = xmmword_100975F60;
        v83 = xmmword_100975F70;
        v79 = xmmword_100975F30;
        v80 = xmmword_100975F40;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_100975F30;
        v92 = xmmword_100975F40;
        v94 = xmmword_100975F60;
        v95 = xmmword_100975F70;
        v84 = qword_100975F80;
        v90 = v78;
        v96 = qword_100975F80;
        v93 = xmmword_100975F50;
        sub_100031660(&v79, &v67, &unk_10097F520);
        xmmword_100975F50 = v87;
        xmmword_100975F60 = v88;
        xmmword_100975F70 = v89;
        qword_100975F80 = v90;
        xmmword_100975F30 = v85;
        xmmword_100975F40 = v86;
        sub_10002B894(&v91, &unk_10097F520);
        v29 = *&v65[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
        v30 = sub_10002849C(&unk_100974490);
        sub_10019DADC(&v73, &v67);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10002B894(v13, &unk_100972A00);
        }

        else
        {
          sub_1005F9AF4(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_100975F50;
        v70 = xmmword_100975F60;
        v71 = xmmword_100975F70;
        v72 = qword_100975F80;
        v67 = xmmword_100975F30;
        v68 = xmmword_100975F40;
        xmmword_100975F30 = v79;
        xmmword_100975F40 = v80;
        xmmword_100975F50 = v81;
        xmmword_100975F60 = v82;
        xmmword_100975F70 = v83;
        qword_100975F80 = v84;
        sub_10002B894(&v67, &unk_10097F520);
        sub_10019DB38(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10002B894(v97, &unk_1009711D0);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v57 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10002B894(v10, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_100005744(0, &qword_1009729E0);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_100975F50;
  v82 = xmmword_100975F60;
  v83 = xmmword_100975F70;
  v79 = xmmword_100975F30;
  v80 = xmmword_100975F40;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_100975F30;
  v92 = xmmword_100975F40;
  v94 = xmmword_100975F60;
  v95 = xmmword_100975F70;
  v84 = qword_100975F80;
  v90 = v78;
  v96 = qword_100975F80;
  v93 = xmmword_100975F50;
  sub_100031660(&v79, &v67, &unk_10097F520);
  xmmword_100975F50 = v87;
  xmmword_100975F60 = v88;
  xmmword_100975F70 = v89;
  qword_100975F80 = v90;
  xmmword_100975F30 = v85;
  xmmword_100975F40 = v86;
  sub_10002B894(&v91, &unk_10097F520);
  v52 = *&v65[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v53 = sub_10002849C(&unk_100974490);
  sub_10019DADC(&v73, &v67);
  v54 = v61;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10002B894(v54, &unk_100972A00);
  }

  else
  {
    sub_1005F9AF4(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_100975F50;
  v70 = xmmword_100975F60;
  v71 = xmmword_100975F70;
  v72 = qword_100975F80;
  v67 = xmmword_100975F30;
  v68 = xmmword_100975F40;
  xmmword_100975F30 = v79;
  xmmword_100975F40 = v80;
  xmmword_100975F50 = v81;
  xmmword_100975F60 = v82;
  xmmword_100975F70 = v83;
  qword_100975F80 = v84;
  sub_10002B894(&v67, &unk_10097F520);
  sub_10019DB38(&v73);

  (*(v51 + 8))(v63, v60);
}

uint64_t (*sub_100416024(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D82C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_1004160B4(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416144(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_1004161D4(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416264(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_1004162F4(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416384(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416414(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D590;
}

uint64_t (*sub_1004164A4(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416534(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

void (*sub_1004165F8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D848;
}

void (*sub_10041665C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D7A8;
}

void (*sub_1004166C0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D720;
}

void (*sub_100416724(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D5F4;
}

void (*sub_100416788(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D69C;
}

uint64_t (*sub_1004167EC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

uint64_t (*sub_100416850(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D7A4;
}

uint64_t (*sub_1004168B4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

uint64_t (*sub_100416918(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

uint64_t (*sub_10041697C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

void sub_1004169E0(int a1, id a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v7 = [a2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10002849C(a3);
    sub_100097060(a5, a3);
    ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    sub_10021D284();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_100416AAC(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D7F8;
}

void (*sub_100416B10(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D770;
}

void (*sub_100416B74(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D6EC;
}

void (*sub_100416BD8(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D5C0;
}

void (*sub_100416C3C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D668;
}

uint64_t sub_100416CA0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_100031660(a2, &v9, &unk_1009711D0);
  sub_100031660(&v8, &v6, &qword_10097C510);
  v4 = v6;
  sub_100031660(v7, v5, &unk_1009711D0);

  sub_100415600(v2, v5);

  sub_10002B894(&v8, &qword_10097C510);
  sub_10002B894(&v4, &qword_10097C510);
  return sub_10002B894(v7, &unk_1009711D0);
}

uint64_t sub_100416DB4(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  sub_10002849C(&qword_100971200);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  v8 = (v7 + v6);
  v9 = *(sub_10002849C(&unk_100984520) + 48);
  *v8 = 1;
  sub_100031660(a2, &v8[v9], &unk_1009796E0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1003978F8(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100065C3C;
  v11[3] = v10;
  sub_1000C5DDC(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_100416F70()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_100984B98;
  if ((*(v0 + qword_100984B98 + 16) & 1) == 0)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    v15 = v7;
    sub_100005744(0, &qword_1009729E0);
    v14 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10041D8B0;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C1FC8;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000782C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v14;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
  }
}

void sub_100417284(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 bounds];

  static ViewControllerContainment.add(_:to:frame:)();
  v9 = *&v1[v3];
  if (v9)
  {
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 setInsetsLayoutMarginsFromSafeArea:0];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
}

void sub_1004173C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1;
  if ([v4 isViewLoaded])
  {
  }

  else
  {
    v5.receiver = v4;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, "loadView");
    v3 = [v4 navigationItem];
    [v3 setTitle:0];
  }
}

void sub_10041747C(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  sub_10041B91C(0, 0, a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];

    sub_10000782C(&qword_1009851C0, type metadata accessor for ArcadeDiffablePageViewController);
    ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10041757C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidAppear:", a1 & 1, v9);
  v12 = &v2[qword_100984B58];
  v13 = *&v2[qword_100984B58];
  if (v13)
  {

    v13(v14);
    sub_10001F63C(v13);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  *v12 = 0;
  v12[1] = 0;
  sub_10001F63C(v15);
  if (ArcadeDiffablePagePresenter.didFetchPage.getter())
  {
    sub_100417904();
  }

  sub_100005744(0, &qword_1009729E0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_10041D644;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C2400;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000782C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  return (*(v8 + 8))(v11, v21);
}

void sub_100417904()
{
  v1 = v0;
  v2 = type metadata accessor for AppStoreEngagementEvent();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = [v9 isHidden];

      if ((v10 & 1) == 0)
      {
        v11 = *(*&v1[qword_100984B48] + 16);
        v12 = objc_allocWithZone(IAMCountableEvent);
        v13 = String._bridgeToObjectiveC()();
        v14 = [v12 initWithName:v13];

        [v11 receiveEvent:v14];
        sub_100292A18();
        type metadata accessor for AppStoreEngagementManager();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        (*(v3 + 104))(v6, enum case for AppStoreEngagementEvent.arcadeTabDidComeOnScreen(_:), v2);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        AppStoreEngagementManager.recordEngagement(event:resultHandler:)();

        (*(v3 + 8))(v6, v2);
      }
    }
  }
}

void sub_100417B78()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v18 = v1;
    v2 = [v0 traitCollection];
    v3 = UITraitCollection.isRegularPad.getter();

    v4 = [v18 navigationBar];
    v5 = v4;
    if (v3)
    {
      [v4 setUserInteractionEnabled:1];
      v6 = v18;
      v18 = v5;
    }

    else
    {
      [v4 _backgroundOpacity];
      v8 = v7;

      if (v8 >= 1.0)
      {
        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:1];
      }

      else
      {
        v9 = [v18 navigationItem];
        v10 = [v9 leftBarButtonItems];

        if (v10 && ((sub_100005744(0, &qword_100983870), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v11 >> 62) ? (v12 = _CocoaArrayWrapper.endIndex.getter()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v12))
        {
          v13 = 1;
        }

        else
        {
          v14 = [v18 navigationItem];
          v15 = [v14 rightBarButtonItems];

          if (v15)
          {
            sub_100005744(0, &qword_100983870);
            v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v16 >> 62)
            {
              v17 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v13 = v17 != 0;
          }

          else
          {
            v13 = 0;
          }
        }

        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:v13];
      }
    }
  }
}

void sub_100417E20(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10041757C(a3);
}

void sub_100417E74(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ([v1 isViewLoaded])
  {
    sub_10041B91C(1, 1, a1 & 1);
    v4 = type metadata accessor for Feature.iOS();
    v6[3] = v4;
    v6[4] = sub_10000782C(&qword_10097CC80, &type metadata accessor for Feature.iOS);
    v5 = sub_1000056E0(v6);
    (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v4);
    LOBYTE(v4) = isFeatureEnabled(_:)();
    sub_100007000(v6);
    if (v4)
    {
      sub_100417B78();
    }
  }
}

void sub_100417FA8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100417E74(a3);
}

void sub_100417FFC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v2 = *&v1[qword_1009D01C8];
  if (v2)
  {
    v3 = v2;
    sub_1004B0B04();
    [v3 setHeight:{v4, v5.receiver, v5.super_class}];

    v1 = v3;
  }
}

id sub_100418084()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UIView.LayoutRegion();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
  sub_10002B894(v5, &unk_100996820);
  UIView.directionalEdgeInsets(for:)();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100984B80];
  v19 = *&v1[qword_100984B80];
  v20 = v1[qword_100984B80 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_10000782C(&qword_1009851C0, type metadata accessor for ArcadeDiffablePageViewController);
      return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_100418374(void *a1)
{
  v1 = a1;
  sub_100418084();
}

void sub_1004183BC(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = &v3[qword_100984B90];
    if ((v3[qword_100984B90 + 16] & 1) != 0 || *v7 != a2 || v7[1] != a3)
    {
      *v7 = a2;
      v7[1] = a3;
      *(v7 + 16) = 0;
      sub_100416F70();
    }
  }
}

void sub_100418468(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1004183BC(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1004184E8()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_1009851E0);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10002849C(&qword_1009851E8);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10002849C(&qword_100977F80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_100414498();
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v5 + 8))(v7, v4);
  ArcadeDiffablePagePresenter.onOnPrepareUpsellHandler.getter();
  sub_10002849C(&qword_1009851F0);
  sub_100097060(&qword_1009851F8, &qword_1009851F0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v8 = v12;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v13 + 8))(v8, v14);
  ArcadeDiffablePagePresenter.onRecordTabVisitIfPossible.getter();
  sub_10002849C(&qword_100985200);
  sub_100097060(&unk_10098A2B0, &qword_100985200);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v9 = v15;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_100418920()
{
  v0 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v0 - 8);
  v43 = &v37 - v1;
  v2 = type metadata accessor for Shelf.ContentType();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v37 - v5;
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_10002849C(&qword_100975028);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_10002849C(&qword_10097F530);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  sub_10002849C(&qword_100977FC8);
  SnapshotUpdate.contentSnapshot.getter();
  ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v17 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  (*(v9 + 8))(v11, v8);
  if (v17 < 1)
  {
    goto LABEL_4;
  }

  SnapshotUpdate.contentSnapshot.getter();
  v18 = v43;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)();
  v16(v15, v12);
  v19 = sub_10002849C(&unk_1009731F0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10002B894(v18, &unk_10098FFB0);
LABEL_4:
    v21 = v44;
    *(v44 + qword_100984B78) = &_swiftEmptySetSingleton;

    *(v21 + qword_100984B70) = 0;
    return result;
  }

  swift_getKeyPath();
  v23 = v38;
  ReadOnlyLens.subscript.getter();

  (*(v20 + 8))(v18, v19);
  v25 = v40;
  v24 = v41;
  v26 = v42;
  (*(v41 + 32))(v40, v23, v42);
  v27 = v39;
  (*(v24 + 16))(v39, v25, v26);
  v28 = (*(v24 + 88))(v27, v26);
  if (v28 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v28 == enum case for Shelf.ContentType.upsellBreakout(_:) || v28 == enum case for Shelf.ContentType.heroCarousel(_:) || v28 == enum case for Shelf.ContentType.uber(_:))
  {
    sub_10002849C(&qword_10096FCE8);
    v31 = type metadata accessor for IndexPath();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1007B10D0;
    IndexPath.init(item:section:)();
    v35 = sub_100083BE8(v34);
    swift_setDeallocating();
    (*(v32 + 8))(v34 + v33, v31);
    swift_deallocClassInstance();
    (*(v24 + 8))(v25, v26);
    v36 = v44;
    *(v44 + qword_100984B78) = v35;

    *(v36 + qword_100984B70) = 1;
  }

  else
  {
    v29 = *(v24 + 8);
    v29(v25, v26);
    v30 = v44;
    *(v44 + qword_100984B78) = &_swiftEmptySetSingleton;

    *(v30 + qword_100984B70) = 0;
    return (v29)(v27, v26);
  }

  return result;
}

uint64_t (*sub_100418F5C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D56C;
}

uint64_t sub_100418FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BootstrapPhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    type metadata accessor for AppDelegate();
    if (swift_dynamicCastClass())
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = a1;
      v11[4] = a2;
      (*(v5 + 104))(v7, enum case for BootstrapPhase.onboarding(_:), v4);

      BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

      (*(v5 + 8))(v7, v4);

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSLogger();
  sub_1000056A8(v13, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();
}

uint64_t (*sub_100419320(void *a1))(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D52C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D550;
}

uint64_t sub_1004193B0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_10041D558, v5);
}

uint64_t (*sub_100419440(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D500;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100116A08;
}

uint64_t sub_1004194D0()
{
  sub_10002849C(&qword_1009717B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B5350;
  *(v1 + 32) = *(v0 + qword_100984BB0);
  *(v1 + 40) = &protocol witness table for ArcadeTitleEffectCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_1008C1F08;
  swift_unknownObjectWeakAssign();
  v3 = sub_10000782C(&qword_100977F38, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_10000782C(&qword_1009851D8, type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;

  *(v1 + 80) = sub_10073A854();
  *(v1 + 88) = v6;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

id sub_100419654(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10002849C(&qword_1009851B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_100729B04(a1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_10041987C();
  }

  else if (v7 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    ArcadeTitleEffectCollectionElementsObserver.prepareForReuse()();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_10000782C(&qword_1009851C0, type metadata accessor for ArcadeDiffablePageViewController);
    return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10041987C()
{
  v1 = v0;
  ArcadeDiffablePagePresenter.pageTitle.getter();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle:v3];

  v4 = GenericPage.presentationOptions.getter();
  sub_100419B64(v4);
  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    ArcadeDiffablePagePresenter.tabTitle.getter();
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    [v6 setTitle:v8];

    ArcadeDiffablePagePresenter.pageTitle.getter();
    if (v9)
    {

      v10 = [v1 navigationItem];
      ArcadeDiffablePagePresenter.pageTitle.getter();
      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      [v10 setTitle:v12];

      v16 = [v1 navigationItem];
      sub_10073D660();
    }

    else
    {
      v13 = [v1 navigationItem];
      ArcadeDiffablePagePresenter.tabTitle.getter();
      if (v14)
      {
        v15 = String._bridgeToObjectiveC()();
      }

      else
      {
        v15 = 0;
      }

      [v13 setTitle:v15];

      v16 = [v1 navigationItem];
      sub_10073D778();
    }

    v17 = [v1 navigationItem];
    v18 = [v17 standardAppearance];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v21 = v18;
    if (ArcadeDiffablePagePresenter.subscriptionLockup.getter())
    {

      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v21 _setOverrideUserInterfaceStyle:v19];

    v20 = [v1 navigationItem];
    [v20 setStandardAppearance:v21];

    sub_100419E04();
  }

  else
  {
    __break(1u);
  }
}

void sub_100419B64(char a1)
{
  v2 = v1;
  if (a1)
  {
    v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
    v4 = 3;
    goto LABEL_8;
  }

  if ((a1 & 2) != 0)
  {
    v5 = sub_10006230C();
    v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = v5 & 1;
    if (v5)
    {
      v4 = 3;
      goto LABEL_8;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  }

  v4 = 2;
LABEL_8:
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode:v4];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  *(v9 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_100062100();
  sub_10041CCEC();
  if (ArcadeDiffablePagePresenter.subscriptionLockup.getter())
  {

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver();
    v11 = swift_allocObject();
    v11[3] = v10;
    v11[4] = 0;
    v11[2] = sub_10041D480;
    *&v2[qword_1009D01D8] = v11;

    sub_10000782C(&qword_1009851C8, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    CompoundScrollObserver.addChild(_:)();
  }

  else
  {
    v12 = qword_1009D01D8;
    if (*&v2[qword_1009D01D8])
    {
      sub_10000782C(&qword_1009851C8, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    }

    CompoundScrollObserver.removeChild(_:)();

    *&v2[v12] = 0;
  }
}

void sub_100419E04()
{
  v1 = v0;
  v2 = ArcadeDiffablePagePresenter.subscriptionLockup.getter();
  if (!v2)
  {
    v13 = [v0 navigationItem];
    [v13 setTitleView:0];

    v14 = &v1[qword_1009D01C8];
    v15 = *&v1[qword_1009D01C8];
    *v14 = 0;
    *(v14 + 1) = 0;

    v16 = qword_100984B88;
    v17 = *&v1[qword_100984B88];
    *&v1[qword_100984B88] = 0;
    if (!v17)
    {
      return;
    }

    v34 = v17;
    [v17 removeFromSuperview];
    v18 = *&v1[v16];
    if (!v18)
    {
      goto LABEL_27;
    }

    v11 = v18;
    v19 = [v1 view];
    if (v19)
    {
      v33 = v19;
      [v19 addSubview:v11];
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = UITraitCollection.isSizeClassCompact.getter();

  if ((v5 & 1) == 0)
  {
    v7 = [objc_allocWithZone(type metadata accessor for ArcadeFloatingBannerView()) init];
    [v7 setHidden:1];
    sub_100283630(v3, *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph]);
    v21 = qword_100984B88;
    v22 = *&v1[qword_100984B88];
    *&v1[qword_100984B88] = v7;
    if (v22)
    {
      v23 = v7;
      v24 = v22;
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {

LABEL_25:
        sub_10041A3E0(0);
        [v7 setFrame:?];

        v31 = [v1 navigationItem];
        [v31 setTitleView:0];

        v32 = &v1[qword_1009D01C8];
        v34 = *&v1[qword_1009D01C8];
        *v32 = 0;
        *(v32 + 1) = 0;
LABEL_26:

LABEL_27:
        v20 = v34;
        goto LABEL_28;
      }

      [v24 removeFromSuperview];
      v27 = *&v1[v21];
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = v7;
      v27 = v7;
      if (!v7)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v28 = v27;
    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      [v29 addSubview:v28];

LABEL_24:
      v24 = v22;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = [objc_allocWithZone(type metadata accessor for ArcadePageTitleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100283630(v3, *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph]);
  swift_unknownObjectWeakAssign();
  v7 = v6;
  sub_10041A25C(v6, &off_1008C5360);

  v8 = qword_100984B88;
  v9 = *&v1[qword_100984B88];
  *&v1[qword_100984B88] = 0;
  if (v9)
  {
    v34 = v9;
    [v9 removeFromSuperview];
    v10 = *&v1[v8];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v33 = v12;
        [v12 addSubview:v11];

LABEL_11:

        v20 = v33;
LABEL_28:

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_26;
  }
}

void sub_10041A25C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v2 navigationItem];
    [v6 setTitleView:v5];

    v7 = &v2[qword_1009D01C8];
    v8 = *&v2[qword_1009D01C8];
    *v7 = a1;
    *(v7 + 1) = a2;
    v20 = v5;

    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      [v11 _titleOpacity];
      v13 = v12;

      v14 = *v7;
      if (*v7)
      {
        v15 = *&v14[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView];
        v16 = v14;
        [v15 setAlpha:v13];
      }
    }

    v17 = v20;
  }

  else
  {
    v18 = [v2 navigationItem];
    [v18 setTitleView:0];

    v19 = &v2[qword_1009D01C8];
    v17 = *&v2[qword_1009D01C8];
    *v19 = 0;
    *(v19 + 1) = a2;
  }
}

void sub_10041A3E0(char a1)
{
  v2 = *&v1[qword_100984B88];
  if (v2)
  {
    v4 = v2;
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v67.origin.x = v8;
      v67.origin.y = v10;
      v67.size.width = v12;
      v67.size.height = v14;
      CGRectGetWidth(v67);
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v68.origin.x = v18;
        v68.origin.y = v20;
        v68.size.width = v22;
        v68.size.height = v24;
        CGRectGetHeight(v68);
        v25 = &v1[qword_100984B98];
        if (v1[qword_100984B98 + 16])
        {
          v26 = *&v4[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView];
          [v4 layoutMargins];
          CGSize.subtracting(insets:)();
          [v26 sizeThatFits:?];
          [v4 layoutMargins];
          CGSize.adding(outsets:)();
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v28 = *v25;
          v30 = *(v25 + 1);
        }

        *v25 = v28;
        *(v25 + 1) = v30;
        v25[16] = 0;
        v31 = [v1 view];
        if (v31)
        {
          v32 = v31;
          [v31 safeAreaInsets];
          v34 = v33;

          if (v34 <= 28.0)
          {
            if ((a1 & 1) == 0)
            {
LABEL_12:
              v37 = [v1 view];
              if (!v37)
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v38 = v37;
              [v37 bounds];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v69.origin.x = v40;
              v69.origin.y = v42;
              v69.size.width = v44;
              v69.size.height = v46;
              CGRectGetMaxY(v69);
              goto LABEL_17;
            }
          }

          else
          {
            v35 = [v1 view];
            if (!v35)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v36 = v35;
            [v35 safeAreaInsets];

            if ((a1 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v47 = [v1 view];
          if (!v47)
          {
LABEL_25:
            __break(1u);
            return;
          }

          v48 = v47;
          [v47 bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v70.origin.x = v50;
          v70.origin.y = v52;
          v70.size.width = v54;
          v70.size.height = v56;
          CGRectGetMaxY(v70);
LABEL_17:
          v57 = [v1 view];
          if (v57)
          {
            v58 = v57;
            [v57 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v71.origin.x = v60;
            v71.origin.y = v62;
            v71.size.width = v64;
            v71.size.height = v66;
            CGRectGetMidX(v71);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_10041A73C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *&v3[qword_1009D01D8];
        if (v5)
        {

          [v2 _systemContentInset];
          v7 = v6;
          [v2 contentOffset];
          v9 = v8;
          [v2 contentInset];
          (*(v5 + 16))(v7 + v9 + v10 > *(v5 + 32));
        }

        else
        {
        }
      }
    }
  }
}

void sub_10041A864(char a1)
{
  v2 = *&v1[qword_100984B88];
  if (!v2)
  {
    return;
  }

  v56 = v2;
  sub_10041A3E0(a1 & 1);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = &v1[qword_100984BA8];
  if ((v1[qword_100984BA8 + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *v12))
  {
    goto LABEL_26;
  }

  v55 = v11;
  v56 = v56;
  [v56 frame];
  MinY = CGRectGetMinY(v64);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v8;
  v66.origin.y = v9;
  v66.size.width = v10;
  v66.size.height = v55;
  v54 = CGRectGetMinY(v66);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = MaxY <= MinY;
  [v25 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v67.origin.x = v29;
  v67.origin.y = v31;
  v67.size.width = v33;
  v67.size.height = v35;
  v36 = CGRectGetMaxY(v67) <= v54 || v27;
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v55;
  *(v12 + 32) = 0;
  v37 = qword_100984BA0;
  v38 = *&v1[qword_100984BA0];
  if (v38)
  {
    v39 = v38;
    if ([v39 isRunning])
    {
      [v39 stopAnimation:1];

      v39 = *&v1[v37];
      *&v1[v37] = 0;
    }
  }

  if (a1)
  {
    [v56 setHidden:0];
    if (v36)
    {
      v40 = 2;
LABEL_18:

      v41 = swift_allocObject();
      *(v41 + 2) = v1;
      v41[3] = v8;
      v41[4] = v9;
      v41[5] = v10;
      v41[6] = v55;
      v42 = objc_allocWithZone(UIViewPropertyAnimator);
      v61 = sub_10041D488;
      v62 = v41;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100007A08;
      v60 = &unk_1008C2018;
      v43 = _Block_copy(&aBlock);
      v44 = v1;

      v45 = [v42 initWithDuration:v40 curve:v43 animations:0.2];
      _Block_release(v43);
      v46 = *&v1[v37];
      *&v1[v37] = v45;

      v47 = *&v1[v37];
      if (v47 && (v48 = swift_allocObject(), *(v48 + 16) = a1 & 1, *(v48 + 24) = v56, v61 = sub_10041D4B4, v62 = v48, aBlock = _NSConcreteStackBlock, v58 = 1107296256, v59 = sub_10007FFE8, v60 = &unk_1008C2068, v49 = _Block_copy(&aBlock), v50 = v56, v51 = v47, , [v51 addCompletion:v49], _Block_release(v49), v51, (v52 = *&v1[v37]) != 0))
      {
        v53 = v52;
        [v53 startAnimation];
      }

      else
      {
      }

      return;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
  }

  else
  {
    if (v36)
    {
      v40 = 1;
      goto LABEL_18;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
    [v56 setHidden:1];
  }

LABEL_26:
}

void sub_10041AD48(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10041A864(a1 & 1);
  }
}

void sub_10041ADA4(void *a1)
{
  v2 = a1;
  sub_10041B91C(0, 0, 1);
  v1 = [v2 collectionView];
  [v1 reloadData];

  sub_100419E04();
}

void sub_10041AE30()
{
  if (*(*&v0[qword_100984B78] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10041AED0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 window];

      if (v9)
      {
        if (([v9 isHidden] & 1) == 0)
        {
          a2();

          v6 = v9;
          goto LABEL_7;
        }
      }
    }

    v10 = &v6[qword_100984B58];
    v11 = *&v6[qword_100984B58];
    *v10 = a2;
    v10[1] = a3;
    sub_10001F63C(v11);

LABEL_7:
  }
}

void sub_10041AFC0(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
      v7 = Strong;

      v8 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10002B894(v4, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

uint64_t sub_10041B17C(uint64_t a1)
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
  sub_100031660(v15, v6, &qword_100982460);
  sub_100031660(v18, &v6[v20], &qword_100982460);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100031660(v6, v12, &qword_100982460);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_10000782C(&qword_100975040, &type metadata accessor for URL);
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

uint64_t sub_10041B638()
{

  sub_10001F63C(*(v0 + qword_100984B58));
}

uint64_t sub_10041B6FC(uint64_t a1)
{

  sub_10001F63C(*(a1 + qword_100984B58));
}

uint64_t type metadata accessor for ArcadeDiffablePageViewController()
{
  result = qword_100984BE0;
  if (!qword_100984BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041B91C(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = a1;
  v11 = a2 & 1;
  *(v9 + 25) = a2;

  if ((a3 & 1) != 0 && (v12 = [v4 transitionCoordinator]) != 0)
  {
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_10041D4E0;
    *(v14 + 24) = v9;
    v24 = sub_100116A08;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1006D1458;
    v23 = &unk_1008C2108;
    v15 = _Block_copy(&v20);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v11;
    *(v17 + 25) = v10;
    v24 = sub_10041D4F0;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1006D1458;
    v23 = &unk_1008C2158;
    v18 = _Block_copy(&v20);

    [v13 animateAlongsideTransition:v15 completion:v18];

    _Block_release(v18);
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10041BF34(v8, v10, a2 & 1);
  }
}

void sub_10041BBC4(double a1)
{
  v2 = type metadata accessor for Feature.iOS();
  v24[3] = v2;
  v24[4] = sub_10000782C(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v3 = sub_1000056E0(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v24);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5 && (v6 = v5, v7 = [v5 navigationController], v6, v7))
  {
    v8 = [v7 viewControllers];

    sub_100005744(0, &qword_1009711C0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v9 + 8 * v12 + 32);
            goto LABEL_11;
          }

          __break(1u);
          return;
        }

        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
        v14 = v13;

        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_100005744(0, &qword_1009711C0);
        v15 = static NSObject.== infix(_:_:)();

        if ((v15 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (v14)
  {
    Strong = v14;
    goto LABEL_27;
  }

LABEL_17:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    if (*&v16[qword_1009D01C8])
    {

      goto LABEL_21;
    }

    v17 = v16;
    v18 = [v16 traitCollection];
    v19 = UITraitCollection.isRegularPad.getter();

    if (v19)
    {
LABEL_21:
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v20 + qword_1009D01C8);
        if (v22)
        {
          [*(v22 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:a1];
        }

        sub_10070BF90(a1 == 1.0);
      }
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    return;
  }

  Strong = v23;
  sub_100417B78();
LABEL_27:
}

void sub_10041BF34(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10006230C() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_1009D01C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_10070BF90(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_1009D01D0];
        if (v13)
        {
          v14 = *&v6[qword_1009D01C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = UITraitCollection.isRegularPad.getter(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_1009D01C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_10041C194(void *a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &UITransitionContextFromViewControllerKey;
    if ((a3 & 1) == 0)
    {
      v9 = &UITransitionContextToViewControllerKey;
    }

    v10 = *v9;
    if ([a1 isCancelled])
    {
      v11 = [a1 viewControllerForKey:v10];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_1009711C0);
        v13 = v8;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          swift_unknownObjectWeakInit();
          sub_10070BD28(&v15, (a4 & 1) == 0, (a3 & 1) == 0);
          swift_unknownObjectWeakDestroy();

          return;
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

unint64_t sub_10041C2F4(uint64_t a1)
{
  type metadata accessor for EditorialPageKey();
  sub_10000782C(&qword_100983C58, &type metadata accessor for EditorialPageKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10041C38C(a1, v2);
}

unint64_t sub_10041C38C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for EditorialPageKey();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_10000782C(&qword_100983C60, &type metadata accessor for EditorialPageKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10041C550(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009851A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009851B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_1009851A8);
      result = sub_10041C2F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EditorialPageKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for URL();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_10041C770(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v5 - 8);
  v31 = type metadata accessor for StoreTab.Identifier();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StoreTab();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *(v2 + qword_100984B50) = 1;
  v14 = (v2 + qword_100984B58);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + qword_100984B60) = 2;
  v15 = (v2 + qword_1009D01C8);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + qword_1009D01D0) = 0;
  *(v2 + qword_100984B70) = 0;
  *(v2 + qword_100984B78) = &_swiftEmptySetSingleton;
  v16 = v2 + qword_100984B80;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v2 + qword_100984B88) = 0;
  *(v2 + qword_1009D01D8) = 0;
  v17 = v2 + qword_100984B90;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_100984B98;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v2 + qword_100984BA0) = 0;
  v19 = v2 + qword_100984BA8;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  type metadata accessor for InAppMessagesManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v2 + qword_100984B48) = v35;
  type metadata accessor for ArcadeTitleEffectCollectionElementsObserver();
  swift_allocObject();

  *(v2 + qword_100984BB0) = ArcadeTitleEffectCollectionElementsObserver.init(presenter:)();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.arcade(_:), v31);

  DiffablePagePresenter.pageUrl.getter();

  sub_10041C550(&_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v20 = v32;
  (*(v34 + 16))(v10, v13, v32);
  v21 = objc_allocWithZone(type metadata accessor for ArcadeHeaderButtonContainer());

  *(v2 + qword_100984B68) = sub_1005FB7C4(v10, a2);

  v22 = sub_1003BA8C0(a1, a2);
  type metadata accessor for FloatingUnifiedMessageCoordinator();
  v23 = v22;
  inject<A, B>(_:from:)();
  v24 = v35;
  v25 = *(*&v23[qword_100984B68] + OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton);
  FloatingUnifiedMessageCoordinator.register(accountButton:with:for:)();

  sub_10002849C(&qword_10097B110);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007B10D0;
  v27 = type metadata accessor for UITraitHorizontalSizeClass();
  *(v26 + 32) = v27;
  *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B1E00;
  *(v28 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v28 + 48) = type metadata accessor for UITraitLayoutDirection();
  *(v28 + 56) = &protocol witness table for UITraitLayoutDirection;
  *(v28 + 64) = v27;
  *(v28 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v13, v20);
  return v23;
}

void sub_10041CCEC()
{
  v1 = v0;
  v2 = qword_1009D01D0;
  if (!*&v0[qword_1009D01D0])
  {
    CompoundScrollObserver.removeChild(_:)();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigationBarVisibilityScrollObserver();
    v4 = swift_allocObject();
    *(v4 + 32) = xmmword_1007CC620;
    *(v4 + 16) = sub_10041D4D8;
    *(v4 + 24) = v3;
    *&v0[v2] = v4;

    sub_10000782C(&qword_1009851D0, type metadata accessor for NavigationBarVisibilityScrollObserver);
    CompoundScrollObserver.addChild(_:)();
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = *(v7 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v8 & 1) == 0)
  {
    v9 = [v1 navigationController];
    if (v9)
    {

      if (sub_10006230C())
      {
        swift_unknownObjectWeakInit();
        sub_10070BD28(v41, 0, 0);
        swift_unknownObjectWeakDestroy();
        goto LABEL_16;
      }
    }
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v10 safeAreaLayoutGuide];

  [v12 layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  MinY = CGRectGetMinY(v42);
  if (*&v1[v2])
  {

    v22 = [v1 collectionView];
    if (!v22)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v23 = v22;
    sub_100072908(v22, MinY);
  }

  v24 = [v1 collectionView];
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  [v24 _pocketInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [v1 collectionView];
  if (!v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v33 = v32;
  [v32 _setPocketInsets:{MinY, v27, v29, v31}];

LABEL_16:
  v34 = [v1 viewIfLoaded];
  if (!v34 || (v35 = v34, v36 = [v34 window], v35, !v36) || (v37 = objc_msgSend(v36, "isHidden"), v36, v37))
  {
    v38 = [v1 presentedViewController];
    if (v38)
    {
    }

    else if ([v1 isViewLoaded])
    {
      swift_unknownObjectWeakInit();
      sub_10070BD28(v41, 1, 1);
      swift_unknownObjectWeakDestroy();
      v39 = type metadata accessor for Feature.iOS();
      v41[3] = v39;
      v41[4] = sub_10000782C(&qword_10097CC80, &type metadata accessor for Feature.iOS);
      v40 = sub_1000056E0(v41);
      (*(*(v39 - 8) + 104))(v40, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v39);
      LOBYTE(v39) = isFeatureEnabled(_:)();
      sub_100007000(v41);
      if (v39)
      {
        sub_100417B78();
      }
    }
  }

  sub_100417B78();
}

void sub_10041D164(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_100984B98;
  if ((*(a1 + qword_100984B98 + 16) & 1) == 0)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v16 = v8;
    sub_100005744(0, &qword_1009729E0);
    v15 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10041D478;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C1FA0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000782C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v15;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v16);
  }
}

id sub_10041D488()
{
  result = *(*(v0 + 16) + qword_100984B88);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

id sub_10041D4B4(id result)
{
  if ((*(v1 + 16) & 1) == 0 && !result)
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

CGFloat sub_10041D8D8()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_1009D01E0 = v2;
  return v2.m21;
}

uint64_t type metadata accessor for RevealingImageMirrorView()
{
  result = qword_1009852E8;
  if (!qword_1009852E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10041DA04(uint64_t a1)
{
  if (!a1)
  {
    sub_1002F62D8();
    return sub_1002F62D8();
  }

  SearchResultsMessage.primaryText.getter();
  v1 = LinkableText.linkedSubstrings.getter();
  v2 = sub_1000D6F24(v1, sub_1000C17B0);

  v3 = LinkableText.styledText.getter();
  sub_1002F6004(v3, 0, v2);

  if (!SearchResultsMessage.secondaryText.getter())
  {
    return sub_1002F62D8();
  }

  v4 = LinkableText.linkedSubstrings.getter();
  v5 = sub_1000D6F24(v4, sub_10041DBBC);

  v6 = LinkableText.styledText.getter();
  sub_1002F6004(v6, 0, v5);
}

uint64_t sub_10041DBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    [a1 pageMarginInsets];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != 1)
    {
      v10 = [a1 traitCollection];
      [v10 userInterfaceIdiom];
    }
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for StaticDimension();
  v12 = sub_1000056A8(v11, qword_1009D2460);
  v82[3] = v11;
  v82[4] = &protocol witness table for StaticDimension;
  v13 = sub_1000056E0(v82);
  v14 = *(v11 - 8);
  v43 = *(v14 + 16);
  v44 = v12;
  v42 = v14 + 16;
  v43(v13, v12, v11);
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v54 = sub_1000056A8(v15, qword_1009D1A00);
  v16 = *(v15 - 8);
  v51 = *(v16 + 16);
  v47 = v16 + 16;
  v51(v7, v54, v15);
  v50 = enum case for FontSource.useCase(_:);
  v46 = v4[13];
  v46(v7);
  v81[3] = v11;
  v81[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v81);
  v79 = v3;
  v80 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v78);
  v18 = v4[2];
  v18(v17, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v19 = v4[1];
  v19(v7, v3);
  v41 = v15;
  v51(v7, v54, v15);
  v52 = v4 + 13;
  v20 = v46;
  (v46)(v7, v50, v3);
  v21 = v20;
  v40 = v11;
  v79 = v11;
  v80 = &protocol witness table for StaticDimension;
  sub_1000056E0(v78);
  v76 = v3;
  v77 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v75);
  v53 = v18;
  v54 = (v4 + 2);
  v18(v22, v7, v3);
  v23 = v19;
  StaticDimension.init(_:scaledLike:)();
  v49 = v4 + 1;
  v19(v7, v3);
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  v24 = v41;
  v25 = sub_1000056A8(v41, qword_1009D1A18);
  v51(v7, v25, v24);
  (v21)(v7, v50, v3);
  v26 = v40;
  v76 = v40;
  v77 = &protocol witness table for StaticDimension;
  sub_1000056E0(v75);
  v73 = v3;
  v74 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v72);
  v53(v27, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v23(v7, v3);
  v48 = v23;
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v24, qword_1009D1A30);
  v51(v7, v28, v24);
  (v21)(v7, v50, v3);
  v73 = v26;
  v74 = &protocol witness table for StaticDimension;
  sub_1000056E0(v72);
  v70 = v3;
  v71 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v69);
  v53(v29, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v48(v7, v3);
  v70 = v26;
  v71 = &protocol witness table for StaticDimension;
  v30 = sub_1000056E0(v69);
  v32 = v43;
  v31 = v44;
  v43(v30, v44, v26);
  v68[3] = v26;
  v68[4] = &protocol witness table for StaticDimension;
  v33 = sub_1000056E0(v68);
  v32(v33, v31, v26);
  *v7 = UIFontTextStyleFootnote;
  LODWORD(v51) = enum case for FontSource.textStyle(_:);
  v21(v7);
  v67[3] = v26;
  v67[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v67);
  v65 = v3;
  v66 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v64);
  v35 = v53;
  v53(v34, v7, v3);
  v36 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v37 = v48;
  v48(v7, v3);
  *v7 = v36;
  (v46)(v7, v51, v3);
  v65 = v26;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v3;
  v63 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v61);
  v35(v38, v7, v3);
  StaticDimension.init(_:scaledLike:)();
  v37(v7, v3);
  v62 = &type metadata for Double;
  v63 = &protocol witness table for Double;
  v60 = &protocol witness table for Double;
  v61[0] = 0x4077700000000000;
  v59 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v58 = 0x4034000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4077C00000000000;
  return GameCenterReengagementLayout.Metrics.init(layoutMargins:shelfTopSpace:badgeGlyphSpace:badgeTopSpace:titleTopSpace:subtitleTopSpace:heroContentTopSpace:separatorTopSpace:footerTopSpace:footerBottomSpace:maxColumnWidth:columnSpace:maxHeight:)();
}

char *sub_10041E3B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for UUID();
  v115 = *(v11 - 8);
  v116 = v11;
  __chkstk_darwin(v11);
  v114 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100983508);
  __chkstk_darwin(v13 - 8);
  v15 = &v109 - v14;
  v16 = type metadata accessor for AchievementCardLayout.Metrics();
  __chkstk_darwin(v16 - 8);
  v17 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  *&v4[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_pageTraits] = 0;
  v19 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge;
  *&v4[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent;
  v24 = type metadata accessor for AchievementCard();
  static AchievementCard.defaultMetrics.getter();
  v25 = enum case for AchievementsTheme.vibrant(_:);
  v26 = type metadata accessor for AchievementsTheme();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[v23] = AchievementCard.init(frame:metrics:theme:)();
  v29 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  *&v5[v31] = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v32 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect;
  *&v5[v32] = [objc_allocWithZone(UIVisualEffectView) init];
  v33 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage;
  type metadata accessor for ArtworkView();
  *&v5[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v35 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  v113 = sub_100005744(0, &qword_10097FB70);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v5[v34] = v36;
  v119.receiver = v5;
  v119.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v119, "initWithFrame:", a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 setOverrideUserInterfaceStyle:2];

  v39 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v40 = *&v37[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  [v42 setPreferredSymbolConfiguration:v43];

  v44 = *&v37[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTintColor:v47];

  v48 = [*&v37[v39] layer];
  v49 = kCAFilterPlusL;
  [v48 setCompositingFilter:kCAFilterPlusL];

  v50 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge;
  v51 = *&v37[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge];
  v52 = [v45 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [*&v37[v50] layer];
  v111 = v49;
  [v53 setCompositingFilter:v49];

  [*&v37[v50] setAdjustsFontForContentSizeCategory:1];
  v112 = v50;
  v54 = qword_10096E380;
  v55 = *&v37[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for FontUseCase();
  sub_1000056A8(v56, qword_1009D1A00);
  v57 = v37;
  v58 = [v57 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v58).super.isa;

  v60 = objc_opt_self();
  v61 = [v60 fontWithDescriptor:isa size:0.0];

  [v55 setFont:v61];
  v62 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title;
  v63 = qword_10096E388;
  v64 = *&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title];
  if (v63 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v56, qword_1009D1A18);
  v65 = [v57 traitCollection];
  v66 = FontUseCase.makeFontDescriptor(compatibleWith:)(v65).super.isa;

  v67 = [v60 fontWithDescriptor:v66 size:0.0];
  [v64 setFont:v67];

  v68 = *&v57[v62];
  v69 = [v45 labelColor];
  [v68 setTextColor:v69];

  [*&v57[v62] setAdjustsFontForContentSizeCategory:1];
  v110 = v62;
  v70 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle;
  v71 = qword_10096E390;
  v72 = *&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle];
  if (v71 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v56, qword_1009D1A30);
  v73 = [v57 traitCollection];

  v74 = FontUseCase.makeFontDescriptor(compatibleWith:)(v73).super.isa;
  v75 = [v60 fontWithDescriptor:v74 size:0.0];

  [v72 setFont:v75];
  [*&v57[v70] setNumberOfLines:2];
  [*&v57[v70] setAdjustsFontForContentSizeCategory:1];
  v76 = *&v57[v70];
  v77 = [v45 secondaryLabelColor];
  [v76 setTextColor:v77];

  v78 = [*&v57[v70] layer];
  v79 = v111;
  [v78 setCompositingFilter:v111];

  v80 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator;
  v81 = *&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator];
  v82 = objc_allocWithZone(UIColor);
  v83 = v81;
  v84 = [v82 initWithWhite:1.0 alpha:0.12];
  [v83 setBackgroundColor:v84];

  v85 = [*&v57[v80] layer];
  [v85 setCompositingFilter:v79];

  v86 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage;
  [*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage] setContentMode:2];
  [*&v57[v86] setClipsToBounds:1];
  v87 = [v57 contentView];
  [v87 addSubview:*&v57[v86]];

  v88 = [v57 contentView];
  v89 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect;
  [v88 addSubview:*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect]];

  v90 = [v57 contentView];
  [v90 addSubview:*&v37[v112]];

  v91 = [v57 contentView];
  [v91 addSubview:*&v57[v110]];

  v92 = [v57 contentView];
  [v92 addSubview:*&v57[v70]];

  v93 = [v57 contentView];
  v94 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent;
  [v93 addSubview:*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent]];

  v95 = [v57 contentView];
  [v95 addSubview:*&v57[v80]];

  v96 = [v57 contentView];
  [v96 addSubview:*&v57[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup]];

  v97 = *&v57[v89];

  v98 = Array._bridgeToObjectiveC()().super.isa;

  [v97 setBackgroundEffects:v98];

  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v117 = 0xD000000000000019;
  v118 = 0x80000001008129B0;
  v99 = v114;
  UUID.init()();
  v100 = UUID.uuidString.getter();
  v102 = v101;
  (*(v115 + 8))(v99, v116);
  v103._countAndFlagsBits = v100;
  v103._object = v102;
  String.append(_:)(v103);

  v104 = *&v57[v89];
  v105 = String._bridgeToObjectiveC()();
  [v104 _setGroupName:v105];

  v106 = *&v57[v94];
  AchievementCard.backgroundEffectsGroup.setter();

  v107 = *&v57[v94];
  AchievementCard.alwaysShowShadow.setter();

  return v57;
}

uint64_t sub_10041F0EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GameCenterReengagementLayout();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v41 - v13;
  v74.receiver = v1;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v12);
  v15 = swift_unknownObjectRetain();
  sub_10041DBC0(v15, v14);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v18 = [v17 image];
  if (v18)
  {

    v19 = v17;
    [*&v1[v16] sizeToFit];
    v17 = [v1 contentView];
    [v17 insertSubview:*&v1[v16] belowSubview:*&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge]];
  }

  else
  {
    [v17 removeFromSuperview];
    v19 = 0;
  }

  (*(v8 + 16))(v10, v14, v7);
  v48 = v7;
  v45 = v14;
  v46 = v8;
  v41 = v10;
  if (v19)
  {
    v20 = sub_100005744(0, &qword_100973120);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
  }

  v69 = v19;
  v72 = v20;
  v73 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge];
  v67 = sub_100005744(0, &qword_100986BF0);
  v68 = &protocol witness table for UILabel;
  v66 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title];
  v64 = v67;
  v65 = &protocol witness table for UILabel;
  v62 = &protocol witness table for UILabel;
  v63 = v23;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle];
  v61 = v67;
  v60 = v24;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent];
  v58 = type metadata accessor for AchievementCard();
  v59 = &protocol witness table for UIView;
  v57 = v25;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator];
  v55 = type metadata accessor for SeparatorView();
  v56 = &protocol witness table for UIView;
  v54 = v26;
  v27 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup];
  v52 = type metadata accessor for SmallLockupView();
  v53 = &protocol witness table for UIView;
  v51 = v27;
  v28 = v19;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v47;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  v36 = [v1 contentView];
  [v36 bounds];

  v37 = v42;
  GameCenterReengagementLayout.placeChildren(relativeTo:in:)();
  (*(v43 + 8))(v37, v44);
  [v1 frame];
  CGRectGetWidth(v75);
  [v1 frame];
  CGRectGetHeight(v76);
  ArtworkView.frame.setter();
  v38 = *&v1[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect];
  [v1 frame];
  Width = CGRectGetWidth(v77);
  [v1 frame];
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v78)}];

  (*(v49 + 8))(v35, v50);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_10041F6B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v15, "focusItemsInRect:", a1, a2, a3, a4);
  sub_10002849C(&qword_100985340);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v11;
  v12 = *&v5[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *&v5[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v16;
}

uint64_t type metadata accessor for GameCenterReengagementCollectionViewCell()
{
  result = qword_100985328;
  if (!qword_100985328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041FA24()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10041FAEC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100983508);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for AchievementCardLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_pageTraits) = 0;
  v8 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge;
  *(v1 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent;
  v13 = type metadata accessor for AchievementCard();
  static AchievementCard.defaultMetrics.getter();
  v14 = enum case for AchievementsTheme.vibrant(_:);
  v15 = type metadata accessor for AchievementsTheme();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = objc_allocWithZone(v13);
  *(v1 + v12) = AchievementCard.init(frame:metrics:theme:)();
  v18 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  *(v1 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v21 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_visualEffect;
  *(v1 + v21) = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage;
  type metadata accessor for ArtworkView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v24 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_100005744(0, &qword_10097FB70);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + v23) = v25;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_10041FEA4(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009731F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v15 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v11 = sub_1004200DC(a1, v14);
    sub_100394594(v11);
  }

  else
  {
    v12 = sub_1001190B0(a1);
    sub_100394594(v12);
    (*(v4 + 8))(v6, v3);
  }

  return v15;
}

unint64_t sub_1004200DC(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v3 = type metadata accessor for ComponentSeparator.Position();
  v131 = *(v3 - 8);
  v132 = v3;
  __chkstk_darwin(v3);
  v130 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for PageGrid();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Shelf.ContentType();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v112 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v122);
  v124 = &v111 - v7;
  v8 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v8 - 8);
  v115 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = &v111 - v11;
  __chkstk_darwin(v12);
  v137 = &v111 - v13;
  v14 = type metadata accessor for Uber.Style();
  v135 = *(v14 - 8);
  __chkstk_darwin(v14);
  v111 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10002849C(&qword_1009704D8);
  __chkstk_darwin(v118);
  v17 = &v111 - v16;
  v18 = sub_10002849C(&qword_1009704E0);
  __chkstk_darwin(v18 - 8);
  v114 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v111 - v21;
  __chkstk_darwin(v23);
  v134 = &v111 - v24;
  v25 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v25);
  v121 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  v30 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v30 - 8);
  v120 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v111 - v33;
  v143 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v138 = a1;
  ItemLayoutContext.subscript.getter();

  v119 = v25;
  v35 = *(v25 + 48);
  sub_1000476A0(v29, v34, &unk_10098FFB0);
  v36 = sub_10002849C(&unk_1009731F0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v117 = v37 + 48;
  v116 = v38;
  v39 = v38(v34, 1, v36);
  v113 = v37;
  if (v39 == 1)
  {
    sub_10002B894(&v29[v35], &unk_10098FFB0);
    sub_10002B894(v34, &unk_10098FFB0);
    v140 = 0u;
    v141 = 0u;
    v142 = 0;
    v40 = v134;
LABEL_10:
    sub_10002B894(&v140, &unk_10097DBE0);
    goto LABEL_11;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v41 = v139;
  (*(v37 + 8))(v34, v36);
  if (*(v41 + 16))
  {
    sub_10002C0AC(v41 + 32, &v140);
  }

  else
  {

    v142 = 0;
    v140 = 0u;
    v141 = 0u;
  }

  v40 = v134;
  sub_10002B894(&v29[v35], &unk_10098FFB0);
  if (!*(&v141 + 1))
  {
    goto LABEL_10;
  }

  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductTopLockup();
  if (swift_dynamicCast())
  {
    v42 = ProductTopLockup.uber.getter();

    if (v42)
    {
      v43 = v36;

      Uber.style.getter();
      v126 = v42;

      v44 = 0;
      goto LABEL_12;
    }
  }

LABEL_11:
  v43 = v36;
  v126 = 0;
  v44 = 1;
LABEL_12:
  v45 = v135;
  v46 = *(v135 + 56);
  v46(v40, v44, 1, v14);
  (*(v45 + 104))(v22, enum case for Uber.Style.inline(_:), v14);
  v46(v22, 0, 1, v14);
  v47 = *(v118 + 48);
  sub_100031660(v40, v17, &qword_1009704E0);
  sub_100031660(v22, &v17[v47], &qword_1009704E0);
  v48 = v40;
  v49 = *(v45 + 48);
  if (v49(v17, 1, v14) == 1)
  {
    sub_10002B894(v22, &qword_1009704E0);
    sub_10002B894(v48, &qword_1009704E0);
    v50 = v49(&v17[v47], 1, v14);
    v51 = v123;
    v52 = v120;
    v53 = v43;
    if (v50 == 1)
    {
      sub_10002B894(v17, &qword_1009704E0);
      LODWORD(v118) = 1;
LABEL_18:
      v55 = v124;
      v57 = v136;
      v56 = v137;
      goto LABEL_20;
    }

LABEL_17:
    sub_10002B894(v17, &qword_1009704D8);
    LODWORD(v118) = 0;
    goto LABEL_18;
  }

  v54 = v114;
  sub_100031660(v17, v114, &qword_1009704E0);
  v53 = v43;
  if (v49(&v17[v47], 1, v14) == 1)
  {
    sub_10002B894(v22, &qword_1009704E0);
    sub_10002B894(v134, &qword_1009704E0);
    (*(v135 + 8))(v54, v14);
    v51 = v123;
    v52 = v120;
    goto LABEL_17;
  }

  v58 = v135;
  v59 = v111;
  (*(v135 + 32))(v111, &v17[v47], v14);
  sub_100422710(&qword_1009704E8, &type metadata accessor for Uber.Style);
  LODWORD(v118) = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v58 + 8);
  v60(v59, v14);
  sub_10002B894(v22, &qword_1009704E0);
  sub_10002B894(v134, &qword_1009704E0);
  v60(v54, v14);
  sub_10002B894(v17, &qword_1009704E0);
  v56 = v137;
  v55 = v124;
  v51 = v123;
  v57 = v136;
  v52 = v120;
LABEL_20:
  swift_getKeyPath();
  v61 = v121;
  ItemLayoutContext.subscript.getter();

  sub_1000476A0(v61 + *(v119 + 48), v52, &unk_10098FFB0);
  if (v116(v52, 1, v53) == 1)
  {
    sub_10002B894(v61, &unk_10098FFB0);
    sub_10002B894(v52, &unk_10098FFB0);
    v62 = *(v51 + 56);
    v63 = v125;
    v62(v56, 1, 1, v125);
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v113 + 8))(v52, v53);
    v62 = *(v51 + 56);
    v63 = v125;
    v62(v56, 0, 1, v125);
    sub_10002B894(v61, &unk_10098FFB0);
  }

  (*(v51 + 104))(v57, enum case for Shelf.ContentType.productMediaItem(_:), v63);
  v62(v57, 0, 1, v63);
  v64 = *(v122 + 48);
  sub_100031660(v56, v55, &unk_100992460);
  sub_100031660(v57, v55 + v64, &unk_100992460);
  v65 = v57;
  v66 = *(v51 + 48);
  if (v66(v55, 1, v63) == 1)
  {
    sub_10002B894(v65, &unk_100992460);
    sub_10002B894(v56, &unk_100992460);
    v67 = v66(v55 + v64, 1, v63);
    v68 = v138;
    if (v67 == 1)
    {
      sub_10002B894(v55, &unk_100992460);
      v69 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v70 = v115;
  sub_100031660(v55, v115, &unk_100992460);
  v71 = v66(v55 + v64, 1, v63);
  v68 = v138;
  if (v71 == 1)
  {
    sub_10002B894(v136, &unk_100992460);
    sub_10002B894(v137, &unk_100992460);
    (*(v51 + 8))(v70, v63);
LABEL_28:
    sub_10002B894(v55, &qword_100975F10);
    v69 = 0;
    goto LABEL_30;
  }

  v72 = v112;
  (*(v51 + 32))(v112, v55 + v64, v63);
  sub_100422710(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v51 + 8);
  v73(v72, v63);
  sub_10002B894(v136, &unk_100992460);
  sub_10002B894(v137, &unk_100992460);
  v73(v70, v63);
  sub_10002B894(v55, &unk_100992460);
LABEL_30:
  v74 = objc_opt_self();
  v75 = [v74 fractionalWidthDimension:1.0];
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v76 = v140;
  static ComponentSeparator.thickness(compatibleWith:)();
  v78 = v77;

  v79 = [v74 absoluteDimension:v78];
  v80 = [objc_opt_self() sizeWithWidthDimension:v75 heightDimension:v79];

  if ((v118 & 1) == 0)
  {
    LODWORD(v137) = v69;
    swift_getKeyPath();
    v81 = v127;
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v83 = v82;
    (*(v128 + 8))(v81, v129);
    v84 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v83 * -0.5}];
    type metadata accessor for SeparatorSupplementaryView();
    v86 = v131;
    v85 = v132;
    v87 = v130;
    (*(v131 + 104))(v130, enum case for ComponentSeparator.Position.top(_:), v132);
    *&v140 = 0;
    *(&v140 + 1) = 0xE000000000000000;
    v88 = v80;
    _print_unlocked<A, B>(_:_:)();
    v89._countAndFlagsBits = 95;
    v89._object = 0xE100000000000000;
    String.append(_:)(v89);
    v90._countAndFlagsBits = static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
    String.append(_:)(v90);

    (*(v86 + 8))(v87, v85);
    v91 = v84;
    v92 = String._bridgeToObjectiveC()();

    v93 = [objc_opt_self() supplementaryItemWithLayoutSize:v88 elementKind:v92 containerAnchor:v91];

    v94 = v93;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v68 = v138;
    LOBYTE(v69) = v137;
  }

  if ((v69 & 1) == 0)
  {
    swift_getKeyPath();
    v95 = v127;
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v97 = v96;
    (*(v128 + 8))(v95, v129);
    v98 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v97 * 0.5}];
    type metadata accessor for SeparatorSupplementaryView();
    v100 = v130;
    v99 = v131;
    v101 = v132;
    (*(v131 + 104))(v130, enum case for ComponentSeparator.Position.bottom(_:), v132);
    *&v140 = 0;
    *(&v140 + 1) = 0xE000000000000000;
    v102 = v80;
    _print_unlocked<A, B>(_:_:)();
    v103._countAndFlagsBits = 95;
    v103._object = 0xE100000000000000;
    String.append(_:)(v103);
    v104._countAndFlagsBits = static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
    String.append(_:)(v104);

    (*(v99 + 8))(v100, v101);
    v105 = v98;
    v106 = String._bridgeToObjectiveC()();

    v107 = [objc_opt_self() supplementaryItemWithLayoutSize:v102 elementKind:v106 containerAnchor:v105];

    v108 = v107;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v109 = sub_1001190B0(v68);
  sub_100394594(v109);

  return v143;
}

void sub_1004214D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v36 = a1;
  v37 = a2;
  v35 = a5;
  v6 = type metadata accessor for ItemLayoutContext();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Shelf.ContentType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009731F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v13 + 8))(v15, v12);
  v16 = *(v9 + 88);
  v32 = v8;
  if (v16(v11, v8) == enum case for Shelf.ContentType.productBadge(_:))
  {
    sub_1004218C0(v36, v37, a3, v33, v35);
  }

  else
  {
    v17 = a3;
    type metadata accessor for SeparatorSupplementaryView();
    if (static UICollectionReusableView.matchesItemElementKind(_:)())
    {

      v34 = static UICollectionReusableView.defaultReuseIdentifier.getter();
      v28 = v18;
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v29;
      v21 = v30;
      v22 = v31;
      (*(v30 + 16))(v29, v17, v31);
      v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      (*(v21 + 32))(v24 + v23, v20, v22);
      *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
      v25 = sub_10002849C(&qword_1009751D0);
      v26 = v35;
      v35[3] = v25;
      v26[4] = sub_10011A820();
      sub_1000056E0(v26);

      ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    }

    else
    {
      v27 = v35;
      v35[4] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
    }

    (*(v9 + 8))(v11, v32);
  }
}

double sub_1004218C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a5;
  v7 = type metadata accessor for ItemLayoutContext();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v66 = v8;
  v67 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ComponentSeparator.Position();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002849C(&qword_100985410);
  __chkstk_darwin(v72);
  v11 = v64 - v10;
  v12 = sub_10002849C(&qword_1009751C8);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = type metadata accessor for ComponentSeparator();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100985418);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  __chkstk_darwin(v19 - 8);
  v75 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v71 = v64 - v22;
  __chkstk_darwin(v23);
  v25 = v64 - v24;
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v29 = type metadata accessor for SeparatorSupplementaryView();
  v82 = a1;
  v79 = a2;
  v77 = v29;
  sub_100503A20(a1, a2, v28);
  v30 = *(v76 + 56);
  sub_10011A02C(v14);
  v31 = *(v16 + 48);
  v76 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    sub_10002B894(v14, &qword_1009751C8);
LABEL_10:

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v38 = v75;
    sub_100031660(v28, v75, &qword_100985418);
    v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v40 = swift_allocObject();
    sub_1000476A0(v38, v40 + v39, &qword_100985418);
    v41 = sub_10002849C(&qword_1009751D0);
    v42 = v28;
    v43 = v78;
    v78[3] = v41;
    v43[4] = sub_10011A820();
    sub_1000056E0(v43);
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    v44 = v42;
    goto LABEL_11;
  }

  v64[1] = v30;
  (*(v16 + 32))(v18, v14, v76);
  v65 = v18;
  ComponentSeparator.position.getter();
  v32 = v73;
  v33 = v83;
  (*(v73 + 56))(v25, 0, 1, v83);
  v34 = *(v72 + 48);
  sub_100031660(v25, v11, &qword_100985418);
  sub_100031660(v28, &v11[v34], &qword_100985418);
  v35 = *(v32 + 48);
  if (v35(v11, 1, v33) != 1)
  {
    v37 = v71;
    sub_100031660(v11, v71, &qword_100985418);
    if (v35(&v11[v34], 1, v83) != 1)
    {
      v46 = &v11[v34];
      v47 = v70;
      v48 = v37;
      v49 = v83;
      (*(v32 + 32))(v70, v46, v83);
      sub_100422710(&qword_100985420, &type metadata accessor for ComponentSeparator.Position);
      LODWORD(v72) = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v32 + 8);
      v50(v47, v49);
      sub_10002B894(v25, &qword_100985418);
      v50(v48, v49);
      sub_10002B894(v11, &qword_100985418);
      v36 = v65;
      if (v72)
      {
        goto LABEL_14;
      }

LABEL_9:
      (*(v16 + 8))(v36, v76);
      goto LABEL_10;
    }

    sub_10002B894(v25, &qword_100985418);
    (*(v32 + 8))(v37, v83);
LABEL_8:
    sub_10002B894(v11, &qword_100985410);
    v36 = v65;
    goto LABEL_9;
  }

  sub_10002B894(v25, &qword_100985418);
  if (v35(&v11[v34], 1, v83) != 1)
  {
    goto LABEL_8;
  }

  sub_10002B894(v11, &qword_100985418);
  v36 = v65;
LABEL_14:
  if ((static UICollectionReusableView.matchesItemElementKind(_:)() & 1) == 0)
  {
    (*(v16 + 8))(v36, v76);
    sub_10002B894(v28, &qword_100985418);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
    return result;
  }

  v51 = static UICollectionReusableView.defaultReuseIdentifier.getter();
  v83 = v28;
  v79 = v51;
  v75 = v52;
  v53 = swift_allocObject();
  swift_weakInit();
  v55 = v67;
  v54 = v68;
  v56 = v69;
  (*(v68 + 16))(v67, v80, v69);
  v57 = v16;
  v58 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v59 = (v66 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  (*(v54 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v81;
  v61 = sub_10002849C(&qword_1009751D0);
  v62 = v78;
  v78[3] = v61;
  v62[4] = sub_10011A820();
  sub_1000056E0(v62);

  ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  (*(v57 + 8))(v65, v76);
  v44 = v83;
LABEL_11:
  sub_10002B894(v44, &qword_100985418);
  return result;
}

uint64_t sub_1004221F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v5 = type metadata accessor for ComponentSeparator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10002849C(&qword_100985418);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for ComponentSeparator.Position();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_100031660(v28, v14, &qword_100985418);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10002B894(v14, &qword_100985418);
  }

  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v6 + 16))(v8, v11, v5);
  v23 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  v24 = v27;
  swift_beginAccess();
  (*(v6 + 24))(v24 + v23, v8, v5);
  swift_endAccess();
  sub_100503F40();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_100422524()
{
  sub_100007000(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100422590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10002849C(&qword_100985418) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1004221F8(a1, a2, a3, a4, v10);
}

uint64_t sub_100422638()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100422710(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10042275C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_pageView;
  type metadata accessor for ArcadeDownloadPackSuggestionsPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton;
  v7 = objc_opt_self();
  *&v2[v6] = [v7 boldButton];
  v8 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton;
  *&v2[v8] = [objc_opt_self() linkButton];
  v9 = OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton;
  *&v2[v9] = [v7 boldButton];
  v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 0;
  v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = 3;
  *&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_presenter] = a1;
  v10 = *&v2[v5];
  swift_retain_n();
  v11 = v10;

  v12 = sub_10054A368(a1, v11, a2, v2);
  sub_100423AEC(&qword_1009854A0, v13, type metadata accessor for ArcadeDownloadPackSuggestionsViewController);
  v14 = v12;

  dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.view.setter();

  [*&v14[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton] addTarget:v14 action:"didTapGetAllButtonWithSender:" forControlEvents:64];
  v15 = *(*&v14[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_pageView] + OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v20[3] = ObjectType;
  v20[4] = &off_1008C2938;
  v16 = v15;

  v20[0] = v14;
  v17 = qword_1009CF450;
  swift_beginAccess();
  sub_100423A7C(v20, v16 + v17);
  swift_endAccess();

  return v14;
}

void sub_100422A14()
{
  v0 = type metadata accessor for Feature.iOS();
  v7[3] = v0;
  v7[4] = sub_100423AEC(&qword_10097CC80, 255, &type metadata accessor for Feature.iOS);
  v1 = sub_1000056E0(v7);
  (*(*(v0 - 8) + 104))(v1, enum case for Feature.iOS.arcade_choose_your_favorites_brick_Future(_:), v0);
  LOBYTE(v0) = isFeatureEnabled(_:)();
  sub_100007000(v7);
  if (v0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = static ArcadePageScrollToShelfNotification.notificationName.getter();
    sub_10002849C(&unk_10097E340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v7[0] = static ArcadePageScrollToShelfNotification.shelfId.getter();
    v7[1] = v5;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x8000000100812BB0;
    sub_100397CE8(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_1009827A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 postNotificationName:v3 object:0 userInfo:isa];
  }
}

id sub_100422CCC(void *a1)
{
  v25 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v1[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 1;
  dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.didTapGetAllButton()();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  ASKBagContract.arcadeDownloadPacksGetAllCTADismissDelay.getter();
  v17 = v16;

  if (v17 <= 0.0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  v18 = dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.hasAskToBuy.getter();
  if (v18 == 2 || (v18 & 1) != 0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  [v25 showsBusyIndicator];
  sub_1000076C0();
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_10013B73C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C2970;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100423AEC(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v25;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v4, v2);
  (*(v27 + 8))(v8, v26);
  return (v20)(v15, v9);
}

void sub_100423180(uint64_t a1)
{
  v2 = v1;
  sub_10074BBD4(a1, *(v1 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph));
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
  v5 = ArcadeDownloadPackSuggestionsPage.getAllAction.getter();
  if (v5)
  {
    Action.title.getter();
    v7 = v6;

    if (v7)
    {
      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }
  }

  [v4 setTitle:v5 forState:0];

  v8 = *(v2 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton);
  v9 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *(v2 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton);
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  v12 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v12];

  ArcadeDownloadPackSuggestionsPage.primaryActionSecondaryTitle.getter();
  if (!v13)
  {
    ArcadeDownloadPackSuggestionsPage.primaryAction.getter();
    v14 = Action.title.getter();
    v16 = v15;

    sub_100423360(a1, v14, v16);
  }

  sub_1005D9478();
}

void sub_100423360(uint64_t a1, uint64_t a2, NSString a3)
{
  v5 = sub_10002849C(&qword_100985498);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ArcadeDownloadPackSuggestionsPagePrimaryActionKind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
  v21 = v3;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v20 setTitle:v12 forState:{0, v20}];

  v13 = *&v21[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v13 setTitle:a3 forState:0];

  ArcadeDownloadPackSuggestionsPage.primaryActionKind.getter();
  v14 = ArcadeDownloadPackSuggestionsPage.getAllAction.getter();
  if (v14)
  {
  }

  v15 = *(v5 + 48);
  (*(v9 + 32))(v7, v11, v8);
  v7[v15] = v14 != 0;
  v16 = (*(v9 + 88))(v7, v8);
  if (v16 == enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.done(_:))
  {
    goto LABEL_9;
  }

  if (v16 != enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:))
  {
    sub_10002B894(v7, &qword_100985498);
    goto LABEL_14;
  }

  if (!v14)
  {
LABEL_9:
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v9 + 8))(v7, v8);
    v17 = v21;
    v18 = [v21 buttonTray];
    [v18 addButton:*&v17[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

    v20 = v13;
  }

LABEL_14:
  v19 = [v21 buttonTray];
  [v19 addButton:v20];
}

uint64_t sub_100423650(unsigned __int8 a1)
{
  v2 = v1;
  result = dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.page.getter();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = ArcadeDownloadPackSuggestionsPage.primaryActionSecondaryTitle.getter();
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = v1[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus];
  if (v9 != 3 && v9 == a1)
  {
  }

  else
  {
    v11 = v6;
    v1[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = a1;
    v12 = [v1 buttonTray];
    [v12 removeAllButtons];

    if (a1)
    {
      if (a1 == 1)
      {
        if ((v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] & 1) == 0)
        {
          sub_100423360(v5, v11, v8);
        }
      }

      else if (v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] == 1)
      {

        v16 = [v2 buttonTray];
        [v16 addButton:*&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

        v17 = [v2 buttonTray];
        [v17 addButton:*&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton]];
      }

      else
      {
        v18 = *&v2[OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
        v19 = String._bridgeToObjectiveC()();

        [v18 setTitle:v19 forState:0];

        v20 = [v2 buttonTray];
        [v20 addButton:v18];
      }

LABEL_21:
    }

    ArcadeDownloadPackSuggestionsPage.primaryAction.getter();
    v13 = Action.title.getter();
    v15 = v14;

    sub_100423360(v5, v13, v15);
  }
}

void sub_1004238D8()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
}

uint64_t sub_100423A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097F860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100423AEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100423BBC()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_100005744(0, &qword_100970180);
    v5 = static UIColor.defaultBackground.getter();
    [v4 setBackgroundColor:v5];

    sub_100424ECC(&qword_100985510, v6, type metadata accessor for PurchasesLoadingViewController);
    swift_unknownObjectRetain();
    dispatch thunk of PurchasesPresenter.view.setter();
    dispatch thunk of BasePresenter.didLoad()();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v7 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v8 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v9 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100423E94()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v43, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v16 view];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v18 setFrame:{v22, v24, v26, v28}];
LABEL_9:
  v29 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v30 view];
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v0 view];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [v32 setFrame:{v36, v38, v40, v42}];
}

id sub_100424108()
{
  v1 = v0;
  v2 = type metadata accessor for Dependency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46 = v12;
  v47 = v14;
  v48 = v16;
  v49 = v18;
  v50 = 0;
  result = static ViewControllerContainment.add(_:to:frame:)();
  v19 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_10002849C(&unk_100975540);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_objectGraph];
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v44[0] = 1;
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v44[0]) = 1;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v21(v5, v2);
  v43[0] = v22;
  v43[1] = sub_10074EA28(v22);
  v43[2] = v23;
  sub_100005744(0, &qword_10098D1A0);

  inject<A, B>(_:from:)();
  sub_10002C0AC(v45, v44);
  sub_10002849C(&qword_1009835D8);
  v24 = type metadata accessor for PurchasesContentMode();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B1890;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  type metadata accessor for PurchasesContentPresenter();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)();
  v32 = sub_100424ECC(&qword_1009835E0, 255, &type metadata accessor for PurchasesContentPresenter);

  v33 = sub_10054A47C(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x8000000100812C50);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_10044B830(v31, v33);
  v35 = *&v1[v19];
  *&v1[v19] = v36;
  v37 = v36;

  v38 = v37;
  [v38 willMoveToParentViewController:v1];
  [v1 addChildViewController:v38];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v39 = result;
  result = [v38 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v40 = result;
  [v39 addSubview:result];

  [v38 didMoveToParentViewController:v1];
  v41 = [v38 title];

  [v1 setTitle:v41];
  v42 = [v38 collectionView];
  [v1 setContentScrollView:v42 forEdge:15];
  swift_unknownObjectRelease();

  return sub_100007000(v45);
}

id sub_1004246CC()
{
  v1 = v0;
  v2 = type metadata accessor for Bag();
  __chkstk_darwin(v2);
  v3 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v0[v3];
  *&v0[v3] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result bounds];

  result = static ViewControllerContainment.add(_:to:frame:)();
  v8 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases;
  if (*&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases])
  {
    return result;
  }

  v9 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_objectGraph];
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  type metadata accessor for FamilyPurchasesPresenter();
  swift_allocObject();
  v10 = FamilyPurchasesPresenter.init(objectGraph:familyPurchasesError:iCloudMemberAppleId:bag:)();
  v11 = sub_100424ECC(&qword_100985508, 255, &type metadata accessor for FamilyPurchasesPresenter);

  v12 = sub_10054A47C(v9, v10, v11, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100812C30);
  v13 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v14 = sub_1001FE400(v10, v12);
  v15 = *&v1[v8];
  *&v1[v8] = v14;
  v16 = v14;

  v17 = v16;
  [v17 willMoveToParentViewController:v1];
  [v1 addChildViewController:v17];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v18 = result;
  result = [v17 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result;
  [v18 addSubview:result];

  [v17 didMoveToParentViewController:v1];
  v20 = [v17 title];

  [v1 setTitle:v20];
  v21 = [v17 collectionView];
  [v1 setContentScrollView:v21 forEdge:15];
}