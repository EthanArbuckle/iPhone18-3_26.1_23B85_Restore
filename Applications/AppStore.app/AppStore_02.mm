void sub_100039A30()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 32);
    if (UITraitCollection.isSizeClassCompact.getter())
    {

      [v1 _setContinuousCornerRadius:0.0];
    }
  }
}

id sub_100039A90()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 16))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha:v2];

  return [v1 setAlpha:v3];
}

id sub_100039AF8()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) setAlpha:0.0];
  }

  return result;
}

id sub_100039B28()
{
  if (*(v0 + 16) == 1)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer) setAlpha:1.0];
  }

  return result;
}

id sub_100039BA0()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_100039BC4()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_100039C08()
{
  v1 = 0.3;
  if (!*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_100039CB4(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_100039F40();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == 24)
            {
LABEL_33:
              i = 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_100039F40();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == 24)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

unint64_t sub_100039F40()
{
  result = qword_100983870;
  if (!qword_100983870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100983870);
  }

  return result;
}

void sub_100039F8C(void *a1, void *a2)
{
  if ((sub_100039CB4(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_100039F40();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_100039F40();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v10, v11);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

char *sub_10003A0DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_pageTraits] = 0;
  v15 = [objc_opt_self() effectWithStyle:16];
  v16 = objc_allocWithZone(UIVisualEffectView);
  v49 = v15;
  v17 = [v16 initWithEffect:v15];
  *&v4[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] = v17;
  v50.receiver = v4;
  v50.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  v20 = *&v18[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v21 = v18;
  [v20 setAccessibilityIgnoresInvertColors:1];
  [*&v18[v19] setContentMode:2];
  [v21 addSubview:*&v18[v19]];
  v22 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView;
  [*&v21[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] _setContinuousCornerRadius:20.0];
  [v21 addSubview:*&v21[v22]];
  v23 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v24 = *&v21[v23];
  v25 = objc_opt_self();
  v26 = v24;
  sub_10003D9F8([v25 whiteColor]);

  v27 = qword_10096DD28;
  v28 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_1009D0710);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v12, v30, v29);
  (*(v31 + 56))(v12, 0, 1, v29);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v32 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  v34 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  sub_100028BB8();
  v35 = v34;
  v36 = static UIColor.secondaryText.getter();
  v37 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v38 = [v36 resolvedColorWithTraitCollection:v37];

  [v35 setTextColor:v38];
  v39 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v40 = [v25 whiteColor];
  [v39 setTintColor:v40];

  v41 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v42 = [v25 whiteColor];
  [v41 setTextColor:v42];

  v43 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v44 = [v25 whiteColor];
  [v43 setTextColor:v44];

  v45 = *(*&v21[v23] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v46 = [v25 whiteColor];
  [v45 setTextColor:v46];

  [v21 addSubview:*&v21[v23]];
  return v21;
}

id sub_10003A6CC()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  [v0 bounds];
  ArtworkView.frame.setter();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView];
  [v1 bounds];

  CGRect.subtracting(insets:)();
  return [v3 setFrame:?];
}

uint64_t sub_10003A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a2;
  v7 = type metadata accessor for Artwork.Crop();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v73 = &v72 - v10;
  v11 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v11 - 8);
  v85 = &v72 - v12;
  v13 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v13 - 8);
  v84 = &v72 - v14;
  v15 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v15 - 8);
  v83 = &v72 - v16;
  v17 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v17 - 8);
  v82 = &v72 - v18;
  v19 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v19 - 8);
  v21 = &v72 - v20;
  v22 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v80 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v25 - 8);
  v81 = &v72 - v26;
  v27 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v27 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v86 = a3;
  inject<A, B>(_:from:)();
  v30 = v90;
  CondensedAdLockupWithIconBackground.backgroundArtwork.getter();
  v31 = [v3 traitCollection];
  sub_10003B5FC(v89, v31);
  v32 = Artwork.config(_:mode:prefersLayeredImage:)();

  v33 = *&v3[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v89 = a1;
  CondensedAdLockupWithIconBackground.backgroundArtwork.getter();
  Artwork.style.getter();
  v76 = v29;
  ArtworkView.style.setter();
  [v33 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100028BB8();
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  [v33 setContentMode:2];
  v34 = type metadata accessor for ArtworkView();
  v35 = sub_10003B998(&qword_100970E80, &type metadata accessor for ArtworkView);
  v87 = v32;
  v88 = v30;
  v74 = v35;
  v75 = v34;
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  v36 = *&v4[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView];
  [*&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
  v37 = CondensedAdLockupWithIconBackground.lockup.getter();
  v38 = *(v23 + 104);
  v38(v80, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
  v38(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_10003B998(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v39 = v81;
  AccessibilityConditional.init(value:axValue:)();
  v40 = sub_10002849C(&unk_100973240);
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = type metadata accessor for OfferStyle();
  v42 = v82;
  (*(*(v41 - 8) + 56))(v82, 1, 1, v41);
  v43 = type metadata accessor for OfferEnvironment();
  v44 = v83;
  (*(*(v43 - 8) + 56))(v83, 1, 1, v43);
  v45 = type metadata accessor for OfferTint();
  v46 = v84;
  (*(*(v45 - 8) + 56))(v84, 1, 1, v45);
  v47 = sub_10002849C(&unk_1009701A0);
  v48 = v85;
  (*(*(v47 - 8) + 56))(v85, 1, 1, v47);
  sub_1004F3190(v37, v36, v39, v86, 0, 0, v42, v44, v46, v48);
  v36[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_100776DD8();
  [v36 setNeedsLayout];
  sub_100776DD8();

  sub_10002B894(v48, &unk_100970150);
  sub_10002B894(v46, &unk_100973AD0);
  sub_10002B894(v44, &unk_100970160);
  sub_10002B894(v42, &qword_100973AE0);
  sub_10002B894(v39, &unk_100973230);
  v49 = *&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v49)
  {
    v50 = objc_opt_self();
    v51 = v49;
    v52 = [v50 whiteColor];
    [v51 setTextColor:v52];
  }

  v53 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v54 = *&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v54)
  {
    v55 = objc_opt_self();
    v56 = v54;
    v57 = [v55 whiteColor];
    [v56 setTextColor:v57];

    v58 = *&v36[v53];
    if (v58)
    {
      v59 = qword_10096DD58;
      v60 = v58;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for FontUseCase();
      v62 = sub_1000056A8(v61, qword_1009D07A0);
      v63 = *(v61 - 8);
      v64 = v73;
      (*(v63 + 16))(v73, v62, v61);
      (*(v63 + 56))(v64, 0, 1, v61);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v65 = *&v36[v53];
      if (v65)
      {
        [v65 setAccessibilityIgnoresInvertColors:1];
      }
    }
  }

  CondensedAdLockupWithIconBackground.lockup.getter();
  v66 = Lockup.icon.getter();

  if (v66)
  {
    swift_beginAccess();
    v67 = v77;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v78 + 8))(v67, v79);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v68 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v69 = *&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v69 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*&v36[v68] setContentMode:1];
    v70 = *&v36[v68];
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

double sub_10003B5FC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v21[-v8 - 8];
  PageGrid.columnWidth.getter();
  v11 = v10;
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D3ED0, v26);
  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D4040, v25);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v12 = v25;
  }

  else
  {
    v12 = v26;
  }

  sub_10003B8E8(v12, v21);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_100991028;
  }

  v14 = sub_1000056A8(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v24 & 1) == 0 && v22 == 0.0 && v23 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v22 = v16;
    v23 = v17;
    v24 = 0;
  }

  v18 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v21, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_10003B944(v21);
  sub_10003B944(v25);
  sub_10003B944(v26);
  return v11;
}

