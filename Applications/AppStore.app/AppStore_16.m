char *sub_1001C1494(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC8AppStore13VideoCardView_overlayStyle;
  v19 = enum case for MediaOverlayStyle.matchSystem(_:);
  v20 = type metadata accessor for MediaOverlayStyle();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView;
  *&v5[v21] = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView;
  *&v5[v22] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  sub_10016A418(&qword_1009CE578, &v5[OBJC_IVAR____TtC8AppStore13VideoCardView_metrics]);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v28 = OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView]];
  [*&v27[v28] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v29 = OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView;
  v30 = qword_10096DD90;
  v31 = *(*&v27[OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v32, qword_1009D0848);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v17, v33, v32);
  (*(v34 + 56))(v17, 0, 1, v32);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v35 = qword_10096D288;
  v36 = *&v27[v29];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v11, qword_100978A88);
  (*(v12 + 16))(v14, v37, v11);
  v38 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v12 + 24))(&v36[v38], v14, v11);
  swift_endAccess();
  [v36 setNeedsLayout];

  (*(v12 + 8))(v14, v11);
  [*&v27[v29] setLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  v39 = [*&v27[v28] contentView];
  [v39 addSubview:*&v27[v29]];

  sub_1001C19A4();
  return v27;
}

void sub_1001C19A4()
{
  v1 = type metadata accessor for MediaOverlayStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v25 = *&v0[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView];
  v10 = OBJC_IVAR____TtC8AppStore13VideoCardView_overlayStyle;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v11(v9, &v0[v10], v1);
  sub_1001C3074(v9);
  v27 = *(v2 + 8);
  v27(v9, v1);
  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = v6;
  v14 = v26;

  [v25 setBackgroundEffects:isa];

  v11(v13, &v0[v10], v1);
  v11(v14, v13, v1);
  v15 = (*(v2 + 88))(v14, v1);
  if (v15 == enum case for MediaOverlayStyle.dark(_:))
  {
    v16 = 2;
    v27(v13, v1);
  }

  else if (v15 == enum case for MediaOverlayStyle.light(_:))
  {
    v16 = 1;
    v27(v13, v1);
  }

  else
  {
    v17 = v27;
    if (v15 == enum case for MediaOverlayStyle.matchSystem(_:))
    {
      v18 = [v0 traitCollection];
      v16 = [v18 userInterfaceStyle];
    }

    else
    {
      v27(v14, v1);
      v16 = 1;
    }

    v17(v13, v1);
  }

  v19 = *&v0[OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView];
  [v19 setOverrideUserInterfaceStyle:v16];
  v20 = *&v19[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  if (v16 == 2)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 whiteColor];
  }

  else
  {
    v24 = v20;
    v23 = 0;
  }

  [v20 setTintColor:v23];
}

void (*sub_1001C1D48(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 8) = v1;
  v5 = type metadata accessor for CornerStyle();
  v4[2] = v5;
  v6 = *(v5 - 8);
  v4[3] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC8AppStore13VideoCardView_videoView;
  v4[4] = v7;
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_1001C1E30;
}

void sub_1001C1E30(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1001C32D4(&qword_100973190, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[1];
        sub_100005744(0, &qword_100972EB0);
        v11 = v10;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v33 = v3[1];
      v32 = v3[2];
      v31[13](v30, enum case for CornerStyle.continuous(_:), v32);
      dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
      (v31[1])(v30, v32);
      [v33 addSubview:v29];
      [v33 sendSubviewToBack:v29];
      [v33 setNeedsLayout];
    }

    v27 = v3[4];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1001C32D4(&qword_100973190, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[1];
      sub_100005744(0, &qword_100972EB0);
      v18 = v17;
      v19 = static NSObject.== infix(_:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v26 = v3[1];
    v25 = v3[2];
    v24[13](v23, enum case for CornerStyle.continuous(_:), v25);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (v24[1])(v23, v25);
    [v26 addSubview:v22];
    [v26 sendSubviewToBack:v22];
    [v26 setNeedsLayout];
  }

  v27 = v3[4];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_1001C21CC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 sizeThatFits:{v2, v3}];
  v5 = v4;
  v15 = v6;
  LayoutMarginsAware<>.layoutFrame.getter();
  static CGRect.frame(pinnedAtBottomLeftOf:of:)();
  v7 = *&v0[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v7 setFrame:?];
  [v1 setFrame:{0.0, 0.0, v5, v15}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v9 setFrame:?];
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (v10 + qword_1009D21B0);
    v13 = *(v10 + qword_1009D21B0);
    v14 = *(v10 + qword_1009D21B0 + 16);
    *v12 = 0.0;
    v12[1] = 0.0;
    v12[2] = v15;
    v12[3] = 0.0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, v13), vceqq_f64(*&v15, v14)))) & 1) == 0)
    {
      sub_1004E2320();
    }
  }
}

uint64_t type metadata accessor for VideoCardView()
{
  result = qword_100978AC8;
  if (!qword_100978AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C24C0()
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

uint64_t (*sub_1001C2598(uint64_t **a1))()
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
  v2[4] = sub_1001C1D48(v2);
  return sub_1000C2700;
}

double sub_1001C2608(double a1)
{
  swift_getObjectType();

  return sub_1001C2E40(a1);
}

uint64_t sub_1001C2674()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001C32D4(&qword_100978AF8, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1001C26E8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001C32D4(&qword_100978AF8, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1001C2774(uint64_t *a1))()
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
  sub_1001C32D4(&qword_100978AF8, type metadata accessor for VideoCardView);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

void sub_1001C2968()
{
  qword_1009CE590 = &type metadata for CGFloat;
  unk_1009CE598 = &protocol witness table for CGFloat;
  qword_1009CE578 = 0x4066000000000000;
}

uint64_t sub_1001C2990()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_100978A88);
  sub_1000056A8(v0, qword_100978A88);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001C2AF4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v18 = v6 + 16;
  v19 = v7;
  v7(v3, v5, v4);
  v8 = v1[13];
  v17 = enum case for FontSource.useCase(_:);
  v16 = v8;
  v8(v3);
  v9 = type metadata accessor for StaticDimension();
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v20);
  v11 = v1[2];
  v11(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v12(v3, v0);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DD90 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v4, qword_1009D0848);
  v19(v3, v13, v4);
  v16(v3, v17, v0);
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v20);
  v11(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12(v3, v0);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  SmallLockupLayout.Metrics.titleRegularSpace.getter();
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  SmallLockupLayout.Metrics.titleRegularSpace.getter();
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v24 = type metadata accessor for ZeroDimension();
  v25 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v23);
  static ZeroDimension.zero.getter();
  SmallLockupLayout.Metrics.bottomSpace.setter();
  return SmallLockupLayout.Metrics.numberOfLines.setter();
}

double sub_1001C2E40(double a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UITraitEnvironment.withAccessibleContentSizesDisabled.getter();
  type metadata accessor for SmallLockupView();
  if (qword_10096D288 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v8 = sub_1000056A8(v7, qword_100978A88);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10070B598(v8, v6);
  swift_unknownObjectRelease();
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  sub_10016A418(&qword_1009CE578, v11);
  sub_10002A400(v11, v11[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  sub_100007000(v11);
  return a1;
}

uint64_t sub_1001C3074(uint64_t a1)
{
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MediaOverlayStyle.dark(_:))
  {
    v8 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
    sub_100005744(0, &qword_10097FB70);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (v7 == enum case for MediaOverlayStyle.light(_:))
    {
      sub_10002849C(&qword_100973210);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B0B70;
      v10 = [objc_opt_self() effectWithStyle:11];
    }

    else
    {
      v11 = enum case for MediaOverlayStyle.matchSystem(_:);
      v12 = v7;
      sub_10002849C(&qword_100973210);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B0B70;
      v13 = objc_opt_self();
      if (v12 != v11)
      {
        *(v9 + 32) = [v13 effectWithStyle:11];
        (*(v3 + 8))(v6, v2);
        return v9;
      }

      v10 = [v13 effectWithStyle:6];
    }

    *(v9 + 32) = v10;
  }

  return v9;
}

uint64_t sub_1001C32D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C331C()
{
  v1 = OBJC_IVAR____TtC8AppStore13VideoCardView_overlayStyle;
  v2 = enum case for MediaOverlayStyle.matchSystem(_:);
  v3 = type metadata accessor for MediaOverlayStyle();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView;
  *(v0 + v4) = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001C3488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v73 = a6;
  v71 = a5;
  v85 = a4;
  v88 = a3;
  v89 = a2;
  v91 = a8;
  v92 = a9;
  v93 = a1;
  v90 = a7;
  v78 = sub_10002849C(&qword_100970EE8);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v67 - v11;
  v74 = type metadata accessor for SearchFocusTwoColumnListDisplayOptions();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Shelf.ContentsMetadata();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DynamicTypeSize();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PageGrid.Direction();
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v82 = &v67 - v19;
  __chkstk_darwin(v20);
  v84 = &v67 - v21;
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v25 = type metadata accessor for Shelf.ContentType();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v29);
  v68 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v67 - v32;
  sub_100031660(v89, &v67 - v32, &unk_10098FFB0);
  v34 = *(v29 + 48);
  v89 = v33;
  sub_100031660(v88, &v33[v34], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v88 = v26;
  v35 = v26;
  v36 = v25;
  v37 = (*(v35 + 88))(v28, v25);
  if (v37 == enum case for Shelf.ContentType.singleColumnList(_:))
  {
    v38 = v86;
    (*(v86 + 104))(v24, enum case for PageGrid.Direction.vertical(_:), v16);
    PageEnvironment.dynamicTypeSize.getter();
    v39 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v87 + 8))(v15, v83);
    if (v39)
    {
      PageEnvironment.isHorizontalSizeClassCompact.getter();
    }

    (*(v38 + 16))(v84, v24, v16);
    sub_10010AD80(1);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v38 + 8))(v24, v16);
    return sub_10002B894(v89, &qword_100974650);
  }

  v67 = v15;
  v40 = v86;
  v41 = v87;
  if (v37 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v42 = v82;
    v43 = v16;
    (*(v86 + 104))(v82, enum case for PageGrid.Direction.vertical(_:), v16);
    swift_getKeyPath();
    v44 = v79;
    ReadOnlyLens.subscript.getter();

    v45 = v80;
    v46 = v81;
    if ((*(v80 + 88))(v44, v81) == enum case for Shelf.ContentsMetadata.searchFocusTwoColumnList(_:))
    {
      (*(v45 + 96))(v44, v46);
      v47 = v72;
      v48 = v70;
      v49 = v44;
      v50 = v74;
      (*(v72 + 32))(v70, v49, v74);
      v51 = SearchFocusTwoColumnListDisplayOptions.numberOfColumns.getter();
      (*(v47 + 8))(v48, v50);
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      v51 = 1;
    }

    v59 = v83;
    v60 = v41;
    v61 = v67;
    PageEnvironment.dynamicTypeSize.getter();
    v62 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v60 + 8))(v61, v59);
    if (v62 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
    {
      v51 = 1;
    }

    (*(v40 + 16))(v84, v42, v43);
    sub_10010AD80(v51);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v40 + 8))(v42, v43);
    return sub_10002B894(v89, &qword_100974650);
  }

  if (v37 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v52 = v86;
    v53 = v84;
    v54 = v16;
    (*(v86 + 104))(v84, enum case for PageGrid.Direction.horizontal(_:), v16);
    v94 = 0x4020000000000000;
    sub_10005E808();
    v55 = v75;
    PageGrid.DirectionalValue.init(_:)();
    v94 = 0x4020000000000000;
    v56 = v76;
    PageGrid.DirectionalValue.init(_:)();
    (*(v52 + 16))(v69, v53, v54);
    sub_1001ABF90(v55, v56);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v57 = *(v77 + 8);
    v58 = v78;
    v57(v56, v78);
    v57(v55, v58);
    (*(v52 + 8))(v53, v54);
    return sub_10002B894(v89, &qword_100974650);
  }

  v94 = v71;
  v95 = v73;
  v64 = v89;
  v65 = v68;
  sub_100031660(v89, v68, &qword_100974650);
  v66 = *(v29 + 48);
  sub_1001C440C();
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v64, &qword_100974650);
  sub_10002B894(v65 + v66, &unk_10098FFB0);
  sub_10002B894(v65, &unk_10098FFB0);
  return (*(v88 + 8))(v28, v36);
}

uint64_t sub_1001C3FD8()
{
  sub_1001C43B8();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1001C40BC()
{
  sub_1001C43B8();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1001C41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v27[4] = a5;
  v27[5] = a6;
  v27[3] = a4;
  *&v27[1] = a13;
  *&v27[2] = a14;
  v27[0] = a1;
  v17 = sub_10002849C(&qword_100974650);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v27 - v22;
  v24 = *(v14 + 2);
  sub_100031660(a2, v27 - v22, &unk_10098FFB0);
  sub_100031660(a3, &v23[*(v18 + 56)], &unk_10098FFB0);
  v28 = *v14;
  v29 = v24;
  sub_100031660(v23, v20, &qword_100974650);
  v25 = *(v18 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v23, &qword_100974650);
  sub_10002B894(&v20[v25], &unk_10098FFB0);
  return sub_10002B894(v20, &unk_10098FFB0);
}

unint64_t sub_1001C43B8()
{
  result = qword_100978B00;
  if (!qword_100978B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978B00);
  }

  return result;
}

unint64_t sub_1001C440C()
{
  result = qword_100978B08;
  if (!qword_100978B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978B08);
  }

  return result;
}

uint64_t sub_1001C4488(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = type metadata accessor for SystemImage();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a2, v5, v7);
  v10 = static SystemImage.load(_:with:)();
  result = (*(v6 + 8))(v9, v5);
  *a3 = v10;
  return result;
}

void sub_1001C4584()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  qword_100978B10 = v3;
}

void sub_1001C4628()
{
  if (qword_10096D2A0 != -1)
  {
    swift_once();
  }

  v0 = qword_100978B10;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_100978B18 = v3;
}

char *sub_1001C46C4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewAction;
  v13 = sub_10002849C(&unk_10097B3D0);
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportAction], 1, 1, v13);
  v15 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton] = v15;
  v16 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton] = v16;
  v17 = type metadata accessor for ProductReviewActionsView();
  v42.receiver = v4;
  v42.super_class = v17;
  v18 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton;
  v24 = qword_10096D290;
  v25 = *&v22[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton];
  if (v24 != -1)
  {
    swift_once();
  }

  sub_1001C4BA8(qword_1009CE5C8, 0, 0);
  v26 = type metadata accessor for UIButton.Configuration();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 0, 1, v26);
  UIButton.configuration.setter();

  v28 = [*&v22[v23] titleLabel];
  if (v28)
  {
    if (qword_10096D2A0 != -1)
    {
      v40 = v28;
      swift_once();
      v28 = v40;
    }

    v29 = v28;
    [v28 setFont:qword_100978B10];
  }

  [*&v22[v23] addTarget:v22 action:"writeReviewWithSender:" forControlEvents:64];
  v30 = *&v22[v23];
  v31 = [v22 tintColor];
  [v30 setTitleColor:v31 forState:0];

  [v22 addSubview:*&v22[v23]];
  v32 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton;
  v33 = qword_10096D298;
  v34 = *&v22[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton];
  if (v33 != -1)
  {
    swift_once();
  }

  sub_1001C4BA8(qword_1009CE5D0, 0, 0);
  v27(v11, 0, 1, v26);
  UIButton.configuration.setter();

  v35 = [*&v22[v32] titleLabel];
  if (v35)
  {
    if (qword_10096D2A0 != -1)
    {
      v41 = v35;
      swift_once();
      v35 = v41;
    }

    v36 = v35;
    [v35 setFont:qword_100978B10];
  }

  [*&v22[v32] addTarget:v22 action:"supportWithSender:" forControlEvents:64];
  v37 = *&v22[v32];
  v38 = [v22 tintColor];

  [v37 setTitleColor:v38 forState:0];
  [v22 addSubview:*&v22[v32]];

  return v22;
}

uint64_t sub_1001C4BA8(void *a1, uint64_t a2, uint64_t a3)
{
  v27[1] = a2;
  v28 = a1;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v9 - 8);
  v11 = v27 - v10;
  v12 = type metadata accessor for UIButton.Configuration.Size();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.gray()();
  (*(v13 + 104))(v15, enum case for UIButton.Configuration.Size.large(_:), v12);
  UIButton.Configuration.buttonSize.setter();
  if (a3)
  {
    v27[0] = v4;
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSFontAttributeName;
    v17 = qword_10096D2A0;

    v18 = NSFontAttributeName;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_100978B10;
    *(inited + 64) = sub_100005744(0, &qword_1009730E0);
    *(inited + 40) = v19;
    v20 = v19;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100970EC0);
    AttributeContainer.init(_:)();
    AttributedString.init(_:attributes:)();
    v21 = type metadata accessor for AttributedString();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    UIButton.Configuration.attributedTitle.setter();
    v4 = v27[0];
  }

  UIButton.Configuration.contentInsets.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  v22 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v22(v29, 0);
  sub_100005744(0, &qword_100970180);
  v23 = objc_opt_self();
  UIColor.init(light:dark:)([v23 systemGray6Color], objc_msgSend(v23, "secondarySystemBackgroundColor"));
  UIButton.Configuration.baseBackgroundColor.setter();
  UIButton.Configuration.imagePadding.setter();
  if (qword_10096D2A8 != -1)
  {
    swift_once();
  }

  v24 = qword_100978B18;
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v25 = v28;
  return UIButton.Configuration.image.setter();
}

uint64_t sub_1001C5184(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_10002849C(&unk_10097B3D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = *a2;
  swift_beginAccess();
  sub_100079A28(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_10097B3F0;
    v16 = v9;
    return sub_10002B894(v16, v15);
  }

  (*(v11 + 32))(v13, v9, v10);
  ObjectGraphPair.objectGraph.getter();
  v17 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = &unk_100972A00;
    v16 = v6;
    return sub_10002B894(v16, v15);
  }

  ObjectGraphPair.value.getter();
  v20 = ObjectGraphPair.objectGraph.getter();
  sub_1005F9AF4(v21, 1, v20, v6);

  (*(v11 + 8))(v13, v10);

  return (*(v18 + 8))(v6, v17);
}

uint64_t sub_1001C54C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10002B894(v9, &unk_1009711D0);
}

