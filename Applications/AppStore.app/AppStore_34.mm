uint64_t sub_1003CF7FC()
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v19 = OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks;
  v20 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v1 >> 62)
  {
LABEL_38:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = ASKBagContract.enablePrerenderedIconArtwork.getter();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 40) = sub_1003975F0(_swiftEmptyArrayStorage);
  v5 = 3;
  if (v2 < 3)
  {
    v5 = v2;
  }

  *(v4 + 24) = v5;
  *(v4 + 32) = v3 & 1;

  sub_10017C594(v6);
  v7 = *(v20 + v19);
  *&v21[0] = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v12 = Artwork.backgroundColor.getter();

    ++v9;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = *&v21[0];
      v9 = v11;
    }
  }

  sub_100086248(v10);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v13 = *(v20 + v19);
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v20 + v19) >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      Artwork.config(_:mode:prefersLayeredImage:)();
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v15;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v21, &qword_10096FB90);
      ++v15;
    }

    while (v17 != v14);
  }
}

void sub_1003CFC90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_100051C98(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_10017BE94(a1, a6);
    }
  }
}

uint64_t sub_1003CFD60()
{
  type metadata accessor for TodayCard();
  sub_1003D0E4C(&qword_100977390, &type metadata accessor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v21)
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaMultiAppFallback();
    if (swift_dynamicCastClass())
    {

      if (TodayCardMediaMultiAppFallback.lockups.getter() >> 62)
      {
LABEL_73:
        _CocoaArrayWrapper.endIndex.getter();
      }

      v1 = TodayCardMediaMultiAppFallback.lockups.getter();
      v2 = v1;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v1 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (v4)
        {
LABEL_11:
          v5 = 0;
          do
          {
            v6 = v5;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v6 >= *(v3 + 16))
                {
                  goto LABEL_68;
                }

                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (Lockup.icon.getter())
              {
                break;
              }

              ++v6;
              if (v5 == v4)
              {
                goto LABEL_79;
              }
            }

            Artwork.config(_:mode:prefersLayeredImage:)();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          while (v5 != v4);
        }
      }

      else
      {
        v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
    }

    type metadata accessor for TodayCardMediaRiver();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for TodayCardMediaList();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for TodayCardMediaAppIcon();
        if (!swift_dynamicCastClass())
        {
        }

        sub_10002849C(&qword_100973210);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1007B0B70;

        TodayCardMediaAppIcon.icon.getter();
        v14 = Artwork.config(_:mode:prefersLayeredImage:)();

        *(v13 + 32) = v14;
        ArtworkLoader.prefetchArtwork(using:)(v13);
      }

      if (TodayCardMediaList.lockups.getter() >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      v15 = TodayCardMediaList.lockups.getter();
      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      v19 = 0;
      do
      {
        v20 = v19;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_72;
            }

            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (Lockup.icon.getter())
          {
            break;
          }

          ++v20;
          if (v19 == v18)
          {
            goto LABEL_79;
          }
        }

        Artwork.config(_:mode:prefersLayeredImage:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v19 != v18);
      goto LABEL_79;
    }

    if (TodayCardMediaRiver.lockups.getter() >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v7 = TodayCardMediaRiver.lockups.getter();
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v9 + 16))
          {
            goto LABEL_70;
          }

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (Lockup.icon.getter())
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_79;
        }
      }

      Artwork.config(_:mode:prefersLayeredImage:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v11 != v10);
    goto LABEL_79;
  }

  return result;
}

void sub_1003D04C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_1003D0680()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_10001F63C(v2);
  if (*(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
    }
  }
}

void sub_1003D07C8()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  if (*(v1 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8);
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
      dispatch thunk of NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
    }
  }
}

uint64_t sub_1003D0A70()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell()
{
  result = qword_100983970;
  if (!qword_100983970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D0C80(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1003D0CD0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1003D0CFC()
{
  swift_weakAssign();
}

id sub_1003D0D48()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_10098B7C0) = v4;
    *(*(v5 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_1003D0E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D0EB4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_100970EA0);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ComponentSeparator.Position();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Action();
  sub_1003D1370(&qword_100992FB0, &type metadata accessor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v21[0])
  {
    type metadata accessor for SearchAdAction();
    sub_1003D1370(&unk_100983980, &type metadata accessor for SearchAdAction);
    ItemLayoutContext.typedModel<A>(as:)();
    v11 = v21[0];
    if (v21[0])
    {
    }

    if (Action.artwork.getter() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_10096EB38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for ActionLayout.Metrics();
      sub_1000056A8(v14, qword_1009D2F68);
      ActionLayout.Metrics.artworkSize.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v21[5] = v21[0];
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v6, v4);
      ActionLayout.Metrics.artworkMargin.getter();
      sub_10002A400(v21, v21[3]);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v3, v19);
      sub_100007000(v21);
      v12 = v20;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v20;
    }

    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v20;
  }

  v15 = type metadata accessor for ComponentSeparator();
  return (*(*(v15 - 8) + 56))(v12, v13, 1, v15);
}

uint64_t sub_1003D1370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D13C4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100983990);
  sub_1000056A8(v4, qword_100983990);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1003D1518()
{
  v0 = sub_10002849C(&qword_1009839C0);
  sub_100005644(v0, qword_1009839A8);
  sub_1000056A8(v0, qword_1009839A8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1003D1590()
{
  if (static ResilientDeepLinkController.hasResilientDeepLinks(bag:)())
  {
    if (qword_10096DB50 == -1)
    {
LABEL_3:
      v0 = type metadata accessor for OSLogger();
      sub_1000056A8(v0, qword_100983990);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096DB58 != -1)
  {
    swift_once();
  }

  v1 = sub_10002849C(&qword_1009839C0);
  sub_1000056A8(v1, qword_1009839A8);
  Preferences.subscript.getter();

  if (v11 != 1 && v10 > 0 || (ASKBagContract.enableLocationPrivacyNotice.getter() & 1) == 0)
  {
    if (qword_10096DB50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSLogger();
    sub_1000056A8(v5, qword_100983990);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    static LocalPreferences.currentApplication.getter();
    Preferences.subscript.getter();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    static LogMessage.safe(_:)();
    sub_10003D444(&v10);
    Logger.info(_:)();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_10096DB50 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_37;
  }

  v2 = [objc_allocWithZone(CLLocationManager) init];
  v3 = [v2 authorizationStatus];

  v4 = 0;
  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      if (qword_10096DB50 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for OSLogger();
      sub_1000056A8(v8, qword_100983990);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = ASKBagContract.isSponsoredAdsEnabled.getter() & 1;
      static LogMessage.safe(_:)();
      sub_10003D444(&v10);
      Logger.info(_:)();

      v4 = ASKBagContract.isSponsoredAdsEnabled.getter();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_10096DB50 == -1)
        {
LABEL_31:
          v9 = type metadata accessor for OSLogger();
          sub_1000056A8(v9, qword_100983990);
          sub_10002849C(&unk_100972A10);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.init(stringLiteral:)();
          Logger.info(_:)();

          sub_1003D1F0C();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_10096DB50 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_10096DB50 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

uint64_t sub_1003D1F0C()
{
  v0 = sub_10002849C(&qword_1009839C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096DB58 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009839A8);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  Preferences.subscript.setter();

  if (qword_10096DB50 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_100983990);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  static LocalPreferences.currentApplication.getter();
  Preferences.subscript.getter();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  static LogMessage.safe(_:)();
  sub_10003D444(&v8);
  Logger.info(_:)();
}

uint64_t sub_1003D21F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1003D2240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1003D22C4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C85F0();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1003D2368()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D23BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C85F0();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1003D2414()
{
  result = qword_1009839C8;
  if (!qword_1009839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839C8);
  }

  return result;
}

unint64_t sub_1003D246C()
{
  result = qword_1009839D0;
  if (!qword_1009839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839D0);
  }

  return result;
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();

  return sub_1000056A8(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_1003D2524(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics;
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  v20 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = MetadataRibbonBarViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for MetadataRibbonTextStyle();
  v38 = sub_1000056A8(v37, qword_1009D36F8);
  v42[3] = v37;
  v42[4] = sub_100032098();
  v39 = sub_1000056E0(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1003D296C()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for LayoutRect();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetadataRibbonBarViewLayout();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  MetadataRibbonBarViewLayout.init(descriptionLabelTextView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonBarViewLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

uint64_t sub_1003D2F00()
{
  MetadataRibbonItem.labelText.getter();
  v1 = *&v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel];
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 setNeedsLayout];
}

uint64_t sub_1003D2F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98);
}

uint64_t sub_1003D2FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98);
  return swift_endAccess();
}

uint64_t sub_1003D30D8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1003D31A4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1003D3264()
{
  v1 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1003D32A8(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1003D3358@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90);
}

uint64_t sub_1003D33C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90);
  return swift_endAccess();
}

uint64_t sub_1003D3490()
{
  v0 = sub_10002849C(&unk_10096FC10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  sub_100005644(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_1000056A8(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10002849C(&qword_100973F50);
  Conditional.init(_:)();
  MetadataRibbonBarViewLayout.Metrics.init(maximumNumberofLinesForDescriptionLabel:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView()
{
  result = qword_100983A18;
  if (!qword_100983A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D36CC()
{
  type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  if (v0 <= 0x3F)
  {
    sub_1000315A0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1003D37C0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v31 = a1;
  v2 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataRibbonBarViewLayout();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LabelPlaceholder();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  v28 = v2;
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for MetadataRibbonTextStyle();
  v20 = sub_1000056A8(v19, qword_1009D36F8);
  v39[3] = v19;
  v39[4] = sub_100032098();
  v21 = sub_1000056E0(v39);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_100007000(v39);
  MetadataRibbonBarViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  DynamicTextAppearance.withNumberOfLines(_:)();
  v22(v14, v8);
  MetadataRibbonItem.labelText.getter();
  (*(v9 + 16))(v14, v17, v8);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v29 + 8))(v7, v30);
  sub_10002C0AC(v39, v38);
  (*(v34 + 16))(v33, v18, v28);
  v23 = v32;
  MetadataRibbonBarViewLayout.init(descriptionLabelTextView:metrics:)();
  MetadataRibbonBarViewLayout.measurements(fitting:in:)();
  v25 = v24;
  (*(v35 + 8))(v23, v36);
  sub_100007000(v39);
  v22(v17, v8);
  return v25;
}

void sub_1003D3CB4()
{
  v1 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics;
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  v6 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D3E34()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0A40);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = type metadata accessor for StaticDimension();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v29);
  v14 = v23;
  v23(v13, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_1000056E0(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v28);
  v14(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v15(v3, v0);
  *algn_100983AB0 = 0u;
  qword_100983AC0 = 0;
  xmmword_100983AA0 = 0u;
  sub_100005A38(&v38, &unk_100983A28);
  sub_100005A38(&v35, &unk_100983A50);
  sub_100005A38(&v32, &unk_100983A78);
  return sub_1002F7EF0(v29, &xmmword_100983AA0);
}

char *sub_1003D4244(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label;
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v14, qword_1009D0A40);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v18] = sub_1002F5B8C(v17, 0, 0);
  v21 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider;
  v30 = qword_10096EE48;
  v31 = *&v28[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v11, qword_1009D36D8);
  sub_1002BB2D0(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_1002BB398(v13);
  v36 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider];
  sub_1002BB2D0(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_1002BB334(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_1002BB398(v13);
  v42 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_1003D46BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for LayoutRect();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v21);
  v7 = *&v1[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel();
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_100202148(v21);
}

double sub_1003D48D0(uint64_t a1, double a2)
{
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v14);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider);
  v6 = type metadata accessor for DividerView(0);
  v14[23] = v6;
  v14[24] = &protocol witness table for UIView;
  v14[20] = v5;
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label);
  v14[28] = type metadata accessor for DynamicTypeLinkedLabel();
  v14[29] = &protocol witness table for UILabel;
  v14[25] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider);
  v14[33] = v6;
  v14[34] = &protocol witness table for UIView;
  v14[30] = v8;
  swift_getObjectType();
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_1002F83D4(a2, a1, v14);
  sub_100202148(v14);
  return v12;
}

double sub_1003D4AA8(double a1)
{
  type metadata accessor for DividerView(0);
  if (qword_10096EE48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DividerView.Style(0);
  sub_1000056A8(v2, qword_1009D36D8);
  swift_getObjectType();
  sub_1006DA268();
  return a1;
}

void sub_1003D4BDC()
{
  v1 = v0;
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label;
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v2, qword_1009D0A40);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v6) = sub_1002F5B8C(v5, 0, 0);
  v9 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1003D4DB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v11 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v14 = static Placeholder.titleText.getter();
  v16 = sub_10025084C(v14, v15, UIFontTextStyleSubheadline);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v19 = type metadata accessor for Shelf.ContentType();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v5[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder]];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];

  return v22;
}

