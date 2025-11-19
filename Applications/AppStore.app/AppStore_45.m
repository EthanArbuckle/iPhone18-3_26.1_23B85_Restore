void sub_10050334C()
{
  v1 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  v2 = enum case for BadgeLeadingValue.infer(_:);
  v3 = type metadata accessor for BadgeLeadingValue();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = (v0 + OBJC_IVAR____TtC8AppStore9BadgeView_caption);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_captionView) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore9BadgeView_heading);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_alignment) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable) = 1;
  v7 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  v8 = enum case for BadgeCaptionCappingType.none(_:);
  v9 = type metadata accessor for BadgeCaptionCappingType();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_requiresRemainingWidth) = 0;
  v10 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  v11 = enum case for BadgeValueViewAlignment.baseline(_:);
  v12 = type metadata accessor for BadgeValueViewAlignment();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  v14 = enum case for BadgeViewSpacing.standard(_:);
  v15 = type metadata accessor for BadgeViewSpacing();
  (*(*(v15 - 8) + 104))(v0 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  v17 = sub_10002849C(&unk_10097B3D0);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  v19 = enum case for BadgeType.custom(_:);
  v20 = type metadata accessor for BadgeType();
  (*(*(v20 - 8) + 104))(v0 + v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_artworkView) = 0;
  v21 = v0 + OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount) = 0;
  v22 = OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer;
  *(v0 + v22) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v23) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel;
  *(v0 + v25) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005036A4()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10002849C(&unk_10097B3D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  swift_beginAccess();
  sub_100031660(v0 + v11, v6, &qword_10097B3F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_10097B3F0;
    v13 = v6;
    return sub_10002B894(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  ObjectGraphPair.objectGraph.getter();
  v14 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100972A00;
    v13 = v3;
    return sub_10002B894(v13, v12);
  }

  ObjectGraphPair.value.getter();
  v17 = ObjectGraphPair.objectGraph.getter();
  sub_1005F9AF4(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

uint64_t sub_1005039D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100503A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for ComponentSeparator.Position();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for ComponentSeparator.Position.top(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for ComponentSeparator.Position.top(_:), v5, v7);
  v12 = ComponentSeparator.Position.rawValue.getter();
  v14 = v13;
  v36 = v6;
  v33 = *(v6 + 8);
  v33(v9, v5);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  v34 = a1;
  v35 = a2;
  LOBYTE(v12) = String.hasPrefixCaseInsensitive(_:)(v15);

  if (v12 & 1) != 0 || (v10 = enum case for ComponentSeparator.Position.bottom(_:), v11(v9, enum case for ComponentSeparator.Position.bottom(_:), v5), v16 = ComponentSeparator.Position.rawValue.getter(), v18 = v17, v33(v9, v5), v19._countAndFlagsBits = v16, v19._object = v18, LOBYTE(v16) = String.hasPrefixCaseInsensitive(_:)(v19), , (v16) || (v10 = enum case for ComponentSeparator.Position.leading(_:), v11(v9, enum case for ComponentSeparator.Position.leading(_:), v5), v20 = ComponentSeparator.Position.rawValue.getter(), v22 = v21, v33(v9, v5), v23._countAndFlagsBits = v20, v23._object = v22, LOBYTE(v20) = String.hasPrefixCaseInsensitive(_:)(v23), , (v20) || (v10 = enum case for ComponentSeparator.Position.trailing(_:), v11(v9, enum case for ComponentSeparator.Position.trailing(_:), v5), v24 = ComponentSeparator.Position.rawValue.getter(), v26 = v25, v33(v9, v5), v27._countAndFlagsBits = v24, v27._object = v26, v28 = String.hasPrefixCaseInsensitive(_:)(v27), , v28))
  {
    v29 = v37;
    v11(v37, v10, v5);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v37;
  }

  return (*(v36 + 56))(v29, v30, 1, v5);
}

char *sub_100503CEC(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ComponentSeparator.Position();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v13 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_100503F40()
{
  v1 = v0;
  v2 = type metadata accessor for ComponentSeparator();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = ComponentSeparator.color.getter();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_1005040C0(double a1)
{
  v25 = type metadata accessor for ComponentSeparator.Position();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentSeparator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  ComponentSeparator.position.getter();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    ComponentSeparator.height(in:)();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      ComponentSeparator.height(in:)();
      a1 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return a1;
}

id sub_100504594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView()
{
  result = qword_100989650;
  if (!qword_100989650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005046AC()
{
  result = type metadata accessor for ComponentSeparator();
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

void sub_10050474C()
{
  v1 = type metadata accessor for ComponentSeparator.Position();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v2);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v5 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor;
  *(v0 + v6) = [objc_opt_self() separatorColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005048BC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for ComponentSeparator.Position();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PageGrid.Direction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v14 = v29;
  v15 = UITraitCollection.isSizeClassRegular.getter();

  if (v15 & 1) != 0 && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v16 = v28, v17 = UITraitCollection.prefersAccessibilityLayouts.getter(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , PageGrid.direction.getter(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = static PageGrid.Direction.== infix(_:_:)(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = type metadata accessor for ComponentSeparator();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

uint64_t sub_100504C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100504CB0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork.Crop();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseLockup();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v68 = v2;
    v69 = v8;
    v73 = v7;
    v17 = *(v2 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
    v18 = *(v17 + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
    v70 = a1;
    if (v18)
    {
      v19 = v18;

      sub_1001BCDCC(v16, v18, a2);
    }

    else
    {
      v38 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;

      InAppPurchaseLockup.parent.getter();
      v39 = Lockup.icon.getter();

      if (v39)
      {
        v71 = a2;
        v40 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
        swift_beginAccess();
        (*(v12 + 16))(v14, v17 + v40, v11);
        SmallLockupLayout.Metrics.artworkSize.getter();
        (*(v12 + 8))(v14, v11);
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        v65 = *(v69 + 8);
        v66 = v69 + 8;
        v65(v10, v73);
        v67 = Artwork.config(_:mode:prefersLayeredImage:)();
        v64 = v38;
        v41 = *(v17 + v38);
        if (v41)
        {
          v42 = (v41 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
        }

        else
        {
          v42 = (v17 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
        }

        v43 = *v42;
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v43 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();

        v44 = *(v17 + v64);
        if (v44)
        {
          v45 = (v44 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
        }

        else
        {
          v45 = (v17 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
        }

        v46 = *v45;
        Artwork.crop.getter();
        v47 = Artwork.Crop.preferredContentMode.getter();
        v65(v10, v73);
        [v46 setContentMode:v47];

        v48 = *(v17 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
        type metadata accessor for ArtworkView();
        sub_1005080FC(&qword_100970E80, &type metadata accessor for ArtworkView);
        v49 = v48;
        a2 = v71;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }

    InAppPurchaseLockup.parent.getter();
    v50 = Lockup.icon.getter();

    if (v50)
    {
      v71 = a2;
      v51 = *(v68 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
      v52 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v12 + 16))(v14, v51 + v52, v11);
      SmallLockupLayout.Metrics.artworkSize.getter();
      (*(v12 + 8))(v14, v11);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v53 = v73;
      v69 = *(v69 + 8);
      (v69)(v10, v73);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v54 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
      v55 = *(v51 + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
      if (v55)
      {
        v56 = (v55 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      }

      else
      {
        v56 = (v51 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      }

      v57 = *v56;
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v57 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v58 = *(v51 + v54);
      if (v58)
      {
        v59 = (v58 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      }

      else
      {
        v59 = (v51 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      }

      v60 = *v59;
      Artwork.crop.getter();
      v61 = Artwork.Crop.preferredContentMode.getter();
      (v69)(v10, v53);
      [v60 setContentMode:v61];

      v62 = *(v51 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      type metadata accessor for ArtworkView();
      sub_1005080FC(&qword_100970E80, &type metadata accessor for ArtworkView);
      v63 = v62;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  else if (Lockup.icon.getter())
  {
    v71 = a2;
    v20 = v8;
    v21 = *(v2 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
    v22 = v20;
    v23 = v7;
    v24 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, v21 + v24, v11);
    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v12 + 8))(v14, v11);
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    v25 = *(v22 + 8);
    v73 = v23;
    v70 = v25;
    v25(v10, v23);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v26 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
    v27 = *(v21 + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    }

    else
    {
      v28 = (v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    }

    v29 = *v28;
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v29 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v30 = *(v21 + v26);
    if (v30)
    {
      v31 = (v30 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    }

    else
    {
      v31 = (v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    }

    v32 = *v31;
    Artwork.crop.getter();
    v33 = Artwork.Crop.preferredContentMode.getter();
    v70(v10, v73);
    [v32 setContentMode:v33];

    v34 = *(v21 + v26);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    }

    else
    {
      v35 = (v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    }

    v36 = *v35;
    type metadata accessor for ArtworkView();
    sub_1005080FC(&qword_100970E80, &type metadata accessor for ArtworkView);
    v37 = v36;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

uint64_t sub_1005056F8()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D25C0);
  sub_1000056A8(v0, qword_1009D25C0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10050585C(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v46 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0860);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = type metadata accessor for StaticDimension();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v6, qword_1009D0878);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v54);
  v44(v17, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v54);
  v21 = v44;
  v44(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v54);
  v21(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v54);
  v21(v28, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_1000056A8(v45, qword_1009D08A8);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v54);
  v21(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v29, qword_1009D0890);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v54);
  v37 = v44;
  v44(v36, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v54);
  v37(v39, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_1005061D8()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock + 8);
  v4 = (*(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_10000827C(v2);
  sub_10000827C(v2);
  sub_10001F63C(v5);
  sub_10070B000();
  sub_10001F63C(v2);
  v6 = *v1;
  v7 = v1[1];
  v8 = (*(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  v9 = *v8;
  *v8 = *v1;
  v8[1] = v7;
  sub_10000827C(v6);
  sub_10000827C(v6);
  sub_10001F63C(v9);
  sub_10070B000();

  return sub_10001F63C(v6);
}

char *sub_1005062D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = &v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter] = 0;
  type metadata accessor for SmallLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] = v16;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView] = v17;
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52.receiver = v18;
  v52.super_class = ObjectType;
  v24 = v18;
  objc_msgSendSuper2(&v52, "setLayoutMargins:", UIEdgeInsetsZero.top, left, bottom, right);
  v25 = *&v18[v19];
  v51.receiver = v24;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutMargins");
  [v25 setLayoutMargins:?];
  v26 = *&v18[v20];
  v50.receiver = v24;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutMargins");
  [v26 setLayoutMargins:?];
  [v24 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [*&v18[v19] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(*&v18[v19] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView) setHidden:1];
  v27 = *&v18[v19];
  sub_100709C80(1);

  [v24 addSubview:*&v18[v20]];
  v49 = v19;
  [v24 addSubview:*&v18[v19]];
  [*&v18[v20] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = v24;
  sub_1005067F8();
  v28 = qword_10096DDA0;
  v29 = *(*&v18[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for FontUseCase();
  v31 = sub_1000056A8(v30, qword_1009D0878);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v47 = v31;
  v33(v13);
  v34 = *(v32 + 56);
  v34(v13, 0, 1, v30);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v35 = *(*&v18[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v36 = qword_10096DDA8;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v30, qword_1009D0890);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v39 = v49;
  v40 = *(*&v18[v49] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  (v33)(v13, v47, v30);
  v34(v13, 0, 1, v30);
  v41 = v40;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v42 = *(*&v18[v39] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  v43 = v42;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v44 = v48;

  return v44;
}

id sub_1005067F8()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = static UIContentSizeCategory.>= infix(_:_:)();

  v10 = *&v1[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  if (v9)
  {
    if (qword_10096EB90 != -1)
    {
      swift_once();
    }

    v11 = sub_1000056A8(v2, qword_1009D3040);
    v24 = v3[2];
    v24(v6, v11, v2);
    v12 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v13 = v3[3];
    v13(&v10[v12], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v14 = v3[1];
    v14(v6, v2);
    [v10 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v15 = *&v1[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v24(v6, v11, v2);
    v16 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v13(&v15[v16], v6, v2);
    swift_endAccess();
    [v15 setNeedsLayout];
    v14(v6, v2);
    return [v15 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
  }

  else
  {
    if (qword_10096EB88 != -1)
    {
      swift_once();
    }

    v18 = sub_1000056A8(v2, qword_1009D3028);
    v24 = v3[2];
    v24(v6, v18, v2);
    v19 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v20 = v3[3];
    v20(&v10[v19], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v21 = v3[1];
    v21(v6, v2);
    [v10 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
    v22 = *&v1[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v24(v6, v18, v2);
    v23 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v20(&v22[v23], v6, v2);
    swift_endAccess();
    [v22 setNeedsLayout];
    v21(v6, v2);
    return [v22 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
  }
}

void sub_100506E98(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = v2;
    LOBYTE(v4) = a2;
    v5 = *(v2 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = [v5 subviews];
      sub_100005744(0, &qword_100972EB0);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v32 = v4;
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v4 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for OfferButton();
          if (swift_dynamicCastClass())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v9;
          if (v4 == i)
          {
            v12 = aBlock;
            LOBYTE(v4) = v32;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_20:

      sub_10002849C(&qword_100973210);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007B0B70;
      v14 = *(v3 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
      *(v13 + 32) = v14;
      if (v4)
      {
        v15 = v14;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = v15;
          goto LABEL_24;
        }

LABEL_52:
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
        v17 = v16;
        [v16 setHidden:0];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        v37 = sub_100140F44;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100007A08;
        v36 = &unk_1008C6A28;
        v20 = _Block_copy(&aBlock);

        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        v37 = sub_100140F4C;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100504C5C;
        v36 = &unk_1008C6A78;
        v22 = _Block_copy(&aBlock);

        [v18 animateWithDuration:4 delay:v20 options:v22 animations:0.33 completion:0.0];
        _Block_release(v22);
        _Block_release(v20);
        return;
      }

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *(v12 + 2);
      }

      v24 = v14;
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v12 + 2))
            {
              goto LABEL_50;
            }

            v26 = *&v12[v25 + 4];
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          [v26 setAlpha:0.0];
          [v27 setHidden:1];

          ++v25;
          if (v28 == v23)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_38:

      v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        v12 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v30 = *(v13 + 8 * v12 + 32);
          }

          v31 = v30;
          v12 = (v12 + 1);
          [v30 setAlpha:1.0];
          [v31 setHidden:0];
        }

        while (v29 != v12);
      }
    }
  }
}

uint64_t sub_100507398()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
  [v1 setHidden:0];
  v20 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
  [v2 setHidden:0];
  v3 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v2;
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

      [v7 setHidden:0];
      [v8 setAlpha:1.0];

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

  v10 = [v2 subviews];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setHidden:0];
      [v15 setAlpha:1.0];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  [*&v21[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setHidden:0];
  [*&v21[v17] setUserInteractionEnabled:1];
  v18 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v20 + v18) = 0;
}

void sub_1005076FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaOverlayStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_1009896A8);
  __chkstk_darwin(v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v12 - 8);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v63 = a1;
  v23 = *(*(a1 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v24 = v5[13];
  v61 = enum case for MediaOverlayStyle.dark(_:);
  v60 = v24;
  v58 = v5 + 13;
  v24(&v52 - v21, v20);
  v59 = v5[7];
  v57 = v5 + 7;
  v59(v22, 0, 1, v4);
  v62 = v7;
  v25 = *(v7 + 48);
  v64 = a2;
  sub_10050808C(a2, v11);
  sub_10050808C(v22, &v11[v25]);
  v26 = v5[6];
  v27 = v26(v11, 1, v4);
  v56 = v5;
  if (v27 != 1)
  {
    sub_10050808C(v11, v18);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v32 = v5[4];
      v54 = v26;
      v33 = v55;
      v32(v55, &v11[v25], v4);
      v53 = sub_1005080FC(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle);
      v34 = v23;
      v35 = v23;
      LODWORD(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v5[1];
      v37 = v33;
      v26 = v54;
      v36(v37, v4);
      sub_10002B894(v22, &qword_100974528);
      v36(v18, v4);
      v23 = v34;
      sub_10002B894(v11, &qword_100974528);
      v29 = v65;
      if (v53)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_100005744(0, &qword_100970180);
      v31 = static UIColor.appTint.getter();
      goto LABEL_10;
    }

    v30 = v23;
    sub_10002B894(v22, &qword_100974528);
    (v5[1])(v18, v4);
LABEL_6:
    sub_10002B894(v11, &qword_1009896A8);
    v29 = v65;
    goto LABEL_7;
  }

  v28 = v23;
  sub_10002B894(v22, &qword_100974528);
  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10002B894(v11, &qword_100974528);
  v29 = v65;
LABEL_9:
  v31 = [objc_opt_self() whiteColor];
LABEL_10:
  v38 = v31;
  [v23 setTintColor:v31];

  v39 = *(*(v63 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v60(v29, v61, v4);
  v59(v29, 0, 1, v4);
  v40 = *(v62 + 48);
  v41 = v67;
  sub_10050808C(v64, v67);
  sub_10050808C(v29, v41 + v40);
  if (v26(v41, 1, v4) == 1)
  {
    v42 = v39;
    sub_10002B894(v29, &qword_100974528);
    if (v26((v41 + v40), 1, v4) == 1)
    {
      sub_10002B894(v41, &qword_100974528);
LABEL_18:
      v44 = [objc_opt_self() whiteColor];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_10050808C(v41, v66);
  if (v26((v41 + v40), 1, v4) == 1)
  {
    v43 = v39;
    sub_10002B894(v29, &qword_100974528);
    (v56[1])(v66, v4);
LABEL_15:
    sub_10002B894(v41, &qword_1009896A8);
    goto LABEL_16;
  }

  v45 = v66;
  v46 = v55;
  v47 = v56;
  (v56[4])(v55, v41 + v40, v4);
  sub_1005080FC(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle);
  v48 = v39;
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = v47[1];
  v50(v46, v4);
  sub_10002B894(v29, &qword_100974528);
  v50(v45, v4);
  sub_10002B894(v41, &qword_100974528);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_100005744(0, &qword_100970180);
  v44 = static UIColor.appTint.getter();
LABEL_19:
  v51 = v44;
  [v39 setTintColor:v44];
}

void sub_100507EBC(uint64_t a1, objc_class *a2)
{
  v4 = *v2;
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = sub_1000056A8(v5, qword_1009D3798);
  v7.receiver = v4;
  v7.super_class = a2;
  objc_msgSendSuper2(&v7, "layoutMargins");
  sub_100508144(v6, v4);
}

uint64_t sub_100507FD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10050808C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100974528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005080FC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100508144(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  (*(v12 + 16))(v15, a1, v11);
  v17 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v19 & 1) == 0 && ((v17 | v18) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v20 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v20 = qword_100991028;
    }

    v21 = sub_1000056A8(v4, v20);
    (*(v5 + 16))(v7, v21, v4);
    (*(v5 + 32))(v10, v7, v4);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v5 + 8))(v10, v4);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v23 = v22;

  (*(v12 + 8))(v15, v11);
  return v23;
}

void sub_10050846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  sub_100059168(a1, a3, a4, a5, a6);
  InAppPurchaseLockup.parent.getter();
  v8 = Lockup.title.getter();
  v10 = v9;

  if (v10)
  {
    v11._countAndFlagsBits = 0x465F4E4F5F444441;
    v11._object = 0xEE005050415F524FLL;
    v12._object = 0x8000000100800630;
    v12._countAndFlagsBits = 0xD000000000000031;
    localizedString(_:comment:)(v11, v12);
    sub_10002849C(&unk_10097E350);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007B10D0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000BFD1C();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;

    String.init(format:_:)();

    v14 = objc_allocWithZone(NSMutableAttributedString);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithString:v15];

    v17 = objc_allocWithZone(NSString);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithString:v18];

    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 rangeOfString:v20 options:4];
    v23 = v22;

    v27 = [v7 tintColor];
    sub_10002849C(&qword_100973268);
    v24 = Optional._bridgeToObjectiveC()();

    [v16 addAttribute:NSForegroundColorAttributeName value:v24 range:{v21, v23}];
    swift_unknownObjectRelease();
    v25 = *(*&v7[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
    if (v25)
    {
      v26 = v25;
      [v26 setAttributedText:v16];
    }
  }
}

double sub_100508740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Separator();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10037D488(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  sub_1000586D8(a3, v10);
  type metadata accessor for InAppPurchaseLockupView();
  v16 = sub_1004A1F00(a3);
  if (v15)
  {
    v17 = v16;
    Separator.verticalOutset.getter();
    sub_10002A400(v22, v22[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v20 + 8))(v6, v21);
    (*(v8 + 8))(v10, v7);
    sub_100007000(v22);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v17 = v18;
    (*(v8 + 8))(v10, v7);
  }

  return v17;
}

uint64_t sub_100508A8C(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v24[1] = a1;
  v6 = type metadata accessor for Separator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Shelf.PresentationHints();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  type metadata accessor for InAppPurchaseLockupView();
  sub_1004A1F00(a4);
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10037D488(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v11 + 8))(v13, v10);
  sub_1000586D8(a4, v9);
  Separator.height(in:)();
  (*(v7 + 8))(v9, v6);
  [a4 pageMarginInsets];
  v14 = [a4 traitCollection];
  LOBYTE(v6) = UITraitCollection.isSizeClassRegular.getter();

  if ((v6 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v15 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v19 = v20;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v17 = v16;
    PageTraitEnvironment.pageColumnMargin.getter();
    v19 = v17 - (v18 + v18);
  }

  v21 = [objc_opt_self() absoluteDimension:v19];
  v22 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v22;
}

uint64_t type metadata accessor for ScrollablePillView()
{
  result = qword_100989710;
  if (!qword_100989710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100508E44()
{
  if (qword_10096ECA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009D32B8;
  qword_1009D25D8 = qword_1009D32B8;

  return v1;
}

uint64_t sub_100508EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  sub_1000CB084(a1, &v24);
  sub_10002C0AC(a2, v20);
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v6 = qword_1009D25D8;
  v22 = &type metadata for SearchLinkLayout;
  v23 = sub_1002679AC();
  v7 = swift_allocObject();
  v21 = v7;
  v8 = sub_100267A00();
  v9 = swift_allocObject();
  sub_10002C0AC(v20, v9 + 16);
  sub_1000CB084(&v24, &v18);
  if (v19)
  {
    sub_100005A38(&v18, v17);
    v10 = swift_allocObject();
    sub_100005A38(v17, v10 + 16);
    v11 = v6;
    sub_100007000(v20);
    sub_1000CC370(&v24);
    v12 = &type metadata for AutoAdjustingPlaceable;
    v13 = v8;
  }

  else
  {
    v14 = v6;
    sub_100007000(v20);
    sub_1000CC370(&v24);
    v12 = 0;
    v13 = 0;
    v10 = 0;
  }

  v7[2] = v10;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = v12;
  v7[6] = v13;
  v7[7] = v9;
  v7[10] = &type metadata for AutoAdjustingPlaceable;
  v7[11] = v8;
  v7[12] = v6;
  v7[13] = 0x4014000000000000;
  v25 = type metadata accessor for Margins();
  v26 = &protocol witness table for Margins;
  sub_1000056E0(&v24);
  Margins.init(insets:child:)();
  a3[3] = &type metadata for AutoAdjustingPlaceable;
  a3[4] = v8;
  v15 = swift_allocObject();
  *a3 = v15;
  return sub_100005A38(&v24, v15 + 16);
}

char *sub_1005090E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_100989700;
  *&v4[v20] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_100989708;
  type metadata accessor for DynamicLabel();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView();
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_10096EC88 != -1)
  {
    swift_once();
  }

  v32 = [qword_1009D32A0 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_100989700;
  v34 = qword_10096EC90;
  v35 = *&v27[qword_100989700];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_1009D32A8];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  ArtworkView.backgroundColor.setter();

  v40 = *&v27[v33];
  ArtworkView.shouldSymbolImageSelfSize.setter();

  v41 = qword_10096E708;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_1009D25D8 scale:2];
  ArtworkView.preferredSymbolConfiguration.setter();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_100989708;
  v45 = qword_10096EC78;
  v46 = *&v27[qword_100989708];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_1009D3290];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  DynamicTextAppearance.init()();
  DynamicTextAppearance.withTextStyle(_:)();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v49(v14, v51);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v49(v17, v51);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();

  [v27 addSubview:*&v27[v44]];
  sub_10025BAA4();
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v27;
}

void sub_10050971C(uint64_t a1)
{
  v2 = qword_100989700;
  *(a1 + v2) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_100989708;
  type metadata accessor for DynamicLabel();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005097DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_100989700);
  v5 = ArtworkView.image.getter();
  if (v5)
  {

    v6 = type metadata accessor for ArtworkView();
    v7 = sub_10050A2A0(&qword_100989780, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v8 = *(v2 + qword_100989708);
  v31[3] = type metadata accessor for DynamicLabel();
  v31[4] = &protocol witness table for UILabel;
  v31[0] = v8;
  v9 = v8;
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  sub_1000CB084(v32, &v28);
  sub_10002C0AC(v31, v24);
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v10 = qword_1009D25D8;
  v26 = &type metadata for SearchLinkLayout;
  v27 = sub_1002679AC();
  v11 = swift_allocObject();
  v25 = v11;
  v12 = sub_100267A00();
  v13 = swift_allocObject();
  sub_10002C0AC(v24, v13 + 16);
  sub_1000CB084(&v28, &v22);
  if (v23)
  {
    sub_100005A38(&v22, v21);
    v14 = swift_allocObject();
    sub_100005A38(v21, v14 + 16);
    v15 = v10;
    sub_100007000(v24);
    sub_1000CC370(&v28);
    v16 = &type metadata for AutoAdjustingPlaceable;
    v17 = v12;
  }

  else
  {
    v18 = v10;
    sub_100007000(v24);
    sub_1000CC370(&v28);
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  v11[2] = v14;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = v16;
  v11[6] = v17;
  v11[7] = v13;
  v11[10] = &type metadata for AutoAdjustingPlaceable;
  v11[11] = v12;
  v11[12] = v10;
  v11[13] = 0x4014000000000000;
  v29 = type metadata accessor for Margins();
  v30 = &protocol witness table for Margins;
  sub_1000056E0(&v28);
  Margins.init(insets:child:)();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v12;
  v19 = swift_allocObject();
  *a1 = v19;
  sub_100005A38(&v28, v19 + 16);
  sub_100007000(v31);
  return sub_1000CC370(v32);
}

id sub_100509AC0()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_100509BA0()
{
  v1 = *(v0 + qword_100989708);
}

id sub_100509BE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100509C18(uint64_t a1)
{
  v2 = *(a1 + qword_100989708);
}

id sub_100509CA4()
{
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_1009D25D8 scale:2];

  return v0;
}

uint64_t sub_100509D2C()
{
  v0 = type metadata accessor for DynamicTextAppearance();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  DynamicTextAppearance.init()();
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  DynamicTextAppearance.withTextStyle(_:)();
  v10 = *(v1 + 8);
  v10(v3, v0);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v10(v6, v0);
  DynamicTextAppearance.withLineBreakMode(_:)();
  return (v10)(v9, v0);
}

double sub_100509EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EB48C(a1, a3, WitnessTable);
}

void sub_100509F2C(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1003E9668(a1, a2, a3, WitnessTable);
}

void sub_100509F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1003EBB84(a1, a3, WitnessTable);
}

uint64_t sub_100509FFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003E99E0(a1, WitnessTable, a2);
}

uint64_t sub_10050A078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EB4BC(a1, a2, a4, WitnessTable);
}

uint64_t sub_10050A12C(void *a1)
{
  a1[1] = sub_10050A2A0(&qword_100989768, type metadata accessor for ScrollablePillView);
  a1[2] = sub_10050A2A0(&qword_100989770, type metadata accessor for ScrollablePillView);
  result = sub_10050A2A0(&qword_100989778, type metadata accessor for ScrollablePillView);
  a1[3] = result;
  return result;
}

id sub_10050A1D8(void *a1)
{
  v2 = [a1 layer];
  if (qword_10096EC88 != -1)
  {
    swift_once();
  }

  v3 = [qword_1009D32A0 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

uint64_t sub_10050A2A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050A398()
{
  v0 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  sub_100005644(v8, qword_1009D25F0);
  v26[1] = sub_1000056A8(v8, qword_1009D25F0);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_10096E710 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_100989790);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = type metadata accessor for StaticDimension();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_10096E718 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009897A8);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v62);
  v27(v18, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16(v7, v4);
  if (qword_10096E720 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v9, qword_1009897C0);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v59);
  v27(v20, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16(v7, v4);
  if (qword_10096E728 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v9, qword_1009897D8);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v56);
  v27(v22, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16(v7, v4);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v14, qword_1009D2430);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_1000056E0(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  AspectRatio.init(_:_:)();
  AspectRatio.init(_:_:)();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return InAppPurchaseSearchResultLayout.Metrics.init(offerButtonSize:offerButtonMargin:inAppPurchaseTextSpace:titleTextSpace:subtitleTextSpace:descriptionTextSpace:detailsBottomMargin:accessibilityDetailsBottomMargin:preferredMainArtworkWidth:regularLockupAreaAspectRatio:compactLockupAreaAspectRatio:regularBodySideEdgeInsetPercentage:regularBodyHorizontalComponentSpacingPercentage:compactBodySideEdgeInsetPercentage:compactBodyHorizontalComponentSpacingPercentage:inAppIconBottomMargin:bodyVerticalPadding:)();
}

uint64_t sub_10050AA90()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_1009897F0);
  sub_1000056A8(v0, qword_1009897F0);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_10050AB2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009D25F0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_100005744(0, &qword_100970180);
  *&v5[v23] = static UIColor.componentBackgroundStandout.getter();
  if (qword_10096E710 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v25 = sub_1000056A8(v24, qword_100989790);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = type metadata accessor for DynamicTypeLabel();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E718 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v24, qword_1009897A8);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E720 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v24, qword_1009897C0);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_1000F5284(0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_1002EB7C0(v12, 1);
  if (qword_10096E728 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v24, qword_1009897D8);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = static UIColor.secondaryText.getter();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_10096E738;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v64, qword_1009897F0);
  v74 = v45;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v65 = *&v45[v56];
  v66 = static UIColor.secondaryText.getter();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_10050B614()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseSearchResultLayout();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  LayoutMarginsAware<>.layoutFrame.getter();
  v13 = &v12[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v12[v14], v63);
    sub_10002A400(v63, v64);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v16 = v15;
    v18 = v17;
    sub_100007000(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  v19 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView();
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  InAppPurchaseSearchResultLayout.init(metrics:inAppPurchaseText:titleText:subtitleText:offerButton:inAppPurchaseIcon:inAppPurchaseDescription:inAppPurchaseBackgroundView:)();
  v35 = v42;
  InAppPurchaseSearchResultLayout.placeChildren(relativeTo:in:)();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_10050BAB8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E738 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_1009897F0);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

id sub_10050BC58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell()
{
  result = qword_100989840;
  if (!qword_100989840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050BDD0()
{
  result = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
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

double sub_10050BEC8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LabelPlaceholderCompatibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallGameCenterPlayer();
  sub_10050C4E4(&qword_10097B298, &type metadata accessor for SmallGameCenterPlayer);
  ItemLayoutContext.typedModel<A>(as:)();
  v8 = v41[0];
  if (!v41[0])
  {
    return 0.0;
  }

  v32 = v5;
  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  v35 = v4;
  v36 = v3;
  v37 = v1;
  v38 = v0;
  v34 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v33 = LayoutViewPlaceholder.init(representing:)();

  GameCenterPlayer.alias.getter();
  v9 = sub_1000367E8();
  v39 = v8;
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  sub_1000056A8(v10, qword_1009D10A0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v11 = v41[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v12 = type metadata accessor for Feature();
  v42 = v12;
  v31 = sub_10050C4E4(&qword_100972E50, &type metadata accessor for Feature);
  v43 = v31;
  v13 = sub_1000056E0(v41);
  v28[1] = v9;
  v14 = *(v12 - 8);
  v15 = *(v14 + 104);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v28[2] = v14 + 104;
  v29 = v15;
  v15(v13);
  isFeatureEnabled(_:)();
  sub_100007000(v41);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v16 = *(v32 + 8);
  v17 = v35;
  v16(v7, v35);
  v32 = GameCenterPlayer.displayName.getter();
  v28[0] = v18;

  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v10, qword_1009D10B8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = v41[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v42 = v12;
  v43 = v31;
  v20 = sub_1000056E0(v41);
  v29(v20, v30, v12);
  isFeatureEnabled(_:)();
  sub_100007000(v41);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v16(v7, v17);
  sub_1001A0C90(&xmmword_1009D1DD0, v41);
  v45 = v34;
  v46 = &protocol witness table for LayoutViewPlaceholder;
  v44 = v33;
  sub_10002C0AC(v50, &v48);
  sub_10002C0AC(v49, &v47);
  swift_getKeyPath();
  v21 = v36;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v23 = v22;
  (*(v37 + 8))(v21, v38);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v24 = v40;
  swift_getObjectType();
  sub_1001A1A3C(v24, v41, v23);
  v26 = v25;

  swift_unknownObjectRelease();
  sub_10025AB54(v41);
  sub_100007000(v49);
  sub_100007000(v50);
  return v26;
}

uint64_t sub_10050C4E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10050C5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = type metadata accessor for SystemImage();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoundedButtonType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = RoundedButton.action.getter();
  type metadata accessor for Action();
  type metadata accessor for BaseObjectGraph();
  sub_10050CC24(&qword_100992FB0, &type metadata accessor for Action);
  ComponentModel.pairedWith<A>(objectGraph:)();

  v16 = sub_10002849C(&unk_10097B3D0);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_100079964(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_hasDivider] = RoundedButton.hasDivider.getter() & 1;
  sub_100747CFC();
  RoundedButton.type.getter();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = static SystemImage.load(_:with:)();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  sub_1000056A8(v25, qword_1009D1610);
  v26 = [v19 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  RoundedButton.title.getter();
  v31 = String._bridgeToObjectiveC()();

  [v29 setTitle:v31 forState:0];

  v32 = RoundedButton.textColor.getter();
  if (!v32)
  {
    sub_100005744(0, &qword_100970180);
    v32 = static UIColor.defaultButtonTitleColor.getter();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = RoundedButton.buttonColor.getter();
  if (!v34)
  {
    sub_100005744(0, &qword_100970180);
    v34 = static UIColor.defaultButtonBackgroundColor.getter();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_10050CC24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050CC6C()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style();
  sub_100005644(v3, qword_1009D2640);
  v4 = sub_1000056A8(v3, qword_1009D2640);
  if (qword_10096E4E8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D1EB0);
  sub_10048EEB4(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_10048EF74(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_10050CDB8()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_1009898A0 = result;
  return result;
}

char *sub_10050CDF0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(v28, &unk_1009711D0);
  sub_10002B894(v29, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_10050D148()
{
  v1 = type metadata accessor for VerticalStack();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100072FE8(&v0[v5], &v23);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v6;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_10050E55C();
  *&v17 = v7;
  type metadata accessor for ShelfFooterViewLayout();
  v8 = swift_allocObject();
  v9 = v24[0];
  v8[1] = v23;
  v8[2] = v9;
  *(v8 + 41) = *(v24 + 9);
  sub_100005A38(&v20, (v8 + 4));
  sub_100005A38(&v17, v8 + 104);
  v10 = v6;
  v11 = v7;
  v12 = [v0 traitCollection];
  sub_100072A08();
  dispatch thunk of Placeable.measure(toFit:with:)();
  v14 = v13;

  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t sub_10050D398()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100072FE8(&v0[v7], &v23);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v8;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_10050E55C();
  *&v17 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 41) = *(v24 + 9);
  sub_100005A38(&v20, (v10 + 4));
  sub_100005A38(&v17, v10 + 104);
  v12 = v8;
  v13 = v9;
  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = [v0 traitCollection];
  sub_100072A08();
  dispatch thunk of Placeable.place(at:with:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10050D6F4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v5[3] = sub_100005744(0, &unk_100984370);
    v5[0] = v3;
    sub_1002BB3F4(v2);
    v4 = v3;
    v2(v5);
    sub_10001F63C(v2);
    return sub_10002B894(v5, &unk_1009711D0);
  }

  return result;
}

double sub_10050D898(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v103 = a3;
  v104 = 0x6C6F686563616C50;
  v92 = type metadata accessor for VerticalStack();
  v102 = *(v92 - 8);
  __chkstk_darwin(v92);
  v101 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Resize.Rule();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = v86 - v10;
  __chkstk_darwin(v11);
  v91 = v86 - v12;
  __chkstk_darwin(v13);
  v90 = v86 - v14;
  v15 = type metadata accessor for TextAppearance();
  __chkstk_darwin(v15 - 8);
  v86[1] = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Resize();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v89);
  v88 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097BA20);
  __chkstk_darwin(v19 - 8);
  v21 = (v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = v86 - v23;
  __chkstk_darwin(v25);
  v27 = v86 - v26;
  __chkstk_darwin(v28);
  v30 = v86 - v29;
  v86[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v86[0]);
  v87 = v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v105 = v86 - v33;
  if (!a2)
  {
    goto LABEL_6;
  }

  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    v104 = a1;
    v93 = a2;
  }

  else
  {
LABEL_6:
    v93 = 0xEB00000000726564;
  }

  sub_10050E488(a4, v30);
  v35 = type metadata accessor for ShelfFooterStyle();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v30, 1, v35) == 1)
  {
    v38 = 0;
    v39 = 24.0;
  }

  else
  {
    sub_10050E488(v30, v27);
    v40 = (*(v36 + 88))(v27, v35);
    v41 = v27;
    v42 = a4;
    v43 = v24;
    v44 = v40;
    v45 = enum case for ShelfFooterStyle.games(_:);
    (*(v36 + 8))(v41, v35);
    v46 = v44 == v45;
    v24 = v43;
    a4 = v42;
    v38 = v46;
    v39 = 24.0;
    if (v46)
    {
      v39 = 16.0;
    }
  }

  v114[3] = &type metadata for Double;
  v114[4] = &protocol witness table for Double;
  *v114 = v39;
  v115 = v38;
  sub_10002B894(v30, &qword_10097BA20);
  sub_10050E488(a4, v24);
  v47 = v37(v24, 1, v35);
  v48 = v105;
  if (v47 != 1)
  {
    sub_10050E488(v24, v21);
    if ((*(v36 + 88))(v21, v35) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v36 + 96))(v21, v35);
      v49 = *v21;
      if (qword_10096E4F0 != -1)
      {
        swift_once();
      }

      v50 = sub_1000056A8(v86[0], qword_1009D1EC8);
      sub_10048EEB4(v50, v48);
      v51 = v103;
      if ([v103 horizontalSizeClass] == 1 && (v52 = objc_msgSend(v51, "preferredContentSizeCategory"), v53 = UIContentSizeCategory.isAccessibilityCategory.getter(), v52, (v53 & 1) != 0))
      {

        v54 = 0;
        v55 = 0;
      }

      else
      {
        [v49 size];
        v55 = v85;

        v54 = 1;
      }

      goto LABEL_25;
    }

    (*(v36 + 8))(v21, v35);
  }

  if (qword_10096E4E8 != -1)
  {
    swift_once();
  }

  v56 = sub_1000056A8(v86[0], qword_1009D1EB0);
  sub_10048EEB4(v56, v48);
  v54 = 0;
  v55 = 0;
  v51 = v103;
LABEL_25:
  v57 = v98;
  sub_10002B894(v24, &qword_10097BA20);
  if (qword_10096E4F8 != -1)
  {
    swift_once();
  }

  v58 = qword_100986FD0;
  *(qword_100986FD0 + OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon) = v54;
  *&v58[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = v55;
  v59 = String._bridgeToObjectiveC()();
  [v58 setTitle:v59 forState:0];

  v60 = v87;
  sub_10048EEB4(v48, v87);
  v61 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10050E4F8(v60, &v58[v61]);
  swift_endAccess();
  sub_10048DAD0();
  sub_10048EF18(v60);
  v62 = [v51 preferredContentSizeCategory];
  UIView.traitOverrides.getter();
  UIMutableTraits.preferredContentSizeCategory.setter();
  UIView.traitOverrides.setter();
  [v58 updateTraitsIfNeeded];
  UIButton.measure(toFit:with:)();
  v64 = v63;
  v66 = v65;
  TextAppearance.init()();
  LabelPlaceholder.Options.init(rawValue:)();
  *&v113[8] = type metadata accessor for LabelPlaceholder();
  *&v113[16] = &protocol witness table for LabelPlaceholder;
  sub_1000056E0(&v112);
  LabelPlaceholder.init(_:with:where:)();
  v67 = v90;
  *(v90 + 3) = &type metadata for CGFloat;
  *(v67 + 4) = &protocol witness table for CGFloat;
  *v67 = v64;
  v68 = enum case for Resize.Rule.replaced(_:);
  v69 = *(v96 + 104);
  v70 = v97;
  v69(v67, enum case for Resize.Rule.replaced(_:), v97);
  v71 = v91;
  *(v91 + 3) = &type metadata for CGFloat;
  *(v71 + 4) = &protocol witness table for CGFloat;
  *v71 = v66;
  v69(v71, v68, v70);
  v72 = enum case for Resize.Rule.unchanged(_:);
  v69(v94, enum case for Resize.Rule.unchanged(_:), v70);
  v69(v95, v72, v70);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  sub_100072FE8(v114, &v112);
  if (qword_10096E748 != -1)
  {
    swift_once();
  }

  v73 = qword_1009898A0;
  v74 = v100;
  v110 = v100;
  v111 = &protocol witness table for Resize;
  v75 = sub_1000056E0(&v109);
  v76 = v99;
  (*(v99 + 16))(v75, v57, v74);
  v107 = type metadata accessor for ShelfFooterSeparator();
  v108 = sub_10050E55C();
  *&v106 = v73;
  type metadata accessor for ShelfFooterViewLayout();
  v77 = swift_allocObject();
  v78 = *v113;
  v77[1] = v112;
  v77[2] = v78;
  *(v77 + 41) = *&v113[9];
  sub_100005A38(&v109, (v77 + 4));
  sub_100005A38(&v106, v77 + 104);
  v79 = v73;
  v80 = v101;
  sub_100072A08();
  v81 = v92;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v83 = v82;

  (*(v102 + 8))(v80, v81);
  (*(v76 + 8))(v57, v74);
  sub_100073054(v114);
  sub_10048EF18(v105);
  return v83;
}

uint64_t sub_10050E488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097BA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050E4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10050E55C()
{
  result = qword_1009898F0;
  if (!qword_1009898F0)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009898F0);
  }

  return result;
}

void sub_10050E5B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_10097BA20);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_10050E488(a4, &v56 - v18);
  v20 = type metadata accessor for ShelfFooterStyle();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_10050E488(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10002B894(v19, &qword_10097BA20);
  v28 = &v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_10050ED94(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style() + 20))];
  v30 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = String._bridgeToObjectiveC()();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_10050E488(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_10050E488(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_10048EEB4(v63, v9);
    v47 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_10050E4F8(v9, &v30[v47]);
    swift_endAccess();
    sub_10048DAD0();
    sub_10048EF18(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_10096E4F0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v56, qword_1009D1EC8);
  sub_10048EEB4(v42, v39);
  v43 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10050E4F8(v39, &v30[v43]);
  swift_endAccess();
  sub_10048DAD0();
  sub_10048EF18(v39);
  v44 = ShelfLayoutContext.traitCollection.getter();
  if ([v44 horizontalSizeClass] != 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10002B894(v64, &qword_10097BA20);
    v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10002B894(v64, &qword_10097BA20);
  v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

void sub_10050EC9C()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ShelfFooterView.Style()
{
  result = qword_100989950;
  if (!qword_100989950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050EE64()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v1 <= 0x3F)
  {
    result = sub_100005744(319, &qword_100970180);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_10050EEF8(int a1, int a2, int a3, int a4, int a5, id a6, double a7)
{
  v9 = [a6 traitCollection];
  if (UITraitCollection.isSizeClassRegular.getter())
  {
    UITraitCollection.prefersAccessibilityLayouts.getter();
  }

  v10 = sub_10069EE6C(a6, a7);

  return v10;
}

uint64_t sub_10050F02C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10050F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView];
  v8 = [v3 traitCollection];
  v9 = UITraitCollection.isSizeClassRegular.getter();

  if (v9)
  {
    v10 = [v4 traitCollection];
    v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  [v7 setHidden:v12 & 1];
  sub_10069E558(a1, 0, a3);

  return [v4 setNeedsLayout];
}

uint64_t sub_10050F1BC()
{
  v0 = type metadata accessor for HorizontalRule.Style();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HorizontalRule();
  sub_10050F358(&qword_1009742C8, &type metadata accessor for HorizontalRule);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v7)
  {
    HorizontalRule.style.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v5 = v7;
    HorizontalRule.Style.lineThickness(traitCollection:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10050F358(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10050F3B4()
{
  result = qword_1009899D8;
  if (!qword_1009899D8)
  {
    type metadata accessor for UserNotificationsAuthorizationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009899D8);
  }

  return result;
}

uint64_t sub_10050F40C(void *a1, uint64_t a2, uint64_t a3)
{
  v32[1] = a3;
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for OSLogger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_10096D120;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v11, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x8000000100818820;
    v17._countAndFlagsBits = 0xD000000000000038;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(&v34 + 1) = sub_10050FE64();
    *&v33 = v16;
    v18 = v16;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v19._countAndFlagsBits = 0x745368747561202CLL;
    v19._object = 0xEE00203A73757461;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v20 = [v18 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v34 + 1) = v21;
    *&v33 = v20;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    Promise.resolve(_:)();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v24 = sub_1000056A8(v11, qword_1009CE218);
    (*(v12 + 16))(v14, v24, v11);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0xD00000000000003BLL;
    v25._object = 0x80000001008187E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    v33 = 0u;
    v34 = 0u;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v26._countAndFlagsBits = 0x3A726F727265202CLL;
    v26._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    if (a2)
    {
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = &type metadata for String;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      *&v34 = 0;
    }

    *&v33 = v27;
    *(&v33 + 1) = v28;
    *(&v34 + 1) = v29;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v12 + 8))(v14, v11);
    sub_10050FE08();
    swift_allocError();
    *v31 = 1;
    Promise.reject(_:)();
  }
}

uint64_t sub_10050F9FC()
{
  sub_10002849C(&qword_1009764A0);
  v0 = Promise.__allocating_init()();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for OSLogger();
    sub_1000056A8(v3, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_10050FE5C;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100182E7C;
    v11[3] = &unk_1008C6CB0;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSLogger();
    sub_1000056A8(v8, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_10050FE08();
    swift_allocError();
    *v9 = 0;
    Promise.reject(_:)();
  }

  return v0;
}

unint64_t sub_10050FE08()
{
  result = qword_1009899E0;
  if (!qword_1009899E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009899E0);
  }

  return result;
}

unint64_t sub_10050FE64()
{
  result = qword_1009899E8;
  if (!qword_1009899E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009899E8);
  }

  return result;
}

unint64_t sub_10050FEC4()
{
  result = qword_1009899F0;
  if (!qword_1009899F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009899F0);
  }

  return result;
}

id sub_10050FF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell()
{
  result = qword_100989A20;
  if (!qword_100989A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100510050()
{
  sub_10002849C(&qword_100977128);
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.preloaded.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentSearchAdRotationDataProvider.getter();

  v0 = type metadata accessor for SearchGhostHintMetricsTracker();
  BaseObjectGraph.optional<A>(_:)();
  if (v3[0])
  {
    v1 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[3] = v0;
  v3[4] = v1;
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.contextualAction.getter();

  sub_10002849C(&qword_100977130);
  BaseObjectGraph.optional<A>(_:)();
  static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10002B894(v4, &qword_100977138);
  return sub_10002B894(v3, &qword_100977140);
}

void sub_100510248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v4 = sub_100738948();
    v7 = OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView;
    [*&v4[OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView] setMetadata:a2];
    [*&v4[v7] setURL:0];
    [v4 setNeedsLayout];
    v5 = &OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___presentationLinkView;
  }

  else
  {
    v4 = sub_100738814();
    sub_100602E84();
    v5 = &OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___standardLinkView;
  }

  v8 = *(v3 + *v5);
  v9 = v8;

  sub_100738834(v8);
}

double sub_100510318(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1005108A8();
  v11 = v10;
  v12 = sub_1005104B4(v9, v10, a7, a1);
  sub_1000C0220(v9, v11);
  return v12;
}

void sub_100510388()
{
  v0 = sub_1005108A8();
  v2 = v1;
  sub_100510248(v0, v1);

  sub_1000C0220(v0, v2);
}

uint64_t sub_10051046C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1005104B4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    dispatch thunk of EditorialLink.url.getter();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10022C934(v10);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (qword_10096D528 != -1)
      {
        swift_once();
      }

      v23 = sub_10002849C(&qword_10097D4E8);
      v15 = sub_1000056A8(v23, qword_10097D4C8);
      __chkstk_darwin(v15);
      *(&v22 - 2) = v14;
      swift_beginAccess();
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v16 = v24;
      v17 = [a3 traitCollection];
      v18 = [v17 preferredContentSizeCategory];

      [v16 setMinimumContentSizeCategory:v18];
      v19 = [a3 traitCollection];
      v20 = [v19 preferredContentSizeCategory];

      [v16 setMaximumContentSizeCategory:v20];
      [v16 setMetadata:a2];
      [v16 sizeThatFits:{a4, 1.79769313e308}];
      v24 = v16;
      swift_beginAccess();
      ReusePool.recycle(_:)();
      swift_endAccess();

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for StandardLinkView();
    EditorialLink.descriptionText.getter();
    EditorialLink.summaryText.getter();
    swift_getObjectType();
    sub_1002BFE90();
  }

  return a4;
}

uint64_t sub_1005108A8()
{
  sub_10002849C(&unk_100973270);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of LinkLoader.availablePresentation(for:)();

  result = v1;
  if ((~v1 & 0xF000000000000007) == 0)
  {
  }

  return result;
}

void sub_100510964(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_100511C3C;
  v6[5] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100007A08;
  v6[3] = &unk_1008C6EA8;
  v5 = _Block_copy(v6);

  [a1 presentViewController:a2 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_100510A40()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100510B34(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for FlowPresentationContext();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v38, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v23(v15, 1, v16) != 1)
    {
      sub_10002B894(v15, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v15, v22);
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_10013B6D8(v22, type metadata accessor for FlowDestination);
    return 0;
  }

  v24 = sub_10002849C(&qword_1009835C0);
  sub_10002B894(&v22[*(v24 + 48)], &qword_100982460);
  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v38, v12);
  if (v23(v12, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v25 = v23(v12, 1, v16);
    v26 = v37;
    if (v25 != 1)
    {
      sub_10002B894(v12, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v12, v19);
    v26 = v37;
  }

  v27 = v33;
  sub_10065DB50(v33);
  sub_10013B6D8(v19, type metadata accessor for FlowDestination);
  sub_10013B6D8(v9, type metadata accessor for FlowPresentationHints);
  v29 = v35;
  v28 = v36;
  (*(v36 + 32))(v35, v27, v26);
  v30 = (*(v28 + 88))(v29, v26);
  result = 1;
  if (v30 != enum case for FlowPresentationContext.presentModal(_:) && v30 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v28 + 8))(v29, v26);
    return 0;
  }

  return result;
}

uint64_t sub_10051102C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_10002849C(&qword_100983590) + 64);
    v15 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_10013B6D8(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_10013B6D8(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_100118248(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)();
  sub_10002B894(v5, &qword_100982460);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_100511258(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v9 - 8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v67 - v18);
  sub_10002849C(&qword_1009764A0);
  v20 = Promise.__allocating_init()();
  v73 = a2;
  v21 = sub_100623FBC(a2);
  if (v21)
  {
    v72 = v20;
    v22 = v21;
    v23 = [v21 traitCollection];
    v80 = v22;
    sub_100005744(0, &qword_100975960);
    v74 = v22;
    sub_10002849C(&qword_100975968);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v77 = 0;
      aBlock = 0u;
      v76 = 0u;
    }

    dispatch thunk of Action.clickSender.getter();
    sub_100462678(a1, v79, v13);
    v24 = *(v15 + 48);
    v25 = v24(v13, 1, v14);
    v67 = v24;
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v14) != 1)
      {
        sub_10002B894(v13, &unk_1009796F0);
      }
    }

    else
    {
      sub_10013A05C(v13, v19);
    }

    v27 = FlowAction.referrerUrl.getter();
    v29 = v28;
    FlowAction.referrerData.getter();
    sub_1003C1668(v19, v23, v27, v29, v8, &aBlock, a3, 1);
    v31 = v30;

    sub_10002B894(v8, &unk_1009767C0);
    sub_10013B6D8(v19, type metadata accessor for FlowDestination);
    sub_10002B894(&aBlock, &unk_100981880);
    if (!v31)
    {
      sub_100511BDC();
      swift_allocError();
      *v46 = 0;
      v20 = v72;
      Promise.reject(_:)();

      return v20;
    }

    v68 = v31;
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v69 = aBlock;
    v32 = [v74 viewControllers];
    sub_100005744(0, &qword_1009711C0);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v33 >> 62)
    {
      goto LABEL_48;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v34)
    {
      while (__OFSUB__(v34--, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v34 = _CocoaArrayWrapper.endIndex.getter();
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_19;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v36 = *(v33 + 32 + 8 * v34);
LABEL_19:
      v37 = v36;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v37)
      {

        goto LABEL_23;
      }
    }

LABEL_49:

    v37 = 0;
LABEL_23:
    v38 = [v74 topViewController];
    v20 = v72;
    if (v38)
    {
      v39 = v38;
      v40 = v37;
      if (v37)
      {
        v41 = v40;
        v42 = static NSObject.== infix(_:_:)();

        if (v42)
        {
          v77 = sub_100511CCC;
          v78 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v76 = sub_100007A08;
          *(&v76 + 1) = &unk_1008C6E80;
          v43 = _Block_copy(&aBlock);
          v44 = v41;

          v45 = v68;
          [v44 presentViewController:v68 animated:1 completion:v43];

          _Block_release(v43);

          return v20;
        }
      }

      else
      {
      }
    }

    else if (!v37)
    {
      v47 = 0;
    }

    v48 = v73;
    v49 = [v73 presentedViewController];
    if (v49)
    {
      v50 = v49;
      if (([v49 isBeingDismissed] & 1) == 0)
      {

        dispatch thunk of Action.clickSender.getter();
        v51 = v71;
        sub_100462678(a1, &aBlock, v71);
        v52 = v67;
        if (v67(v51, 1, v14) == 1)
        {
          v53 = v52;
          v54 = v70;
          swift_storeEnumTagMultiPayload();
          if (v53(v51, 1, v14) != 1)
          {
            sub_10002B894(v51, &unk_1009796F0);
          }
        }

        else
        {
          v54 = v70;
          sub_10013A05C(v51, v70);
        }

        v55 = sub_10051102C(v50, v54);
        sub_10013B6D8(v54, type metadata accessor for FlowDestination);
        if (v55)
        {
          type metadata accessor for ArticleContainerViewController();
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            v57 = *(v56 + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController);
            v58 = v50;
            v59 = [v57 popToRootViewControllerAnimated:0];
          }

          v60 = swift_allocObject();
          v61 = v68;
          v60[2] = v48;
          v60[3] = v61;
          v60[4] = v20;
          v77 = sub_100511C30;
          v78 = v60;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v76 = sub_100007A08;
          *(&v76 + 1) = &unk_1008C6E58;
          v62 = _Block_copy(&aBlock);

          v63 = v48;
          v64 = v61;

          [v50 dismissViewControllerAnimated:1 completion:v62];

          goto LABEL_43;
        }
      }
    }

    v77 = sub_100511CCC;
    v78 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v76 = sub_100007A08;
    *(&v76 + 1) = &unk_1008C6E08;
    v62 = _Block_copy(&aBlock);

    v65 = v68;
    [v48 presentViewController:v68 animated:1 completion:v62];

LABEL_43:
    _Block_release(v62);

    return v20;
  }

  sub_100511BDC();
  swift_allocError();
  *v26 = 1;
  Promise.reject(_:)();

  return v20;
}

unint64_t sub_100511BDC()
{
  result = qword_100989A78;
  if (!qword_100989A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989A78);
  }

  return result;
}

unint64_t sub_100511C6C()
{
  result = qword_100989A80;
  if (!qword_100989A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989A80);
  }

  return result;
}

unint64_t sub_100511CF0()
{
  result = qword_100989A88;
  if (!qword_100989A88)
  {
    type metadata accessor for ShelfBasedPageScrollAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989A88);
  }

  return result;
}

uint64_t sub_100511D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOutcome();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_100624370(Strong);

  v17 = v9;
  sub_100065AF0();
  v10 = v9;
  sub_10002849C(&qword_100989A90);
  if (swift_dynamicCast())
  {
    sub_100005A38(v15, v18);
    v11 = v19;
    v12 = v20;
    sub_10002A400(v18, v19);
    (*(v12 + 8))(a1, a2, v11, v12);
    sub_10002849C(&qword_1009764A0);
    (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
    v13 = Promise.__allocating_init(value:)();

    sub_100007000(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_100511F68(v15);
    sub_10002849C(&qword_1009764A0);
    sub_100511FD0();
    swift_allocError();
    v13 = Promise.__allocating_init(error:)();
  }

  return v13;
}

uint64_t sub_100511F68(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100989A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100511FD0()
{
  result = qword_100989AA0;
  if (!qword_100989AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989AA0);
  }

  return result;
}

unint64_t sub_100512038()
{
  result = qword_100989AA8;
  if (!qword_100989AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989AA8);
  }

  return result;
}

uint64_t sub_10051208C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FontSource();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v7);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DC78 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_1009D0500);
  v42 = v11;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v17 = v16;
  v16(v13, v14, v10);
  v43 = v9;
  sub_10051284C(v9);
  v18 = UITraitCollection.isSizeClassCompact.getter();
  sub_100028BB8();
  if (v18)
  {
    v19 = static UIColor.primaryText.getter();
  }

  else
  {
    v19 = static UIColor.secondaryText.getter();
  }

  v41 = v19;
  v17(a2 + v7[6], v13, v10);
  v38 = v17;
  sub_100518E88(a1);
  v17(v6, v13, v10);
  v37 = enum case for FontSource.useCase(_:);
  v20 = v40;
  v36 = *(v40 + 104);
  v36(v6);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v45);
  v44 = v10;
  v35[1] = v15;
  v22 = *(v20 + 16);
  v22(v21, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v39 = v13;
  v23 = *(v20 + 8);
  v23(v6, v4);
  v38(v6, v13, v44);
  (v36)(v6, v37, v4);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v45);
  v22(v24, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v23(v6, v4);
  v25 = v7[9];
  v26 = (a2 + v7[12]);
  v27 = type metadata accessor for StaticDimension();
  v26[3] = v27;
  v26[4] = &protocol witness table for StaticDimension;
  v28 = sub_1000056E0(v26);
  v29 = *(*(v27 - 8) + 16);
  v30 = v43;
  v29(v28, v43 + v25, v27);
  v31 = v7[10];
  v32 = (a2 + v7[13]);
  v32[3] = v27;
  v32[4] = &protocol witness table for StaticDimension;
  v33 = sub_1000056E0(v32);
  v29(v33, (v30 + v31), v27);
  sub_1001EFF9C(v30);
  result = (*(v42 + 8))(v39, v44);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v41;
  *(a2 + v7[7]) = 0;
  *(a2 + v7[8]) = 1098907648;
  *(a2 + v7[11]) = 0;
  return result;
}

uint64_t sub_100512518@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a1;
  }

  else
  {
    sub_100028BB8();
    v29 = static UIColor.appTint.getter();
  }

  v8 = qword_10096DC50;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D0488);
  v28 = v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = v12[6];
  v14 = *(v10 - 8);
  v15 = *(v14 + 16);
  v27 = v15;
  v24[1] = v14 + 16;
  v15(a2 + v13, v11, v10);
  v15(v7, v11, v10);
  v26 = enum case for FontSource.useCase(_:);
  v25 = v5[13];
  v25(v7);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v30);
  v17 = v5[2];
  v17(v16, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v18 = v5[1];
  v18(v7, v4);
  v27(v7, v28, v10);
  (v25)(v7, v26, v4);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v30);
  v17(v19, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v18(v7, v4);
  v20 = (a2 + v12[12]);
  v21 = type metadata accessor for ZeroDimension();
  v20[3] = v21;
  v20[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v20);
  static ZeroDimension.zero.getter();
  v22 = (a2 + v12[13]);
  v22[3] = v21;
  v22[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v22);
  result = static ZeroDimension.zero.getter();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v29;
  *(a2 + v12[7]) = 0;
  *(a2 + v12[8]) = 1077936128;
  *(a2 + v12[11]) = 1098907648;
  return result;
}

uint64_t sub_10051284C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028BB8();
  v25 = static UIColor.secondaryText.getter();
  if (qword_10096DC70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D04E8);
  v24 = v7;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = v8[6];
  v10 = *(v6 - 8);
  v11 = *(v10 + 16);
  v23 = v11;
  v20[1] = v10 + 16;
  v11(a1 + v9, v7, v6);
  v11(v5, v7, v6);
  v22 = enum case for FontSource.useCase(_:);
  v21 = v3[13];
  v21(v5);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v26);
  v13 = v3[2];
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  v23(v5, v24, v6);
  (v21)(v5, v22, v2);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v26);
  v13(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  v16 = (a1 + v8[12]);
  v17 = type metadata accessor for ZeroDimension();
  v16[3] = v17;
  v16[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v16);
  static ZeroDimension.zero.getter();
  v18 = (a1 + v8[13]);
  v18[3] = v17;
  v18[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v18);
  result = static ZeroDimension.zero.getter();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v25;
  *(a1 + v8[7]) = 0;
  *(a1 + v8[8]) = 1098907648;
  *(a1 + v8[11]) = 0;
  return result;
}

uint64_t sub_100512B5C()
{
  v0 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v0, qword_1009D2658);
  v1 = sub_1000056A8(v0, qword_1009D2658);
  return sub_100512518(0, v1);
}

uint64_t sub_100512BB0()
{
  v0 = type metadata accessor for FontSource();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v29 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2670);
  v38 = v11;
  v12 = sub_1000056A8(v11, qword_1009D2670);
  sub_100028BB8();
  v36 = static UIColor.primaryText.getter();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v14;
  v35 = v13;
  if (qword_10096DC50 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v7, qword_1009D0488);
  v43 = v7;
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v15, v7);
  v16(v2, v15, v7);
  v31 = enum case for FontSource.useCase(_:);
  v17 = v37;
  v30 = *(v37 + 104);
  v30(v2);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v47);
  v32 = v8;
  v29 = *(v17 + 16);
  v29(v18, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = *(v17 + 8);
  v19(v2, v0);
  v16(v2, v15, v43);
  (v30)(v2, v31, v0);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v47);
  v29(v20, v2, v0);
  v21 = v39;
  StaticDimension.init(_:scaledLike:)();
  v19(v2, v0);
  v22 = type metadata accessor for ZeroDimension();
  v48 = v22;
  v49 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v47);
  static ZeroDimension.zero.getter();
  v45 = v22;
  v46 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v44);
  static ZeroDimension.zero.getter();
  v23 = v35;
  *v12 = v36;
  *(v12 + 1) = v23;
  v24 = v33;
  *(v12 + 2) = v34;
  v25 = v38;
  (*(v32 + 32))(&v12[v38[6]], v24, v43);
  *&v12[v25[7]] = 0;
  *&v12[v25[8]] = 1077936128;
  v26 = v41;
  v27 = *(v40 + 32);
  v27(&v12[v25[9]], v42, v41);
  v27(&v12[v25[10]], v21, v26);
  *&v12[v25[11]] = 1098907648;
  sub_100005A38(&v47, &v12[v25[12]]);
  return sub_100005A38(&v44, &v12[v25[13]]);
}

uint64_t sub_100513098()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2688);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2688);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D04A0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100513544()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D26A0);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D26A0);
  sub_100028BB8();
  v31 = static UIColor.secondaryText.getter();
  if (qword_10096DC60 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D04B8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_1005139F4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D26B8);
  v12 = sub_1000056A8(v11, qword_1009D26B8);
  sub_100028BB8();
  v23 = static UIColor.secondaryText.getter();
  if (qword_10096DC68 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D04D0);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 0;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100513E4C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D26D0);
  v12 = sub_1000056A8(v11, qword_1009D26D0);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D24F0);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_1005142A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D26E8);
  v12 = sub_1000056A8(v11, qword_1009D26E8);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D24F0);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100514704()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2700);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2700);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0518);
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v27 = enum case for FontSource.useCase(_:);
  v36 = v8;
  v28 = v1[13];
  v28(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v29 = v9;
  v17 = v1[2];
  v17(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v26 = v1[1];
  v26(v3, v0);
  v15(v3, v14, v36);
  (v28)(v3, v27, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v17(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v26(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100514BD4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for FontUseCase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v15, a2);
  v16 = sub_1000056A8(v15, a2);
  sub_100028BB8();
  v38 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v12, qword_1009D0518);
  v37 = v13;
  v18 = *(v13 + 16);
  v18(v42, v17, v12);
  v18(v6, v17, v12);
  v19 = v4[13];
  v34 = enum case for FontSource.useCase(_:);
  v33 = v19;
  v19(v6);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v46);
  v36 = v12;
  v32 = v4[2];
  v32(v20, v6, v3);
  v35 = v11;
  StaticDimension.init(_:scaledLike:)();
  v31 = v4[1];
  v31(v6, v3);
  if (qword_10096DC60 != -1)
  {
    swift_once();
  }

  v21 = v36;
  v22 = sub_1000056A8(v36, qword_1009D04B8);
  v18(v6, v22, v21);
  v33(v6, v34, v3);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(&v46);
  v32(v23, v6, v3);
  v24 = v39;
  StaticDimension.init(_:scaledLike:)();
  v31(v6, v3);
  v25 = type metadata accessor for ZeroDimension();
  v47 = v25;
  v48 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v46);
  static ZeroDimension.zero.getter();
  v44 = v25;
  v45 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v43);
  static ZeroDimension.zero.getter();
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v26 = v37;
  *v16 = v38;
  (*(v26 + 32))(&v16[v15[6]], v42, v21);
  *&v16[v15[7]] = 0;
  *&v16[v15[8]] = 1090519040;
  v27 = v41;
  v28 = *(v40 + 32);
  v28(&v16[v15[9]], v35, v41);
  v28(&v16[v15[10]], v24, v27);
  *&v16[v15[11]] = 1102053376;
  sub_100005A38(&v46, &v16[v15[12]]);
  return sub_100005A38(&v43, &v16[v15[13]]);
}

