void sub_1002EBEE4(uint64_t a1)
{
  v3 = type metadata accessor for InAppPurchaseTheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for InAppPurchaseTheme.infer(_:) || v8 == enum case for InAppPurchaseTheme.light(_:) || v8 == enum case for InAppPurchaseTheme.dark(_:))
  {
    if (qword_10096D680 != -1)
    {
      swift_once();
    }

    v11 = qword_10097F640;
    goto LABEL_16;
  }

  if (v8 == enum case for InAppPurchaseTheme.spotlight(_:))
  {
    if (qword_10096D688 != -1)
    {
      swift_once();
    }

    v11 = qword_10097F648;
LABEL_16:
    v12 = v11;
    goto LABEL_20;
  }

  if (qword_10096D680 != -1)
  {
    swift_once();
  }

  v13 = *(v4 + 8);
  v12 = qword_10097F640;
  v13(v7, v3);
LABEL_20:
  if (v1[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_iconType] != 2)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView] setBackgroundColor:v12];
  }

  v14 = *&v1[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView];
  if (qword_10096D690 != -1)
  {
    swift_once();
  }

  v15 = qword_10097F650;
  v16 = *&v14[OBJC_IVAR____TtC8AppStore8PlusView_plusColor];
  *&v14[OBJC_IVAR____TtC8AppStore8PlusView_plusColor] = qword_10097F650;
  v17 = v15;

  [v14 setNeedsDisplay];
  [v1 setNeedsDisplay];
}

uint64_t sub_1002EC1D0()
{
  ObjectType = swift_getObjectType();
  v57 = ObjectType;
  v2 = type metadata accessor for CornerStyle();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artwork.Style();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v44 - v7;
  __chkstk_darwin(v8);
  v47 = &v44 - v9;
  v10 = type metadata accessor for LayoutRect();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v15;
  v16 = type metadata accessor for InAppPurchaseIconLayout();
  v58 = *(v16 - 8);
  v59 = v16;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78.receiver = v0;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, "layoutSubviews", v17);
  (*(v13 + 16))(v15, &v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_metrics], v12);
  v20 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
  v21 = type metadata accessor for ArtworkView();
  v76 = v21;
  v77 = &protocol witness table for UIView;
  v75 = v20;
  v22 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView];
  v73 = sub_100005744(0, &qword_100972EB0);
  v74 = &protocol witness table for UIView;
  v71 = &protocol witness table for UIView;
  v72 = v22;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView];
  v70 = v73;
  v69 = v23;
  v24 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView];
  v67 = type metadata accessor for PlusView();
  v68 = &protocol witness table for UIView;
  v65 = &protocol witness table for UIView;
  v66 = v24;
  v25 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView];
  v64 = v21;
  v63 = v25;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  InAppPurchaseIconLayout.init(metrics:artworkView:artworkContainingView:backgroundView:plusView:tileArtworkView:tileArtworkBackgroundView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v31 = v54;
  v53 = v0;
  v57 = v19;
  InAppPurchaseIconLayout.placeChildren(relativeTo:in:)();
  (v55)[1](v31, v56);
  if (([v30 isHidden] & 1) == 0)
  {
    ArtworkView.frame.getter();
    v32 = v45;
    ArtworkView.style.getter();
    v55 = v27;
    v56 = v29;
    v34 = v48;
    v33 = v49;
    v35 = v46;
    (*(v48 + 104))(v46, enum case for Artwork.Style.roundedRect(_:), v49);
    v36 = v28;
    v37 = v47;
    Artwork.Style.orIfUnspecified(_:)();
    v38 = *(v34 + 8);
    v38(v35, v33);
    v38(v32, v33);
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)();
    v38(v37, v33);
    v40 = v50;
    v39 = v51;
    v41 = v52;
    (*(v51 + 104))(v50, enum case for CornerStyle.arc(_:), v52);
    ArtworkView.setCorner(radius:style:)();
    v42 = v40;
    v29 = v56;
    (*(v39 + 8))(v42, v41);
    sub_1002EC7A4(v30, v36);
    sub_1002EC7A4(v30, v55);
  }

  [v29 setNeedsDisplay];
  return (*(v58 + 8))(v57, v59);
}

void sub_1002EC7A4(void *a1, id a2)
{
  [a2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRect:{v6, v8, v10, v12}];
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a2 frame];
  v57.origin.x = v23;
  v57.origin.y = v24;
  v57.size.width = v25;
  v57.size.height = v26;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectIntersection(v53, v57);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
  v32 = -v31;
  InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
  v34 = -v33;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectInset(v55, v32, v34);
  [v2 convertRect:a2 toCoordinateSpace:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  dispatch thunk of RoundedCornerView.cornerRadius.getter();
  v44 = v43;
  dispatch thunk of RoundedCornerView.cornerRadius.getter();
  v46 = [v13 bezierPathWithRoundedRect:2 byRoundingCorners:v36 cornerRadii:{v38, v40, v42, v44, v45}];
  v47 = [v46 bezierPathByReversingPath];

  [v14 appendPath:v47];
  v48 = [objc_allocWithZone(CAShapeLayer) init];
  v49 = [v14 CGPath];
  [v48 setPath:v49];

  v50 = [a2 layer];
  [v50 setMasksToBounds:1];

  v51 = [a2 layer];
  [v51 setMask:v48];
}

void sub_1002ECAFC(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InAppPurchaseTheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  ArtworkView.image.getter();
  ArtworkView.image.setter();
  ArtworkView.image.getter();
  ArtworkView.image.setter();
  v11 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &a1[v11], v4);
  v13 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], v10, v4);
  swift_endAccess();
  v12(v7, &v2[v13], v4);
  sub_1002EBEE4(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = [a1 backgroundColor];
  [v2 setBackgroundColor:v15];
}

uint64_t type metadata accessor for InAppPurchaseView()
{
  result = qword_10097F6B0;
  if (!qword_10097F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002ECE98()
{
  result = type metadata accessor for InAppPurchaseTheme();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InAppPurchaseIconLayout.Metrics();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1002ECF90(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - v11;
  v12 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer;
  *&v4[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView;
  *&v4[v14] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView] = 0;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer;
  v17 = *&v15[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer];
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v17;
  v21 = [v18 whiteColor];
  v22 = [v21 colorWithAlphaComponent:0.5];

  v23 = [v22 CGColor];
  [v20 setBackgroundColor:v23];

  v46 = v16;
  v47 = v15;
  [*&v15[v16] setCompositingFilter:kCAFilterScreenBlendMode];
  v24 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer;
  v25 = *&v19[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer];
  v26 = [v18 whiteColor];
  v27 = [v26 colorWithAlphaComponent:0.8];

  v28 = [v27 CGColor];
  [v25 setBackgroundColor:v28];

  [*&v19[v24] setCompositingFilter:kCAFilterOverlayBlendMode];
  v29 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView;
  v30 = *&v19[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView];
  sub_10002849C(&qword_100973210);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007B15F0;
  v32 = objc_opt_self();
  v33 = v30;
  result = [v32 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v31 + 32) = result;
    *(v31 + 40) = [objc_opt_self() colorEffectSaturate:1.4];
    sub_100005744(0, &qword_10097FB70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 setBackgroundEffects:isa];

    v36 = v19;
    v37 = [v36 layer];
    [v37 addSublayer:*&v19[v24]];

    v38 = [v36 layer];
    [v38 addSublayer:*&v47[v46]];

    [v36 addSubview:*&v19[v29]];
    v39 = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (qword_10096DAD8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Shadow();
    v41 = sub_1000056A8(v40, qword_1009CFEE8);
    v42 = *(v40 - 8);
    v43 = v48;
    (*(v42 + 16))(v48, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    dispatch thunk of ShadowView.shadow.setter();
    [v36 insertSubview:v39 belowSubview:*&v19[v29]];
    v44 = *&v36[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView];
    *&v36[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView] = v39;

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002ED51C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }
}

unint64_t sub_1002ED71C()
{
  result = qword_10097F708;
  if (!qword_10097F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F708);
  }

  return result;
}

void sub_1002ED770()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_smallCornerRadius) = 0x4010000000000000;
  v2 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView;
  *(v1 + v2) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v3) = static ArtworkView.iapIconArtworkView.getter();
  v4 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = type metadata accessor for InAppPurchaseTheme();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002ED888()
{
  v1 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1002ED958(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v12 = [v10 contentView];
  [v12 addSubview:*&v10[OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView]];

  return v10;
}

id sub_1002EDC10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002EDC98()
{
  result = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

id sub_1002EDD90()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_10097F740 = result;
  return result;
}

id sub_1002EDDE0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.450980392 blue:0.333333333 alpha:1.0];
  qword_10097F748 = result;
  return result;
}

id sub_1002EDE30()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.764705882 green:0.133333333 blue:0.180392157 alpha:1.0];
  qword_10097F750 = result;
  return result;
}

id sub_1002EDEA8()
{
  result = [objc_opt_self() whiteColor];
  qword_10097F760 = result;
  return result;
}

void sub_1002EDF1C(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent:a1];

  *a4 = v7;
}

uint64_t (*sub_1002EDF98(uint64_t a1))(void *a1)
{
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v4 = *(AllButtonStyle - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(AllButtonStyle);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, AllButtonStyle, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), AllButtonStyle);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  return sub_1002F4EA0;
}

uint64_t sub_1002EE0D4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_10097F778;
  swift_beginAccess();
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v6 = *(AllButtonStyle - 8);
  (*(v6 + 24))(&v1[v4], a1, AllButtonStyle);
  swift_endAccess();
  v7 = *&v1[qword_10097F798];
  v11[4] = sub_1002EDF98(&v1[v4]);
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100080D48;
  v11[3] = &unk_1008BD428;
  v9 = _Block_copy(v11);

  [v7 setConfigurationUpdateHandler:v9];
  _Block_release(v9);
  [v2 setNeedsLayout];
  return (*(v6 + 8))(a1, AllButtonStyle);
}

char *sub_1002EE250(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = qword_10097F778;
  v14 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 104))(&v4[v13], v14, AllButtonStyle);
  v16 = &v4[qword_1009CF450];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = qword_10097F780;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10097F788;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  *&v4[qword_10097F790] = _swiftEmptyArrayStorage;
  v19 = qword_10097F798;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  v20 = &v4[qword_10097F7A0];
  *v20 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v20[1] = 0;
  *&v4[qword_10097F7A8] = _swiftEmptyArrayStorage;
  swift_weakInit();
  *&v4[qword_10097F7B8] = _swiftEmptyArrayStorage;
  v4[qword_10097F7C0] = 0;
  *&v4[qword_10097F7C8] = 0;
  v4[qword_1009CF458] = 0;
  v21 = &v4[qword_10097F7D0];
  *v21 = 0;
  v21[8] = 1;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  [v22 _setCornerRadius:20.0];
  v23 = v22;
  [v23 setClipsToBounds:1];
  v24 = qword_10097F780;
  [v23 addSubview:*&v23[qword_10097F780]];
  [v23 addSubview:*&v23[qword_10097F788]];
  v25 = qword_10097F798;
  [v23 addSubview:*&v23[qword_10097F798]];
  v26 = *&v23[v24];
  sub_10002849C(&qword_100973210);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B15F0;
  v28 = qword_10096D6A0;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_10097F748;
  *(v27 + 32) = qword_10097F748;
  v31 = qword_10096D6A8;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_10097F750;
  *(v27 + 40) = qword_10097F750;
  *&v29[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v27;
  v34 = v33;

  sub_1001C0CEC();

  v35 = *&v23[v25];
  [v35 addTarget:v23 action:"didTapDownloadAllButton" forControlEvents:64];

  v36 = *&v23[v25];
  static UIButton.Configuration.filled()();
  v37 = type metadata accessor for UIButton.Configuration();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  UIButton.configuration.setter();

  v38 = [*&v23[v25] layer];
  [v38 setCompositingFilter:kCAFilterPlusL];

  [*&v23[v25] setOverrideUserInterfaceStyle:2];
  v39 = [v23 layer];

  [v39 setAllowsGroupBlending:0];
  [*&v23[v25] setHidden:1];

  return v23;
}

void sub_1002EE774()
{
  v1 = qword_10097F778;
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 8))(v0 + v1, AllButtonStyle);
  sub_10002B894(v0 + qword_1009CF450, &qword_10097F860);

  swift_weakDestroy();

  v3 = *(v0 + qword_10097F7C8);
}

id sub_1002EE890()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_10097F7B8];
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      ++v5;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      result = swift_unknownObjectRelease();
      v6 += 16;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, "dealloc");
  }

  return result;
}

void sub_1002EE99C(uint64_t a1)
{
  v2 = qword_10097F778;
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 8))(a1 + v2, AllButtonStyle);
  sub_10002B894(a1 + qword_1009CF450, &qword_10097F860);

  swift_weakDestroy();

  v4 = *(a1 + qword_10097F7C8);
}

uint64_t sub_1002EEABC()
{
  v1 = type metadata accessor for LegacyAppState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v38 - v6;
  v7 = sub_10002849C(&qword_100975C58);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = qword_10097F7B8;
  v59 = v0;
  v11 = *(v0 + qword_10097F7B8);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_29;
  }

  v45 = qword_10097F7B8;
  v60 = _swiftEmptyArrayStorage;

  sub_100144044(0, v12, 0);
  v13 = v60;
  v55 = (v2 + 32);
  v54 = (v2 + 88);
  v53 = enum case for LegacyAppState.waiting(_:);
  v50 = enum case for LegacyAppState.updatable(_:);
  v51 = enum case for LegacyAppState.purchased(_:);
  v46 = enum case for LegacyAppState.paused(_:);
  v47 = enum case for LegacyAppState.downloadable(_:);
  v42 = enum case for LegacyAppState.installing(_:);
  v43 = enum case for LegacyAppState.downloading(_:);
  v40 = enum case for LegacyAppState.buyable(_:);
  v41 = enum case for LegacyAppState.openable(_:);
  v48 = (v2 + 8);
  v39 = enum case for LegacyAppState.installed(_:);
  v52 = (v2 + 96);
  v44 = v11;
  v14 = v11 + 40;
  v38 = enum case for LegacyAppState.unknown(_:);
  v49 = enum case for PurchaseType.preorder(_:);
  v15 = v58;
  do
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.adamId.getter();
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
    (*v55)(v4, v15, v1);
    v16 = (*v54)(v4, v1);
    if (v16 == v53)
    {
      (*v52)(v4, v1);
      v17 = type metadata accessor for InstallationType();
LABEL_5:
      (*(*(v17 - 8) + 8))(v4, v17);
LABEL_6:
      v18 = 0;
      goto LABEL_14;
    }

    if (v16 == v51)
    {
      (*v52)(v4, v1);
      v19 = type metadata accessor for PurchaseType();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 88))(v4, v19);
      if (v21 != v49)
      {
        (*(v20 + 8))(v4, v19);
        goto LABEL_6;
      }
    }

    else if (v16 == v50 || v16 == v47)
    {
      (*v48)(v4, v1);
    }

    else if (v16 == v46)
    {
      (*v52)(v4, v1);
      v24 = type metadata accessor for LegacyAppState.AppInstallationDetails();
      (*(*(v24 - 8) + 8))(v4, v24);
    }

    else
    {
      if (v16 == v43 || v16 == v42)
      {
        (*v52)(v4, v1);
        v17 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        goto LABEL_5;
      }

      if (v16 == v41)
      {
        (*v52)(v4, v1);

        v17 = type metadata accessor for OpenableDestination();
        goto LABEL_5;
      }

      if (v16 != v40)
      {
        if (v16 == v39)
        {
          goto LABEL_6;
        }

        if (v16 != v38)
        {
          (*v48)(v4, v1);
          goto LABEL_6;
        }
      }
    }

    v18 = 1;
LABEL_14:
    v9[*(v57 + 48)] = v18;
    v60 = v13;
    v23 = *(v13 + 2);
    v22 = *(v13 + 3);
    if (v23 >= v22 >> 1)
    {
      sub_100144044(v22 > 1, v23 + 1, 1);
      v13 = v60;
    }

    *(v13 + 2) = v23 + 1;
    sub_1002F4744(v9, v13 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v23);
    v14 += 16;
    --v12;
  }

  while (v12);

  v10 = v45;
LABEL_29:
  if (*(v13 + 2))
  {
    sub_10002849C(&qword_100970CD0);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = &_swiftEmptyDictionarySingleton;
  }

  v60 = v25;

  sub_1002F47B4(v26, 1, &v60);
  v27 = swift_allocObject();

  *(v27 + 16) = v60;
  v28 = swift_allocObject();
  v29 = v59;
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;

  sub_1002EF624(v31, v28);

  v32 = *(v29 + v10);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 40;
    while (v34 < *(v32 + 16))
    {
      ++v34;
      swift_getObjectType();
      v36 = swift_allocObject();
      v36[2] = v27;
      v36[3] = sub_1002F4D00;
      v36[4] = v30;

      swift_unknownObjectRetain();

      dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();
      swift_unknownObjectRelease();

      v35 += 16;
      if (v33 == v34)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_36:
  }

  return result;
}