uint64_t sub_1001C554C@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for Resize.Rule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = type metadata accessor for HorizontalStack();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  HorizontalStack.init(with:)();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100005744(0, &qword_1009811E0);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView();
  v20 = v19;
  LayoutMarginsAware<>.layoutFrame.getter();
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
  v37 = type metadata accessor for Resize();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_1000056E0(v49);
  v24 = v8;
  v25 = v5;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  HorizontalStack.adding(_:with:)();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_100007000(v49);
  v29 = *(v38 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  LayoutMarginsAware<>.layoutFrame.getter();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31 * 0.5 + -6.0;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_1000056E0(v49);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for HorizontalStack;
  sub_1000056E0(v32);
  v33 = v44;
  HorizontalStack.adding(_:with:)();
  v26(v33, v28);
  return sub_100007000(v49);
}

uint64_t sub_1001C5A08@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for Resize.Rule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = type metadata accessor for VerticalStack();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  VerticalStack.init(with:)();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100005744(0, &qword_1009811E0);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView();
  v20 = v19;
  LayoutMarginsAware<>.layoutFrame.getter();
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
  v37 = type metadata accessor for Resize();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_1000056E0(v49);
  v24 = v8;
  v25 = v5;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  VerticalStack.adding(_:with:)();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_100007000(v49);
  v29 = *(v38 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  LayoutMarginsAware<>.layoutFrame.getter();
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
  sub_1000056E0(v49);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v32);
  v33 = v44;
  VerticalStack.adding(_:with:)();
  v26(v33, v28);
  return sub_100007000(v49);
}

uint64_t sub_1001C5EA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton);
  type metadata accessor for ProductReviewActionsView();
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = v13 * 0.5 + -6.0;
  if (v14 < v7 || v14 < v12)
  {

    return sub_1001C5A08(a1);
  }

  else
  {

    return sub_1001C554C(a1);
  }
}

double sub_1001C609C(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton);
  v7 = [v6 titleForState:0];
  if (v7)
  {
    v8 = v7;
LABEL_3:
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  v14 = *(v3 + OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton);
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

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

LABEL_13:
  v22 = sub_1001C64EC(v9, v11, v17, v19, a1, a2);

  return v22;
}

id sub_1001C6298()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewActionsView()
{
  result = qword_100978B50;
  if (!qword_100978B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C63AC()
{
  sub_1000798B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1001C64EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v12 - 8);
  sub_100005744(0, &qword_1009811E0);
  if (qword_10096D290 != -1)
  {
    swift_once();
  }

  sub_1001C4BA8(qword_1009CE5C8, a1, a2);
  v13 = UIButton.init(configuration:primaryAction:)();
  [v13 sizeThatFits:{a5, a6}];
  if (qword_10096D298 != -1)
  {
    swift_once();
  }

  sub_1001C4BA8(qword_1009CE5D0, a3, a4);
  v14 = UIButton.init(configuration:primaryAction:)();
  [v14 sizeThatFits:{a5, a6}];

  return a5;
}

id sub_1001C66CC(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.glass()();
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_100146A44(v6, v9);
    UIButton.configuration.setter();

    sub_1001AF7BC(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:a1];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v14 = v10;
  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];

  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  return v14;
}

void sub_1001C6984(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  UIButton.configuration.getter();
  v14 = type metadata accessor for UIButton.Configuration();
  v15 = &enum case for SystemImage.speakerSlashFill(_:);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    sub_100146A44(v13, v10);
    UIButton.configuration.setter();
    sub_1001AF7BC(v13);
  }

  else
  {
    if (a1)
    {
      v16 = &enum case for SystemImage.speakerSlashFill(_:);
    }

    else
    {
      v16 = &enum case for SystemImage.speakerWave3Fill(_:);
    }

    (*(v5 + 104))(v7, *v16, v4);
    static SystemImage.load(_:with:)();
    (*(v5 + 8))(v7, v4);
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  if (a1)
  {
    v17 = 0xD00000000000002BLL;
  }

  else
  {
    v17 = 0xD000000000000029;
  }

  if (a1)
  {
    v18 = 0xD00000000000002CLL;
  }

  else
  {
    v18 = 0xD00000000000002ALL;
  }

  if (a1)
  {
    v19 = "on.Unmute.AccessibilityLabel";
  }

  else
  {
    v15 = &enum case for SystemImage.speakerWave3Fill(_:);
    v19 = "sizeChangeObserver";
  }

  v20 = "on.Mute.AccessibilityLabel";
  if ((a1 & 1) == 0)
  {
    v20 = "on.Mute.LargeContentTitle";
  }

  v21 = v20 | 0x8000000000000000;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v18, v22);
  v23 = String._bridgeToObjectiveC()();

  [v2 setAccessibilityLabel:v23];

  (*(v5 + 104))(v7, *v15, v4);
  v24 = static SystemImage.load(_:with:)();
  (*(v5 + 8))(v7, v4);
  [v2 setLargeContentImage:v24];

  v25._object = (v19 | 0x8000000000000000);
  v25._countAndFlagsBits = v17;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  localizedString(_:comment:)(v25, v26);
  v27 = String._bridgeToObjectiveC()();

  [v2 setLargeContentTitle:v27];
}

uint64_t sub_1001C6D2C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001C6D88(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  [a1 contentInset];
  return (*(v1 + 16))(v4 + v6 + v7 > *(v1 + 32));
}

char *sub_1001C6E04(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v73 = a3;
  v72 = a1;
  v14 = type metadata accessor for AutomationSemantics();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DirectionalTextAlignment();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = type metadata accessor for WordmarkView.Alignment();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v24 - 8);
  v26 = &v68 - v25;
  v27 = &v7[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerLabelPresenter];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = &v7[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButtonTapHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_metrics;
  v30 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 16);
  v74 = a2;
  v32(&v8[v29], a2, v30);
  v68 = type metadata accessor for WordmarkView();
  v33 = enum case for Wordmark.arcade(_:);
  v34 = type metadata accessor for Wordmark();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26, v33, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  ArcadeLockupLayout.Metrics.wordmarkSpace.getter();
  (*(v21 + 104))(v23, enum case for WordmarkView.Alignment.leading(_:), v20);
  v36 = *(&v83 + 1);
  v37 = v84;
  v38 = sub_100047650(&v82, *(&v83 + 1));
  v39 = __chkstk_darwin(v38);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v39);
  v43 = sub_1001C8194(v26, v41, v23, v68, v36, v37);
  sub_100007000(&v82);
  *&v8[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView] = v43;
  v44 = type metadata accessor for FontUseCase();
  v45 = *(v44 - 8);
  v46 = v72;
  (*(v45 + 16))(v19, v72, v44);
  (*(v45 + 56))(v19, 0, 1, v44);
  (*(v70 + 104))(v69, enum case for DirectionalTextAlignment.leading(_:), v71);
  v47 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v8[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v48 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v8[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton] = sub_1000F5284(v73);
  v49 = type metadata accessor for ArcadeLockupView();
  v81.receiver = v8;
  v81.super_class = v49;
  v50 = objc_msgSendSuper2(&v81, "initWithFrame:", a4, a5, a6, a7);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v50;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v54 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v55 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView;
  v56 = *&v54[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView];
  sub_100028BB8();
  v57 = v56;
  v58 = static UIColor.primaryText.getter();
  [v57 setTintColor:v58];

  [v54 addSubview:*&v54[v55]];
  v59 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel;
  v60 = *&v54[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel];
  v61 = static UIColor.secondaryText.getter();
  [v60 setTextColor:v61];

  v62 = *&v54[v59];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v63 = *&v54[v59];
  v82 = 0u;
  v83 = 0u;
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v77;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v80);
  sub_10003D444(&v82);
  UIView.setAutomationSemantics(_:)();

  (*(v78 + 8))(v65, v79);
  [v54 addSubview:*&v54[v59]];
  v66 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton;
  [*&v54[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton] addTarget:v54 action:"offerButtonWasTapped" forControlEvents:64];
  [v54 addSubview:*&v54[v66]];

  (*(v76 + 8))(v74, v75);
  (*(v45 + 8))(v46, v44);
  return v54;
}

uint64_t sub_1001C76D8()
{
  v1 = v0;
  v18[0] = type metadata accessor for ArcadeLockupLayout.Metrics();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeLockupLayout();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  CGSize.subtracting(insets:)();
  v10 = *&v1[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView];
  v18[17] = type metadata accessor for WordmarkView();
  v18[18] = &protocol witness table for UIView;
  v18[14] = v10;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel];
  v18[12] = type metadata accessor for DynamicTypeLabel();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v11;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton];
  v18[7] = type metadata accessor for OfferButton();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v12;
  v13 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v1[v13], v18[0]);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  ArcadeLockupLayout.init(wordmarkView:subtitleText:offerButton:metrics:)();
  sub_1001C8264();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v6 + 8))(v9, v5);
  [v1 layoutMargins];
  return CGSize.adding(outsets:)();
}

uint64_t sub_1001C79B4()
{
  v22 = type metadata accessor for LayoutRect();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadeLockupLayout();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeLockupView();
  v32.receiver = v0;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView];
  v30 = type metadata accessor for WordmarkView();
  v31 = &protocol witness table for UIView;
  v29 = v9;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel];
  v27 = type metadata accessor for DynamicTypeLabel();
  v28 = &protocol witness table for UILabel;
  v26 = v10;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton];
  v24 = type metadata accessor for OfferButton();
  v25 = &protocol witness table for UIView;
  v23 = v11;
  v12 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v12], v18);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  ArcadeLockupLayout.init(wordmarkView:subtitleText:offerButton:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v16 = v20;
  ArcadeLockupLayout.placeChildren(relativeTo:in:)();
  (*(v21 + 8))(v16, v22);
  return (*(v5 + 8))(v7, v19);
}

id sub_1001C7F08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeLockupView()
{
  result = qword_100978C78;
  if (!qword_100978C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C8054()
{
  result = type metadata accessor for ArcadeLockupLayout.Metrics();
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

uint64_t sub_1001C8108@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_metrics;
  swift_beginAccess();
  v5 = type metadata accessor for ArcadeLockupLayout.Metrics();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1001C8194(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  v9 = sub_1000056E0(v12);
  (*(*(a5 - 8) + 32))(v9, a2, a5);
  v10 = objc_allocWithZone(a4);
  return WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
}

unint64_t sub_1001C8264()
{
  result = qword_100978C88;
  if (!qword_100978C88)
  {
    type metadata accessor for ArcadeLockupLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978C88);
  }

  return result;
}

uint64_t sub_1001C82BC(uint64_t a1, char a2)
{
  if (a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_10002849C(&qword_10096FCD0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007B1E00;
    *(v3 + 56) = type metadata accessor for WelcomeOnboardingStep();
    *(v3 + 64) = sub_1001C8644(&qword_100978C90, &type metadata accessor for WelcomeOnboardingStep);
    sub_1000056E0((v3 + 32));

    WelcomeOnboardingStep.init(bag:whatsNewItems:userDefaults:privacyIdentifiers:)();
    v4 = type metadata accessor for AdPrivacyOnboardingStep();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    AnyHashable.init<A>(_:)();
    *(v5 + 16) = a1;
    *(v3 + 96) = v4;
    *(v3 + 104) = sub_1001C8644(&qword_1009702A0, type metadata accessor for AdPrivacyOnboardingStep);
    *(v3 + 72) = v5;
    *(v3 + 136) = &type metadata for LocationPrivacyOnboardingStep;
    *(v3 + 144) = sub_1001C85F0();
    v6 = swift_allocObject();
    *(v3 + 112) = v6;
    *&v12 = 0x6E6F697461636F4CLL;
    *(&v12 + 1) = 0xEF79636176697250;

    AnyHashable.init<A>(_:)();
    *(v6 + 16) = a1;
    v7 = type metadata accessor for JourneyDrivenOnboardingStep();
    objc_allocWithZone(v7);
    swift_retain_n();

    v8 = sub_100235E14(a1, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000348A8(0, *(v3 + 16) + 1, 1, v3);
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_1000348A8((v9 > 1), v10 + 1, 1, v3);
    }

    v13 = v7;
    v14 = sub_1001C8644(&unk_100978CA0, type metadata accessor for JourneyDrivenOnboardingStep);
    *&v12 = v8;
    *(v3 + 16) = v10 + 1;
    sub_100005A38(&v12, v3 + 40 * v10 + 32);
    return v3;
  }

  return result;
}

unint64_t sub_1001C85F0()
{
  result = qword_100978C98;
  if (!qword_100978C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978C98);
  }

  return result;
}

uint64_t sub_1001C8644(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C868C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  *&v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v15 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *&v4[v14] = CompoundScrollObserver.init(children:)();
  v16 = &v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_iconHeadingView;
  *&v4[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_iconHeadingView] = v17;
  v19 = qword_10096D2B0;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v22 = qword_100978CB0;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100005744(0, &qword_1009744B0), v25 = v22, v26 = static NSObject.== infix(_:_:)(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10096D2B8;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_100978CB8);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1006DD1E4(v12);

  v34 = qword_10096D2C0;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1000FE7DC(&qword_100978CD0, v69);
  v36 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE838(v69, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1000FE894(v69);
  [*(*&v5[v18] + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_titleHeadingView;
  *&v5[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_titleHeadingView] = v37;
  v39 = qword_10096D2C8;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v29, qword_100978CF8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_1004442A4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for LockupCollectionSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v47 setClipsToBounds:0];
  v48 = sub_1001C9FD0();
  v49 = [objc_allocWithZone(UICollectionView) initWithFrame:v48 collectionViewLayout:{a1, a2, a3, a4}];

  v50 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView;
  v51 = *&v47[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView];
  *&v47[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView] = v49;
  v52 = v49;

  if (!v52)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v53 = *&v47[v50];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v53 setClipsToBounds:0];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_iconHeadingView]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_titleHeadingView]];
  v54 = *&v47[v50];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v54 setDelegate:v47];
  v55 = *&v47[v50];
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 clearColor];
  [v57 setBackgroundColor:v58];

  v59 = *&v47[v50];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = v59;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v62 = String._bridgeToObjectiveC()();

  [v61 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v62];

  v63 = *&v47[v50];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v64 = swift_getObjCClassFromMetadata();
  v65 = v63;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v66 = String._bridgeToObjectiveC()();

  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v67 = String._bridgeToObjectiveC()();

  [v65 registerClass:v64 forSupplementaryViewOfKind:v66 withReuseIdentifier:v67];

  if (*&v47[v50])
  {
    [v47 addSubview:?];

    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1001C8E60()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for ImpressionsScrollObserver();
    swift_allocObject();

    v2 = ImpressionsScrollObserver.init(_:)();

    *(v1 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsScrollObserver) = v2;
  }
}

void (*sub_1001C8F1C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1001C8FB4;
}

void sub_1001C8FB4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v4 = v3[4];
      type metadata accessor for ImpressionsScrollObserver();
      swift_allocObject();
      *(v4 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsScrollObserver) = ImpressionsScrollObserver.init(_:)();
    }
  }

  free(v3);
}

uint64_t sub_1001C9088()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_100978CB0 = v5;
  return result;
}

void sub_1001C9194()
{
  qword_100978CE8 = &type metadata for CGFloat;
  unk_100978CF0 = &protocol witness table for CGFloat;
  qword_100978CD0 = 0x4008000000000000;
}

uint64_t sub_1001C91D0()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_100978D10);
  v1 = sub_1000056A8(v0, qword_100978D10);
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0608);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C9298()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10096D2D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_100978D10);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = type metadata accessor for StaticDimension();
  v12 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_1000056E0(v9);
  (*(v1 + 16))(v6, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  sub_100005A38(&v13, &unk_100978D28);
  return sub_100005A38(&v10, &unk_100978D50);
}

id sub_1001C9494(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration];
  if (v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

uint64_t sub_1001C9570()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FontSource();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchLockupListLayout.Metrics();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v8;
  v9 = type metadata accessor for OfferButtonMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for SmallLockupLayout.Metrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupCollectionSearchResultContentView();
  v81.receiver = v0;
  v81.super_class = v19;
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 bounds];
  v61 = v20;
  [v0 layoutMargins];
  v70 = *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration + 8);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v15, qword_1009D3798);
  v22 = [v1 traitCollection];
  (*(v16 + 16))(v18, v21, v15);
  v23 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v26 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v26 = qword_100991028;
    }

    v27 = sub_1000056A8(v9, v26);
    v28 = v58;
    (*(v10 + 16))(v58, v27, v9);
    (*(v10 + 32))(v14, v28, v9);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v10 + 8))(v14, v9);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

  (*(v16 + 8))(v18, v15);
  v29 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v30 = *(v1 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_iconHeadingView);
  v80[3] = type metadata accessor for ImageHeadingView();
  v80[4] = &protocol witness table for UIView;
  v80[0] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_titleHeadingView);
  result = type metadata accessor for SearchHeadingView();
  v79[3] = result;
  v79[4] = &protocol witness table for UIView;
  v79[0] = v31;
  v33 = *(v1 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView);
  if (!v33)
  {
    __break(1u);
    return result;
  }

  v58 = v1;
  v77[0] = v33;
  sub_100005744(0, &qword_100978E50);
  v34 = v30;
  v35 = v31;
  LayoutView.withMeasurements(representing:)();
  v18 = v62;
  v29 = v59;
  v1 = v60;
  if (qword_10096D2B8 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v36 = type metadata accessor for FontUseCase();
  v37 = sub_1000056A8(v36, qword_100978CB8);
  v38 = *(v36 - 8);
  v70 = *(v38 + 16);
  v57 = v38 + 16;
  v70(v29, v37, v36);
  v39 = v1[13];
  v56 = enum case for FontSource.useCase(_:);
  v55 = v39;
  v39(v29);
  v40 = type metadata accessor for StaticDimension();
  v77[3] = v40;
  v77[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v77);
  v75 = v18;
  v76 = &protocol witness table for FontSource;
  v41 = sub_1000056E0(v74);
  v42 = v1[2];
  v42(v41, v29, v18);
  StaticDimension.init(_:scaledLike:)();
  v43 = v1[1];
  v43(v29, v18);
  if (qword_10096D2C8 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v36, qword_100978CF8);
  v70(v29, v44, v36);
  v55(v29, v56, v18);
  v75 = v40;
  v76 = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v18;
  v73 = &protocol witness table for FontSource;
  v45 = sub_1000056E0(v71);
  v42(v45, v29, v18);
  StaticDimension.init(_:scaledLike:)();
  v43(v29, v18);
  v72 = &type metadata for CGFloat;
  v73 = &protocol witness table for CGFloat;
  v71[0] = 0x4030000000000000;
  v46 = v64;
  SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)();
  v48 = v65;
  v47 = v66;
  (*(v65 + 16))(v63, v46, v66);
  sub_10002C0AC(v80, v77);
  sub_10002C0AC(v79, v74);
  sub_10002C0AC(v78, v71);
  type metadata accessor for SearchLockupListLayout();
  swift_allocObject();
  v77[0] = SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)();
  (*(v48 + 8))(v46, v47);
  sub_100007000(v78);
  sub_100007000(v79);
  sub_100007000(v80);
  sub_1001CDBD4(&unk_1009744A0, 255, &type metadata accessor for SearchLockupListLayout);
  v49 = v67;
  v50 = v58;
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v68 + 8))(v49, v69);
  v51 = &v50[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  swift_beginAccess();
  v52 = *v51;
  if (*v51)
  {

    v52(v53);
    sub_10001F63C(v52);
  }
}