uint64_t sub_1003D4FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v73 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = v68 - v5;
  __chkstk_darwin(v6);
  v75 = v68 - v7;
  __chkstk_darwin(v8);
  v69 = v68 - v9;
  __chkstk_darwin(v10);
  v71 = v68 - v11;
  v12 = sub_10002849C(&unk_100973CA0);
  __chkstk_darwin(v12 - 8);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = v68 - v16;
  __chkstk_darwin(v17);
  v19 = v68 - v18;
  __chkstk_darwin(v20);
  v22 = v68 - v21;
  v23 = type metadata accessor for Shelf.ContentType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68[0] = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v68 - v27;
  v29 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v30 = *(v24 + 16);
  v30(v28, &v2[v29], v23);
  v31 = (*(v24 + 88))(v28, v23);
  if (v31 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    v32 = v72;
    v33 = v73;
    (*(v72 + 56))(v22, 1, 1, v73);
    sub_10009AD60(v22, v19);
    v34 = *(v32 + 48);
    v35 = v34(v19, 1, v33);
    v68[1] = v22;
    if (v35 == 1)
    {
      v36 = v71;
      (*(v32 + 104))(v71, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v33);
      v37 = v34(v19, 1, v33);
      v38 = v75;
      if (v37 != 1)
      {
        sub_10009ADD0(v19);
      }
    }

    else
    {
      v36 = v71;
      (*(v32 + 32))(v71, v19, v33);
      v38 = v75;
    }

    v48 = *(v32 + 16);
    v49 = v69;
    v48(v69, v36, v33);
    v50 = (*(v32 + 88))(v49, v33);
    if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
    }

    else if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10096CFE0 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDD98, v82);
    }

    else
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
      (*(v32 + 8))(v49, v33);
    }

    v48(v38, v36, v33);
    sub_10002C0AC(v82, v81);
    sub_100005744(0, &qword_1009730E0);
    if (qword_10096E290 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for FontUseCase();
    sub_1000056A8(v54, qword_1009D1730);
    v55 = [v2 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for StaticDimension();
    v57 = sub_1000056A8(v56, qword_1009D2430);
    v79 = v56;
    v80 = &protocol witness table for StaticDimension;
    v58 = sub_1000056E0(v78);
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
    sub_100007000(v82);
    (*(v32 + 8))(v36, v33);
    v59 = &v83;
    return sub_10009ADD0(*(v59 - 32));
  }

  v39 = v2;
  v40 = v73;
  if (v31 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    v41 = v39;
    v42 = v72;
    v43 = v74;
    (*(v72 + 56))(v74, 1, 1, v73);
    sub_10009AD60(v43, v14);
    v44 = *(v42 + 48);
    if (v44(v14, 1, v40) == 1)
    {
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      (*(v42 + 104))(v77, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v40);
      if (v44(v14, 1, v40) != 1)
      {
        sub_10009ADD0(v14);
      }

      v46 = v75;
      v47 = v77;
    }

    else
    {
      v47 = v77;
      (*(v42 + 32))(v77, v14, v40);
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v46 = v75;
    }

    v51 = *(v42 + 16);
    v52 = v70;
    v51(v70, v47, v40);
    v53 = (*(v42 + 88))(v52, v40);
    if (v53 == v45)
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
    }

    else if (v53 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10096CFE0 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDD98, v82);
    }

    else
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
      (*(v42 + 8))(v52, v40);
    }

    v51(v46, v77, v40);
    sub_10002C0AC(v82, v81);
    sub_100005744(0, &qword_1009730E0);
    if (qword_10096E290 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for FontUseCase();
    sub_1000056A8(v60, qword_1009D1730);
    v61 = [v41 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for StaticDimension();
    v63 = sub_1000056A8(v62, qword_1009D2430);
    v79 = v62;
    v80 = &protocol witness table for StaticDimension;
    v64 = sub_1000056E0(v78);
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
    sub_100007000(v82);
    (*(v42 + 8))(v77, v40);
    v59 = &v84;
    return sub_10009ADD0(*(v59 - 32));
  }

  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v66 = v68[0];
  v30(v68[0], &v39[v29], v23);
  _print_unlocked<A, B>(_:_:)();
  (*(v24 + 8))(v66, v23);
  v67._object = 0x80000001007FAAB0;
  v67._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v67);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1003D5C1C()
{
  v1 = type metadata accessor for Shelf.ContentType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    type metadata accessor for AppTrailerLockupCollectionViewCell();
LABEL_5:
    v11 = ASKDeviceTypeGetCurrent();
    sub_1000DCAC8();

    return;
  }

  if (v10 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    type metadata accessor for ScreenshotsLockupCollectionViewCell();
    goto LABEL_5;
  }

  v13[1] = 0;
  v13[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v9(v4, v0 + v8, v1);
  _print_unlocked<A, B>(_:_:)();
  (*(v2 + 8))(v4, v1);
  v12._object = 0x80000001007FAAB0;
  v12._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v12);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D5E80()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MixedMediaLockupLayout();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AspectRatio();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for MixedMediaLockupPlaceholderView();
  v53.receiver = v0;
  v53.super_class = v14;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  sub_1003D4FCC(v13);
  sub_1003D5C1C();
  LayoutMarginsAware<>.layoutFrame.getter();
  v34 = v6;
  AspectRatio.maxSize(fitting:)();
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v20 = ArtworkView.frame.modify();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  v20(v52, 0);
  v22 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder];
  if (v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  v24 = *(v8 + 16);
  v35 = v7;
  v24(v10, v13, v7);
  v25 = *&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder];
  v52[3] = type metadata accessor for LockupPlaceholderView();
  v52[4] = &protocol witness table for UIView;
  v52[0] = v25;
  v50 = type metadata accessor for ArtworkView();
  v51 = &protocol witness table for UIView;
  v49 = v19;
  if (v1[v22] == 1)
  {
    v26 = sub_100005744(0, &qword_100986BF0);
    v27 = v23;
    v28 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v23 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v26;
  v48 = v28;
  v44 = v23;
  v29 = v25;
  v30 = v19;
  v31 = v37;
  MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v32 = v40;
  MixedMediaLockupLayout.placeChildren(relativeTo:in:)();
  (*(v42 + 8))(v32, v43);
  (*(v39 + 8))(v31, v41);
  (*(v36 + 8))(v34, v38);
  return (*(v8 + 8))(v13, v35);
}

id sub_1003D6380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupPlaceholderView()
{
  result = qword_100983B48;
  if (!qword_100983B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D64A8()
{
  result = type metadata accessor for Shelf.ContentType();
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

void sub_1003D6554()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v6 = static Placeholder.titleText.getter();
  v8 = sub_10025084C(v6, v7, UIFontTextStyleSubheadline);

  *(v1 + v5) = v8;
  v9 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  v10 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v11 = type metadata accessor for Shelf.ContentType();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D66B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  v6 = 0xE600000000000000;
  v7 = 0x686372616573;
  if (a1 != 4)
  {
    v7 = 0x73657461647075;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x73656D6167;
  if (a1 != 1)
  {
    v9 = 1936748641;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7961646F74;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656461637261)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73657461647075)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x73656D6167)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936748641)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x7961646F74)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_1003D686C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AppStoreTodayCardTriggerBuilder.__allocating_init(bag:purchaseHistory:watchPairingStatusProvider:pencilPairingStatusProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 96) = a1;
  sub_100005A38(a2, v8 + 104);
  v9 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a3 + 32);
  v10 = *(a4 + 16);
  *(v8 + 56) = *a4;
  *(v8 + 72) = v10;
  *(v8 + 88) = *(a4 + 32);
  return v8;
}

uint64_t AppStoreTodayCardTriggerBuilder.init(bag:purchaseHistory:watchPairingStatusProvider:pencilPairingStatusProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  sub_100005A38(a2, v4 + 104);
  v7 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v7;
  *(v4 + 48) = *(a3 + 32);
  v8 = *(a4 + 16);
  *(v4 + 56) = *a4;
  *(v4 + 72) = v8;
  *(v4 + 88) = *(a4 + 32);
  return v4;
}

uint64_t AppStoreTodayCardTriggerBuilder.trigger(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v5 = type metadata accessor for TodayCardTriggerIdentifier();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AdamId();
  v8 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v54 = v2;
  v13 = ASKBagContract.onboardingCardsMap.getter();
  if (!v13)
  {
    v27 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for TriggerBuilderError.missingCardMap(_:), v27);
    return swift_willThrow();
  }

  v14 = v13;
  v51 = v8;
  v15 = TodayCardTriggerIdentifier.bagKey.getter();
  if (!*(v14 + 16))
  {

    goto LABEL_8;
  }

  v50 = v3;
  sub_1000072B8(v15, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_8:

    v29 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError);
    swift_allocError();
    v31 = v30;
    *v30 = TodayCardTriggerIdentifier.bagKey.getter();
    v31[1] = v32;
    (*(*(v29 - 8) + 104))(v31, enum case for TriggerBuilderError.missingAdamId(_:), v29);
    return swift_willThrow();
  }

  AdamId.init(value:)();
  v19 = v55;
  (*(v55 + 16))(v7, a1, v5);
  v20 = (*(v19 + 88))(v7, v5);
  if (v20 == enum case for TodayCardTriggerIdentifier.newToAppStore(_:))
  {
    ASKBagContract.numberOfPurchasesThreshold.getter();
    v21 = v51;
    v22 = v59;
    (*(v51 + 16))(v52, v12, v59);
    sub_10002C0AC(v54 + 104, v58);
    v23 = type metadata accessor for NewToAppStoreCardTrigger();
    swift_allocObject();
    v24 = NewToAppStoreCardTrigger.init(adamId:numberOfPurchasesThreshold:purchaseHistory:)();
    v25 = v53;
    v53[3] = v23;
    v25[4] = &protocol witness table for NewToAppStoreCardTrigger;
    *v25 = v24;
    return (*(v21 + 8))(v12, v22);
  }

  if (v20 == enum case for TodayCardTriggerIdentifier.newPencilPairing(_:))
  {
    sub_100031660(v54 + 56, &v56, &qword_100983B60);
    v33 = v51;
    if (v57)
    {
      sub_100005A38(&v56, v58);
      v34 = v59;
      (*(v33 + 16))(v52, v12, v59);
      sub_10002C0AC(v58, &v56);
      v35 = v33;
      v36 = type metadata accessor for NewPencilPairingCardTrigger();
      swift_allocObject();
      v37 = NewPencilPairingCardTrigger.init(adamId:pairingStatusProvider:)();
      v38 = &protocol witness table for NewPencilPairingCardTrigger;
LABEL_16:
      v40 = v53;
      v53[3] = v36;
      v40[4] = v38;
      *v40 = v37;
      sub_100007000(v58);
      return (*(v35 + 8))(v12, v34);
    }

    sub_10002B894(&v56, &qword_100983B60);
    v44 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError);
    swift_allocError();
    v46 = v45;
    v47 = 0x80000001008113A0;
    v48 = 0xD00000000000001BLL;
LABEL_23:
    *v45 = v48;
    v45[1] = v47;
    (*(*(v44 - 8) + 104))(v46, enum case for TriggerBuilderError.missingDependency(_:), v44);
    swift_willThrow();
    return (*(v33 + 8))(v12, v59);
  }

  v39 = v51;
  if (v20 == enum case for TodayCardTriggerIdentifier.newWatchPairing(_:))
  {
    sub_100031660(v54 + 16, &v56, &qword_100983B58);
    if (v57)
    {
      sub_100005A38(&v56, v58);
      v34 = v59;
      (*(v39 + 16))(v52, v12, v59);
      sub_10002C0AC(v58, &v56);
      v35 = v39;
      v36 = type metadata accessor for NewWatchPairingCardTrigger();
      swift_allocObject();
      v37 = NewWatchPairingCardTrigger.init(adamId:pairingStatusProvider:)();
      v38 = &protocol witness table for NewWatchPairingCardTrigger;
      goto LABEL_16;
    }

    sub_10002B894(&v56, &qword_100983B58);
    v33 = v39;
    v44 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError);
    swift_allocError();
    v46 = v45;
    v47 = 0x8000000100811380;
    v48 = 0xD00000000000001ALL;
    goto LABEL_23;
  }

  if (v20 == enum case for TodayCardTriggerIdentifier.newToMajorOSVersion(_:))
  {
    v34 = v59;
    (*(v51 + 16))(v52, v12, v59);
    v35 = v39;
    v41 = type metadata accessor for NewToMajorOSVersionCardTrigger();
    swift_allocObject();
    v42 = NewToMajorOSVersionCardTrigger.init(adamId:)();
    v43 = v53;
    v53[3] = v41;
    v43[4] = &protocol witness table for NewToMajorOSVersionCardTrigger;
    *v43 = v42;
    return (*(v35 + 8))(v12, v34);
  }

  (*(v51 + 8))(v12, v59);
  v49 = v53;
  v53[4] = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  return (*(v19 + 8))(v7, v5);
}

uint64_t AppStoreTodayCardTriggerBuilder.deinit()
{
  sub_10002B894(v0 + 16, &qword_100983B58);
  sub_10002B894(v0 + 56, &qword_100983B60);

  sub_100007000(v0 + 104);
  return v0;
}

uint64_t AppStoreTodayCardTriggerBuilder.__deallocating_deinit()
{
  sub_10002B894(v0 + 16, &qword_100983B58);
  sub_10002B894(v0 + 56, &qword_100983B60);

  sub_100007000(v0 + 104);

  return swift_deallocClassInstance();
}

unint64_t sub_1003D7340(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1003D80A8(a1, v2);
}

unint64_t sub_1003D7384(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1003D876C(a1, v2);
}