uint64_t sub_10003B998(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003B9E0()
{
  v1 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003BA9C(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v9);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for CondensedAdLockupWithIconBackground();
  result = swift_dynamicCast();
  if (result)
  {
    CondensedAdLockupWithIconBackground.backgroundArtwork.getter();
    v5 = [v2 traitCollection];
    sub_10003B5FC(a2, v5);
    Artwork.config(_:mode:prefersLayeredImage:)();

    type metadata accessor for ArtworkView();
    sub_10003B998(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    CondensedAdLockupWithIconBackground.lockup.getter();
    v6 = Lockup.icon.getter();

    if (v6)
    {
      if (qword_10096D418 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v7, qword_1009CE960);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      v8 = *(*&v2[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  return result;
}

unint64_t sub_10003BCF4()
{
  result = qword_1009701B8;
  if (!qword_1009701B8)
  {
    type metadata accessor for ShareSheetAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009701B8);
  }

  return result;
}

uint64_t sub_10003BD54(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = type metadata accessor for FlowOrigin();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for FlowPage();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for ReferrerData();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = type metadata accessor for ShareSheetAction();
  v32 = v28;

  static ActionMetrics.notInstrumented.getter();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v23 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v24 = sub_1005D01FC(v23, 1, v31);

  return v24;
}

uint64_t sub_10003C224(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10003C2D0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10003C3F8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10003C4A0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009701C0);
  sub_1000056A8(v4, qword_1009701C0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

id sub_10003C5F4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ADTrackingTransparency) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

BOOL sub_10003C660()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((ASKBagContract.enablePersonalizedAdsPrivacyNotice.getter() & 1) == 0 || (ASKBagContract.enablePersonalizedAdsPrivacyNoticeHighlightedOption.getter() & 1) == 0)
  {
    return 0;
  }

  v4 = ASKBagContract.personalizedAdsPrivacyNoticeEnabledRegions.getter();
  static Locale.current.getter();
  v5 = Locale.regionCode.getter();
  v7 = v6;
  v8 = *(v1 + 8);
  v9 = v8(v3, v0);
  if (!v7)
  {
    goto LABEL_8;
  }

  v19 = v5;
  v20 = v7;
  __chkstk_darwin(v9);
  *&v18[-16] = &v19;
  v10 = sub_10003C224(sub_10003D6A0, &v18[-32], v4);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = ASKBagContract.personalizedAdsPrivacyNoticeHighlightedOptionEnabledRegions.getter();
  static Locale.current.getter();
  v12 = Locale.regionCode.getter();
  v14 = v13;
  v15 = v8(v3, v0);
  if (!v14)
  {
LABEL_8:

    return 0;
  }

  v19 = v12;
  v20 = v14;
  __chkstk_darwin(v15);
  *&v18[-16] = &v19;
  v16 = sub_10003C224(sub_10003D6A0, &v18[-32], v11);

  return (v16 & 1) != 0;
}

uint64_t sub_10003C89C()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (static ResilientDeepLinkController.hasResilientDeepLinks(bag:)())
  {
    if (qword_10096CE60 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    if (qword_10096CE60 == -1)
    {
LABEL_6:
      v5 = type metadata accessor for OSLogger();
      sub_1000056A8(v5, qword_1009701C0);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();
LABEL_7:

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_10003C5F4();
  v8 = [v7 shouldPresentPersonalizedAdsOnboarding];

  if (!v8)
  {
    if (qword_10096CE60 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_1009701C0);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v17 = [*(v0 + 24) shouldPresentPersonalizedAdsOnboarding];
    v19[3] = &type metadata for Bool;
    LOBYTE(v19[0]) = v17;
    static LogMessage.safe(_:)();
    sub_10003D444(v19);
    Logger.info(_:)();
    goto LABEL_7;
  }

  v9 = ASKBagContract.enablePersonalizedAdsPrivacyNotice.getter();
  v10 = ASKBagContract.personalizedAdsPrivacyNoticeEnabledRegions.getter();
  static Locale.current.getter();
  v11 = Locale.regionCode.getter();
  v13 = v12;
  v14 = (*(v2 + 8))(v4, v1);
  if (!v13)
  {

    if (v9)
    {
      return 1;
    }

LABEL_16:
    if (qword_10096CE60 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  *&v18[-16] = v19;
  v15 = sub_10003C224(sub_10003D560, &v18[-32], v10);

  if (((v9 | v15) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_10003CEC4()
{
  v1 = sub_10003C5F4();
  v2 = [v1 latestVersionForPersonalizedAdsConsent];

  [*(v0 + 24) setAcknowledgedVersionForPersonalizedAds:v2];
  if (qword_10096CE60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009701C0);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v4 = [*(v0 + 24) acknowledgedVersionForPersonalizedAds];
  v6[3] = &type metadata for Int;
  v6[0] = v4;
  static LogMessage.safe(_:)();
  sub_10003D444(v6);
  Logger.info(_:)();
}

uint64_t sub_10003D078()
{

  sub_10003D614(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for AdPrivacyOnboardingStep.ButtonsStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10003D194()
{
  result = qword_100970288;
  if (!qword_100970288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970288);
  }

  return result;
}

Swift::Int sub_10003D244()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003D2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D57C(&qword_1009702A0);

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10003D310()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003D370(uint64_t a1, uint64_t a2)
{
  v5 = sub_10003D57C(&qword_1009702A0);

  return static OnboardingStep.== infix(_:_:)(a1, a2, v2, v5);
}

uint64_t sub_10003D444(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009711D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003D508(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003D57C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D5BC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003D6DC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D06B0);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_10003D8D0(void *a1, uint64_t *a2)
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

uint64_t sub_10003D978(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_10003E7B4();
LABEL_11:
}

void sub_10003D9F8(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100005744(0, &qword_100970180);
  a1 = a1;
  v4 = v7;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_10003E7B4();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

void sub_10003DAE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter();
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) = v3 & 1;
    if ((v3 & 1) != v4)
    {
      sub_10003E7B4();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    swift_unknownObjectRetain();

    dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) = 0;
    if (v7 == 1)
    {

      sub_10003E7B4();
    }
  }
}

void sub_10003DC7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter();
    v3 = v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp];
    v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp] = v2 & 1;
    if ((v2 & 1) != v3)
    {
      sub_10003E7B4();
    }
  }
}

char *sub_10003DD10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v74 = type metadata accessor for AutomationSemantics();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v17] = static ArtworkView.iconArtworkView.getter();
  v18 = OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel;
  if (qword_10096DD68 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D07D0);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v79 = *(v21 + 16);
  v79(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v75 = v11 + 104;
  v76 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = type metadata accessor for DynamicTypeLabel();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v19, qword_1009D06B0);
  v79(v16, v29, v19);
  v77(v16, 0, 1, v19);
  (v25)(v13, v76, v78);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v70 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
  v31 = v13;
  v71 = v25;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v69 = sub_1000056A8(v19, qword_1009D0710);
  v79(v16, v69, v19);
  v32 = v77;
  v77(v16, 0, 1, v19);
  v33 = v76;
  v67[1] = v23;
  v34 = v78;
  v67[0] = v22;
  v35 = v71;
  (v71)(v31, v76, v78);
  v36 = objc_allocWithZone(v26);
  v68 = v26;
  *&v4[v70] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  v79(v16, v69, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v68);
  *&v5[v38] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_1000F5284(0);
  v42 = &v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter];
  *v42 = 0u;
  v42[1] = 0u;
  v43 = &v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor;
  sub_100005744(0, &qword_100970180);
  *&v5[v44] = static UIColor.primaryText.getter();
  v45 = &v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine];
  *v45 = 0;
  v45[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp] = 0;
  v46 = type metadata accessor for BaseLockupView();
  v82.receiver = v5;
  v82.super_class = v46;
  v47 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v51 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v52 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  [v51 addSubview:*&v51[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView]];
  v53 = OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel;
  v54 = *&v51[OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v51 addSubview:*&v51[v53]];
  v55 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel;
  v56 = *&v51[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v51 addSubview:*&v51[v55]];
  v57 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  v59 = static UIColor.secondaryText.getter();
  [v58 setTextColor:v59];

  v60 = *&v51[v57];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v51 addSubview:*&v51[v57]];
  v61 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v62 = *&v51[v61];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v51[v61] setText:0];
  [*&v51[v61] setHidden:1];
  [v51 addSubview:*&v51[v61]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton]];
  v63 = *&v51[v52];
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v72;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v80);
  sub_10003D444(v81);
  UIView.setAutomationSemantics(_:)();

  (*(v73 + 8))(v65, v74);
  return v51;
}

id sub_10003E600()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = v0;
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();

    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10003E7B4()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_10003E9F4();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = String._bridgeToObjectiveC()();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = String._bridgeToObjectiveC()();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}

id sub_10003E9F4()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_10032FEB0(0xD000000000000014, 0x80000001007FB350, 0);
  if (qword_10096CE68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009702A8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  sub_1000056A8(v11, qword_1009D06B0);
  v12 = [v0 traitCollection];
  v13 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_100005744(0, &qword_100989250);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_10096CE70 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_1009702C0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_10003EE6C(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_10096DD00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for FontUseCase();
    v17 = sub_1000056A8(v16, qword_1009D0698);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v15;
    sub_10003D8B8(v20);
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
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_10003F12C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0788);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v15 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  sub_10003D8C4(v15);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100005744(0, &qword_100970180);
      v18 = v17;
      v19 = static UIColor.tertiaryText.getter();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

void sub_10003F3D4(id a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) == 1)
    {
      sub_10003E7B4();
    }

    return;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

void sub_10003F628()
{
  v49 = type metadata accessor for DirectionalTextAlignment();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v7) = static ArtworkView.iconArtworkView.getter();
  v8 = OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel;
  if (qword_10096DD68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D07D0);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v50 = *(v11 + 16);
  v50(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v45 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1 + 104;
  v44 = v16;
  (v16)(v3);
  v48 = type metadata accessor for DynamicTypeLabel();
  v17 = objc_allocWithZone(v48);
  *(v0 + v8) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v9, qword_1009D06B0);
  v20 = v12;
  v50(v6, v19, v9);
  v46 = v13;
  v42 = v14;
  v14(v6, 0, 1, v9);
  v44(v3, v45, v49);
  v21 = objc_allocWithZone(v48);
  v22 = v3;
  v23 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v43 = v0;
  *(v0 + v18) = v23;
  v41 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v40[0] = sub_1000056A8(v9, qword_1009D0710);
  v40[1] = v20;
  v50(v6, v40[0], v9);
  v24 = v42;
  v42(v6, 0, 1, v9);
  v25 = v45;
  v26 = v49;
  v27 = v44;
  v44(v22, v45, v49);
  v28 = objc_allocWithZone(v48);
  v29 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v30 = v43;
  *(v43 + v41) = v29;
  *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  v50(v6, v40[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v48);
  *(v30 + v32) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_1000F5284(0);
  v36 = (v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor;
  sub_100005744(0, &qword_100970180);
  *(v30 + v38) = static UIColor.primaryText.getter();
  v39 = (v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine);
  *v39 = 0;
  v39[1] = 0;
  *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003FC3C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003FDF4(char a1)
{
  v35.receiver = v1;
  v35.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_contextViewController];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8AppStore33PresentationContextViewController_hasPresentedViewController;
    if ((v1[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_hasPresentedViewController] & 1) == 0)
    {
      v5 = v3;
      v6 = [v5 popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 sourceView];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 window];
          if (v10)
          {
            v11 = v10;
            v12 = [v9 superview];
            if (v12)
            {
              v13 = v12;
              [v9 frame];
              [v13 convertRect:v11 toCoordinateSpace:?];
              v15 = v14;
              v17 = v16;
              v19 = v18;
              v21 = v20;
            }

            else
            {
              v15 = 0.0;
              v17 = 0.0;
              v19 = 0.0;
              v21 = 0.0;
            }

            v22 = [v1 view];
            [v7 setSourceView:v22];

            [v7 sourceRect];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v36.origin.x = v15;
            v36.origin.y = v17;
            v36.size.width = v19;
            v36.size.height = v21;
            MinX = CGRectGetMinX(v36);
            v32 = v15;
            v33 = MinX;
            v37.origin.x = v32;
            v37.origin.y = v17;
            v37.size.width = v19;
            v37.size.height = v21;
            MinY = CGRectGetMinY(v37);
            v38.origin.x = v24;
            v38.origin.y = v26;
            v38.size.width = v28;
            v38.size.height = v30;
            v39 = CGRectOffset(v38, v33, MinY);
            [v7 setSourceRect:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];

            v7 = v9;
          }

          else
          {
            v11 = v9;
          }

          v7 = v11;
        }
      }

      [v1 presentViewController:v5 animated:v1[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_animatedContext] completion:0];

      v1[v4] = 1;
    }
  }
}

void sub_1000400A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_contextViewController] = 0;

  v3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_hasPresentedViewController] = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_1000404AC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B19F8;
  v9 = _Block_copy(aBlock);
  sub_10000827C(a2);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

void sub_1000401D0(void (*a1)(uint64_t), int a2, char *a3)
{
  if (a1)
  {

    a1(v5);
    sub_10001F63C(a1);
  }

  v6 = [a3 presentedViewController];
  if (v6)
  {
LABEL_4:

    return;
  }

  if (a3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_isPresentingActivityViewController])
  {
    return;
  }

  v7 = *&a3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_dismissOverride];
  if (!v7)
  {
    v9 = [a3 presentingViewController];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    [v9 dismissViewControllerAnimated:0 completion:0];
    v6 = v10;
    goto LABEL_4;
  }

  v7(v8);

  sub_10001F63C(v7);
}