id sub_1001C9FD0()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_1001CD394;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002E9BD4;
  v7[3] = &unk_1008B8890;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

id sub_1001CA0FC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = Strong[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration];
  v6 = *&Strong[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_listConfiguration + 8];
  [Strong layoutMargins];
  v9 = sub_1001CD39C(v5, v6, a2, v7, v8);
  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001CD848;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006BBC70;
    aBlock[3] = &unk_1008B88B8;
    v11 = _Block_copy(aBlock);
    v12 = v9;

    [v12 setVisibleItemsInvalidationHandler:v11];

    _Block_release(v11);
    v4 = v12;
  }

  return v9;
}

void sub_1001CA26C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      type metadata accessor for ImpressionsScrollObserver();
      ScrollObserver.didScroll(visibleItems:layoutEnvironment:contentOffset:)();
    }
  }
}

uint64_t sub_1001CA55C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&qword_100978E28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v63 - v7;
  v9 = type metadata accessor for LockupCollectionSearchResult();
  sub_1001CDBD4(&qword_100973DB0, 255, &type metadata accessor for LockupCollectionSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v11 = v67;
  if (!v67)
  {
    return result;
  }

  v63[1] = v9;
  v64 = v8;
  v65 = v6;
  v66 = v5;
  *&v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_objectGraph] = a2;

  v12 = *&v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_iconHeadingView];
  LockupCollectionSearchResult.heading.getter();
  v13 = *(v12 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel);
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = *&v2[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_titleHeadingView];
  LockupCollectionSearchResult.title.getter();
  v16 = *(v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel);
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  v18 = LockupCollectionSearchResult.detailAction.getter();
  if (v18)
  {
    v19 = v18;
    Action.title.getter();
    if (v20)
    {
      v21 = *(v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton);
      v22 = String._bridgeToObjectiveC()();

      [v21 setTitle:v22 forState:0];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;
      v25 = (v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
      v26 = *(v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
      *v25 = sub_1001CD38C;
      v25[1] = v24;

      sub_10001F63C(v26);

      goto LABEL_7;
    }
  }

  [*(v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton) setTitle:0 forState:0];
  v27 = (v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  v28 = *(v15 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  *v27 = 0;
  v27[1] = 0;
  sub_10001F63C(v28);
LABEL_7:
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v29 = v67;
  v30 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v31 = UITraitCollection.isSizeClassCompact.getter();

  v32 = 4;
  if (v31)
  {
    v32 = 2;
  }

  if (v30)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  result = sub_1001C9494(((v31 & 1) == 0), v33);
  v34 = *&v3[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v34)
  {
    __break(1u);
    goto LABEL_57;
  }

  swift_allocObject();
  swift_weakInit();
  v35 = objc_allocWithZone(sub_10002849C(&unk_100978E30));
  v36 = v34;
  v37 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v38 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource;
  v39 = *&v3[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource];
  *&v3[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource] = v37;
  v40 = v37;

  v41 = swift_allocObject();
  *(v41 + 16) = (v31 & 1) == 0;
  *(v41 + 24) = v33;
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  if ((v31 & 1) == 0)
  {
    v44 = v11;
    v45 = LockupCollectionSearchResult.items.getter();
    v46 = v45;
    v47 = v45 & 0xFFFFFFFFFFFFFF8;
    v48 = v45 >> 62;
    if (!(v45 >> 62))
    {
      v49 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49 >= v33)
      {
        v50 = v33;
      }

      else
      {
        v50 = *(v47 + 16);
      }

      if (v49 >= v50)
      {
LABEL_20:
        if ((v46 & 0xC000000000000001) != 0 && v50)
        {
          type metadata accessor for Lockup();

          v51 = 0;
          do
          {
            v52 = v51 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v51);
            v51 = v52;
          }

          while (v50 != v52);
        }

        else
        {
        }

        if (v48)
        {
          v44 = _CocoaArrayWrapper.subscript.getter();
          v31 = v53;
          v33 = v54;
          v50 = v55;

          if (v50)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v33 = 0;
          v44 = v46 & 0xFFFFFFFFFFFFFF8;
          v31 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
          v50 = (2 * v50) | 1;
          if (v50)
          {
LABEL_31:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v56 = swift_dynamicCastClass();
            if (!v56)
            {
              swift_unknownObjectRelease();
              v56 = _swiftEmptyArrayStorage;
            }

            v57 = *(v56 + 2);

            if (!__OFSUB__(v50 >> 1, v33))
            {
              if (v57 == (v50 >> 1) - v33)
              {
                v58 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v43 = v64;
                if (v58)
                {
LABEL_37:

                  v42 = LockupCollectionSearchResult.__allocating_init(from:withItems:)();
                  goto LABEL_38;
                }

LABEL_36:
                swift_unknownObjectRelease();
                goto LABEL_37;
              }

              goto LABEL_55;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1005E7C90(v44, v31, v33, v50);
        v43 = v64;
        goto LABEL_36;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v45 < 0)
    {
      v44 = v45;
    }

    else
    {
      v44 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v31 >= v33)
      {
        v62 = v33;
      }

      else
      {
        v62 = v31;
      }

      if (v31 >= 0)
      {
        v50 = v62;
      }

      else
      {
        v50 = v33;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v50)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v42 = v11;
  v43 = v64;
LABEL_38:
  sub_10002849C(&qword_100973210);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1007B0B70;
  *(v59 + 32) = v42;
  swift_getKeyPath();
  sub_1001CDBD4(&qword_100978E40, 255, &type metadata accessor for LockupCollectionSearchResult);
  sub_1001CDBD4(&qword_100978E48, 255, &type metadata accessor for Lockup);

  static DiffableData.makeSnapshot<A, B>(fromSections:withItemsAt:)();

  v60 = *&v3[v38];
  if (v60)
  {
    v61 = v60;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  [v3 setNeedsLayout];

  return (*(v65 + 8))(v43, v66);
}

void sub_1001CACE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_objectGraph);
    v8 = Strong;

    if (v7)
    {
      v9 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10002B894(v5, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(a2, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

char *sub_1001CAE84(void *a1)
{
  v2 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v14 - 8);
  v16 = v41 - v15;
  v17 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v17 - 8);
  v43 = v41 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v41[3] = v4;
  v42 = v10;
  v20 = Strong;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v21 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [a1 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:isa];

  v24 = swift_dynamicCastClass();
  if (v24)
  {
    sub_10002849C(&qword_100974478);
    DiffableLens.value.getter();
    v25 = v44;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    v26 = v20;
    inject<A, B>(_:from:)();
    v41[2] = v44;
    v27 = type metadata accessor for OfferStyle();
    v28 = v43;
    (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
    v29 = *&v24[OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView];
    v30 = sub_10002849C(&unk_100973240);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    v31 = type metadata accessor for OfferEnvironment();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    v32 = sub_10002849C(&unk_1009701A0);
    v33 = v42;
    (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
    v34 = type metadata accessor for OfferTint();
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    sub_1004F3190(v25, v29, v16, v26, 0, 0, v28, v13, v7, v33);
    sub_10002B894(v7, &unk_100973AD0);
    v29[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v29 setNeedsLayout];
    sub_10002B894(v33, &unk_100970150);
    sub_10002B894(v13, &unk_100970160);
    sub_10002B894(v16, &unk_100973230);
    v35 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v36 = *&v29[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    ArtworkView.image.setter();
    v37 = type metadata accessor for ArtworkView();
    sub_1001CDBD4(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
    v41[1] = v37;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v42 = v25;
    if (Lockup.icon.getter())
    {
      v41[0] = v35;
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v38, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v36 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v36 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v39 = *&v29[v41[0]];
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    [v24 setNeedsLayout];

    sub_10002B894(v43, &qword_100973AE0);
  }

  else
  {
  }

  return v24;
}

uint64_t sub_1001CB5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = String._bridgeToObjectiveC()();
  type metadata accessor for SeparatorSpacerReusableView();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v9 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = swift_dynamicCastClass();
  v13 = v12;
  if (!v12)
  {

    return v13;
  }

  v14 = v12 + OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_separatorInsets;
  *v14 = xmmword_1007BE7E0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  result = IndexPath.item.getter();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || a6 != -1)
  {
    [v13 setHidden:(result + 1) % a6 == 0];
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1001CB748@<X0>(uint64_t *a1@<X8>)
{
  result = LockupCollectionSearchResult.items.getter();
  *a1 = result;
  return result;
}

void sub_1001CB774(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100974470);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_10002849C(&qword_100974478);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for IndexPath();
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v14;
  v48 = v11;
  v57 = Strong;
  v46 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView;
  v19 = *&Strong[OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 indexPathsForVisibleItems];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = v21;
  v22 = v48;
  v54 = *(v21 + 16);
  if (!v54)
  {
LABEL_21:

    return;
  }

  v23 = 0;
  v52 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v53 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource;
  v51 = v55 + 16;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v42 = (v47 + 6);
  v39 = (v47 + 4);
  v38 = (v47 + 1);
  v43 = (v12 + 8);
  v24 = (v55 + 8);
  v47 = (v12 + 56);
  v40 = v7;
  v44 = v10;
  while (v23 < *(v56 + 16))
  {
    (*(v55 + 16))(v17, v52 + *(v55 + 72) * v23, v15);
    v25 = *&v57[v53];
    if (!v25)
    {
      (*v24)(v17, v15);
      (*v47)(v10, 1, 1, v22);
LABEL_6:
      sub_10002B894(v10, &qword_100974470);
      goto LABEL_7;
    }

    v26 = v25;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*v49)(v10, 1, v22) == 1)
    {
      (*v24)(v17, v15);
      goto LABEL_6;
    }

    v27 = v10;
    v28 = v15;
    v29 = v4;
    (*v45)(v50, v27, v22);
    v30 = *&v57[v46];
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (v33)
    {
      swift_getKeyPath();
      v4 = v29;
      v34 = v48;
      v35 = v50;
      DiffableLens.subscript.getter();

      if ((*v42)(v4, 1, v5) == 1)
      {

        (*v43)(v35, v34);
        (*v24)(v17, v28);
        sub_10002B894(v4, &qword_100973D30);
        v22 = v34;
        v15 = v28;
      }

      else
      {
        v36 = v40;
        (*v39)(v40, v4, v5);
        sub_100005744(0, &qword_100978E10);
        UIPopoverPresentationControllerSourceItem.frame(in:)();
        if ((v58 & 1) == 0)
        {
          ImpressionsCalculator.addElement(_:at:)();
        }

        (*v38)(v36, v5);
        v22 = v48;
        (*v43)(v50, v48);
        v15 = v28;
        (*v24)(v17, v28);
      }
    }

    else
    {
      v22 = v48;
      (*v43)(v50, v48);
      (*v24)(v17, v28);
      v4 = v29;
      v15 = v28;
    }

    v10 = v44;
LABEL_7:
    if (v54 == ++v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1001CBE70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupCollectionSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_1001CBFE8(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1001C8F1C(v2);
  return sub_1000BD370;
}

uint64_t sub_1001CC058()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1001CC0B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1001CC174(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_1001CC2D8;
}

uint64_t sub_1001CC254(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1001CDBD4(&qword_100978DF8, a2, type metadata accessor for LockupCollectionSearchResultContentView);
  result = sub_1001CDBD4(&unk_100978E00, v3, type metadata accessor for LockupCollectionSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

double sub_1001CC2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unsigned int a7, void (*a8)(char *, uint64_t, uint64_t), void *a9, uint64_t a10)
{
  v88 = a8;
  v87 = a7;
  v84 = a5;
  v85 = a6;
  v81 = a3;
  v82 = a4;
  v98 = a2;
  v80 = a1;
  v90 = type metadata accessor for FontSource();
  v86 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchLockupListLayout.Metrics();
  v93 = *(v11 - 8);
  v94 = v11;
  __chkstk_darwin(v11);
  v91 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v71 - v14;
  v97 = type metadata accessor for LabelPlaceholderCompatibility();
  v99 = *(v97 - 8);
  __chkstk_darwin(v97);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ImageHeadingView();
  if (qword_10096D2B0 != -1)
  {
    swift_once();
  }

  v17 = qword_100978CB0;
  if (qword_10096D2B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_100978CB8);
  if (qword_10096D2C0 != -1)
  {
    swift_once();
  }

  v20 = sub_100005744(0, &qword_1009730E0);
  v21 = [a9 traitCollection];
  v96 = v20;
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v23 = objc_opt_self();
  v78 = v22;
  v75 = [v23 configurationWithFont:v22];
  v24 = [v17 imageByApplyingSymbolConfiguration:?];
  v25 = v24;
  v95 = v18;
  if (v24)
  {
    [v24 size];
  }

  v26 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v27 = LayoutViewPlaceholder.init(representing:)();

  v28 = [a9 traitCollection];
  v83 = v19;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v29 = type metadata accessor for Feature();
  *(&v109 + 1) = v29;
  v77 = sub_1001CDBD4(&qword_100972E50, 255, &type metadata accessor for Feature);
  *&v110 = v77;
  v30 = sub_1000056E0(&v108);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v76 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73 = v31 + 104;
  v74 = v32;
  v32(v30);
  isFeatureEnabled(_:)();
  sub_100007000(&v108);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  v33 = LabelPlaceholderCompatibility.referableLayoutTextView.getter();
  v35 = v34;
  v36 = *(v99 + 8);
  v99 += 8;
  v72 = v36;
  v36(v16, v97);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_1006DDD30(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_100978CD0, &v108);

  swift_unknownObjectRelease();
  sub_10002A39C(&v108, &v113);
  v38 = swift_allocObject();
  sub_1000FDA14(&v113, (v38 + 16));
  swift_allocObject();
  v98 = LayoutViewPlaceholder.init(measureWith:)();

  swift_unknownObjectRelease();

  sub_100007000(&v108);
  if (qword_10096D2C8 != -1)
  {
    swift_once();
  }

  v39 = v95;
  v40 = sub_1000056A8(v95, qword_100978CF8);
  if (qword_10096D2D0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v39, qword_100978D10);
  if (qword_10096D2D8 != -1)
  {
    swift_once();
  }

  v41 = [a9 traitCollection];
  v80 = v40;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *(&v109 + 1) = v29;
  *&v110 = v77;
  v42 = sub_1000056E0(&v108);
  v74(v42, v76, v29);
  isFeatureEnabled(_:)();
  sub_100007000(&v108);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  v43 = LabelPlaceholderCompatibility.referableLayoutTextView.getter();
  v45 = v44;
  v72(v16, v97);
  v46 = swift_allocObject();
  v47 = v85;
  *(v46 + 16) = v84;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = LayoutViewPlaceholder.init(measureWith:)();
  sub_1000FDA3C(&unk_100978D28, &v108);
  v49 = swift_allocObject();
  v50 = v111;
  *(v49 + 48) = v110;
  *(v49 + 64) = v50;
  *(v49 + 80) = v112;
  v51 = v109;
  *(v49 + 16) = v108;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = LayoutViewPlaceholder.init(measureWith:)();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v87 & 1;
  *(v53 + 32) = v88;
  swift_allocObject();
  v99 = LayoutViewPlaceholder.init(measureWith:)();
  *(&v109 + 1) = v26;
  *&v110 = &protocol witness table for LayoutViewPlaceholder;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v98;
  v114 = v26;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v52;
  v97 = v52;
  v107[3] = v26;
  v107[0] = v99;
  v54 = *(v39 - 8);
  v88 = *(v54 + 16);
  v96 = v54 + 16;
  v55 = v39;
  v56 = v89;
  v88(v89, v83, v55);
  v87 = enum case for FontSource.useCase(_:);
  v57 = v86;
  v85 = *(v86 + 104);
  v58 = v90;
  v85(v56);
  v59 = type metadata accessor for StaticDimension();
  v106[3] = v59;
  v106[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v106);
  v104 = v58;
  v105 = &protocol witness table for FontSource;
  v60 = sub_1000056E0(v103);
  v61 = *(v57 + 16);
  v61(v60, v56, v58);

  StaticDimension.init(_:scaledLike:)();
  v62 = *(v57 + 8);
  v62(v56, v58);
  v88(v56, v80, v95);
  (v85)(v56, v87, v58);
  v104 = v59;
  v105 = &protocol witness table for StaticDimension;
  sub_1000056E0(v103);
  v101 = v58;
  v102 = &protocol witness table for FontSource;
  v63 = sub_1000056E0(v100);
  v61(v63, v56, v58);
  StaticDimension.init(_:scaledLike:)();
  v62(v56, v58);
  v101 = &type metadata for CGFloat;
  v102 = &protocol witness table for CGFloat;
  v100[0] = 0x4030000000000000;
  v64 = v92;
  SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)();
  v66 = v93;
  v65 = v94;
  (*(v93 + 16))(v91, v64, v94);
  sub_10002C0AC(&v108, v106);
  sub_10002C0AC(&v113, v103);
  sub_10002C0AC(v107, v100);
  type metadata accessor for SearchLockupListLayout();
  swift_allocObject();
  v67 = SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)();
  (*(v66 + 8))(v64, v65);
  sub_100007000(v107);
  sub_100007000(&v113);
  sub_100007000(&v108);
  *&v108 = v67;
  sub_1001CDBD4(&qword_100978E20, 255, &type metadata accessor for SearchLockupListLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v69 = v68;

  return v69;
}

double sub_1001CCF4C()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LockupCollectionSearchResult();
  sub_1001CDBD4(&qword_100973DB0, 255, &type metadata accessor for LockupCollectionSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v28)
  {
    return 0.0;
  }

  v26 = v3;
  v27 = v2;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  v25 = v0;

  PageGrid.init(from:breakpointOverrides:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v28;
  v7 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v8 = UITraitCollection.isSizeClassCompact.getter();

  v9 = 4;
  if (v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v9 = 1;
  }

  v24 = v9;
  HIDWORD(v23) = v8 ^ 1;
  v10 = LockupCollectionSearchResult.heading.getter();
  v12 = v11;
  v13 = LockupCollectionSearchResult.title.getter();
  v15 = v14;
  if (LockupCollectionSearchResult.detailAction.getter())
  {
    v16 = Action.title.getter();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  PageGrid.componentMeasuringSize(spanning:)();
  v20 = sub_100079F24();
  swift_getObjectType();
  sub_1001CC2E0(v10, v12, v13, v15, v16, v18, BYTE4(v23) & 1, v24, v20, v25);
  v19 = v21;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v5, v27);
  return v19;
}

void sub_1001CD294()
{
  *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v3 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v0 + v2) = CompoundScrollObserver.init(children:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001CD39C(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v15 = v8;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v41 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10002849C(&qword_100973210);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B0B70;
  *(v21 + 32) = v17;
  sub_100005744(0, &qword_100982860);
  v22 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v28 = v27;
    swift_unknownObjectRelease();
    v10 = v28 - a4 - a5;
    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v41];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_1001CD850()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_10002849C(&qword_100974470);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10002849C(&qword_100974478);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_lockupDataSource);
    if (v13)
    {

      v14 = v13;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        DiffableLens.value.getter();
        v17 = Lockup.clickAction.getter();

        if (!v17)
        {
          (*(v8 + 8))(v11, v7);

          return;
        }

        v18 = sub_10002849C(&unk_100974490);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v3, 1, v18) != 1)
        {
          sub_1005F9AF4(v17, 1, v12, v3);

          (*(v8 + 8))(v11, v7);
          (*(v19 + 8))(v3, v18);
          return;
        }

        (*(v8 + 8))(v11, v7);

        v15 = &unk_100972A00;
        v16 = v3;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    v15 = &qword_100974470;
    v16 = v6;
LABEL_7:
    sub_10002B894(v16, v15);
  }
}

uint64_t sub_1001CDBD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1001CDC30()
{
  result = qword_100978E60;
  if (!qword_100978E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978E60);
  }

  return result;
}

id sub_1001CDC8C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_10002849C(&qword_10097B110);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B10D0;
  *(v18 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

void sub_1001CE028()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
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
}

double sub_1001CE0F4()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_1001CE16C(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
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
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_1001CE26C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_1001CE2C4;
}

void sub_1001CE2C4(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_1001CE16C(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_1001CE3DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001CE4AC()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001CE550()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1001CE5A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_1001CE668()
{
  v1 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1001CE6B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1001CE76C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_1001CE7A0(void *a1))(void *a1)
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
  v2[4] = sub_1001CE26C(v2);
  return sub_1000BD370;
}

double sub_1001CE810()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    static CGRect.frame(pinnedAtTopCenterOf:of:)();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_1001CEA54()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_1001CEBA8(char *a1)
{
  [*&a1[OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

uint64_t sub_1001CEBFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1001CEC58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001CED20()
{
  type metadata accessor for RibbonBarItem();
  sub_1001CEE9C(&qword_100978EE0, &type metadata accessor for RibbonBarItem);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v1)
  {
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    sub_1006E9210(v1, v1);
  }

  return result;
}

uint64_t sub_1001CEE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001CEE9C(&qword_100974D00, type metadata accessor for RibbonBarItemCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001CEE9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001CEEE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];
    if (v2)
    {
      v3 = v2;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v1 collectionView:v3 didSelectItemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1001CEFAC()
{
  v1 = v0;
  v46 = swift_isaMask & *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchTime();
  v48 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v45 - v8;
  v9 = type metadata accessor for IndexPath();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v45 - v12;
  v13 = type metadata accessor for DiffablePageContentIdentifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_10097F2F8;
  result = swift_beginAccess();
  v19 = *(v0 + v17);
  if (!v19)
  {
    return result;
  }

  v20 = v19;
  aBlock[6] = ShelfBasedPageScrollAction.shelfId.getter();
  aBlock[7] = v21;
  AnyHashable.init<A>(_:)();
  DiffablePageContentIdentifier.init(_:)();
  dispatch thunk of ModelMappedDiffableDataSource.sectionIndex(for:)();
  v23 = v22;

  result = (*(v14 + 8))(v16, v13);
  if (v23)
  {
    return result;
  }

  ShelfBasedPageScrollAction.index.getter();
  v24 = v58;
  IndexPath.init(item:section:)();
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = result;
  v26.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v27 = result;
  [result contentInset];
  v29 = v28;

  [v25 _scrollToItemAtIndexPath:v26.super.isa atScrollPosition:1 additionalInsets:1 animated:{16.0 - v29, 0.0, 0.0, 0.0}];
  if (ShelfBasedPageScrollAction.clicksOnScroll.getter())
  {
    ShelfBasedPageScrollAction.index.getter();
    if ((v30 & 1) == 0)
    {
      sub_1000076C0();
      v31 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v32 = v47;
      + infix(_:_:)();
      v48 = *(v48 + 8);
      (v48)(v6, v55);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v56;
      v34 = v57;
      v36 = v45;
      (*(v56 + 16))(v45, v58, v57);
      v37 = (*(v35 + 80) + 80) & ~*(v35 + 80);
      v38 = swift_allocObject();
      v39 = v46;
      *(v38 + 16) = *(v46 + 552);
      *(v38 + 24) = *(v39 + 560);
      *(v38 + 40) = *(v39 + 576);
      *(v38 + 48) = *(v39 + 584);
      *(v38 + 64) = *(v39 + 600);
      *(v38 + 72) = v33;
      (*(v35 + 32))(v38 + v37, v36, v34);
      aBlock[4] = sub_1001CF6F0;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008B89D0;
      v40 = _Block_copy(aBlock);

      v41 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10002D150();
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      v42 = v51;
      v43 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v40);

      (*(v53 + 8))(v42, v43);
      v44 = v41;
      v24 = v58;
      (*(v50 + 8))(v44, v52);
      (v48)(v32, v55);
    }
  }

  return (*(v56 + 8))(v24, v57);
}

uint64_t sub_1001CF7AC(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100005744(0, &qword_1009711C0);
  v4 = v3;
  sub_10002849C(&qword_100978EF8);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10002A400(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_100007000(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10002B894(&v9, &unk_100986B90);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001CF8B0(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100005744(0, &qword_1009711C0);
  v4 = v3;
  sub_10002849C(&qword_100978F00);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10002A400(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_100007000(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10002B894(&v9, &unk_100986B80);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001CF9BC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for FlowPresentationContext();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v26 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v32, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v20(v12, 1, v13) != 1)
    {
      sub_10002B894(v12, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v12, v19);
  }

  sub_100118188(v19, v16);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_10013B6D8(v19, type metadata accessor for FlowDestination);
    v21 = 1;
  }

  else
  {
    FlowAction.presentationContext.getter();
    FlowAction.animationBehavior.getter();
    sub_10065DB50(v29);
    v23 = v27;
    v22 = v28;
    (*(v28 + 104))(v27, enum case for FlowPresentationContext.select(_:), v3);
    sub_1001D1704();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v32[0] == v30 && v32[1] == v31)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v24 = *(v22 + 8);
    v24(v23, v3);
    v24(v29, v3);
    sub_10013B6D8(v9, type metadata accessor for FlowPresentationHints);
    sub_10013B6D8(v19, type metadata accessor for FlowDestination);
  }

  sub_10013B6D8(v16, type metadata accessor for FlowDestination);
  return v21 & 1;
}

void sub_1001CFE08(void *a1)
{
  v2 = sub_10002849C(&unk_100982AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10002849C(&qword_100975528);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NavigationTab();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a1 tabBar];
  v17 = [v16 items];

  if (!v17)
  {
    return;
  }

  v26 = v4;
  sub_100005744(0, &qword_100982AC0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((Array.isNotEmpty.getter() & 1) == 0 || (v19 = [a1 selectedIndex], v19 == NSNotFound.getter()))
  {

    return;
  }

  v20 = [a1 selectedIndex];
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v9;
      v22 = *(v18 + 8 * v20 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v21 = v9;
LABEL_11:

  [v22 tag];

  NavigationTab.init(intValue:)();
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &qword_100975528);
  }

  else
  {
    (*(v21 + 32))(v15, v7, v8);
    type metadata accessor for MetricsActivity();
    static MetricsActivity.current.getter();
    NavigationTab.pageContext.getter();
    dispatch thunk of MetricsActivity.changeContext(_:)();

    v23 = [objc_opt_self() standardUserDefaults];
    (*(v21 + 16))(v11, v15, v8);
    v24 = v26;
    StoreTab.Identifier.init(navigationTab:)();
    sub_100736DBC(v24);

    type metadata accessor for AppStoreOnDeviceRecommendationsManager();
    BaseObjectGraph.optional<A>(_:)();
    v25 = v27;
    if (v27)
    {
      dispatch thunk of AppStoreOnDeviceRecommendationsManager.loadInferences(for:)();
    }

    (*(v21 + 8))(v15, v8);
  }
}

uint64_t sub_1001D0228(uint64_t a1, void *a2, uint64_t a3)
{
  v141 = sub_10002849C(&qword_100978EE8);
  __chkstk_darwin(v141);
  v144 = &v126 - v6;
  v143 = type metadata accessor for FlowAnimationBehavior();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v139 = &v126 - v9;
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100975528);
  __chkstk_darwin(v12 - 8);
  v131 = &v126 - v13;
  v132 = type metadata accessor for NavigationTab();
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v151 = &v126 - v16;
  v17 = type metadata accessor for ActionOutcome();
  v148 = *(v17 - 8);
  v149 = v17;
  __chkstk_darwin(v17);
  v147 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v19 - 8);
  v129 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v133 = &v126 - v22;
  v23 = type metadata accessor for FlowPresentationContext();
  v150 = *(v23 - 8);
  __chkstk_darwin(v23);
  v155 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v25);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v28 - 8);
  v137 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v126 - v31;
  v154 = type metadata accessor for FlowDestination();
  v33 = *(v154 - 8);
  __chkstk_darwin(v154);
  v138 = (&v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = (&v126 - v36);
  __chkstk_darwin(v38);
  v40 = &v126 - v39;
  objc_opt_self();
  v156 = swift_dynamicCastObjCClass();
  v153 = a2;
  if (v156)
  {
    v41 = a2;
  }

  else
  {
    v156 = [a2 tabBarController];
    if (!v156)
    {
      sub_10002849C(&qword_1009764A0);
      sub_1001D1670();
      swift_allocError();
      return Promise.__allocating_init(error:)();
    }
  }

  v145 = a3;
  sub_10002849C(&qword_1009764A0);
  v146 = Promise.__allocating_init()();

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v158, v32);
  v42 = *(v33 + 48);
  v43 = v154;
  v44 = v42(v32, 1, v154);
  v136 = v33 + 48;
  v135 = v42;
  if (v44 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v45 = v42(v32, 1, v43);
    v46 = v23;
    if (v45 != 1)
    {
      sub_10002B894(v32, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v32, v40);
    v46 = v23;
  }

  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();
  v47 = [v153 traitCollection];
  sub_10065DB50(v155);

  v48 = [v156 viewControllers];
  v49 = v151;
  v152 = v46;
  if (v48)
  {
    v50 = v48;
    v51 = v27;
    sub_100005744(0, &qword_1009711C0);
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v53);
    *(&v126 - 2) = v40;
    v54 = sub_1004F6538(sub_1001D16E4, (&v126 - 4), v52);

    if (v54)
    {
      v55 = v156;
      [v156 setTransientViewController:0 animated:0];
      [v55 setSelectedViewController:v54];
      v56 = v145;
      sub_1001CFE08(v55);
      v57 = v40;
      sub_100118188(v40, v37);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = v51;
        v59 = v146;
        if (*v37)
        {
          v60 = sub_10002849C(&unk_100974490);

          v61 = v133;
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v62 = *(v60 - 8);
          v63 = (*(v62 + 48))(v61, 1, v60);
          v64 = v152;
          if (v63 == 1)
          {

            (*(v150 + 8))(v155, v64);
            sub_10013B6D8(v58, type metadata accessor for FlowPresentationHints);
            sub_10002B894(v61, &unk_100972A00);
LABEL_32:
            v84 = v57;
LABEL_56:
            sub_10013B6D8(v84, type metadata accessor for FlowDestination);
            return v59;
          }

          sub_1005FA0B0(v85, 1, v56, v61);

          (*(v62 + 8))(v61, v60);
          Promise.pipe(to:)();

          (*(v150 + 8))(v155, v64);
LABEL_31:
          sub_10013B6D8(v58, type metadata accessor for FlowPresentationHints);
          goto LABEL_32;
        }
      }

      else
      {
        sub_10013B6D8(v37, type metadata accessor for FlowDestination);
        v58 = v51;
        v59 = v146;
      }

      v82 = v147;
      v81 = v148;
      v83 = v149;
      (*(v148 + 104))(v147, enum case for ActionOutcome.performed(_:), v149);
      Promise.resolve(_:)();

      (*(v81 + 8))(v82, v83);
      (*(v150 + 8))(v155, v152);
      goto LABEL_31;
    }

    v27 = v51;
    v46 = v152;
  }

  v65 = [v156 viewControllers];
  v130 = v40;
  if (!v65)
  {
    goto LABEL_40;
  }

  v66 = v65;
  sub_100005744(0, &qword_1009711C0);
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v68);
  *(&v126 - 2) = v40;
  v69 = sub_1004F6538(sub_1001D16C4, (&v126 - 4), v67);

  if (!v69)
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {

    goto LABEL_40;
  }

  v71 = [v70 viewControllers];
  v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v72 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v134;
  if (!result)
  {

    goto LABEL_40;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:
    v76 = v75;

    type metadata accessor for TabPlaceholderViewController();
    if (swift_dynamicCastClass())
    {
      v77 = sub_100040EAC();
      if (v77)
      {
        v134 = v76;
        v78 = v77;
        [v77 tag];
        v79 = v131;
        NavigationTab.init(intValue:)();

        v80 = v132;
        if ((v74[6])(v79, 1, v132) != 1)
        {
          (v74)[4](v49, v79, v80);
          (v74)[2](v127, v49, v80);
          sub_10002849C(&qword_100973210);
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1007B0B70;
          *(v117 + 32) = a1;

          static ActionMetrics.notInstrumented.getter();
          type metadata accessor for TabChangeAction();
          swift_allocObject();
          TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
          v118 = sub_10002849C(&unk_100974490);
          v119 = v129;
          v120 = v145;
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v121 = v74;
          v122 = *(v118 - 8);
          if ((*(v122 + 48))(v119, 1, v118) == 1)
          {

            (v121[1])(v49, v132);
            (*(v150 + 8))(v155, v46);
            sub_10013B6D8(v27, type metadata accessor for FlowPresentationHints);
            sub_10002B894(v119, &unk_100972A00);
            v84 = v130;
            v59 = v146;
            goto LABEL_56;
          }

          sub_1005FA0E4(v123, 1, v120, v119);

          (*(v122 + 8))(v119, v118);
          v124 = v146;
          Promise.pipe(to:)();

          (v121[1])(v49, v132);
          v125 = v46;
          v59 = v124;
          (*(v150 + 8))(v155, v125);
          sub_10013B6D8(v27, type metadata accessor for FlowPresentationHints);
          goto LABEL_55;
        }
      }

      else
      {

        v79 = v131;
        (v74[7])(v131, 1, 1, v132);
      }

      sub_10002B894(v79, &qword_100975528);
    }

    else
    {
    }

LABEL_40:
    v86 = v153;
    v87 = sub_100623FBC(v153);
    if (!v87 || (v157 = v87, sub_100005744(0, &qword_100975960), sub_10002849C(&qword_100975968), (swift_dynamicCast() & 1) == 0))
    {
      v159 = 0;
      memset(v158, 0, sizeof(v158));
    }

    v88 = [v86 traitCollection];

    dispatch thunk of Action.clickSender.getter();
    v89 = v137;
    sub_100462678(a1, &v157, v137);
    v90 = v154;
    v91 = v135;
    if (v135(v89, 1, v154) == 1)
    {
      v92 = v138;
      swift_storeEnumTagMultiPayload();
      if (v91(v89, 1, v90) != 1)
      {
        sub_10002B894(v89, &unk_1009796F0);
      }
    }

    else
    {
      v92 = v138;
      sub_10013A05C(v89, v138);
    }

    v93 = FlowAction.referrerUrl.getter();
    v95 = v94;
    v96 = v139;
    FlowAction.referrerData.getter();
    sub_1003C1668(v92, v88, v93, v95, v96, v158, v145, 1);
    v98 = v97;

    sub_10002B894(v96, &unk_1009767C0);
    sub_10013B6D8(v92, type metadata accessor for FlowDestination);
    v99 = v140;
    FlowAction.animationBehavior.getter();
    v100 = *(v141 + 48);
    v101 = v142;
    v102 = v144;
    v103 = v143;
    (*(v142 + 32))(v144, v99, v143);
    v104 = v150;
    v105 = v152;
    (*(v150 + 16))(v102 + v100, v155, v152);
    v106 = (*(v101 + 88))(v102, v103);
    v107 = v27;
    if (v106 == enum case for FlowAnimationBehavior.infer(_:))
    {
      v108 = (*(v104 + 88))(v102 + v100, v105);
      v109 = v146;
      if (v108 != enum case for FlowPresentationContext.presentModal(_:))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v109 = v146;
      if (v106 != enum case for FlowAnimationBehavior.always(_:))
      {
LABEL_53:
        v110 = v105;
        sub_10002B894(v102, &qword_100978EE8);
        v111 = 0;
        goto LABEL_54;
      }

      (*(v104 + 8))(v102 + v100, v105);
    }

    v110 = v105;
    (*(v101 + 8))(v102, v103);
    v111 = 1;
LABEL_54:
    v112 = v156;
    [v156 setTransientViewController:v98 animated:v111];
    v114 = v147;
    v113 = v148;
    v115 = v149;
    (*(v148 + 104))(v147, enum case for ActionOutcome.performed(_:), v149);
    Promise.resolve(_:)();

    v116 = v114;
    v59 = v109;
    (*(v113 + 8))(v116, v115);
    (*(v104 + 8))(v155, v110);
    sub_10013B6D8(v107, type metadata accessor for FlowPresentationHints);
    sub_10002B894(v158, &unk_100981880);
LABEL_55:
    v84 = v130;
    goto LABEL_56;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v72 + 32);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001D1670()
{
  result = qword_100978EF0;
  if (!qword_100978EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978EF0);
  }

  return result;
}

unint64_t sub_1001D1704()
{
  result = qword_100975970;
  if (!qword_100975970)
  {
    type metadata accessor for FlowPresentationContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975970);
  }

  return result;
}

unint64_t sub_1001D1770()
{
  result = qword_100978F08;
  if (!qword_100978F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F08);
  }

  return result;
}

uint64_t sub_1001D17D4()
{
  v0 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100970EE8);
  sub_100005644(v4, qword_100978F28);
  sub_1000056A8(v4, qword_100978F28);
  static SearchResultsContextCardLayout.Metrics.standard.getter();
  SearchResultsContextCardLayout.Metrics.maxCardWidth.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[1] = v6;
  sub_10005E808();
  return PageGrid.DirectionalValue.init(_:)();
}

uint64_t sub_1001D191C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&qword_100970EE8);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10005E808();
  return PageGrid.DirectionalValue.init(_:)();
}

uint64_t sub_1001D19A0()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v56 = &v44 - v1;
  v64 = type metadata accessor for PageGrid.HorizontalMargins();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v3 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v44 - v8;
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v54.i64[0] = type metadata accessor for PageGrid.Breakpoint();
  v13 = *(v54.i64[0] - 8);
  __chkstk_darwin(v54.i64[0]);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v44 - v16;
  sub_10002849C(&qword_100970EF0);
  v17 = *(v13 + 72);
  v49 = v13;
  v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007B5360;
  v51 = v19;
  v57 = v19 + v18;
  if (qword_10096D2E0 != -1)
  {
    swift_once();
  }

  v58 = v17;
  v20 = sub_1000056A8(v4, qword_100978F10);
  v23 = *(v5 + 16);
  v22 = v5 + 16;
  v21 = v23;
  v46 = v20;
  (v23)(v12);
  v65 = 0x4030000000000000;
  v66 = 0x4020000000000000;
  v63 = sub_10005E808();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  if (qword_10096D2F0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v4, qword_100978F40);
  v25 = v4;
  v53 = v4;
  v62 = v24;
  v26 = v55;
  v21(v55, v24, v25);
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v45 = v21;
  v32 = v59 + 104;
  v60 = *(v59 + 104);
  v60(v3);
  LOBYTE(v66) = 0;
  v52 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v66 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v47;
  v34 = v26;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  PageGrid.Breakpoint.centered.getter();
  v44 = v12;
  v49 = *(v49 + 8);
  (v49)(v33, v54.i64[0]);
  v35 = v53;
  v36 = v45;
  v45(v12, v46, v53);
  v65 = 0x4034000000000000;
  v66 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36(v34, v62, v35);
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v59 = v32;
  (v60)(v3, v61, v64);
  LOBYTE(v66) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v66 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v48;
  v39 = v44;
  v40 = v55;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  PageGrid.Breakpoint.centered.getter();
  (v49)(v38, v54.i64[0]);
  v41 = v36;
  v42 = v53;
  if (qword_10096D2E8 != -1)
  {
    swift_once();
  }

  v56 = sub_1000056A8(v42, qword_100978F28);
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v41(v40, v62, v42);
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v54;
  (v60)(v3, v61, v64);
  PageGrid.Breakpoint.init(range:centeredColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v41(v40, v62, v42);
  *v3 = v54;
  (v60)(v3, v61, v64);
  static UIEdgeInsets.horizontal(left:right:)();
  PageGrid.Breakpoint.init(range:centeredColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v41(v39, v56, v42);
  v66 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v41(v40, v62, v42);
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (v60)(v3, v61, v64);
  PageGrid.Breakpoint.init(range:centeredColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v51;
}

uint64_t sub_1001D231C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for PageGrid.HorizontalMargins();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  __chkstk_darwin(v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10002849C(&qword_100970EF0);
  v21 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v56 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_1007B23A0;
  v60 = v23 + v22;
  v24 = a1;
  v64 = a1;
  sub_10005E808();
  v57 = v20;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 11.0;
  v25 = v17;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 12.0;
  v26 = v14;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = v62;
  v33 = *(v63 + 104);
  v63 += 104;
  v55 = v33;
  (v33)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v64) = 0;
  v36 = v4;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 0.0;
  v58 = v11;
  PageGrid.DirectionalValue.init(_:)();
  v59 = v25;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v64 = v24;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  v38 = v55;
  v55(v8, v61, v32);
  LOBYTE(v64) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v39 = v56;
  top = UIEdgeInsetsZero.top;
  v51 = left;
  v52 = bottom;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v48 = 2 * v39;
  v64 = v24;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  *v8 = v49;
  v40 = v61;
  v41 = v62;
  v42 = v38;
  v38(v8, v61, v62);
  LOBYTE(v64) = 0;
  v54 = v36;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v43 = v48;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v44 = v56;
  v48 = v43 + v56;
  v64 = v24;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  *v8 = v49;
  v42(v8, v40, v41);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v64) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = v26;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v64 = v24;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v8 = v49;
  v45 = v55;
  v55(v8, v61, v62);
  LOBYTE(v64) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 += 4 * v44;
  v64 = v24;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 10.0;
  PageGrid.DirectionalValue.init(_:)();
  *v8 = v49;
  v45(v8, v61, v62);
  LOBYTE(v64) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v64 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v53;
}

void sub_1001D2E80(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001D3C28(&qword_100973190, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    sub_100028004();
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

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
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1001D301C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D3090;
}

void sub_1001D3090(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_1001D31D4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView];
  sub_1002C1934();
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  sub_1006269C4();
  v3 = &v1[OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppEventCollectionViewCell()
{
  result = qword_100978F88;
  if (!qword_100978F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D338C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1001D3460(uint64_t **a1))()
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
  v2[4] = sub_1001D301C(v2);
  return sub_1000B4CAC;
}

double sub_1001D3544()
{
  [*(*(*v0 + OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1001D35D0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1001D3660@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1001D36B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001D3780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001D3C28(&qword_100974DA8, type metadata accessor for AppEventCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001D3818()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001D3C28(&unk_100978FB0, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1001D388C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001D3C28(&unk_100978FB0, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1001D3918(uint64_t *a1))()
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
  sub_1001D3C28(&unk_100978FB0, type metadata accessor for AppEventCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1001D39D4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100028004();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1001D3B54(void *a1)
{
  a1[1] = sub_1001D3C28(&qword_100978FA8, type metadata accessor for AppEventCollectionViewCell);
  a1[2] = sub_1001D3C28(&qword_100974DA0, type metadata accessor for AppEventCollectionViewCell);
  a1[3] = sub_1001D3C28(&qword_100973AB0, type metadata accessor for AppEventCollectionViewCell);
  result = sub_1001D3C28(&qword_100974DA8, type metadata accessor for AppEventCollectionViewCell);
  a1[4] = result;
  return result;
}

uint64_t sub_1001D3C28(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1001D3C70()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView;
  v10 = *&v8[OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v17, &unk_1009711D0);
  sub_10002B894(v18, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

uint64_t sub_1001D3F28(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton);
  sub_10006C234(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10002A400(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100007000(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

char *sub_1001D4080(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v114 = type metadata accessor for DirectionalTextAlignment();
  v101 = *(v114 - 8);
  __chkstk_darwin(v114);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v100 = &v95 - v12;
  v13 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v13 - 8);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v15 - 8);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v95 - v18;
  __chkstk_darwin(v19);
  v108 = &v95 - v20;
  __chkstk_darwin(v21);
  v106 = &v95 - v22;
  v23 = type metadata accessor for FontSource();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_metrics;
  v140[13] = &type metadata for Double;
  v140[14] = &protocol witness table for Double;
  v140[9] = &protocol witness table for Double;
  v140[10] = 0x4024000000000000;
  v140[8] = &type metadata for Double;
  v140[5] = 0x4000000000000000;
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v104 = v5;
  v98 = &v5[v27];
  v28 = type metadata accessor for FontUseCase();
  v109 = sub_1000056A8(v28, qword_1009D1220);
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v121 = *(v29 + 16);
  v122 = v29;
  v121(v26, v109, v28);
  LODWORD(v118) = enum case for FontSource.useCase(_:);
  v119 = v24[13];
  v119(v26);
  v120 = type metadata accessor for StaticDimension();
  v140[3] = v120;
  v140[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v140);
  v138 = v23;
  v139 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v137);
  v111 = v24[2];
  v111(v31, v26, v23);
  StaticDimension.init(_:scaledLike:)();
  v32 = v24[1];
  v113 = v24 + 1;
  v32(v26, v23);
  v137[0] = 0x405C000000000000;
  v134[0] = 0x4044000000000000;
  v33 = sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  v115 = v28;
  v116 = v30;
  v121(v26, v109, v28);
  v112 = v24 + 13;
  (v119)(v26, v118, v23);
  v138 = v120;
  v139 = &protocol witness table for StaticDimension;
  sub_1000056E0(v137);
  v135 = v23;
  v136 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v134);
  v117 = v24 + 2;
  v111(v34, v26, v23);
  StaticDimension.init(_:scaledLike:)();
  v96 = v32;
  v32(v26, v23);
  v134[0] = 0x405C000000000000;
  v131[0] = 0x4044000000000000;
  v105 = v33;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0E8 != -1)
  {
    swift_once();
  }

  v35 = v115;
  v97 = sub_1000056A8(v115, qword_1009D1238);
  v36 = v121;
  (v121)(v26);
  (v119)(v26, v118, v23);
  v135 = v120;
  v136 = &protocol witness table for StaticDimension;
  sub_1000056E0(v134);
  v132 = v23;
  v133 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v131);
  v38 = v111;
  v111(v37, v26, v23);
  StaticDimension.init(_:scaledLike:)();
  v39 = v96;
  v96(v26, v23);
  v131[0] = 0x405C000000000000;
  v128[0] = 0x4044000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  v40 = v36;
  v41 = v39;
  v42 = v35;
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v43 = sub_1000056A8(v35, qword_1009D11F0);
  v40(v26, v43, v35);
  v44 = v118;
  (v119)(v26, v118, v23);
  v132 = v120;
  v133 = &protocol witness table for StaticDimension;
  sub_1000056E0(v131);
  v129 = v23;
  v130 = &protocol witness table for FontSource;
  v45 = sub_1000056E0(v128);
  v38(v45, v26, v23);
  StaticDimension.init(_:scaledLike:)();
  v41(v26, v23);
  v128[0] = 0x4052000000000000;
  v125[0] = 0x4034000000000000;
  Conditional<>.init(regularValue:compactValue:)();
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
  sub_1000056E0(v128);
  v126 = v23;
  v127 = &protocol witness table for FontSource;
  v48 = sub_1000056E0(v125);
  v49 = v111;
  v111(v48, v26, v23);
  v50 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v46(v26, v23);
  *v26 = v50;
  *(v26 + 2) = 0;
  (v95)(v26, v105, v42);
  (v47)(v26, v118, v23);
  v126 = v120;
  v127 = &protocol witness table for StaticDimension;
  sub_1000056E0(v125);
  v124[3] = v23;
  v124[4] = &protocol witness table for FontSource;
  v51 = sub_1000056E0(v124);
  v49(v51, v26, v23);
  StaticDimension.init(_:scaledLike:)();
  v46(v26, v23);
  InstallPagePreInstallFreeLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:parentTitleSpace:parentTitleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:bottomSpace:)();
  v52 = v99;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v53 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v54 = sub_1002EB7C0(v52, 1);
  v55 = v104;
  *&v104[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_inAppPurchaseView] = v54;
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
  v119 = type metadata accessor for DynamicTypeLabel();
  v61 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v62 = v115;
  v58(v56, v57, v115);
  v63 = v59;
  v59(v56, 0, 1, v62);
  v64 = v120;
  v65 = v118;
  (v118)(v60, v120, v114);
  v66 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v67 = v115;
  v121(v56, v97, v115);
  v63(v56, 0, 1, v67);
  v68 = v64;
  v69 = v114;
  v70 = v119;
  v65(v60, v68);
  v71 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E0D8 != -1)
  {
    swift_once();
  }

  v72 = v115;
  v73 = sub_1000056A8(v115, qword_1009D1208);
  v121(v56, v73, v72);
  v63(v56, 0, 1, v72);
  (v65)(v60, v120, v69);
  v74 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v75 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v55[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton] = sub_1000F5284(0);
  *&v55[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_ageRatingBadge] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
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
  v81 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel;
  [*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel] setTextAlignment:1];
  v82 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel;
  [*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel] setTextAlignment:1];
  v83 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel;
  [*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel] setTextAlignment:1];
  v84 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_descriptionLabel;
  [*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_descriptionLabel] setTextAlignment:1];
  v85 = *&v80[v81];
  sub_100028BB8();
  v86 = v85;
  v87 = static UIColor.primaryText.getter();
  [v86 setTextColor:v87];

  v88 = *&v80[v82];
  v89 = static UIColor.secondaryText.getter();
  [v88 setTextColor:v89];

  v90 = *&v80[v83];
  v91 = static UIColor.tertiaryText.getter();
  [v90 setTextColor:v91];

  v92 = *&v80[v84];
  v93 = static UIColor.primaryText.getter();
  [v92 setTextColor:v93];

  [v80 addSubview:*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_inAppPurchaseView]];
  [v80 addSubview:*&v80[v81]];
  [v80 addSubview:*&v80[v82]];
  [v80 addSubview:*&v80[v83]];
  [v80 addSubview:*&v80[v84]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_ageRatingBadge]];

  return v80;
}

double sub_1001D5050()
{
  v1 = type metadata accessor for InstallPagePreInstallFreeLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = v4;
  v5 = type metadata accessor for InstallPagePreInstallFreeLayout();
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_metrics, v1, v7);
  v10 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_inAppPurchaseView);
  v50 = type metadata accessor for InAppPurchaseView();
  v51 = &protocol witness table for UIView;
  v49 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel);
  v47 = type metadata accessor for DynamicTypeLabel();
  v48 = &protocol witness table for UILabel;
  v46 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel);
  v44 = v47;
  v45 = &protocol witness table for UILabel;
  v42 = &protocol witness table for UILabel;
  v43 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel);
  v41 = v47;
  v39 = &protocol witness table for UILabel;
  v40 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_descriptionLabel);
  v38 = v47;
  v37 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_ageRatingBadge);
  v35 = type metadata accessor for AgeRatingBadgeView();
  v36 = &protocol witness table for UIView;
  v34 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton);
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
  InstallPagePreInstallFreeLayout.init(metrics:iconView:titleText:parentTitleText:subtitleText:descriptionText:ageRatingView:offerButton:)();
  sub_1001D5920();
  v24 = v29;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v26 = v25;
  (*(v30 + 8))(v9, v24);
  return v26;
}