uint64_t sub_1002EF284()
{
  v1 = v0;
  v2 = type metadata accessor for LegacyAppState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = type metadata accessor for InstallationType();
LABEL_3:
    (*(*(v8 - 8) + 8))(v6, v8);
    return 0;
  }

  if (v7 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = type metadata accessor for PurchaseType();
    v11 = *(v10 - 8);
    if ((*(v11 + 88))(v6, v10) != enum case for PurchaseType.preorder(_:))
    {
      (*(v11 + 8))(v6, v10);
      return 0;
    }
  }

  else if (v7 == enum case for LegacyAppState.updatable(_:) || v7 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 == enum case for LegacyAppState.paused(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  else
  {
    if (v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
    {
      (*(v3 + 96))(v6, v2);
      v8 = type metadata accessor for LegacyAppState.AppInstallationDetails();
      goto LABEL_3;
    }

    if (v7 == enum case for LegacyAppState.openable(_:))
    {
      (*(v3 + 96))(v6, v2);

      v8 = type metadata accessor for OpenableDestination();
      goto LABEL_3;
    }

    if (v7 != enum case for LegacyAppState.buyable(_:))
    {
      if (v7 == enum case for LegacyAppState.installed(_:))
      {
        return 0;
      }

      if (v7 != enum case for LegacyAppState.unknown(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }
  }

  return 1;
}

void sub_1002EF624(uint64_t a1, uint64_t a2)
{
  v53[1] = a2;
  v62 = sub_10002849C(&qword_10097F838);
  __chkstk_darwin(v62);
  v57 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = v53 - v5;
  __chkstk_darwin(v6);
  v59 = v53 - v7;
  __chkstk_darwin(v8);
  v58 = v53 - v9;
  swift_beginAccess();
  v54 = a1;
  v10 = *(a1 + 16);
  v11 = *(v10 + 64);
  v56 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v55 = (v12 + 63) >> 6;
  v61 = v10;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = v59;
  while (v14)
  {
    v17 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v61;
    v21 = *(v61 + 48);
    v22 = type metadata accessor for AdamId();
    v23 = *(v22 - 8);
    v24 = v58;
    (*(v23 + 16))(v58, v21 + *(v23 + 72) * v19, v22);
    v25 = *(*(v20 + 56) + v19);
    v26 = v62;
    *(v24 + *(v62 + 48)) = v25;
    sub_100031660(v24, v16, &qword_10097F838);
    v27 = *(v26 + 48);
    LOBYTE(v21) = *(v16 + v27);
    v28 = v60;
    (*(v23 + 32))(v60, v16, v22);
    *(v28 + v27) = v21;
    sub_10002B894(v28, &qword_10097F838);
    sub_10002B894(v24, &qword_10097F838);
    if ((v21 & 1) == 0)
    {
      v29 = 1;
LABEL_13:

      v30 = v54;
      swift_beginAccess();
      v31 = *(v30 + 16);
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
        v37 = v36;
LABEL_22:
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v38 | (v37 << 6);
        v40 = *(v31 + 48);
        v41 = type metadata accessor for AdamId();
        v42 = *(v41 - 8);
        v43 = v40 + *(v42 + 72) * v39;
        v44 = v57;
        (*(v42 + 16))(v57, v43, v41);
        LODWORD(v39) = *(*(v31 + 56) + v39);
        *(v44 + *(v62 + 48)) = v39;
        sub_10002B894(v44, &qword_10097F838);
        if (v39 == 1)
        {
          v45 = 1;
LABEL_25:

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v47 = Strong;
            v48 = *(Strong + qword_10097F798);

            [v48 setEnabled:v45];
          }

          swift_beginAccess();
          v49 = swift_unknownObjectWeakLoadStrong();
          if (v49)
          {
            v50 = v49;
            v51 = v49 + qword_1009CF450;
            swift_beginAccess();
            if (*(v51 + 24))
            {
              sub_10002C0AC(v51, v63);

              sub_10002A400(v63, v63[3]);
              if (v45)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              if (!v29)
              {
                v52 = 0;
              }

              sub_100423650(v52);
              sub_100007000(v63);
            }

            else
            {
            }
          }

          return;
        }
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_38;
        }

        if (v37 >= v35)
        {
          v45 = 0;
          goto LABEL_25;
        }

        v34 = *(v31 + 64 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          goto LABEL_22;
        }
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v55)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v14 = *(v56 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1002EFBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v6 = type metadata accessor for LegacyAppState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdamId();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.adamId.getter();
  dispatch thunk of AppStateMachine.currentState.getter();
  v14 = sub_1002EF284();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_10005236C(v14 & 1, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v10);
  *(a3 + 16) = v20;
  v16 = swift_endAccess();
  return v19(v16);
}

uint64_t sub_1002EFDA4(uint64_t a1)
{
  v3 = qword_10097F7B8;
  v4 = *(v1 + qword_10097F7B8);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 40;
    while (v7 < *(v4 + 16))
    {
      ++v7;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      result = swift_unknownObjectRelease();
      v8 += 16;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v3) = a1;

    return sub_1002EEABC();
  }

  return result;
}

uint64_t sub_1002EFE80(void *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_10002849C(&qword_10097F848);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v69 = &v53[-v9];
  v10 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-v11];
  v63 = type metadata accessor for UIButton.Configuration.Size();
  v61 = *(v63 - 1);
  __chkstk_darwin(v63);
  v62 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v68 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v64 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v19 - 8);
  v65 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v53[-v22];
  v24 = type metadata accessor for UIButton.Configuration();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UIButton.configuration.getter();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10002B894(v23, &qword_10097CC90);
  }

  v58 = v12;
  (*(v25 + 32))(v27, v23, v24);
  v29 = [a1 state];
  v59 = v5;
  v60 = v6;
  if (v29 == 2)
  {
    if (qword_10096D6C8 != -1)
    {
      swift_once();
    }

    v32 = UIColor.highlighted.getter();
    v33 = qword_10096D6C0;
    v57 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = &qword_10097F768;
  }

  else
  {
    if (v29 == 1)
    {
      if (qword_10096D6C8 != -1)
      {
        swift_once();
      }

      v30 = UIColor.highlighted.getter();
      v31 = qword_10096D6B8;
    }

    else
    {
      if (qword_10096D6C8 != -1)
      {
        swift_once();
      }

      v31 = qword_10096D6B8;
      v30 = qword_10097F770;
    }

    v57 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = &qword_10097F760;
  }

  v35 = *v34;
  v36 = v68;
  v56 = *(v68 + 16);
  v56(v18, v70, AllButtonStyle);
  v55 = *(v36 + 88);
  v37 = v55(v18, AllButtonStyle);
  v54 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:))
  {
    v38 = v35;
    UIButton.Configuration.contentInsets.setter();
  }

  else if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
  {
    (*(v61 + 104))(v62, enum case for UIButton.Configuration.Size.large(_:), v63);
    v39 = v35;
    UIButton.Configuration.buttonSize.setter();
  }

  else
  {
    v63 = *(v68 + 8);
    v40 = v35;
    (v63)(v18, AllButtonStyle);
  }

  v41 = swift_allocObject();
  v63 = v35;
  *(v41 + 16) = v35;
  *(v41 + 24) = a1;
  a1;
  v42 = v58;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v43 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v44 = v69;
  UIButton.Configuration.background.getter();
  v45 = v64;
  v56(v64, v70, AllButtonStyle);
  v46 = v55(v45, AllButtonStyle);
  if (v46 == v54)
  {
    UIBackgroundConfiguration.cornerRadius.setter();
    v47 = v60;
    v48 = v67;
    v49 = v57;
  }

  else
  {
    v47 = v60;
    v48 = v67;
    v49 = v57;
    if (v46 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
    {
      v44 = v69;
      UIBackgroundConfiguration.cornerRadius.setter();
    }

    else
    {
      (*(v68 + 8))(v45, AllButtonStyle);
      v44 = v69;
    }
  }

  *(swift_allocObject() + 16) = v49;
  v50 = v59;
  UIConfigurationColorTransformer.init(_:)();
  v51 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  UIBackgroundConfiguration.backgroundColorTransformer.setter();
  (*(v48 + 16))(v66, v44, v47);
  UIButton.Configuration.background.setter();
  v52 = v65;
  (*(v25 + 16))(v65, v27, v24);
  (*(v25 + 56))(v52, 0, 1, v24);
  UIButton.configuration.setter();

  (*(v48 + 8))(v44, v47);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_1002F0778@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_1002F4F4C();
  v9 = a2;
  AttributeContainer.subscript.setter();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E348 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  sub_1000056A8(v10, qword_1009D1958);
  v11 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_1001469E0();
  AttributeContainer.subscript.setter();
  if (qword_10096E8A0 != -1)
  {
    swift_once();
  }

  v12 = qword_1009D2978;
  sub_1002F4FA0();
  v13 = v12;
  return AttributeContainer.subscript.setter();
}

uint64_t sub_1002F0938@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DisjointStack();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v56 - v7;
  v62 = type metadata accessor for Resize.Rule();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v59 = (&v56 - v10);
  __chkstk_darwin(v11);
  v66 = (&v56 - v12);
  __chkstk_darwin(v13);
  v58 = (&v56 - v14);
  v65 = type metadata accessor for Resize();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v17 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v68 = type metadata accessor for VerticalStack();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  swift_beginAccess();

  v26 = sub_1002A5DB4(v25);

  v27 = qword_10097F778;
  swift_beginAccess();
  v28 = *(v17 + 16);
  v74 = v2;
  v28(v22, v2 + v27, AllButtonStyle);
  (*(v17 + 104))(v19, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:), AllButtonStyle);
  sub_1002F4D34(&qword_10097F868, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v75 == v78 && *(&v75 + 1) == v79)
  {
    v29 = *(v17 + 8);
    v29(v19, AllButtonStyle);
    v29(v22, AllButtonStyle);
  }

  else
  {
    LODWORD(v57) = _stringCompareWithSmolCheck(_:_:expecting:)();
    v30 = *(v17 + 8);
    v30(v19, AllButtonStyle);
    v30(v22, AllButtonStyle);

    if ((v57 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v31 = *(v74 + qword_10097F798);
  if ([v31 isHidden])
  {
    goto LABEL_10;
  }

  v76 = sub_100005744(0, &qword_1009811E0);
  v77 = &protocol witness table for UIButton;
  v57 = v31;
  *&v75 = v31;
  v32 = v58;
  *v58 = sub_1002F1298;
  v32[1] = 0;
  v33 = *(v60 + 104);
  v34 = v62;
  v33(v32, enum case for Resize.Rule.recalculated(_:), v62);
  v35 = enum case for Resize.Rule.unchanged(_:);
  v33(v66, enum case for Resize.Rule.unchanged(_:), v34);
  v33(v59, v35, v34);
  v33(v61, v35, v34);
  v36 = v57;
  v37 = v63;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v38 = v65;
    v39 = v64;
    v41 = v26[2];
    v40 = v26[3];
    if (v41 >= v40 >> 1)
    {
      v26 = sub_100034C2C((v40 > 1), v41 + 1, 1, v26);
    }

    v76 = v38;
    v77 = &protocol witness table for Resize;
    v42 = sub_1000056E0(&v75);
    (*(v39 + 16))(v42, v37, v38);
    v26[2] = v41 + 1;
    sub_100005A38(&v75, &v26[5 * v41 + 4]);
    (*(v39 + 8))(v37, v38);
LABEL_10:
    v43 = v26[2];
    if (!v43)
    {
      break;
    }

    v44 = 0;
    v45 = (v26 + 4);
    v37 = &v75;
    while (v44 < v26[2])
    {
      *&v75 = v44;
      sub_10002C0AC(v45, &v75 + 8);
      sub_1002F12A0(v44, &v75 + 8, v24, v43, ObjectType);
      sub_10002B894(&v75, &qword_10097F870);
      v45 += 40;
      if (v43 == ++v44)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    v26 = sub_100034C2C(0, v26[2] + 1, 1, v26);
  }

LABEL_14:

  v46 = v69;
  DisjointStack.init(with:)();
  v78 = *(v74 + qword_10097F788);
  sub_100005744(0, &qword_100972EB0);
  Measurable.placeable.getter();
  v47 = v70;
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(&v75);
  v48 = *(v72 + 8);
  v49 = v46;
  v50 = v73;
  v48(v49, v73);
  v51 = v68;
  v76 = v68;
  v77 = &protocol witness table for VerticalStack;
  v52 = sub_1000056E0(&v75);
  v53 = v67;
  (*(v67 + 16))(v52, v24, v51);
  v54 = v71;
  v71[3] = v50;
  v54[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v54);
  DisjointStack.inserting(_:at:with:)();
  v48(v47, v50);
  sub_100007000(&v75);
  return (*(v53 + 8))(v24, v51);
}

uint64_t sub_1002F12A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002C0AC(a2, &v10);
  v11[3] = type metadata accessor for Margins();
  v11[4] = &protocol witness table for Margins;
  sub_1000056E0(v11);
  Margins.init(insets:child:)();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a4;
  v8[4] = a5;
  VerticalStack.add(_:with:)();

  return sub_100007000(v11);
}

uint64_t sub_1002F137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = VerticalStack.Properties.topSpacing.setter();
  if (!__OFSUB__(a3, 1))
  {
    return VerticalStack.Properties.bottomSpacing.setter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F1418()
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
  DisjointStack.Properties.trailingEdge.setter();
  return DisjointStack.Properties.anchorsHugContent.setter();
}

uint64_t sub_1002F15F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = type metadata accessor for Resize.Rule();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v45 = (&v39 - v5);
  __chkstk_darwin(v6);
  v43 = (&v39 - v7);
  __chkstk_darwin(v8);
  v41 = (&v39 - v9);
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v11 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for VerticalStack();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  VerticalStack.init(with:)();
  sub_1002F0938(v53);
  VerticalStack.adding(_:with:)();
  sub_100007000(v53);
  v24 = *(v18 + 8);
  v47 = v17;
  v24(v20, v17);
  v25 = *(v1 + qword_10097F798);
  if (([v25 isHidden] & 1) == 0)
  {
    v26 = qword_10097F778;
    swift_beginAccess();
    (*(v11 + 16))(v16, v2 + v26, AllButtonStyle);
    (*(v11 + 104))(v13, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), AllButtonStyle);
    sub_1002F4D34(&qword_10097F868, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v53[0] == v49 && v53[1] == v50)
    {
      v27 = *(v11 + 8);
      v27(v13, AllButtonStyle);
      v27(v16, AllButtonStyle);

LABEL_6:
      v51 = sub_100005744(0, &qword_1009811E0);
      v52 = &protocol witness table for UIButton;
      v49 = v25;
      v40 = v25;
      v29 = v41;
      v30 = v42;
      *v41 = sub_1002F1298;
      v29[1] = 0;
      v31 = *(v30 + 104);
      v32 = v44;
      v31(v29, enum case for Resize.Rule.recalculated(_:), v44);
      v33 = enum case for Resize.Rule.unchanged(_:);
      v31(v43, enum case for Resize.Rule.unchanged(_:), v32);
      v31(v45, v33, v32);
      v31(v46, v33, v32);
      v53[3] = type metadata accessor for Resize();
      v53[4] = &protocol witness table for Resize;
      sub_1000056E0(v53);
      v34 = v40;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      VerticalStack.add(_:with:)();
      sub_100007000(v53);
      goto LABEL_7;
    }

    LODWORD(v40) = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28 = *(v11 + 8);
    v28(v13, AllButtonStyle);
    v28(v16, AllButtonStyle);

    if (v40)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v36 = v47;
  v35 = v48;
  v48[3] = v47;
  v35[4] = &protocol witness table for VerticalStack;
  v37 = sub_1000056E0(v35);
  return (*(v18 + 32))(v37, v23, v36);
}

id sub_1002F1BB8()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = *&v0[qword_10097F780];
  [v0 bounds];

  return [v2 setFrame:?];
}

id sub_1002F1C34(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10097F790;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 32);
    while (v8 < *(v5 + 16))
    {
      ++v8;
      v10 = *v9;
      v9 += 2;
      result = [v10 removeFromSuperview];
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:

  *&v2[v4] = _swiftEmptyArrayStorage;

  v11 = qword_10097F7A8;
  swift_beginAccess();
  *&v2[v11] = _swiftEmptyArrayStorage;

  result = sub_1002EFDA4(_swiftEmptyArrayStorage);
  if (a1 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (a1)
  {
    type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      if (qword_10096D6B0 != -1)
      {
        swift_once();
      }

      v14 = qword_10097F758;
      ArtworkView.backgroundColor.setter();
      [*&v13[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder] setTextColor:v14];
      [*&v13[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder] setTextColor:v14];
      [*&v13[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder] setBackgroundColor:v14];
      [v2 addSubview:v13];
      swift_beginAccess();
      v15 = *&v2[v4];
      v16 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v4] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_100033A44(0, *(v15 + 2) + 1, 1, v15);
        *&v2[v4] = v15;
      }

      v19 = *(v15 + 2);
      v18 = *(v15 + 3);
      if (v19 >= v18 >> 1)
      {
        v15 = sub_100033A44((v18 > 1), v19 + 1, 1, v15);
      }

      v20 = sub_1002F4D34(&qword_10097F830, type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder);
      *(v15 + 2) = v19 + 1;
      v21 = &v15[2 * v19];
      *(v21 + 4) = v16;
      *(v21 + 5) = v20;
      *&v2[v4] = v15;
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  [*&v2[qword_10097F798] setHidden:1];
  return [v2 setNeedsLayout];
}