uint64_t sub_1005150D8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2748);
  v12 = sub_1000056A8(v11, qword_1009D2748);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100515538()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2760);
  v12 = sub_1000056A8(v11, qword_1009D2760);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100515994()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2778);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2778);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0518);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100515E44()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2790);
  v12 = sub_1000056A8(v11, qword_1009D2790);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_1005162A0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D27A8);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D27A8);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0518);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_10051674C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D27C0);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D27C0);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC88 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0530);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100516C08()
{
  v0 = type metadata accessor for FontSource();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D27F0);
  v43 = v11;
  v37 = sub_1000056A8(v11, qword_1009D27F0);
  if (qword_10096D558 != -1)
  {
    swift_once();
  }

  v12 = qword_1009CEC98;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v14;
  v41 = v13;
  v15 = qword_10096DC98;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v7, qword_1009D0560);
  v36 = v8;
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v51);
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  StaticDimension.init(_:scaledLike:)();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  StaticDimension.init(_:scaledLike:)();
  v21(v18, v0);
  v24 = type metadata accessor for ZeroDimension();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v51);
  static ZeroDimension.zero.getter();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v48);
  static ZeroDimension.zero.getter();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_100005A38(&v51, &v26[v29[12]]);
  return sub_100005A38(&v48, &v26[v29[13]]);
}