uint64_t sub_1001D536C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v32 = ObjectType;
  v3 = type metadata accessor for LayoutRect();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallPagePreInstallFreeLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = type metadata accessor for InstallPagePreInstallFreeLayout();
  v34 = *(v9 - 8);
  v35 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
  v57 = type metadata accessor for InAppPurchaseView();
  v58 = &protocol witness table for UIView;
  v56 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel];
  v54 = type metadata accessor for DynamicTypeLabel();
  v55 = &protocol witness table for UILabel;
  v53 = v13;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel];
  v51 = v54;
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v14;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel];
  v48 = v54;
  v46 = &protocol witness table for UILabel;
  v47 = v15;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_descriptionLabel];
  v45 = v54;
  v44 = v16;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_ageRatingBadge];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton];
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
  InstallPagePreInstallFreeLayout.init(metrics:iconView:titleText:parentTitleText:subtitleText:descriptionText:ageRatingView:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v27 = v33;
  InstallPagePreInstallFreeLayout.placeChildren(relativeTo:in:)();
  [v1 frame];
  Width = CGRectGetWidth(v60);
  LayoutRect.size.getter();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v27, v37);
  return (*(v34 + 8))(v26, v35);
}

uint64_t type metadata accessor for InstallPagePreInstallFreeOfferView()
{
  result = qword_100978FF0;
  if (!qword_100978FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D5878()
{
  result = type metadata accessor for InstallPagePreInstallFreeLayout.Metrics();
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

unint64_t sub_1001D5920()
{
  result = qword_100979008;
  if (!qword_100979008)
  {
    type metadata accessor for InstallPagePreInstallFreeLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979008);
  }

  return result;
}

void sub_1001D5978()
{
  v0 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v0 - 8);
  v39 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = v33 - v3;
  __chkstk_darwin(v4);
  v40 = v33 - v5;
  __chkstk_darwin(v6);
  v38 = v33 - v7;
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_metrics;
  v67[13] = &type metadata for Double;
  v67[14] = &protocol witness table for Double;
  v67[9] = &protocol witness table for Double;
  v67[10] = 0x4024000000000000;
  v67[8] = &type metadata for Double;
  v67[5] = 0x4000000000000000;
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v46 = sub_1000056A8(v12, qword_1009D1220);
  v34 = *(v12 - 8);
  v13 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v11, v46, v12);
  v49 = enum case for FontSource.useCase(_:);
  v50 = v9[13];
  v50(v11);
  v47 = type metadata accessor for StaticDimension();
  v67[3] = v47;
  v67[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v67);
  v65 = v8;
  v66 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v64);
  v15 = v9[2];
  v15(v14, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v42 = v9[1];
  v42(v11, v8);
  v64[0] = 0x405C000000000000;
  v61[0] = 0x4044000000000000;
  v16 = sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  v44 = v12;
  v33[1] = v13;
  v37(v11, v46, v12);
  v46 = (v9 + 13);
  (v50)(v11, v49, v8);
  v65 = v47;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v8;
  v63 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v61);
  v43 = v9 + 2;
  v48 = v15;
  v15(v17, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v45 = v9 + 1;
  v42(v11, v8);
  v61[0] = 0x405C000000000000;
  v58[0] = 0x4044000000000000;
  v36 = v16;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0E8 != -1)
  {
    swift_once();
  }

  v18 = v44;
  v19 = sub_1000056A8(v44, qword_1009D1238);
  v20 = v18;
  v21 = v37;
  v37(v11, v19, v20);
  (v50)(v11, v49, v8);
  v62 = v47;
  v63 = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  v59 = v8;
  v60 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v58);
  v48(v22, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v42(v11, v8);
  v58[0] = 0x405C000000000000;
  v55[0] = 0x4044000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v23 = v44;
  v24 = sub_1000056A8(v44, qword_1009D11F0);
  v21(v11, v24, v23);
  v25 = v49;
  (v50)(v11, v49, v8);
  v26 = v47;
  v59 = v47;
  v60 = &protocol witness table for StaticDimension;
  sub_1000056E0(v58);
  v56 = v8;
  v57 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v55);
  v48(v27, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v28 = v42;
  v42(v11, v8);
  v55[0] = 0x4052000000000000;
  v52[0] = 0x4034000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  *v11 = UIFontTextStyleBody;
  *(v11 + 2) = 0;
  LODWORD(v37) = enum case for FontUseCase.preferredFont(_:);
  v36 = *(v34 + 104);
  v36(v11);
  (v50)(v11, v25, v8);
  v56 = v26;
  v57 = &protocol witness table for StaticDimension;
  sub_1000056E0(v55);
  v53 = v8;
  v54 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v52);
  v48(v29, v11, v8);
  v30 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v28(v11, v8);
  *v11 = v30;
  *(v11 + 2) = 0;
  (v36)(v11, v37, v44);
  (v50)(v11, v49, v8);
  v53 = v47;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v51[3] = v8;
  v51[4] = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v51);
  v48(v31, v11, v8);
  v32 = v30;
  StaticDimension.init(_:scaledLike:)();
  v28(v11, v8);
  InstallPagePreInstallFreeLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:parentTitleSpace:parentTitleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:bottomSpace:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001D6230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009731F0);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v74 = &v68 - v9;
  v10 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v10 - 8);
  v75 = &v68 - v11;
  v77 = type metadata accessor for ItemBackground();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Shelf.ContentType();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v78);
  v84 = &v68 - v14;
  v15 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v24 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  if ((ShelfLayoutContext.isFirstShelf.getter() & 1) == 0)
  {
    v68 = v6;
    v69 = v4;
    v70 = v3;
    v71 = a1;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v17, &unk_10098FFB0);
    sub_1000476A0(v20, v23, &unk_10098FFB0);
    v40 = v81;
    v41 = v82;
    if ((*(v82 + 48))(v23, 1, v81) == 1)
    {
      sub_10002B894(v23, &unk_10098FFB0);
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

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
    sub_100094EE4(v31, v84);
    sub_100094EE4(v28, v50 + v49);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v45) == 1)
    {
      sub_10002B894(v28, &unk_100992460);
      v52 = v84;
      sub_10002B894(v31, &unk_100992460);
      if (v51(v52 + v49, 1, v45) == 1)
      {
        sub_10002B894(v52, &unk_100992460);
        v53 = v85;
        goto LABEL_17;
      }
    }

    else
    {
      sub_100094EE4(v50, v46);
      if (v51(v50 + v49, 1, v45) != 1)
      {
        v54 = v83;
        v55 = v73;
        (*(v83 + 32))(v73, v50 + v49, v45);
        sub_1001D74CC();
        v56 = v50;
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *(v54 + 8);
        v58(v55, v45);
        sub_10002B894(v28, &unk_100992460);
        sub_10002B894(v31, &unk_100992460);
        v58(v46, v45);
        sub_10002B894(v56, &unk_100992460);
        v53 = v85;
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v59 = v74;
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v60 = v81;
        ReadOnlyLens.subscript.getter();

        (*(v82 + 8))(v59, v60);
        if (*(v86 + 16))
        {
          sub_10002C0AC(v86 + 32, v87);

          sub_10002849C(&qword_100973D50);
          sub_10002849C(&qword_10096FB18);
          v61 = swift_dynamicCast();
          v62 = v77;
          v63 = v76;
          v64 = v75;
          if (v61)
          {
            if (*(&v89 + 1))
            {
              sub_10002A400(&v88, *(&v89 + 1));
              v53 = v85;
              dispatch thunk of ItemBackgroundProviding.itemBackground.getter();
              sub_100007000(&v88);
              if ((*(v63 + 48))(v64, 1, v62) != 1)
              {
                v65 = v72;
                (*(v63 + 32))(v72, v64, v62);
                if (ItemBackground.isAdBackground.getter())
                {
                  v66 = v68;
                  ShelfLayoutContext.contentPageGrid.getter();
                  v67 = sub_10075BE38(v66, v65);
                  (*(v69 + 8))(v66, v70);
                  *(&v89 + 1) = &type metadata for CGFloat;
                  v90 = &protocol witness table for CGFloat;
                  *&v88 = -v67;
                  (*(v63 + 8))(v65, v62);
                  return sub_100005A38(&v88, v53);
                }

                (*(v63 + 8))(v65, v62);
LABEL_27:
                *(&v89 + 1) = &type metadata for Double;
                v90 = &protocol witness table for Double;
                *&v88 = 0;
                return sub_100005A38(&v88, v53);
              }

LABEL_26:
              sub_10002B894(v64, &unk_1009804F0);
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

        sub_10002B894(&v88, &unk_10096FB20);
        (*(v63 + 56))(v64, 1, 1, v62);
        goto LABEL_26;
      }

      sub_10002B894(v28, &unk_100992460);
      v52 = v84;
      sub_10002B894(v31, &unk_100992460);
      (*(v83 + 8))(v46, v45);
    }

    sub_10002B894(v52, &qword_100975F10);
    v53 = v85;
    goto LABEL_27;
  }

  v32 = v85;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v34 = v33;
  v35 = *(v4 + 8);
  v35(v6, v3);
  if (v34 <= 1.0)
  {
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v44 = v43;
    result = (v35)(v6, v3);
    v32[3] = &type metadata for CGFloat;
    v32[4] = &protocol witness table for CGFloat;
    *v32 = v44 * 0.5;
  }

  else
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for StaticDimension();
    v37 = sub_1000056A8(v36, qword_1009D2460);
    v32[3] = v36;
    v32[4] = &protocol witness table for StaticDimension;
    v38 = sub_1000056E0(v32);
    return (*(*(v36 - 8) + 16))(v38, v37, v36);
  }

  return result;
}