objc_class *sub_1002F1F30(unint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v131 = a4;
  LODWORD(v126) = a3;
  v119 = a2;
  v6 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v6 - 8);
  v111 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v115 = &v105 - v9;
  v118 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v10;
  __chkstk_darwin(v11);
  v108 = &v105 - v12;
  v13 = type metadata accessor for AdamId();
  v133 = *(v13 - 8);
  v134 = v13;
  __chkstk_darwin(v13);
  v106 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v105 - v16;
  __chkstk_darwin(v17);
  v132 = &v105 - v18;
  v128 = type metadata accessor for AutomationSemantics();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_1009732C0);
  __chkstk_darwin(v20 - 8);
  v107 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v114 = &v105 - v23;
  __chkstk_darwin(v24);
  v26 = &v105 - v25;
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v27 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v124 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v105 - v30;
  v32 = qword_10097F790;
  swift_beginAccess();
  v130 = v4;
  v33 = *&v4[v32];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 32);
    while (v35 < *(v33 + 16))
    {
      ++v35;
      v37 = *v36;
      v36 += 2;
      [v37 removeFromSuperview];
      if (v34 == v35)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_24:
    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (!v44)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_5:

  v34 = v130;
  *&v130[v32] = _swiftEmptyArrayStorage;

  v38 = qword_10097F7A8;
  swift_beginAccess();
  *&v34[v38] = a1;

  swift_weakAssign();
  v34[qword_10097F7C0] = v126 & 1;
  sub_100031660(v119, v26, &unk_1009732C0);
  v39 = *(v117 + 48);
  v40 = v118;
  v121 = v117 + 48;
  v120 = v39;
  if (v39(v26, 1, v118) == 1)
  {
    sub_10002B894(v26, &unk_1009732C0);
    (v27)[13](v31, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), AllButtonStyle);
  }

  else
  {
    v41 = &v26[*(v40 + 20)];
    v42 = v124;
    v43 = AllButtonStyle;
    (v27)[2](v124, v41, AllButtonStyle);
    sub_1002F4D7C(v26);
    (v27)[4](v31, v42, v43);
  }

  sub_1002EE0D4(v31);
  type metadata accessor for ArtworkLoader();
  v113 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  AllButtonStyle = v136;
  v112 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_25;
  }

LABEL_10:
  type metadata accessor for TodayCardLockupView();
  result = swift_getObjCClassFromMetadata();
  v126 = result;
  if (v44 < 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v46 = 0;
  v123 = *&v34[qword_10097F788];
  v122 = a1 & 0xC000000000000001;
  v47 = (v133 + 8);
  v48 = (v125 + 8);
  v125 = a1;
  v124 = v44;
  do
  {
    if (v122)
    {
      v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v49 = *(a1 + 8 * v46 + 32);
    }

    v50 = [objc_allocWithZone(v126) init];
    [v123 addSubview:v50];
    v51 = v132;
    Lockup.adamId.getter();
    v52 = AdamId.stringValue.getter();
    v54 = v53;
    (*v47)(v51, v134);
    v138 = &type metadata for String;
    v136 = v52;
    v137 = v54;
    memset(v135, 0, sizeof(v135));
    v55 = v127;
    static AutomationSemantics.shelfItem(itemKind:id:parentId:)();
    sub_10002B894(v135, &unk_1009711D0);
    sub_10002B894(&v136, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();
    (*v48)(v55, v128);
    sub_1002F2FB0(v49, AllButtonStyle, v131);
    v56 = qword_10096D6B0;
    v57 = *&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = qword_10097F758;
    ArtworkView.placeholderColor.setter();

    swift_beginAccess();
    v59 = *&v34[v32];
    v60 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v32] = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_100033A44(0, *(v59 + 2) + 1, 1, v59);
      *&v34[v32] = v59;
    }

    a1 = v125;
    v63 = *(v59 + 2);
    v62 = *(v59 + 3);
    if (v63 >= v62 >> 1)
    {
      v59 = sub_100033A44((v62 > 1), v63 + 1, 1, v59);
    }

    ++v46;
    v64 = sub_1002F4D34(&qword_10097F840, type metadata accessor for TodayCardLockupView);
    *(v59 + 2) = v63 + 1;
    v65 = &v59[2 * v63];
    *(v65 + 4) = v60;
    *(v65 + 5) = v64;
    v34 = v130;
    *&v130[v32] = v59;
    swift_endAccess();
  }

  while (v124 != v46);
LABEL_25:
  v66 = v119;
  v67 = v114;
  sub_100031660(v119, v114, &unk_1009732C0);
  v68 = v118;
  if (v120(v67, 1, v118) == 1)
  {
    sub_10002B894(v67, &unk_1009732C0);
    v69 = &v34[qword_10097F7A0];
    *v69 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    *(v69 + 1) = 0;
  }

  else
  {
    v70 = v67;
    v71 = v108;
    sub_1002F4DD8(v70, v108);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v72 = v110;
    sub_1002F4DD8(v71, v110);
    v73 = (*(v117 + 80) + 24) & ~*(v117 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v131;
    sub_1002F4DD8(v72, v74 + v73);
    v75 = &v34[qword_10097F7A0];
    *v75 = sub_1002F4E3C;
    v75[1] = v74;
  }

  v76 = v116;
  v77 = v115;
  v78 = *&v34[qword_10097F798];
  UIButton.configuration.getter();
  v79 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v79 - 8) + 48))(v77, 1, v79))
  {
    sub_100031660(v77, v111, &qword_10097CC90);
    UIButton.configuration.setter();
    sub_10002B894(v77, &qword_10097CC90);
  }

  else
  {
    v80 = v107;
    sub_100031660(v66, v107, &unk_1009732C0);
    if (v120(v80, 1, v68) == 1)
    {
      sub_10002B894(v80, &unk_1009732C0);
    }

    else
    {

      sub_1002F4D7C(v80);
      Action.title.getter();
    }

    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }

  v81 = String._bridgeToObjectiveC()();
  [v78 setAccessibilityIdentifier:v81];

  [v78 setHidden:{v120(v66, 1, v68) == 1}];
  sub_10002849C(&unk_100973AF0);
  inject<A, B>(_:from:)();
  v131 = v136;
  v128 = v137;
  if (v112)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v82 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v82)
  {
    v136 = _swiftEmptyArrayStorage;
    result = sub_1001440C4(0, v82 & ~(v82 >> 63), 0);
    if (v82 < 0)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v83 = v136;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v82; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        Lockup.adamId.getter();
        swift_unknownObjectRelease();
        v136 = v83;
        v86 = *(v83 + 2);
        v85 = *(v83 + 3);
        if (v86 >= v85 >> 1)
        {
          sub_1001440C4(v85 > 1, v86 + 1, 1);
          v83 = v136;
        }

        *(v83 + 2) = v86 + 1;
        (*(v133 + 32))(v83 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v86, v76, v134);
      }
    }

    else
    {
      v87 = a1 + 32;
      v88 = v106;
      do
      {

        Lockup.adamId.getter();

        v136 = v83;
        v90 = *(v83 + 2);
        v89 = *(v83 + 3);
        if (v90 >= v89 >> 1)
        {
          sub_1001440C4(v89 > 1, v90 + 1, 1);
          v83 = v136;
        }

        *(v83 + 2) = v90 + 1;
        (*(v133 + 32))(v83 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v90, v88, v134);
        v87 += 8;
        --v82;
      }

      while (v82);
    }

    v34 = v130;
  }

  else
  {
    v83 = _swiftEmptyArrayStorage;
  }

  v91 = *(v83 + 2);
  if (v91)
  {
    v136 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_100144084(0, v91, 0);
    v92 = v133;
    v127 = v83 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v93 = v136;
    result = swift_getObjectType();
    v126 = result;
    v94 = 0;
    v125 = v92 + 16;
    v124 = (v92 + 8);
    while (v94 < *(v83 + 2))
    {
      v95 = v91;
      v96 = v132;
      v97 = v133;
      v98 = v134;
      (*(v133 + 16))(v132, &v127[*(v133 + 72) * v94], v134);
      v99 = dispatch thunk of AppStateController.stateMachine(forApp:)();
      v101 = v100;
      result = (*(v97 + 8))(v96, v98);
      v136 = v93;
      v103 = *(v93 + 2);
      v102 = *(v93 + 3);
      if (v103 >= v102 >> 1)
      {
        result = sub_100144084((v102 > 1), v103 + 1, 1);
        v93 = v136;
      }

      ++v94;
      *(v93 + 2) = v103 + 1;
      v104 = &v93[2 * v103];
      *(v104 + 4) = v99;
      *(v104 + 5) = v101;
      v91 = v95;
      if (v95 == v94)
      {
        swift_unknownObjectRelease();

        v34 = v130;
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v93 = _swiftEmptyArrayStorage;
LABEL_59:
  sub_1002EFDA4(v93);
  [v34 setNeedsLayout];

  return swift_unknownObjectRelease();
}

void sub_1002F2FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v5 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v44 - v9);
  v11 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_10002849C(&unk_100973240);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for OfferStyle();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = type metadata accessor for OfferEnvironment();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  if (qword_10096D6C8 != -1)
  {
    swift_once();
  }

  v23 = qword_10096D6B8;
  v24 = qword_10097F770;
  if (v23 != -1)
  {
    v43 = v24;
    swift_once();
    v24 = v43;
  }

  v25 = qword_10097F760;
  *v10 = v24;
  v10[1] = v25;
  v26 = enum case for OfferTint.custom(_:);
  v27 = type metadata accessor for OfferTint();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = sub_10002849C(&unk_1009701A0);
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = v25;
  sub_1004F3190(v46, v4, v19, v45, 0, 0, v16, v13, v10, v7);
  v4[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_100776DD8();
  [v4 setNeedsLayout];
  sub_100776DD8();
  sub_10002B894(v7, &unk_100970150);
  sub_10002B894(v10, &unk_100973AD0);
  sub_10002B894(v13, &unk_100970160);
  sub_10002B894(v16, &qword_100973AE0);
  sub_10002B894(v19, &unk_100973230);
  if (Lockup.icon.getter())
  {
    swift_beginAccess();
    Artwork.config(using:)();
    type metadata accessor for ArtworkView();
    sub_1002F4D34(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  [*&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel] setOverrideUserInterfaceStyle:2];
  v31 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v32 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v32)
  {
    [v32 setOverrideUserInterfaceStyle:2];
    v33 = *&v4[v31];
    if (v33)
    {
      v34 = [v33 layer];
      [v34 setCompositingFilter:kCAFilterPlusL];

      v35 = *&v4[v31];
      if (v35)
      {
        sub_100005744(0, &qword_100970180);
        v36 = v35;
        v37 = static UIColor.secondaryText.getter();
        [v36 setTextColor:v37];
      }
    }
  }

  v38 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  v39 = [v38 layer];
  [v39 setCompositingFilter:kCAFilterPlusL];

  v40 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending;
  v4[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending] = 0;
  v41 = [v4 layer];
  [v41 setAllowsGroupBlending:v4[v40]];

  v42 = [v38 layer];
  [v42 setAllowsGroupBlending:v4[v40]];
}

uint64_t sub_1002F3694(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(*a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_1002F37D8()
{
  v1 = *&v0[qword_10097F788];
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  [v1 setTransform:&aBlock];
  v2 = qword_10097F790;
  swift_beginAccess();
  v18 = v0;
  v3 = *&v0[v2];
  v4 = *(v3 + 16);
  v20 = v3;

  v19 = v4;
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v20 + 16))
    {
      v6 = *(v20 + 32 + 16 * v5);
      v7 = [v6 subviews];
      sub_100005744(0, &qword_100972EB0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (v9)
        {
LABEL_7:
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            [v11 setAlpha:0.0];

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_3:
      ++v5;

      if (v5 == v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  v5 = v18;
  [*&v18[qword_10097F798] setAlpha:0.0];
  if (qword_10096D698 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10097F740 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *&aBlock.tx = sub_1002F52E4;
  *&aBlock.ty = v15;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100007A08;
  *&aBlock.d = &unk_1008BD4F0;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  [v14 addAnimations:v16];
  _Block_release(v16);
  [v14 startAnimationAfterDelay:0.16];
}

uint64_t sub_1002F3B1C(double a1)
{
  v3 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setAlpha:a1];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1002F3C58(uint64_t a1)
{
  v2 = qword_10097F790;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      sub_1002F3B1C(1.0);

      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    [*(a1 + qword_10097F798) setAlpha:1.0];
    v9 = *(a1 + qword_10097F788);
    v10[0] = 0x3FF0000000000000;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0x3FF0000000000000;
    v10[4] = 0;
    v10[5] = 0;
    [v9 setTransform:v10];
  }
}

void sub_1002F3D4C(char *a1)
{
  v1 = *&a1[qword_10097F7A0];
  v3 = a1;

  v1(v2);
}

void sub_1002F3DB4(uint64_t a1, double a2, double a3)
{
  v7 = qword_10097F790;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);

  v10 = 0;
  v11 = 32;
  while (1)
  {
    if (v9 == v10)
    {
LABEL_5:

      return;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    ++v10;
    v12 = *(v8 + v11);
    [v12 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v13 = [v12 pointInside:a1 withEvent:?];

    v11 += 16;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1002F3ECC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = qword_10097F7A8;
  result = swift_beginAccess();
  v9 = *(v2 + v7);
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  swift_endAccess();
  v10 = Lockup.clickAction.getter();
  if (!v10)
  {
  }

  v11 = v10;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v13 = Strong;
  v14 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {

    return sub_10002B894(v6, &unk_100972A00);
  }

  else
  {
    sub_1005F9AF4(v11, 1, v13, v6);

    return (*(v15 + 8))(v6, v14);
  }
}

void sub_1002F40FC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10097F7C0) == 1)
  {
    v6 = qword_10097F7C8;
    v7 = *(v2 + qword_10097F7C8);
    if (!v7 || [v7 phase] == 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_10066D4C4(a1);
      if (v9)
      {
        v10 = v9;
        [v9 locationInView:v2];
        sub_1002F3DB4(a2, v11, v12);
        v13 = v2 + qword_10097F7D0;
        *v13 = v14;
        *(v13 + 8) = v15 & 1;
        v16 = *(v2 + v6);
        *(v2 + v6) = v10;

        sub_100005744(0, &qword_100981660);
        sub_10008DB40();
        v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
      }

      else
      {
        sub_100005744(0, &qword_100981660);
        sub_10008DB40();
        v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
        objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v2, ObjectType, v21.receiver, v21.super_class);
      }
    }

    else
    {
      sub_100005744(0, &qword_100981660);
      sub_10008DB40();
      v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v17.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v2, ObjectType);
  }
}

void sub_1002F4320(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10097F7C0) != 1)
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v14, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v13.receiver, v13.super_class, v2, ObjectType);
    goto LABEL_11;
  }

  v6 = qword_10097F7C8;
  v7 = *(v2 + qword_10097F7C8);
  if (!v7)
  {
LABEL_10:
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v13, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v2, ObjectType, v14.receiver, v14.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_100296044(v8, a1) & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = *(v2 + v6);
  *(v2 + v6) = 0;

  v10 = v2 + qword_10097F7D0;
  if ((*(v2 + qword_10097F7D0 + 8) & 1) == 0 && (*(v2 + qword_1009CF458) & 1) == 0)
  {
    sub_1002F3ECC(*v10);
  }

  *v10 = 0;
  *(v10 + 8) = 1;
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v12, "touchesEnded:withEvent:", v11.super.isa, a2, v2, ObjectType, v13.receiver, v13.super_class, v14.receiver, v14.super_class);
LABEL_11:
}

uint64_t sub_1002F44E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_1002F4598(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10097F7C0) == 1)
  {
    v5 = *(v2 + qword_10097F7C8);
    *(v2 + qword_10097F7C8) = 0;

    v6 = v2 + qword_10097F7D0;
    *v6 = 0;
    *(v6 + 8) = 1;
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v7.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v8, "touchesCancelled:withEvent:", v7.super.isa, a2, v2, ObjectType, v9.receiver, v9.super_class);
  }

  else
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v7.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v9, "touchesCancelled:withEvent:", v7.super.isa, a2, v8.receiver, v8.super_class, v2, ObjectType);
  }
}

unint64_t sub_1002F46F0()
{
  result = qword_10097F828;
  if (!qword_10097F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F828);
  }

  return result;
}