uint64_t sub_100517130(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticDimension();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v37 - v9;
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v14, a2);
  v47 = v14;
  v15 = sub_1000056A8(v14, a2);
  if (qword_10096D558 != -1)
  {
    swift_once();
  }

  v16 = qword_1009CEC98;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v18;
  v45 = v17;
  v19 = qword_10096DC90;
  v43 = v16;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v10, qword_1009D0548);
  v41 = v11;
  v21 = *(v11 + 16);
  v42 = v13;
  v21(v13, v20, v10);
  v22 = v5;
  v21(v5, v20, v10);
  v40 = enum case for FontSource.useCase(_:);
  v23 = v46;
  v38 = v10;
  v39 = *(v46 + 104);
  v39(v22);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(&v55);
  v37 = *(v23 + 16);
  v37(v24, v22, v3);
  StaticDimension.init(_:scaledLike:)();
  v25 = *(v23 + 8);
  v25(v22, v3);
  v26 = v20;
  v27 = v38;
  v21(v22, v26, v38);
  (v39)(v22, v40, v3);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(&v55);
  v37(v28, v22, v3);
  v29 = v48;
  StaticDimension.init(_:scaledLike:)();
  v25(v22, v3);
  v30 = type metadata accessor for ZeroDimension();
  v56 = v30;
  v57 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v55);
  static ZeroDimension.zero.getter();
  v53 = v30;
  v54 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v52);
  static ZeroDimension.zero.getter();
  v31 = v44;
  v32 = v45;
  *v15 = v43;
  *(v15 + 1) = v32;
  *(v15 + 2) = v31;
  v33 = v47;
  (*(v41 + 32))(&v15[v47[6]], v42, v27);
  *&v15[v33[7]] = 0;
  *&v15[v33[8]] = 1090519040;
  v34 = v50;
  v35 = *(v49 + 32);
  v35(&v15[v33[9]], v51, v50);
  v35(&v15[v33[10]], v29, v34);
  *&v15[v33[11]] = 0;
  sub_100005A38(&v55, &v15[v33[12]]);
  return sub_100005A38(&v52, &v15[v33[13]]);
}