unint64_t sub_1003D7438(uint64_t a1)
{
  type metadata accessor for AdamId();
  sub_1003D8A84(&qword_100970CD8, &type metadata accessor for AdamId);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for AdamId, &qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_1003D750C(Swift::UInt a1, Swift::UInt a2, double a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  Hasher._combine(_:)(*&v6);
  v7 = Hasher._finalize()();

  return sub_1003D8114(a1, a2, v7, a3);
}

unint64_t sub_1003D75B4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  if ((a1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
    v2 = a1;
  }

  else
  {
    v2 = qword_1007CB4B8[(a1 - 4)];
  }

  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_1003D81A0(a1, v3);
}

unint64_t sub_1003D7650(uint64_t a1)
{
  type metadata accessor for OfferTitleType();
  sub_1003D8A84(&qword_100983C28, &type metadata accessor for OfferTitleType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for OfferTitleType, &qword_100983C30, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_1003D7724(double a1, double a2)
{
  Hasher.init(_seed:)();
  sub_100246E48(a1, a2);
  v4 = Hasher._finalize()();

  return sub_1003D83F8(v4, a1, a2);
}

unint64_t sub_1003D7798(uint64_t a1)
{
  type metadata accessor for EditorialPageKey();
  sub_1003D8A84(&qword_100983C58, &type metadata accessor for EditorialPageKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for EditorialPageKey, &qword_100983C60, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_1003D786C(double *a1)
{
  Hasher.init(_seed:)();
  sub_1000C3AEC(v4);
  v2 = Hasher._finalize()();

  return sub_1003D8470(a1, v2);
}

unint64_t sub_1003D78D8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003D85A8(a1, v4);
}

unint64_t sub_1003D791C(uint64_t a1)
{
  type metadata accessor for Artwork();
  sub_1003D8A84(&qword_100970D08, &type metadata accessor for Artwork);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8670(a1, v2);
}

unint64_t sub_1003D79C8(uint64_t a1)
{
  type metadata accessor for BadgeType();
  sub_1003D8A84(&qword_100970CF8, &type metadata accessor for BadgeType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for BadgeType, &qword_100983C50, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_1003D7A9C(uint64_t a1)
{
  type metadata accessor for PageFacets.Facet();
  sub_1003D8A84(&qword_100972C68, &type metadata accessor for PageFacets.Facet);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_100983C78, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_1003D7B70(uint64_t a1)
{
  type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  sub_1003D8A84(&qword_100983C38, &type metadata accessor for SearchAdOpportunity.LifecycleEventType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_100983C40, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_1003D7C44(uint64_t a1)
{
  type metadata accessor for AdPlacementType();
  sub_1003D8A84(&qword_100970CB8, &type metadata accessor for AdPlacementType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for AdPlacementType, &qword_100983C48, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
}

unint64_t sub_1003D7D18(uint64_t a1)
{
  type metadata accessor for IndexPath();
  sub_1003D8A84(&qword_100970D38, &type metadata accessor for IndexPath);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for IndexPath, &qword_10098B750, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1003D7DEC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1003D8870(a1, v2);
}

unint64_t sub_1003D7F00(uint64_t a1)
{
  type metadata accessor for MetricsFieldExclusionRequest();
  sub_1003D8A84(&qword_100983C68, &type metadata accessor for MetricsFieldExclusionRequest);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_100983C70, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_1003D7FD4(uint64_t a1)
{
  type metadata accessor for MetricsFieldInclusionRequest();
  sub_1003D8A84(&qword_1009726B8, &type metadata accessor for MetricsFieldInclusionRequest);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_1009726C0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_1003D80A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003D8114(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003D81A0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003D8258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1003D8A84(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1003D83F8(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003D8470(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory() - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100056174(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_1000C6830(v8, a1);
      sub_1000C7C80(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1003D85A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003D4AC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003D614(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003D8670(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for Artwork();
    sub_1003D8A84(&unk_1009811F0, &type metadata accessor for Artwork);
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003D876C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1003D8870(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
          v8 = 0x656461637261;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x686372616573;
          }

          else
          {
            v8 = 0x73657461647075;
          }

          if (v7 == 4)
          {
            v9 = 0xE600000000000000;
          }

          else
          {
            v9 = 0xE700000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x73656D6167;
        }

        else
        {
          v8 = 1936748641;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7961646F74;
      }

      v10 = 0x73657461647075;
      if (v6 == 4)
      {
        v10 = 0x686372616573;
      }

      v11 = 0xE700000000000000;
      if (v6 == 4)
      {
        v11 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x656461637261;
        v11 = 0xE600000000000000;
      }

      v12 = 0x73656D6167;
      if (v6 != 1)
      {
        v12 = 1936748641;
      }

      v13 = 0xE400000000000000;
      if (v6 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x7961646F74;
        v13 = 0xE500000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1003D8A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D8AD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D00B8);
  sub_1000056A8(v4, qword_1009D00B8);
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D04A0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1003D8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v74[2] = a3;
  v78 = a2;
  v74[1] = a1;
  v79 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v79);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = v74 - v9;
  v11 = type metadata accessor for FontSource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC8AppStore14EmptyStateView_divider;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v14 = UIFontTextStyleBody;
  (*(v12 + 104))(v14, enum case for FontSource.textStyle(_:), v11);
  v86[3] = v11;
  v86[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v86);
  (*(v12 + 16))(v16, v14, v11);
  v17 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v12 + 8))(v14, v11);
  v84 = v4;
  v18 = &v4[OBJC_IVAR____TtC8AppStore14EmptyStateView_title];
  *v18 = 0;
  v18[1] = 0;
  v77 = OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel;
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D04A0);
  v21 = *(v19 - 8);
  v76 = *(v21 + 16);
  v76(v10, v20, v19);
  v75 = *(v21 + 56);
  v75(v10, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v6 + 104);
  v23(v82, enum case for DirectionalTextAlignment.none(_:), v83);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  v26 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = v84;
  *&v84[v77] = v26;
  v28 = &v27[OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionText];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel;
  if (qword_10096E138 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v19, qword_1009D1328);
  v76(v10, v30, v19);
  v75(v10, 0, 1, v19);
  v23(v82, v22, v83);
  v31 = objc_allocWithZone(v24);
  v32 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v33 = v84;
  *&v84[v29] = v32;
  v33[OBJC_IVAR____TtC8AppStore14EmptyStateView_hasDivider] = 0;
  v34 = type metadata accessor for EmptyStateView();
  v85.receiver = v33;
  v85.super_class = v34;
  v35 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = sub_100005744(0, &qword_100970180);
  v37 = v35;
  v38 = static UIColor.defaultBackground.getter();
  [v37 setBackgroundColor:v38];

  if (v78)
  {
    v39 = *&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel];
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v41 = qword_10096E8A0;
    v42 = v39;
    v43 = NSParagraphStyleAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_1009D2978;
    *(inited + 64) = sub_100005744(0, &unk_100993000);
    *(inited + 40) = v44;
    v45 = v44;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10005DC58(inited + 32);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10006F0F0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v49 = [v46 initWithString:v47 attributes:isa];

    [v42 setAttributedText:v49];
  }

  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel]];
  v50 = OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel;
  [*&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel] setNumberOfLines:0];
  if (v81)
  {
    v51 = *&v37[v50];
    sub_10002849C(&unk_100973960);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1007B1890;
    *(v52 + 32) = NSParagraphStyleAttributeName;
    v53 = qword_10096E8A0;
    v54 = v51;
    v55 = NSParagraphStyleAttributeName;
    if (v53 != -1)
    {
      swift_once();
    }

    v56 = qword_1009D2978;
    v57 = sub_100005744(0, &unk_100993000);
    *(v52 + 40) = v56;
    *(v52 + 64) = v57;
    *(v52 + 72) = NSForegroundColorAttributeName;
    v58 = v56;
    v59 = NSForegroundColorAttributeName;
    v60 = static UIColor.secondaryText.getter();
    *(v52 + 104) = v36;
    *(v52 + 80) = v60;
    sub_100397150(v52);
    swift_setDeallocating();
    sub_10002849C(&unk_100970EC0);
    swift_arrayDestroy();
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10006F0F0();
    v63 = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v61 initWithString:v62 attributes:v63];

    [v54 setAttributedText:v64];
  }

  [v37 addSubview:*&v37[v50]];
  v65 = OBJC_IVAR____TtC8AppStore14EmptyStateView_divider;
  [*&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_divider] setHidden:(v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_hasDivider] & 1) == 0];
  v66 = qword_10096EE48;
  v67 = *&v37[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_1000056A8(v79, qword_1009D36D8);
  v69 = v80;
  sub_1002BB2D0(v68, v80);
  v70 = &v67[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v69, v70);
  swift_endAccess();
  v71 = &v67[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v72 = *(v70 + 1);
  *v71 = *v70;
  *(v71 + 1) = v72;
  [v67 setNeedsLayout];
  [v67 setNeedsLayout];

  sub_1002BB398(v69);
  [v37 addSubview:*&v37[v65]];

  return v37;
}

uint64_t sub_1003D97BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmptyStateView();
  v22.receiver = v0;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC8AppStore14EmptyStateView_divider];
  [v0 frame];
  Width = CGRectGetWidth(v23);
  if (qword_10096EE48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DividerView.Style(0);
  sub_1000056A8(v10, qword_1009D36D8);
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v11 = floor(*&qword_1009D36B8);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  [v8 setFrame:{0.0, 0.0, Width, v11 + v13}];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003D9FC0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10006F094;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000489A8;
  aBlock[3] = &unk_1008C10E8;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_1003D9AF0(char *a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel];
  [a1 bounds];
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel];
  [a1 bounds];
  [v14 sizeThatFits:{v15, v16}];
  v18 = v17;
  v20 = v19;
  v21 = v13 + v19;
  [a1 bounds];
  v22 = (CGRectGetWidth(v32) - v11) * 0.5;
  [a1 bounds];
  [v7 setFrame:{v22, (CGRectGetHeight(v33) - v21) * 0.5, v11, v13}];
  [a1 bounds];
  Width = CGRectGetWidth(v34);
  [v7 lastBaselineMaxY];
  v25 = v24;
  if (qword_10096DB70 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for StaticDimension();
  sub_1000056A8(v26, qword_1009D00B8);
  v27 = [a1 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v29 = v28;

  (*(v3 + 8))(v6, v2);
  return [v14 setFrame:{(Width - v18) * 0.5, v25 + v29, v18, v20}];
}

id sub_1003D9DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView()
{
  result = qword_100983CC8;
  if (!qword_100983CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D9F08()
{
  result = type metadata accessor for StaticDimension();
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

void sub_1003D9FC8()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC8AppStore14EmptyStateView_divider;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v9 = UIFontTextStyleBody;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v36[3] = v6;
  v36[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v36);
  (*(v7 + 16))(v11, v9, v6);
  v12 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v7 + 8))(v9, v6);
  v34 = v0;
  v13 = (v0 + OBJC_IVAR____TtC8AppStore14EmptyStateView_title);
  *v13 = 0;
  v13[1] = 0;
  v31 = OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel;
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D04A0);
  v16 = *(v14 - 8);
  v30 = *(v16 + 16);
  v30(v5, v15, v14);
  v17 = *(v16 + 56);
  v17(v5, 0, 1, v14);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v19 = *(v35 + 104);
  v32 = v1;
  v35 += 104;
  v19(v33, enum case for DirectionalTextAlignment.none(_:), v1);
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = objc_allocWithZone(v20);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = v34;
  *(v34 + v31) = v22;
  v24 = (v23 + OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionText);
  *v24 = 0;
  v24[1] = 0;
  v31 = OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel;
  if (qword_10096E138 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v14, qword_1009D1328);
  v30(v5, v25, v14);
  v17(v5, 0, 1, v14);
  v19(v33, v18, v32);
  v26 = objc_allocWithZone(v20);
  v27 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v28 = v34;
  *(v34 + v31) = v27;
  *(v28 + OBJC_IVAR____TtC8AppStore14EmptyStateView_hasDivider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ProductEditorsChoiceView()
{
  result = qword_100983CF8;
  if (!qword_100983CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DA53C@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for VerticalStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  VerticalStack.init(with:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  VerticalStack.adding(_:with:)();

  v13 = *(v6 + 8);
  v13(v8, v5);
  a2[3] = v5;
  a2[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(a2);
  VerticalStack.adding(_:with:)();
  return (v13)(v11, v5);
}

char *sub_1003DA6EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  v4[qword_100983CF0] = 0;
  v25 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
  v26 = sub_10029CDF8(3u, 0, 0, 0, 1u);
  v58 = v4;
  *&v4[qword_100983CD8] = v26;
  if (qword_10096DF00 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v9, qword_1009D0C80);
  v54 = *(v10 + 16);
  v55 = v27;
  v54(v24, v27, v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  (*(v13 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v12);
  v28 = objc_allocWithZone(type metadata accessor for FadeOutDynamicTypeLabel());
  v29 = qword_100985958;
  *&v28[v29] = [objc_allocWithZone(type metadata accessor for InvertedGradientLayer()) init];
  v30 = &v28[qword_100985960];
  *v30 = 0;
  v30[8] = 1;
  sub_1003DB684(v24, v21);
  (*(v13 + 16))(v15, v18, v12);
  v31 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v13 + 8))(v18, v12);
  sub_10025BAF0(v24);
  v32 = v58;
  *&v58[qword_100983CE0] = v31;
  v33 = [objc_opt_self() clearColor];
  type metadata accessor for FadeInDynamicTypeButton();
  v34 = v56;
  v54(v56, v55, v9);
  v35 = v33;
  v36 = sub_10075332C(v34, v35);

  v37 = v36;
  v38._countAndFlagsBits = 0x4D5F4E4F49544341;
  v38._object = 0xEB0000000045524FLL;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  localizedString(_:comment:)(v38, v39);
  v40 = String._bridgeToObjectiveC()();

  [v37 setTitle:v40 forState:0];

  [v37 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v37 setAdjustsImageWhenHighlighted:0];

  *&v32[qword_100983CE8] = v37;
  v59.receiver = v32;
  v59.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = qword_100983CD8;
  v47 = *&v45[qword_100983CD8];
  sub_100028BB8();
  v48 = v47;
  v49 = static UIColor.primaryText.getter();
  [v48 setTintColor:v49];

  [v45 addSubview:*&v45[v46]];
  v50 = qword_100983CE0;
  [*&v45[qword_100983CE0] setLineBreakMode:0];
  [v45 addSubview:*&v45[v50]];
  v51 = qword_100983CE8;
  [*&v45[qword_100983CE8] setUserInteractionEnabled:0];
  [v45 addSubview:*&v45[v51]];

  return v45;
}

void sub_1003DACFC(uint64_t a1)
{
  *(a1 + qword_100983CF0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003DAD64@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v8 = *(v1 + qword_100983CD8);
  type metadata accessor for EditorsChoiceView();
  Measurable.placeable.getter();
  v3 = *(v1 + qword_100983CE0);
  v6[3] = type metadata accessor for FadeOutDynamicTypeLabel();
  v6[4] = &protocol witness table for UILabel;
  v6[0] = v3;
  v4 = v3;
  sub_1003DA53C([v8 isHidden], a1);
  sub_100007000(v7);
  return sub_100007000(v6);
}

id sub_1003DAE38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FontSource();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for StaticDimension();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = type metadata accessor for LabelPlaceholder();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomLayoutView();
  v16 = method lookup function for CustomLayoutView();
  v16();
  if (v0[qword_100983CF0] == 1)
  {
    v17 = *&v0[qword_100983CE8];

    return [v17 setHidden:1];
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v60 = *&v0[qword_100983CE0];
    v19 = [v60 text];
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    DynamicTextAppearance.init()();
    if (qword_10096DF00 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for FontUseCase();
    sub_1000056A8(v21, qword_1009D0C80);
    DynamicTextAppearance.withFontUseCase(_:)();
    (*(v9 + 8))(v11, v8);
    LabelPlaceholder.Options.init(rawValue:)();
    v22 = v15;
    LabelPlaceholder.init(_:with:where:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v69);
    v23 = [v1 traitCollection];
    LabelPlaceholder.measure(toFit:with:)();
    v25 = v24;

    v26 = v60;
    [v60 frame];
    Height = CGRectGetHeight(v70);
    v28 = *&v1[qword_100983CE8];
    if (Height >= v25)
    {
      [*&v1[qword_100983CE8] setHidden:1];
    }

    else
    {
      [*&v1[qword_100983CE8] setHidden:0];
      LayoutMarginsAware<>.layoutFrame.getter();
      [v28 sizeThatFits:{v29, v30}];
      v32 = v31;
      *v4 = UIFontTextStyleBody;
      v34 = v61;
      v33 = v62;
      (*(v61 + 104))(v4, enum case for FontSource.textStyle(_:), v62);
      v67[3] = v33;
      v67[4] = &protocol witness table for FontSource;
      v35 = sub_1000056E0(v67);
      (*(v34 + 16))(v35, v4, v33);
      v36 = UIFontTextStyleBody;
      v37 = v63;
      StaticDimension.init(_:scaledLike:)();
      (*(v34 + 8))(v4, v33);
      LayoutMarginsAware<>.layoutFrame.getter();
      Width = CGRectGetWidth(v71);
      [v26 frame];
      v39 = v32 - (Width - CGRectGetWidth(v72));
      v40 = [v1 traitCollection];
      type metadata accessor for TraitEnvironmentPlaceholder();
      v41 = v26;
      sub_10002849C(&qword_100973210);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007B0B70;
      *(v42 + 32) = v40;
      v15 = v22;
      v43 = v40;
      v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      v45 = v59;
      dispatch thunk of AnyDimension.rawValue(in:)();
      v47 = v46;

      v48 = &v41[qword_100985960];
      *v48 = v39 + v47;
      *(v48 + 8) = 0;
      [v41 setNeedsLayout];
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRectGetMaxX(v73);
      [v41 frame];
      CGRectGetMaxY(v74);
      v49 = [v1 traitCollection];
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(using:relativeTo:)();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v28 setFrame:{v51, v53, v55, v57}];
      (*(v58 + 8))(v37, v45);
    }

    return (*(v64 + 8))(v15, v65);
  }
}

void sub_1003DB56C()
{
  v1 = *(v0 + qword_100983CE8);
}

void sub_1003DB5BC(uint64_t a1)
{
  v2 = *(a1 + qword_100983CE8);
}

uint64_t sub_1003DB684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003DB6F4()
{
  [v0 removeMenuForIdentifier:UIMenuFind];
  [v0 removeMenuForIdentifier:UIMenuView];
  [v0 removeMenuForIdentifier:UIMenuFormat];
  v4[4] = sub_1003DBA14;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1003DBA18;
  v4[3] = &unk_1008C1138;
  v1 = _Block_copy(v4);

  [v0 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v1];
  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v2 = [v0 menuForIdentifier:UIMenuClose];
    if (v2)
    {
      v3 = v2;
      [v0 removeMenuForIdentifier:UIMenuFile];
      [v0 insertChildMenu:v3 atEndOfMenuForIdentifier:UIMenuWindow];
    }
  }
}

double *sub_1003DB894(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v5;
        if ([v8 action])
        {
          v10 = static Selector.== infix(_:_:)();

          if (v10)
          {

            goto LABEL_6;
          }
        }

        else
        {
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

Class sub_1003DBA18(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1003DBAA0();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

unint64_t sub_1003DBAA0()
{
  result = qword_1009818C0;
  if (!qword_1009818C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009818C0);
  }

  return result;
}

uint64_t sub_1003DBAEC()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = type metadata accessor for PageGrid.HorizontalMargins();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_10002849C(&qword_100970EF0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  v47 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  (v30)(v3, v48, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100983D48 = v39;
  return result;
}

uint64_t sub_1003DC520()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = type metadata accessor for PageGrid.HorizontalMargins();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10002849C(&qword_100970EF0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  v43 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v41 = v15;
  v44 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v30(v3, v45, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100983D50 = v39;
  return result;
}

uint64_t sub_1003DCF2C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __chkstk_darwin(v1);
    Box.write(with:)();
  }

  return result;
}

uint64_t sub_1003DCFF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1003DD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10002849C(&qword_100983E40);
  v10 = Promise.__allocating_init()();

  sub_1003DED84(sub_1003DF118, v4);

  v11 = [objc_allocWithZone(ADSearchCriteria) init];
  v12 = String._bridgeToObjectiveC()();
  [v11 setLanguageLocale:v12];

  v13 = String._bridgeToObjectiveC()();
  [v11 setSearchTerm:v13];

  v14 = *(v5 + 40);
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v18[4] = sub_1003DF128;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1003DD5E8;
  v18[3] = &unk_1008C1228;
  v16 = _Block_copy(v18);
  swift_unknownObjectRetain();

  [v14 searchObjectForCriteria:v11 withCompletionHandler:v16];
  _Block_release(v16);
  sub_1003DD674(v10);

  return v10;
}

uint64_t sub_1003DD280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a4;
  v10 = type metadata accessor for SponsoredSearchRequestData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  result = Promise.isResolved.getter();
  if (result)
  {
    return result;
  }

  if (a2)
  {
    return Promise.reject(_:)();
  }

  v18 = [a1 sponsoredSearchRequestData];
  if (v18)
  {
    v19 = v18;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [a1 routingInfoData];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v25;
      v40 = v24;

      v26 = [a1 userTargetingID];
      v41 = v21;
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v29;
        v38 = v28;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      v31 = [a1 deviceRequestID];
      if (v31)
      {
        v32 = v31;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      SponsoredSearchRequestData.init(iAdId:sponsoredSearchRequestData:routingInfo:canaryId:)();
      (*(v11 + 16))(v13, v16, v10);
      v33 = type metadata accessor for SearchAdsAdvertPipeline();
      swift_allocObject();
      swift_unknownObjectRetain();

      v34 = a1;
      v35 = sub_10024796C(v34, a6, v43);
      v46 = v33;
      v47 = sub_1003DF194(&qword_100983E50, type metadata accessor for SearchAdsAdvertPipeline);
      v45 = v35;
      type metadata accessor for SponsoredSearchSession();
      swift_allocObject();
      v45 = SponsoredSearchSession.init(term:requestData:advertPipeline:)();
      Promise.resolve(_:)();
      (*(v11 + 8))(v16, v10);
    }
  }

  sub_1003DF140();
  swift_allocError();
  *v30 = 0;
  Promise.reject(_:)();
}

void sub_1003DD5E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1003DD674(uint64_t a1)
{
  v28 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v27 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.userInteractive(_:), v13);
  v26 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  aBlock[4] = sub_1003DF138;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C12A0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1003DF194(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  v22 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v32 + 8))(v2, v22);
  (*(v30 + 8))(v5, v31);
  v17(v12, v27);
}

uint64_t sub_1003DDB14(uint64_t a1)
{
  v2 = type metadata accessor for SponsoredSearchRequestData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    SponsoredSearchSession.requestData.getter();
    v7 = SponsoredSearchRequestData.iAdId.getter();
    v9 = v8;
    v4 = (*(v3 + 8))(v6, v2);
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  __chkstk_darwin(v4);
  *(&v19 - 2) = v7;
  *(&v19 - 1) = v9;
  Box.write(with:)();

  if (a1)
  {
    SponsoredSearchSession.requestData.getter();
    SponsoredSearchRequestData.canaryId.getter();
    v10 = *(v3 + 8);
    v10(v6, v2);
    static GlobalEventCanary.value.setter();
    SponsoredSearchSession.requestData.getter();
    v11 = SponsoredSearchRequestData.canaryId.getter();
    v13 = v12;
    v14 = (v10)(v6, v2);
  }

  else
  {
    v14 = static GlobalEventCanary.value.setter();
    v11 = 0;
    v13 = 0;
  }

  __chkstk_darwin(v14);
  *(&v19 - 2) = v11;
  *(&v19 - 1) = v13;
  Box.write(with:)();

  if (a1)
  {
    SponsoredSearchSession.requestData.getter();
    v16 = SponsoredSearchRequestData.routingInfo.getter();
    a1 = v17;
    v15 = (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = 0;
  }

  __chkstk_darwin(v15);
  *(&v19 - 2) = v16;
  *(&v19 - 1) = a1;
  Box.write(with:)();
}

uint64_t sub_1003DDDDC(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100983E58);
  Box.read<A>(with:)();
  if (!v10)
  {
    return 0;
  }

  v4 = SponsoredSearchSession.term.getter();
  v6 = v5;

  if (v4 == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  Box.read<A>(with:)();
  return v10;
}

void sub_1003DDEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(CLLocationManager) init];
  if ([objc_opt_self() locationServicesEnabled] && objc_msgSend(v17, "authorizationStatus") == 4)
  {
    sub_1000076C0();
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_100055FCC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C11D8;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003DF194(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v14);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = v17;
  }
}

uint64_t sub_1003DE238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogMessageLevel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetricsLogger.Configuration();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Logger();
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v25 = v7;
    v26 = v9;
    v27 = v6;
    v28 = v4;
    v29 = v3;
    v30 = a2;
    if (qword_10096D130 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for OSLogger();
    sub_1000056A8(v15, qword_1009CE248);
    v16 = sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    v24 = v16;
    *(swift_allocObject() + 16) = xmmword_1007B1890;

    static LogMessage.identity(_:)();

    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    Logger.init()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "SponsoredSearchSession promise timeout", v19, 2u);
    }

    (*(v10 + 8))(v12, v31);
    (*(v32 + 16))(v26, v14 + OBJC_IVAR____TtC8AppStore38SearchAdsSponsoredSearchSessionManager_metricsLoggerConfiguration, v25);
    type metadata accessor for MetricsLogger();
    swift_allocObject();
    MetricsLogger.init(loggerName:configuration:)();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    v21 = v27;
    v20 = v28;
    v22 = v29;
    (*(v28 + 104))(v27, enum case for LogMessageLevel.error(_:), v29);
    MetricsLogger.log(contentsOf:withLevel:)();

    (*(v20 + 8))(v21, v22);
    sub_1003DF140();
    swift_allocError();
    *v23 = 1;
    Promise.invalidate(_:)();
  }

  return result;
}

uint64_t sub_1003DE71C()
{

  v1 = OBJC_IVAR____TtC8AppStore38SearchAdsSponsoredSearchSessionManager_metricsLoggerConfiguration;
  v2 = type metadata accessor for MetricsLogger.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchAdsSponsoredSearchSessionManager()
{
  result = qword_100983D88;
  if (!qword_100983D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DE834()
{
  result = type metadata accessor for MetricsLogger.Configuration();
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

uint64_t sub_1003DE8F4(uint64_t a1)
{
  Box.write(with:)();

  sub_1003DED84(sub_1003DEA60, v1);

  return sub_1003DDB14(a1);
}

uint64_t sub_1003DEA1C(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

char *sub_1003DEA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  aBlock[0] = 0;
  sub_10002849C(&unk_100983E60);
  swift_allocObject();
  *(v6 + 4) = Box.init(value:)();
  *(v6 + 7) = [objc_allocWithZone(ASKGreenTeaLogger) init];
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = [v11 mainBundle];
  sub_1005A4778();

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  if (a2)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(ADSearchSession) initWithAppID:v15 appVersion:v16 appsRank:1 storeFront:v17];

  *(v7 + 5) = v18;
  *(v7 + 6) = a5;
  *(v7 + 2) = v26;
  *(v7 + 3) = v28;
  v19 = OBJC_IVAR____TtC8AppStore38SearchAdsSponsoredSearchSessionManager_metricsLoggerConfiguration;
  v20 = type metadata accessor for MetricsLogger.Configuration();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v7[v19], a6, v20);
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003DF1DC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003DCFF4;
  aBlock[3] = &unk_1008C12C8;
  v23 = _Block_copy(aBlock);

  [v18 requestUserTargetingIdentifier:v23];
  _Block_release(v23);
  (*(v21 + 8))(a6, v20);
  return v7;
}

uint64_t sub_1003DED84(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1003DF110;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1188;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1003DF194(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);
}

unint64_t sub_1003DF140()
{
  result = qword_100983E48;
  if (!qword_100983E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E48);
  }

  return result;
}

uint64_t sub_1003DF194(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003DF20C(void *a1, double a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (GameCenterReengagement.lockup.getter())
  {
    v11 = [a4 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_1003DF3C4(v10);
      swift_getObjectType();
      a2 = sub_10070B598(v10, a1);

      (*(v8 + 8))(v10, v7);
    }
  }

  return a2;
}

uint64_t sub_1003DF3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v7 = sub_1000056A8(v6, qword_1009D3798);
  (*(*(v6 - 8) + 16))(a1, v7, v6);
  Lockup.subtitle.getter();
  if (v8)
  {
  }

  else
  {
    if (qword_10096DD00 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for FontUseCase();
    v10 = sub_1000056A8(v9, qword_1009D0698);
    (*(*(v9 - 8) + 16))(v5, v10, v9);
    (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
    v15 = type metadata accessor for StaticDimension();
    v16 = &protocol witness table for StaticDimension;
    sub_1000056E0(v14);
    v13[3] = v2;
    v13[4] = &protocol witness table for FontSource;
    v11 = sub_1000056E0(v13);
    (*(v3 + 16))(v11, v5, v2);
    StaticDimension.init(_:scaledLike:)();
    (*(v3 + 8))(v5, v2);
    SmallLockupLayout.Metrics.headingSpace.setter();
  }

  v15 = &type metadata for Double;
  v16 = &protocol witness table for Double;
  v14[0] = 0;
  SmallLockupLayout.Metrics.bottomSpace.setter();
  SmallLockupLayout.Metrics.artworkSize.setter();
  return SmallLockupLayout.Metrics.artworkMargin.setter();
}

uint64_t sub_1003DF66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = type metadata accessor for Artwork.Crop();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = type metadata accessor for SmallLockupLayout.Metrics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&qword_100983ED0);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = GameCenterReengagement.backgroundColor.getter();
  [v6 setBackgroundColor:v30];

  GameCenterReengagement.badgeGlyph.getter();
  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge];
  GameCenterReengagement.badge.getter();
  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title];
  GameCenterReengagement.title.getter();
  v39 = String._bridgeToObjectiveC()();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle];
  GameCenterReengagement.subtitle.getter();
  if (v41)
  {
    v42 = String._bridgeToObjectiveC()();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent];
  GameCenterReengagement.achievement.getter();
  v44 = type metadata accessor for Achievement();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  AchievementCard.model.setter();
  v45 = dispatch thunk of GameCenterReengagement.clickAction.getter();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    dispatch thunk of ImageAlignedButton.primaryActionHandler.setter();
    Action.title.getter();
    if (v49)
    {
      v50 = String._bridgeToObjectiveC()();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = dispatch thunk of GameCenterReengagement.heroAction.getter();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8AppStore26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC8AppStore26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (GameCenterReengagement.backgroundArtwork.getter())
  {
    v56 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    Artwork.config(using:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v56 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    type metadata accessor for ArtworkView();
    sub_1003E0E44(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  result = GameCenterReengagement.lockup.getter();
  v58 = v94;
  if (result)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup];
    v60 = result;
    sub_1003DF3C4(v94);
    v61 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_10002849C(&unk_100973240);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = type metadata accessor for OfferStyle();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = type metadata accessor for OfferEnvironment();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_10002849C(&unk_1009701A0);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = type metadata accessor for OfferTint();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_1004F3190(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10002B894(v75, &unk_100973AD0);
    v59[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v59 setNeedsLayout];
    sub_10002B894(v73, &unk_100970150);
    sub_10002B894(v71, &unk_100970160);
    sub_10002B894(v69, &qword_100973AE0);
    sub_10002B894(v67, &unk_100973230);
    v93 = v60;
    if (Lockup.icon.getter())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v83(v58, v76);
      v77 = v86;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v87 + 8))(v77, v88);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v78 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v79 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v80 = *&v59[v78];
      type metadata accessor for ArtworkView();
      sub_1003E0E44(&qword_100970E80, &type metadata accessor for ArtworkView);
      v81 = v80;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  return result;
}

uint64_t sub_1003E0478(uint64_t a1, uint64_t a2)
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

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1003E0680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameCenterReengagementLayout();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  GameCenterReengagement.badge.getter();
  v13 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for FontUseCase();
  sub_1000056A8(v45, qword_1009D1A00);
  v14 = [a4 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v15 = type metadata accessor for Feature();
  v64[3] = v15;
  v44 = sub_1003E0E44(&qword_100972E50, &type metadata accessor for Feature);
  v64[4] = v44;
  v16 = sub_1000056E0(v64);
  v17 = *(v15 - 8);
  v18 = *(v17 + 104);
  v43 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = v17 + 104;
  v42 = v18;
  v18(v16);
  isFeatureEnabled(_:)();
  sub_100007000(v64);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v40 = v13;
  v19 = *(v46 + 8);
  v19(v12, v47);
  GameCenterReengagement.title.getter();
  v46 = a1;
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v45, qword_1009D1A18);
  v20 = [a4 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v63[3] = v15;
  v63[4] = v44;
  v21 = sub_1000056E0(v63);
  v42(v21, v43, v15);
  isFeatureEnabled(_:)();
  sub_100007000(v63);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v19(v12, v47);
  GameCenterReengagement.subtitle.getter();
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v45, qword_1009D1A30);
  v22 = [a4 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v62[3] = v15;
  v62[4] = v44;
  v23 = sub_1000056E0(v62);
  v42(v23, v43, v15);
  isFeatureEnabled(_:)();
  sub_100007000(v62);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v19(v12, v47);
  v24 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v25 = LayoutViewPlaceholder.init(measurements:)();
  v26 = swift_allocObject();
  v26[2] = v46;
  v26[3] = a4;
  v26[4] = v35[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v27 = LayoutViewPlaceholder.init(measureWith:)();
  sub_10041DBC0(a4, v36);
  v61 = 0;
  *&v59[40] = 0u;
  v60 = 0u;
  sub_10002C0AC(v64, v59);
  sub_10002C0AC(v63, &v58);
  sub_10002C0AC(v62, &v57);
  v55 = v24;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v25;

  v28 = [a4 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v29 = LayoutViewPlaceholder.init(representing:)();
  v52 = v24;
  v53 = &protocol witness table for LayoutViewPlaceholder;
  v50 = &protocol witness table for LayoutViewPlaceholder;
  v51 = v29;
  v49 = v24;
  v48 = v27;

  v30 = v37;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  sub_1003E0E44(&unk_100993010, &type metadata accessor for GameCenterReengagementLayout);
  v31 = v39;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v33 = v32;

  (*(v38 + 8))(v30, v31);
  sub_100007000(v62);
  sub_100007000(v63);
  sub_100007000(v64);
  return v33;
}

uint64_t sub_1003E0E44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003E0E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = type metadata accessor for Artwork.Crop();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v6 + 8))(v8, v17);
        Artwork.config(_:mode:prefersLayeredImage:)();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v20, &qword_10096FB90);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

id sub_1003E10AC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v223 = a5;
  v224 = a4;
  v216 = a3;
  v228 = a2;
  v232 = a1;
  v15 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v15 - 8);
  v198 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Artwork.Crop();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v18 - 8);
  v213 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v212 = &v194 - v21;
  v22 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v22 - 8);
  v211 = &v194 - v23;
  v24 = type metadata accessor for VideoControls();
  __chkstk_darwin(v24 - 8);
  v210 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v209 = &v194 - v27;
  v28 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v28 - 8);
  v208 = &v194 - v29;
  v206 = type metadata accessor for VideoFillMode();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v207 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for VideoConfiguration();
  v214 = *(v215 - 8);
  __chkstk_darwin(v215);
  v219 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for AdamId();
  v230 = *(v234 - 8);
  __chkstk_darwin(v234);
  v233 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for MediaOverlayStyle();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&qword_100983ED8);
  __chkstk_darwin(v34 - 8);
  v218 = &v194 - v35;
  v221 = type metadata accessor for ArtworkGridType();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v204 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v217 = &v194 - v38;
  v231 = type metadata accessor for EditorialSearchResultType();
  v227 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v194 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v226 = &v194 - v41;
  __chkstk_darwin(v42);
  v44 = &v194 - v43;
  v45 = type metadata accessor for AspectRatio();
  v225 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AspectFitMeasurable();
  v49 = *(v48 - 8);
  *&v50 = __chkstk_darwin(v48).n128_u64[0];
  v52 = &v194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [a6 contentView];
  [v53 setLayoutMargins:{a7, a8, a9, a10}];

  v235[0] = a6;
  v54 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v55 = sub_1003E38A8(&qword_100983EE0, type metadata accessor for EditorialSearchResultCollectionViewCell);
  v56 = a6;
  v202 = v55;
  AnyHashable.init<A>(_:)();
  dispatch thunk of ArtworkIconFetcher.forgetFetches(for:)();
  sub_10003D614(v236);
  v203 = v54;
  LayoutMarginsAware<>.layoutFrame.getter();
  if (qword_10096EFF8 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v57 = sub_1000056A8(v45, qword_1009D4348);
    v58 = v225;
    (*(v225 + 16))(v47, v57, v45);
    v194 = v47;
    AspectFitMeasurable.init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v60 = v59;
    v62 = v61;
    (*(v49 + 8))(v52, v48);
    EditorialSearchResult.type.getter();
    v63 = v227;
    v64 = v231;
    v65 = (*(v227 + 88))(v44, v231);
    v66 = v45;
    v222 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v65 == enum case for EditorialSearchResultType.category(_:) || v65 == enum case for EditorialSearchResultType.collection(_:) || v65 == enum case for EditorialSearchResultType.story(_:) || v65 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 1;
      [*&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:0];
      [v56 setNeedsLayout];
    }

    else
    {
      v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
      [*&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:1];
      [v56 setNeedsLayout];
      (*(v63 + 8))(v44, v64);
    }

    v67 = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
    sub_1007821C0(v67, v68);
    EditorialSearchResult.title.getter();
    v70 = v69;
    v71 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_titleLabel];
    v72 = v69 ? String._bridgeToObjectiveC()() : 0;
    [v71 setText:v72];

    [v71 setHidden:v70 == 0];
    [v56 setNeedsLayout];
    EditorialSearchResult.subtitle.getter();
    v74 = v73;
    v75 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel];
    v76 = v73 ? String._bridgeToObjectiveC()() : 0;
    [v75 setText:v76];

    [v75 setHidden:v74 == 0];
    [v56 setNeedsLayout];
    v52 = v232;
    v77 = EditorialSearchResult.collectionAdamIds.getter();
    v78 = v63;
    v79 = v226;
    if (!v77)
    {
      break;
    }

    v80 = v77;
    v81 = v218;
    EditorialSearchResult.artworkGridType.getter();
    v82 = v220;
    v83 = v221;
    if ((*(v220 + 48))(v81, 1, v221) == 1)
    {

      sub_10002B894(v81, &qword_100983ED8);
      break;
    }

    v96 = v217;
    (*(v82 + 32))(v217, v81, v83);
    v97 = v204;
    (*(v82 + 16))(v204, v96, v83);
    v98 = (*(v82 + 88))(v97, v83);
    if (v98 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_23;
    }

    if (v98 == enum case for ArtworkGridType.large(_:))
    {
      v99 = 1;
    }

    else if (v98 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v99 = 2;
    }

    else
    {
      if (v98 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v82 + 8))(v97, v83);