uint64_t sub_1002F4744(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F47B4(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for AdamId();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100975C58);
  __chkstk_darwin(v11);
  v15 = v56 - v14;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v56[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  sub_100031660(a1 + v17, v56 - v14, &qword_100975C58);
  v57 = v8;
  v63 = *(v8 + 32);
  v64 = v7;
  v63(v10, v15, v7);
  v59 = v16;
  v18 = v15[v16];
  v19 = *a3;
  v20 = sub_1003D7438(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_10004C678(v25, a2 & 1);
    v20 = sub_1003D7438(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_100053230();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v67 = v28;
    swift_errorRetain();
    sub_10002849C(&qword_10098A690);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v57 + 8))(v10, v64);
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v58 = *(v57 + 72);
  v35 = v20;
  v63((v34 + v58 * v20), v10, v64);
  *(v33[7] + v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v62;
    if (v61 == 1)
    {
    }

    v39 = v62 + v60 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_100031660(v39, v15, &qword_100975C58);
      v63(v10, v15, v64);
      v41 = v15[v59];
      v42 = *a3;
      v43 = sub_1003D7438(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_10004C678(v47, 1);
        v43 = sub_1003D7438(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v63((v50[6] + v58 * v43), v10, v64);
      *(v50[7] + v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v60;
      v38 = v62;
      if (v61 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x800000010080B8A0;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002F4D34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F4D7C(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F4DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F4E3C()
{
  v1 = *(type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1002F3694(v2, v3);
}

uint64_t sub_1002F4EA0(void *a1)
{
  v3 = *(type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002EFE80(a1, v4);
}

unint64_t sub_1002F4F4C()
{
  result = qword_10097F850;
  if (!qword_10097F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F850);
  }

  return result;
}

unint64_t sub_1002F4FA0()
{
  result = qword_10097F858;
  if (!qword_10097F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F858);
  }

  return result;
}

double sub_1002F4FF4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v11 = &xmmword_1009D4040;
  }

  else
  {
    v11 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v11, v23);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v12 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v12 = qword_100991028;
  }

  bottom = UIEdgeInsetsZero.bottom;
  v14 = sub_1000056A8(v4, v12);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v24 = v16;
    v25 = v17;
    v26 = 0;
  }

  v18 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, 0.0);
  v20 = v19;
  (*(v5 + 8))(v10, v4, v18);
  sub_10003B944(v23);
  return (ceil(bottom + UIEdgeInsetsZero.top + v20) + 8.0 + 8.0) * a1 + 12.0 + 12.0;
}

void sub_1002F52EC()
{
  v1 = qword_10097F778;
  v2 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 104))(v0 + v1, v2, AllButtonStyle);
  v4 = v0 + qword_1009CF450;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = qword_10097F780;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v6 = qword_10097F788;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_10097F790) = _swiftEmptyArrayStorage;
  v7 = qword_10097F798;
  *(v0 + v7) = [objc_opt_self() buttonWithType:0];
  v8 = (v0 + qword_10097F7A0);
  *v8 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v8[1] = 0;
  *(v0 + qword_10097F7A8) = _swiftEmptyArrayStorage;
  swift_weakInit();
  *(v0 + qword_10097F7B8) = _swiftEmptyArrayStorage;
  *(v0 + qword_10097F7C0) = 0;
  *(v0 + qword_10097F7C8) = 0;
  *(v0 + qword_1009CF458) = 0;
  v9 = v0 + qword_10097F7D0;
  *v9 = 0;
  *(v9 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002F54C8(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10097F7A8;
  swift_beginAccess();
  v32 = a1;
  v11 = *(a1 + v10);
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = qword_10097F790;

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v14 = 0;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v11 & 0xC000000000000001;
    v29 = (v8 + 48);
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    v15 = 32;
    v25 = v13;
    while (1)
    {
      if (v31)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v11 + 8 * v14 + 32);
      }

      v16 = *(v32 + v13);
      if (v14 >= *(v16 + 16))
      {
        break;
      }

      v17 = *(v16 + v15);
      Lockup.impressionMetrics.getter();
      if ((*v29)(v6, 1, v7) == 1)
      {

        sub_10002B894(v6, &qword_100973D30);
      }

      else
      {
        v18 = v7;
        v19 = v26;
        (*v24)(v26, v6, v18);
        v20 = v17;
        [v20 bounds];
        [v28 convertRect:v20 fromCoordinateSpace:?];
        ImpressionsCalculator.addElement(_:at:)();

        v21 = v19;
        v7 = v18;
        v13 = v25;
        (*v23)(v21, v7);
      }

      ++v14;

      v15 += 16;
      if (i == v14)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_1002F5818()
{
  result = type metadata accessor for Action();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeLinkedLabel()
{
  result = qword_10097F928;
  if (!qword_10097F928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002F595C(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_1002F59B8(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, "setTextColor:", v5);
  v6 = [v4 textColor];
  if (v6)
  {
    v7 = v6;
    v8 = *&v4[qword_10097F920];
    *&v4[qword_10097F920] = v6;
    sub_100005744(0, &qword_100970180);
    v9 = v7;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_1002F63D4();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1002F5AA8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_1002F5AEC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DynamicTypeLinkedLabel();
  v9.receiver = a1;
  v9.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, "textAlignment");
  v8.receiver = v6;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "setTextAlignment:", a3);
  if ([v6 textAlignment] != v7)
  {
    sub_1002F63D4();
  }
}

id sub_1002F5B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  *(v3 + qword_10097F908) = _swiftEmptyArrayStorage;
  *(v3 + qword_10097F910) = 0;
  *(v3 + qword_10097F918) = 0;
  v12 = qword_10097F920;
  sub_100005744(0, &qword_100970180);
  *(v3 + v12) = static UIColor.primaryText.getter();
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right, v22, v23}];
  [v19 setUserInteractionEnabled:1];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"labelTapped:"];
  [v19 addGestureRecognizer:v20];

  (*(v14 + 8))(a1, v13);
  return v19;
}

void sub_1002F5E7C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_1002F63D4();
}

uint64_t sub_1002F5ED8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = dispatch thunk of DynamicTypeLabel.traitCollectionForFontUseCases.getter();
  v6 = [v5 preferredContentSizeCategory];

  dispatch thunk of DynamicTypeLabel.fontUseCaseContentSizeCategory.setter();
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  return sub_1002F63D4();
}

void sub_1002F6004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = qword_10097F908;
  swift_beginAccess();
  *&v4[v8] = _swiftEmptyArrayStorage;

  if (*(*&v4[v8] + 16))
  {
    v9 = &UIAccessibilityTraitLink;
  }

  else
  {
    v9 = &UIAccessibilityTraitStaticText;
  }

  [v4 setAccessibilityTraits:*v9];
  *&v4[qword_10097F910] = a1;

  *&v4[qword_10097F918] = a2;

  dispatch thunk of StyledText.plainText.getter();
  v10 = objc_allocWithZone(NSString);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithString:v11];

  v13 = *(a3 + 16);
  if (v13)
  {
    v27 = UIAccessibilityTraitLink;
    v28 = v12;
    v14 = v13 - 1;
    v15 = (a3 + 56);
    v29 = v8;
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      v18 = String._bridgeToObjectiveC()();

      v19 = [v12 rangeOfString:v18 options:4];
      v21 = v20;

      if (v19 == NSNotFound.getter())
      {

        if (!v14)
        {
          break;
        }
      }

      else
      {
        swift_beginAccess();
        v22 = *&v4[v8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v8] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_100033670(0, *(v22 + 2) + 1, 1, v22);
          *&v4[v8] = v22;
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        if (v25 >= v24 >> 1)
        {
          v22 = sub_100033670((v24 > 1), v25 + 1, 1, v22);
        }

        *(v22 + 2) = v25 + 1;
        v26 = &v22[4 * v25];
        *(v26 + 4) = v19;
        *(v26 + 5) = v21;
        *(v26 + 6) = v16;
        *(v26 + 7) = v17;
        v8 = v29;
        *&v4[v29] = v22;
        swift_endAccess();
        [v4 setAccessibilityTraits:v27];

        v12 = v28;
        if (!v14)
        {
          break;
        }
      }

      --v14;
      v15 += 4;
    }
  }

  sub_1002F63D4();
}

id sub_1002F62D8()
{
  [v0 setAttributedText:0];
  *&v0[qword_10097F910] = 0;

  v1 = qword_10097F908;
  swift_beginAccess();
  *&v0[v1] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  return [v0 setAccessibilityTraits:*v2];
}

void sub_1002F638C(void *a1)
{
  v1 = a1;
  sub_1002F63D4();
}

uint64_t sub_1002F63D4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &qword_100972ED0);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100005744(0, &qword_1009730E0);
  v10 = dispatch thunk of DynamicTypeLabel.traitCollectionForFontUseCases.getter();
  v11 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v12 = *&v0[qword_10097F910];
  v13 = *&v0[qword_10097F920];

  v14 = v13;
  v15 = [v0 textAlignment];
  v50 = [v1 lineBreakMode];
  v16 = qword_10097F908;
  swift_beginAccess();
  v17 = *&v1[v16];

  v18 = [v1 tintColor];
  v19 = v18;
  if (v12)
  {
    v42 = v15;
    v46 = v8;
    v47 = v6;
    v48 = v5;
    v49 = v1;

    v44 = v12;
    v45 = v11;
    v20 = dispatch thunk of StyledText.asAttributedString(using:)();
    v53 = v17;
    v21 = v20;
    v22 = objc_allocWithZone(NSMutableAttributedString);
    v41 = v21;
    v23 = [v22 initWithAttributedString:v21];
    v24 = v14;
    v25 = v23;
    v26 = [v23 length];
    v52 = NSForegroundColorAttributeName;
    v43 = v24;
    v27 = v53;
    v40 = v26;
    [v25 addAttribute:? value:? range:?];
    v28 = *(v27 + 16);
    if (v28)
    {
      v51 = NSUnderlineStyleAttributeName;
      v29 = v27 + 56;
      do
      {
        v30 = *(v29 - 24);
        v31 = *(v29 - 16);
        if (v19)
        {

          v32 = v19;
        }

        else
        {
          v33 = objc_opt_self();

          v32 = [v33 systemBlueColor];
        }

        v34 = v19;
        [v25 addAttribute:v52 value:v32 range:{v30, v31}];
        if (UIAccessibilityButtonShapesEnabled())
        {
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          [v25 addAttribute:v51 value:isa range:{v30, v31}];
        }

        v29 += 32;
        --v28;
      }

      while (v28);
    }

    v36 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v36 setAlignment:v42];
    [v36 setLineBreakMode:v50];
    v37 = v36;
    [v25 addAttribute:NSParagraphStyleAttributeName value:v37 range:{0, v40}];

    v5 = v48;
    v1 = v49;
    v8 = v46;
    v6 = v47;
    v11 = v45;
  }

  else
  {

    v25 = 0;
  }

  v38 = sub_1002F68E8(v25, v11);
  [v1 setAttributedText:v38];

  return (*(v6 + 8))(v8, v5);
}

id sub_1002F68E8(void *a1, void *a2)
{
  v3 = a1;
  if (!a1 || !*(v2 + qword_10097F918))
  {
    goto LABEL_6;
  }

  v5 = objc_opt_self();

  v6 = v3;
  v7 = [v5 configurationWithFont:a2];
  v8 = static SystemImage.load(artwork:with:includePrivateImages:)();

  if (!v8)
  {

LABEL_6:
    v22 = v3;
    return v3;
  }

  [v8 size];
  v10 = v9;
  v12 = v11;
  [a2 capHeight];
  v14 = floor((v13 - v12) * 0.5);
  v15 = [objc_opt_self() tintColor];
  v16 = [v8 imageWithTintColor:v15];

  v17 = [objc_opt_self() textAttachmentWithImage:v16];
  [v17 setBounds:{2.0, v14, v10, v12}];
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
  v18 = objc_allocWithZone(NSAttributedString);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithString:v19];

  [v3 appendAttributedString:v20];
  v21 = [objc_opt_self() attributedStringWithAttachment:v17];
  [v3 appendAttributedString:v21];

  return v3;
}

uint64_t sub_1002F6B48(void *a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  result = sub_1002F6DDC(a1);
  if ((v7 & 1) == 0)
  {
    v8 = result;
    v9 = qword_10097F908;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
      for (i = (v10 + 56); ; i += 4)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(i - 1);
        v14 = *i;
        v17 = *(i - 3);
        v16 = *(i - 2);

        if (v8 >= v17 && v8 - v17 < v16)
        {
          break;
        }

        if (v11 == ++v12)
        {
        }
      }

      v19 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v5, 1, v19) == 1)
      {

        return sub_10002B894(v5, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v15, 1, v14, v5);

        return (*(v20 + 8))(v5, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1002F6D74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002F6B48(v4);
}

id sub_1002F6DDC(void *a1)
{
  v2 = v1;
  v4 = [v1 attributedText];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v5];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v9, 1.79769313e308}];
    v14 = [objc_allocWithZone(NSLayoutManager) init];
    [v14 addTextContainer:v13];
    [v12 addLayoutManager:v14];
    [v13 setLineFragmentPadding:0.0];
    [v13 setLineBreakMode:{objc_msgSend(v2, "lineBreakMode")}];
    [v13 setMaximumNumberOfLines:{objc_msgSend(v2, "numberOfLines")}];
    [a1 locationInView:v7];
    v16 = v15;
    v18 = v17;
    [v14 usedRectForTextContainer:v13];
    v23 = [v14 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v16 - ((v9 - v19) * 0.5 - v20), v18 - ((v11 - v21) * 0.5 - v22)}];

    v5 = v14;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL sub_1002F700C()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = qword_10097F908;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 56);
    v8 = sub_10002849C(&unk_100974490);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10002B894(v3, &unk_100972A00);
    }

    else
    {

      sub_1005F9AF4(v10, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v6 != 0;
}

BOOL sub_1002F71CC(void *a1)
{
  v1 = a1;
  v2 = sub_1002F700C();

  return v2;
}

void sub_1002F7230()
{

  v1 = *(v0 + qword_10097F920);
}

id sub_1002F7290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002F72C8(uint64_t a1)
{

  v2 = *(a1 + qword_10097F920);
}

uint64_t sub_1002F739C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  ComponentPrefetchSizing.init(size:contentMode:)();
  v2 = type metadata accessor for ComponentPrefetchSizing();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002F74F4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002F753C()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100987AF0);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = Lockup.heading.getter();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100005744(0, &qword_100970180);
      v15 = static UIColor.primaryText.getter();
      sub_10020E6F8(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel];
  Lockup.title.getter();
  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  Lockup.tertiaryTitle.getter();
  if (v23)
  {
    sub_10020E9A8();
    v24 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = String._bridgeToObjectiveC()();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel];
  Lockup.subtitle.getter();
  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = Lockup.subtitleTextColor.getter();
  if (!v42)
  {
    sub_100005744(0, &qword_100970180);
    v42 = static UIColor.secondaryText.getter();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &StringUserDefaultsDebugSetting;
  v45 = [v30 layer];
  Lockup.subtitleTextFilter.getter();
  v46 = type metadata accessor for TitleEffectFilterType();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_1002F7BA4(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  TitleEffectFilterType.compositingFilter.getter();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_10002A400(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v51 + 8))(v54, v49);
  v44 = &StringUserDefaultsDebugSetting;
  sub_100007000(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[43].base_prots];

  v58 = v62;
  Lockup.subtitleTextFilter.getter();
  v59 = v48(v58, 1, v46) == 1;
  sub_1002F7BA4(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_1002F7BA4(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100987AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1002F7C0C()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_10020F064();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

  v9 = [objc_opt_self() itemWithLayoutSize:v8];
  v10 = [v8 widthDimension];
  v11 = [v8 heightDimension];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007B0B70;
  *(v14 + 32) = v9;
  sub_100005744(0, &qword_10098EFE0);
  v15 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v12 subitems:isa];

  return v17;
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
  sub_100005A38(a2, (a5 + 10));
  sub_100005A38(a3, a5 + 200);

  return sub_100005A38(a4, (a5 + 15));
}

uint64_t sub_1002F7EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009799E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double LinkableHeaderViewLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1002F83D4(a2, a1, v2);
}

uint64_t LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v4 + 20, v4[23]);
  Measurable.measuredSize(fitting:in:)();
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
  sub_10002A400(v5 + 20, v5[23]);
  dispatch thunk of LayoutView.frame.setter();
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10002A400(v5, v5[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v11 + 8))(v13, v10);
  v32 = a1;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  CGRectGetHeight(v40);
  sub_10002A400(v5 + 25, v5[28]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
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
  sub_10002A400(v5 + 5, v5[8]);
  AnyDimension.topMargin(from:in:)();
  v27 = MaxY + v26;
  sub_10002A400(v5 + 25, v5[28]);
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v5 + 30, v5[33]);
  Measurable.measuredSize(fitting:in:)();
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
  sub_10002A400(v5 + 10, v5[13]);
  AnyDimension.bottomMargin(from:in:)();
  sub_10002A400(v5 + 30, v5[33]);
  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