uint64_t sub_100517664()
{
  v0 = type metadata accessor for FontSource();
  v44 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v35 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2820);
  v45 = v11;
  v12 = sub_1000056A8(v11, qword_1009D2820);
  if (qword_10096D558 != -1)
  {
    swift_once();
  }

  v13 = qword_1009CEC98;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v15;
  v43 = v14;
  v16 = qword_10096DC98;
  v41 = v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v7, qword_1009D0560);
  v39 = v8;
  v40 = v10;
  v18 = *(v8 + 16);
  v18(v10, v17, v7);
  v19 = v2;
  v18(v2, v17, v7);
  v38 = enum case for FontSource.useCase(_:);
  v20 = v44;
  v36 = v7;
  v37 = *(v44 + 104);
  v37(v19);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v53);
  v35 = *(v20 + 16);
  v35(v21, v19, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = *(v20 + 8);
  v22(v19, v0);
  v23 = v17;
  v24 = v36;
  v18(v19, v23, v36);
  (v37)(v19, v38, v0);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(&v53);
  v35(v25, v19, v0);
  v26 = v46;
  StaticDimension.init(_:scaledLike:)();
  v22(v19, v0);
  v27 = type metadata accessor for ZeroDimension();
  v54 = v27;
  v55 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v53);
  static ZeroDimension.zero.getter();
  v51 = v27;
  v52 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v50);
  static ZeroDimension.zero.getter();
  v28 = v40;
  v29 = v42;
  v30 = v43;
  *v12 = v41;
  *(v12 + 1) = v30;
  *(v12 + 2) = v29;
  v31 = v45;
  (*(v39 + 32))(&v12[v45[6]], v28, v24);
  *&v12[v31[7]] = 0;
  *&v12[v31[8]] = 1090519040;
  v32 = v48;
  v33 = *(v47 + 32);
  v33(&v12[v31[9]], v49, v48);
  v33(&v12[v31[10]], v26, v32);
  *&v12[v31[11]] = 0;
  sub_100005A38(&v53, &v12[v31[12]]);
  return sub_100005A38(&v50, &v12[v31[13]]);
}