uint64_t sub_1001D6DD0@<X0>(void *a1@<X8>)
{
  v59 = a1;
  v1 = type metadata accessor for PageGrid();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v55);
  v58 = &v48 - v3;
  v4 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v13 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = type metadata accessor for Shelf.ContentType();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_1009731F0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v53 = v19;
  ReadOnlyLens.subscript.getter();

  v24 = *(v21 + 8);
  v24(v23, v20);
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v9, &unk_10098FFB0);
  sub_1000476A0(v6, v12, &unk_10098FFB0);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_10002B894(v12, &unk_10098FFB0);
    v25 = 1;
    v26 = v54;
  }

  else
  {
    swift_getKeyPath();
    v26 = v54;
    ReadOnlyLens.subscript.getter();

    v24(v12, v20);
    v25 = 0;
  }

  v28 = v56;
  v27 = v57;
  (*(v56 + 56))(v26, v25, 1, v57);
  v29 = *(v55 + 48);
  v30 = v58;
  (*(v28 + 32))(v58, v53, v27);
  sub_1000476A0(v26, v30 + v29, &unk_100992460);
  v31 = *(v28 + 88);
  v32 = v31(v30, v27);
  v33 = v32;
  if (v32 == enum case for Shelf.ContentType.searchResult(_:))
  {
    if ((*(v28 + 48))(v30 + v29, 1, v27) != 1)
    {
      v34 = v49;
      sub_100094EE4(v30 + v29, v49);
      if (v31(v34, v27) == v33)
      {
        v35 = v50;
        ShelfLayoutContext.contentPageGrid.getter();
        PageGrid.interRowSpace.getter();
        v37 = v36;
        (*(v51 + 8))(v35, v52);
        v38 = v59;
        v59[3] = &type metadata for CGFloat;
        v38[4] = &protocol witness table for CGFloat;
        *v38 = v37;
LABEL_10:
        sub_10002B894(v30 + v29, &unk_100992460);
        return (*(v28 + 8))(v30, v27);
      }

      (*(v28 + 8))(v34, v27);
    }
  }

  else if (v32 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v39 = v50;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v41 = v40;
    (*(v51 + 8))(v39, v52);
    v42 = v59;
    v59[3] = &type metadata for CGFloat;
    *(v42 + 4) = &protocol witness table for CGFloat;
    *v42 = v41 * 0.5;
    goto LABEL_10;
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for StaticDimension();
  v45 = sub_1000056A8(v44, qword_1009D2460);
  v46 = v59;
  v59[3] = v44;
  v46[4] = &protocol witness table for StaticDimension;
  v47 = sub_1000056E0(v46);
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  return sub_10002B894(v30, &qword_100972A48);
}