double sub_1002F83D4(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a3, a3[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10002A400(a3 + 25, a3[28]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_100129CF0((a3 + 15), v12);
  if (v13)
  {
    sub_10002A400(v12, v13);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v9(v8, v5);
    sub_100007000(v12);
  }

  else
  {
    sub_100036530(v12);
  }

  sub_10002A400(a3 + 30, a3[33]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a3 + 20, a3[23]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a3 + 5, a3[8]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a3 + 10, a3[13]);
  AnyDimension.bottomMargin(from:in:)();
  return a1;
}

uint64_t sub_1002F86D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002F86F4(uint64_t a1, int a2)
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

uint64_t sub_1002F873C(uint64_t result, int a2, int a3)
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

__n128 sub_1002F87D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1002F8800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1002F8848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F88C0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_10097F9C0);
  sub_1000056A8(v0, qword_10097F9C0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002F8A24(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v29 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0740);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = type metadata accessor for StaticDimension();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v25 = v3[1];
  v25(v5, v2);
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  if (qword_10096DD58 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v6, qword_1009D07A0);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v32);
  v15 = v28;
  v28(v14, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v32);
  v15(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_1000056A8(v24, qword_1009D0698);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v32);
  v28(v21, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  return SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
}

char *sub_1002F8F10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = type metadata accessor for SmallLockupLayout.Metrics();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = type metadata accessor for AutomationSemantics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DirectionalTextAlignment();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_1009D1520);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v81 = v23;
  v34 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v85, &unk_1009711D0);
  sub_10002B894(v86, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_100140A4C(v43);

  v44 = qword_10096D6D0;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_1000056A8(v83, qword_10097F9C0);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_10096DD10;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_1000056A8(v80, qword_1009D06C8);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v62 = qword_10096DD38;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_1000056A8(v57, qword_1009D0740);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_1002F9904(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = String._bridgeToObjectiveC()();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = String._bridgeToObjectiveC()();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_1002F9AA8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002F9C38(double a1, double a2)
{
  v5 = sub_1002F9D70(1, a1, a2);
  v6 = sub_1002F9D70(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = String._bridgeToObjectiveC()();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = String._bridgeToObjectiveC()();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_1002F9D70(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_100005744(0, &qword_10097FB80);
  isa = NSNumber.init(floatLiteral:)(v7 / v8).super.super.isa;
  v10 = NSNumber.init(floatLiteral:)(0.3 / v8).super.super.isa;
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_10002849C(&qword_100973210);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007BB060;
  v16 = 0.0;
  *(v15 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = NSNumber.init(floatLiteral:)(1.0);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_10002849C(&qword_1009701B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B5350;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_1002FA154(char *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

uint64_t sub_1002FA514()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v61 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v59 - v7;
  v8 = type metadata accessor for SmallLockupLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v59 - v14;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v62 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  sub_10013F3FC(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v63 = v8;
  v31(v11, v15, v8);
  v32 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v35 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v35 = qword_100991028;
    }

    v36 = v61;
    v37 = sub_1000056A8(v61, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v60;
    (*(v3 + 32))(v60, v38, v36);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v3 + 8))(v39, v36);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v63;
  v42(v11, v63);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v62];
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v47 = CGRectGetMidY(v66) - v44 * 0.5;
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v67), v44}];

  v48 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  v52 = CGRectGetMinX(v68);
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v70) - v50) * 0.5;
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v71), v50}];

  v55 = &v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_10001F63C(v57);
  }

  return result;
}

uint64_t sub_1002FADB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v202 = a6;
  v210 = a2;
  v11 = a5;
  v12 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v12 - 8);
  v201 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for SmallLockupLayout.Metrics();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Artwork.Crop();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for Paragraph.Alignment();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v191 = &v185 - v18;
  v214 = type metadata accessor for AdamId();
  v209 = *(v214 - 1);
  __chkstk_darwin(v214);
  v190 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v213 = &v185 - v21;
  v22 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v22 - 8);
  v208 = &v185 - v23;
  v24 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v24 - 8);
  v207 = &v185 - v25;
  v26 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v26 - 8);
  v206 = &v185 - v27;
  v28 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v28 - 8);
  v205 = &v185 - v29;
  v30 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v30 - 8);
  v204 = &v185 - v31;
  v32 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v203 = &v185 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v35 - 8);
  v212 = &v185 - v36;
  v211 = type metadata accessor for TodayCard.Style();
  v217 = *(v211 - 8);
  __chkstk_darwin(v211);
  v189 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v185 - v39;
  v41 = v7[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v220 = a4;
  v42 = TodayCard.Style.overlayBackgroundColor.getter();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v43 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v215 = a1;
  v52 = TodayCardMarketingLockupOverlay.lockup.getter();
  v216 = v7;
  v218 = v52;
  v219 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = TodayCard.Style.overlayTextColor.getter();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_100005744(0, &qword_100970180);
    v58 = v55;
    v57 = v57;
    v59 = static NSObject.== infix(_:_:)();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_10003E7B4();
  v58 = v55;
LABEL_13:

  v61 = v216;
  v62 = v219;
  v63 = *(*(*&v216[v219] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v64 = v220;
  v65 = TodayCard.Style.overlayTextColor.getter();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v67 = TodayCard.Style.overlayDetailTextColor.getter();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = TodayCard.Style.overlayDetailTextColor.getter();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = TodayCard.Style.overlayTextColor.getter();
  [v70 setTextColor:v71];

  v72 = v217;
  v73 = *(v217 + 16);
  v74 = v211;
  v188 = v217 + 16;
  v187 = v73;
  v73(v40, v64, v211);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v186 = v76;
  v77 = v76(v40, v74);
  v185 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v219;
    [*(v61 + v219) setOverrideUserInterfaceStyle:{0, v185}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v219;
      [*(v61 + v219) setOverrideUserInterfaceStyle:{2, v185}];
    }

    else
    {
      v78 = v219;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v219) setOverrideUserInterfaceStyle:{1, v185}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    v80 = TodayCard.Style.overlayTextColor.getter();
    [v79 setTintColor:v80];
  }

  v217 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v203, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v204;
  v82(v204, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_1002FD5B8(&unk_100970190, 255, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v212;
  AccessibilityConditional.init(value:axValue:)();
  v86 = sub_10002849C(&unk_100973240);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView];
  v88 = Lockup.icon.getter();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v90 = type metadata accessor for OfferStyle();
  v91 = v205;
  (*(*(v90 - 8) + 56))(v205, 1, 1, v90);
  v92 = type metadata accessor for OfferEnvironment();
  v93 = v206;
  (*(*(v92 - 8) + 56))(v206, 1, 1, v92);
  v94 = sub_10002849C(&unk_1009701A0);
  v95 = v207;
  (*(*(v94 - 8) + 56))(v207, 1, 1, v94);
  v96 = type metadata accessor for OfferTint();
  v97 = v208;
  (*(*(v96 - 8) + 56))(v208, 1, 1, v96);
  sub_1004F3190(v218, v89, v85, v210, 1, 0, v91, v93, v97, v95);
  sub_10002B894(v97, &unk_100973AD0);
  v89[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v89 setNeedsLayout];
  sub_10002B894(v95, &unk_100970150);
  sub_10002B894(v93, &unk_100970160);
  sub_10002B894(v91, &qword_100973AE0);
  v98 = v213;
  Lockup.adamId.getter();
  v99 = Lockup.crossLinkTitle.getter();
  v101 = v100;
  v208 = Lockup.crossLinkSubtitle.getter();
  v103 = v102;
  v104 = Lockup.includeBetaApps.getter();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v209;
    v108 = v190;
    (*(v209 + 16))(v190, v106, v214);
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v110 = aBlock;
    v109 = v222;
    type metadata accessor for CrossLinkPresenter();
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v184 = v110;
    v61 = v216;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v208, v103, v105 & 1, v84, &off_1008B5970, v184, v109);
    (*(v107 + 8))(v213, v214);
    sub_10002B894(v212, &unk_100973230);
    v115 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v220;

    v117 = &unk_100975000;
    v118 = &selRef_setRequiresColorStatistics_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_10014024C(0, 0);

    (*(v209 + 8))(v98, v214);
    sub_10002B894(v85, &unk_100973230);
    v117 = &unk_100975000;
    v118 = &selRef_setRequiresColorStatistics_;
    v116 = v220;
  }

  v120 = v219;
  v121 = *(*(v61 + v219) + v117[339]);
  v122 = *(v121 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = TodayCard.Style.overlayDetailTextColor.getter();
    [v123 v118[13]];

    v121 = *(*&v120[v61] + v117[339]);
  }

  v125 = &OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = TodayCard.Style.overlayDetailTextColor.getter();
  [v127 v118[13]];

  v129 = *(*(*&v120[v61] + v117[339]) + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_10096DD58;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = type metadata accessor for FontUseCase();
    v133 = sub_1000056A8(v132, qword_1009D07A0);
    v134 = *(v132 - 8);
    v135 = v191;
    (*(v134 + 16))(v191, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v136 = *(*(*&v120[v61] + v117[339]) + *v125);
    v118 = &selRef_setRequiresColorStatistics_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = TodayCard.Style.overlayTextColor.getter();
    [v138 v118[13]];

    if (!TodayCardMarketingLockupOverlay.paragraph.getter())
    {
      break;
    }

    v213 = *(v61 + v137);
    v140 = Paragraph.text.getter();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v214 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_10010279C;
    *(v142 + 24) = v117;
    v225 = sub_1001027AC;
    v226 = v142;
    aBlock = _NSConcreteStackBlock;
    v222 = 1107296256;
    v223 = sub_1006606C4;
    v224 = &unk_1008BD7C8;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v214 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v213;
      [v213 setAttributedText:v120];

      v61 = v216;
      v144 = *&v216[v137];
      v145 = v192;
      Paragraph.alignment.getter();
      v146 = v193;
      v147 = v194;
      v148 = (*(v193 + 88))(v145, v194);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v219;
        v116 = v220;
      }

      else
      {
        v120 = v219;
        v116 = v220;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_1002F9C38(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  TodayCardMarketingLockupOverlay.lockup.getter();
  v150 = Lockup.icon.getter();

  if (v150)
  {
    v151 = v195;
    Artwork.crop.getter();
    v152 = Artwork.Crop.preferredContentMode.getter();
    (*(v196 + 8))(v151, v197);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v199;
    v156 = v153 + v154;
    v157 = v198;
    v158 = v200;
    (*(v199 + 16))(v198, v156, v200);
    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v155 + 8))(v157, v158);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v159 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_1002FD5B8(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
    v161 = v160;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v162 = Artwork.backgroundColor.getter();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10002849C(&qword_100973210);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_1007B0B70;
    *(v171 + 32) = v168;
    sub_100005744(0, &qword_10097FB70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v189;
  v174 = v211;
  v187(v189, v116, v211);
  v175 = v186(v173, v174);
  if (v175 == HIDWORD(v185) || v175 == v185)
  {
    v170 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:TodayCardMarketingLockupOverlay.hideBackground.getter() & 1];
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10002849C(&qword_100973210);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1007B0B70;
    *(v179 + 32) = v177;
    sub_100005744(0, &qword_10097FB70);
    v180 = v177;
    v181 = Array._bridgeToObjectiveC()().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v222 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  aBlock = 0xD00000000000002ALL;
  v222 = 0x80000001007FFFC0;
  v183._countAndFlagsBits = TodayCard.Style.rawValue.getter();
  String.append(_:)(v183);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1002FCA30()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork.Style();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  ArtworkView.style.setter();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002FD5B8(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v12 = v11;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1002FCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardMarketingLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardMarketingLockupOverlay.lockup.getter();
          Lockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10002B894(v6, &qword_100973D30);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

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

    else
    {
    }
  }
}

void sub_1002FCF38(char *a1, char a2)
{
  if (a2)
  {
    sub_1002FA154(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1002FCF70(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4);
}

double sub_1002FCFBC()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1002FD140()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1002FD1A0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1002FD238()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1002FD294(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1002FD354(uint64_t a1))()
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
  return sub_1002FD600;
}

void sub_1002FD420()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v3 = *(*(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002FD5B8(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1002FD514(uint64_t a1, uint64_t a2)
{
  result = sub_1002FD5B8(&qword_10097FAB0, a2, type metadata accessor for TodayCardMarketingLockupOverlayView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FD5B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1002FD60C()
{
  v1 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1002FD6F4(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

id sub_1002FD82C()
{
  v1 = sub_10002849C(&unk_100972A00);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC8AppStore26TapActionGestureRecognizer_objectGraph];
    v8 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_1000F40E0(v4);
    }

    else
    {

      sub_1005F9AF4(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchAdTransparencyLabel()
{
  result = qword_10097FBE8;
  if (!qword_10097FBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FDB74(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_1002FDC2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_1002FDC78(void *a1)
{
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DirectionalTextAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = qword_10097FBC0;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = v1 + qword_10097FBD8;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (v1 + qword_10097FBE0);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_10097FBC8) = a1;
  v17 = a1;
  *(v1 + qword_10097FBD0) = sub_1002FE9CC(v17);
  v18 = type metadata accessor for FontUseCase();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  (*(v8 + 104))(v10, enum case for DirectionalTextAlignment.none(_:), v7);
  v19 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  [v19 setUserInteractionEnabled:1];
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v22);
  sub_10003D444(v23);
  UIView.setAutomationSemantics(_:)();
  (*(v4 + 8))(v6, v3);
  v20 = qword_10097FBC0;
  [*&v19[qword_10097FBC0] addTarget:v19 action:"didTapLabelWithGestureRecognizer:"];
  [*&v19[v20] setDelegate:v19];
  [v19 addGestureRecognizer:*&v19[v20]];

  return v19;
}

double sub_1002FDFD4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[qword_10097FBD8];
  if (a1[qword_10097FBD8 + 16])
  {
    v4 = a1;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = a1;
    sub_1002FE134(v6, v5, &v12);
    if ((v13 & 1) == 0)
    {
      *&v9 = UIAccessibilityConvertFrameToScreenCoordinates(v12, v7);

      return v9;
    }
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "accessibilityFrame");
  v9 = v8;

  return v9;
}

id sub_1002FE0C4(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "setAccessibilityFrame:", a2, a3, a4, a5);
}

void sub_1002FE134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v3 attributedText];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    v10 = [objc_allocWithZone(NSLayoutManager) init];
    [v9 addLayoutManager:v10];
    [v4 bounds];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v11, v12}];
    [v13 setLineFragmentPadding:0.0];
    [v10 addTextContainer:v13];
    v24 = 0;
    v25 = 0;
    [v10 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v24}];
    [v10 boundingRectForGlyphRange:v24 inTextContainer:{v25, v13}];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v18 = v21;
    *(&v18 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v8 == 0;
}

void sub_1002FE304()
{
  v1 = v0;
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSForegroundColorAttributeName;
  v3 = qword_10096D0B8;
  v4 = NSForegroundColorAttributeName;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_1009CE068;
  v6 = sub_100005744(0, &qword_100970180);
  *(inited + 40) = v5;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = [v0 font];
  *(inited + 104) = sub_10002849C(&qword_10097FC38);
  *(inited + 80) = v9;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  sub_100005744(0, &unk_100984040);
  sub_10002849C(&qword_100973210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B0B70;
  v11 = *&v0[qword_10097FBD0];
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = [v0 traitCollection];
  v14 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();
  v15 = [v14 length];
  v16 = &v1[qword_10097FBD8];
  *v16 = 0;
  *(v16 + 1) = v15;
  v16[16] = 0;
  v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  if (*&v1[qword_10097FBE0 + 8])
  {
    v18 = objc_allocWithZone(NSAttributedString);

    v19 = String._bridgeToObjectiveC()();

    v20 = [v18 initWithString:v19];

    [v17 appendAttributedString:v20];
  }

  [v1 setAttributedText:v17];
}

void sub_1002FE5CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  type metadata accessor for DynamicTypeLabel();
  v5 = method lookup function for DynamicTypeLabel();
  v5(a1);
  v6 = *&v2[qword_10097FBC8];
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  UIView.traitOverrides.getter();
  UIMutableTraits.preferredContentSizeCategory.setter();
  UIView.traitOverrides.setter();
  [v6 updateTraitsIfNeeded];
  v9 = sub_1002FE9CC(v6);
  v10 = *&v2[qword_10097FBD0];
  *&v2[qword_10097FBD0] = v9;

  sub_1002FE304();
}

BOOL sub_1002FE72C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[qword_10097FBD8];
  if (a1[qword_10097FBD8 + 16])
  {
    return 0;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = a4;
  v10 = a1;
  sub_1002FE134(v8, v7, &v22);
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    CGRect.adding(outsets:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 locationInView:v10];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v5 = CGRectContainsPoint(v25, v24);
  }

  return v5;
}

void sub_1002FE828(char *a1)
{
  v1 = *(*&a1[qword_10097FBC8] + qword_1009750A8);
  if (v1)
  {
    v3 = a1;
    v2 = sub_10000827C(v1);
    v1(v2);
    sub_10001F63C(v1);
  }
}

uint64_t sub_1002FE8F0()
{
}

uint64_t sub_1002FE954(uint64_t a1)
{
}

uint64_t sub_1002FE9CC(void *a1)
{
  [a1 sizeToFit];
  [a1 bounds];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v2, v3, v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002FEB9C;
  *(v8 + 24) = v7;
  v13[4] = sub_1002FEBA4;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1002FDC2C;
  v13[3] = &unk_1008BD8B8;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

id sub_1002FEBD8(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (v6[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] == 1)
  {
    v6[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 0;
    sub_100755A34(*a1, a4, a3, a6);
  }

  return [v6 setNeedsLayout];
}

uint64_t sub_1002FEC50()
{
  result = dispatch thunk of UpsellBreakout.clickAction.getter();
  if (result)
  {

    return 3;
  }

  return result;
}

id sub_1002FED28(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100680570(a3, v8, a1);
  type metadata accessor for UpsellBreakoutLayout();
  sub_1002FF610(&qword_100995CD0, &type metadata accessor for UpsellBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10002849C(&qword_100973210);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B0B70;
  *(v21 + 32) = v16;
  sub_1002FF658();
  v22 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1002FF034(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = type metadata accessor for PageGrid();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  v38 = v2;
  sub_10009768C(v2 + v18, v17);
  v19 = v9[6];
  if (v19(v17, 1, v8))
  {
    sub_1000284E4(v17);
LABEL_6:
    [v38 bounds];
    v25 = v39;
    return sub_10075549C(v25, v40);
  }

  v33 = v7;
  v34 = v14;
  v20 = v8;
  v32 = v9[2];
  v32(v11, v17, v8);
  sub_1000284E4(v17);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v31 = v9[1];
  v31(v11, v8);
  v21 = v41;
  v22 = [v41 horizontalSizeClass];

  if (v22 != 2)
  {
    goto LABEL_6;
  }

  v23 = v38;
  v24 = v34;
  sub_10009768C(v38 + v18, v34);
  if (v19(v24, 1, v20))
  {
    sub_1000284E4(v24);
    [v23 bounds];
    CGRectGetWidth(v42);
  }

  else
  {
    v32(v11, v24, v20);
    sub_1000284E4(v24);
    swift_getKeyPath();
    v27 = v35;
    ItemLayoutContext.subscript.getter();

    v31(v11, v20);
    v29 = v36;
    v28 = v37;
    v30 = v33;
    (*(v36 + 32))(v33, v27, v37);
    PageGrid.containerWidth.getter();
    PageGrid.containerHeight.getter();
    (*(v29 + 8))(v30, v28);
  }

  [v23 bounds];
  CGRectGetHeight(v43);
  v25 = v39;
  return sub_10075549C(v25, v40);
}

void sub_1002FF488()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002FF610(&qword_100970E80, &type metadata accessor for ArtworkView);
  v3 = v2;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v4 = *(*(*(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v4)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_1002FF610(&unk_1009840E0, type metadata accessor for VideoView);
      v5 = v4;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }
}

uint64_t sub_1002FF610(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002FF658()
{
  result = qword_10098EFE0;
  if (!qword_10098EFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098EFE0);
  }

  return result;
}

uint64_t sub_1002FF6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D4>, double a9@<D5>)
{
  v50 = a6;
  v45 = a5;
  v55 = a4;
  v47 = a9;
  v46 = a8;
  v56 = a1;
  v54 = a7;
  v41 = type metadata accessor for DynamicTypeSize();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Shelf.ContentType();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PageGrid.Direction();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v20);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  sub_100031660(a2, &v39 - v23, &unk_10098FFB0);
  v42 = v20;
  sub_100031660(a3, &v24[*(v20 + 48)], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v52 = v15;
  v25 = *(v15 + 104);
  v26 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v57[0]))
  {
    v26 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v27 = *v26;
  v51 = v19;
  v53 = v14;
  v25(v19, v27, v14);
  ReviewsDiffablePagePresenter.initialFocusedReviewId.getter();
  v28 = v57[3];
  sub_10002B894(v57, &qword_10096FB90);
  swift_getKeyPath();
  v29 = v49;
  v30 = v48;
  ReadOnlyLens.subscript.getter();

  if ((*(v30 + 88))(v13, v29) == enum case for Shelf.ContentType.productReview(_:))
  {
    v31 = v24;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    if (v28)
    {
      (*(v52 + 16))(v44, v51, v53);
      sub_10069F96C(0.0);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    }

    else
    {
      v38 = v39;
      PageEnvironment.dynamicTypeSize.getter();
      (*(v33 + 16))(v44, v32, v34);
      sub_1001E7B04(v38);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v40 + 8))(v38, v41);
    }

    (*(v33 + 8))(v32, v34);
    return sub_10002B894(v31, &qword_100974650);
  }

  else
  {
    v57[0] = v45;
    v35 = v43;
    sub_100031660(v24, v43, &qword_100974650);
    v36 = *(v42 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v52 + 8))(v51, v53);
    sub_10002B894(v24, &qword_100974650);
    sub_10002B894(v35 + v36, &unk_10098FFB0);
    sub_10002B894(v35, &unk_10098FFB0);
    return (*(v30 + 8))(v13, v29);
  }
}

uint64_t sub_1002FFDA0()
{
  sub_1003001C8();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1002FFE84()
{
  sub_1003001C8();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1002FFF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10030021C();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1002FFFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_10002849C(&qword_100974650);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_100031660(a2, v20 - v15, &unk_10098FFB0);
  sub_100031660(a3, &v16[*(v11 + 56)], &unk_10098FFB0);
  v20[5] = v17;
  sub_100031660(v16, v13, &qword_100974650);
  v18 = *(v11 + 56);
  sub_10010E37C();

  PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v16, &qword_100974650);

  sub_10002B894(&v13[v18], &unk_10098FFB0);
  return sub_10002B894(v13, &unk_10098FFB0);
}

unint64_t sub_1003001C8()
{
  result = qword_10097FC88;
  if (!qword_10097FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FC88);
  }

  return result;
}

unint64_t sub_10030021C()
{
  result = qword_10097FC90;
  if (!qword_10097FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FC90);
  }

  return result;
}

void sub_100300270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_1009CF4A8) = 0;
  sub_100307B48();
  v5 = qword_10097FCC0;
  v6 = *(v2 + qword_10097FCC0);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
      v9 = *(v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v10 = v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    ObjectType = swift_getObjectType();
    v12 = *(v8 + 264);
    v13 = v7;
    v14 = v12(ObjectType, v8);

    if (v14)
    {
      *&v14[qword_100988CB8 + 8] = &off_1008BD9D0;
      swift_unknownObjectWeakAssign();
    }

    v15 = *(v3 + v5);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v16 != 0)
      {
        if (a1)
        {
          v18 = swift_getObjectType();
          v19 = *(a2 + 8);
          v20 = v16;
          v19(v18, a2);
          type metadata accessor for VideoPlaybackCoordinator();
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          swift_getObjectType();
          v21 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
          v22 = v20;
          dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
        }

        else
        {
          v23 = v16;
        }

        type metadata accessor for VideoPlaybackCoordinator();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        swift_getObjectType();
        v24 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
        v25 = v16;
        dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
      }
    }
  }
}