uint64_t sub_100517B78()
{
  v0 = type metadata accessor for FontSource();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2838);
  v43 = v11;
  v37 = sub_1000056A8(v11, qword_1009D2838);
  if (qword_10096D560 != -1)
  {
    swift_once();
  }

  v12 = qword_1009CECA0;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v14;
  v41 = v13;
  v15 = qword_10096DCA0;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v7, qword_1009D0578);
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v51);
  v36 = v8;
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  StaticDimension.init(_:scaledLike:)();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  StaticDimension.init(_:scaledLike:)();
  v21(v18, v0);
  v24 = type metadata accessor for ZeroDimension();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v51);
  static ZeroDimension.zero.getter();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v48);
  static ZeroDimension.zero.getter();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_100005A38(&v51, &v26[v29[12]]);
  return sub_100005A38(&v48, &v26[v29[13]]);
}

uint64_t sub_10051808C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2850);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2850);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DCA8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0590);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100518534()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2868);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2868);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DCB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D05A8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_1005189E0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2880);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2880);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DCB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D05C0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

double sub_100518E88(void *a1)
{
  [a1 displayScale];
  v3 = v2;
  v4 = 1.0 / v2;
  if (v2 < 3.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = 46.0 - v4;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_11:
    v13 = 4.0;
    if (v3 > 2.0)
    {
      v13 = 5.0;
    }

    return v13 + v5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

    goto LABEL_11;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return v5 + 3.0;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

    return v5 + 3.0;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_28;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {

LABEL_28:
    v13 = 2.0;
    if (v3 <= 2.0)
    {
      v13 = 1.0;
    }

    return v13 + v5;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    goto LABEL_33;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_36;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
      {
      }

      else
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
          if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
          {
          }

          else
          {
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v46 & 1) == 0)
            {
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;
              if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
              {
                goto LABEL_33;
              }

              v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v51)
              {
                goto LABEL_36;
              }

              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;
              if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
              {
                goto LABEL_33;
              }

              v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v56)
              {
                goto LABEL_36;
              }

              v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v59 = v58;
              if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
              {
LABEL_33:

LABEL_34:

                return v5;
              }

              v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v61 & 1) == 0)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                goto LABEL_34;
              }