unint64_t sub_1001D74CC()
{
  result = qword_100972720;
  if (!qword_100972720)
  {
    type metadata accessor for Shelf.ContentType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972720);
  }

  return result;
}

uint64_t sub_1001D7524(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v3 - 8);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v71 - v6;
  v7 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v7 - 8);
  v76 = &v71 - v8;
  v9 = type metadata accessor for VideoControls();
  __chkstk_darwin(v9 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v71 - v12;
  v13 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v13 - 8);
  v85 = &v71 - v14;
  v75 = type metadata accessor for VideoFillMode();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v84 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VideoConfiguration();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v88 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Shelf.ContentsMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_1009731F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v26 = sub_10002849C(&qword_100979018);
  __chkstk_darwin(v26 - 8);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v81 = &v71 - v29;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  __chkstk_darwin(v33);
  v89 = &v71 - v34;
  type metadata accessor for ProductMediaItem();
  sub_1001D8428(&qword_100972AC0, &type metadata accessor for ProductMediaItem);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v36 = v91[0];
  if (v91[0])
  {
    v37 = ProductMediaItem.screenshot.getter();
    v90 = v36;
    v73 = v37;
    if (v37)
    {
      v72 = a2;
    }

    else
    {
      if (!ProductMediaItem.video.getter())
      {
      }

      v72 = a2;
      v73 = Video.preview.getter();
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v23 + 8))(v25, v22);
    if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v19 + 96))(v21, v18);
      v38 = type metadata accessor for ProductMediaMetadata();
      v39 = *(v38 - 8);
      v40 = v89;
      (*(v39 + 32))(v89, v21, v38);
      (*(v39 + 56))(v40, 0, 1, v38);
    }

    else
    {
      v41 = type metadata accessor for ProductMediaMetadata();
      v42 = v89;
      (*(*(v41 - 8) + 56))(v89, 1, 1, v41);
      v43 = v18;
      v40 = v42;
      (*(v19 + 8))(v21, v43);
    }

    v44 = v83;
    if (ProductMediaItem.video.getter())
    {
      (*(v74 + 104))(v84, enum case for VideoFillMode.scaleAspectFit(_:), v75);
      Video.preview.getter();
      Artwork.size.getter();
      v45 = v85;
      AspectRatio.init(_:_:)();

      v46 = type metadata accessor for AspectRatio();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      sub_100031660(v40, v32, &qword_100979018);
      v47 = type metadata accessor for ProductMediaMetadata();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v32, 1, v47) == 1)
      {
        sub_10002B894(v32, &qword_100979018);
      }

      else
      {
        ProductMediaMetadata.platform.getter();
        (*(v48 + 8))(v32, v47);
        MediaPlatform.deviceCornerRadiusFactor.getter();
      }

      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      Video.playbackId.getter();
      v49 = v76;
      Video.videoUrl.getter();
      v50 = type metadata accessor for URL();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      v51 = v79;
      Video.templateMediaEvent.getter();
      v52 = v80;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView();
      sub_1001D8428(&qword_100973190, type metadata accessor for VideoView);
      v53 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v52, &unk_100973A50);
      sub_10002B894(v51, &unk_100973A50);
      sub_10002B894(v49, &qword_100982460);
      sub_10002B894(v91, &qword_10096FB90);
      sub_1007194F8();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      v40 = v89;
      if (Strong)
      {
        v55 = Strong;
        v56 = [v44 contentView];
        [v56 addSubview:v55];

        [v44 setNeedsLayout];
      }

      (*(v77 + 8))(v88, v78);
    }

    v57 = *&v44[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v58 = *(v57 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
    v59 = ProductMediaItem.screenshot.getter();
    if (v59)
    {
    }

    [v58 setHidden:v59 == 0];

    v60 = swift_unknownObjectWeakLoadStrong();
    v61 = v82;
    if (v60)
    {
      v62 = v60;
      v63 = ProductMediaItem.video.getter();
      if (v63)
      {
      }

      [v62 setHidden:v63 == 0];
    }

    v64 = v81;
    sub_100031660(v40, v81, &qword_100979018);
    v65 = type metadata accessor for ProductMediaMetadata();
    v66 = *(v65 - 8);
    v67 = *(v66 + 48);
    if (v67(v64, 1, v65) == 1)
    {
      sub_10002B894(v64, &qword_100979018);
      v68 = 0;
    }

    else
    {
      v69 = ProductMediaMetadata.hasPortraitMedia.getter();
      (*(v66 + 8))(v64, v65);
      if (v69)
      {
        v68 = dispatch thunk of Artwork.isPortrait.getter() ^ 1;
      }

      else
      {
        v68 = 0;
      }

      v40 = v89;
    }

    v44[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_shouldForcePortrait] = v68 & 1;
    sub_100031660(v40, v61, &qword_100979018);
    if (v67(v61, 1, v65) == 1)
    {
      sub_10002B894(v61, &qword_100979018);
      v70 = 0;
    }

    else
    {
      v70 = ProductMediaMetadata.platform.getter();
      (*(v66 + 8))(v61, v65);
    }

    *(v57 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = v70;

    sub_100617504();

    [v44 setNeedsLayout];

    return sub_10002B894(v40, &qword_100979018);
  }

  return result;
}

uint64_t sub_1001D826C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_1001D82D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001D83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001D8428(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001D84BC(uint64_t a1, void *a2, double a3)
{
  v118 = type metadata accessor for FloatingPointRoundingRule();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for VerticalFlowLayout();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for VerticalFlowLayout.Child();
  v8 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v10 = *(v121 - 8);
  __chkstk_darwin(v121);
  v109 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v125 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v13 = *(v110 - 8);
  __chkstk_darwin(v110);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LabelPlaceholderCompatibility();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v20 = sub_1000367E8();
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for FontUseCase();
  sub_1000056A8(v98, qword_1009D10A0);
  v122 = a2;
  v21 = [a2 traitCollection];
  v100 = v20;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v22 = type metadata accessor for Feature();
  v135 = v22;
  v97 = sub_1001D94A8(&qword_100972E50, &type metadata accessor for Feature);
  v136 = v97;
  v23 = sub_1000056E0(&v134);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v99 = v22;
  v95 = v25;
  v94 = v24 + 104;
  v25(v23);
  isFeatureEnabled(_:)();
  sub_100007000(&v134);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v26 = *(v17 + 8);
  v102 = v19;
  v104 = v16;
  v103 = v17 + 8;
  v93 = v26;
  v26(v19, v16);
  sub_10002849C(&qword_10096FC30);
  v27 = *(v8 + 72);
  v107 = v8;
  v120 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v101 = v27;
  v123 = swift_allocObject();
  v119 = xmmword_1007B10D0;
  *(v123 + 1) = xmmword_1007B10D0;
  v28 = v135;
  v29 = v136;
  v30 = sub_10002A400(&v134, v135);
  v132 = v28;
  v133 = *(v29 + 8);
  v31 = sub_1000056E0(&v131);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v129 = &type metadata for Double;
  v130 = &protocol witness table for Double;
  v128 = 0;
  v32 = *(v13 + 104);
  v33 = v15;
  v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v34 = v110;
  v92 = v13 + 104;
  v90 = v32;
  v32(v15);
  v35 = v125;
  v36 = *(v125 + 104);
  v37 = v111;
  v88 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v38 = v112;
  v89 = v125 + 104;
  v87 = v36;
  v36(v111);
  v39 = sub_10002849C(&unk_10098D820);
  v40 = *(v10 + 72);
  v41 = v10;
  v42 = *(v10 + 80);
  v43 = (v42 + 32) & ~v42;
  v84 = v42;
  v85 = v39;
  v83 = v43 + v40;
  v44 = swift_allocObject();
  *(v44 + 16) = v119;
  v86 = v43;
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v127[0] = v44;
  v45 = sub_1001D94A8(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v46 = sub_10002849C(&unk_10098D830);
  v47 = sub_1000364CC();
  v48 = v109;
  v81 = v46;
  v80 = v47;
  v49 = v121;
  v82 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v124;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v51 = *(v41 + 8);
  v105 = v41 + 8;
  v79 = v51;
  v51(v48, v49);
  v52 = *(v35 + 8);
  v125 = v35 + 8;
  v52(v37, v38);
  v78 = *(v13 + 8);
  v78(v33, v34);
  sub_100036530(&v128);
  sub_100007000(&v131);
  if (*(v50 + 176) == 1)
  {
    v53 = v38;
    v54 = v52;
    v55 = v33;
    if (qword_10096E068 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v98, qword_1009D10B8);
    v56 = [v122 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v57 = v99;
    v132 = v99;
    v133 = v97;
    v58 = sub_1000056E0(&v131);
    v95(v58, v96, v57);
    isFeatureEnabled(_:)();
    sub_100007000(&v131);
    v59 = v102;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v93(v59, v104);
    v60 = v132;
    v61 = v133;
    v62 = sub_10002A400(&v131, v132);
    v129 = v60;
    v130 = *(v61 + 8);
    v63 = sub_1000056E0(&v128);
    (*(*(v60 - 8) + 16))(v63, v62, v60);
    v127[4] = &protocol witness table for Double;
    v127[3] = &type metadata for Double;
    v127[0] = 0;
    v90(v55, v91, v34);
    v87(v37, v88, v53);
    v64 = swift_allocObject();
    *(v64 + 16) = v119;
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v126 = v64;
    v65 = v48;
    v66 = v121;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v124;
    v68 = v34;
    v69 = v106;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v79(v65, v66);
    v54(v37, v53);
    v78(v55, v68);
    sub_100036530(v127);
    sub_100007000(&v128);
    v70 = v123;
    v72 = v123[2];
    v71 = v123[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_1000333F4(v71 > 1, v72 + 1, 1, v123);
    }

    *(v70 + 2) = v72 + 1;
    (*(v107 + 32))(&v70[v120 + v72 * v101], v69, v108);
    sub_100007000(&v131);
  }

  else
  {
    v67 = v124;
  }

  v73 = v113;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v74 = v116;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400((v67 + 96), *(v67 + 120));
  v75 = v115;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v117 + 8))(v75, v118);
  (*(v114 + 8))(v73, v74);
  sub_100007000(&v134);
  return a3;
}

double sub_1001D92D0()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v8 = v7;
  v6(v3, v0);
  v9 = ShelfLayoutContext.traitCollection.getter();
  v10 = type metadata accessor for SnapshotPageTraitEnvironment();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v12 = v8;
  *(v12 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v11[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v9;
  v17.receiver = v11;
  v17.super_class = v10;
  v13 = objc_msgSendSuper2(&v17, "init");
  sub_1001D84BC(&xmmword_1009D2DA0, v13, v5);
  v15 = v14;

  return v15;
}

uint64_t sub_1001D94A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001D9558()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView];
  *&v0[OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView] = v1;
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

id sub_1001D96DC(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RuleResultsViewController();
  result = objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView];
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    [v6 setText:v7];

    dispatch thunk of GladiatorRule.validate(events:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = sub_1000076C0();

    v9[3] = v8;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = static OS_dispatch_queue.main.getter();
    Promise.then(perform:orCatchError:on:)();

    sub_100007000(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001D9880(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView);
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = *(v1 + 16);
      if (v15)
      {
        v8 = 0;
        v9 = (v1 + 40);
        while (v8 < *(v1 + 16))
        {
          ++v8;
          v10 = v1;
          v12 = *(v9 - 1);
          v11 = *v9;

          v13._countAndFlagsBits = v12;
          v13._object = v11;
          String.append(_:)(v13);

          String.init<A>(_:)();
          String.append<A>(contentsOf:)();

          v1 = v10;

          v9 += 2;
          if (v15 == v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_11;
      }

LABEL_8:
      v14 = String._bridgeToObjectiveC()();

      [v5 setText:v14];
    }
  }
}

void sub_1001D9A58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
      v4 = String._bridgeToObjectiveC()();

      [v3 setText:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1001D9BE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D9CA4()
{
  sub_10002849C(&qword_10097A790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B5370;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 200), "contentsRect");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100397278(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870);
  result = swift_arrayDestroy();
  qword_1009CE660 = v1;
  return result;
}

CGFloat sub_1001D9EAC()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_1009CE668 = v2;
  return v2.m21;
}

id sub_1001D9FD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = String._bridgeToObjectiveC()();
    [v2 removeObserver:v0 forKeyPath:v3];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MirrorView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_1001DA280()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MirrorView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = [v0 bounds];
  (*((swift_isaMask & *v0) + 0xD0))(v1, v2, v3);
  CGSize.scaled(_:)();
  v5 = v4;
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer);
  [v6 setBounds:{0.0, 0.0, v7, v4}];
  [v0 bounds];
  MidY = CGRectGetMidY(v12);
  [v0 bounds];
  v9 = MidY + (v5 - CGRectGetHeight(v13)) * 0.5;
  [v0 bounds];
  return [v6 setPosition:{CGRectGetMidX(v14), v9 + *(v0 + OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset)}];
}