id sub_1000403F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000404B8@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = type metadata accessor for ArcadePageUrls();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EditorialPageKey();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = __chkstk_darwin(v3);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v59 - v6;
  v8 = sub_10002849C(&qword_100982460);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v63 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v60 = &v59 - v14;
  v15 = __chkstk_darwin(v13);
  v62 = &v59 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v59 - v18;
  v20 = __chkstk_darwin(v17);
  v61 = &v59 - v21;
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StoreTab.Identifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoreTab.identifier.getter();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    StoreTab.url.getter();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10002B894(v23, &qword_100982460);
      v33 = type metadata accessor for FlowDestination();
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination();
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination();
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = StoreTab.editorialPageUrls.getter();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_1003D7798(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v19, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v19, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v19, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v19, 1, 1, v24);
        v46 = v61;
        StoreTab.url.getter();
        if ((*(v25 + 48))(v19, 1, v24) != 1)
        {
          sub_10002B894(v19, &qword_100982460);
        }
      }

      v48 = StoreTab.editorialPageUrls.getter();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_1003D7798(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        StoreTab.url.getter();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10002B894(v55, &qword_100982460);
        }
      }

      sub_1000417F0(v46, v63);
      sub_1000417F0(v51, v64);
      v56 = v65;
      ArcadePageUrls.init(subscriberUrl:nonSubscriberUrl:)();
      sub_10002B894(v51, &qword_100982460);
      sub_10002B894(v46, &qword_100982460);
      v57 = *(sub_10002849C(&qword_1009703B8) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination();
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination();
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_10002849C(&unk_10097CCB0);
    v47 = v70;
    *v70 = 0;
    StoreTab.url.getter();
    v35 = type metadata accessor for FlowDestination();
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination();
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

uint64_t sub_100040EAC()
{
  v59 = type metadata accessor for NavigationTab();
  v1 = *(v59 - 8);
  __chkstk_darwin(v59);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StoreTab.Identifier();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = __chkstk_darwin(v4);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v58 - v7;
  v9 = sub_10002849C(&unk_1009703C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for SystemImage();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v61 = v0;
  StoreTab.imageIdentifier.getter();
  if (v19)
  {

    SystemImage.init(rawValue:)();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10002B894(v11, &unk_1009703C0);
      v20 = static SystemImage.loadIfExists(_:with:includePrivateImages:)();
    }

    else
    {

      (*(v13 + 32))(v18, v11, v12);
      v20 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v18, v12);
    }
  }

  else
  {
    v20 = 0;
  }

  StoreTab.identifier.getter();
  v21 = (*(v62 + 88))(v8, v63);
  if (v21 == enum case for StoreTab.Identifier.today(_:))
  {
    StoreTab.title.getter();
    if (!v22)
    {
      v23._object = 0x80000001007FB580;
      v23._countAndFlagsBits = 0xD000000000000010;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      localizedString(_:comment:)(v23, v24);
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      (*(v13 + 104))(v16, enum case for SystemImage.docTextImage(_:), v12);
      v25 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v16, v12);
    }

    v32 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v47 = v59;
    (*(v1 + 104))(v3, *v32, v59);
    v48 = v20;
    v49 = NavigationTab.intValue.getter();
    (*(v1 + 8))(v3, v47);
    v50 = objc_allocWithZone(UITabBarItem);
    v51 = String._bridgeToObjectiveC()();

    v52 = [v50 initWithTitle:v51 image:v25 tag:v49];

    v53 = v60;
    StoreTab.identifier.getter();
    v46 = UITabBarItem.withAXIdentifier(_:)();

    (*(v62 + 8))(v53, v63);
    return v46;
  }

  if (v21 == enum case for StoreTab.Identifier.games(_:))
  {
    StoreTab.title.getter();
    if (!v26)
    {
      v27._object = 0x80000001007FB560;
      v27._countAndFlagsBits = 0xD000000000000010;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      localizedString(_:comment:)(v27, v28);
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      (*(v13 + 104))(v16, enum case for SystemImage.rocketFill(_:), v12);
      v25 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v16, v12);
    }

    v32 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    StoreTab.title.getter();
    if (!v29)
    {
      v30._countAndFlagsBits = 0x5449545F45474150;
      v30._object = 0xEF535050415F454CLL;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      localizedString(_:comment:)(v30, v31);
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      (*(v13 + 104))(v16, enum case for SystemImage.app3Stack3DFill(_:), v12);
      v25 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v16, v12);
    }

    v32 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.updates(_:))
  {
    StoreTab.title.getter();
    if (!v33)
    {
      v34._countAndFlagsBits = 0xD000000000000012;
      v34._object = 0x80000001007FB540;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      localizedString(_:comment:)(v34, v35);
    }

    v36 = sub_10032FEB0(0x5473657461647055, 0xEE006E6F63496261, 0);
    v37 = [v36 _imageThatSuppressesAccessibilityHairlineThickening];

    v38 = v59;
    (*(v1 + 104))(v3, enum case for NavigationTab.updates(_:), v59);
    v39 = NavigationTab.intValue.getter();
    (*(v1 + 8))(v3, v38);
    v40 = objc_allocWithZone(UITabBarItem);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v40 initWithTitle:v41 image:v37 tag:v39];

    v43 = v60;
  }

  else
  {
    if (v21 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v21 == enum case for StoreTab.Identifier.arcade(_:))
      {
        StoreTab.title.getter();
        if (!v55)
        {
          v56._countAndFlagsBits = 0xD000000000000011;
          v56._object = 0x80000001007FB520;
          v57._countAndFlagsBits = 0;
          v57._object = 0xE000000000000000;
          localizedString(_:comment:)(v56, v57);
        }

        if (v20)
        {
          v25 = v20;
        }

        else
        {
          (*(v13 + 104))(v16, enum case for SystemImage.joystickcontrollerFill(_:), v12);
          v25 = static SystemImage.load(_:with:)();
          (*(v13 + 8))(v16, v12);
        }

        v32 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v21 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v62 + 8))(v8, v63);
        return 0;
      }

      goto LABEL_17;
    }

    v44 = v59;
    (*(v1 + 104))(v3, enum case for NavigationTab.search(_:), v59);
    v45 = NavigationTab.intValue.getter();
    (*(v1 + 8))(v3, v44);
    v42 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v45];
    v43 = v60;
  }

  StoreTab.identifier.getter();
  v46 = UITabBarItem.withAXIdentifier(_:)();

  (*(v62 + 8))(v43, v63);
  return v46;
}

uint64_t sub_1000417F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100982460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100041888()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.isRegularPad.getter();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_7:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_7;
    }
  }
}

id sub_1000419F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_100041CDC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 navigationBar];

      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v16.origin.x = v6;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v12;
      CGRectGetMaxY(v16);
    }
  }

  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v13;
    sub_1001125E8(v14);
  }
}

void sub_100041DF8()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {

    v2(v3, 1.0, 0.0);
    sub_10001F63C(v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      v7 = [v6 navigationBar];

      [v7 _setTitleOpacity:1.0];
    }
  }

  *(v1 + 88) = 0;
}

void sub_100041EBC(void *a1, void *a2)
{
  v32 = a2;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_1009704D8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10002849C(&qword_1009704E0);
  __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v2 + 32);
  v33 = v2;
  *(v2 + 32) = a1;
  a1;

  if (a1)
  {
    Uber.style.getter();
    v19 = *(v5 + 56);
    v19(v17, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v14, enum case for Uber.Style.inline(_:), v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_10004389C(v17, v9);
  sub_10004389C(v14, &v9[v20]);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) == 1)
  {
    sub_10002B894(v14, &qword_1009704E0);
    sub_10002B894(v17, &qword_1009704E0);
    if (v21(&v9[v20], 1, v4) == 1)
    {
      sub_10002B894(v9, &qword_1009704E0);
      goto LABEL_13;
    }
  }

  else
  {
    v22 = v31;
    sub_10004389C(v9, v31);
    if (v21(&v9[v20], 1, v4) != 1)
    {
      v26 = v30;
      (*(v5 + 32))(v30, &v9[v20], v4);
      sub_10004390C();
      v27 = v22;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v26, v4);
      sub_10002B894(v14, &qword_1009704E0);
      sub_10002B894(v17, &qword_1009704E0);
      v29(v27, v4);
      sub_10002B894(v9, &qword_1009704E0);
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_10002B894(v14, &qword_1009704E0);
    sub_10002B894(v17, &qword_1009704E0);
    (*(v5 + 8))(v22, v4);
  }

  sub_10002B894(v9, &qword_1009704D8);
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_100041CDC();
    (*((swift_isaMask & *v24) + 0x1A8))(v25, 0);
  }

LABEL_13:
  sub_1000423A0(v32);
}