LABEL_36:

              return v5;
            }
          }

          return v5 + -5.0;
        }
      }

      v13 = v4 + -5.0;
      return v13 + v5;
    }
  }

  v36 = 2.0;
  if (v3 <= 2.0)
  {
    v36 = 3.0;
  }

  return v5 - v36;
}

uint64_t sub_100519454()
{
  sub_10001F64C(v0 + 16);
  sub_1000284E4(v0 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardCollectionElementsObserver()
{
  result = qword_100989AD8;
  if (!qword_100989AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100519524()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005195DC(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;
    v5(0, ObjectType, v3);
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_1005196C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    type metadata accessor for TodayCard();
    sub_10051A00C(&qword_100977390, &type metadata accessor for TodayCard);
    result = ItemLayoutContext.typedModel<A>(is:)();
    if (result)
    {
      v10 = type metadata accessor for ItemLayoutContext();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, a2, v10);
      (*(v11 + 56))(v8, 0, 1, v10);
      v12 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
      swift_beginAccess();
      sub_10009761C(v8, v3 + v12);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100519918()
{
  sub_10002849C(&qword_10096FDB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = sub_10051A00C(&qword_100989C18, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v1 + 32) = v0;
  *(v1 + 40) = v2;

  return v1;
}

void sub_1005199F0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = a1;
    v7(1, ObjectType, v5);
  }

  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    type metadata accessor for TodayCard();
    sub_10051A00C(&qword_100977390, &type metadata accessor for TodayCard);
    v11 = a1;
    ItemLayoutContext.typedModel<A>(as:)();
    if (v13)
    {
      v12 = swift_getObjectType();
      (*(v10 + 192))(*(v2 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled), v12, v10);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (TodayCard.searchAdOpportunity.getter())
        {
          SearchAdOpportunity.searchAd.getter();
        }

        swift_getObjectType();
        dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();
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

void sub_100519C0C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for TodayCard();
    sub_10051A00C(&qword_100977390, &type metadata accessor for TodayCard);
    if (ItemLayoutContext.typedModel<A>(is:)())
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = 0x3FEEB851EB851EB8;
      v13 = sub_100519E48;
      v14 = v4;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_100007A08;
      v12 = &unk_1008C7098;
      v5 = _Block_copy(&aBlock);
      v6 = a1;

      v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v14 = 0;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_100504C5C;
      v12 = &unk_1008C70C0;
      v7 = _Block_copy(&aBlock);
      [v3 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v5 options:v7 animations:0.0 completion:1.0];
      _Block_release(v7);
      _Block_release(v5);

      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

void *sub_100519E54(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v16 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = 0x3FF0000000000000;
        v21 = a2;
        v22 = v12;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_100007A08;
        v20 = a3;
        v13 = _Block_copy(&aBlock);
        v14 = v11;

        v21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
        v22 = 0;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_100504C5C;
        v20 = a4;
        v15 = _Block_copy(&aBlock);
        [v16 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v13 options:v15 animations:0.0 completion:1.0];
        _Block_release(v15);
        _Block_release(v13);
      }

      else
      {
      }
    }

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_10051A00C(unint64_t *a1, void (*a2)(uint64_t))
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

UIColor sub_10051A080()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.11372549, 0.137254902, 0.176470588, 1.0)).super.isa;
  qword_1009D28B0 = result.super.isa;
  return result;
}

UIColor sub_10051A124()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  result.super.isa = UIColor.init(light:dark:)(v2, v4).super.isa;
  qword_1009D28B8 = result.super.isa;
  return result;
}

id sub_10051A1F8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8AppStore16AdBackgroundView_isBorderHidden] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_10096E810;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_1009D28B0];
  v13 = [v12 layer];
  if (qword_10096E818 != -1)
  {
    swift_once();
  }

  v14 = [qword_1009D28B8 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  [v15 setBorderWidth:1.0];

  [v12 setUserInteractionEnabled:0];
  sub_10002849C(&qword_10097B110);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B10D0;
  *(v16 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v16 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v12;
}

void sub_10051A4E0(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC8AppStore16AdBackgroundView_isBorderHidden) & 1) == 0)
  {
    v2 = [a1 layer];
    if (qword_10096E818 != -1)
    {
      swift_once();
    }

    v3 = [qword_1009D28B8 CGColor];
    [v2 setBorderColor:v3];
  }
}

unint64_t sub_10051A5AC()
{
  _StringGuts.grow(_:)(34);

  IndexPath.section.getter();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  IndexPath.item.getter();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD00000000000001DLL;
}