LABEL_23:
        v99 = 0;
        goto LABEL_41;
      }

      v99 = 3;
    }

LABEL_41:
    v114 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v115 = sub_1006B52EC(v99, 0.0, 0.0, 0.0, 0.0);
    sub_1006AD188();
    v116 = v115[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
    v117.f64[0] = v60;
    v118 = sub_1006B4CD4(v116, v117, v62);
    v49 = *(v80 + 2);
    if (v118 < v49)
    {
      v119.f64[0] = v60;
      v120 = sub_1006B4CD4(v116, v119, v62);
      if ((v120 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 >= v120)
      {
        if (v49 == v120)
        {
LABEL_58:
          v123 = v80;
        }

        else
        {
          v218 = v115;
          v219 = v56;
          v121 = &v80[(*(v230 + 80) + 32) & ~*(v230 + 80)];
          v228 = v80;
          sub_1005E7D94(v80, v121, 0, (2 * v120) | 1);
          v123 = v122;
LABEL_46:

          v56 = v219;
          v78 = v227;
          v79 = v226;
          v115 = v218;
        }

        *&v115[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = *(v123 + 2);
        sub_1006B5128();
        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = swift_allocObject();
        v128[2] = v115;
        v128[3] = v127;
        v129 = v223;
        v128[4] = v223;
        v130 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v131 = swift_allocObject();
        v131[2] = v115;
        v131[3] = v130;
        v131[4] = v129;
        v236[0] = v56;
        v132 = v115;
        swift_retain_n();
        v133 = v56;
        v134 = v132;
        AnyHashable.init<A>(_:)();
        dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

        sub_10002B894(v235, &qword_10096FB90);
        sub_10003D614(v236);
        v135 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid;
        v136 = *&v133[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid];
        v137 = v134;
        if (v136)
        {
          [v136 removeFromSuperview];
          v138 = *&v133[v135];
        }

        else
        {
          v138 = 0;
        }

        v139 = v221;
        *&v133[v135] = v134;
        v140 = v134;

        sub_100782714();
        (*(v220 + 8))(v217, v139);
        goto LABEL_63;
      }

      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v118 <= v49)
    {
      goto LABEL_58;
    }

    v225 = v118 - v49;
    if (v118 - v49 < 0)
    {
      goto LABEL_101;
    }

    if (v49)
    {
      v218 = v115;
      v219 = v56;

      v123 = v80;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_51;
      }

      goto LABEL_103;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    v123 = sub_100034724(0, v49 + 1, 1, v80);
LABEL_51:
    v48 = 0;
    v45 = (*(v230 + 80) + 32) & ~*(v230 + 80);
    v228 = v80;
    v47 = &v80[v45];
    v56 = (v230 + 16);
    v44 = (v230 + 32);
    while (1)
    {
      v124 = v48 % v49;
      if (v48 % v49 < 0)
      {
        break;
      }

      if (v124 >= *(v228 + 2))
      {
        goto LABEL_96;
      }

      v52 = *(v230 + 72);
      (*(v230 + 16))(v233, &v47[v52 * v124], v234);
      v126 = *(v123 + 2);
      v125 = *(v123 + 3);
      if (v126 >= v125 >> 1)
      {
        v123 = sub_100034724(v125 > 1, v126 + 1, 1, v123);
      }

      ++v48;
      *(v123 + 2) = v126 + 1;
      (*v44)(&v123[v45 + v126 * v52], v233, v234);
      if (v225 == v48)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  if (EditorialSearchResult.editorialVideo.getter())
  {
    (*(v205 + 104))(v207, enum case for VideoFillMode.scaleAspectFill(_:), v206);
    Video.preview.getter();
    Artwork.size.getter();
    v84 = v208;
    AspectRatio.init(_:_:)();

    (*(v58 + 56))(v84, 0, 1, v66);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v85 = v236[0];
    Video.playbackId.getter();
    v86 = v211;
    Video.videoUrl.getter();
    v87 = type metadata accessor for URL();
    (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
    v88 = v212;
    Video.templateMediaEvent.getter();
    v89 = v213;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1003E38A8(&qword_100973190, type metadata accessor for VideoView);
    v234 = v85;
    v90 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v89, &unk_100973A50);
    sub_10002B894(v88, &unk_100973A50);
    sub_10002B894(v86, &qword_100982460);
    sub_10002B894(v236, &qword_10096FB90);
    sub_1007845C4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v92 = Strong;
      v93 = [v56 contentView];
      [v93 addSubview:v92];
    }

    [v56 setNeedsLayout];

    v94 = swift_unknownObjectWeakLoadStrong();
    v79 = v226;
    v78 = v227;
    if (v94)
    {
      v95 = v94;
      Video.preview.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();

      sub_1003E38A8(&unk_1009840E0, type metadata accessor for VideoView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      (*(v214 + 8))(v219, v215);
    }

    else
    {
      (*(v214 + 8))(v219, v215);
    }
  }

  else if (EditorialSearchResult.editorialArtwork.getter())
  {
    type metadata accessor for ArtworkView();
    v100 = static ArtworkView.cardArtworkView.getter();
    [v100 setContentMode:2];
    Artwork.config(using:)();
    sub_1003E38A8(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v101 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v102 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    v103 = v100;
    if (v102)
    {
      [v102 removeFromSuperview];
      v104 = v56;
      v105 = *&v56[v101];
    }

    else
    {
      v104 = v56;
      v105 = 0;
    }

    *&v104[v101] = v100;
    v112 = v100;

    v113 = [v104 contentView];
    [v113 addSubview:v112];

    [v104 setNeedsLayout];

    v56 = v104;
  }

  else if (EditorialSearchResult.iconArtwork.getter())
  {
    v106 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    Artwork.size.getter();
    v107 = v194;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    (*(v58 + 8))(v107, v66);
    v108 = v195;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v196 + 8))(v108, v197);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v106 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    sub_1003E38A8(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v109 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView;
    v110 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView];
    v111 = v106;
    if (v110)
    {
      [v110 removeFromSuperview];
      v110 = *&v56[v109];
    }

    *&v56[v109] = v106;
    v193 = v106;

    sub_100782424();
  }

LABEL_63:
  EditorialSearchResult.type.getter();
  (*(v78 + 104))(v229, v222, v231);
  sub_1003E38A8(&qword_100983EE8, &type metadata accessor for EditorialSearchResultType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v141 = &selRef__setDefaultAttributes_;
  if (v236[0] == v235[0] && v236[1] == v235[1])
  {
    v142 = *(v78 + 8);
    v143 = v231;
    v142(v229, v231);
    v142(v79, v143);

LABEL_67:
    v147 = EditorialSearchResult.appEventFormattedDates.getter();
    if (v147 >> 62)
    {
      v148 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v148)
    {
      v149 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
      v150 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
      if (v150)
      {
        goto LABEL_71;
      }

      v165 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v166 = *&v56[v149];
      if (v166)
      {
        [v166 removeFromSuperview];
        v167 = *&v56[v149];
      }

      else
      {
        v167 = 0;
      }

      *&v56[v149] = v165;
      v180 = v165;

      if (v180)
      {
        v181 = v180[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
        v180[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 6;
        sub_1002C3F30(v181);
        v182 = [v56 contentView];
        [v182 addSubview:v180];
      }

      [v56 setNeedsLayout];

      v183 = *&v56[v149];
      if (v183)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v184 = v183;
        BaseObjectGraph.optional<A>(_:)();
        v185 = v236[0];
        v186 = v56;
        v187 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v188 = *&v184[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v189 = v188;
        sub_1002C55E4(v185);
        v190 = *&v184[v187];
        *&v184[v187] = v185;
        v56 = v186;
        v141 = &selRef__setDefaultAttributes_;
        v191 = v185;

        sub_1002C5748(v188);
        v192 = *&v56[v149];
        if (v192)
        {
          *(v192 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008D1D30;
          swift_unknownObjectWeakAssign();
          v150 = *&v56[v149];
          if (v150)
          {
LABEL_71:
            v151 = v150;
            v152 = [v56 contentView];
            [v152 bringSubviewToFront:v151];

            v153 = EditorialSearchResult.appEventFormattedDates.getter();
            type metadata accessor for AppEventFormattedDatePresenter(0);
            swift_allocObject();
            v154 = v151;
            v155 = sub_1006E6CE8(v153, v150, &off_1008BC738);

            v156 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
            swift_beginAccess();
            *&v154[v156] = v155;
          }
        }
      }
    }

    v157 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
    v158 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
    if (v158)
    {
      v159 = v158;
      v160 = EditorialSearchResult.tintColor.getter();
      v161 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v162 = *&v159[v161];
      if (v162)
      {
        v163 = v141[469];
        v164 = v162;
        [v164 v163];
      }

      else
      {

        v159 = v160;
      }

      v168 = *&v56[v157];
      if (v168)
      {
        v169 = v168;
        v170 = v199;
        EditorialSearchResult.mediaOverlayStyle.getter();
        v171 = MediaOverlayStyle.userInterfaceStyle.getter();
        (*(v200 + 8))(v170, v201);
        [v169 setOverrideUserInterfaceStyle:v171];
      }
    }

    v172 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v173 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    if (v173)
    {
      v174 = v173;
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v175 = *&v56[v172];
      if (v175)
      {
        v176 = v175;
        if (!EditorialSearchResult.tintColor.getter())
        {
          v177 = [objc_opt_self() clearColor];
        }

        dispatch thunk of RoundedCornerView.borderColor.setter();
      }
    }
  }

  else
  {
    v144 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v145 = *(v78 + 8);
    v146 = v231;
    v145(v229, v231);
    v145(v79, v146);

    if (v144)
    {
      goto LABEL_67;
    }
  }

  sub_100005744(0, &qword_100970180);
  v178 = static UIColor.defaultBackground.getter();
  [v56 v141[469]];

  return [v56 setNeedsLayout];
}

double sub_1003E2F10(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
  v14 = v13;
  v39[1] = EditorialSearchResult.title.getter();
  v16 = v15;
  v39[2] = EditorialSearchResult.subtitle.getter();
  v47 = v17;
  v44 = a1;
  CGSize.subtracting(insets:)();
  if (qword_10096F018 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v10, qword_1009D4388);
  if (qword_10096F030 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_1009D43D0);
  v45 = v16;
  if (v16)
  {
    v18 = v14;
    v19 = a3;
    v20 = type metadata accessor for Feature();
    v49 = v20;
    v50 = sub_1003E38A8(&qword_100972E50, &type metadata accessor for Feature);
    v21 = sub_1000056E0(v48);
    (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
    isFeatureEnabled(_:)();
    sub_100007000(v48);
    a3 = v19;
    v14 = v18;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    AnyDimension.topMargin(from:in:)();
  }

  v22 = v47;
  v23 = v9;
  if (qword_10096F020 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v10, qword_1009D43A0);
  (*(v11 + 16))(v46, v24, v10);
  v25 = v40;
  if (qword_10096F038 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v7, qword_1009D43E8);
  (*(v25 + 16))(v23, v26, v7);
  if (v22)
  {
    v27 = type metadata accessor for Feature();
    v49 = v27;
    v50 = sub_1003E38A8(&qword_100972E50, &type metadata accessor for Feature);
    v28 = sub_1000056E0(v48);
    (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
    isFeatureEnabled(_:)();
    sub_100007000(v48);
    v29 = v46;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    AnyDimension.topMargin(from:in:)();
    (*(v25 + 8))(v23, v7);
    (*(v11 + 8))(v29, v10);
  }

  else
  {
    (*(v25 + 8))(v23, v7);
    (*(v11 + 8))(v46, v10);
  }

  v30 = v43;
  v31 = v41;
  if (qword_10096F010 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v10, qword_1009D4370);
  if (qword_10096F028 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_1009D43B8);
  if (v14)
  {
    v32 = type metadata accessor for Feature();
    v49 = v32;
    v50 = sub_1003E38A8(&qword_100972E50, &type metadata accessor for Feature);
    v33 = sub_1000056E0(v48);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    isFeatureEnabled(_:)();
    sub_100007000(v48);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    AnyDimension.topMargin(from:in:)();
  }

  v34 = [a3 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  sub_100005744(0, &qword_1009730E0);
  v35 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  StaticDimension.value(compatibleWith:rounded:)();
  UIFont.estimatedFirstBaseline.getter();

  v36 = *(v42 + 8);
  v36(v31, v30);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v36(v31, v30);
  if (qword_10096EFF8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for AspectRatio();
  sub_1000056A8(v37, qword_1009D4348);
  AspectRatio.width(fromHeight:)();
  AspectRatio.height(fromWidth:)();

  return v44;
}

uint64_t sub_1003E38A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E3900(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v42 = a1;
  v43 = type metadata accessor for FontSource();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.super.isa = a3;
  if (a4)
  {
    static UIButton.Configuration.gray()();
  }

  else
  {
    static UIButton.Configuration.plain()();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = UIButton.Configuration.background.modify();
    v39 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    UIBackgroundConfiguration.strokeColor.setter();
    v24(v44, 0);
    v25 = v23;
    v7 = v22;
    v13 = v39;
    [(objc_class *)v25 displayScale];
    v26 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.strokeWidth.setter();
    v26(v44, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  if (a2)
  {
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_10096E1A0;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for FontUseCase();
    v31 = sub_1000056A8(v30, qword_1009D1460);
    v32 = v40;
    (*(*(v30 - 8) + 16))(v40, v31, v30);
    v33 = v43;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v43);
    isa = FontSource.font(compatibleWith:)(v41).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_100005744(0, &qword_1009730E0);
    *(inited + 40) = isa;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100970EC0);
    AttributeContainer.init(_:)();
    AttributedString.init(_:attributes:)();
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = type metadata accessor for AttributedString();
  (*(*(v36 - 8) + 56))(v12, v35, 1, v36);
  return UIButton.Configuration.attributedTitle.setter();
}

NSString sub_1003E3E1C()
{
  result = String._bridgeToObjectiveC()();
  qword_100983EF0 = result;
  return result;
}

uint64_t sub_1003E3E5C()
{
  v0 = sub_10002849C(&qword_100975C10);
  __chkstk_darwin(v0);
  v1 = sub_10002849C(&qword_100975C20);
  sub_100005644(v1, qword_100983EF8);
  sub_1000056A8(v1, qword_100983EF8);
  sub_100005744(0, &qword_1009811E0);
  ViewRecycler.init()();
  sub_100097060(&qword_100975C18, &qword_100975C10);
  return ReusePool.init(recycler:limit:)();
}

uint64_t sub_1003E3F80()
{
  v0 = type metadata accessor for OSLogger();
  sub_100005644(v0, qword_100983F10);
  v1 = sub_1000056A8(v0, qword_100983F10);
  if (qword_10096D128 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009CE230);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E4048()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = GuidedSearchToken.clickAction.getter();
    sub_1005D0214(v2, 1, v1);
  }

  return result;
}

void sub_1003E40D0(uint64_t a1, char a2, uint64_t a3, objc_class *a4)
{
  v6 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v6);
  v7 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = GuidedSearchToken.displayName.getter();
  sub_1003E3900(v10, v11, a4, a2 & 1);

  v12 = type metadata accessor for UIButton.Configuration();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  UIButton.configuration.setter();
  v13 = [(objc_class *)a4 preferredContentSizeCategory];
  v14 = sub_100459B00(v13);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    UIView.traitOverrides.getter();
    UIMutableTraits.preferredContentSizeCategory.setter();
    UIView.traitOverrides.setter();
  }

  else
  {
    type metadata accessor for UITraitPreferredContentSizeCategory();
    UIView.traitOverrides.getter();
    UITraitOverrides.remove(_:)();
    UIView.traitOverrides.setter();
  }
}

char *sub_1003E42C8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_10002849C(&qword_10097B110);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1007B1890;
    *(v28 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = type metadata accessor for UITraitLegibilityWeight();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003E4644()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_1003E7B28((v9 + 16), 0x74696E696564, 0xE600000000000000);
    swift_endAccess();
  }

  else
  {
    sub_100005744(0, &qword_1009729E0);
    v19 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1003E823C;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C15E8;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003E8244(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags);
    v17 = v6;
    sub_10002849C(&unk_1009729F0);
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v18;
    v12 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v20 + 8))(v8, v17);
  }

  v14 = type metadata accessor for GuidedSearchResultContentView();
  v21.receiver = v1;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, "dealloc");
}

uint64_t sub_1003E4A0C(uint64_t a1)
{
  swift_beginAccess();
  sub_1003E7B28((a1 + 16), 0x74696E696564, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_1003E4B30(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57 = type metadata accessor for DispatchPredicate();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = (v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for GuidedSearchResult();
  sub_1003E8244(&qword_100983FB8, 255, &type metadata accessor for GuidedSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v7 = aBlock[0];
  if (aBlock[0])
  {
    v47 = v3;
    *&v2[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v8 = *&v2[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title];
    GuidedSearchResult.title.getter();
    v58 = v2;
    if (v9)
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    [v8 setText:v10];

    v11 = GuidedSearchResult.tokens.getter();
    v45 = byte_1009932C8;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v55 = v66;
    v12 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
    v13 = v58;
    swift_beginAccess();
    v43 = v12;
    sub_1003E7B28(&v13[v12], 0xD000000000000017, 0x8000000100811750);
    if (qword_10096DB98 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v14 = type metadata accessor for OSLogger();
      sub_1000056A8(v14, qword_100983F10);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      v61 = sub_10002849C(&qword_100983FB0);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      static LogMessage.safe(_:)();
      sub_10002B894(aBlock, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      if (v11 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = &type metadata for Int;
      aBlock[0] = v15;
      static LogMessage.safe(_:)();
      sub_10002B894(aBlock, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      if (qword_10096DB90 != -1)
      {
        swift_once();
      }

      v16 = sub_10002849C(&qword_100975C20);
      v17 = sub_1000056A8(v16, qword_100983EF8);
      swift_beginAccess();
      v61 = v16;
      v18 = sub_1000056E0(aBlock);
      v19 = *(*(v16 - 8) + 16);
      v52 = v17;
      v53 = v16;
      v19(v18, v17, v16);
      static LogMessage.safe(_:)();
      sub_10002B894(aBlock, &unk_1009711D0);
      Logger.info(_:)();

      if (!v15)
      {
        break;
      }

      v20 = v15;
      v65 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v42[1] = v7;
      v51 = sub_100005744(0, &qword_1009729E0);
      v46 = sub_100005744(0, &qword_10097CD40);
      v21 = 0;
      v54 = v11;
      v50 = v11 & 0xC000000000000001;
      v49 = enum case for DispatchPredicate.onQueue(_:);
      v48 = (v47 + 13);
      ++v47;
      v45 &= 1u;
      v44 = &v60;
      while (1)
      {
        if (v50)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v54 + 8 * v21 + 32);
        }

        *v5 = static OS_dispatch_queue.main.getter();
        v23 = v57;
        (*v48)(v5, v49, v57);
        v24 = _dispatchPreconditionTest(_:)();
        (*v47)(v5, v23);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v11 = v20;
        if (qword_10096DB88 != -1)
        {
          swift_once();
        }

        v25 = qword_100983EF0;
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v22;
        v28 = v25;

        v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        swift_beginAccess();
        ReusePool.dequeue()();
        swift_endAccess();
        v29 = v64;
        if (v64)
        {
          [v64 removeActionForIdentifier:v28 forControlEvents:0x2000];
          [v29 addAction:v7 forControlEvents:0x2000];
          v30 = v29;
        }

        else
        {
          sub_100005744(0, &qword_1009811E0);
          v31 = v7;
          v67.value.super.super.isa = v7;
          v30 = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v67).super.super.super.super.isa;
          v29 = 0;
        }

        v32 = swift_allocObject();
        *(v32 + 16) = v45;
        v33 = v55;
        *(v32 + 24) = v22;
        *(v32 + 32) = v33;
        v62 = sub_1003E808C;
        v63 = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v60 = sub_100080D48;
        v61 = &unk_1008C1598;
        v34 = _Block_copy(aBlock);

        v35 = v33;
        v36 = v29;

        [(objc_class *)v30 setConfigurationUpdateHandler:v34];

        _Block_release(v34);
        v37 = [(objc_class *)v30 superview];
        v38 = v58;
        if (!v37 || (v7 = v37, sub_100005744(0, &qword_100972EB0), v39 = v38, v40 = static NSObject.== infix(_:_:)(), v7, v39, (v40 & 1) == 0))
        {
          [v38 addSubview:v30];
        }

        ++v21;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 = v11;
        if (v11 == v21)
        {

          v41 = v65;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v41 = _swiftEmptyArrayStorage;
    v38 = v58;
LABEL_29:
    *&v38[v43] = v41;
    swift_endAccess();

    [v38 setNeedsLayout];
  }

  return result;
}

void sub_1003E5550()
{
  v0 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for ImpressionMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult);
    if (v9 && (swift_beginAccess(), (v10 = swift_weakLoadStrong()) != 0))
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v13 = *&v8[v12];

      v49 = GuidedSearchResult.tokens.getter();
      v40 = v8;
      v38 = v9;
      if (v13 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v47 = v13 & 0xFFFFFFFFFFFFFF8;
        v48 = v13 & 0xC000000000000001;
        v15 = v49 & 0xFFFFFFFFFFFFFF8;
        v50 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v49 < 0)
        {
          v15 = v49;
        }

        v37 = v15;
        v45 = v49 & 0xC000000000000001;
        v43 = (v4 + 48);
        v42 = (v4 + 32);
        v41 = (v4 + 8);
        v16 = 4;
        v46 = v49 >> 62;
        v44 = i;
        v39 = v2;
        while (1)
        {
          v17 = v16 - 4;
          if (v48)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v47 + 16))
            {
              goto LABEL_34;
            }

            v18 = *(v13 + 8 * v16);
          }

          v19 = v18;
          v20 = v16 - 3;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v46)
          {
            if (v17 == _CocoaArrayWrapper.endIndex.getter())
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v17 == *(v50 + 16))
          {
            goto LABEL_30;
          }

          if (v45)
          {
            v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v50 + 16))
            {
              goto LABEL_35;
            }

            v4 = *(v49 + 8 * v16);
          }

          GuidedSearchToken.impressionMetrics.getter();
          if ((*v43)(v2, 1, v3) == 1)
          {

            sub_10002B894(v2, &qword_100973D30);
          }

          else
          {
            (*v42)(v6, v2, v3);
            v21 = v19;
            if ([v21 isHidden])
            {
            }

            else
            {
              [v21 frame];
              v23 = v22;
              v25 = v24;
              v27 = v26;
              v29 = v28;

              v30 = v11;
              v31 = v13;
              v32 = v3;
              v33 = v6;
              v34 = v40;
              v35 = [v40 superview];
              v36 = v34;
              v6 = v33;
              v3 = v32;
              v13 = v31;
              v11 = v30;
              v2 = v39;
              [v36 convertRect:v35 toView:{v23, v25, v27, v29}];

              ImpressionsCalculator.addElement(_:at:)();
            }

            (*v41)(v6, v3);
          }

          ++v16;
          if (v20 == v44)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:
    }

    else
    {
    }
  }
}

id sub_1003E5A4C()
{
  v1 = v0;
  v60.receiver = v0;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  if (v11 != 3.0)
  {

    goto LABEL_5;
  }

  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v12)
  {
LABEL_5:
    v13 = 1.0;
    goto LABEL_6;
  }

  v13 = 0.666666667;
LABEL_6:
  [v1 effectiveUserInterfaceLayoutDirection];
  v14 = *&v1[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator];
  v61.origin.x = v3;
  v61.origin.y = v5;
  v61.size.width = v7;
  v61.size.height = v9;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v3;
  v62.origin.y = v5;
  v62.size.width = v7;
  v62.size.height = v9;
  v59 = v13;
  [v14 setFrame:{MinX, 0.0, CGRectGetWidth(v62), v13}];
  v16 = *&v1[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title];
  v63.origin.x = v3;
  v63.origin.y = v5;
  v63.size.width = v7;
  v63.size.height = v9;
  CGRectGetMinX(v63);
  [v14 frame];
  CGRectGetMaxY(v64);
  [v16 sizeThatFits:{v7, v9}];
  [v1 bounds];
  CGRect.withLayoutDirection(_:relativeTo:)();
  [v16 setFrame:?];
  v65.origin.x = v3;
  v65.origin.y = v5;
  v65.size.width = v7;
  v65.size.height = v9;
  v17 = CGRectGetMinX(v65);
  [v16 frame];
  MaxY = CGRectGetMaxY(v66);
  [v1 bounds];
  v19 = CGRectGetMaxY(v67);
  v20 = [v1 traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

    goto LABEL_10;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_10:
    v28 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 != 0;
    v68.origin.x = v3;
    v68.origin.y = v5;
    v68.size.width = v7;
    v68.size.height = v9;
    Width = CGRectGetWidth(v68);
    v35 = *&v1[v30];
    v58 = v1;
    if (v35 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = 0;
    v52 = v19 - v59 + -12.0;
    v53 = MaxY + 16.0;
    v1 = (v35 & 0xC000000000000001);
    v19 = 1.79769313e308;
    while (2)
    {
      v30 = v33;
      while (2)
      {
        v38 = v37;
        while (1)
        {
          if (v1)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v39 = *(v35 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >= v30)
          {
            break;
          }

          [v39 setHidden:1];

          ++v38;
          if (v37 == v36)
          {
            goto LABEL_36;
          }
        }

        v54 = v19;
        v55 = Width;
        [v39 sizeThatFits:{Width, v19}];
        v42 = v41;
        MaxY = v43;
        v44 = v17;
        v45 = v17 + v41;
        v69.size.width = v7;
        v56 = v5;
        v57 = v3;
        v69.origin.x = v3;
        v69.size.height = v9;
        v69.origin.y = v5;
        if (CGRectGetMaxX(v69) >= v45)
        {
          v33 = v30;
          v46 = v44;
          v47 = v53;
          v48 = 8.0;
        }

        else
        {
          v33 = v30 + 1;
          if (v29 <= v30)
          {
            [v40 setHidden:1];

            ++v30;
            v17 = v44;
            Width = v55;
            v19 = v54;
            if (v37 != v36)
            {
              continue;
            }

LABEL_36:

            v49 = *&v58[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator];
            v72.origin.x = v3;
            v72.origin.y = v5;
            v72.size.width = v7;
            v72.size.height = v9;
            v50 = CGRectGetMinX(v72);
            [v58 bounds];
            v51 = CGRectGetMaxY(v73) - v59;
            v74.origin.x = v3;
            v74.origin.y = v5;
            v74.size.width = v7;
            v74.size.height = v9;
            return [v49 setFrame:{v50, v51, CGRectGetWidth(v74), v59}];
          }

          v70.origin.y = v5;
          v70.origin.x = v3;
          v70.size.width = v7;
          v70.size.height = v9;
          v46 = CGRectGetMinX(v70);
          v48 = 8.0;
          v47 = v53 + MaxY + 8.0;
        }

        break;
      }

      [v58 bounds];
      v53 = v47;
      CGRect.withLayoutDirection(_:relativeTo:)();
      [v40 setFrame:?];
      v17 = v42 + v48 + v46;
      [v40 frame];
      [v40 setHidden:v52 < CGRectGetMaxY(v71)];

      Width = v55;
      v5 = v56;
      v3 = v57;
      v19 = v54;
      if (v37 != v36)
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

id sub_1003E60DC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_100983F28 = v0;
  return result;
}

id sub_1003E612C()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_100983F30 = result;
  return result;
}

uint64_t sub_1003E616C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1003E61B0()
{
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_1003E7B28((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL);
  return swift_endAccess();
}

uint64_t sub_1003E629C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1003E6354()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1003E63B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1003E6470())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1003E807C;
}

uint64_t sub_1003E6564(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1003E8244(&qword_100983FA0, a2, type metadata accessor for GuidedSearchResultContentView);
  result = sub_1003E8244(&qword_100983FA8, v3, type metadata accessor for GuidedSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

id sub_1003E65E8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v4 = result;
    [v2 setFont:result];

    return [a1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

double *sub_1003E668C(uint64_t a1, char a2, unsigned int (**a3)(char *, uint64_t, uint64_t), double a4, double a5)
{
  LOBYTE(v6) = a2;
  v90 = type metadata accessor for FontSource();
  v10 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v88 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v14 - 8);
  v87 = &v80 - v15;
  v16 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v16 - 8);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  if (qword_10096DBA8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v22 = qword_100983F30;
  v91.super.isa = a3;
  sub_1003E3900(0, 0, a3, v6 & 1);
  v23 = type metadata accessor for UIButton.Configuration();
  a3 = *(v23 - 8);
  v24 = a3[7];
  v95 = v23;
  v24(v21, 0, 1);
  UIButton.configuration.setter();
  sub_10002849C(&qword_10096FD08);
  v25 = swift_allocObject();
  v82 = xmmword_1007B10D0;
  *(v25 + 16) = xmmword_1007B10D0;
  v96 = v25;
  *(v25 + 32) = _swiftEmptyArrayStorage;
  v26 = *(a1 + 16);
  if (v26)
  {
    v92 = v21;
    v27 = 0;
    v94 = a3 + 6;
    v86 = (v10 + 13);
    v85 = NSFontAttributeName;
    v84 = (v10 + 1);
    v83 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v97 = v22;
    v93 = v26;
    v81 = a1 + 40;
    do
    {
      v29 = v96 + 3;
      v21 = v27;
      v30 = a4;
      v6 = (v28 + 16 * v27);
      while (1)
      {
        if (v21 >= v26)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v27 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_43;
        }

        a3 = *(v6 - 1);
        a1 = *v6;

        UIButton.configuration.getter();
        if ((*v94)(v18, 1, v95))
        {
          a3 = v92;
          v10 = &qword_10097CC90;
          sub_100031660(v18, v92, &qword_10097CC90);
          UIButton.configuration.setter();
          sub_10002B894(v18, &qword_10097CC90);
        }

        else
        {
          v31 = v85;
          v100[0] = v85;
          v32 = qword_10096E1A0;

          v33 = v31;
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for FontUseCase();
          v35 = sub_1000056A8(v34, qword_1009D1460);
          v36 = v89;
          (*(*(v34 - 8) + 16))(v89, v35, v34);
          v37 = v90;
          (*v86)(v36, v83, v90);
          isa = FontSource.font(compatibleWith:)(v91).super.isa;
          (*v84)(v36, v37);
          v100[4] = sub_100005744(0, &qword_1009730E0);
          v100[1] = isa;
          sub_10002849C(&unk_100982750);
          v39 = static _DictionaryStorage.allocate(capacity:)();

          sub_100031660(v100, &v98, &unk_100970EC0);
          v10 = v98;
          v40 = sub_1003D8ACC(v98);
          if (v41)
          {
            goto LABEL_45;
          }

          v39[(v40 >> 6) + 8] |= 1 << v40;
          *(v39[6] + 8 * v40) = v10;
          sub_100056164(&v99, (v39[7] + 32 * v40));
          v42 = v39[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_46;
          }

          v39[2] = v44;

          sub_10002B894(v100, &unk_100970EC0);
          v10 = v88;
          AttributeContainer.init(_:)();
          v45 = v87;
          AttributedString.init(_:attributes:)();
          v46 = type metadata accessor for AttributedString();
          (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
          UIButton.Configuration.attributedTitle.setter();
          v22 = v97;
          UIButton.configuration.setter();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v48 = v47;
        v50 = v49;
        if (v30 + v47 > a5)
        {
          break;
        }

        v10 = *(v96 + 2);
        if (!v10)
        {
          goto LABEL_44;
        }

        v51 = *&v29[v10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29[v10] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_100033A90(0, *(v51 + 2) + 1, 1, v51);
          *&v29[v10] = v51;
        }

        v54 = *(v51 + 2);
        v53 = *(v51 + 3);
        a3 = (v54 + 1);
        if (v54 >= v53 >> 1)
        {
          *&v29[v10] = sub_100033A90((v53 > 1), v54 + 1, 1, v51);
        }

        v30 = v30 + v48 + 8.0;

        v55 = v29[v10];
        *(*&v55 + 16) = a3;
        v56 = *&v55 + 16 * v54;
        *(v56 + 32) = v48;
        *(v56 + 40) = v50;
        ++v21;
        v6 += 2;
        v26 = v93;
        v22 = v97;
        if (v27 == v93)
        {
          goto LABEL_25;
        }
      }

      sub_10002849C(&qword_10096FD18);
      v57 = swift_allocObject();
      *(v57 + 16) = v82;
      *(v57 + 32) = v48;
      *(v57 + 40) = v50;
      v59 = *(v96 + 2);
      v58 = *(v96 + 3);
      a3 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        v96 = sub_100033B94((v58 > 1), v59 + 1, 1, v96);
      }

      v60 = v96;
      *(v96 + 2) = a3;
      *&v60[v59 + 4] = v57;
      v26 = v93;
      v28 = v81;
    }

    while (v27 != v93);
  }

LABEL_25:
  v61 = [(objc_class *)v91.super.isa preferredContentSizeCategory];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v62;
  v68 = v65;
  if (v67 == v66 && v64 == v65)
  {
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v69 & 1) == 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  v70 = static UIContentSizeCategory.<= infix(_:_:)();

  if (v70)
  {
    v71 = 3;
  }

  else
  {
    v71 = 2;
  }

  v61 = sub_1000477CC(v71, v96);
  if ((v74 & 1) == 0)
  {
    goto LABEL_33;
  }

  v69 = v74;
  v64 = v73;
  v68 = v72;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v77 = swift_dynamicCastClass();
  if (!v77)
  {
    swift_unknownObjectRelease();
    v77 = _swiftEmptyArrayStorage;
  }

  v78 = *(v77 + 2);

  if (__OFSUB__(v69 >> 1, v64))
  {
    goto LABEL_49;
  }

  if (v78 != (v69 >> 1) - v64)
  {
LABEL_50:
    swift_unknownObjectRelease();
    v74 = v69;
    v73 = v64;
    v72 = v68;
LABEL_33:
    sub_1005E7AA4(v61, v72, v73, v74);
    v76 = v75;
LABEL_40:
    swift_unknownObjectRelease();
    return v76;
  }

  v76 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v76)
  {
    v76 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v76;
}

uint64_t sub_1003E7078(uint64_t a1, char a2, unsigned int (**a3)(char *, uint64_t, uint64_t), double a4)
{
  result = sub_1003E668C(a1, a2 & 1, a3, 0.0, a4);
  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v20 = result + 32;
  v8 = -8.0;
  while (v7 < *(v5 + 16))
  {
    v9 = *(v20 + 8 * v7);
    v10 = *(v9 + 16);
    if (v10)
    {

      sub_100144108(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        *&v16 = *&v12 + 1;
        if (*&v12 >= v15 >> 1)
        {
          sub_100144108((v15 > 1), *&v12 + 1, 1);
          v11 = v21;
        }

        v11[2] = v16;
        v11[*&v12 + 4] = v14;
        v13 += 2;
        ++*&v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = *&v16 - 1;
      if (*&v16 != 1)
      {
        v19 = 5;
        do
        {
          if (v17 < v11[v19])
          {
            v17 = v11[v19];
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      goto LABEL_4;
    }

    v16 = _swiftEmptyArrayStorage[2];

    v11 = _swiftEmptyArrayStorage;
    if (v16 != 0.0)
    {
      goto LABEL_13;
    }

    v17 = 0.0;
LABEL_4:
    ++v7;
    v8 = v8 + v17 + 8.0;
    if (v7 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_1003E7244()
{
  v0 = type metadata accessor for PageEnvironment();
  v65 = *(v0 - 8);
  v66 = v0;
  __chkstk_darwin(v0);
  v64 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_10002849C(&unk_1009731F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - v4;
  v63 = type metadata accessor for PageGrid.Direction();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for PageGrid();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = v5;
  v18 = v63;
  (*(v3 + 8))(v17, v2);
  v19 = v16;
  v20 = v64;
  v21 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v70)
  {
    v21 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v21, v18);
  PageGrid.containerWidth.getter();
  v62 = v22;
  PageGrid.containerHeight.getter();
  v61 = v23;
  PageGrid.safeAreaInsets.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)();
  (*(v6 + 16))(v8, v11, v18);
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  v24 = v67;
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v65 + 8))(v20, v66);
  (*(v6 + 8))(v11, v18);
  type metadata accessor for GuidedSearchResult();
  sub_1003E8244(&qword_100983FB8, 255, &type metadata accessor for GuidedSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v25 = v70;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v26 = v69;
  [v69 displayScale];
  if (v27 == 3.0)
  {
    v28 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v28 & 1) == 0)
    {
      v29 = 0.666666667;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v29 = 1.0;
LABEL_10:
  PageGrid.componentMeasuringSize(spanning:)();
  PageGrid.horizontalMargins.getter();
  CGSize.subtracting(insets:)();
  v31 = v30;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v32 = v69;
  if (v25)
  {
    LODWORD(v66) = byte_1009932C8;
    v33 = v29 + 20.0;

    v34 = GuidedSearchResult.title.getter();
    v58 = v19;
    if (!v35)
    {
      goto LABEL_20;
    }

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {

      goto LABEL_20;
    }

    if (qword_10096DBA0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v37 = qword_100983F28;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v39 = result;
      [v37 setFont:result];

      v40 = String._bridgeToObjectiveC()();
      [v37 setText:v40];

      [v37 sizeThatFits:{v31, 1.79769313e308}];
      v42 = v41;

      v33 = v33 + v42 + 16.0;
LABEL_20:
      v45 = GuidedSearchResult.tokens.getter();
      v46 = v45;
      if (v45 >> 62)
      {
        v47 = _CocoaArrayWrapper.endIndex.getter();
        if (!v47)
        {
LABEL_32:

          v49 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_1003E7078(v49, v66 & 1, v32, v31);

          v56 = v60;
          v57 = *(v59 + 8);
          v57(v67, v60);
          return (v57)(v58, v56);
        }
      }

      else
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_32;
        }
      }

      v68 = _swiftEmptyArrayStorage;
      sub_100144128(0, v47 & ~(v47 >> 63), 0);
      if ((v47 & 0x8000000000000000) == 0)
      {
        v64 = v32;
        v65 = v25;
        v48 = 0;
        v49 = v68;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v50 = GuidedSearchToken.displayName.getter();
          v52 = v51;

          v68 = v49;
          v54 = *(v49 + 2);
          v53 = *(v49 + 3);
          if (v54 >= v53 >> 1)
          {
            sub_100144128((v53 > 1), v54 + 1, 1);
            v49 = v68;
          }

          ++v48;
          *(v49 + 2) = v54 + 1;
          v55 = &v49[2 * v54];
          *(v55 + 4) = v50;
          *(v55 + 5) = v52;
        }

        while (v47 != v48);

        v32 = v64;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      swift_once();
    }

    __break(1u);
  }

  else
  {

    v43 = v60;
    v44 = *(v59 + 8);
    v44(v24, v60);
    return (v44)(v19, v43);
  }

  return result;
}

uint64_t sub_1003E7B28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v28 = a2;
    if (qword_10096DB98 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for OSLogger();
  sub_1000056A8(v11, qword_100983F10);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5360;
  v32 = sub_10002849C(&qword_100983FB0);
  v31[0] = &type metadata for GuidedSearchTokenPill;
  static LogMessage.safe(_:)();
  sub_10002B894(v31, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v12 = *a1;
  v29 = *a1 >> 62;
  v27 = a1;
  if (v29)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = &type metadata for Int;
  v31[0] = v13;
  static LogMessage.safe(_:)();
  sub_10002B894(v31, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v32 = &type metadata for String;
  v31[0] = v28;
  v31[1] = a3;

  static LogMessage.safe(_:)();
  sub_10002B894(v31, &unk_1009711D0);
  Logger.info(_:)();

  if (v29)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if ((v25 & 0x8000000000000000) == 0)
    {
LABEL_36:
      v20 = v25;
      return sub_1004A6AE8(0, v20);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    if (qword_10096DB90 != -1)
    {
      swift_once();
    }

    ++v15;
    v18 = sub_10002849C(&qword_100975C20);
    sub_1000056A8(v18, qword_100983EF8);
    v30 = v17;
    swift_beginAccess();
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  while (v14 != v15);
LABEL_17:
  v19 = v27;
  if (!v29 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v19 >> 62))
    {
      v20 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      return sub_1004A6AE8(0, v20);
    }

    goto LABEL_33;
  }

  if (!(*v19 >> 62))
  {
    v22 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    goto LABEL_24;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (v25 < 0)
  {
    goto LABEL_35;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (v24 < 0 || (v22 = v24, v26 < v24))
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_24:
  v23 = sub_10003687C(0, v22);

  *v19 = v23;
  return result;
}

void sub_1003E8098()
{
  v1 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003E8244(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1003E82A4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_10096EFD8 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D3D60;
  }

  else
  {
    if (qword_10096EFC8 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D3A80;
  }

  return sub_10003B8E8(v4, a1);
}

uint64_t sub_1003E8394@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_10096EFF0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D41B0;
  }

  else
  {
    if (qword_10096EFD0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009D3BF0;
  }

  return sub_10003B8E8(v4, a1);
}

double sub_1003E8484()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_1003E84E8()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_1008AF3E0;
  if (v2 != 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v5 & 1) == 0)
    {
      return &off_1008AF440;
    }
  }

  return v3;
}

double sub_1003E8598(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 12.0;
  }

  UITraitCollection.prefersAccessibilityLayouts.getter();
  return 112.0;
}

id sub_1003E85FC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    if (qword_10096EFD8 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009D3D60;
  }

  else
  {
    if (qword_10096EFC8 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009D3A80;
  }

  sub_10003B8E8(v6, v24);
  v7 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 1)
  {
    if (qword_10096EFF0 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009D41B0;
  }

  else
  {
    if (qword_10096EFD0 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009D3BF0;
  }

  sub_10003B8E8(v10, v24);
  v11 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    dispatch thunk of RiverView.setSpacing(interRowSpacing:interItemSpacing:)();
  }

  v16 = sub_1001B4140();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_1008AF3E0;
  if (v18 != 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v21 & 1) == 0)
    {
      v19 = &off_1008AF440;
    }
  }

  sub_1001DD9F8(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_1003E89B0(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for OfferButtonMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == 1)
  {
    if (qword_10096EFD8 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009D3D60;
  }

  else
  {
    if (qword_10096EFC8 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009D3A80;
  }

  v25 = v18;
  sub_10003B8E8(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == 1)
  {
    if (qword_10096EFF0 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009D41B0;
  }

  else
  {
    if (qword_10096EFD0 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009D3BF0;
  }

  sub_10003B8E8(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_100774EF8(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_10003B944(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_10003B8E8(v36, &v51);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v37 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v37 = qword_100991028;
  }

  v38 = sub_1000056A8(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v40 = v39;
    OfferButtonMetrics.minimumSize.getter();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_10003B944(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_1003E9330(v60, v20 + v44, v35))) * 0.5;
  sub_10002A400(v61, v61[3]);
  dispatch thunk of AnyDimension.rawValue(in:)();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_100007000(v61);
  sub_100005A38(&v51, v61);
  sub_10002A400(v58, v58[3]);
  dispatch thunk of AnyDimension.rawValue(in:)();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_100007000(v58);
  sub_100005A38(&v51, v58);
  sub_10003B8E8(v60, &v51);
  v48 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(&v51, v30 + v48);
  swift_endAccess();
  sub_10003B8E8(v57, &v51);
  v49 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(&v51, v30 + v49);
  swift_endAccess();
  sub_10003B944(v57);
  return sub_10003B944(v60);
}

void sub_1003E8FD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = Screenshots.artwork.getter();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = dispatch thunk of Artwork.isPortrait.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  v23 = (v7 + 8);
  if (v22)
  {
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    AspectRatio.width(fromHeight:)();
  }

  (*v23)(v9, v6);
}

double sub_1003E9290(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_1003E9330(void *a1, double a2, double a3)
{
  v6 = 0.0;
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    sub_10002A400(a1 + 14, a1[17]);
    AnyDimension.value(with:)();
    v8 = v7;
    sub_10002A400(a1 + 19, a1[22]);
    AnyDimension.value(with:)();
    v10 = v8 + v9;
    sub_10002A400(a1 + 24, a1[27]);
    v11 = [v3 traitCollection];
    AnyDimension.value(with:)();
    v13 = v12;

    if (v10 <= a3)
    {
      if (v10 + v13 <= a3)
      {
        return v13 * 0.5;
      }

      else
      {
        return (a3 - v10) * 0.5;
      }
    }
  }

  return v6;
}

id sub_1003E94CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003E9524(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame:{a1, a2, a3, a4}];
}

void sub_1003E9588(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, v5);

  v6 = *(a2 + 40);
  v7 = v6(a1, a2);
  [v7 setAttributedText:0];

  v8 = v6(a1, a2);
  [v8 setText:0];
}

void sub_1003E9668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Artwork.Style();
  v9 = __chkstk_darwin(v8 - 8);
  v24 = 0;
  if (!a1)
  {
LABEL_4:
    v13 = (*(a4 + 32))(a3, a4, v9);
    v14 = v13;
    v22 = v13;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v26, v14);

    return;
  }

  v10 = sub_1003EA7B4(&v24, v4, a3, a4);
  sub_1003EA894();
  v12 = v11;

  if (v12)
  {

    a1 = v24;
    goto LABEL_4;
  }

  v15 = *(a4 + 32);
  v16 = v15(a3, a4);
  [v16 contentMode];

  Artwork.config(_:mode:prefersLayeredImage:)();
  v17 = v15(a3, a4);
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v17 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  v18 = v15(a3, a4);
  type metadata accessor for ArtworkView();
  static ArtworkLoader.handlerKey<A>(for:)();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v19;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

  sub_10002B894(v23, &qword_10096FB90);
  v21 = v24;
}

uint64_t sub_1003E99E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11 - 8];
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v13 = *(v7 + 8);
  v13(v12, v6);
  if (v23)
  {
    sub_10002849C(&qword_100973D50);
    type metadata accessor for SearchAction();
    if (swift_dynamicCast())
    {
      ShelfLayoutContext.shelf.getter();
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v13(v9, v6);
      if (v22[0] == 1)
      {

        v14 = Action.artwork.getter();

        if (v14)
        {
          v15 = (*(a2 + 56))(a1, a2);
          sub_1003EA894();
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            Artwork.contentMode.getter();
            ComponentPrefetchSizing.init(size:contentMode:)();

            v18 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    sub_10002B894(v22, &unk_10097DBE0);
  }

  v18 = 1;
LABEL_10:
  v19 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

uint64_t sub_1003E9CDC(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_10002849C(&qword_100972620);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_10002849C(&unk_100984000);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_10002849C(&qword_1009918C0);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for SearchEntity();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100982AA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v70 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  __chkstk_darwin(v25);
  v69 = &v59 - v26;
  v27 = SearchAction.term.getter();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  SearchAction.entity.getter();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_10096EC78 != -1)
    {
      swift_once();
    }

    v59 = qword_1009D3290;
    if (qword_10096EC80 != -1)
    {
      swift_once();
    }

    v63 = qword_1009D3298;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_10002849C(&unk_100984010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_1001962CC(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100989050);
    v37._object = (v62 | 0x8000000000000000);
    v37._countAndFlagsBits = v60;
    localizedString(_:with:)(v37, v36);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v38 = v72;
    v78[0] = v72;
    sub_1001469E0();
    v39 = v38;
    AttributedString.subscript.setter();
    v40 = v63;
    v78[0] = v63;
    sub_1002F4F4C();
    v41 = v40;
    AttributedString.subscript.setter();
    v78[0] = v67;
    v78[1] = v35;
    v42 = type metadata accessor for Locale();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_1003EBC44(&unk_100984030, &type metadata accessor for AttributedString);
    sub_10007FED4();
    v44 = v75;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10002B894(v43, &qword_100972620);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &unk_100984000;
      v46 = v44;
    }

    else
    {
      v47 = v71;
      sub_1003EBAA0(v44, v71);
      v48 = v59;
      v49 = v59;
      sub_1003EBB10();
      v50 = AttributedString.subscript.modify();
      v77 = v48;
      AttributedSubstring.subscript.setter();
      v50(v78, 0);
      v45 = &qword_1009918C0;
      v46 = v47;
    }

    sub_10002B894(v46, v45);
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v24, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v64 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v69;
      v53(v69, v18, v19);
      sub_100005744(0, &unk_100984040);
      (*(v52 + 16))(v70, v57, v19);
      v58 = NSAttributedString.init(_:)();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10002B894(v15, &unk_100982AA0);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10002B894(v18, &qword_100975048);
  v54 = Action.title.getter();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

id sub_1003EA7B4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v9 = (*(a4 + 32))(a3, a4);
    v10 = ArtworkView.preferredSymbolConfiguration.getter();

    if (!v10)
    {
      v10 = (*(a4 + 56))(a3, a4);
    }

    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_1003EA894()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of Artwork.isSystemImage.getter();
  result = 0;
  if (v4)
  {
    dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();
    (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
    CGSize.rounded(_:)();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t sub_1003EA9E0(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = (*(a7 + 32))(a6, a7);
    v13.value.super.isa = a1;
    v13.is_nil = 0;
    ArtworkView.show(image:isAnimationPermitted:)(v13, v12);

    (*(a7 + 80))(a6, a7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003EAAA4(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v4 = (*(a2 + 56))(a1, a2);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v5 = [v4 configurationWithTraitCollection:v7];

  v6 = static SystemImage.load(artwork:with:includePrivateImages:)();
  *a3 = v6;
}

uint64_t sub_1003EABB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v47 = a3;
  v46 = a2;
  v50 = type metadata accessor for PageGrid();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LabelPlaceholder();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v43[-v13];
  v14 = type metadata accessor for TextAppearance();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = type metadata accessor for DynamicTextAppearance();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  type metadata accessor for SearchAction();
  sub_1003EBC44(&unk_100983FF0, &type metadata accessor for SearchAction);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v23 = v68;
  if (v68)
  {
    v45 = v18;
    v51 = v14;
    v57 = v10;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v24 = v68;
    (*(a6 + 64))(v68, a5, a6);

    swift_getKeyPath();
    v52 = a1;
    ItemLayoutContext.subscript.getter();

    v25 = v65;
    TextAppearance.init()();
    DynamicTextAppearance.customTextStyle.getter();
    sub_10002A400(&v68, v69);
    dispatch thunk of CustomTextStyle.font(compatibleWith:)();
    TextAppearance.font.setter();
    sub_100007000(&v68);
    DynamicTextAppearance.textAlignment.getter();
    TextAppearance.textAlignment.setter();
    DynamicTextAppearance.lineBreakMode.getter();
    TextAppearance.lineBreakMode.setter();
    DynamicTextAppearance.numberOfLines.getter();
    TextAppearance.numberOfLines.setter();
    DynamicTextAppearance.lineSpacing.getter();
    TextAppearance.lineSpacing.setter();

    v26 = TextAppearance.font.getter();
    v27 = a5;
    v56 = sub_1003E9CDC(v23, v26);
    v55 = v28;
    v30 = v29;
    v31 = ~v29;

    if (v31)
    {
      (*(v59 + 16))(v45, v21, v60);
      v44 = v30;
      if (v30)
      {
        sub_1003EBB74(v56, v55, 1);
        LabelPlaceholder.Options.init(rawValue:)();
        v32 = v53;
        LabelPlaceholder.init(_:with:where:)();
      }

      else
      {
        sub_1003EBB74(v56, v55, 0);
        LabelPlaceholder.Options.init(rawValue:)();
        v32 = v53;
        LabelPlaceholder.init(_:with:where:)();
      }

      v33 = v57;
      (*(v62 + 32))(v61, v32, v57);

      v34 = Action.artwork.getter();

      if (v34 && (*&v65 = v34, sub_1003EAAA4(v27, a6, &v68), , (v35 = v68) != 0))
      {
        [v68 size];
        v37 = v36;
        v39 = v38;

        *(&v66 + 1) = &type metadata for FixedSizedPlaceholder;
        v67 = sub_100168330();
        *&v65 = v37;
        *(&v65 + 1) = v39;
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      v64[3] = v33;
      v64[4] = &protocol witness table for LabelPlaceholder;
      v40 = sub_1000056E0(v64);
      (*(v62 + 16))(v40, v61, v33);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      (*(a6 + 48))(&v68, &v65, v64, v63, v27, a6);
      swift_unknownObjectRelease();
      sub_100007000(v64);
      sub_10002B894(&v65, &unk_10097B860);
      sub_10002A400(&v68, v69);
      if (v54)
      {
        swift_getKeyPath();
        v41 = v48;
        ItemLayoutContext.subscript.getter();

        PageGrid.componentMeasuringSize(spanning:)();
        (*(v49 + 8))(v41, v50);
      }

      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v42 = v65;
      dispatch thunk of Placeable.measure(toFit:with:)();

      sub_1003EBA78(v56, v55, v44);

      (*(v62 + 8))(v61, v57);
      (*(v58 + 8))(v16, v51);
      (*(v59 + 8))(v21, v60);
      return sub_100007000(&v68);
    }

    else
    {

      (*(v58 + 8))(v16, v51);
      return (*(v59 + 8))(v21, v60);
    }
  }

  return result;
}

uint64_t sub_1003EB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchAction();
  sub_1003EBC44(&unk_100983FF0, &type metadata accessor for SearchAction);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v13)
  {

    v7 = Action.artwork.getter();

    if (!v7)
    {
    }

    v8 = (*(a4 + 56))(a3, a4);
    sub_1003EA894();
    v10 = v9;

    if (v10)
    {
    }

    v11 = Artwork.config(using:)();
    sub_10002849C(&qword_100973210);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = v11;

    ArtworkLoader.prefetchArtwork(using:)(v12);
  }

  return result;
}

uint64_t sub_1003EB660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = type metadata accessor for DynamicTextAppearance();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextAppearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAction();
  sub_1003EBC44(&unk_100983FF0, &type metadata accessor for SearchAction);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v15 = v37[0];
  if (v37[0])
  {
    v33 = v11;
    v34 = v10;
    v32 = *(a3 + 40);
    v16 = v32(a2, a3);
    dispatch thunk of DynamicLabel.dynamicTextAppearance.getter();

    v17 = [v4 traitCollection];
    TextAppearance.init()();
    DynamicTextAppearance.customTextStyle.getter();
    v36 = v15;
    v31[1] = v4;
    sub_10002A400(v37, v37[3]);
    v18 = a2;
    v19 = v36;
    dispatch thunk of CustomTextStyle.font(compatibleWith:)();
    TextAppearance.font.setter();
    sub_100007000(v37);
    DynamicTextAppearance.textAlignment.getter();
    TextAppearance.textAlignment.setter();
    DynamicTextAppearance.lineBreakMode.getter();
    TextAppearance.lineBreakMode.setter();
    DynamicTextAppearance.numberOfLines.getter();
    TextAppearance.numberOfLines.setter();
    DynamicTextAppearance.lineSpacing.getter();
    TextAppearance.lineSpacing.setter();

    (*(v7 + 8))(v9, v35);
    v20 = TextAppearance.font.getter();
    v21 = sub_1003E9CDC(v19, v20);
    v23 = v22;
    v25 = v24;
    LODWORD(v16) = ~v24;

    if (v16)
    {
      v26 = v32(v18, a3);
      v27 = v26;
      if (v25)
      {
        [v26 setAttributedText:v21];
      }

      else
      {
        v29 = String._bridgeToObjectiveC()();
        [v27 setText:v29];

        v27 = v29;
      }

      v30 = v34;

      sub_1003EBA78(v21, v23, v25);
      (*(v33 + 8))(v13, v30);
      (*(a3 + 80))(v18, a3);
    }

    else
    {
      v28 = v32(v18, a3);
      [v28 setText:0];

      (*(v33 + 8))(v13, v34);
      (*(a3 + 80))(v18, a3);
    }
  }

  return result;
}

void sub_1003EBA78(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1003EBA90(a1, a2, a3 & 1);
  }
}

void sub_1003EBA90(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1003EBAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009918C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003EBB10()
{
  result = qword_1009918F0;
  if (!qword_1009918F0)
  {
    sub_10002D1A8(&qword_1009918C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009918F0);
  }

  return result;
}

id sub_1003EBB74(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1003EBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 32))(a2, a3);
  type metadata accessor for ArtworkView();
  sub_1003EBC44(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1003EBC44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003EBC98()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D0110 = v0;
  unk_1009D0118 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D00F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1003EBD54(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock];
  v14 = type metadata accessor for AppEventSearchResultContentView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v23.receiver = v4;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView]];
  v20 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView;
  [v19 addSubview:*&v19[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView]];
  v21 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  [*&v19[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer] addTarget:v19 action:"handleTapWithGestureRecognizer:"];
  [*&v19[v21] setDelegate:v19];
  [*&v19[v20] addGestureRecognizer:*&v19[v21]];

  return v19;
}

id sub_1003EBF80()
{
  [*&v0[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003EC0D0()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_10096FC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for AppEventSearchResultContentView();
  v36.receiver = v0;
  v36.super_class = v9;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView];
  sub_1000AB0CC();
  CGRect.withLayoutDirection(in:relativeTo:)();
  v19 = &selRef__setDefaultAttributes_;
  [v18 setFrame:?];
  if (MetadataRibbonView.hasContent.getter() & 1) != 0 || (sub_100045A48())
  {
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v20 = [v0 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    v21 = v6;
    sub_10002849C(&qword_100973210);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007B0B70;
    *(v22 + 32) = v20;
    v23 = v20;
    v19 = &selRef__setDefaultAttributes_;
    v24 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v26 = v25;

    (*(v21 + 8))(v8, v5);
  }

  else
  {
    if (qword_10096DBB0 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D00F8, qword_1009D0110);
    v27 = [v0 traitCollection];
    AnyDimension.value(with:)();
    v26 = v28;
  }

  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v15;
  v37.size.height = v17;
  CGRectGetMinX(v37);
  [v18 frame];
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v17;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  v31 = CGRectGetMaxY(v40);
  v32 = *&v1[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView];
  if (qword_10096D5D8 != -1)
  {
    v35 = v31;
    swift_once();
    v31 = v35;
  }

  sub_100772570(&unk_1009CEDC8, v32, Width, v31 - (v26 + MaxY));
  v33 = *&v32[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView];
  sub_100629FBC(v4);
  sub_100770A88(v33, v4);
  sub_1001A9220(v4);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v32 v19[490]];
}

void sub_1003EC65C(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003EF640(&qword_100973190, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0);
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