uint64_t sub_10030052C()
{
  swift_unknownObjectRelease();

  sub_10001F63C(*(v0 + qword_1009CF4B8));
  sub_10001F63C(*(v0 + qword_1009CF4C0));

  sub_10002B894(v0 + qword_10097FCE0, &qword_10097DBD0);

  return sub_10002B894(v0 + qword_1009CF4E0, &qword_100973D30);
}

id sub_100300678()
{
  ObjectType = swift_getObjectType();
  if (v0[qword_10097FCF0] == 1)
  {
    v0[qword_10097FCF0] = 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003006C8(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_10097FCF0] == 1)
  {
    a1[qword_10097FCF0] = 0;
  }

  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = a1;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100300728(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_10001F63C(*(a1 + qword_1009CF4B8));
  sub_10001F63C(*(a1 + qword_1009CF4C0));

  sub_10002B894(a1 + qword_10097FCE0, &qword_10097DBD0);

  return sub_10002B894(a1 + qword_1009CF4E0, &qword_100973D30);
}

void sub_100300898(char a1)
{
  v2 = v1;
  v4 = *&v1[qword_10097FCC0];
  if (v4)
  {
    v4[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled] = v1[qword_1009CF498];
    v5 = v4;
    sub_100768F60();
  }

  v6 = *&v2[qword_10097FCF8];
  if (v6)
  {
    [v6 setHidden:v2[qword_1009CF498]];
  }

  v7 = a1 & ~v2[qword_1009CF498];
  v8 = sub_1003009E4();
  if (v7 & 1) != 0 || (v8)
  {
    v2[qword_1009CF4B0] = 1;
    v9 = [v2 viewIfLoaded];
    [v9 setNeedsLayout];

    v2[qword_10097FCA0] = 1;
    v10 = [v2 viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

uint64_t sub_1003009E4()
{
  v1 = qword_10097FCC0;
  result = *&v0[qword_10097FCC0];
  if (result)
  {
    result = [result view];
    if (result)
    {
      v3 = result;
      if ((v0[qword_1009CF498] & 1) == 0)
      {
        if (*&v0[v1])
        {
          type metadata accessor for ListTodayCardCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v4 = [v3 superview];
            v5 = [v0 collectionView];
            v6 = v5;
            if (v4)
            {
              if (v5)
              {
                sub_100005744(0, &qword_100972EB0);
                v7 = static NSObject.== infix(_:_:)();

                if ((v7 & 1) == 0)
                {
LABEL_28:
                  v21 = objc_opt_self();
                  v22 = swift_allocObject();
                  *(v22 + 16) = v3;
                  *(v22 + 24) = v0;
                  v23 = swift_allocObject();
                  *(v23 + 16) = sub_100309914;
                  *(v23 + 24) = v22;
                  v31 = sub_10006F258;
                  v32 = v23;
                  v27 = _NSConcreteStackBlock;
                  v28 = 1107296256;
                  v29 = sub_1000489A8;
                  v30 = &unk_1008BDB70;
                  v24 = _Block_copy(&v27);
                  v25 = v0;

                  v17 = v3;

                  [v21 performWithoutAnimation:v24];
                  _Block_release(v24);
                  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

                  if ((v21 & 1) == 0)
                  {
                    result = [v25 collectionView];
                    if (result)
                    {
                      v26 = result;
                      [result insertSubview:v17 atIndex:0];

                      if ([v17 effectiveUserInterfaceLayoutDirection] == 1)
                      {
                        v20 = [v17 layer];
                        [v20 setFlipsHorizontalAxis:1];
                        goto LABEL_23;
                      }

                      goto LABEL_32;
                    }

LABEL_39:
                    __break(1u);
                    return result;
                  }

                  goto LABEL_36;
                }

LABEL_15:

                return 0;
              }

              v6 = v4;
            }

            else if (!v5)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      v8 = [v3 superview];
      v9 = [v0 view];
      v10 = v9;
      if (v8)
      {
        if (v9)
        {
          sub_100005744(0, &qword_100972EB0);
          v11 = static NSObject.== infix(_:_:)();

          if (v11)
          {
            goto LABEL_15;
          }

LABEL_18:
          v12 = objc_opt_self();
          v13 = swift_allocObject();
          *(v13 + 16) = v3;
          *(v13 + 24) = v0;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1003098E8;
          *(v14 + 24) = v13;
          v31 = sub_10006F094;
          v32 = v14;
          v27 = _NSConcreteStackBlock;
          v28 = 1107296256;
          v29 = sub_1000489A8;
          v30 = &unk_1008BDAF8;
          v15 = _Block_copy(&v27);
          v16 = v0;
          v17 = v3;

          [v12 performWithoutAnimation:v15];
          _Block_release(v15);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if ((v12 & 1) == 0)
          {
            result = [v16 view];
            if (result)
            {
              v18 = result;
              result = [v16 collectionView];
              if (result)
              {
                v19 = result;
                [v18 insertSubview:v17 aboveSubview:result];

                if ([v17 effectiveUserInterfaceLayoutDirection] == 1)
                {
                  v20 = [v17 layer];
                  [v20 setFlipsHorizontalAxis:0];
LABEL_23:

LABEL_33:
                  return 1;
                }

LABEL_32:

                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v10 = v8;
      }

      else if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  return result;
}

void sub_100300F64(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  sub_1003010A0();
  static ViewControllerContainment.add(_:to:frame:)();

  if (*&v1[v3])
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v7 = *&v1[qword_10097FCC0];
      if (v7)
      {
        v8 = [v7 viewIfLoaded];
        if (v8)
        {
          v9 = v8;
          v10 = [v1 view];
          if (!v10)
          {
            __break(1u);
            return;
          }

          v11 = v10;
          [v10 bringSubviewToFront:v9];
        }
      }
    }
  }
}

void sub_1003010A0()
{
  v1 = v0;
  v2 = *&v0[qword_10097FCC0];
  if (!v2 || !*&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController] || (type metadata accessor for JULoadingViewController(), !swift_dynamicCastClass()))
  {
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;

  v8 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8];
    v10 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
    v10 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
    v8 = 0;
  }

  v13 = v8;
  sub_100769CEC(v7, v10, v9);
}

void sub_100301230()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad", v5);
  v8 = type metadata accessor for Feature.iOS();
  v23[3] = v8;
  v23[4] = sub_10030A0F8(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v9 = sub_1000056E0(v23);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007000(v23);
  if ((v8 & 1) == 0)
  {
    v10 = [v1 view];
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v14 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  sub_10030312C();
  v15 = sub_10035F010();
  [v15 addTarget:v1 action:"dismissAnimated" forControlEvents:64];
  static AutomationSemantics.dismissButton()();
  UIView.setAutomationSemantics(_:)();
  (*(v4 + 8))(v7, v3);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 addSubview:v15];

  v18 = *&v1[qword_1009CF4C8];
  *&v1[qword_1009CF4C8] = v15;
  v19 = v15;

  type metadata accessor for ArticleLinkLoaderScrollObserver();
  swift_allocObject();
  v20 = sub_100585924();
  v21 = qword_10097FCC8;
  if (*&v1[qword_10097FCC8])
  {
    sub_10030A0F8(&qword_100980408, type metadata accessor for ArticleLinkLoaderScrollObserver);
  }

  CompoundScrollObserver.removeChild(_:)();

  *&v1[v21] = v20;
  swift_retain_n();

  sub_10030A0F8(&qword_100980408, type metadata accessor for ArticleLinkLoaderScrollObserver);
  CompoundScrollObserver.addChild(_:)();

  if (*&v1[qword_10097FCC0])
  {
    sub_1003009E4();
  }
}

void sub_1003015F4(void *a1)
{
  v1 = a1;
  sub_100301230();
}

id sub_10030163C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result panGestureRecognizer];

  [v4 addGestureRecognizer:v6];
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNavigationBarHidden:1 animated:0];
  }

  *(v1 + qword_10097FCA8) = 1;
  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_100301764(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10030163C(a3);
}

void sub_1003017B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidAppear:", a3);
  v4[qword_10097FCA0] = 1;
  v5 = [v4 viewIfLoaded];
  [v5 setNeedsLayout];
}

void sub_100301854(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  v3 = [v1 navigationController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_100005744(0, &qword_1009711C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v6;
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();

    v9 = v19 == v1;
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);

    v9 = v8 == v1;
  }

LABEL_10:
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];

    sub_100005744(0, &qword_1009711C0);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 > 1 && v9)
    {
      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

void sub_100301A90(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100301854(a3);
}

void sub_100301AE4(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10030A0F0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1006D1458;
  v7[3] = &unk_1008BDE68;
  v6 = _Block_copy(v7);

  [a2 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

uint64_t sub_100301BEC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_100301D04();

    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *&v2[j + 4];
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:1.0];

        if (v7 == i)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

double *sub_100301D04()
{
  v1 = *(v0 + qword_1009CF4D0);
  v10 = *(v0 + qword_1009CF4D8);
  v11 = v1;
  v12 = *(v0 + qword_1009CF4C8);
  v2 = v12;
  v3 = v10;
  result = v1;
  v5 = 0;
LABEL_2:
  if (v5 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 3)
    {
      sub_10002849C(&qword_100980340);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v9[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_100301E3C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_100301AE4(v6, a4);

  swift_unknownObjectRelease();
}

void sub_100301EBC(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v10[4] = sub_10030A0E8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006D1458;
    v10[3] = &unk_1008BDE40;
    v8 = _Block_copy(v10);
    v9 = v3;

    [a1 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_100301FE4(int a1, _BYTE *a2)
{
  a2[qword_1009CF4B0] = 1;
  v3 = [a2 viewIfLoaded];
  [v3 setNeedsLayout];

  a2[qword_10097FCA0] = 1;
  v4 = [a2 viewIfLoaded];
  [v4 setNeedsLayout];

  sub_100302084();
}

void sub_100302084()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.getter();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 numberOfSections];

      if (v8 >= v11)
      {
        return;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      return;
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 collectionViewLayout];

      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v3 + 8))(v5, v2);
      v16 = [v14 layoutAttributesForItemAtIndexPath:isa];

      if (v16)
      {
        v17 = *&v1[qword_10097FD00];
        if (v17)
        {

          [v14 collectionViewContentSize];
          v19 = v18;
          [v16 frame];
          *(v17 + 48) = v19 - CGRectGetMinY(v21);
          sub_1001FA78C(1);
        }
      }

      else
      {
        v16 = v14;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003022A0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100301EBC(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100302320()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = sub_100301D04();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_14:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v8 = [v0 view];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        [v8 bringSubviewToFront:v6];

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:

  v10 = *&v0[qword_10097FCF8];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [v0 collectionView];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v15 = v14;
    [v13 insertSubview:v11 aboveSubview:v14];
  }
}

void sub_1003024D8(void *a1)
{
  v1 = a1;
  sub_100302320();
}

void sub_100302520()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v3 - 8);
  v160 = &v156 - v4;
  v162 = type metadata accessor for UIView.LayoutRegion();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v156 - v11;
  v12 = type metadata accessor for SmallLockupLayout.Metrics();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v164 = &v156 - v17;
  v168.receiver = v0;
  v168.super_class = ObjectType;
  objc_msgSendSuper2(&v168, "viewDidLayoutSubviews", v16);
  if (v0[qword_10097FCA0] == 1)
  {
    v0[qword_10097FCA0] = 0;
    sub_10030312C();
  }

  sub_1003035B0();
  sub_1003037F4();
  sub_1003039E8();
  v18 = qword_1009CF498;
  v19 = &unk_10097F000;
  if (v0[qword_1009CF498] != 1)
  {
    goto LABEL_13;
  }

  v20 = *&v0[qword_10097FCC0];
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v25 = [v1 view];
      v26 = v25;
      if (v24 >= 0.0)
      {
        if (!v25)
        {
LABEL_59:
          __break(1u);
          return;
        }

        [v25 bounds];
        v28 = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v43 = v50;
        v42 = v48;
        v41 = v46;
      }

      else
      {
        v163 = *&v18;
        v157 = v7;
        if (!v25)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        [v25 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = objc_opt_self();
        [v35 inheritedAnimationDuration];
        v37 = v36 * 0.8;
        v38 = swift_allocObject();
        *(v38 + 2) = v22;
        v38[3] = v28;
        *(v38 + 4) = v30;
        *(v38 + 5) = v32;
        *(v38 + 6) = v34;
        aBlock[4] = sub_10030A0D8;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008BDDF0;
        v39 = _Block_copy(aBlock);
        v40 = v22;

        [v35 animateWithDuration:612 delay:v39 usingSpringWithDamping:0 initialSpringVelocity:v37 options:0.0 animations:0.92 completion:0.0];
        _Block_release(v39);
        [v40 frame];
        [v40 setFrame:?];
        [v40 frame];
        v7 = v157;
        *&v18 = v163;
      }

      [v22 setFrame:{v28, v41, v42, v43}];
    }
  }

  if ((v1[v18] & 1) == 0)
  {
LABEL_13:
    v51 = *&v1[qword_10097FCD0];
    if (v51)
    {
      v52 = *(v51 + 24);

      [v52 _systemContentInset];
      v54 = v53;
      v56 = v55;
      [v52 contentOffset];
      v58 = v57;
      v60 = v59;
      [v52 contentInset];
      v62 = v56 + v58 + v61;
      v64 = v54 + v60 + v63;
      [v52 bounds];
      v66 = sub_100079D98(v62, v64, v65);
      v68 = v67;
      v70 = v69;
      v72 = v71;
    }

    else
    {
      v66 = 0.0;
      v68 = 0.0;
      v70 = 0.0;
      v72 = 0.0;
    }

    v73 = qword_1009CF4B0;
    if ((v1[qword_1009CF4B0] & 1) != 0 || (v169.origin.x = v66, v169.origin.y = v68, v169.size.width = v70, v169.size.height = v72, Width = CGRectGetWidth(v169), (v75 = *&v1[qword_10097FCC0]) == 0) || (v76 = Width, (v77 = [v75 view]) == 0) || (v78 = v77, objc_msgSend(v77, "frame"), v80 = v79, v82 = v81, v84 = v83, v163 = v76, v86 = v85, v78, v170.origin.x = v80, v170.origin.y = v82, v170.size.width = v84, v170.size.height = v86, v163 != CGRectGetWidth(v170)))
    {
      v87 = *&v1[qword_10097FCC0];
      if (v87)
      {
        v88 = [v87 view];
      }

      else
      {
        v88 = 0;
      }

      [v88 setFrame:{v66, v68, v70, v72}];

      sub_100303BBC(v66, v68, v70, v72);
      v1[v73] = 0;
    }
  }

  v89 = *&v1[qword_10097FCF8];
  if (v89)
  {
    v163 = *&v18;
    v157 = v7;
    v90 = v6;
    v91 = v89;
    v92 = [v1 traitCollection];
    v93 = UITraitCollection.isRegularPad.getter();

    if (v93)
    {
      v94 = 80.0;
    }

    else
    {
      v94 = 20.0;
    }

    v95 = [v1 view];
    if (!v95)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v96 = v95;
    [v95 bounds];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;

    v105 = 0.0;
    v171.origin.x = v98;
    v171.origin.y = v100;
    v171.size.width = v102;
    v171.size.height = v104;
    v172 = CGRectInset(v171, v94, 0.0);
    v106 = v172.size.width;
    v107 = *&v91[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
    if (v107)
    {
      v108 = v9;
      v109 = v107;
      v110 = v164;
      sub_10013F3FC(v164);
      [v109 layoutMargins];
      v112 = v111;
      v114 = v113;
      v115 = [v109 traitCollection];
      (*(v165 + 16))(v14, v110, v166);
      v116 = SmallLockupLayout.Metrics.offerButtonSize.getter();
      v19 = &unk_10097F000;
      if ((v118 & 1) == 0 && ((v116 | v117) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        if (UITraitCollection.prefersAccessibilityLayouts.getter())
        {
          v119 = v108;
          if (qword_10096ECB8 != -1)
          {
            swift_once();
          }

          v120 = qword_100991010;
        }

        else
        {
          v119 = v108;
          if (qword_10096ECC0 != -1)
          {
            swift_once();
          }

          v120 = qword_100991028;
        }

        v124 = sub_1000056A8(v90, v120);
        v125 = v157;
        (*(v157 + 16))(v119, v124, v90);
        v126 = v158;
        (*(v125 + 32))(v158, v119, v90);
        OfferButtonMetrics.minimumSize.getter();
        OfferButtonMetrics.estimatedHeight.getter();
        SmallLockupLayout.Metrics.offerButtonSize.setter();
        (*(v125 + 8))(v126, v90);
      }

      static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
      v128 = v127;

      v129 = v166;
      v130 = *(v165 + 8);
      v130(v14, v166);

      v122 = v114 + v112 + v128;
      v130(v164, v129);
    }

    else
    {
      v121 = *&v91[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
      v122 = 0.0;
      v19 = &unk_10097F000;
      if (!v121)
      {
        goto LABEL_44;
      }

      [v121 sizeThatFits:{v172.size.width, v172.size.height}];
      v122 = v123;
    }

    v105 = v106;
LABEL_44:
    v131 = v91;
    [v131 frame];
    *&v18 = v163;
    if (v105 != v133 || v122 != v132)
    {
      [v131 frame];
      [v131 setFrame:v94];
      [v131 frame];
      [v131 setFrame:?];
    }

    if (*&v1[qword_10097FD00])
    {

      sub_1001FA78C(1);
    }
  }

  if ((v1[v18] & 1) == 0)
  {
    v134 = *&v1[v19[408]];
    if (v134)
    {
      type metadata accessor for ListTodayCardCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        v135 = v134;
        v136 = [v1 view];
        if (v136)
        {
          v137 = v136;
          v138 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
          v139 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
          v140 = *(v139 - 8);
          v141 = v160;
          (*(v140 + 104))(v160, v138, v139);
          (*(v140 + 56))(v141, 0, 1, v139);
          v142 = v159;
          static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
          sub_10002B894(v141, &unk_100996820);
          UIView.edgeInsets(for:)();
          v144 = v143;
          v146 = v145;
          v148 = v147;
          v150 = v149;

          (*(v161 + 8))(v142, v162);
          v151 = &v135[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
          v152 = *&v135[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
          v153 = *&v135[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
          v154 = *&v135[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
          v155 = *&v135[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
          *v151 = v144;
          *(v151 + 1) = v146;
          *(v151 + 2) = v148;
          *(v151 + 3) = v150;
          sub_1007691D8(v152, v153, v154, v155);

          return;
        }

        goto LABEL_57;
      }
    }
  }
}

void sub_10030312C()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v83 = v2;
  [v83 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v0[qword_1009CF498] == 1)
  {
    v10 = *&v0[qword_10097FCC0];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;

        v16 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
        if (v16)
        {
          v17 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8];
          v18 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
        }

        else
        {
          v17 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
          v18 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
          v16 = 0;
        }

        v75 = v16;
        sub_100769CEC(v15, v18, v17);
        v56 = v76;

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v19 = *&v0[qword_10097FCD0];
  if (v19)
  {
    v20 = *(v19 + 24);

    [v20 _systemContentInset];
    v22 = v21;
    v24 = v23;
    [v20 contentOffset];
    v26 = v25;
    v28 = v27;
    [v20 contentInset];
    v30 = v24 + v26 + v29;
    v32 = v22 + v28 + v31;
    [v20 bounds];
    v85.origin.x = sub_100079D98(v30, v32, v33);
    Height = CGRectGetHeight(v85);
    v35 = [v1 view];
    if (v35)
    {
      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = *&v1[qword_10097FCC0];
      if (v39)
      {
        v40 = [v39 view];
        if (v40)
        {
          v41 = v40;
          v42 = *(v19 + 24);
          [v42 _systemContentInset];
          v44 = v43;
          v46 = v45;
          [v42 contentOffset];
          v48 = v47;
          v50 = v49;
          [v42 contentInset];
          v52 = v46 + v48 + v51;
          v54 = v44 + v50 + v53;
          [v42 bounds];
          [v41 setFrame:{sub_100079D98(v52, v54, v55)}];
        }
      }

      v56 = Height - v38;
      v57 = *(v19 + 24);
      [v57 _systemContentInset];
      v59 = v58;
      v61 = v60;
      [v57 contentOffset];
      v63 = v62;
      v65 = v64;
      [v57 contentInset];
      v67 = v61 + v63 + v66;
      v69 = v59 + v65 + v68;
      [v57 bounds];
      v71 = sub_100079D98(v67, v69, v70);
      sub_100303BBC(v71, v72, v73, v74);

      v9 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v56 = v3;
LABEL_17:
  [v83 contentOffset];
  v78 = v77;
  v80 = v79;
  [v83 setContentInset:{v56, v5, v7, v9}];
  [v83 setContentOffset:{v78, v80}];
  if (*&v1[qword_10097FCC0])
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v81 = swift_dynamicCastClass();
    v82 = 0.0;
    if (!v81)
    {
      v82 = v56;
    }
  }

  else
  {
    v82 = v56;
  }

  [v83 setScrollIndicatorInsets:{v82, 0.0, v7, 0.0}];
  [v83 contentOffset];
  [v83 setContentOffset:?];
}

void sub_1003035B0()
{
  v1 = *&v0[qword_1009CF4C8];
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 currentDevice];
    [v5 userInterfaceIdiom];

    sub_100274060();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = *&v2[qword_10097FCC0];
      if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell), type metadata accessor for ListTodayCardCollectionViewCell(), swift_dynamicCastClass()))
      {
        v18 = v17;
        [sub_100343750() frame];
        CGRectGetMaxX(v21);
      }

      else
      {
        v22.origin.x = v9;
        v22.origin.y = v11;
        v22.size.width = v13;
        v22.size.height = v15;
        CGRectGetMaxX(v22);
      }

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetMinY(v23);
      v19 = v4;
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v19 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003037F4()
{
  v1 = *&v0[qword_1009CF4D0];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_100274060();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = *&v0[qword_1009CF4C8];
      if (v15)
      {
        v16 = v15;
        [v16 frame];
        CGRectGetMinX(v19);
      }

      else
      {
        v20.origin.x = v8;
        v20.origin.y = v10;
        v20.size.width = v12;
        v20.size.height = v14;
        CGRectGetMaxX(v20);
      }

      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      CGRectGetMinY(v21);
      v17 = v3;
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v17 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003039E8()
{
  v1 = *&v0[qword_1009CF4D8];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_100274060();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = v3;
      [v15 sizeThatFits:{v12, v14}];
      v17.origin.x = v8;
      v17.origin.y = v10;
      v17.size.width = v12;
      v17.size.height = v14;
      CGRectGetMinX(v17);
      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMinY(v18);
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v15 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100303BBC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImpressionMetrics.ID();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for ImpressionMetrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v4[qword_10097FCD8];
  if (v20 || (result = ArticleDiffablePagePresenter.todayCard.getter(), (v20 = result) != 0))
  {

    TodayCard.impressionMetrics.getter();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      return sub_10002B894(v15, &qword_100973D30);
    }

    (*(v17 + 32))(v19, v15, v16);
    v22 = [v4 collectionView];
    if (v22)
    {
      v23 = v22;
      TimedMetricsPagePresenter.impressionsCalculator.getter();
      result = [v4 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v24 = result;
      v36 = v23;
      [result convertRect:v23 toCoordinateSpace:{a1, a2, a3, a4}];

      ImpressionsCalculator.addElement(_:at:)();
      ImpressionMetrics.id.getter();
      v25 = qword_10097FCC0;
      v26 = *&v5[qword_10097FCC0];
      if (v26)
      {
        [*(v26 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell) bounds];
        *(&v28 + 1) = v27;
        *(&v30 + 1) = v29;
      }

      else
      {
        v28 = 0uLL;
        v30 = 0uLL;
      }

      v39 = v28;
      v40 = v30;
      v41 = v26 == 0;
      v31 = ImpressionsCalculator.childCalculator(for:viewBounds:)();
      (*(v37 + 8))(v12, v10);
      if (v31)
      {
        v32 = *&v5[v25];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
          swift_getObjectType();
          v38[3] = type metadata accessor for TodayCard();
          v38[4] = sub_10030A0F8(&qword_100977390, &type metadata accessor for TodayCard);
          v38[0] = v20;
          v34 = v33;

          dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();

          (*(v17 + 8))(v19, v16);
          return sub_100007000(v38);
        }

        else
        {

          return (*(v17 + 8))(v19, v16);
        }
      }

      (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }

  return result;
}

void sub_1003040BC(void *a1)
{
  v1 = a1;
  sub_100302520();
}

void sub_100304104(void *a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v2[qword_10097FCA0] = 1;
  v4 = [v2 viewIfLoaded];
  [v4 setNeedsLayout];

  if (a1)
  {
    v5 = a1;
    if ([v5 horizontalSizeClass] && (v6 = objc_msgSend(v2, "traitCollection"), v7 = objc_msgSend(v6, "horizontalSizeClass"), v6, v7 != objc_msgSend(v5, "horizontalSizeClass")) && ((v8 = *&v2[qword_10097FCD8]) != 0 || (v8 = ArticleDiffablePagePresenter.todayCard.getter()) != 0))
    {
      v9 = *&v2[qword_10097FCC0];
      if (v9)
      {
        v10 = v9 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
        v12 = *v10;
        v11 = *(v10 + 8);

        v13 = v12;
        sub_1003042A4(v8, v13, v11, 5);
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

uint64_t sub_1003042A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageGrid();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[qword_10097FCC0];
  v59 = v15;
  if (v16)
  {
    type metadata accessor for ArticleHeaderViewController();
    v17 = v16;
    v18 = v15;
    v19 = v17;
    sub_100768998(v17, v18);
  }

  else
  {
    type metadata accessor for ArticleHeaderViewController();
    sub_100768998(v4, v15);
    Logger.init()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ArticleDiffablePageViewController: header page grid derived from self unexpected", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = a4;
  v24 = v58;
  if (a4 == 7)
  {
    v25 = v5;
    v26 = [v5 traitCollection];
    v27 = UITraitCollection.isRegularPad.getter();
    type metadata accessor for ListTodayCardCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v29 = (*(a3 + 160))(ObjectType, a3);

      if (v29 == 6)
      {
        v30 = 6;
LABEL_12:
        if (v27)
        {
          v23 = v30;
        }

        else
        {
          v23 = 5;
        }

        v5 = v25;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_getObjectType();
  v54 = qword_1009CF498;
  (*(a3 + 96))((v5[qword_1009CF498] & 1) == 0, v31, a3);
  v32 = *&v5[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v33 = v23;
  v34 = v59;
  (*(a3 + 296))(v24, v33, v59, v32, v31, a3);
  v35 = (*(a3 + 264))(v31, a3);
  if (v35)
  {
    *(v35 + qword_100988CB8 + 8) = &off_1008BD9D0;
    v36 = v35;
    swift_unknownObjectWeakAssign();
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (v37 && a2)
  {
    v38 = v37;
    v55 = v5;
    if (a4 == 7)
    {
      v39 = *(a3 + 136);
      v40 = a2;
      LODWORD(a4) = v39(v31, a3);
    }

    else
    {
      v41 = a2;
    }

    v42 = swift_getObjectType();
    sub_1005F3EC8(v24, v59, a4, v32, v42, v38);
    v43 = *(v38 + 32);
    if (v43(v42, v38))
    {
      v45 = v44;
      v46 = swift_getObjectType();
      (*(v45 + 32))((v55[v54] & 1) == 0, v46, v45);
      swift_unknownObjectRelease();
    }

    if (v43(v42, v38))
    {
      v48 = v47;
      v49 = swift_getObjectType();
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = *(v48 + 88);

      v51(sub_1003098B8, v50, v49, v48);
      swift_unknownObjectRelease();
    }

    v24 = v58;
    v34 = v59;
  }

  v60[3] = type metadata accessor for TodayCard();
  v60[4] = &protocol witness table for TodayCard;
  v60[0] = v24;

  dispatch thunk of CellWithManagedArtwork.fetch(for:on:asPartOf:)();
  (*(v56 + 8))(v34, v57);
  return sub_100007000(v60);
}

void sub_10030485C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100304104(a3);
}

uint64_t sub_1003048C8()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_100980390);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10002849C(&qword_100980398);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10002849C(&qword_1009803A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_100414B40();
  ArticleDiffablePagePresenter.onPrepareToDisplayTodayCard.getter();
  sub_10002849C(&qword_1009803A8);
  sub_100097060(&qword_1009803B0, &qword_1009803A8);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v5 + 8))(v7, v4);
  ArticleDiffablePagePresenter.onShowFooterLockup.getter();
  sub_10002849C(&qword_1009803B8);
  sub_100097060(&qword_1009803C0, &qword_1009803B8);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v8 = v12;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v13 + 8))(v8, v14);
  ArticleDiffablePagePresenter.onPrefetchLinkPresentations.getter();
  sub_10002849C(&qword_1009803C8);
  sub_100097060(&qword_1009803D0, &qword_1009803C8);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v9 = v15;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_100304D00(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10097FCD8;
  v5 = *(v1 + qword_10097FCD8);

  v6 = ArticleDiffablePagePresenter.todayCard.getter();
  v7 = sub_100309B90(v5, v6);

  v8 = *(v2 + v4);
  if (!v8 || (v7 & 1) != 0)
  {
    *(v2 + qword_10097FCB8) = a1;

    v9 = *(v2 + qword_1009CF4A8);

    if (!v8 || v9 == 0)
    {

      sub_100307B48();
    }
  }
}

uint64_t (*sub_100304DE4(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100309B6C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100274018;
}

uint64_t sub_100304E74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ArticleDiffablePagePresenter.FooterLockup();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100306F7C();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.standard(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = *(v1 + qword_10097FCF8);
    if (v13)
    {
      v14 = *(v1 + qword_1009CF3F0);
      v15 = *(v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
      v16 = v13;
      sub_1002D8A94(v12, v14, v15);
    }

    Lockup.impressionMetrics.getter();
LABEL_9:

    v21 = qword_1009CF4E0;
    swift_beginAccess();
    sub_1000315F8(v6, v2 + v21, &qword_100973D30);
    return swift_endAccess();
  }

  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.arcade(_:))
  {
    (*(v8 + 96))(v10, v7);
    v17 = *v10;
    v18 = *(v1 + qword_10097FCF8);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
      v20 = v18;
      sub_1002D9464(v17, v19);
    }

    ArcadeLockup.impressionMetrics.getter();
    goto LABEL_9;
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*sub_100305128(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100309B10;
}

uint64_t sub_10030518C(unint64_t a1)
{
  sub_10002849C(&unk_100973270);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v2 = v11[0];
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
  }

LABEL_3:
  result = sub_100005744(0, &qword_1009729E0);
  if (v3 >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      v11[0] = v7;
      dispatch thunk of LinkLoader.fetchPresentation(for:cacheEnabled:)();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v2;
      swift_retain_n();

      v10 = static OS_dispatch_queue.main.getter();
      v11[3] = v5;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = v10;
      Promise.then(perform:orCatchError:on:)();

      sub_100007000(v11);
    }

    while (v3 != v6);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003053A8(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100309A50;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10019DA68;
}

unint64_t sub_100305438@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  a1[3] = &type metadata for ArticlePageGridProvider;
  result = sub_1003099FC();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_100305490@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArticlePageShelfLayoutSpacingProvider;
  result = sub_1003099A8();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003054C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for ArticlePageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10030A0F8(&qword_100980370, &type metadata accessor for ArticleDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10030A0F8(&qword_100980378, type metadata accessor for ArticlePageShelfSupplementaryProvider);

  return v2;
}

id sub_1003055C4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100980348);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_10072A150(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  result = (*(v3 + 8))(v5, v2);
  if (v6 == a1)
  {
    v8 = ArticleDiffablePagePresenter.shouldTerminateOnClose.getter();
    sub_100305714(v8 & 1);
    return sub_1003057F4();
  }

  return result;
}

uint64_t sub_100305714(uint64_t result)
{
  v2 = *(v1 + qword_10097FCE8);
  v3 = result & 1;
  *(v1 + qword_10097FCE8) = result;
  if (v2 != v3)
  {
    v4 = qword_10097FCF0;
    v5 = *(v1 + qword_10097FCF0);
    *(v1 + qword_10097FCF0) = v3;
    if (v5 != v3)
    {
      v6 = [objc_opt_self() sharedCoordinator];
      v7 = v6;
      if (*(v1 + v4))
      {
        v8 = &selRef_beginDelayingNotifications;
      }

      else
      {
        v8 = &selRef_endDelayingNotifications;
      }

      [v6 *v8];
    }

    ArticleDiffablePagePresenter.shouldTerminateOnClose.getter();
    return AsyncEvent.post(_:)();
  }

  return result;
}

id sub_1003057F4()
{
  v1 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v1);
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareSheetData.Metadata();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = ArticleDiffablePagePresenter.shareAction.getter();
  if (result)
  {
    v25 = v0;
    type metadata accessor for ShareSheetAction();
    if (swift_dynamicCastClass())
    {
      ShareSheetAction.data.getter();
      ShareSheetData.metadata.getter();

      if ((*(v8 + 88))(v10, v7) == enum case for ShareSheetData.Metadata.article(_:))
      {
        (*(v8 + 96))(v10, v7);
        v12 = *v10;
        v13 = ShareSheetArticleMetadata.id.getter();
        v24 = v14;
        v15 = ShareSheetArticleMetadata.text.getter();
        v23[1] = v16;
        v23[2] = v15;
        v23[0] = v12;
        ShareSheetArticleMetadata.subtitle.getter();
        ShareSheetAction.data.getter();
        ShareSheetData.url.getter();

        URL.absoluteString.getter();
        v18 = v17;
        (*(v4 + 8))(v6, v3);
        sub_1005761D4(v13, v24, v18, &v30);
        v33[0] = v30;
        v19 = v31;
        v29 = _swiftEmptyArrayStorage;
        sub_10019D860(v33, v27);
        sub_10030A0F8(&unk_100980350, &type metadata accessor for AppEntityVisualState);
        v24 = v19;

        sub_10002849C(&qword_100977EF8);
        sub_100097060(&qword_100980360, &qword_100977EF8);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v27[0] = v30;
        v27[1] = v31;
        v28 = v32;
        v20 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
        sub_100309954();
        v21 = AppEntityViewAnnotation.init<A>(entity:state:)();
        result = [v25 view];
        if (result)
        {
          v22 = result;
          UIView.annotate(with:)();

          sub_1001964F0(v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100305C94()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v3 = sub_1001C66CC(20.0);
  [v3 setAlpha:0.0];
  [v3 addTarget:v0 action:"toggleMute" forControlEvents:64];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v1[qword_1009CF4D0];
    *&v1[qword_1009CF4D0] = v3;
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v8 = [v1 viewIfLoaded];
    [v8 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_100305DC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  *(v4 + qword_10097FCD8) = a1;

  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v36 = a4;
  v14(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v15 = qword_10097FCE0;
  swift_beginAccess();

  sub_1000315F8(v11, v4 + v15, &qword_10097DBD0);
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a2)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = a2;
    v21 = a1;
    v22 = *(a3 + 136);
    v34 = v20;
    v23 = v20;
    v35 = a3;
    v24 = v22(ObjectType, a3);
    a1 = v21;
    sub_1005F3EC8(v21, v36, v24, *(v4 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph), v19, v18);
    v25 = *(v18 + 32);
    if (v25(v19, v18))
    {
      v27 = v26;
      v28 = swift_getObjectType();
      (*(v27 + 32))((*(v4 + qword_1009CF498) & 1) == 0, v28, v27);
      swift_unknownObjectRelease();
    }

    if (v25(v19, v18))
    {
      v30 = v29;
      v31 = swift_getObjectType();
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = *(v30 + 88);

      v33(sub_10030A15C, v32, v31, v30);
      swift_unknownObjectRelease();
    }

    a2 = v34;
    a3 = v35;
  }

  sub_100306104(a1, a2, a3);
  sub_100306528();
}

void sub_100306104(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100306BA8(a2, a3, a1);
  v10 = v9;
  v11 = type metadata accessor for ArticleHeaderViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isDisappearing] = 0;
  v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isAppearing] = 0;
  v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled] = 1;
  v13 = &v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  v13[1] = v14;
  *&v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_todayCard] = a1;
  v15 = &v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  *v16 = v8;
  v16[1] = v10;
  v44.receiver = v12;
  v44.super_class = v11;

  a2;
  v17 = v8;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled] = v4[qword_1009CF498];
  sub_100768F60();
  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;

  v23 = [v18 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = &v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  v26 = *&v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  if (v26)
  {
    v27 = *(v25 + 1);
    v28 = *v25;
  }

  else
  {
    v27 = *&v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
    v28 = *&v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
    v26 = 0;
  }

  v29 = v26;
  v30 = sub_100769CEC(v22, v28, v27);
  v32 = v31;

  [v24 setFrame:{0.0, 0.0, v30, v32}];
  v33 = v18;
  sub_100306964(v18);
  v34 = [v4 collectionView];
  if (v34)
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = *(a3 + 208);
    v38 = v33;
    v39 = v35;
    LOBYTE(v35) = v37(ObjectType, a3);
    type metadata accessor for ArticleHeaderScrollObserver();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    *(v40 + 32) = v35 & 1;
    v41 = qword_10097FCD0;
    if (*&v4[qword_10097FCD0])
    {
      sub_10030A0F8(&unk_100980330, type metadata accessor for ArticleHeaderScrollObserver);
    }

    CompoundScrollObserver.removeChild(_:)();

    *&v4[v41] = v40;
    swift_retain_n();

    sub_10030A0F8(&unk_100980330, type metadata accessor for ArticleHeaderScrollObserver);
    CompoundScrollObserver.addChild(_:)();
  }

  v4[qword_1009CF4B0] = 1;
  v42 = [v4 viewIfLoaded];
  [v42 setNeedsLayout];

  v4[qword_10097FCA0] = 1;
  v43 = [v4 viewIfLoaded];
  [v43 setNeedsLayout];
}

void sub_100306528()
{
  v1 = v0;
  v2 = type metadata accessor for VideoPlayerState();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = *(v0 + qword_10097FCC0);
  if (!v10)
  {
    return;
  }

  v41 = v7;
  v42 = v6;
  v11 = &v10[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
  v12 = *&v10[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 272);
  v43 = v10;
  if (v14(ObjectType, v12) & 1) != 0 || (v15 = *(v11 + 1), v16 = swift_getObjectType(), (v17 = (*(v15 + 264))(v16, v15)) != 0) && (v18 = v17, v19 = sub_1004DFC98(), v18, (v19))
  {
    if (!*(v1 + qword_1009CF4D0))
    {
      sub_100305C94();
    }
  }

  v20 = *(v1 + qword_1009CF4D0);
  if (v20)
  {
    v21 = *(v11 + 1);
    v22 = swift_getObjectType();
    v23 = *(v21 + 264);
    v24 = v20;
    v25 = v23(v22, v21);
    if (v25)
    {
      v26 = v25;
      if (sub_1004DFC98())
      {
        v27 = qword_100988CE0;
        v28 = *&v26[qword_100988CE0];
        if (v28)
        {
          LOBYTE(v28) = [v28 isMuted];
        }

        v29 = v42;
        sub_1001C6984(v28);
        v30 = *&v26[v27];
        if (v30)
        {
          v31 = v30;
          dispatch thunk of VideoPlayer.state.getter();

          v32 = v41;
          (*(v41 + 32))(v9, v4, v29);
        }

        else
        {
          v32 = v41;
          (*(v41 + 104))(v9, enum case for VideoPlayerState.unknown(_:), v29);
        }

        if ((*(v32 + 88))(v9, v29) != enum case for VideoPlayerState.playing(_:) || (v34 = 1.0, (sub_1004DFC98() & 1) == 0))
        {
          v34 = 0.0;
        }

        (*(v32 + 8))(v9, v29);
        [v24 alpha];
        if (v35 == v34)
        {
        }

        else
        {
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v24;
          *(v37 + 24) = v34;
          aBlock[4] = sub_100309940;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008BDBC0;
          v38 = _Block_copy(aBlock);
          v39 = v24;

          [v36 animateWithDuration:4 delay:v38 options:0 animations:0.15 completion:0.0];

          _Block_release(v38);
        }

        return;
      }
    }

    else
    {
    }
  }

  v33 = v43;
}

void sub_100306964(void *a1)
{
  v3 = qword_10097FCC0;
  v4 = *&v1[qword_10097FCC0];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    v6 = [v5 viewIfLoaded];
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController:0];
    v7 = *&v1[v3];
  }

  else
  {
    v7 = 0;
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    [v8 willMoveToParentViewController:v1];
    [v1 addChildViewController:v8];
    if ([v1 isViewLoaded])
    {
      sub_1003009E4();
    }

    [v8 didMoveToParentViewController:v1];
  }
}

id sub_100306ABC(void *a1, id a2, SEL *a3, SEL *a4)
{
  result = [a2 *a3];
  if (result)
  {
    v8 = result;
    [a1 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a2 *a4];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [a1 frame];

    return [a1 setFrame:{v15, v17}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100306BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 136);
  if (v12(ObjectType, a2) != 4 && v12(ObjectType, a2) != 6)
  {
    return 0;
  }

  (*(a2 + 112))(ObjectType, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_10097DBD0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_1004EE154(v28, 5);
  v15 = v14;
  v16 = swift_getObjectType();
  if (!v13 || v16 == v13)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = [v27 traitCollection];
  v18 = UITraitCollection.isRegularPad.getter();
  v26 = type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  v19 = *(v15 + 160);
  v24 = v18;
  v18 = v19(v13, v15);

  v20 = v18 == 6;
  LOBYTE(v18) = v24;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = 6;
LABEL_16:
  if ((v18 & 1) == 0)
  {
    v21 = 5;
  }

  LODWORD(v25) = v21;
  (*(a2 + 216))(v29, ObjectType, a2);
  (*(v15 + 224))(v29, v13, v15);
  (*(v15 + 296))(v28, v25, v10, *&v27[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph], v13, v15);
  if (swift_dynamicCastClass())
  {
    (*(v15 + 96))(1, v13, v15);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

void sub_100306F7C()
{
  v1 = v0;
  v2 = qword_10097FCF8;
  v3 = *&v0[qword_10097FCF8];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(type metadata accessor for FooterLockupView()) init];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10021C098(sub_100309B34, v8);

    v9 = *&v1[v2];
    *&v1[v2] = v7;
    v10 = v7;

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addSubview:v13];

      type metadata accessor for ArticleFooterViewScrollObserver();
      v14 = swift_allocObject();
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = xmmword_1007C7310;
      *(v14 + 64) = 0x4028000000000000;
      *(v14 + 16) = v13;
      *(v14 + 24) = v6;
      *(v14 + 72) = 0;
      v15 = v13;
      v20 = v6;
      sub_1001FA78C(0);

      v16 = qword_10097FD00;
      if (*&v1[qword_10097FD00])
      {
        sub_10030A0F8(&qword_1009803D8, type metadata accessor for ArticleFooterViewScrollObserver);
      }

      CompoundScrollObserver.removeChild(_:)();

      *&v1[v16] = v14;
      swift_retain_n();

      sub_10030A0F8(&qword_1009803D8, type metadata accessor for ArticleFooterViewScrollObserver);
      CompoundScrollObserver.addChild(_:)();

      v17 = *&v1[v16];
      if (v17)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v17 + 32);
        *(v17 + 32) = sub_100309B64;
        *(v17 + 40) = v18;

        sub_10001F63C(v19);

        if (*&v1[v16])
        {

          sub_1001FA78C(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}