double sub_1001DA414(double a1)
{
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong image];

    if (v8)
    {
      [v8 size];
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(filling:)();
      a1 = v9;

      (*(v3 + 8))(v5, v2);
    }
  }

  return a1;
}

void sub_1001DA558()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong backgroundColor], v3, v4))
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v1 setBackgroundColor:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 image];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 CGImage];

  if (v9)
  {
    type metadata accessor for CGImage(0);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  [v1 setContents:v8];
  swift_unknownObjectRelease();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    *&v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v1 setOpacity:v14];
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = String._bridgeToObjectiveC()();
    v18 = OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v16 addObserver:v0 forKeyPath:v17 options:1 context:v0 + v18];
    swift_endAccess();
  }
}

void sub_1001DA768(uint64_t a1, NSString a2, uint64_t a3, Class isa, char *a5)
{
  v10 = &v5[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext];
  swift_beginAccess();
  if (!a5 || v10 != a5)
  {
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    sub_10006C234(a3, v25);
    v15 = v26;
    if (v26)
    {
      v16 = sub_10002A400(v25, v26);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      sub_100007000(v25);
      if (!isa)
      {
LABEL_11:
        v22 = type metadata accessor for MirrorView();
        v24.receiver = v5;
        v24.super_class = v22;
        objc_msgSendSuper2(&v24, "observeValueForKeyPath:ofObject:change:context:", a2, v21, isa, a5);

        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!isa)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1001DAB50();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    isa = [Strong image];

    if (isa)
    {
      v13 = *&v5[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer];
      v14 = [(objc_class *)isa CGImage];
      [v13 setContents:v14];

      [v5 setNeedsLayout];
LABEL_12:
    }
  }
}

unint64_t sub_1001DAB50()
{
  result = qword_10096F618;
  if (!qword_10096F618)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096F618);
  }

  return result;
}

uint64_t sub_1001DABA8(uint64_t a1)
{
  v29 = sub_1001962CC(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

  v3 = 0;
  while (v3 < *(a1 + 16))
  {
    v4 = *(a1 + 32 + 8 * v3);
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v5 = sub_1000072B8(0x6973736572706D69, 0xEC00000064496E6FLL);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_1000073E8(*(v4 + 56) + 32 * v5, v32);
    sub_100056164(v32, v33);
    if (!*(v4 + 16) || (v7 = sub_1000072B8(1701667182, 0xE400000000000000), (v8 & 1) == 0) || (sub_1000073E8(*(v4 + 56) + 32 * v7, v32), !swift_dynamicCast()))
    {
      sub_100007000(v33);
LABEL_4:

      goto LABEL_5;
    }

    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v10 = *(&v32[0] + 1);
    v9 = *&v32[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = v29;
    v28 = v9;
    v13 = sub_1000072B8(v9, v10);
    v14 = *(v29 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    v17 = v12;
    if (*(v29 + 24) >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100053F00();
      }
    }

    else
    {
      sub_10004D8C4(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_1000072B8(v28, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
    }

    v20 = *&v32[0];
    v29 = *&v32[0];
    if (v17)
    {
      v21 = (*(*&v32[0] + 56) + 16 * v13);
      *v21 = v30;
      v21[1] = v31;
    }

    else
    {
      *(*&v32[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v10;
      v23 = (v20[7] + 16 * v13);
      *v23 = v30;
      v23[1] = v31;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v20[2] = v26;
    }

    sub_100007000(v33);

LABEL_5:
    if (v2 == ++v3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001DAEA0(uint64_t a1, uint64_t a2)
{
  sub_10006C234(a1, &v8);
  if (v9)
  {
    sub_100056164(&v8, v10);
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    if (*(a2 + 16))
    {
      v3 = sub_1000072B8(v8, *(&v8 + 1));
      v5 = v4;

      if (v5)
      {
        v6 = *(*(a2 + 56) + 16 * v3);

        sub_100007000(v10);
        return v6;
      }
    }

    else
    {
    }

    sub_100007000(v10);
  }

  else
  {
    sub_10003D444(&v8);
  }

  return 0;
}

char *sub_1001DAF94(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for AutomationSemantics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView] = 0;
  v13 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_1001DB1E4();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC8AppStore68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v19, &unk_1009711D0);
  sub_10002B894(v20, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_1001DB1E4()
{
  v1 = OBJC_IVAR____TtC8AppStore68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  }

  else
  {
    type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1001DB304(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion();
  if (swift_dynamicCastClass())
  {
    v12 = sub_1001DB1E4();
    v13 = TodayCardMediaMediumLockupWithAlignedRegion.mediumAdLockupWithAlignedRegionBackground.getter();
    sub_10053DF0C(v13, a3, a4);

    v14 = type metadata accessor for PageGrid();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v11, v5 + v16);
    swift_endAccess();
    sub_1004EAB3C(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = TodayCard.backgroundColor.getter();
      if (!v19)
      {
        sub_100028BB8();
        v19 = static UIColor.todayCardDefaultBackground.getter();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_1001DB560(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  sub_10002C0AC(a1, v20);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion();
    if (swift_dynamicCastClass())
    {
      v5 = sub_1001DB1E4();
      v6 = TodayCardMediaMediumLockupWithAlignedRegion.mediumAdLockupWithAlignedRegionBackground.getter();
      [v2 bounds];
      v21[3] = type metadata accessor for MediumAdLockupWithAlignedRegionBackground();
      v21[4] = &protocol witness table for MediumAdLockupWithAlignedRegionBackground;
      v21[0] = v6;
      sub_10002C0AC(v21, v20);

      if (swift_dynamicCast())
      {
        v7 = v20[45];
        MediumAdLockupWithAlignedRegionBackground.lockup.getter();
        v8 = Lockup.icon.getter();

        if (v8)
        {
          if (MediumAdLockupWithAlignedRegionBackground.alignedRegionArtwork.getter())
          {
            v19 = v7;
            if (qword_10096EFE0 != -1)
            {
              swift_once();
            }

            sub_1001DC148();
            Copyable.copyWithOverrides(in:)();
            sub_10003B944(v20);
            Artwork.config(_:mode:prefersLayeredImage:)();
            v17 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
            v9 = *(*&v5[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
            Artwork.style.getter();
            ArtworkView.style.setter();
            [v9 setContentMode:Artwork.contentMode.getter()];
            ArtworkLoaderConfig.size.getter();
            ArtworkView.imageSize.setter();
            v16 = v8;
            if (!Artwork.backgroundColor.getter())
            {
              sub_100028BB8();
              static UIColor.placeholderBackground.getter();
            }

            ArtworkView.backgroundColor.setter();

            v10 = *(*&v5[v17] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
            v11 = type metadata accessor for ArtworkView();
            v12 = sub_10009A098();
            v13 = v10;
            v18 = v11;
            ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

            Artwork.config(_:mode:prefersLayeredImage:)();
            v14 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
            v15 = *&v5[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
            Artwork.style.getter();
            ArtworkView.style.setter();
            [v15 setContentMode:{Artwork.contentMode.getter(), v16, v12, v18, v19}];
            ArtworkLoaderConfig.size.getter();
            ArtworkView.imageSize.setter();
            if (!Artwork.backgroundColor.getter())
            {
              sub_100028BB8();
              static UIColor.placeholderBackground.getter();
            }

            ArtworkView.backgroundColor.setter();
            [*&v5[v14] setContentMode:2];
            ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
          }
        }
      }

      sub_100007000(v21);
    }

    else
    {
    }
  }
}

void sub_1001DB9CC()
{
  v4 = sub_1001DB1E4();
  v0 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  v1 = *(*&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.image.setter();

  ArtworkView.image.setter();
  v2 = *(*&v4[v0] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  v3 = v2;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void (*sub_1001DBC3C(uint64_t a1))()
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
  return sub_1001DC13C;
}

void sub_1001DBD04(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for TodayCard();
      if (swift_dynamicCast())
      {
        TodayCard.media.getter();

        TodayCardMedia.impressionMetrics.getter();
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

id sub_1001DBFA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell()
{
  result = qword_1009790E8;
  if (!qword_1009790E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001DC088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001DB1E4();
  sub_100772574(a1, a2);
}

uint64_t sub_1001DC0F4()
{
  v0 = sub_1001DB1E4();
  v1 = *(*&v0[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

unint64_t sub_1001DC148()
{
  result = qword_1009790F8;
  if (!qword_1009790F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009790F8);
  }

  return result;
}

id sub_1001DC19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for TodayCard.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;

  sub_1001DC428(a2, a3);
  TodayCard.style.getter();
  (*(v8 + 104))(v10, enum case for TodayCard.Style.white(_:), v7);
  sub_1001DDE20();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    v14 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v14;
  v17 = *&v4[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView];

  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setBackgroundEffects:isa];

  [v17 setOverrideUserInterfaceStyle:*&v4[v16]];
  return [v4 setNeedsLayout];
}

void sub_1001DC428(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style + 8);
  *(v2 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style) = a1;
  *v3 = a2;

  v4 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView);

  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setBackgroundEffects:isa];
}

id sub_1001DC508(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1001DC428(a2, a3);
  v7 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v3[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] = a1;
  v8 = *&v3[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView];

  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setBackgroundEffects:isa];

  [v8 setOverrideUserInterfaceStyle:*&v3[v7]];

  return [v3 setNeedsLayout];
}

id sub_1001DC620()
{
  result = [objc_opt_self() colorEffectSaturate:1.5];
  qword_100979108 = result;
  return result;
}

void sub_1001DC6A0(double a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  sub_100005744(0, &unk_1009856A0);
  v9 = [objc_opt_self() *a3];
  v10 = [swift_getObjCClassFromMetadata() effectCompositingColor:v9 withMode:a4 alpha:a1];

  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_1001DC784(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() _effectWithBlurRadius:a1 scale:0.125];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001DC804()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  if (qword_10096D308 != -1)
  {
    swift_once();
  }

  v1 = qword_100979100;
  *(v0 + 32) = qword_100979100;
  v2 = qword_10096D310;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100979108;
  *(v0 + 40) = qword_100979108;
  v5 = qword_10096D318;
  v6 = v4;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    swift_once();
    v7 = qword_100979108;
  }

  v8 = qword_100979110;
  *(v0 + 48) = qword_100979110;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B48F0;
  v10 = qword_100979100;
  *(v9 + 32) = qword_100979100;
  *(v9 + 40) = v7;
  v11 = qword_10096D320;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = qword_100979118;
  *(v9 + 48) = qword_100979118;
  *&xmmword_1009CE6F0 = v0;
  *(&xmmword_1009CE6F0 + 1) = v9;

  return v15;
}

uint64_t sub_1001DC9BC()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  if (qword_10096D308 != -1)
  {
    swift_once();
  }

  v1 = qword_100979100;
  *(v0 + 32) = qword_100979100;
  v2 = qword_10096D310;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100979108;
  *(v0 + 40) = qword_100979108;
  v5 = qword_10096D328;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100979120;
  *(v0 + 48) = qword_100979120;
  v8 = qword_10096D340;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  qword_1009CE700 = v0;
  *algn_1009CE708 = *(&xmmword_1009CE6F0 + 1);
}

id sub_1001DCB1C()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B15F0;
  if (qword_10096D308 != -1)
  {
    swift_once();
  }

  v1 = qword_100979100;
  *(v0 + 32) = qword_100979100;
  v2 = qword_10096D318;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_100979100;
  }

  v5 = qword_100979110;
  *(v0 + 40) = qword_100979110;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  *(v6 + 32) = v4;
  v7 = qword_10096D320;
  v8 = v5;
  v9 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = qword_100979118;
  *(v6 + 40) = qword_100979118;
  qword_1009CE710 = v0;
  *algn_1009CE718 = v6;

  return v10;
}

char *sub_1001DCC8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  *&v1[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = kCAGradientLayerAxial;
  *&v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] = 0;
  v6 = &v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style];
  v7 = qword_10096D340;
  v8 = kCAGradientLayerAxial;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_1009CE6F0 + 1);
  *v6 = xmmword_1009CE6F0;
  v6[1] = v9;
  v1[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade] = 1;
  v42.receiver = v1;
  v42.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setClipsToBounds:0];
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:1];

  [v14 setUserInteractionEnabled:0];
  v16 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  [*&v14[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v14[v16] setClipsToBounds:0];
  v17 = [*&v14[v16] layer];
  [v17 setAllowsGroupBlending:0];

  [*&v14[v16] setUserInteractionEnabled:0];
  [v14 addSubview:*&v14[v16]];
  if (v14[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade] == 1)
  {
    [v14 insertSubview:*&v14[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v14[v16]];
  }

  else
  {
    [*&v14[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
  }

  v18 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView;
  v19 = *&v14[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView];
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v19;
    sub_100144108(0, v20, 0);
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    v24 = (a1 + 40);
    v25 = v20;
    do
    {
      v26 = *v24;
      v41 = v22;
      v27 = *(v22 + 3);
      if (*&v23 >= v27 >> 1)
      {
        sub_100144108((v27 > 1), *&v23 + 1, 1);
        v22 = v41;
      }

      *(v22 + 2) = *&v23 + 1;
      v22[*&v23 + 4] = v26;
      v24 += 2;
      ++*&v23;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = v19;
    v22 = _swiftEmptyArrayStorage;
  }

  sub_1001C0B48(v22);

  v29 = *&v14[v18];
  if (v20)
  {
    v40 = *&v14[v18];
    v30 = v29;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = objc_opt_self();
    v32 = 32;
    do
    {
      v33 = *(a1 + v32);
      v34 = [v31 blackColor];
      v35 = [v34 colorWithAlphaComponent:v33];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 += 16;
      --v20;
    }

    while (v20);

    v29 = v40;
  }

  else
  {
    v36 = v29;
  }

  *&v29[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C0CEC();

  v37 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMasksToBounds:0];

  v38 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCompositingFilter:kCAFilterDestOut];

  return v14;
}

void sub_1001DD204()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView);
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType);
  [v4 setType:v5];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    v12 = &off_1008AF720;
    v13 = 5;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      v12 = &off_1008AF720;
    }

    else
    {
      v12 = &off_1008AF6C0;
    }

    v13 = v12[2];
    if (!v13)
    {

      sub_1001C0B48(_swiftEmptyArrayStorage);

      goto LABEL_18;
    }
  }

  v25 = v1;

  sub_100144108(0, v13, 0);
  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  v16 = 5;
  v17 = v13;
  do
  {
    v18 = v12[v16];
    v26 = v14;
    v19 = *(v14 + 3);
    if (*&v15 >= v19 >> 1)
    {
      sub_100144108((v19 > 1), *&v15 + 1, 1);
      v14 = v26;
    }

    *(v14 + 2) = *&v15 + 1;
    *&v14[*&v15 + 4] = v18;
    v16 += 2;
    ++*&v15;
    --v17;
  }

  while (v17);
  sub_1001C0B48(v14);
  specialized ContiguousArray.reserveCapacity(_:)();
  v20 = objc_opt_self();
  v21 = 4;
  do
  {
    v22 = *&v12[v21];
    v23 = [v20 blackColor];
    v24 = [v23 colorWithAlphaComponent:v22];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v21 += 2;
    --v13;
  }

  while (v13);

LABEL_18:
  *&v2[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C0CEC();

  sub_1001DD518();
}

void sub_1001DD518()
{
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle];
      v9 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY];
      v10 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY];
      v11 = 0.5;
      if (v8 == 0.0)
      {
        v12 = 0.5;
      }

      else
      {
        v21 = (v9 + v10) * 0.5;
        CGAffineTransformMakeRotation(&v28, *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle]);
        v30.x = 0.0;
        v30.y = v9 - v21;
        v22 = CGPointApplyAffineTransform(v30, &v28);
        v11 = v22.x + 0.5;
        v9 = v21 + v22.y;
        CGAffineTransformMakeRotation(&v28, v8);
        v31.x = 0.0;
        v31.y = v10 - v21;
        v23 = CGPointApplyAffineTransform(v31, &v28);
        v12 = v23.x + 0.5;
        v10 = v21 + v23.y;
      }

      v24 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView];
      v25 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v9}];

      v26 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v12, v10}];

      return;
    }
  }

  v13 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView];
  v14 = [v0 traitCollection];
  v15 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v15)
  {
    v16 = 0.7;
  }

  else
  {
    v16 = 0.3;
  }

  v17 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v16, 1.0}];

  v18 = [v1 traitCollection];
  v19 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v27 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v20, 0.0}];
}

id sub_1001DD8B0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView];
  result = [v2 superview];
  if (result)
  {

    [v0 bounds];
    return [v2 setFrame:?];
  }

  return result;
}

char *sub_1001DD9F8(int64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView);
  v3 = a1[2];
  if (v3)
  {
    sub_100144108(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 4);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = (a1 + 5);
    v9 = v3;
    do
    {
      v10 = *v8;
      v17 = v5;
      v11 = *(v5 + 3);
      if (*&v7 >= v11 >> 1)
      {
        sub_100144108((v11 > 1), *&v7 + 1, 1);
        v5 = v17;
      }

      *(v5 + 2) = *&v7 + 1;
      v5[*&v7 + 4] = v10;
      v8 += 2;
      ++*&v7;
      --v9;
    }

    while (v9);
    sub_1001C0B48(v5);
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = objc_opt_self();
    do
    {
      v13 = *v6;
      v6 += 2;
      v14 = [v12 blackColor];
      v15 = [v14 colorWithAlphaComponent:v13];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_1001C0B48(_swiftEmptyArrayStorage);
  }

  *(v2 + OBJC_IVAR____TtC8AppStore12GradientView_colors) = _swiftEmptyArrayStorage;

  return sub_1001C0CEC();
}