void sub_1000423A0(void *a1)
{
  v3 = type metadata accessor for Uber.Style();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009704D8);
  __chkstk_darwin(v6);
  v8 = &v70 - v7;
  v9 = sub_10002849C(&qword_1009704E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  if (!*(v1 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [Strong collectionView];

  if (!v20)
  {
    return;
  }

  sub_100043850();
  v21 = a1;
  v75 = v6;
  v22 = v14;
  v23 = v17;
  v24 = v1;
  v25 = v11;
  v26 = v5;
  v27 = v8;
  v28 = v21;
  v29 = static NSObject.== infix(_:_:)();

  v74 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v75;
  if ((v29 & 1) == 0 || *(v33 + 88) != 1)
  {
    return;
  }

  [v74 contentOffset];
  v38 = v37;
  v39 = *(v33 + 32);
  if (v39)
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v39;
    sub_1001125E8(v40);
    v43 = v42;

    v44 = v38 / v43;
    if (v38 / v43 >= 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v44 = v37 / 0.0;
    v45 = 1.0;
    if (v37 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v44 < 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

LABEL_13:
  v46 = *(v33 + 40);
  if (v46)
  {

    v46(v47, v45, 0.0);
    sub_10001F63C(v46);
  }

  v48 = *(v33 + 72);
  v49 = v77;
  if (!v48)
  {
    goto LABEL_26;
  }

  v50 = *(v33 + 80);
  v51 = *(v33 + 32);
  v73 = *(v33 + 72);
  v71 = v31;
  v72 = v50;
  if (v51)
  {
    sub_10000827C(v48);

    Uber.style.getter();

    v52 = v76;
    v53 = *(v76 + 56);
    v53(v34, 0, 1, v49);
  }

  else
  {
    v52 = v76;
    v54 = *(v76 + 56);
    v70 = v32;
    v53 = v54;
    v54(v34, 1, 1, v77);
    v32 = v70;
  }

  (*(v52 + 104))(v35, enum case for Uber.Style.inline(_:), v49);
  v53(v35, 0, 1, v49);
  v55 = v49;
  v56 = *(v36 + 48);
  sub_10004389C(v34, v30);
  sub_10004389C(v35, v30 + v56);
  v57 = *(v52 + 48);
  if (v57(v30, 1, v55) == 1)
  {
    sub_10002B894(v35, &qword_1009704E0);
    sub_10002B894(v34, &qword_1009704E0);
    if (v57(v30 + v56, 1, v55) == 1)
    {
      sub_10002B894(v30, &qword_1009704E0);
      v59 = v73;
LABEL_28:
      if (v45 >= 0.5)
      {
        v64 = 0.35;
      }

      else
      {
        v64 = 0.2;
      }

      v58.n128_u64[0] = 1.0;
      if (v45 < 0.5)
      {
        v58.n128_f64[0] = 0.0;
      }

      v65 = v59;
      v59(v58, v64);
      sub_100042F8C(v74, *&v64, 0, v45);
      sub_10001F63C(v65);
      goto LABEL_34;
    }
  }

  else
  {
    sub_10004389C(v30, v32);
    if (v57(v30 + v56, 1, v55) != 1)
    {
      v60 = v76;
      v61 = v30 + v56;
      v62 = v71;
      (*(v76 + 32))(v71, v61, v55);
      sub_10004390C();
      LODWORD(v75) = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *(v60 + 8);
      v63(v62, v55);
      sub_10002B894(v35, &qword_1009704E0);
      sub_10002B894(v34, &qword_1009704E0);
      v63(v32, v55);
      sub_10002B894(v30, &qword_1009704E0);
      v59 = v73;
      if (v75)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_10002B894(v35, &qword_1009704E0);
    sub_10002B894(v34, &qword_1009704E0);
    (*(v76 + 8))(v32, v55);
  }

  sub_10002B894(v30, &qword_1009704D8);
  v59 = v73;
LABEL_25:
  sub_10001F63C(v59);
LABEL_26:
  sub_100042F8C(v74, 0, 1, v45);
LABEL_34:
  v66 = swift_unknownObjectWeakLoadStrong();
  if (v66)
  {
    v67 = v66;
    v68 = [v66 navigationController];

    if (v68)
    {
      v69 = [v68 navigationBar];

      [v69 _setTitleOpacity:v45];
    }
  }
}

uint64_t sub_100042AAC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = type metadata accessor for Uber.Style();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_1009704D8);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = sub_10002849C(&qword_1009704E0);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - v21;
  __chkstk_darwin(v23);
  v25 = v36 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v36[1] = v6;
    if (*(v6 + 32))
    {

      Uber.style.getter();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v36 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_10004389C(v25, v16);
    sub_10004389C(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10002B894(v22, &qword_1009704E0);
      sub_10002B894(v25, &qword_1009704E0);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10002B894(v16, &qword_1009704E0);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_10004389C(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10002B894(v22, &qword_1009704E0);
      sub_10002B894(v25, &qword_1009704E0);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10002B894(v16, &qword_1009704D8);
      goto LABEL_13;
    }

    (*(v11 + 32))(v13, &v16[v28], v10);
    sub_10004390C();
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v11 + 8);
    v35(v13, v10);
    sub_10002B894(v22, &qword_1009704E0);
    sub_10002B894(v25, &qword_1009704E0);
    v35(v19, v10);
    sub_10002B894(v16, &qword_1009704E0);
    if (v34)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = UITraitCollection.prefersAccessibilityLayouts.getter();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_100042F8C(void *a1, uint64_t a2, char a3, double a4)
{
  v9 = type metadata accessor for Uber.Style();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_1009704D8);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_10002849C(&qword_1009704E0);
  __chkstk_darwin(v15 - 8);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v41 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v44 = v4;
  if (v26)
  {

    Uber.style.getter();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_10004389C(v23, v14);
  sub_10004389C(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) == 1)
  {
    sub_10002B894(v19, &qword_1009704E0);
    sub_10002B894(v23, &qword_1009704E0);
    v30 = v29(&v14[v28], 1, v9);
    v31 = v44;
    if (v30 == 1)
    {
      result = sub_10002B894(v14, &qword_1009704E0);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v33 = v43;
  sub_10004389C(v14, v43);
  if (v29(&v14[v28], 1, v9) == 1)
  {
    sub_10002B894(v19, &qword_1009704E0);
    sub_10002B894(v23, &qword_1009704E0);
    (*(v10 + 8))(v33, v9);
    v31 = v44;
LABEL_12:
    result = sub_10002B894(v14, &qword_1009704D8);
    goto LABEL_13;
  }

  v35 = &v14[v28];
  v36 = v42;
  (*(v10 + 32))(v42, v35, v9);
  sub_10004390C();
  v37 = v33;
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v10 + 8);
  v39(v36, v9);
  sub_10002B894(v19, &qword_1009704E0);
  sub_10002B894(v23, &qword_1009704E0);
  v39(v37, v9);
  result = sub_10002B894(v14, &qword_1009704E0);
  v31 = v44;
  if (v38)
  {
LABEL_16:
    v34 = *(v31 + 56);
    if (!v34)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v34 = *(v31 + 40);
  if (!v34)
  {
    return result;
  }

LABEL_17:

  v34(v40, a4, v25);
  return sub_10001F63C(v34);
}

void sub_100043470(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_100043850();
        v13 = a1;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          if ((sub_100042AAC(v16, v18, v19, v20, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v22 = v21;
            [v13 _systemContentInset];
            v24 = v23;
            v25 = swift_unknownObjectWeakLoadStrong();
            v26 = 0.0;
            MaxY = 0.0;
            if (v25)
            {
              v28 = v25;
              v29 = [v25 navigationController];

              if (v29)
              {
                v30 = [v29 navigationBar];

                [v30 frame];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v51.origin.x = v32;
                v51.origin.y = v34;
                v51.size.width = v36;
                v51.size.height = v38;
                MaxY = CGRectGetMaxY(v51);
              }
            }

            v39 = *(v5 + 32);
            if (v39)
            {
              v40 = swift_unknownObjectWeakLoadStrong();
              v41 = v39;
              sub_1001125E8(v40);
              v43 = v42;

              v44 = *(v5 + 32);
              if (v44)
              {
                v26 = *(v44 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v43 = 0.0;
            }

            v45 = v43 + v26 - v24;
            v46 = *(a2 + 8);
            if (v45 >= 0.0)
            {
              if (v46 > v45)
              {
                return;
              }
            }

            else
            {
              if (v46 > 0.0)
              {
                return;
              }

              v45 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v47 = 0.07;
            }

            else
            {
              v47 = 0.5;
            }

            v48 = v45 * v47;
            v49 = v45 - MaxY;
            if (v46 <= v48)
            {
              v50 = -(v22 + v24);
            }

            else
            {
              v50 = v49;
            }

            *(a2 + 8) = v50;
          }
        }
      }
    }
  }
}

uint64_t sub_1000436F0()
{
  sub_10001F64C(v0 + 16);

  sub_10001F63C(*(v0 + 40));
  sub_10001F63C(*(v0 + 56));
  sub_10001F63C(*(v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_100043850()
{
  result = qword_1009704D0;
  if (!qword_1009704D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009704D0);
  }

  return result;
}

uint64_t sub_10004389C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009704E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004390C()
{
  result = qword_1009704E8;
  if (!qword_1009704E8)
  {
    type metadata accessor for Uber.Style();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009704E8);
  }

  return result;
}

uint64_t sub_100043964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_100043A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(v8);
  v4 = v9;
  v5 = v10;
  sub_10002A400(v8, v9);
  v6 = a3(v4, v5);
  sub_100007000(v8);
  return v6;
}

uint64_t sub_100043A7C(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = ProductNavigationBarMode.rawValue.getter();
  result = ProductNavigationBarMode.rawValue.getter();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_100043B7C()
{
  sub_10001F63C(*(v0 + 32));

  return swift_deallocClassInstance();
}

double sub_100043BF4()
{
  v0 = type metadata accessor for TimingCurve();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_1009705D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0.3;
  v9 = 0x3FA999999999999ALL;
  (*(v1 + 104))(v3, enum case for TimingCurve.linear(_:), v0);
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  (*(v5 + 8))(v7, v4);
  return v10;
}

double sub_100043E18()
{
  type metadata accessor for RoundedButton();
  sub_100043ED8(&qword_1009705E8, &type metadata accessor for RoundedButton);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v2)
  {
    return 0.0;
  }

  sub_100079F24();
  v0 = sub_10074943C();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100043ED8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100043F38(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews] = _swiftEmptyArrayStorage;
  static SearchTagsRibbonViewLayout.Metrics.standard.getter();
  *&v4[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels] = 0;
  v4[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute] = 2;
  v4[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_isInsideSearchAd] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10096CE78 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_1009705F0];
  sub_10002849C(&qword_10097B110);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B10D0;
  *(v16 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_10004416C(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000441A4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromSuperview];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = a1;

  v8 = *&v2[v4];

  result = SearchTagsRibbonViewLayout.Metrics.maximumNumberOfItems.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v8 + 16) >= result)
    {
      v10 = result;
    }

    else
    {
      v10 = *(v8 + 16);
    }

    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v2 addSubview:v13];
        --v10;
      }

      while (v10);
    }

    swift_unknownObjectRelease();

    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1000442B4()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100970658);
  __chkstk_darwin(v6 - 8);
  v49 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v52 = sub_10002849C(&qword_10096FC60);
  v11 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - v12;
  v13 = type metadata accessor for SearchTagsRibbonViewLayout();
  v40 = *(v13 - 8);
  v41 = v13;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54.receiver = v0;
  v54.super_class = ObjectType;
  v43 = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v14);
  v46 = v0;
  v16 = *&v0[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews];
  v17 = *(v16 + 16);

  v50 = v17;
  if (v17)
  {
    v19 = 0;
    v47 = v11;
    v48 = (v11 + 48);
    v20 = v16 + 40;
    v53 = _swiftEmptyArrayStorage;
    v21 = &unk_1007B1DD0;
    while (v19 < *(v16 + 16))
    {
      v22 = *(v20 - 8);
      swift_getObjectType();
      v23 = v22;
      v24 = v21;
      v25 = v49;
      dispatch thunk of MetadataRibbonItemView.searchLayoutContext.getter();
      v26 = v25;
      v21 = v24;
      sub_1000476A0(v26, v10, &qword_100970658);

      if ((*v48)(v10, 1, v52) == 1)
      {
        result = sub_10002B894(v10, &qword_100970658);
      }

      else
      {
        sub_1000476A0(v10, v51, &qword_10096FC60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1000333D0(0, *(v53 + 2) + 1, 1, v53);
        }

        v28 = *(v53 + 2);
        v27 = *(v53 + 3);
        if (v28 >= v27 >> 1)
        {
          v53 = sub_1000333D0(v27 > 1, v28 + 1, 1, v53);
        }

        v29 = v53;
        *(v53 + 2) = v28 + 1;
        result = sub_1000476A0(v51, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v28, &qword_10096FC60);
      }

      ++v19;
      v20 += 16;
      if (v50 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
LABEL_13:

    v30 = v46;
    (*(v38 + 16))(v37, &v46[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metrics], v39);
    v31 = v36;
    SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    v32 = v42;
    SearchTagsRibbonViewLayout.placeChildren(relativeTo:in:)();
    (*(v44 + 8))(v32, v45);
    v33 = &v30[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock];
    swift_beginAccess();
    v34 = *v33;
    if (*v33)
    {
      swift_endAccess();

      v34(v35);
      sub_10001F63C(v34);
      return (*(v40 + 8))(v31, v41);
    }

    else
    {
      (*(v40 + 8))(v31, v41);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000448B8(uint64_t a1)
{
  v30 = a1;
  v27 = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SearchTagsRibbonViewLayout();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100970658);
  __chkstk_darwin(v4 - 8);
  v33 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v36 = sub_10002849C(&qword_10096FC60);
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - v10;
  v29 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews);
  v12 = *(v11 + 16);

  v34 = v12;
  if (v12)
  {
    v14 = 0;
    v31 = v9;
    v32 = (v9 + 48);
    v15 = v11 + 40;
    v37 = _swiftEmptyArrayStorage;
    while (v14 < *(v11 + 16))
    {
      v16 = *(v15 - 8);
      swift_getObjectType();
      v17 = v16;
      v18 = v33;
      dispatch thunk of MetadataRibbonItemView.searchLayoutContext.getter();
      sub_1000476A0(v18, v8, &qword_100970658);

      if ((*v32)(v8, 1, v36) == 1)
      {
        result = sub_10002B894(v8, &qword_100970658);
      }

      else
      {
        sub_1000476A0(v8, v35, &qword_10096FC60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1000333D0(0, *(v37 + 2) + 1, 1, v37);
        }

        v20 = *(v37 + 2);
        v19 = *(v37 + 3);
        if (v20 >= v19 >> 1)
        {
          v37 = sub_1000333D0(v19 > 1, v20 + 1, 1, v37);
        }

        v21 = v37;
        *(v37 + 2) = v20 + 1;
        result = sub_1000476A0(v35, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20, &qword_10096FC60);
      }

      ++v14;
      v15 += 16;
      if (v34 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_13:

    (*(v25 + 16))(v24, v29 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metrics, v27);
    v22 = v23;
    SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)();
    SearchTagsRibbonViewLayout.measurements(fitting:in:)();
    return (*(v26 + 8))(v22, v28);
  }

  return result;
}

id sub_100044DF8(unint64_t a1, char a2, char *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for MetadataRibbonItemViewType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute) = a2;
  v12 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    while (1)
    {
      v29[1] = a3;
      v30 = v4;
      v13 = 0;
      v38 = a1;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v4 = (v9 + 88);
      a1 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
      v14 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
      v15 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
      LODWORD(v39) = enum case for MetadataRibbonItemViewType.starRating(_:);
      v35 = enum case for MetadataRibbonItemViewType.divider(_:);
      v36 = enum case for MetadataRibbonItemViewType.textLabel(_:);
      v31 = (v9 + 8);
      v32 = v11;
      v34 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
      while (v41)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a3 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = v30;
          *(v30 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = v42;

          v11 = 0;
          v8 = 0;
          v12 = _swiftEmptyArrayStorage;
          v23 = v38;
          while (1)
          {
            if (v41)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v11 >= *(v40 + 16))
              {
                goto LABEL_48;
              }

              v24 = *(v23 + 8 * v11 + 32);

              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            v43 = v24;
            sub_10004523C(&v43, v4, &v42);

            if (v42)
            {
              v39 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_10003406C(0, *(v12 + 2) + 1, 1, v12);
              }

              a1 = *(v12 + 2);
              v25 = *(v12 + 3);
              v26 = v39;
              if (a1 >= v25 >> 1)
              {
                v27 = sub_10003406C((v25 > 1), a1 + 1, 1, v12);
                v26 = v39;
                v12 = v27;
              }

              *(v12 + 2) = a1 + 1;
              *&v12[2 * a1 + 4] = v26;
            }

            ++v11;
            if (a3 == v9)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_8:
        v12 = v9;
        MetadataRibbonItem.viewContainerType.getter();
        v16 = (*v4)(v11, v8);
        if (v16 == a1 || v16 == v14 || v16 == v15 || v16 == v39 || v16 == v36 || v16 == v35 || v16 == v34)
        {
          v12 = &v42;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v11 = v32;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v31)(v11, v8);
        }

        ++v13;
        v9 = v37;
        if (a3 == v37)
        {
          goto LABEL_32;
        }
      }

      if (v13 < *(v40 + 16))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v9 = *(v38 + 8 * v13 + 32);

    a3 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_50:
  *(v4 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = v12;

LABEL_51:
  sub_1000441A4(v12);
  return [v4 setNeedsLayout];
}

uint64_t sub_10004523C@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for LabelPlaceholder();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DynamicTextAppearance();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v54 - v10;
  __chkstk_darwin(v11);
  v66 = &v54 - v12;
  v13 = sub_10002849C(&qword_10096FB98);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = *a1;
  result = sub_1002CC3DC();
  if (result)
  {
    v19 = result;
    v20 = v18;
    v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    dispatch thunk of MetadataRibbonItemView.apply(_:asPartOf:)();
    MetadataRibbonItem.id.getter();
    dispatch thunk of MetadataRibbonItemView.id.setter();
    MetadataRibbonItem.itemType.getter();
    v22 = type metadata accessor for MetadataRibbonItemType();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    dispatch thunk of MetadataRibbonItemView.itemType.setter();
    v58 = dispatch thunk of MetadataRibbonItem.maxCharacterCount.getter();
    v24 = v23;
    v25 = [a2 traitCollection];
    v61 = v20;
    v62 = a3;
    v59 = v21;
    v60 = v19;
    if (v24)
    {
    }

    else
    {
      v54 = v25;
      v55 = v24;
      v56 = a2;
      v57 = v16;
      v26 = v63;
      DynamicTextAppearance.init()();
      static CustomTextStyle<>.metadataRibbon.getter();
      if (qword_10096EE50 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for MetadataRibbonTextStyle();
      v28 = sub_1000056A8(v27, qword_1009D36F8);
      v72 = v27;
      v73 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
      v29 = sub_1000056E0(v71);
      (*(*(v27 - 8) + 16))(v29, v28, v27);
      v30 = v64;
      DynamicTextAppearance.withCustomTextStyle(_:)();
      v31 = v65;
      v32 = *(v65 + 8);
      v33 = v67;
      v32(v26, v67);
      sub_100007000(v71);
      v34 = v66;
      DynamicTextAppearance.withNumberOfLines(_:)();
      v32(v30, v33);
      v35._countAndFlagsBits = 77;
      v35._object = 0xE100000000000000;
      String.init(repeating:count:)(v35, v58);
      (*(v31 + 16))(v30, v34, v33);
      LabelPlaceholder.Options.init(rawValue:)();
      v36 = v68;
      LabelPlaceholder.init(_:with:where:)();
      v37 = v54;
      LabelPlaceholder.measure(toFit:with:)();

      (*(v69 + 8))(v36, v70);
      v32(v34, v33);
      v20 = v61;
      a3 = v62;
      a2 = v56;
      v21 = v59;
    }

    dispatch thunk of MetadataRibbonItemView.labelMaxWidth.setter();
    v58 = dispatch thunk of MetadataRibbonItem.truncationLegibilityCharacterCountThreshold.getter();
    v39 = v38;
    v40 = [a2 traitCollection];
    if (v39)
    {
    }

    else
    {
      v56 = v40;
      LODWORD(v57) = v39;
      v41 = v63;
      DynamicTextAppearance.init()();
      static CustomTextStyle<>.metadataRibbon.getter();
      if (qword_10096EE50 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for MetadataRibbonTextStyle();
      v43 = sub_1000056A8(v42, qword_1009D36F8);
      v72 = v42;
      v73 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
      v44 = sub_1000056E0(v71);
      (*(*(v42 - 8) + 16))(v44, v43, v42);
      v45 = v64;
      DynamicTextAppearance.withCustomTextStyle(_:)();
      v46 = v65;
      v47 = *(v65 + 8);
      v48 = v41;
      v49 = v67;
      v47(v48, v67);
      sub_100007000(v71);
      v50 = v66;
      DynamicTextAppearance.withNumberOfLines(_:)();
      v47(v45, v49);
      v51._countAndFlagsBits = 77;
      v51._object = 0xE100000000000000;
      String.init(repeating:count:)(v51, v58);
      (*(v46 + 16))(v45, v50, v49);
      LabelPlaceholder.Options.init(rawValue:)();
      v52 = v68;
      LabelPlaceholder.init(_:with:where:)();
      v53 = v56;
      LabelPlaceholder.measure(toFit:with:)();

      (*(v69 + 8))(v52, v70);
      v47(v50, v49);
      v20 = v61;
      a3 = v62;
      v21 = v59;
    }

    dispatch thunk of MetadataRibbonItemView.truncationLegibilityThreshold.setter();
    dispatch thunk of MetadataRibbonItem.allowsTruncation.getter();
    result = dispatch thunk of MetadataRibbonItemView.allowsTruncation.setter();
    *a3 = v21;
    a3[1] = v20;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_100045A48()
{
  swift_getObjectType();

  v1 = sub_1004849E0(v0, 0);

  return v1 & 1;
}

void sub_100045AB4()
{
  v0 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v0 - 8);
  v2 = v36 - v1;
  v3 = type metadata accessor for ImpressionMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *&v8[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels];
      if (v11)
      {
        v42 = v6;
        v38 = v8;
        v12 = *&v8[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews];
        v13 = *(v12 + 16);

        v47 = v13;
        if (v13)
        {
          v14 = 0;
          v15 = v11 & 0xFFFFFFFFFFFFFF8;
          if (v11 >= 0)
          {
            v16 = v11 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v16 = v11;
          }

          v36[1] = v16;
          v43 = (v4 + 48);
          v44 = v11 & 0xFFFFFFFFFFFFFF8;
          v39 = (v4 + 8);
          v40 = (v4 + 32);
          v17 = 32;
          v45 = v11 & 0xC000000000000001;
          v46 = v11 >> 62;
          v37 = v2;
          v41 = v11;
          while (v14 < *(v12 + 16))
          {
            v18 = *(v12 + v17);
            if (v46)
            {
              if (v14 == _CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_24;
              }
            }

            else if (v14 == *(v15 + 16))
            {
              goto LABEL_24;
            }

            if (v45)
            {
              v35 = v18;
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *(v15 + 16))
              {
                goto LABEL_29;
              }

              v19 = v18;
            }

            dispatch thunk of MetadataRibbonItem.impressionMetrics.getter();
            if ((*v43)(v2, 1, v3) == 1)
            {

              sub_10002B894(v2, &qword_100973D30);
            }

            else
            {
              v20 = v42;
              (*v40)(v42, v2, v3);
              if ([v18 isHidden])
              {
                (*v39)(v20, v3);
              }

              else
              {
                [v18 frame];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v29 = v3;
                v30 = v12;
                v31 = v10;
                v32 = v38;
                v33 = [v38 superview];
                v34 = v32;
                v10 = v31;
                v12 = v30;
                v3 = v29;
                v2 = v37;
                [v34 convertRect:v33 toView:{v22, v24, v26, v28}];

                ImpressionsCalculator.addElement(_:at:)();

                (*v39)(v20, v3);
              }
            }

            ++v14;
            v17 += 16;
            v15 = v44;
            if (v47 == v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
        }

        else
        {
LABEL_24:
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

uint64_t type metadata accessor for SearchTagsRibbonView()
{
  result = qword_100970628;
  if (!qword_100970628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004601C()
{
  result = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
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

uint64_t sub_10004612C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000461E4()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_100046240(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_100046300())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_100046448;
}

uint64_t sub_1000463A0()
{
  swift_getObjectType();

  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_1000463F8()
{
  swift_getObjectType();

  return NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
}

uint64_t sub_10004645C(void *a1)
{
  sub_10002A400(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (qword_10096CE78 != -1)
  {
    swift_once();
  }

  v3 = qword_1009705F0;
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    v3;
  }

  sub_100047650(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

uint64_t sub_100046528(unint64_t a1, int a2)
{
  v101 = a2;
  v3 = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v100 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchTagsRibbonViewLayout();
  v103 = *(v5 - 8);
  __chkstk_darwin(v5);
  v102 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for LabelPlaceholder();
  v7 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v120 - 8);
  __chkstk_darwin(v120);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v94 - v13;
  __chkstk_darwin(v14);
  v118 = &v94 - v15;
  v132 = sub_10002849C(&qword_10096FC60);
  v117 = *(v132 - 1);
  __chkstk_darwin(v132);
  v130 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v116 = &v94 - v18;
  __chkstk_darwin(v19);
  v133 = &v94 - v20;
  v124 = type metadata accessor for MetadataRibbonItemViewType();
  v21 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetadataRibbonItem();
  v125 = a1;
  result = Array.isNotEmpty.getter();
  if (result)
  {
    v115 = UITraitCollection.modifyingTraits(_:)();
    if (v125 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v99 = v5;
    if (result)
    {
      if (result >= 1)
      {
        v24 = 0;
        v113 = v125 & 0xC000000000000001;
        v112 = (v21 + 88);
        v95 = (v21 + 8);
        v110 = (v9 + 8);
        v109 = (v9 + 16);
        v108 = (v7 + 8);
        v25 = _swiftEmptyArrayStorage;
        v111 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v106 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v105 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v104 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v98 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v97 = enum case for MetadataRibbonItemViewType.divider(_:);
        v96 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v107 = v11;
        v114 = result;
        while (1)
        {
          if (v113)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v125 + 8 * v24 + 32);
          }

          v27 = v123;
          MetadataRibbonItem.viewContainerType.getter();
          v28 = (*v112)(v27, v124);
          v128 = v25;
          v129 = v24;
          if (v28 == v111)
          {
            break;
          }

          if (v28 == v106)
          {
            v29 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v30 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v31 = &unk_100972E90;
            goto LABEL_24;
          }

          if (v28 == v105)
          {
            v29 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v30 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v31 = &unk_100970648;
            goto LABEL_24;
          }

          if (v28 == v104)
          {
            v29 = type metadata accessor for MetadataRibbonStarRatingView();
            v30 = type metadata accessor for MetadataRibbonStarRatingView;
            v31 = &unk_100972EA0;
            goto LABEL_24;
          }

          if (v28 == v98)
          {
            v29 = type metadata accessor for MetadataRibbonTagView();
            v30 = type metadata accessor for MetadataRibbonTagView;
            v31 = &unk_100970640;
            goto LABEL_24;
          }

          if (v28 == v97)
          {
            v29 = type metadata accessor for MetadataRibbonBarView();
            v30 = type metadata accessor for MetadataRibbonBarView;
            v31 = &unk_100972E80;
            goto LABEL_24;
          }

          if (v28 == v96)
          {
            v29 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v30 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v31 = &unk_100970638;
            goto LABEL_24;
          }

          (*v95)(v123, v124);
LABEL_37:
          if (v114 == ++v24)
          {
            goto LABEL_41;
          }
        }

        v29 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
        v30 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v31 = &unk_100970650;
LABEL_24:
        v32 = sub_100047608(v31, v30);
        v33 = swift_allocObject();
        v33[2] = v29;
        v33[3] = v32;
        v33[4] = v26;
        v34 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();

        v35 = LayoutViewPlaceholder.init(measureWith:)();
        v36 = v133;
        v37 = v132[20];
        MetadataRibbonItem.id.getter();
        *(v36 + 64) = v34;
        *(v36 + 72) = &protocol witness table for LayoutViewPlaceholder;
        *(v36 + 40) = v35;
        *(v36 + 80) = dispatch thunk of static MetadataRibbonItemView.shouldForceIntrinsicSizeDuringLayout.getter() & 1;
        MetadataRibbonItem.itemType.getter();
        v38 = type metadata accessor for MetadataRibbonItemType();
        (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
        v39 = dispatch thunk of MetadataRibbonItem.maxCharacterCount.getter();
        v41 = v40;
        v42 = 0;
        v43 = 0;
        v131 = v26;
        if ((v40 & 1) == 0)
        {
          v44 = v39;
          DynamicTextAppearance.init()();
          static CustomTextStyle<>.metadataRibbon.getter();
          if (qword_10096EE50 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for MetadataRibbonTextStyle();
          v46 = sub_1000056A8(v45, qword_1009D36F8);
          v135 = v45;
          v136 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
          v47 = sub_1000056E0(&v134);
          (*(*(v45 - 8) + 16))(v47, v46, v45);
          v48 = v119;
          DynamicTextAppearance.withCustomTextStyle(_:)();
          v49 = *v110;
          v50 = v120;
          (*v110)(v11, v120);
          sub_100007000(&v134);
          v51 = v118;
          DynamicTextAppearance.withNumberOfLines(_:)();
          v49(v48, v50);
          v52._countAndFlagsBits = 77;
          v52._object = 0xE100000000000000;
          String.init(repeating:count:)(v52, v44);
          (*v109)(v48, v51, v50);
          LabelPlaceholder.Options.init(rawValue:)();
          v53 = v121;
          LabelPlaceholder.init(_:with:where:)();
          LabelPlaceholder.measure(toFit:with:)();
          v43 = v54;
          (*v108)(v53, v122);
          v49(v51, v50);
        }

        v55 = v133 + v132[24];
        *v55 = v43;
        *(v55 + 8) = v41 & 1;
        v56 = dispatch thunk of MetadataRibbonItem.truncationLegibilityCharacterCountThreshold.getter();
        v58 = v57;
        if ((v57 & 1) == 0)
        {
          v59 = v56;
          DynamicTextAppearance.init()();
          static CustomTextStyle<>.metadataRibbon.getter();
          if (qword_10096EE50 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for MetadataRibbonTextStyle();
          v61 = sub_1000056A8(v60, qword_1009D36F8);
          v135 = v60;
          v136 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
          v62 = sub_1000056E0(&v134);
          (*(*(v60 - 8) + 16))(v62, v61, v60);
          v63 = v119;
          DynamicTextAppearance.withCustomTextStyle(_:)();
          v64 = *v110;
          v65 = v120;
          (*v110)(v11, v120);
          sub_100007000(&v134);
          v66 = v118;
          DynamicTextAppearance.withNumberOfLines(_:)();
          v64(v63, v65);
          v67._countAndFlagsBits = 77;
          v67._object = 0xE100000000000000;
          String.init(repeating:count:)(v67, v59);
          (*v109)(v63, v66, v65);
          LabelPlaceholder.Options.init(rawValue:)();
          v68 = v121;
          LabelPlaceholder.init(_:with:where:)();
          LabelPlaceholder.measure(toFit:with:)();
          v42 = v69;
          (*v108)(v68, v122);
          v64(v66, v65);
        }

        v70 = v132;
        v71 = v133;
        v72 = v133 + v132[28];
        v73 = v132[32];
        *v72 = v42;
        *(v72 + 8) = v58 & 1;
        *(v71 + v73) = dispatch thunk of MetadataRibbonItem.allowsTruncation.getter();
        v74 = v116;
        sub_100047598(v71, v116);
        v75 = *(v74 + 80);
        v76 = v70[20];
        v77 = v70[24];
        v127 = *(v74 + v77);
        v126 = *(v74 + v77 + 8);
        v78 = v70[28];
        v79 = *(v74 + v78);
        v80 = *(v74 + v78 + 8);
        v81 = v70[32];
        v82 = *(v74 + v81);
        v83 = v130;
        v84 = v130 + v77;
        v85 = v130 + v78;
        v86 = *(v74 + 16);
        *v130 = *v74;
        v83[1] = v86;
        *(v83 + 4) = *(v74 + 32);
        sub_100005A38((v74 + 40), v83 + 40);
        *(v83 + 80) = v75;
        sub_1000476A0(v74 + v76, v83 + v76, &qword_10096FB98);
        *v84 = v127;
        v84[8] = v126;
        *v85 = v79;
        v85[8] = v80;
        *(v83 + v81) = v82;
        v25 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1000333D0(0, *(v25 + 2) + 1, 1, v25);
        }

        v24 = v129;
        v88 = *(v25 + 2);
        v87 = *(v25 + 3);
        v11 = v107;
        if (v88 >= v87 >> 1)
        {
          v25 = sub_1000333D0(v87 > 1, v88 + 1, 1, v25);
        }

        *(v25 + 2) = v88 + 1;
        sub_1000476A0(v130, v25 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v88, &qword_10096FC60);
        sub_10002B894(v133, &qword_10096FC60);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
LABEL_41:
      static SearchTagsRibbonViewLayout.Metrics.standard.getter();
      v89 = v102;
      SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)();
      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1007B0B70;
      v91 = v115;
      *(v90 + 32) = v115;
      v92 = v91;
      v93 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      SearchTagsRibbonViewLayout.measurements(fitting:in:)();

      return (*(v103 + 8))(v89, v99);
    }
  }

  return result;
}

uint64_t sub_100047598(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100047650(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000476A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100047708()
{
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  static SearchTagsRibbonViewLayout.Metrics.standard.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute) = 2;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_isInsideSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsCalculator) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_1000477D0(uint64_t a1, int a2)
{
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareSheetData.Metadata();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = &_swiftEmptyArrayStorage;
  ShareSheetData.metadata.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for ShareSheetData.Metadata.article(_:))
  {
    LODWORD(v106) = a2;
    v44 = a1;
    if (v13 == enum case for ShareSheetData.Metadata.product(_:))
    {
      v107 = v6;
      v108 = v5;
      (*(v10 + 96))(v12, v9);
      v45 = *v12;
      sub_10002849C(&unk_100993620);
      inited = swift_initStackObject();
      v103 = xmmword_1007B10D0;
      *(inited + 16) = xmmword_1007B10D0;
      v47 = UIActivityTypeSaveToNotes;
      *(inited + 32) = UIActivityTypeSaveToNotes;
      v48 = v47;
      v49 = sub_1000836E4(inited);
      swift_setDeallocating();
      sub_100048924(inited + 32);
      v50 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

      v51 = sub_100714990(v2, a1, v49);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v104 = v51;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v105 = v45;
      v52 = ShareSheetProductMetadata.icon.getter();
      v53 = swift_initStackObject();
      *(v53 + 16) = v103;
      *(v53 + 32) = v48;
      v54 = v53 + 32;
      v55 = sub_1000836E4(v53);
      swift_setDeallocating();
      sub_100048924(v54);
      v56 = type metadata accessor for ArtworkActivityItemProvider();
      v57 = objc_allocWithZone(v56);
      v58 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_imageBox;
      v114 = 0;
      sub_10002849C(&qword_100970660);
      swift_allocObject();
      *&v57[v58] = Box.init(value:)();
      *&v57[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artwork] = v52;
      *&v57[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader] = v44;

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.isSquare.getter();
      (*(v107 + 8))(v8, v108);
      Artwork.size.getter();
      CGSize.fitting(_:mode:)();
      *&v57[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)();
      if (qword_10096E4E0 != -1)
      {
        swift_once();
      }

      v59 = qword_100986E48;

      sub_100048834(v55, v59);
      *&v57[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes] = v60;
      v57[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = v106 & 1;
      v61 = [objc_allocWithZone(UIImage) init];
      v112.receiver = v57;
      v112.super_class = v56;
      v62 = objc_msgSendSuper2(&v112, "initWithPlaceholderItem:", v61);

      sub_10002849C(&qword_100973210);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1007B0B70;
      *(v63 + 32) = *&v62[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig];
      v64 = v62;

      ArtworkLoader.prefetchArtwork(using:)(v63);

      v65 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v116;
      v66 = ShareSheetProductMetadata.notesMetadata.getter();
      v67 = v104;
      if (!v66)
      {

        return v28;
      }

      v68 = v66;
      v69 = type metadata accessor for NotesMetadataActivityItemProvider();
      v70 = objc_allocWithZone(v69);
      *&v70[OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1007B1DE0;
      *&v70[OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider_metadata] = v68;

      v71 = String._bridgeToObjectiveC()();
      v111.receiver = v70;
      v111.super_class = v69;
      v72 = objc_msgSendSuper2(&v111, "initWithPlaceholderItem:", v71);

      v73 = v72;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_38;
    }

    if (v13 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v10 + 8))(v12, v9);
      return &_swiftEmptyArrayStorage;
    }

    v108 = v5;
    (*(v10 + 96))(v12, v9);
    v74 = *v12;
    v75 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

    v76 = sub_100714990(v2, a1, &_swiftEmptySetSingleton);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v106 = v76;
    v107 = v6;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v77 = ShareSheetAppEventMetadata.text.getter();
    v79 = v78;
    v80 = type metadata accessor for TextActivityItemProvider();
    v81 = objc_allocWithZone(v80);
    v82 = &v81[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_text];
    *v82 = v77;
    v82[1] = v79;
    v83 = qword_10096D1A0;

    if (v83 != -1)
    {
      swift_once();
    }

    v84 = qword_1009766E8;

    sub_100048834(&_swiftEmptySetSingleton, v84);
    *&v81[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_excludedActivityTypes] = v85;
    v86 = String._bridgeToObjectiveC()();

    v115.receiver = v81;
    v115.super_class = v80;
    v87 = objc_msgSendSuper2(&v115, "initWithPlaceholderItem:", v86);

    v27 = v87;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = v116;
    v88 = ShareSheetAppEventMetadata.artwork.getter();
    if (v88)
    {
      v89 = v88;
      v105 = v74;
      sub_10002849C(&unk_100993620);
      v90 = swift_initStackObject();
      *(v90 + 16) = xmmword_1007B10D0;
      v91 = UIActivityTypeSaveToNotes;
      *(v90 + 32) = UIActivityTypeSaveToNotes;
      v92 = v91;
      v104 = sub_1000836E4(v90);
      swift_setDeallocating();
      sub_100048924(v90 + 32);
      v93 = type metadata accessor for ArtworkActivityItemProvider();
      v94 = objc_allocWithZone(v93);
      v95 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_imageBox;
      v114 = 0;
      sub_10002849C(&qword_100970660);
      swift_allocObject();

      *&v94[v95] = Box.init(value:)();
      *&v94[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artwork] = v89;
      *&v94[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader] = a1;

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.isSquare.getter();
      (*(v107 + 8))(v8, v108);
      Artwork.size.getter();
      CGSize.fitting(_:mode:)();
      *&v94[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)();
      if (qword_10096E4E0 != -1)
      {
        swift_once();
      }

      v96 = qword_100986E48;

      sub_100048834(v104, v96);
      *&v94[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes] = v97;
      v94[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
      v98 = [objc_allocWithZone(UIImage) init];
      v113.receiver = v94;
      v113.super_class = v93;
      v99 = objc_msgSendSuper2(&v113, "initWithPlaceholderItem:", v98);

      sub_10002849C(&qword_100973210);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1007B0B70;
      *(v100 + 32) = *&v99[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig];
      v101 = v99;

      ArtworkLoader.prefetchArtwork(using:)(v100);

      v43 = v101;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_37;
    }

LABEL_39:

    return v28;
  }

  v108 = v5;
  (*(v10 + 96))(v12, v9);
  v14 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

  v15 = sub_100714990(v2, a1, &_swiftEmptySetSingleton);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v106 = v15;
  v107 = v6;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v16 = ShareSheetArticleMetadata.text.getter();
  v18 = v17;
  v19 = type metadata accessor for TextActivityItemProvider();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_text];
  *v21 = v16;
  v21[1] = v18;
  v22 = qword_10096D1A0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1009766E8;

  sub_100048834(&_swiftEmptySetSingleton, v23);
  *&v20[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_excludedActivityTypes] = v24;
  v25 = String._bridgeToObjectiveC()();

  v110.receiver = v20;
  v110.super_class = v19;
  v26 = objc_msgSendSuper2(&v110, "initWithPlaceholderItem:", v25);

  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = v116;
  v29 = ShareSheetArticleMetadata.artwork.getter();
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = v29;
  sub_10002849C(&unk_100993620);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1007B10D0;
  v32 = UIActivityTypeSaveToNotes;
  *(v31 + 32) = UIActivityTypeSaveToNotes;
  v33 = v32;
  v105 = sub_1000836E4(v31);
  swift_setDeallocating();
  sub_100048924(v31 + 32);
  v34 = type metadata accessor for ArtworkActivityItemProvider();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_imageBox;
  v114 = 0;
  sub_10002849C(&qword_100970660);
  swift_allocObject();

  *&v35[v36] = Box.init(value:)();
  *&v35[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artwork] = v30;
  *&v35[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader] = a1;

  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  AspectRatio.isSquare.getter();
  (*(v107 + 8))(v8, v108);
  Artwork.size.getter();
  CGSize.fitting(_:mode:)();
  *&v35[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)();
  if (qword_10096E4E0 != -1)
  {
    swift_once();
  }

  v37 = qword_100986E48;

  sub_100048834(v105, v37);
  *&v35[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes] = v38;
  v35[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v39 = [objc_allocWithZone(UIImage) init];
  v109.receiver = v35;
  v109.super_class = v34;
  v40 = objc_msgSendSuper2(&v109, "initWithPlaceholderItem:", v39);

  sub_10002849C(&qword_100973210);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007B0B70;
  *(v41 + 32) = *&v40[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig];
  v42 = v40;

  ArtworkLoader.prefetchArtwork(using:)(v41);

  v43 = v42;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_37:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_38:

  return v116;
}

void sub_100048834(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1000818C0(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100048924(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000489D0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SeparatorSupplementaryView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v5 = String._bridgeToObjectiveC()();

    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_100048AB4(void *a1)
{
  v1 = a1;
  sub_1000489D0();
}

double sub_100048AFC()
{
  v1 = [v0 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v3 = v2;

  return v3;
}

void sub_100048B4C(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100970D40);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Uber.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of BaseGenericPagePresenter.uber.getter())
  {
    (*(v7 + 104))(v9, enum case for Uber.Style.above(_:), v6);
    v10 = type metadata accessor for Uber.AssetType();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for Uber();
    swift_allocObject();
    swift_retain_n();
    v11 = Uber.init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)();
    v12 = *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
    *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber] = v11;

    sub_1001868CC(v12);
  }

  v13 = [v1 collectionView];
  sub_100450038(a1, v13);

  sub_100049E9C();
}

double sub_100048D94(void *a1)
{
  v1 = a1;
  sub_100048DF0();
  v3 = v2;

  return v3;
}

void sub_100048DF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 pageContainerSize];
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.isRegularPad.getter();

  if ((v6 & 1) != 0 && v4 > 672.0)
  {
    sub_100041CD0();
  }

  else
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "pageMarginInsets");
  }
}

id sub_100048ED0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007FB9D0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = String._bridgeToObjectiveC()();
    type metadata accessor for SeparatorSupplementaryView();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v10 = String._bridgeToObjectiveC()();

    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15.receiver = v4;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v13, v11.super.isa);
  }

  return v12;
}

id sub_100049038(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_100048ED0(v12, v9, v11);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void sub_100049178(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34[1] = a5;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for ComponentSeparator.Position();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ComponentSeparator();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34[0] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  if (a3 == 0xD000000000000039 && 0x80000001007FB9D0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (type metadata accessor for SeparatorSupplementaryView(), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = v19;
    (*(v11 + 104))(v36, enum case for ComponentSeparator.Position.top(_:), v10);
    v35 = a2;
    [v6 pageContainerSize];
    v22 = v21;
    v23 = [v6 traitCollection];
    v24 = UITraitCollection.isRegularPad.getter();

    if ((v24 & 1) != 0 && v22 > 672.0)
    {
      sub_100041CD0();
    }

    else
    {
      v39.receiver = v6;
      v39.super_class = ObjectType;
      objc_msgSendSuper2(&v39, "pageMarginInsets");
    }

    [v6 pageContainerSize];
    v28 = v27;
    v29 = [v6 traitCollection];
    v30 = UITraitCollection.isRegularPad.getter();

    if ((v30 & 1) != 0 && v28 > 672.0)
    {
      sub_100041CD0();
    }

    else
    {
      v38.receiver = v6;
      v38.super_class = ObjectType;
      objc_msgSendSuper2(&v38, "pageMarginInsets");
    }

    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v31 = v34[0];
    (*(v14 + 16))(v34[0], v18, v13);
    v32 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
    swift_beginAccess();
    (*(v14 + 24))(v20 + v32, v31, v13);
    swift_endAccess();
    sub_100503F40();

    v33 = *(v14 + 8);
    v33(v31, v13);
    v33(v18, v13);
  }

  else
  {
    v25 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v40.receiver = v6;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", v35, a2, v25, isa);
  }
}

uint64_t sub_1000495BC(void *a1, uint64_t a2, void *a3, void *a4)
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
  sub_100049178(v14, v15, v11, v13, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for VersionHistoryViewController()
{
  result = qword_100970690;
  if (!qword_100970690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double *sub_100049784()
{
  v1 = type metadata accessor for ShelfBackground();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v10 = *(v0 + qword_1009728F0);
  v11 = (*((swift_isaMask & *v0) + 0x4D8))(v6);
  v12 = sub_100055A98(v11);
  if (v12)
  {
    v13 = v12;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v35;
  }

  v14 = sub_1000555E8(v0, v10);
  if (v14)
  {
    v15 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v35;
  }

  type metadata accessor for GenericPagePresenter();
  sub_10005623C(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
  {
    goto LABEL_14;
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  if ((*(v2 + 88))(v8, v1) != enum case for ShelfBackground.color(_:))
  {
    (*(v2 + 8))(v8, v1);
    goto LABEL_14;
  }

  (*(v2 + 96))(v8, v1);

  v16 = *(sub_10002849C(&qword_100972A40) + 48);
  v17 = type metadata accessor for ShelfBackgroundStyle();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v8 = v23;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v35;
LABEL_14:
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
    {
      break;
    }

    if (!__OFSUB__(dispatch thunk of ShelfPresenter.sectionCount.getter(), 1))
    {
      dispatch thunk of ShelfPresenter.background(for:)();
      if ((*(v2 + 88))(v4, v1) == enum case for ShelfBackground.color(_:))
      {
        (*(v2 + 96))(v4, v1);

        v24 = *(sub_10002849C(&qword_100972A40) + 48);
        v25 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v25 - 8) + 8))(v4 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = String._bridgeToObjectiveC()();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v35;
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }

      return v9;
    }

    __break(1u);
LABEL_23:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return v9;
}

void sub_100049E9C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v9 = [v1 collectionViewLayout];

    if (v9)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v9;
        v6 = [v4 configuration];
        sub_100005744(0, &qword_100970CA8);
        v7 = NSCopying.makeCopy()();

        sub_100049784();
        sub_100005744(0, &qword_10097F460);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_10004A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = type metadata accessor for IndexPath();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexSet();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100972A20);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_1009728F0];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100144228(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = IndexPath.section.getter();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = *(v22 + 2);
      v31 = *(v22 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_100144228((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      *(v22 + 2) = v32 + 1;
      *&v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_10005623C(&qword_1009729B0, &type metadata accessor for IndexSet);
  v33 = v56;
  dispatch thunk of SetAlgebra.init()();
  v34 = *(v22 + 2);
  v35 = v11;
  if (v34)
  {
    v36 = (v22 + 4);
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      dispatch thunk of SetAlgebra.insert(_:)();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_100055BB8(v39);

  sub_10002B894(v39, &unk_100972A20);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_100055FC0;
    *(v43 + 24) = v42;
    aBlock[4] = sub_100055FCC;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008B1B18;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

uint64_t sub_10004A57C()
{
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE200);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  v7 = sub_10002849C(&qword_100970CA0);
  v6[0] = v0;
  v2 = v0;
  static LogMessage.safe(_:)();
  sub_10002B894(v6, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v7 = v5;
  v3 = sub_1000056E0(v6);
  (*(*(v5 - 8) + 16))(v3);
  static LogMessage.sensitive(_:)();
  sub_10002B894(v6, &unk_1009711D0);
  Logger.error(_:)();
}

void sub_10004A7AC()
{
  v1 = *&v0[qword_1009728F0];

  *(v1 + 80) = 1;

  sub_100049E9C();
}

void sub_10004A80C()
{
  v1 = [v0 collectionView];
  sub_10004B018(v1);

  sub_100049E9C();
}

uint64_t sub_10004A954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ImpressionMetrics();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10002B894(a1, &qword_100973D30);
    v14 = sub_1003D7340(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10005383C();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1000504FC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10002B894(v8, &qword_100973D30);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_100051640(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_10004ABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10005192C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1000072B8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100053F00();
        v16 = v18;
      }

      result = sub_100050A08(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10004ACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100056164(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100051CAC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10002B894(a1, &unk_1009711D0);
    sub_1000DAD74(a2, a3, v9);

    return sub_10002B894(v9, &unk_1009711D0);
  }

  return result;
}

uint64_t sub_10004AD7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10005280C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for BadgeType();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1003D79C8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10005536C(&type metadata accessor for BadgeType, &unk_100982850);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for BadgeType();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100051048(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for BadgeType();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_10004AF60(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 collectionView];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for IndexPath();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 deleteItemsAtIndexPaths:isa];
  }
}

void sub_10004B018(void *a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    type metadata accessor for GenericPagePresenter();
    sub_10005623C(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
    v14 = dispatch thunk of ShelfPresenter.sectionCount.getter();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_10005623C(&qword_1009729B0, &type metadata accessor for IndexSet);
        dispatch thunk of SetAlgebra.init()();
        do
        {
          aBlock[6] = v13;
          dispatch thunk of SetAlgebra.insert(_:)();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_100056100;
        *(v21 + 24) = v20;
        aBlock[4] = sub_100056288;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000489A8;
        aBlock[3] = &unk_1008B1B90;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_10004B414()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = type metadata accessor for GenericPagePresenter();
  v44 = sub_10005623C(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
  result = dispatch thunk of ShelfPresenter.sectionCount.getter();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      dispatch thunk of ShelfPresenter.shelf(for:)();
      Shelf.impressionMetrics.getter();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10002B894(v4, &qword_100973D30);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_1003D7340(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10005383C();
          }
        }

        else
        {
          sub_10004D058(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_1003D7340(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_10004B848(uint64_t a1, uint64_t a2)
{
  v45 = sub_10002849C(&qword_100985F30);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = type metadata accessor for ImpressionMetrics();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = type metadata accessor for IndexSet.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&qword_100970C78);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  IndexSet.makeIterator()();
  swift_beginAccess();
  type metadata accessor for IndexSet();
  sub_10005623C(&qword_100970C80, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    dispatch thunk of Collection.endIndex.getter();
    sub_10005623C(&qword_100970C88, &type metadata accessor for IndexSet.Index);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v20(v49, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_1003D7340(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          ImpressionsCalculator.removeElement(_:)();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_10004A954(v16, v22);
    swift_endAccess();
    v50 = v22;
    AnyHashable.init<A>(_:)();
    v17 = v44;
    StatePath.init(component:)();
    TransientStateStore.removeState(at:recursively:)();
    (*v41)(v17, v45);
  }

  return sub_10002B894(v15, &qword_100970C78);
}

uint64_t sub_10004BDE0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10002849C(&qword_100985F30);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = type metadata accessor for IndexSet.Index();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100970C78);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  IndexSet.makeIterator()();
  type metadata accessor for IndexSet();
  sub_10005623C(&qword_100970C80, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10005623C(&qword_100970C88, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = dispatch thunk of Collection.subscript.read();
    v16 = *v15;
    v14(v24, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v25 = v16;
    AnyHashable.init<A>(_:)();
    v17 = v20;
    StatePath.init(component:)();
    TransientStateStore.removeState(at:recursively:)();
  }

  return sub_10002B894(v9, &qword_100970C78);
}

uint64_t sub_10004C124(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&unk_100982990);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 32);
      v34 = *(v21 + 16);
      v35 = *v21;
      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v35;
      *(v16 + 16) = v34;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10004C3A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&unk_100982750);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100056164(v22, v36);
      }

      else
      {
        sub_1000073E8(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100056164(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10004C678(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970CD0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_10005623C(&qword_100970CD8, &type metadata accessor for AdamId);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004CA38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_1009827B0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      Hasher._combine(_:)(*&v26);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_10004CD10(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Accessory();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10002849C(&qword_100970D18);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        sub_1000561D8(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_100056174(v25, v7);
        v29 = *(*(v10 + 56) + 8 * v23);
        v27 = v7;
        v28 = v29;
      }

      Hasher.init(_seed:)();
      v30 = v27;
      sub_1000C3AEC(v44);
      result = Hasher._finalize()();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1000561D8(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004D058(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = type metadata accessor for ImpressionMetrics();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10002849C(&qword_100970C90);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10004D3A4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10002849C(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10004D60C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100970CB0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100056164(v24, v34);
      }

      else
      {
        sub_1000073E8(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100056164(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10004D8C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100982810);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004DB84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100970CC8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004DE24(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AdPlacementType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970CC0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        v44 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v42, v25, v43);
        v44 = *(*(v9 + 56) + 16 * v23);
      }

      sub_10005623C(&qword_100970CB8, &type metadata accessor for AdPlacementType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v44;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004E204(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&unk_100982970);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10004E468(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970D30);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    v48 = v16;
    v49 = v8;
    v20 = v6;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v28 = v25 | (v12 << 6);
      v29 = *(v9 + 48);
      v47 = *(v20 + 72);
      v30 = v29 + v47 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v48);
      }

      else
      {
        (*v43)(v49, v30, v48);
      }

      v31 = (*(v9 + 56) + 16 * v28);
      v33 = *v31;
      v32 = v31[1];
      sub_10005623C(&qword_100970D38, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v22 = v44;
        v23 = v49;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v22 = v44;
      v23 = v49;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v46)(*(v11 + 48) + v47 * v21, v23, v48);
      v24 = (*(v11 + 56) + 16 * v21);
      *v24 = v33;
      v24[1] = v32;
      ++*(v11 + 16);
      v20 = v22;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v27 = v13[v12];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004E85C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100970CE0);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004EB04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_1009827E0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_10003D4AC(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10004EDB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100970D50);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004F058(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100970D00);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v33 & 1) == 0)
      {

        v23 = v22;
      }

      type metadata accessor for Artwork();
      sub_10005623C(&qword_100970D08, &type metadata accessor for Artwork);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v32;
      v12 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004F338(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970D48);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005623C(&qword_100970CD8, &type metadata accessor for AdamId);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004F714(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002849C(&qword_100970D20);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = static Hasher._hash(seed:_:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10004F978(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10002849C(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_10004FBD8(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for AdamId();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10002849C(&qword_100970D58);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10004FF58(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BadgeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&unk_100982850);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005623C(&qword_100970CF8, &type metadata accessor for BadgeType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_100050334(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1000504FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ImpressionMetrics() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}