uint64_t sub_10051A6E4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = type metadata accessor for ActionOutcome();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10002849C(&unk_100982A90);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_10002849C(&unk_100974490);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSLogger();
  v54 = sub_1000056A8(v12, qword_1009CE218);
  v13 = sub_10002849C(&unk_100972A10);
  v14 = *(*(type metadata accessor for LogMessage() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_1007B23A0;
  LogMessage.init(stringLiteral:)();
  v38 = type metadata accessor for HttpAction();
  v56 = v38;
  v55[0] = a2;

  static LogMessage.sensitive(_:)();
  sub_10003D444(v55);
  LogMessage.init(stringLiteral:)();
  v15 = type metadata accessor for Bag();
  v56 = v15;
  v16 = sub_1000056E0(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  static LogMessage.sensitive(_:)();
  sub_10003D444(v55);
  v51 = a2;
  LogMessage.init(stringLiteral:)();
  v56 = sub_100005744(0, &qword_100989C88);
  v55[0] = v52;
  v17 = v52;
  static LogMessage.sensitive(_:)();
  sub_10003D444(v55);
  Logger.debug(_:)();

  if ([v17 responseStatusCode] - 200 > 0x63)
  {
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    LogMessage.init(stringLiteral:)();
    v56 = v38;
    v55[0] = v51;

    static LogMessage.sensitive(_:)();
    sub_10003D444(v55);
    LogMessage.init(stringLiteral:)();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    static LogMessage.sensitive(_:)();
    sub_10003D444(v55);
    Logger.error(_:)();

    v30 = HttpAction.failureAction.getter();
    if (v30)
    {
      v31 = v30;
      type metadata accessor for BaseObjectGraph();
      v32 = v44;
      v33 = v47;
      inject<A, B>(_:from:)();
      v56 = type metadata accessor for Action();
      v57 = sub_10051B780(&qword_100989C80, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_100007000(v55);
    }

    sub_10051B7D4();
    swift_allocError();
    Promise.reject(_:)();
  }

  else
  {
    v18 = HttpAction.successAction.getter();
    if (v18)
    {
      v19 = v18;
      type metadata accessor for BaseObjectGraph();
      v20 = v44;
      v21 = v47;
      inject<A, B>(_:from:)();
      v56 = type metadata accessor for Action();
      v57 = sub_10051B780(&qword_100989C80, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_100007000(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    Promise.resolve(_:)();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_10051AEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_10002849C(&unk_100982A90);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_10002849C(&unk_100974490);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSLogger();
  v27 = sub_1000056A8(v11, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  LogMessage.init(stringLiteral:)();
  v31 = type metadata accessor for HttpAction();
  v30[0] = a2;

  static LogMessage.sensitive(_:)();
  sub_10003D444(v30);
  LogMessage.init(stringLiteral:)();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_1000056E0(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  static LogMessage.sensitive(_:)();
  sub_10003D444(v30);
  Logger.error(_:)();

  v15 = HttpAction.failureAction.getter();
  if (v15)
  {
    v16 = v15;
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v31 = type metadata accessor for Action();
    v32 = sub_10051B780(&qword_100989C80, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    ActionDispatcher.perform(_:withMetrics:asPartOf:)();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_100007000(v30);
  }

  return Promise.reject(_:)();
}

uint64_t sub_10051B2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bag();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_10002849C(&qword_1009764A0);
  v32 = Promise.__allocating_init()();
  sub_100005744(0, &unk_100989C60);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  inject<A, B>(_:from:)();
  sub_100005744(0, &qword_1009764B0);
  inject<A, B>(_:from:)();
  v11 = v33[0];
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v12 = v33[0];
  sub_10002849C(&unk_100989C70);
  inject<A, B>(_:from:)();
  v13 = v33[0];
  if (HttpAction.needsMediaToken.getter())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = HttpAction.start(urlSession:bag:process:bagContract:mediaTokenService:)();
  swift_unknownObjectRelease();
  v15 = v31;
  v16 = v29;
  (*(v5 + 16))(v31, v14, v29);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26[0] = v10;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v5 + 32))(v20 + v17, v15, v16);
  *(v20 + v18) = a2;
  v21 = v32;
  *(v20 + v19) = v32;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  v23 = sub_100005744(0, &qword_1009729E0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = static OS_dispatch_queue.main.getter();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  Promise.then(perform:orCatchError:on:)();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_100007000(v33);
  return v21;
}

uint64_t sub_10051B6C8(id *a1)
{
  v3 = *(type metadata accessor for Bag() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_10051A6E4(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10051B780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10051B7D4()
{
  result = qword_100989C90;
  if (!qword_100989C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989C90);
  }

  return result;
}

unint64_t sub_10051B83C()
{
  result = qword_100989C98;
  if (!qword_100989C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989C98);
  }

  return result;
}

uint64_t sub_10051B890()
{
  sub_10002849C(&qword_10097A790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B73E0;
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
  v1 = sub_100397278(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870);
  result = swift_arrayDestroy();
  qword_100989CA0 = v1;
  return result;
}

void sub_10051BAA4(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_10002849C(&qword_100973210);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B15F0;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_10051BBE0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_10096E820;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_10051BF24();
  return v14;
}

id sub_10051BF24()
{
  if ((v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_10051C094(v2, v3);
    v5 = v4;
    sub_100194454();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setLocations:isa];

    sub_1002A4E98(v5);

    v7 = Array._bridgeToObjectiveC()().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_10051C094(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_10002849C(&qword_100973210);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B0B70;
  sub_100194454();
  *(v7 + 32) = NSNumber.init(floatLiteral:)(0.0);
  v20 = v7;
  v8 = OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (qword_10096E828 != -1)
    {
      swift_once();
    }

    sub_100394BE8(v10);
    if ((*(v2 + OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v11 = [objc_opt_self() blackColor];
      v12 = [v11 colorWithAlphaComponent:0.0];

      v13 = [v12 CGColor];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient) == 1)
  {
    v14 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((*(v3 + v8) & 1) == 0)
    {
      v15 = [objc_opt_self() blackColor];
      v16 = [v15 colorWithAlphaComponent:0.0];

      v17 = [v16 CGColor];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (qword_10096E830 != -1)
    {
      swift_once();
    }

    sub_100394BE8(v18);
  }

  NSNumber.init(floatLiteral:)(1.0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v20;
}

id sub_10051C4D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10051C588(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics();
  sub_100005644(v4, a2);
  sub_1000056A8(v4, a2);
  AspectRatio.init(_:_:)();
  return ArcadeWelcomeItemViewLayout.Metrics.init(imageAspectRatio:imageWidth:headingTopSpace:bodyTopSpace:textInsets:)();
}

uint64_t sub_10051C6D8()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&qword_100989DD0);
  sub_100005644(v7, qword_100989D60);
  sub_1000056A8(v7, qword_100989D60);
  if (qword_10096E850 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_100989D48);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096E848 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_100989D30);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_10051C8B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel] = v12;
  type metadata accessor for ArtworkView();
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  ArtworkView.backgroundColor.setter();

  sub_10051CA5C();
  return v15;
}

id sub_10051CA5C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    v10(v6, v9, v2);
    return dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

uint64_t sub_10051CE00()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ArcadeWelcomeItemViewLayout();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics();
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
  if (sub_1001E3930())
  {
    if (qword_10096E840 != -1)
    {
      swift_once();
    }

    v17 = qword_100989D18;
  }

  else
  {
    if (qword_10096E838 != -1)
    {
      swift_once();
    }

    v17 = qword_100989D00;
  }

  v18 = sub_1000056A8(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  Copyable.copyWithOverrides(in:)();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel];
  v46 = type metadata accessor for DynamicTypeLabel();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView];
  v40 = type metadata accessor for ArtworkView();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v29 = v34;
  ArcadeWelcomeItemViewLayout.placeChildren(relativeTo:in:)();
  (*(v37 + 8))(v29, v38);
  sub_10051D2B4();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_10051D254()
{
  swift_getObjectType();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v1);
  return ArcadeWelcomeItemViewLayout.Metrics.imageWidth.setter();
}

uint64_t sub_10051D2B4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  result = CGRectEqualToRect(v15, v16);
  if ((result & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artwork])
      {
        v8 = qword_10096E858;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = sub_10002849C(&qword_100989DD0);
        sub_1000056A8(v9, qword_100989D60);
        v14 = v1;
        v10 = v1;
        Conditional.evaluate(with:)();

        LayoutMarginsAware<>.layoutFrame.getter();
        AspectRatio.maxSize(fitting:)();
        (*(v3 + 8))(v5, v2);
        Artwork.config(using:)();
        if (*&v10[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkLoader])
        {
          v13 = *&v10[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView];
          v11 = v13;
          type metadata accessor for ArtworkView();
          sub_10051DD24();

          v12 = v11;
          AnyHashable.init<A>(_:)();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

          sub_1000C36CC(&v14);
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

double sub_10051D5D4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v35 = type metadata accessor for ArcadeWelcomeItemViewLayout();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_1001E3930())
  {
    if (qword_10096E840 != -1)
    {
      swift_once();
    }

    v18 = qword_100989D18;
  }

  else
  {
    if (qword_10096E838 != -1)
    {
      swift_once();
    }

    v18 = qword_100989D00;
  }

  v19 = sub_1000056A8(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  Copyable.copyWithOverrides(in:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel);
  v43 = type metadata accessor for DynamicTypeLabel();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView);
  v37 = type metadata accessor for ArtworkView();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)();
  ArcadeWelcomeItemViewLayout.measurements(fitting:in:)();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_10051DA18(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView;
      v4 = *(Strong + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView);
      v5 = Strong;
      v6 = a1;
      v7 = v4;
      [v6 size];
      ArtworkView.imageSize.getter();
      CGSize.fitting(_:mode:)();
      ArtworkView.imageSize.setter();

      v8 = *&v5[v3];
      v9 = v6;
      v10 = v8;
      v12.value.super.isa = a1;
      v12.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v12, v11);
    }
  }
}

id sub_10051DB10(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (!a1 || (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != (v5 & 1))
  {
    sub_10051CA5C();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_10051DD24()
{
  result = qword_1009777D0;
  if (!qword_1009777D0)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009777D0);
  }

  return result;
}

__n128 sub_10051DD84(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10051DDB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10051DE00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10051DE7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10051DEC4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double sub_10051DF20(double a1)
{
  v2 = v1;
  sub_10002A400((v1 + 56), *(v1 + 80));
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_10002A400(v2 + 12, v2[15]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_10002A400(v2 + 17, v2[20]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_10051E578(v1, v5);
  sub_10002A400(v5, v5[3]);
  AnyDimension.value(with:)();
  sub_100007000(v5);
  return a1;
}

uint64_t sub_10051E08C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_10002A400((v4 + 56), *(v4 + 80));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v11 = v10 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v12 = CGRectGetWidth(v31) - v11 - *(v4 + 40);
  sub_10002A400(v5 + 12, v5[15]);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetHeight(v32);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v28 = v13;
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetHeight(v33);
  v29 = *(v4 + 48);
  sub_10002A400(v5 + 17, v5[20]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v27 = v14;
  v16 = v15;
  v25 = v15;
  v26 = v17;
  v18 = v17;
  sub_10051E578(v4, v30);
  sub_10002A400(v30, v30[3]);
  AnyDimension.value(with:)();
  v20 = v19;
  sub_100007000(v30);
  if (v20 <= v28 + v29 + v16 - v18)
  {
    v20 = v28 + v29 + v16 - v18;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetMinX(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  CGRectGetMinY(v35);
  if (v27 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v27;
  }

  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v22 = CGRectGetWidth(v36) - v21;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v23 = v26 + v20 + CGRectGetMinY(v37) - v25;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = v22;
  v39.origin.y = v23;
  v39.size.width = v27;
  v39.size.height = v25;
  CGRectGetMinY(v39);
  sub_10002A400((v4 + 56), *(v4 + 80));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v4 + 136), *(v4 + 160));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v4 + 96), *(v4 + 120));
  CGRect.withLayoutDirection(using:relativeTo:)();
  return dispatch thunk of Placeable.place(at:with:)();
}

uint64_t sub_10051E420(uint64_t a1, uint64_t a2)
{
  v4 = sub_10051E5B0();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_10051E478()
{
  result = qword_100989DD8;
  if (!qword_100989DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989DD8);
  }

  return result;
}

unint64_t sub_10051E4D0()
{
  result = qword_100989DE0;
  if (!qword_100989DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989DE0);
  }

  return result;
}

unint64_t sub_10051E5B0()
{
  result = qword_100989DE8;
  if (!qword_100989DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989DE8);
  }

  return result;
}

void sub_10051E624()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchResultsContextCardView.Style(319);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_10051E714(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v4 - 8);
  v5 = LinkableText.styledText.getter();
  v6 = LinkableText.linkedSubstrings.getter();
  v7 = sub_100746314(v6, sub_100520344);

  sub_1004F78BC(v5, v7);

  if (a2)
  {
    sub_100005744(0, &qword_1009811E0);
    v8 = [v2 traitCollection];
    sub_10051F36C(a2);

    v9 = a2;
    v10 = UIButton.init(configuration:primaryAction:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = *&v2[qword_100989E00];
  *&v2[qword_100989E00] = v10;
  v12 = v10;
  sub_10051FC1C(v11);

  return [v2 setNeedsLayout];
}

uint64_t sub_10051E8C0()
{
  v36 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shadow();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsContextCardView.Style(0);
  sub_100005644(v14, qword_1009D28C0);
  v15 = sub_1000056A8(v14, qword_1009D28C0);
  if (qword_10096E868 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, qword_1009D28D8);
  v34 = v13;
  sub_1005211A8(v16, v13, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  v31 = objc_opt_self();
  v32 = [v31 secondarySystemGroupedBackgroundColor];
  if (qword_10096DA78 != -1)
  {
    swift_once();
  }

  v17 = v5;
  v18 = sub_1000056A8(v5, qword_1009CFDC8);
  v35 = v6;
  v19 = *(v6 + 16);
  v19(v37, v18, v17);
  if (qword_10096DA80 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v17, qword_1009CFDE0);
  v30 = v8;
  v19(v8, v20, v17);
  v21 = v17;
  if (qword_10096E188 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v1, qword_1009D1418);
  v23 = v2;
  v24 = *(v2 + 16);
  v24(v4, v22, v1);
  v25 = v33;
  v24(v33, v22, v1);
  v26 = [v31 labelColor];
  v27 = v36;
  *(v25 + *(v36 + 20)) = v26;
  *(v25 + *(v27 + 24)) = 0;
  *(v25 + *(v27 + 28)) = 0;
  sub_100521140(v34, v15, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  *(v15 + v14[5]) = v32;
  v28 = *(v35 + 32);
  v28(v15 + v14[6], v37, v21);
  v28(v15 + v14[7], v30, v21);
  (*(v23 + 32))(v15 + v14[8], v4, v1);
  return sub_100521140(v25, v15 + v14[9], type metadata accessor for SearchResultsContextCardView.Style.Message);
}

uint64_t sub_10051ED98()
{
  v0 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  sub_100005644(v8, qword_1009D28D8);
  v9 = sub_1000056A8(v8, qword_1009D28D8);
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  static SearchResultsContextCardLayout.Metrics.standard.getter();
  *v9 = 0x4038000000000000;
  (*(v5 + 32))(&v9[v8[5]], v7, v4);
  *&v9[v8[6]] = 0x4014000000000000;
  return (*(v1 + 32))(&v9[v8[7]], v3, v0);
}

id sub_10051EF70()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v12 = *(v11 + 20);
  v32 = *(v1 + *(v11 + 24));
  v13 = *(v1 + v12);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100989190] = _swiftEmptyArrayStorage;
  *&v15[qword_100989198] = 0;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = v9;
  v18 = v9;
  v19 = v5;
  (v10)(v4, v18, v5);
  v20 = v6;
  (*(v6 + 56))(v4, 0, 1, v19);
  v21 = v17;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  dispatch thunk of DynamicTypeTextView.lineBreakMode.setter();
  v36.receiver = v21;
  v36.super_class = v14;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v36, "textColor");
  v35.receiver = v21;
  v35.super_class = v14;
  objc_msgSendSuper2(&v35, "setTextColor:", v22);
  v34.receiver = v21;
  v34.super_class = v14;
  v24 = objc_msgSendSuper2(&v34, "textColor");
  if (v24)
  {
    v25 = v24;
    if (v23)
    {
      sub_100005744(0, &qword_100970180);
      v26 = v23;
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = v22;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  sub_1004F6A30();
  v26 = v23;
LABEL_9:

LABEL_10:
  v28 = v21;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v20 + 8))(v33, v19);
  return v29;
}

void sub_10051F36C(void *a1)
{
  v2 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  sub_100005744(0, &qword_1009730E0);
  type metadata accessor for SearchResultsContextCardView.Style(0);
  v5 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  static UIButton.Configuration.plain()();
  v6 = UIButton.Configuration.contentInsets.modify();
  *(v7 + 8) = 0;
  v6(v21, 0);
  v8 = UIButton.Configuration.contentInsets.modify();
  *(v9 + 24) = 0;
  v8(v21, 0);
  v10 = [a1 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UIButton.Configuration.title.setter();
  *(swift_allocObject() + 16) = v5;
  v11 = v5;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v12 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v13 = [a1 image];
  if (v13)
  {
    v14 = v13;
    UIButton.Configuration.image.setter();
    if ([v14 isSymbolImage])
    {
      v15 = [objc_opt_self() configurationWithFont:v11 scale:1];
      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    }

    v16 = [a1 title];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      UIButton.Configuration.imagePlacement.setter();
      type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
      UIButton.Configuration.imagePadding.setter();
    }
  }
}

uint64_t sub_10051F650@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1001469E0();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

char *sub_10051F6F0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = type metadata accessor for CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1009D28F0;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[qword_100989E00] = 0;
  v12 = a1;
  sub_1005211A8(a1, &v2[qword_100989DF0], type metadata accessor for SearchResultsContextCardView.Style);
  type metadata accessor for RoundedCornerView();
  v13 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v16 = *(v13 + 20);
  v41 = v16;
  v39 = v6;
  v14(v9, v15, v6);
  v38 = v14;
  v40 = v7 + 16;
  v17 = RoundedCornerView.__allocating_init(radius:style:)();
  v18 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v37[0] = v18;
  [v17 setBackgroundColor:*(v12 + v19)];
  *&v2[qword_100989E18] = v17;
  v37[1] = type metadata accessor for ShadowView();
  v14(v9, v12 + v16, v6);
  v21 = ShadowView.__allocating_init(radius:style:)();
  v22 = *(v20 + 24);
  v23 = type metadata accessor for Shadow();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v12 + v22;
  v27 = v12;
  v28 = v42;
  v25(v42, v26, v23);
  v29 = *(v24 + 56);
  v29(v28, 0, 1, v23);
  dispatch thunk of ShadowView.shadow.setter();
  *&v2[qword_100989E08] = v21;
  v38(v9, v27 + v41, v39);
  v30 = ShadowView.__allocating_init(radius:style:)();
  v25(v28, v27 + *(v37[0] + 28), v23);
  v29(v28, 0, 1, v23);
  dispatch thunk of ShadowView.shadow.setter();
  *&v2[qword_100989E10] = v30;
  *&v2[qword_100989DF8] = sub_10051EF70();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 addSubview:*&v35[qword_100989E08]];
  [v35 addSubview:*&v35[qword_100989E10]];
  [v35 addSubview:*&v35[qword_100989E18]];
  [v35 addSubview:*&v35[qword_100989DF8]];

  sub_100521210(v27);
  return v35;
}

void sub_10051FB64(uint64_t a1)
{
  v2 = qword_1009D28F0;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_100989E00) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10051FC1C(void *a1)
{
  v2 = qword_100989E00;
  v3 = *&v1[qword_100989E00];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v3;
  [v1 addSubview:v4];
  [v1 setNeedsLayout];
}

uint64_t sub_10051FCC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DynamicTypeLinkedTextView();
  Measurable.placeable.getter();
  v4 = *(v1 + qword_100989E00);
  if (v4)
  {
    sub_100005744(0, &qword_1009811E0);
  }

  v5 = v4;
  static SearchResultsContextCardLayout.Metrics.standard.getter();
  a1[3] = type metadata accessor for SearchResultsContextCardLayout();
  a1[4] = sub_10052126C(&qword_10098A058, &type metadata accessor for SearchResultsContextCardLayout);
  sub_1000056E0(a1);
  return SearchResultsContextCardLayout.init(metrics:message:button:)();
}

id sub_10051FE18()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = *&v0[qword_100989E08];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[qword_100989E10];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[qword_100989E18];
  [v0 bounds];

  return [v4 setFrame:?];
}

void sub_10051FF14()
{
  sub_1000284E4(v0 + qword_1009D28F0);
  sub_100521210(v0 + qword_100989DF0);

  v1 = *(v0 + qword_100989E18);
}

void sub_10051FFA4(uint64_t a1)
{
  sub_1000284E4(a1 + qword_1009D28F0);
  sub_100521210(a1 + qword_100989DF0);

  v2 = *(a1 + qword_100989E18);
}

uint64_t sub_1005200D0()
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_100005744(319, &qword_100970180);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Shadow();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FontUseCase();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SearchResultsContextCardView.Style.Message(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1005201D4()
{
  type metadata accessor for FontUseCase();
  if (v0 <= 0x3F)
  {
    sub_100005744(319, &qword_100970180);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1005202B0()
{
  result = type metadata accessor for CornerStyle();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SearchResultsContextCardLayout.Metrics();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100520354(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v105 = a3;
  v113 = sub_10002849C(&qword_10098A040);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v89 - v6;
  v7 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v109 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for UIButton.Configuration();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TextAppearance();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v89 - v12;
  __chkstk_darwin(v13);
  v99 = &v89 - v14;
  __chkstk_darwin(v15);
  v100 = &v89 - v16;
  __chkstk_darwin(v17);
  v101 = &v89 - v18;
  __chkstk_darwin(v19);
  v102 = &v89 - v20;
  v108 = type metadata accessor for SearchResultsContextCardLayout();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005744(0, &qword_1009730E0);
  v23 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v93 = a4;
  v24 = a4 + v23;
  v111 = a1;
  v25 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v116 = type metadata accessor for DynamicTypeLinkedTextView();
  v26 = *(v24 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v27 = [objc_opt_self() labelColor];
  v28 = LinkableText.styledText.getter();
  v29 = LinkableText.linkedSubstrings.getter();
  v117 = sub_100746314(v29, sub_100520344);

  v30 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v30 setAlignment:4];
  [v30 setLineBreakMode:v26];
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v32 = sub_100005744(0, &unk_100976610);
  *(inited + 40) = v30;
  *(inited + 64) = v32;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v22;
  *(inited + 80) = v25;
  v33 = NSParagraphStyleAttributeName;
  v34 = v30;
  v35 = NSFontAttributeName;
  v36 = v25;
  v37 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v128 = sub_100005744(0, &qword_100970180);
  *&aBlock = v27;
  sub_100056164(&aBlock, &v122);
  v95 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v131 = v37;
  sub_100051368(&v122, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v132 = v131;

  sub_100005744(0, &qword_100989250);
  v115 = v36;
  v96 = v28;
  v39 = dispatch thunk of StyledText.asAttributedString(using:)();
  v40._rawValue = v132;

  isa = NSAttributedString.init(attributedString:defaultAttributes:)(v39, v40).super.isa;
  v42 = v34;
  v43 = isa;
  v44 = [(objc_class *)v43 fullRange];
  [(objc_class *)v43 addAttribute:v33 value:v42 range:v44, v45];
  v94 = v42;

  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  *&v122 = 0;
  v46 = *(v117 + 16);
  v119 = NSLinkAttributeName;
  if (v46)
  {
    v118 = NSUnderlineStyleAttributeName;
    v47 = v117 + 72;
    do
    {
      v48 = *(v47 - 24);
      v120 = *(v47 - 8);

      v121 = v48;

      v49 = v43;
      v50 = sub_1004F81C4(&v122, v43);
      v51 = String._bridgeToObjectiveC()();
      v52 = [v50 rangeOfString:v51 options:4];
      v54 = v53;

      v43 = v49;
      if (v52 != NSNotFound.getter())
      {
        v55 = String._bridgeToObjectiveC()();
        [(objc_class *)v49 addAttribute:v119 value:v55 range:v52, v54];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v56 = Int._bridgeToObjectiveC()().super.super.isa;
          [(objc_class *)v49 addAttribute:v118 value:v56 range:v52, v54];
        }
      }

      v47 += 48;

      --v46;
    }

    while (v46);
  }

  v57 = [(objc_class *)v43 fullRange];
  v59 = v58;
  v60 = v43;
  v61 = swift_allocObject();
  v62 = v117;
  v61[2] = v116;
  v61[3] = v62;
  v63 = v115;
  v61[4] = v114;
  v61[5] = v63;
  v61[6] = &v132;
  v61[7] = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1004F8984;
  *(v64 + 24) = v61;
  v129 = sub_1002CA5FC;
  v130 = v64;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v127 = sub_1006607C0;
  v128 = &unk_1008C74B0;
  v65 = _Block_copy(&aBlock);
  v66 = v63;

  [(objc_class *)v60 enumerateAttribute:v119 inRange:v57 options:v59 usingBlock:0, v65];
  _Block_release(v65);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
  }

  else
  {
    v68 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v60];

    v69 = v122;

    v128 = type metadata accessor for LabelPlaceholder();
    v129 = &protocol witness table for LabelPlaceholder;
    sub_1000056E0(&aBlock);
    v70 = v66;
    v71 = v68;
    v72 = v97;
    TextAppearance.init()();
    v73 = v98;
    TextAppearance.withFont(_:)();
    v74 = *(v103 + 8);
    v75 = v104;
    v74(v72, v104);
    v76 = v99;
    TextAppearance.withTextAlignment(_:)();
    v74(v73, v75);
    v77 = v100;
    TextAppearance.withLineBreakMode(_:)();
    v74(v76, v75);
    v78 = v101;
    TextAppearance.withLineSpacing(_:)();
    v74(v77, v75);
    TextAppearance.withNumberOfLines(_:)();
    v74(v78, v75);
    LabelPlaceholder.Options.init(rawValue:)();
    v79 = v71;
    LabelPlaceholder.init(_:with:where:)();

    if (v105)
    {
      v80 = v105;
      v81 = v90;
      sub_10051F36C(v80);
      v82 = type metadata accessor for ButtonPlaceholder();
      v83 = swift_allocObject();
      *(v83 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v91 + 32))(v83 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v81, v92);

      v84 = sub_10052126C(&qword_10098A050, type metadata accessor for ButtonPlaceholder);
    }

    else
    {
      v83 = 0;
      v82 = 0;
      v84 = 0;
      v123 = 0;
      *(&v122 + 1) = 0;
    }

    *&v122 = v83;
    v124 = v82;
    v125 = v84;
    static SearchResultsContextCardLayout.Metrics.standard.getter();
    v85 = v106;
    SearchResultsContextCardLayout.init(metrics:message:button:)();
    sub_10052126C(&qword_10098A048, &type metadata accessor for SearchResultsContextCardLayout);
    v86 = v110;
    v87 = v108;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v88 = v113;
    dispatch thunk of Placeable.measure(toFit:with:)();

    (*(v112 + 8))(v86, v88);
    return (*(v107 + 8))(v85, v87);
  }

  return result;
}

uint64_t sub_100521140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005211A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100521210(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10052126C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005212B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for StaticDimension();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v27[-v7];
  __chkstk_darwin(v8);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_100005644(v10, qword_1009D2908);
  v31 = v10;
  v30 = sub_1000056A8(v10, qword_1009D2908);
  if (qword_10096DE50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v11, qword_1009D0A70);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v39);
  v29 = v16;
  v16(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  if (qword_10096DE68 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v11, qword_1009D0AB8);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v39);
  v29(v20, v3, v0);
  v21 = v32;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_100521730(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v42 - v15;
  if (qword_10096E870 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_1000056A8(v17, qword_1009D2908);
  sub_1005226A4(v18, &v5[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_metrics]);
  if (qword_10096DE50 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D0A70);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v43.receiver = v5;
  v43.super_class = v23;
  v24 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v34).super.isa;
  v36 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v36)
  {
    goto LABEL_8;
  }

  v37 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];

  if (v37)
  {
    [*&v28[v29] setFont:v37];
    v34 = v37;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v38 = [v28 traitCollection];
  UITraitCollection.prefersRightToLeftLayouts.getter();

  UILabel.alignment.setter();
  sub_10002849C(&qword_10097B110);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v42[3] = v23;
  v42[0] = v28;
  v40 = v28;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v42);
  return v40;
}

id sub_100521D28()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isRegularPad.getter();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  CGPoint.rounded(_:)();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(_:relativeTo:)();
  return [v10 setFrame:?];
}