id sub_1001DDCA4(uint64_t a1)
{
  sub_100005744(0, &unk_1009856A0);
  result = [swift_getObjCClassFromMetadata() effectCompositingColor:a1 withMode:0 alpha:0.4];
  if (result)
  {
    v3 = result;
    sub_10002849C(&qword_100973210);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1007B48F0;
    if (qword_10096D330 != -1)
    {
      swift_once();
    }

    v5 = qword_100979128;
    *(v4 + 32) = qword_100979128;
    *(v4 + 40) = v3;
    v6 = qword_10096D338;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_100979130;
    *(v4 + 48) = qword_100979130;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B48F0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001DDE20()
{
  result = qword_100972DC0;
  if (!qword_100972DC0)
  {
    type metadata accessor for TodayCard.Style();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972DC0);
  }

  return result;
}

void sub_1001DDE78()
{
  v1 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType) = kCAGradientLayerAxial;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle) = 0;
  v3 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style;
  v4 = qword_10096D340;
  v5 = kCAGradientLayerAxial;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = xmmword_1009CE6F0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001DDFC0()
{
  v1 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_1009791C0);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_100983CE8) isHidden])
  {
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    v10 = v7;
    sub_1001DF33C(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758);
    sub_100135DA0();
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    ItemLayoutContext.mutableState.getter();
    WritableStateLens.init(_:)();
    sub_1001DF2E8();
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
    v10 = v9;
    sub_1001DF33C(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758);
    sub_100135DA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_1001DE3B8(void *a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v9 & 1) == 0)
  {
    v15 = v6;
    v10 = *(v3 + 104);
    v10(v5, enum case for SystemImage.laurelLeading(_:), v2);
    if (qword_10096D548 != -1)
    {
      swift_once();
    }

    v11 = static SystemImage.load(_:with:)();
    v12 = *(v3 + 8);
    v12(v5, v2);
    v10(v5, enum case for SystemImage.laurelTrailing(_:), v2);
    v13 = static SystemImage.load(_:with:)();
    v12(v5, v2);
    [v11 size];
    [v13 size];

    v6 = v15;
  }

  sub_10029E79C(0, 3, 0, 1, a1, v6);
}

uint64_t sub_1001DE650@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1001DE6AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001DE7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001DF33C(&qword_100974CA8, type metadata accessor for ProductEditorsChoiceCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001DE838(uint64_t a1)
{
  result = sub_1001DF33C(&qword_1009791A8, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_1001DE8D8(uint64_t a1)
{
  v38 = type metadata accessor for PageGrid();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DynamicTextAppearance();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = type metadata accessor for LabelPlaceholder();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_1009791B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  type metadata accessor for EditorsChoice();
  sub_1001DF33C(&qword_100983810, &type metadata accessor for EditorsChoice);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_1001DF2E8();
  v32[2] = a1;
  ItemLayoutContext.typedState<A>(as:)();
  StateLens<A>.currentValue.getter();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = EditorsChoice.isCollapsed.getter();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v39 = LayoutViewPlaceholder.init(measureWith:)();
  EditorsChoice.notes.getter();
  DynamicTextAppearance.init()();
  if (qword_10096DF00 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  sub_1000056A8(v19, qword_1009D0C80);
  DynamicTextAppearance.withFontUseCase(_:)();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v20(v8, v22);
  LabelPlaceholder.Options.init(rawValue:)();
  v23 = v40;
  LabelPlaceholder.init(_:with:where:)();
  type metadata accessor for ProductEditorsChoiceView();
  v42[5] = v39;
  Measurable.placeable.getter();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_1000056E0(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = EditorsChoice.showsBadge.getter();
  sub_1003DA53C((v27 & 1) == 0, v43);
  sub_100007000(v42);
  sub_100007000(v41);
  sub_10002A400(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v29 = v42[0];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_100007000(v43);
  return v16;
}

uint64_t sub_1001DEF20()
{
  v0 = type metadata accessor for ShelfBackground();
  v29 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v22[-v4];
  v6 = sub_10002849C(&unk_1009731F0);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v9 = sub_10002849C(&qword_1009791B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  type metadata accessor for EditorsChoice();
  sub_1001DF33C(&qword_100983810, &type metadata accessor for EditorsChoice);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v14 = v31;
  if (v31)
  {
    v24 = v2;
    v25 = v0;
    v26 = *(v26 + OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_1001DF2E8();
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    if (v30)
    {
      v15 = 1;
    }

    else
    {
      v15 = EditorsChoice.isCollapsed.getter() ^ 1;
    }

    v23 = v15;
    (*(v10 + 8))(v12, v9);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    v16 = v28;
    ReadOnlyLens.subscript.getter();

    (*(v27 + 8))(v8, v16);
    v17 = v29;
    v18 = v24;
    v19 = v25;
    (*(v29 + 104))(v24, enum case for ShelfBackground.editorsChoice(_:), v25);
    v20 = static ShelfBackground.== infix(_:_:)();
    v21 = *(v17 + 8);
    v21(v18, v19);
    v21(v5, v19);
    sub_100207D74(v14, v23 & 1, v20 & 1);
  }

  return result;
}

unint64_t sub_1001DF2E8()
{
  result = qword_1009791B8;
  if (!qword_1009791B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009791B8);
  }

  return result;
}

uint64_t sub_1001DF33C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001DF398()
{
  result = qword_1009791C8;
  if (!qword_1009791C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009791C8);
  }

  return result;
}

unint64_t sub_1001DF3F0()
{
  result = qword_1009791D0;
  if (!qword_1009791D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009791D0);
  }

  return result;
}

uint64_t sub_1001DF444()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CE720);
  sub_1000056A8(v0, qword_1009CE720);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF4BC()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CE738);
  sub_1000056A8(v0, qword_1009CE738);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF534()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CE750);
  sub_1000056A8(v0, qword_1009CE750);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF5AC()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CE768);
  sub_1000056A8(v0, qword_1009CE768);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF624()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x8000000100806F00;
  if (qword_10096D358 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_1009CE720);
  v63 = type metadata accessor for LocalPreferences();
  v9 = static LocalPreferences.AppStoreKit.getter();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  AnyHashable.init<A>(_:)();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x8000000100806F70;
  v20 = v3;
  if (qword_10096D360 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v4, qword_1009CE738);
  v22 = static LocalPreferences.AppStoreKit.getter();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x8000000100806F50;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  AnyHashable.init<A>(_:)();
  v62(v7, v4);

  if (qword_10096D368 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v4, qword_1009CE750);
  v32 = static LocalPreferences.AppStoreKit.getter();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x8000000100806FB0;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x8000000100806FD0;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  AnyHashable.init<A>(_:)();
  v62(v7, v4);

  v57 = v20;
  if (qword_10096D370 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v4, qword_1009CE768);
  v40 = static LocalPreferences.AppStoreKit.getter();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x8000000100807040;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x8000000100807060;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  AnyHashable.init<A>(_:)();
  v62(v7, v4);

  sub_10002849C(&qword_100973210);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007B0B70;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007BB060;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_1001DFE98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001DFF84(void *a1, uint64_t a2)
{
  v4 = ASKBuildTypeGetCurrent();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v13 != v14)
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_6;
      }

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      type metadata accessor for LocalPreferences();
      static LocalPreferences.currentApplication.getter();
      if (qword_10096E988 != -1)
      {
        swift_once();
      }

      v25 = sub_10002849C(&qword_100979740);
      sub_1000056A8(v25, qword_1009D2A68);
      Preferences.subscript.getter();

      if (v27 != 2 && (v27 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v22 = 0;
      return v22 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (*a1 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v21, a2);
  Preferences.subscript.getter();

  v22 = v26;
  return v22 & 1;
}

uint64_t sub_1001E0268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v84 = a4;
  v87 = a1;
  v88 = a3;
  v86 = a2;
  v90 = a6;
  v91 = a7;
  v89 = a5;
  v76 = type metadata accessor for SearchLandingChartsAndCategoriesDisplayOptions();
  v68 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DynamicTypeSize();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageGrid.Direction();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v68 - v12;
  __chkstk_darwin(v13);
  v73 = &v68 - v14;
  v15 = type metadata accessor for Shelf.ContentsMetadata();
  v85 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v72 = type metadata accessor for SearchLandingTrendingDisplayOptions();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Shelf.ContentType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v25);
  v83 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  sub_100031660(v87, &v68 - v28, &unk_10098FFB0);
  v30 = *(v25 + 48);
  v87 = v29;
  sub_100031660(v86, &v29[v30], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v86 = v22;
  v31 = (*(v22 + 88))(v24, v21);
  if (v31 == enum case for Shelf.ContentType.action(_:))
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v32 = v85;
    if ((*(v85 + 88))(v19, v15) == enum case for Shelf.ContentsMetadata.searchLandingTrendingSection(_:))
    {
      (*(v32 + 96))(v19, v15);
      v33 = v71;
      v34 = v70;
      v35 = v72;
      (*(v71 + 32))(v70, v19, v72);
      v36 = SearchLandingTrendingDisplayOptions.numberOfColumns.getter();
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v38 = v80;
      v37 = v81;
      v39 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v92)
      {
        v39 = &enum case for PageGrid.Direction.vertical(_:);
      }

      v40 = v73;
      (*(v80 + 104))(v73, *v39, v81);
      v41 = v82;
      PageEnvironment.dynamicTypeSize.getter();
      v42 = DynamicTypeSize.isAccessibilitySize.getter();
      (*(v77 + 8))(v41, v78);
      if (v42 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
      {
        v36 = 1;
      }

      (*(v38 + 16))(v79, v40, v37);
      sub_1005AE464(v36);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v38 + 8))(v40, v37);
      (*(v33 + 8))(v34, v35);
LABEL_24:
      v63 = &qword_100974650;
      v62 = v87;
      return sub_10002B894(v62, v63);
    }

    (*(v32 + 8))(v19, v15);
    v55 = v83;
    v92 = v84;
    v56 = v87;
    sub_100031660(v87, v83, &qword_100974650);
    v57 = *(v25 + 48);
    sub_10010E37C();
  }

  else
  {
    v43 = v85;
    if (v31 != enum case for Shelf.ContentType.searchChartsAndCategories(_:))
    {
      v58 = v83;
      v92 = v84;
      v59 = v87;
      sub_100031660(v87, v83, &qword_100974650);
      v60 = *(v25 + 48);
      sub_10010E37C();
      PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
      sub_10002B894(v59, &qword_100974650);
      sub_10002B894(v58 + v60, &unk_10098FFB0);
      sub_10002B894(v58, &unk_10098FFB0);
      return (*(v86 + 8))(v24, v21);
    }

    swift_getKeyPath();
    v44 = v69;
    ReadOnlyLens.subscript.getter();

    if ((*(v43 + 88))(v44, v15) == enum case for Shelf.ContentsMetadata.searchLandingChartsAndCategoriesSection(_:))
    {
      (*(v43 + 96))(v44, v15);
      v45 = v68;
      (*(v68 + 32))(v75, v44, v76);
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v47 = v80;
      v46 = v81;
      v48 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v92)
      {
        v48 = &enum case for PageGrid.Direction.vertical(_:);
      }

      (*(v80 + 104))(v74, *v48, v81);
      v49 = v82;
      PageEnvironment.dynamicTypeSize.getter();
      v50 = DynamicTypeSize.isAccessibilitySize.getter();
      v51 = *(v77 + 8);
      v52 = v49;
      v53 = v78;
      v51(v52, v78);
      if (v50)
      {
        v54 = 1;
      }

      else
      {
        v54 = SearchLandingChartsAndCategoriesDisplayOptions.numberOfColumns.getter();
      }

      v64 = v82;
      PageEnvironment.dynamicTypeSize.getter();
      v65 = DynamicTypeSize.isAccessibilitySize.getter();
      v51(v64, v53);
      if (v65 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
      {
        v54 = 1;
      }

      v66 = v75;
      v67 = v74;
      (*(v47 + 16))(v79, v74, v46);
      sub_1001D231C(v54);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v47 + 8))(v67, v46);
      (*(v45 + 8))(v66, v76);
      goto LABEL_24;
    }

    (*(v43 + 8))(v44, v15);
    v55 = v83;
    v92 = v84;
    v56 = v87;
    sub_100031660(v87, v83, &qword_100974650);
    v57 = *(v25 + 48);
    sub_10010E37C();
  }

  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v56, &qword_100974650);
  sub_10002B894(v55 + v57, &unk_10098FFB0);
  v62 = v55;
  v63 = &unk_10098FFB0;
  return sub_10002B894(v62, v63);
}

uint64_t sub_1001E0EE8()
{
  sub_1001C440C();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1001E0FCC()
{
  sub_1001C440C();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1001E10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E1370();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1001E1114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v21[6] = a5;
  v21[7] = a6;
  v21[5] = a4;
  *&v21[3] = a8;
  *&v21[4] = a9;
  v21[1] = a7;
  v21[2] = a1;
  v12 = sub_10002849C(&qword_100974650);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v21 - v17;
  sub_100031660(a2, v21 - v17, &unk_10098FFB0);
  sub_100031660(a3, &v18[*(v13 + 56)], &unk_10098FFB0);
  v22 = *v9;
  sub_100031660(v18, v15, &qword_100974650);
  v19 = *(v13 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v18, &qword_100974650);
  sub_10002B894(&v15[v19], &unk_10098FFB0);
  return sub_10002B894(v15, &unk_10098FFB0);
}

uint64_t sub_1001E12F4()
{
  v1 = *v0;
  sub_10002849C(&qword_100979208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B10D0;
  *(v2 + 56) = &type metadata for GenericPageGridProvider;
  *(v2 + 64) = sub_10010E37C();
  *(v2 + 72) = sub_1001E13C4();
  *(v2 + 32) = v1;

  return v2;
}

unint64_t sub_1001E1370()
{
  result = qword_100979200;
  if (!qword_100979200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979200);
  }

  return result;
}

unint64_t sub_1001E13C4()
{
  result = qword_100979210;
  if (!qword_100979210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979210);
  }

  return result;
}

char *sub_1001E1418(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_gradientView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v10 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets];
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  *(v11 + 1) = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_artworkView]];
  return v13;
}

uint64_t sub_1001E15F0(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a3;
  v22 = a2;
  v7 = type metadata accessor for ShelfBackground();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ShelfBackground.artwork(_:))
  {
    (*(v8 + 96))(v10, v7);
    v11 = *(sub_10002849C(&qword_100978420) + 48);
    [v5 frame];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.backgroundColor.getter();
    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v12 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  else
  {
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    (*(v8 + 8))(v10, v7);
  }

  v13 = &v5[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets];
  v14 = *&v5[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets];
  v15 = *&v5[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets + 16];
  v17 = v21.n128_f64[0];
  *&v16.f64[0] = v22.n128_u64[0];
  *v13 = v22.n128_f64[0];
  v13[1] = v17;
  *&v19.f64[0] = v23.n128_u64[0];
  v18 = v24.n128_f64[0];
  v13[2] = v23.n128_f64[0];
  v13[3] = v18;
  v16.f64[1] = v17;
  v19.f64[1] = v18;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, v16), vceqq_f64(v15, v19)))) & 1) == 0)
  {
    [v5 setNeedsLayout];
  }
}

id sub_1001E1934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E19DC()
{
  v1 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001E1AA4(uint64_t a1, char a2)
{
  *(v2 + qword_1009920B8) = a2 & 1;
  sub_1006BB698();
  dispatch thunk of CustomLayoutView.invalidateMeasurements()();
  v47 = v2;
  v3 = *(v2 + qword_100992090);
  Ratings.ratingAverage.getter();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v48.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v48.value.super.super.isa;
  v48.is_nil = 1;
  object = localizedStringForDecimal(_:_:)(v48, v9).value._object;

  if (!object)
  {
    Ratings.ratingAverage.getter();
    Float.description.getter();
  }

  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v12 = NSKernAttributeName;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10005DC58(inited + 32);
  v13 = objc_allocWithZone(NSAttributedString);
  v14 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10006F0F0();
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithString:v14 attributes:v15];

  [v3 setAttributedText:v16];
  Ratings.ratingAverage.getter();
  sub_1003A2E44(v17);
  v18 = *(v47 + qword_1009920A8);
  v19 = Ratings.totalNumberOfRatings.getter();
  v20._object = 0x80000001007FBBD0;
  v20._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v20, v19, v21);
  v22 = String._bridgeToObjectiveC()();

  [v18 setText:v22];

  result = Ratings.ratingCounts.getter();
  if (!result)
  {
    goto LABEL_30;
  }

  v24 = result;
  v25 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 5)
  {
    goto LABEL_29;
  }

  v46 = 5;
  while (2)
  {
    v26 = 4;
    v27 = qword_1009920B0;
    while (1)
    {
      v30 = v26 - 4;
      if ((v24 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v31 = *(v24 + 8 * v26);
      }

      v32 = v31;
      v33 = v26 - 3;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v34 = *(v47 + v27);
      [v31 floatValue];
      v36 = v35;
      v37 = Ratings.totalNumberOfRatings.getter();
      v38 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews;
      v39 = *(v34 + OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews);
      if (v39 >> 62)
      {
        if (v30 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_10;
        }
      }

      else if (v30 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v40 = *(v34 + v38);
      if ((v40 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v28 = *(v40 + 8 * v26);
      }

      v29 = v28;
      *&v28[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progress] = v36 / v37;
      [v28 setNeedsLayout];

LABEL_10:
      ++v26;
      if (v33 == v46)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (_CocoaArrayWrapper.endIndex.getter() == 5)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (!v46)
      {
LABEL_28:

        return dispatch thunk of CustomLayoutView.invalidateMeasurements()();
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v41 = *(*(v47 + qword_1009920B0) + OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews);
  if (v41 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v42 = result;
    if (!result)
    {
      return dispatch thunk of CustomLayoutView.invalidateMeasurements()();
    }

LABEL_32:
    if (v42 >= 1)
    {
      v43 = 0;
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        ++v43;
        *&v44[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progress] = 0;
        [v44 setNeedsLayout];
      }

      while (v42 != v43);
      return dispatch thunk of CustomLayoutView.invalidateMeasurements()();
    }

    __break(1u);
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_32;
    }

    return dispatch thunk of CustomLayoutView.invalidateMeasurements()();
  }

  return result;
}