uint64_t sub_100521FE0(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || (result = UITraitCollection.prefersRightToLeftLayouts.getter(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    UITraitCollection.prefersRightToLeftLayouts.getter();

    return UILabel.alignment.setter();
  }

  return result;
}

void sub_100522130()
{
  v1 = v0;
  if (qword_10096DE50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FontUseCase();
  sub_1000056A8(v2, qword_1009D0A70);
  v7 = [v0 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v7).super.isa;
  v4 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    if (!v5)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel] setFont:v5];
    v6 = v5;
  }

  else
  {
    v6 = v7;
  }
}

id sub_1005222D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100522384()
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_10052246C()
{
  result = type metadata accessor for StaticDimension();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1005224E0(double a1, double a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E870 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v8, qword_1009D2908);
  sub_1005226A4(v11, v10);
  UITraitCollection.isRegularPad.getter();
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  (*(v5 + 8))(v7, v4);
  if (a2 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  v13 = ceil(v12);
  sub_100522708(v10);
  return v13;
}

uint64_t sub_1005226A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100522708(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100522950()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_100522A7C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel) measurementsWithFitting:v0 in:?];
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 traitCollection];
      CustomLayoutView.measure(toFit:with:)();
    }
  }
}

id sub_100522BA0(uint64_t a1, char a2)
{
  v3 = v2;
  Ratings.status.getter();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
    }

    else
    {
      v12 = [objc_allocWithZone(type metadata accessor for ProductNoRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v13 = [v2 contentView];
      [v13 addSubview:v12];

      v14 = *&v2[v7];
      *&v2[v7] = v12;
      v9 = v12;

      v8 = 0;
    }

    v15 = *&v9[OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = String._bridgeToObjectiveC()();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
    }

    else
    {
      v18 = [objc_allocWithZone(type metadata accessor for ProductRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = [v3 contentView];
      [v19 addSubview:v18];

      v20 = *&v3[v10];
      *&v3[v10] = v18;
      v9 = v18;

      v11 = 0;
    }

    v21 = v11;
    sub_1001E1AA4(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell()
{
  result = qword_10098A170;
  if (!qword_10098A170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100522E44()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for AccountButton()
{
  result = qword_10098A1F0;
  if (!qword_10098A1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100522F2C()
{
  sub_10052914C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_10052304C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.personCropCircle(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_10098A180 = v5;
  return result;
}

uint64_t sub_100523144()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.mediaBorder.getter();
  qword_10098A188 = result;
  return result;
}

uint64_t sub_100523188()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_10098A190);
  sub_1000056A8(v4, qword_10098A190);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t (*sub_1005232E4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100529B7C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100055FCC;
}

void sub_100523374(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = qword_10098A1C0;
    if (*&Strong[qword_10098A1C0])
    {

      if (dispatch thunk of DispatchWorkItem.isCancelled.getter())
      {
        goto LABEL_16;
      }

      v6 = [v4 backgroundImageForState:0];
      if (v6)
      {
      }

      else
      {
        v7 = v4[qword_10098A1A8];
        v4[qword_10098A1A8] = 0;
        if (v7 == 1)
        {
          v8 = [v4 layer];
          [v8 setBorderColor:0];

          v9 = [v4 layer];
          [v9 setBorderWidth:0.0];

          [v4 setNeedsDisplay];
        }

        if (qword_10096E878 != -1)
        {
          swift_once();
        }

        [v4 setImage:qword_10098A180 forState:0];
        [v4 alpha];
        if (v10 <= COERCE_DOUBLE(1))
        {
          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v4;
          aBlock[4] = sub_10006038C;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008C75C8;
          v13 = _Block_copy(aBlock);
          v14 = v4;

          [v11 animateWithDuration:4 delay:v13 options:0 animations:0.33 completion:0.0];
          _Block_release(v13);
        }
      }

      *&v4[v5] = 0;

      if ((a2 & 1) == 0)
      {
LABEL_16:
      }

      else
      {
        v15 = swift_unknownObjectWeakLoadStrong();

        if (v15)
        {
          *(v15 + qword_100984B50) = 0;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

void sub_100523640()
{
  sub_10002B894(v0 + qword_1009D2930, &unk_1009796E0);
  sub_10001F64C(v0 + qword_1009D2938);

  v1 = qword_10098A1C8;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_10098A1E8);
}

id sub_100523728()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1005237A0(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_10052382C(uint64_t a1)
{
  sub_10002B894(a1 + qword_1009D2930, &unk_1009796E0);
  sub_10001F64C(a1 + qword_1009D2938);

  v2 = qword_10098A1C8;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_10098A1E8);
}

uint64_t sub_100523918()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_100221B78(0, 0, v4, &unk_1007D35E8, v8);
}

uint64_t sub_100523A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_10002849C(&qword_10098A2E0);
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[23] = v7;
  v5[24] = v6;

  return _swift_task_switch(sub_100523B24, v7, v6);
}

uint64_t sub_100523B24()
{
  v1 = [objc_opt_self() defaultService];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_100523C64;
  v2 = swift_continuation_init();
  v0[17] = sub_10002849C(&qword_10098A318);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100523EA8;
  v0[13] = &unk_1008C7898;
  v0[14] = v2;
  [v1 shouldUseModernUpdatesWithCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100523C64()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_100523D6C, v2, v1);
}

uint64_t sub_100523D6C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v10 = *(v0 + 144);

  v3 = *(v0 + 208);

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v10;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v3;
  *(v7 + 40) = v10;
  sub_100221B78(0, 0, v2, &unk_1007D3600, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100523EA8(uint64_t a1, char a2)
{
  **(*(*sub_10002A400((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}