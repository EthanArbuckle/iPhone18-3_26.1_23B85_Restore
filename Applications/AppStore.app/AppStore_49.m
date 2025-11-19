uint64_t sub_10057D918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10057D978(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AspectRatio();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = ProductMedia.items.getter();
  v15 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = ProductMediaItem.screenshot.getter();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = ProductMediaItem.screenshot.getter();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          Artwork.size.getter();
          AspectRatio.init(_:_:)();
          v22 = ProductMedia.hasPortraitPhoneMedia.getter();
          type metadata accessor for Screenshots();
          v23 = ProductMedia.platform.getter();
          v24 = v65;
          sub_10061B788(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_10057D918(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = AspectRatio.isPortrait.getter();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              AspectRatio.inverted.getter();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = AspectRatio.isPortrait.getter();
          }

          v34 = [a2 traitCollection];
          v35 = UITraitCollection.isRegularPad.getter();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (a3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = UITraitCollection.isRegularPad.getter();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v45 < v48))
          {
            AspectRatio.height(fromWidth:)();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          AspectRatio.height(fromWidth:)();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1000337F0(0, *(v18 + 2) + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = *(v18 + 2);
          v54 = *(v18 + 3);
          if (v55 >= v54 >> 1)
          {
            v18 = sub_1000337F0((v54 > 1), v55 + 1, 1, v18);
          }

          *(v18 + 2) = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (ProductMediaItem.video.getter())
      {
        v69 = v19;
        v21 = Video.preview.getter();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10057DF24(uint64_t a1)
{
  v2 = v1;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for ProductMedia();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_1008C90C0;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_1008C90C0;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    UITraitCollection.isRegularPad.getter();

    v7 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_10057D978(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = ProductMedia.hasPortraitPhoneMedia.getter() & 1;
    v11 = sub_100262514(v10, v24);
    v12 = v11;
    v23 = *(v10 + 2);
    if (v23)
    {
      v13 = 0;
      v14 = (v10 + 6);
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < *(v10 + 2))
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v25, &qword_10096FB90);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_10057E2E8(objc_class *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = ProductMedia.items.getter();
        v13 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 > a2)
        {
          v14 = ProductMedia.items.getter();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:

          sub_10002849C(&qword_100980550);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1007B1890;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          IndexPath.init(arrayLiteral:)();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell();
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (ProductMediaItem.screenshot.getter())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                ArtworkView.show(image:isAnimationPermitted:)(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell();
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (ProductMediaItem.video.getter())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_100988CC0) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

void sub_10057E688()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v1 + v3) = CompoundScrollObserver.init(children:)();
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = type metadata accessor for ItemLayoutContext();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10057E81C()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = ProductMedia.items.getter();

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_10057E8B8(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for AspectRatio();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  if (!*(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v56 = v1;
  v20 = v18;
  v21 = ProductMedia.items.getter();
  v22 = IndexPath.item.getter();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

  v24 = ProductMediaItem.screenshot.getter();
  v57 = v23;
  if (v24)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v25 = v58;
    v26 = *(v58 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v55 = *(v58 + 56);
    v55(v8, 1, 1, v12);
    if (ProductMediaItem.video.getter())
    {
      Video.preview.getter();

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v55(v11, v28, 1, v12);
    v25 = v58;
    v29 = *(v58 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10002B894(v8, &unk_1009732A0);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10002B894(v11, &unk_1009732A0);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  type metadata accessor for Screenshots();
  v30 = ProductMedia.platform.getter();
  sub_10061B788(v30, v5);

  v31 = ProductMedia.hasPortraitPhoneMedia.getter();
  v32 = *(v56 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits);
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v31;
  [swift_unknownObjectRetain() pageContainerSize];
  v35 = v34;
  v37 = v36;
  if (v33)
  {
    if (AspectRatio.isPortrait.getter())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      AspectRatio.inverted.getter();
    }

    v38 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v38 = AspectRatio.isPortrait.getter();
  }

  swift_getObjectType();
  v39 = [v32 traitCollection];
  v40 = UITraitCollection.isRegularPad.getter();

  if (v40)
  {
    v41 = sub_1001B2D90(v35, v37);
    v43 = v42;
  }

  else
  {
    if (v38)
    {
      v41 = 2.0;
    }

    else
    {
      v41 = 1.0;
    }

    if (v38)
    {
      v43 = 3.0;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v44 = v58;
  [v32 pageMarginInsets];
  v46 = v45;
  [v32 pageMarginInsets];
  v48 = v46 + v47;
  PageTraitEnvironment.pageColumnMargin.getter();
  v50 = (v41 + -1.0) * v49 + v41 / v43 * (v20 - (v48 + (v43 + -1.0) * v49));
  v51 = [v32 traitCollection];
  v52 = UITraitCollection.isRegularPad.getter();

  if ((v52 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v50 < v53))
  {
    AspectRatio.height(fromWidth:)();
  }

  AspectRatio.height(fromWidth:)();
  swift_unknownObjectRelease();

  v54 = *(v44 + 8);
  v54(v14, v12);
  sub_10057D918(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v54(v17, v12);
}

void sub_10057EF80(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v4 - 8);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = v68 - v8;
  v9 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v9 - 8);
  v77 = v68 - v10;
  v11 = type metadata accessor for VideoControls();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v13 - 8);
  v15 = v68 - v14;
  v16 = type metadata accessor for VideoFillMode();
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VideoConfiguration();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v72 = v6;
  v73 = v22;
  v74 = v20;
  v75 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v79 = v23;
  v24 = ProductMedia.items.getter();
  v25 = IndexPath.item.getter();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = ProductMediaItem.screenshot.getter();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v34 = sub_10057A264(v31, v33);

        if (v34)
        {
          v35 = *(*(v28 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
          v36 = v34;
          v37 = v35;
          v38 = ArtworkView.image.getter();

          if (v38)
          {
            sub_100005744(0, &qword_1009744B0);
            v40 = v36;
            v41 = static NSObject.== infix(_:_:)();

            v42 = v41 ^ 1;
          }

          else
          {
            v42 = 1;
          }

          v82.is_nil = v42 & 1;
          v82.value.super.isa = v34;
          ArtworkView.setImage(image:animated:)(v82, v39);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v71 = v43;
  v44 = a1;
  v45 = ProductMediaItem.video.getter();
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  v70 = v26;
  if (!*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v68[1] = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
  v69 = v44;
  v47 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v47)
  {

    v48 = Video.preview.getter();
    swift_beginAccess();
    v49 = *(v47 + 16);

    v50 = sub_10057A264(v48, v49);

    if (v50)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        [*(Strong + qword_100988CC0) setImage:v50];
      }
    }
  }

  else
  {
  }

  (*(v76 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v53 = type metadata accessor for AspectRatio();
  (*(*(v53 - 8) + 56))(v15, 0, 1, v53);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  LODWORD(v76) = Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  ProductMedia.platform.getter();
  MediaPlatform.deviceCornerRadiusFactor.getter();
  v54 = v46;

  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  Video.playbackId.getter();
  v55 = v77;
  Video.videoUrl.getter();
  v56 = type metadata accessor for URL();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v78;
  Video.templateMediaEvent.getter();
  v58 = v72;
  v76 = v54;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView();
  sub_10057FCB8(&qword_100973190, type metadata accessor for VideoView);
  v59 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v58, &unk_100973A50);
  sub_10002B894(v57, &unk_100973A50);
  sub_10002B894(v55, &qword_100982460);
  sub_10002B894(&v80, &qword_10096FB90);
  v60 = v59;
  v61 = v71;
  sub_100192A30();
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = [v61 contentView];
    [v64 addSubview:v63];

    [v61 setNeedsLayout];
  }

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v65 = v80;
  v66 = swift_unknownObjectWeakLoadStrong();
  sub_10057FCB8(&qword_100977770, type metadata accessor for VideoCollectionViewCell);
  v67 = v69;
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  (*(v73 + 8))(v75, v74);
}

void sub_10057F9A8(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    ArtworkView.image.setter();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell();
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph))
    {
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      v6 = a1;

      inject<A, B>(_:from:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10057FCB8(&qword_100973190, type metadata accessor for VideoView);
      }

      sub_10057FCB8(&qword_100977770, type metadata accessor for VideoCollectionViewCell);
      v8 = v6;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
    }
  }
}

void sub_10057FBB4(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10057FCB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10057FD00()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009D2A68);
  sub_1000056A8(v0, qword_1009D2A68);
  return PreferenceKey.init(_:)();
}

char *sub_10057FD78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *&v4[v11] = sub_1004FA640();
  *&v4[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_100583854(a2, a3);

    v18 = a4;
  }

  else
  {
    sub_10002849C(&qword_100973210);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007B0B70;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_1005834AC(v18, a1);

  *&v16[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = String._bridgeToObjectiveC()();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_1005800A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UITraitOverrides();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_100580344();
  v6 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_100584378;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E9BD4;
    aBlock[3] = &unk_1008C9288;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults]];
      sub_1005805FC();
      v15 = UIContentSizeCategoryLarge;
      UIViewController.traitOverrides.getter();
      UIMutableTraits.preferredContentSizeCategory.setter();
      return UIViewController.traitOverrides.setter();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100580344()
{
  v1 = sub_10002849C(&qword_100972CF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100978E10);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100584388;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_10002849C(&qword_10098C8C0));
    v12 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005805FC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10098C898);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v41 = sub_10002849C(&qword_10098C8A0);
  v30 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v29 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_100007874(&qword_10098C8B0, type metadata accessor for DebugSection);
  v9 = sub_100007874(&qword_10098C8B8, type metadata accessor for DebugSetting);
  v42 = v7;
  v39 = v9;
  v40 = v8;
  result = NSDiffableDataSourceSnapshot.init()();
  v11 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections;
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections);
  if (v12 >> 62)
  {
    goto LABEL_45;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v35 = v1;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v43 = v11;
    v44 = v3;

    v14 = 0;
    v45 = xmmword_1007B0B70;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      ++v14;
      sub_10002849C(&qword_100973210);
      v16 = swift_allocObject();
      *(v16 + 16) = v45;
      *(v16 + 32) = v15;

      NSDiffableDataSourceSnapshot.appendSections(_:)(v16);
    }

    while (v13 != v14);

    v1 = v35;
    v11 = v43;
    v3 = v44;
  }

  v38 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource;
  v17 = *(v1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
  if (!v17)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v18 = v17;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_14:
      v31 = v12 + 32;
      v32 = v12 & 0xFFFFFFFFFFFFFF8;
      v36 = (v3 + 8);
      v37 = v12 & 0xC000000000000001;

      v3 = 0;
      v45 = xmmword_1007B0B70;
      v33 = v11;
      v34 = v12;
      while (1)
      {
        if (v37)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = __OFADD__(v3++, 1);
          if (v20)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v32 + 16))
          {
            goto LABEL_44;
          }

          v19 = *(v31 + 8 * v3);

          v20 = __OFADD__(v3++, 1);
          if (v20)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            result = _CocoaArrayWrapper.endIndex.getter();
            v13 = result;
            goto LABEL_3;
          }
        }

        result = NSDiffableDataSourceSectionSnapshot.init()();
        v21 = *(v19 + 48);
        if (v21 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v22 = result;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v43 = v19;
        v44 = v3;

        for (i = 0; i != v22; ++i)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v24 = *(v21 + 8 * i + 32);
          }

          sub_10002849C(&qword_100973210);
          v25 = swift_allocObject();
          *(v25 + 16) = v45;
          *(v25 + 32) = v24;
          v46 = 0;

          NSDiffableDataSourceSectionSnapshot.append(_:to:)();

          type metadata accessor for MenuDebugSetting();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            if (*(v26 + 72) >> 62)
            {

              _bridgeCocoaArray<A>(_:)();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            }

            v46 = v24;
            NSDiffableDataSourceSectionSnapshot.append(_:to:)();
          }

          else
          {
          }
        }

        v12 = v34;
        v1 = v35;
        v11 = v33;
        v19 = v43;
        v3 = v44;
LABEL_36:
        v27 = *(v1 + v38);
        if (!v27)
        {
          goto LABEL_49;
        }

        v46 = v19;
        v28 = v27;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        (*v36)(v5, v2);

        if (v3 == v11)
        {

          return (*(v30 + 8))(v42, v41);
        }
      }
    }
  }

  return (*(v30 + 8))(v42, v41);
}

id sub_100580C6C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100580E38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_10002849C(&qword_10098C8A0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  UICollectionLayoutListConfiguration.headerMode.setter();
  sub_100005744(0, &unk_100990AB0);
  v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v25 = v40;
  v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_10002849C(&qword_100973210);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1007B0B70;
    *(v36 + 32) = v35;
    sub_100005744(0, &qword_10097F460);
    v37 = v35;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_1005813A0(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_10098C8A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v16[1] = a1;
    v12 = *(result + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
    if (v12)
    {
      v13 = v12;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v7 + 8))(v9, v6);
      result = IndexPath.subscript.getter();
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:

        static UIListContentConfiguration.groupedHeader()();

        UIListContentConfiguration.text.setter();
        v17[3] = v2;
        v17[4] = &protocol witness table for UIListContentConfiguration;
        v15 = sub_1000056E0(v17);
        (*(v3 + 16))(v15, v5, v2);
        UICollectionViewCell.contentConfiguration.setter();

        return (*(v3 + 8))(v5, v2);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10058163C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    v8 = sub_1004FA834(a1, a3, a2);

    if (v8)
    {
      return v8;
    }
  }

  _StringGuts.grow(_:)(55);
  v10._object = 0x800000010081A750;
  v10._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v10);
  type metadata accessor for IndexPath();
  sub_100007874(&qword_10098C8C8, &type metadata accessor for IndexPath);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1005817BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005818A0(void *a1, uint64_t a2)
{
  v142 = sub_10002849C(&qword_10098C898);
  v139 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v132 - v5;
  v145 = sub_10002849C(&qword_10098C8A0);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v140 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v153 = &v132 - v8;
  __chkstk_darwin(v9);
  v157 = &v132 - v10;
  v151 = type metadata accessor for FlowOrigin();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v152 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for FlowAnimationBehavior();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v150 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowPresentationContext();
  v146 = *(v13 - 8);
  __chkstk_darwin(v13);
  v155 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  v154 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v132 - v18;
  v20 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v20 - 8);
  v22 = &v132 - v21;
  v23 = type metadata accessor for FlowPage();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v27 - 8);
  v29 = &v132 - v28;
  v159 = v2;
  v144 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v158 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v32 = v164;
  if (!v164)
  {
    return;
  }

  v156 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v153 = v37;
    }

    else
    {
      v36 = 0;
      v153 = 0;
    }

    v139 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v134 = v19;
      v135 = v24;
      v137 = v13;
      v142 = v32;
      v46 = *(v34 + 64);
      v133 = *(v34 + 56);
      sub_10002849C(&qword_100973210);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1007B0B70;
      *(v47 + 32) = v45;
      v48 = *&v159[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph];
      v49 = sub_10002849C(&unk_100974490);
      v141 = v45;
      v140 = v46;

      v136 = v48;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v138 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10002B894(v29, &unk_100972A00);
      }

      else
      {
        v166 = 0;
        v164 = 0u;
        v165 = 0u;
        (*(v135 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = type metadata accessor for URL();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = type metadata accessor for ReferrerData();
        (*(*(v55 - 8) + 56))(v134, 1, 1, v55);
        v160 = v133;
        v161 = v140;
        v162 = v47;
        v163 = &type metadata for DebugMenuPage;
        static ActionMetrics.notInstrumented.getter();
        (*(v146 + 104))(v155, enum case for FlowPresentationContext.push(_:), v137);
        (*(v147 + 104))(v150, enum case for FlowAnimationBehavior.infer(_:), v148);
        (*(v149 + 104))(v152, enum case for FlowOrigin.inapp(_:), v151);
        v56 = v50;
        v57 = static FlowActionPresentation.stackPush.getter();
        v59 = v58;
        type metadata accessor for FlowAction();
        swift_allocObject();
        v129[1] = v57;
        v130 = v59;
        v129[0] = 0;
        v60 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
        sub_1005F9C8C(v60, 1, v136, v29);

        v52 = (*(v56 + 8))(v29, v138);
      }

      v32 = v142;
      v53 = v159;
    }

    else
    {
      v53 = v159;
      v52 = (*(v34 + 96))(*&v159[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph]);
    }

    v61 = v157;
    v62 = v153;
    if (!v153)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v139 && v65 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v144;
    v87 = *&v53[v144];
    if (v87)
    {
      v88 = v87;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_10002849C(&qword_100973210);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1007B0B70;
      *(v89 + 32) = v32;

      v90 = v145;
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v89);

      v91 = *&v53[v86];
      if (v91)
      {
        v92 = v91;

        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

        (*(v143 + 8))(v61, v90);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v159;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v153;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v99 = v144;
    v100 = *&v41[v144];
    if (v100)
    {
      v101 = v100;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_10002849C(&qword_100973210);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1007B0B70;
      *(v102 + 32) = v32;

      v103 = v145;
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v102);

      v104 = *&v41[v99];
      if (v104)
      {
        v105 = v104;

        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

        (*(v143 + 8))(v72, v103);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v66 = swift_dynamicCastClass();
  v67 = v159;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v130 = v67;
      v131 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_100583F3C(v80, v79, sub_100584334, v129, sub_10058433C, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v93 = swift_dynamicCastClass();
    if (v93)
    {
      v94 = v93;
      v95 = v93[8];
      v157 = v93[7];
      v96 = v93[9];
      v97 = v93[10];
      if (v96)
      {
        v93 = swift_allocObject();
        v98 = v93;
        v93[2] = v96;
        v93[3] = v97;
      }

      else
      {
        v98 = 0;
      }

      v155 = &v132;
      __chkstk_darwin(v93);
      v130 = v119;
      v131 = v98;
      v120 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v121 = v67;
      v122 = swift_allocObject();
      *(v122 + 16) = v120;
      *(v122 + 24) = v94;
      swift_retain_n();
      sub_10000827C(v96);

      v123 = sub_100583F3C(v157, v95, sub_1005842C4, v129, sub_1005842FC, v122, 0);

      [v121 presentViewController:v123 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v106 = swift_dynamicCastClass();
    if (v106)
    {
      v107 = v144;
      v108 = *&v67[v144];
      if (!v108)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v109 = v106;
      v110 = v108;
      v111 = v140;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v160 = v109;
      v112 = v145;
      NSDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)();
      (*(v143 + 8))(v111, v112);
      v113 = v164;
      v114 = v142;
      v115 = v141;
      if (!v164)
      {
        goto LABEL_35;
      }

      v116 = *&v67[v107];
      if (!v116)
      {
        goto LABEL_68;
      }

      v117 = v116;
      UICollectionViewDiffableDataSource.snapshot(for:)();

      *&v164 = v32;
      LOBYTE(v117) = NSDiffableDataSourceSectionSnapshot.isExpanded(_:)();
      sub_10002849C(&qword_100973210);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1007B0B70;
      *(v118 + 32) = v32;

      if (v117)
      {
        NSDiffableDataSourceSectionSnapshot.collapse(_:)(v118);
      }

      else
      {
        NSDiffableDataSourceSectionSnapshot.expand(_:)(v118);
      }

      v127 = *&v67[v107];
      if (!v127)
      {
        goto LABEL_69;
      }

      *&v164 = v113;
      v128 = v127;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      (*(v139 + 8))(v115, v114);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v124 = swift_dynamicCastClass();
      if (!v124)
      {
        goto LABEL_35;
      }

      v125 = *(v124 + 80);

      v125(v126);

      [v156 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_100583F3C(v68, v69, sub_100584344, v70, sub_10058434C, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v156 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_100582A68()
{
  swift_getObjectType();
  Preferences.subscript.getter();
  return v1;
}

uint64_t sub_100582AE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&qword_100977550);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return Preferences.subscript.setter();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_100097060(&qword_100977568, &qword_100977550);
    v13 = sub_1000056E0(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    dispatch thunk of Preferences.removeValue(forKey:)();
    return sub_100007000(v15);
  }
}

uint64_t sub_100582CE0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B894(v8, &unk_1009711D0);
    return 0;
  }
}

void sub_100582DCC(uint64_t a1, NSString a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    v6 = String._bridgeToObjectiveC()();
    [v5 setObject:a2 forKey:v6];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100582E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a4 + 88);
    v9 = result;

    v8(v10, a1, a2);
  }

  return result;
}

void sub_100583134(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    a3 = String._bridgeToObjectiveC()();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_1005831FC(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_100005744(0, &qword_10098C8A8);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

double *sub_1005834AC(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = &_swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*((swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject) + 0x78))(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_100097060(&qword_10098C890, &qword_10098C888);
            for (i = 0; i != v18; ++i)
            {
              sub_10002849C(&qword_10098C888);
              v22 = sub_100548DDC(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100583854(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100583898()
{
  v0 = ASKBuildTypeGetCurrent();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v3 != v4)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
LABEL_6:

      goto LABEL_16;
    }

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        type metadata accessor for LocalPreferences();
        static LocalPreferences.currentApplication.getter();
        if (qword_10096E988 != -1)
        {
          swift_once();
        }

        v21 = sub_10002849C(&qword_100979740);
        sub_1000056A8(v21, qword_1009D2A68);
        Preferences.subscript.getter();

        if (v23 == 2 || (v23 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      goto LABEL_6;
    }
  }

LABEL_16:
  v17 = URL.host.getter();
  if (!v18)
  {
LABEL_26:
    v19 = 0;
    return v19 & 1;
  }

  if (v17 == 0x6775626564 && v18 == 0xE500000000000000)
  {

    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

void sub_100583B3C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *(v0 + v2) = sub_1004FA640();
  *(v0 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100583C44()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100584370;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C9260;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007874(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_100583F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_100584354;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100768994;
  v29 = &unk_1008C91E8;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = String._bridgeToObjectiveC()();
  v30 = sub_10058435C;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100768994;
  v29 = &unk_1008C9238;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_100584208()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if (v3)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting();
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100584304@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1005845A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10058460C()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v12[2] = v12 - v1;
  v2 = type metadata accessor for PageGrid.HorizontalMargins();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = type metadata accessor for PageGrid.Breakpoint();
  sub_100005644(v10, qword_1009D2A80);
  v12[1] = sub_1000056A8(v10, qword_1009D2A80);
  v13 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v13 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v13 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  (*(v3 + 104))(v5, enum case for PageGrid.HorizontalMargins.dynamicCenter(_:), v2);
  LOBYTE(v13) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v13 = 0;
  PageGrid.DirectionalValue.init(_:)();
  return PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
}

uint64_t sub_100584924()
{
  v0 = type metadata accessor for PageGrid.HorizontalMargins();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for PageGrid.Breakpoint();
  sub_100005644(v7, qword_1009D2A98);
  sub_1000056A8(v7, qword_1009D2A98);
  v10 = 0x4074F00000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v10 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v10 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (*(v1 + 104))(v3, enum case for PageGrid.HorizontalMargins.absolute(_:), v0);
  return PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
}

uint64_t sub_100584B68()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v38 = v31 - v1;
  v44 = type metadata accessor for PageGrid.HorizontalMargins();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v5 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  sub_10002849C(&qword_100970EF0);
  v37 = type metadata accessor for PageGrid.Breakpoint();
  v10 = *(*(v37 - 8) + 72);
  v43 = *(v37 - 8);
  v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007B73E0;
  v35 = v12;
  v42 = v12 + v11;
  v45 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v36 = enum case for PageGrid.HorizontalMargins.dynamicCenter(_:);
  v18 = *(v2 + 104);
  v39 = v2 + 104;
  v18(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v41 = v18;
  (v18)(v4, v36, v44);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  v20 = v40;
  PageGrid.DirectionalValue.init(_:)();
  v21 = v42;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v22 = v21 + 2 * v20;
  if (qword_10096E990 != -1)
  {
    swift_once();
  }

  v23 = v37;
  v24 = sub_1000056A8(v37, qword_1009D2A80);
  v25 = *(v43 + 16);
  v43 += 16;
  v34 = v25;
  v25(v22, v24, v23);
  v31[1] = 3 * v20;
  v45 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v32 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v32;
  v36 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v41(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x4074F00000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v32;
  (v41)(v4, v36, v44);
  v26 = v42;
  PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x4074F00000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = vdupq_n_s64(0x404A000000000000uLL);
  (v41)(v4, v36, v44);
  PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (qword_10096E998 != -1)
  {
    swift_once();
  }

  v27 = v26 + 6 * v40;
  v28 = v37;
  v29 = sub_1000056A8(v37, qword_1009D2A98);
  result = v34(v27, v29, v28);
  qword_10098C900 = v35;
  return result;
}

uint64_t sub_1005853D4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 16) == 1)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100034F9C(0, *(v8 + 2) + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100034F9C((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[2 * v11];
    *(v12 + 4) = sub_10006F094;
    *(v12 + 5) = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_1005854F4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100585CD0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C9378;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_10000794C(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1005857C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16) == 1)
    {
      *(result + 16) = 0;
      v1 = result;
      swift_beginAccess();
      v2 = *(v1 + 24);
      v3 = *(v2 + 16);
      if (v3)
      {

        v4 = v2 + 40;
        do
        {
          v5 = *(v4 - 8);

          v5(v6);

          v4 += 16;
          --v3;
        }

        while (v3);

        v7 = v1;
      }

      else
      {
        v7 = v1;
      }

      *(v7 + 24) = _swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1005858C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100585924()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = sub_1000076C0();
  v8[0] = "isScrollingAccessQueue";
  v8[1] = v6;
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100975440, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10002849C(&qword_100975448);
  sub_10000794C(&qword_100975450, &qword_100975448);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_100585B84(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1005854F4();
  }

  return result;
}

uint64_t sub_100585B90()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100585CC4;
  *(v2 + 24) = v0;
  v5[4] = sub_10006F094;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000489A8;
  v5[3] = &unk_1008C9328;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AppPromotionSubtitleView()
{
  result = qword_10098CA48;
  if (!qword_10098CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100585D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = type metadata accessor for Resize();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholder();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DynamicTextAppearance();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    DynamicTextAppearance.init()();
    if (qword_10096E9A8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for FontUseCase();
    sub_1000056A8(v22, qword_10098CA18);
    DynamicTextAppearance.withFontUseCase(_:)();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    LabelPlaceholder.Options.init(rawValue:)();

    LabelPlaceholder.init(_:with:where:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    v36 &= 1u;
    v23 = type metadata accessor for EmptyPlaceable();
    swift_allocObject();
    v24 = EmptyPlaceable.init()();
    v45 = v23;
    v46 = sub_100587418(&qword_1009768B0, &type metadata accessor for EmptyPlaceable);
    v44[0] = v24;
    Resize.init(_:size:)();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_1000056E0(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_1000056E0(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_100586BFC(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10002B894(&v41, &unk_10097B860);
    return sub_10002B894(v44, &unk_10097B860);
  }

  else
  {
    v29 = type metadata accessor for EmptyPlaceable();
    swift_allocObject();
    v30 = EmptyPlaceable.init()();
    a6[3] = v29;
    result = sub_100587418(&qword_1009768B0, &type metadata accessor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

uint64_t sub_10058625C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Artwork.Crop();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_10098CA38);
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_10098CA40);
  [v12 setHidden:a3 == 0];
  type metadata accessor for ArtworkLoader();
  result = BaseObjectGraph.optional<A>(_:)();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    v14 = *(v6 + 8);
    v14(v8, v5);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.crop.getter();
    v15 = Artwork.Crop.preferredContentMode.getter();
    v14(v8, v5);
    [v12 setContentMode:v15];
    type metadata accessor for ArtworkView();
    sub_100587418(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

uint64_t sub_1005864C8()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10098CA18);
  v1 = sub_1000056A8(v0, qword_10098CA18);
  if (qword_10096E3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D1AD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_100586590(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_10098CA38;
  if (qword_10096E9A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_10098CA18);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v2[v12] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v17 = qword_10098CA40;
  type metadata accessor for ArtworkView();
  *&v2[v17] = static ArtworkView.iconArtworkView.getter();
  v2[qword_10098CA30] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_10098CA38;
  v20 = *&v18[qword_10098CA38];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_10098CA40;
  [*&v22[qword_10098CA40] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_1005868E4(uint64_t a1)
{
  v3 = [*(v1 + qword_10098CA38) layer];
  sub_100031660(a1, v12, &unk_1009711D0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10002A400(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100007000(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10002B894(a1, &unk_1009711D0);
}

uint64_t sub_100586A94@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_10098CA38];
  v17[3] = type metadata accessor for DynamicTypeLabel();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_10098CA40];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = type metadata accessor for ArtworkView();
    v8 = sub_100587418(&qword_100989780, &type metadata accessor for ArtworkView);
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_10098CA30];
  v10 = [v1 traitCollection];
  sub_100586BFC(v17, &v12, v9, v10, a1);

  sub_10002B894(&v12, &unk_10097B860);
  return sub_10002B894(v17, &unk_10097B860);
}

uint64_t sub_100586BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for HorizontalStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, &v39, &unk_10097B860);
  if (v40)
  {
    sub_100005A38(&v39, v41);
    v16 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v17 = 16.0;
    if ((a3 & 1) == 0)
    {
      v17 = 14.0;
    }

    if (v16)
    {
      v18 = 25.0;
    }

    else
    {
      v18 = v17;
    }

    sub_1000367E8();
    if (qword_10096E9A8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for FontUseCase();
    sub_1000056A8(v19, qword_10098CA18);
    v20 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    [v20 lineHeight];
    v22 = v21;
    HorizontalStack.init(with:)();
    sub_100031660(a2, &v36, &unk_10097B860);
    if (v37)
    {
      if ((v22 - v18) * 0.5 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = (v22 - v18) * 0.5;
      }

      sub_100005A38(&v36, &v39);
      sub_10002C0AC(&v39, &v36);
      v35[3] = type metadata accessor for Resize();
      v35[4] = &protocol witness table for Resize;
      sub_1000056E0(v35);
      Resize.init(_:size:)();
      v34[8] = &type metadata for CGFloat;
      v34[9] = &protocol witness table for CGFloat;
      *&v34[5] = v23;
      v24 = type metadata accessor for ZeroDimension();
      v34[3] = v24;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v34);
      static ZeroDimension.zero.getter();
      v33[3] = v24;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v33);
      static ZeroDimension.zero.getter();
      v32[3] = v24;
      v32[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v32);
      static ZeroDimension.zero.getter();
      v37 = type metadata accessor for Margins();
      v38 = &protocol witness table for Margins;
      sub_1000056E0(&v36);
      Margins.init(_:top:leading:bottom:trailing:)();
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = v6;
      v26 = a4;
      HorizontalStack.add(_:with:)();

      sub_100007000(&v39);
      sub_100007000(&v36);
    }

    else
    {
      sub_10002B894(&v36, &unk_10097B860);
    }

    HorizontalStack.add(_:with:)();
    a5[3] = v12;
    a5[4] = &protocol witness table for HorizontalStack;
    v30 = sub_1000056E0(a5);
    (*(v13 + 32))(v30, v15, v12);

    return sub_100007000(v41);
  }

  else
  {
    sub_10002B894(&v39, &unk_10097B860);
    v27 = type metadata accessor for EmptyPlaceable();
    swift_allocObject();
    v28 = EmptyPlaceable.init()();
    a5[3] = v27;
    result = sub_100587418(&qword_1009768B0, &type metadata accessor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v28;
  }

  return result;
}

void sub_100587054()
{
  v1 = *(v0 + qword_10098CA40);
}

void sub_100587094(uint64_t a1)
{
  v2 = *(a1 + qword_10098CA40);
}

unint64_t sub_1005870FC()
{
  result = qword_10098CA98[0];
  if (!qword_10098CA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10098CA98);
  }

  return result;
}

void sub_1005871B4()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_10098CA38;
  if (qword_10096E9A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_10098CA18);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = qword_10098CA40;
  type metadata accessor for ArtworkView();
  *(v1 + v14) = static ArtworkView.iconArtworkView.getter();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100587418(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100587504(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Shelf.ContentType();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  CGSize.subtracting(insets:)();
  if ((a2 & 1) == 0)
  {
    v17 = sub_1005D8420();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      swift_getObjectType();
      [a4 pageMarginInsets];
      (*(v20 + 32))(0, a4, v19, v20, v21);
      v22 = [a4 traitCollection];
      LOBYTE(v19) = (*(*v6 + 696))(a1, v22);

      if (v19)
      {
        v23 = sub_100592DF8(a1, a3, a4);
        (*(v13 + 16))(v16, a1, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != enum case for Shelf.ContentType.annotation(_:) && v24 != enum case for Shelf.ContentType.productCapability(_:) && v24 != enum case for Shelf.ContentType.productPageLink(_:) && v24 != enum case for Shelf.ContentType.privacyType(_:))
        {
          (*(v13 + 8))(v16, v12);
          PageTraitEnvironment.pageColumnMargin.getter();
          if (!__OFSUB__(v23, 1))
          {
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

        if (__OFSUB__(v23, 1))
        {
          __break(1u);
          goto LABEL_13;
        }
      }
    }
  }
}

double sub_100587800(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = dispatch thunk of ShelfPresenter.shelf(for:)();
  Shelf.contentType.getter();
  v34 = v16;
  if (v33)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v18 = 0;
    v19 = v35;
  }

  else
  {
    v33 = v17;
    dispatch thunk of ShelfPresenter.contentType(for:)();
    (*(v10 + 56))(v8, 0, 1, v9);
    dispatch thunk of ShelfPresenter.title(for:)();
    if (v20)
    {

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v35;
  }

  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v22 = &off_1008D0A88;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v22 = &off_1008CBB38;
  }

  v23 = (v22[1])();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    v28 = *&v23;

    v27 = v28;
    goto LABEL_18;
  }

LABEL_14:
  if (sub_1005D8420())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_1005972B4(v19);

LABEL_18:
  sub_10002B894(v8, &unk_100992460);
  (*(v10 + 8))(v15, v9);
  return v27;
}

uint64_t sub_100587BFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v206 = a3;
  v198 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v198);
  v182 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v167 - v6;
  v204 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v197 = *(v204 - 8);
  __chkstk_darwin(v204);
  v194 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v203 = &v167 - v9;
  v10 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v10 - 8);
  v193 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v192 = &v167 - v13;
  __chkstk_darwin(v14);
  v202 = &v167 - v15;
  __chkstk_darwin(v16);
  v201 = &v167 - v17;
  v18 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v18 - 8);
  v181 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v180 = &v167 - v21;
  __chkstk_darwin(v22);
  v188 = &v167 - v23;
  __chkstk_darwin(v24);
  v187 = &v167 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v195 = *(v26 - 8);
  v196 = v26;
  __chkstk_darwin(v26);
  v179 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v167 - v29;
  __chkstk_darwin(v30);
  v177 = &v167 - v31;
  __chkstk_darwin(v32);
  v191 = (&v167 - v33);
  __chkstk_darwin(v34);
  v186 = &v167 - v35;
  __chkstk_darwin(v36);
  v185 = &v167 - v37;
  __chkstk_darwin(v38);
  v184 = &v167 - v39;
  __chkstk_darwin(v40);
  v200 = (&v167 - v41);
  v42 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v42 - 8);
  v169 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v172 = &v167 - v45;
  __chkstk_darwin(v46);
  v171 = &v167 - v47;
  __chkstk_darwin(v48);
  v174 = &v167 - v49;
  __chkstk_darwin(v50);
  v190 = &v167 - v51;
  __chkstk_darwin(v52);
  v168 = &v167 - v53;
  __chkstk_darwin(v54);
  v170 = &v167 - v55;
  __chkstk_darwin(v56);
  v173 = &v167 - v57;
  __chkstk_darwin(v58);
  v176 = &v167 - v59;
  __chkstk_darwin(v60);
  v175 = &v167 - v61;
  __chkstk_darwin(v62);
  v199 = &v167 - v63;
  v64 = type metadata accessor for ShelfBackground();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v167 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v167 - v69;
  v71 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v72 = 0;
  if (v71)
  {
    v72 = dispatch thunk of ShelfPresenter.shelf(for:)();
  }

  v207 = v72;
  dispatch thunk of ShelfPresenter.eyebrow(for:)();
  v74 = v73;
  if (v73)
  {
  }

  v183 = v74;
  dispatch thunk of ShelfPresenter.subtitle(for:)();
  v76 = v75;
  if (v75)
  {
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = static ShelfBackground.== infix(_:_:)();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v205;
  v80 = sub_10058E9EC(a1, v205);
  v81 = sub_10058E7C8(a1, v79);
  if (v77)
  {
    sub_1001EE328(v76 != 0, v206);
  }

  v83 = v76;
  v167 = v76;
  if (v80)
  {
    if (v207)
    {

      v84 = Shelf.header.getter();

      v85 = v184;
      v86 = v199;
      if (v84)
      {
        ShelfHeader.configuration.getter();

        v87 = 0;
      }

      else
      {
        v87 = 1;
      }
    }

    else
    {
      v87 = 1;
      v85 = v184;
      v86 = v199;
    }

    v91 = type metadata accessor for ShelfHeader.Configuration();
    v92 = *(v91 - 8);
    (*(v92 + 56))(v86, v87, 1, v91);
    v93 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v194 = *(v93 - 1);
    (*(v194 + 7))(v201, 1, 1, v93);
    v205 = v93;
    if (v83)
    {
      v94 = (v92 + 48);
      v95 = v86;
      if (v80 == 1)
      {
        v96 = v175;
        sub_100031660(v95, v175, &unk_100984380);
        if ((*v94)(v96, 1, v91) == 1)
        {
          sub_10002B894(v96, &unk_100984380);
          v97 = 0;
        }

        else
        {
          v97 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v92 + 8))(v96, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_100512504(v97, v200);

        if (qword_10096E7C0 != -1)
        {
          swift_once();
        }

        v109 = qword_1009D27A8;
      }

      else
      {
        v101 = v176;
        sub_100031660(v95, v176, &unk_100984380);
        if ((*v94)(v101, 1, v91) == 1)
        {
          sub_10002B894(v101, &unk_100984380);
          v102 = 0;
        }

        else
        {
          v102 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v92 + 8))(v101, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_100512504(v102, v200);

        if (qword_10096E7B0 != -1)
        {
          swift_once();
        }

        v109 = qword_1009D2778;
      }

      v110 = sub_1000056A8(v107, v109);
      sub_1001EFDF0(v110, v85);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v111 = 0;
      v112 = qword_1009D26B8;
      v113 = v108;
    }

    else
    {
      if (v80 == 1)
      {
        v98 = v86;
        v99 = v173;
        sub_100031660(v98, v173, &unk_100984380);
        if ((*(v92 + 48))(v99, 1, v91) == 1)
        {
          sub_10002B894(v99, &unk_100984380);
          v100 = 0;
        }

        else
        {
          v100 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v92 + 8))(v99, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_100512504(v100, v200);

        if (qword_10096E7B8 != -1)
        {
          swift_once();
        }

        v111 = 1;
        v112 = qword_1009D2790;
      }

      else
      {
        v103 = (v92 + 48);
        if (v183)
        {
          v104 = v86;
          v105 = v170;
          sub_100031660(v104, v170, &unk_100984380);
          if ((*v103)(v105, 1, v91) == 1)
          {
            sub_10002B894(v105, &unk_100984380);
            v106 = 0;
          }

          else
          {
            v106 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v92 + 8))(v105, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_10051250C(v106, v200);

          if (qword_10096E7A8 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_1009D2760;
        }

        else
        {
          v130 = v86;
          v131 = v168;
          sub_100031660(v130, v168, &unk_100984380);
          if ((*v103)(v131, 1, v91) == 1)
          {
            sub_10002B894(v131, &unk_100984380);
            v132 = 0;
          }

          else
          {
            v132 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v92 + 8))(v131, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_100512504(v132, v200);

          if (qword_10096E7A0 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_1009D2748;
        }
      }

      v113 = v85;
    }

    LODWORD(v196) = v83 != 0;
    v152 = sub_1000056A8(v107, v112);
    sub_1001EFDF0(v152, v113);
    (*(v195 + 56))(v108, v111, 1, v107);
    v153 = v200;
    v154 = v185;
    sub_1001EFDF0(v200, v185);
    v155 = v186;
    sub_1001EFDF0(v85, v186);
    v156 = v188;
    sub_100031660(v108, v188, &qword_1009794E8);
    v157 = v201;
    sub_100031660(v201, v202, &qword_1009794E0);
    v158 = v197;
    v159 = v204;
    (*(v197 + 104))(v203, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
    sub_100005744(0, &qword_100970180);
    v195 = static UIColor.defaultLine.getter();

    sub_10002B894(v157, &qword_1009794E0);
    sub_10002B894(v108, &qword_1009794E8);
    sub_10022AA04(v85, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10022AA04(v153, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10002B894(v199, &unk_100984380);
    v160 = v198;
    v161 = *(v198 + 32);
    v162 = v189;
    sub_1001EFEC4(v154, v189, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFEC4(v155, v162 + v160[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1000476A0(v156, v162 + v160[6], &qword_1009794E8);
    *(v162 + v160[7]) = 0;
    *(v162 + v161) = 0;
    *(v162 + v160[9]) = v196;
    *(v162 + v160[14]) = 0x4030000000000000;
    *(v162 + v160[12]) = 0;
    *(v162 + v160[13]) = v195;
    v163 = v202;
    (*(v158 + 32))(v162 + v160[11], v203, v159);
    v164 = v194;
    v165 = v205;
    if ((*(v194 + 6))(v163, 1, v205) == 1)
    {
      sub_10002B894(v163, &qword_1009794E0);
      if (v167)
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v164 + 13))(v162 + v160[10], *v166, v165);
    }

    else
    {
      (*(v164 + 4))(v162 + v160[10], v163, v165);
    }

    v151 = v162;
    return sub_1001EFEC4(v151, v206, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v205) = v81;
  if (v207)
  {

    v88 = Shelf.header.getter();

    v89 = v190;
    if (v88)
    {
      ShelfHeader.configuration.getter();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }
  }

  else
  {
    v90 = 1;
    v89 = v190;
  }

  v114 = type metadata accessor for ShelfHeader.Configuration();
  v115 = *(v114 - 8);
  (*(v115 + 56))(v89, v90, 1, v114);
  v116 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v202 = *(v116 - 8);
  (*(v202 + 56))(v192, 1, 1, v116);
  v117 = (v115 + 48);
  v203 = v116;
  if (v183)
  {
    if (v83)
    {
      v118 = v174;
      sub_100031660(v89, v174, &unk_100984380);
      if ((*v117)(v118, 1, v114) == 1)
      {
        sub_10002B894(v118, &unk_100984380);
        v119 = 0;
      }

      else
      {
        v119 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v115 + 8))(v118, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_100512504(v119, v191);

      if (qword_10096E798 != -1)
      {
        swift_once();
      }

      v127 = qword_1009D2730;
LABEL_68:
      v133 = sub_1000056A8(v124, v127);
      sub_1001EFDF0(v133, v126);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v134 = 0;
      v135 = qword_1009D26B8;
      v136 = v125;
      goto LABEL_84;
    }

    v122 = v171;
    sub_100031660(v89, v171, &unk_100984380);
    if ((*v117)(v122, 1, v114) == 1)
    {
      sub_10002B894(v122, &unk_100984380);
      v123 = 0;
    }

    else
    {
      v123 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v115 + 8))(v122, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_100512504(v123, v191);

    if (qword_10096E780 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_1009D26E8;
  }

  else
  {
    if (v83)
    {
      v120 = v172;
      sub_100031660(v89, v172, &unk_100984380);
      if ((*v117)(v120, 1, v114) == 1)
      {
        sub_10002B894(v120, &unk_100984380);
        v121 = 0;
      }

      else
      {
        v121 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v115 + 8))(v120, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_100512504(v121, v191);

      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v127 = qword_1009D2718;
      goto LABEL_68;
    }

    v128 = v169;
    sub_100031660(v89, v169, &unk_100984380);
    if ((*v117)(v128, 1, v114) == 1)
    {
      sub_10002B894(v128, &unk_100984380);
      v129 = 0;
    }

    else
    {
      v129 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v115 + 8))(v128, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_100512504(v129, v191);

    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_1009D26D0;
  }

  v136 = v126;
LABEL_84:
  LODWORD(v201) = v83 != 0;
  v137 = sub_1000056A8(v124, v135);
  sub_1001EFDF0(v137, v136);
  (*(v195 + 56))(v125, v134, 1, v124);
  v138 = v191;
  v139 = v178;
  sub_1001EFDF0(v191, v178);
  v140 = v179;
  sub_1001EFDF0(v126, v179);
  v141 = v181;
  sub_100031660(v125, v181, &qword_1009794E8);
  v142 = v192;
  sub_100031660(v192, v193, &qword_1009794E0);
  v143 = v197;
  (*(v197 + 104))(v194, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
  sub_100005744(0, &qword_100970180);
  v200 = static UIColor.defaultLine.getter();

  sub_10002B894(v142, &qword_1009794E0);
  sub_10002B894(v125, &qword_1009794E8);
  sub_10022AA04(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10022AA04(v138, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v190, &unk_100984380);
  v144 = v198;
  v145 = *(v198 + 32);
  v146 = v182;
  sub_1001EFEC4(v139, v182, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v140, v146 + v144[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1000476A0(v141, v146 + v144[6], &qword_1009794E8);
  *(v146 + v144[7]) = v205 & 1;
  *(v146 + v145) = 0;
  *(v146 + v144[9]) = v201;
  *(v146 + v144[14]) = 0x4030000000000000;
  *(v146 + v144[12]) = 0;
  *(v146 + v144[13]) = v200;
  (*(v143 + 32))(v146 + v144[11], v194, v204);
  v147 = v193;
  v149 = v202;
  v148 = v203;
  if ((*(v202 + 48))(v193, 1, v203) == 1)
  {
    sub_10002B894(v147, &qword_1009794E0);
    if (v167)
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v149 + 104))(v146 + v144[10], *v150, v148);
  }

  else
  {
    (*(v149 + 32))(v146 + v144[10], v147, v148);
  }

  v151 = v146;
  return sub_1001EFEC4(v151, v206, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100589554()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

void sub_1005895AC(void *a1)
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
        sub_100599198(&qword_1009729B0, &type metadata accessor for IndexSet);
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
        *(v21 + 16) = sub_100597BE4;
        *(v21 + 24) = v20;
        aBlock[4] = sub_10006F094;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000489A8;
        aBlock[3] = &unk_1008C9678;
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

uint64_t sub_100589990(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v51 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = 0;
  if (dispatch thunk of ShelfPresenter.isShelfHidden(for:)())
  {
    return v14;
  }

  dispatch thunk of ShelfPresenter.contentType(for:)();
  v47 = a1;
  v15 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v48 = v5;
  v49 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v52;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_10;
  }

  v28 = v18 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v18 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v28 || v18 == enum case for Shelf.ContentType.action(_:))
  {
LABEL_7:
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (v18 != enum case for Shelf.ContentType.ribbonBar(_:))
  {
    if (v18 == enum case for Shelf.ContentType.editorialCard(_:) || v18 == enum case for Shelf.ContentType.videoCard(_:))
    {
      goto LABEL_7;
    }

    if (v18 != enum case for Shelf.ContentType.brick(_:) && v18 != enum case for Shelf.ContentType.categoryBrick(_:))
    {
      if (v18 == enum case for Shelf.ContentType.reviews(_:) || v18 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v18 == enum case for Shelf.ContentType.framedVideo(_:) || v18 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v18 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v18 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_7;
      }

      if (v18 != enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        if (v18 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v18 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v18 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v18 == enum case for Shelf.ContentType.posterLockup(_:) || v18 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          goto LABEL_7;
        }

        if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
        {
          if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
          {
            (*(v49 + 8))(v10, v48);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_1005D8420();
  if (v21)
  {
    v23 = v47;
    v24 = v53;
    v25 = sub_100593724(v47, v20, v21, v22, v53, v51);
    v27 = v48;
    v26 = v49;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v50;
  v27 = v48;
  v16(v50, v13, v48);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_1008D0A88;
    v26 = v49;
LABEL_45:
    v23 = v47;
    [v20 bounds];
    v35 = v34;
    v24 = v53;
    v25 = sub_100593A40(v23, v36, v37, v13, v33, v35, v53, v51);
    goto LABEL_46;
  }

  v26 = v49;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell();
    v34 = &off_1008CBB38;
    goto LABEL_45;
  }

  v41 = *(v49 + 8);
  v41(v31, v27);
  v42 = sub_1005D8420();
  v23 = v47;
  if (v42)
  {
    sub_100593D98(v47, v13, v42, v43, v53, v20, v51);
    if (!v25)
    {
      v41(v13, v27);
      return 0;
    }

    v24 = v53;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_10058B978(v23, v24)}];
    sub_10058A2A4(v23, v24, v20);
    sub_100005744(0, &qword_10097F460);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_100594BFC();
    sub_100005744(0, &unk_10097D670);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setDecorationItems:v39];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v44._object = 0x800000010081AA90;
  v44._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v44);
  _print_unlocked<A, B>(_:_:)();
  v45._countAndFlagsBits = 0x7463657320746120;
  v45._object = 0xEC000000206E6F69;
  String.append(_:)(v45);
  v54 = v23;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10058A0C0(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for StaticDimension();
  sub_1000056A8(v3, qword_1009D2460);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

double *sub_10058A2A4(uint64_t a1, void *a2, void *a3)
{
  dispatch thunk of ShelfPresenter.title(for:)();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_10058C694(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10002849C(&qword_100973210);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B0B70;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_10058A454(uint64_t a1, void *a2, void *a3, uint64_t a4))()
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_10058B978(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v44 = v47;
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v45 = v47;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  v25 = v24;
  v26 = v4[2];
  v27 = *(v9 + 80);
  v28 = *(v9 + 96);
  swift_unknownObjectRetain();
  v29 = v43;

  v30 = sub_10043A6F4(a1, v16, v18, v20, v22, v25, v29, v26, a4, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_1000517A8(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  dispatch thunk of ShelfPresenter.shelf(for:)();
  Shelf.impressionMetrics.getter();

  v32 = type metadata accessor for ImpressionMetrics();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10002B894(v12, &qword_100973D30);
    v34 = 1;
  }

  else
  {
    ImpressionMetrics.id.getter();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = type metadata accessor for ImpressionMetrics.ID();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_10058B038(v15, v36, v45, v30);

  sub_10002B894(v15, &qword_100990A90);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_100597B78;
}

uint64_t sub_10058A878()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for ImpressionMetrics();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = dispatch thunk of ShelfPresenter.sectionCount.getter();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = 0;
    v43 = result;
    v44 = (v41 + 48);
    v42 = (v41 + 32);
    v39 = v5;
    v40 = (v41 + 16);
    v34 = v41 + 40;
    v35 = (v41 + 8);
    v37 = v12;
    v38 = v11;
    v36 = v13;
    do
    {
      dispatch thunk of ShelfPresenter.shelf(for:)();
      Shelf.impressionMetrics.getter();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10002B894(v5, &qword_100973D30);
      }

      else
      {
        v16 = *v42;
        (*v42)(v11, v5, v6);
        swift_beginAccess();
        v17 = v8;
        v18 = v6;
        (*v40)(v8, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v1[7];
        v20 = v46;
        v21 = v1;
        v1[7] = 0x8000000000000000;
        v23 = sub_1003D7340(v15);
        v24 = v20[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
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

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10005383C();
          }
        }

        else
        {
          sub_10004D058(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_1003D7340(v15);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_22;
          }

          v23 = v28;
        }

        v8 = v17;
        v30 = v46;
        if (v27)
        {
          v6 = v18;
          (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v17, v18);
        }

        else
        {
          v46[(v23 >> 6) + 8] |= 1 << v23;
          *(v30[6] + 8 * v23) = v15;
          v6 = v18;
          v16((v30[7] + *(v41 + 72) * v23), v17, v18);
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_20;
          }

          v30[2] = v33;
        }

        v1 = v21;
        v21[7] = v30;

        swift_endAccess();

        v11 = v38;
        (*v35)(v38, v6);
        v5 = v39;
      }

      ++v15;
      result = v43;
    }

    while (v43 != v15);
  }

  return result;
}

void sub_10058AC94(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_10002849C(&unk_100980500);
    sub_100056080();
    StateStore.performTransaction<A>(_:)();
  }
}

uint64_t sub_10058AD70()
{
  v1 = type metadata accessor for ImpressionMetrics.ID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Shelf.impressionMetrics.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v0 + 112))
    {

      ImpressionsCalculator.addElement(_:at:)();

      if (*(v0 + 112))
      {

        ImpressionMetrics.id.getter();
        v12 = ImpressionsCalculator.makeChildCalculator(for:)();

        (*(v2 + 8))(v4, v1);
        (*(v9 + 8))(v11, v8);
        return v12;
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_10058B038(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ImpressionMetrics.ID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  v18 = CompoundScrollObserver.init(children:)();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100031660(a1, v9, &qword_100990A90);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &qword_100990A90);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for ImpressionIdScrollObserver();
  swift_allocObject();
  swift_retain_n();
  ImpressionIdScrollObserver.init(_:impressionID:collectionView:)();
  CompoundScrollObserver.addChild(_:)();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    type metadata accessor for VideoPlaybackScrollObserver();
    swift_allocObject();
    v19 = a2;
    VideoPlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    type metadata accessor for PlaybackScrollObserver();
    swift_allocObject();
    v22 = v21;
    PlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();
  }

  if (v20)
  {
    sub_100599198(&qword_10098CB28, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator);

    CompoundScrollObserver.addChild(_:)();
  }

  return v18;
}

double sub_10058B404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = a4;
  v43 = a3;
  v42[1] = a2;
  v49 = a1;
  v48 = type metadata accessor for ShelfBackground();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v42 - v6;
  v8 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v8 - 8);
  v10 = v42 - v9;
  v11 = type metadata accessor for Shelf.ContentType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v49 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v50 = v17;
  Shelf.contentType.getter();
  v47 = v7;
  v44 = v10;
  if (v43)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v18 = v45;
    v19 = v48;
    (*(v45 + 104))(v7, enum case for ShelfBackground.none(_:), v48);
  }

  else
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    (*(v12 + 56))(v10, 0, 1, v11);
    dispatch thunk of ShelfPresenter.background(for:)();
    v19 = v48;
    v18 = v45;
  }

  v20 = v50;
  (*(v12 + 16))(v14, v50, v11);
  v21 = (*(v12 + 88))(v14, v11);
  v22 = v44;
  v23 = v46;
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v24 = &off_1008D0A88;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v12 + 8))(v14, v11);
      v26 = v47;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v24 = &off_1008CBB38;
  }

  v25 = (v24[2])();
  v26 = v47;
  v20 = v50;
  if ((v27 & 1) == 0)
  {
    v28 = *&v25;

    v29 = v28;
    (*(v18 + 8))(v26, v19);
    sub_10002B894(v22, &unk_100992460);
    (*(v12 + 8))(v20, v11);
    return v29;
  }

LABEL_11:
  v45 = v11;
  v30 = sub_1005D8420();
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    v34 = v42[0];
    Shelf.background.getter();
    *&v35 = COERCE_DOUBLE((*(v33 + 48))(v22, v26, v34, v23, v32, v33));
    v37 = v36;

    v38 = *(v18 + 8);
    v39 = v34;
    v40 = v48;
    v38(v39, v48);
    v38(v26, v40);
    sub_10002B894(v22, &unk_100992460);
    (*(v12 + 8))(v50, v45);
    v29 = 0.0;
    if ((v37 & 1) == 0)
    {
      return *&v35;
    }
  }

  else
  {

    (*(v18 + 8))(v26, v19);
    sub_10002B894(v22, &unk_100992460);
    (*(v12 + 8))(v20, v45);
    return 0.0;
  }

  return v29;
}

double sub_10058B978(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Shelf.ContentType();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v32 - v8;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    if (qword_10096E6E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for EdgeInsetsDimension();
    sub_1000056A8(v13, qword_1009D24D8);
    static Dimensions.defaultRoundingRule.getter();
    EdgeInsetsDimension.value(in:rounded:)();
    (*(v10 + 8))(v12, v9);
    dispatch thunk of ShelfPresenter.title(for:)();
    if (v14)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v16 = a1 - 1;
      }

      else
      {
        v16 = 0;
      }

      top = sub_10058B404(a1, v16, a1 < 1, a2);
    }

    v18 = v34;
    v17 = v35;
    v19 = v33;
    v20 = dispatch thunk of ShelfPresenter.sectionCount.getter();
    if (a1 + 1 < v20)
    {
      v21 = a1 + 1;
    }

    else
    {
      v21 = 0;
    }

    (*(*v2 + 536))(a1, v21, a1 + 1 >= v20, a2);
    dispatch thunk of ShelfPresenter.contentType(for:)();
    if (sub_100596280())
    {
      goto LABEL_46;
    }

    v22 = sub_1005D8420();
    if (!v22)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v18 + 8))(v19, v17);
      return top;
    }

    v24 = v22;
    v35 = v23;
    [a2 pageMarginInsets];
    v26 = v25;
    v27 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
    v28 = v32;
    (*(v18 + 16))(v32, v19, v17);
    v29 = (*(v18 + 88))(v28, v17);
    if (v29 != enum case for Shelf.ContentType.smallLockup(_:) && v29 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v29 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v30 = 1;
LABEL_45:
        (*(v35 + 32))(v30 & 1, a2, v24, v26, v26);
        goto LABEL_46;
      }

      if (v29 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v29 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v29 != enum case for Shelf.ContentType.action(_:))
      {
        if (v29 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v29 != enum case for Shelf.ContentType.editorialCard(_:) && v29 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v30 = 1;
          if (v29 == enum case for Shelf.ContentType.brick(_:) || v29 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v29 != enum case for Shelf.ContentType.reviews(_:) && v29 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v29 != enum case for Shelf.ContentType.framedVideo(_:) && v29 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v29 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v29 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v29 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v29 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v29 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v29 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v29 != enum case for Shelf.ContentType.posterLockup(_:) && v29 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v30 = v27;
                if (v29 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v18 + 8))(v28, v17);
                  v30 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v30 = v27;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_10058BFB8(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    if (!sub_100596280())
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_100596434(a1, v15);

        if (v16)
        {
          (*(v6 + 16))(v8, v11, v5);
          v17 = (*(v6 + 88))(v8, v5);
          v18 = *(v6 + 8);
          if (v17 == enum case for Shelf.ContentType.annotation(_:) || v17 == enum case for Shelf.ContentType.productCapability(_:) || v17 == enum case for Shelf.ContentType.productPageLink(_:) || v17 == enum case for Shelf.ContentType.privacyType(_:))
          {
            v18(v11, v5);
            return 30.0;
          }

          v18(v8, v5);
        }

        PageTraitEnvironment.pageColumnMargin.getter();
        v12 = v19;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_10058C2B0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfBackground();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1)
  {
    v11 = 0;
  }

  else
  {
    dispatch thunk of ShelfPresenter.background(for:)();
    (*(v3 + 104))(v5, enum case for ShelfBackground.none(_:), v2);
    sub_100599198(&qword_100981230, &type metadata accessor for ShelfBackground);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    v11 = v9 ^ 1;
  }

  return v11 & 1;
}

double sub_10058C49C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ShelfBackground();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    dispatch thunk of ShelfPresenter.background(for:)();
    if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.color(_:))
    {
      (*(v5 + 96))(v7, v4);

      v8 = *(sub_10002849C(&qword_100972A40) + 48);
      v9 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v9 - 8) + 8))(v7 + v8, v9);
      return sub_10058B978(a1, a2);
    }

    (*(v5 + 8))(v7, v4);
  }

  return UIEdgeInsetsZero.top;
}

double sub_10058C694(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = dispatch thunk of ShelfPresenter.title(for:)();
  if (v17)
  {
    v48 = v16;
    v49 = v17;
    v18 = dispatch thunk of ShelfPresenter.seeAllAction(for:)();
    v50 = v10;
    if (v18)
    {
      v44 = Action.title.getter();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10096D648 != -1)
      {
        swift_once();
      }

      v21 = qword_10097E830;
      v45 = a2;
      v46 = v20;
      if (v20)
      {
        v20 = String._bridgeToObjectiveC()();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v44 = v22;
        v24 = v22;
        v25 = [v24 font];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v27 = 0;
        }

        [v24 setFont:v27];

        v23 = v44;
      }

      [v21 sizeThatFits:{v13, v15}];
      v30 = v29;
      v11 = v31;

      v28 = v30 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];

      a2 = v45;
    }

    else
    {
      v28 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [a2 pageMarginInsets];
    if (a1 >= 1)
    {
      v32 = a1 - 1;
    }

    else
    {
      v32 = 0;
    }

    sub_10058B404(a1, v32, a1 < 1, a2);
    v33 = dispatch thunk of ShelfPresenter.titleArtwork(for:)();
    v46 = type metadata accessor for TitleHeaderView(0);
    v34 = dispatch thunk of ShelfPresenter.eyebrow(for:)();
    v36 = v35;
    v37 = dispatch thunk of ShelfPresenter.eyebrowArtwork(for:)();
    v38 = sub_100596664(v33 != 0, a2);
    v39 = v50;
    (*(*v4 + 632))(a1, a2);
    LOBYTE(v42) = 1;
    sub_1003F7390(v34, v36, v37, v48, v49, v33, 0, 0, v13, v15, v28, v11, 0, 0, v38, v39, v42, a2);
    v13 = v40;

    sub_10022AA04(v39, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}

uint64_t sub_10058CB6C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v35 = a4;
  v6 = type metadata accessor for ShelfBackground();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007FB9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v35 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
LABEL_5:
    v14 = v13;

LABEL_6:
    return v14;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v16 == a2)
  {

    goto LABEL_20;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_20:
    IndexPath.section.getter();
    dispatch thunk of ShelfPresenter.background(for:)();
    v20 = (*(v7 + 88))(v9, v6);
    v21 = enum case for ShelfBackground.interactive(_:);
    v10 = String._bridgeToObjectiveC()();
    if (v20 == v21)
    {
      type metadata accessor for InteractiveTitleHeaderView();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v11 = String._bridgeToObjectiveC()();

      v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v13 = [v35 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v22 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [v35 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v22 forIndexPath:isa];

    (*(v7 + 8))(v9, v6);
    return v24;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v19 == a2)
  {

LABEL_24:
    v26 = String._bridgeToObjectiveC()();
    type metadata accessor for InfiniteScrollFooterView();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v27 = String._bridgeToObjectiveC()();

    v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v35 dequeueReusableSupplementaryViewOfKind:v26 withReuseIdentifier:v27 forIndexPath:v12.super.isa];

    goto LABEL_6;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_24;
  }

  v28._countAndFlagsBits = 0xD00000000000001CLL;
  v28._object = 0x800000010081AA30;
  if (String.hasPrefix(_:)(v28))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = String._bridgeToObjectiveC()();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = v35;
    [v35 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v30 withReuseIdentifier:v31];

    v10 = String._bridgeToObjectiveC()();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = String._bridgeToObjectiveC()();

    v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v32 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
    goto LABEL_5;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v36 = 0xD00000000000001BLL;
  v37 = 0x800000010081AA70;
  v33._countAndFlagsBits = a1;
  v33._object = a2;
  String.append(_:)(v33);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10058D160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v165 = a5;
  v173 = a4;
  v169 = a1;
  v10 = *v6;
  v171 = a6;
  v172 = v10;
  v11 = type metadata accessor for ShelfBackground();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v149 - v16);
  __chkstk_darwin(v18);
  v20 = &v149 - v19;
  v21 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v21 - 8);
  v164 = (&v149 - v22);
  v157 = type metadata accessor for Shelf.PresentationHints();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v154 = &v149 - v25;
  v163 = type metadata accessor for Artwork.Crop();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v27 - 8);
  v160 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v153);
  v170 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v30 == a3)
  {

LABEL_5:
    v32 = type metadata accessor for InteractiveTitleHeaderView();
    v33 = v169;
    v149 = v32;
    v34 = swift_dynamicCastClass();
    v151 = v11;
    v150 = v12;
    v152 = v20;
    if (v34)
    {
      v159 = v34;
      v35 = *(v34 + OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView);
      v36 = v33;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v35 = swift_dynamicCastClassUnconditional();
      v159 = 0;
    }

    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    v37 = v35;
    inject<A, B>(_:from:)();
    v167 = v7;
    v168 = v174[0];
    v38 = v7[2];
    v39 = v172[10];
    v40 = v172[12];
    v41 = dispatch thunk of ShelfPresenter.eyebrowArtwork(for:)();
    v42 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
    v43 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork);

    sub_1003F1948(v41);
    *(v37 + v42) = v41;

    sub_1003F195C(v43);

    v169 = v38;
    v44 = dispatch thunk of ShelfPresenter.eyebrow(for:)();
    v46 = v45;
    v47 = (v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
    v48 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
    v49 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);

    sub_1003F1328(v44, v46);
    *v47 = v44;
    v47[1] = v46;

    sub_1003F13BC(v48, v49);

    v50 = *(v37 + v42);

    if (v50)
    {
      v51 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView);
      if (v51)
      {
        v52 = *(v37 + v42);
        v53 = v170;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v54 = v160;
        sub_1001EFDF0(v53, v160);

        v55 = v51;
        sub_10022AA04(v53, type metadata accessor for TitleHeaderView.Style);
        sub_1003FA3DC(v52, v54, v37);

        sub_10022AA04(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
        v56 = v161;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v162 + 8))(v56, v163);
        Artwork.config(_:mode:prefersLayeredImage:)();
        type metadata accessor for ArtworkView();
        sub_100599198(&qword_100970E80, &type metadata accessor for ArtworkView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }

    v58 = dispatch thunk of ShelfPresenter.titleArtwork(for:)();
    v59 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
    v60 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork);

    sub_1003F1AE8(v58);
    *(v37 + v59) = v58;

    sub_1003F1BFC(v60);

    v158 = *(v37 + v59);
    v61 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
    v62 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
    dispatch thunk of ShelfPresenter.title(for:)();
    if (v63)
    {
      v64 = String._bridgeToObjectiveC()();
    }

    else
    {
      v64 = 0;
    }

    [v62 setText:v64];

    v65 = *(v37 + v59);
    if (v65)
    {
      v66 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView);
      if (v66)
      {
        v67 = v170;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v68 = v160;
        sub_1001EFDF0(v67 + *(v153 + 20), v160);

        v69 = v66;
        sub_10022AA04(v67, type metadata accessor for TitleHeaderView.Style);
        sub_1003FA3DC(v65, v68, v37);
        sub_10022AA04(v68, type metadata accessor for TitleHeaderView.TextConfiguration);
        v70 = v161;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v162 + 8))(v70, v163);
        Artwork.config(_:mode:prefersLayeredImage:)();
        type metadata accessor for ArtworkView();
        sub_100599198(&qword_100970E80, &type metadata accessor for ArtworkView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }

    v71 = v158 != 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v39;
    v73 = v172;
    v74 = v172[11];
    *(v72 + 24) = v74;
    *(v72 + 32) = v40;
    *(v72 + 40) = v71;
    *(v72 + 48) = v73;
    v75 = (v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
    *v75 = sub_100597B2C;
    v75[1] = v72;

    [*(v37 + v61) setNumberOfLines:{sub_100596664(v71, v37)}];

    v76 = v173;
    v77 = dispatch thunk of ShelfPresenter.seeAllAction(for:)();
    v166 = v39;
    if (v77)
    {
      v172 = v74;
      dispatch thunk of ShelfPresenter.shelf(for:)();
      v78 = v154;
      Shelf.presentationHints.getter();

      v79 = v155;
      static Shelf.PresentationHints.accessoriesFollowBackground.getter();
      sub_100599198(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
      v80 = v157;
      v81 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v82 = *(v156 + 8);
      v82(v79, v80);
      v82(v78, v80);
      if (v81)
      {
        sub_100005744(0, &qword_100970180);
        v83 = static UIColor.primaryText.getter();
        v84 = v83;
      }

      else
      {
        v83 = 0;
      }

      v92 = v37;
      v93 = Action.title.getter();
      v94 = v164;
      *v164 = v93;
      v94[1] = v95;
      v94[2] = v83;
      v96 = type metadata accessor for Accessory();
      v94[3] = 0;
      v94[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v96 - 8) + 56))(v94, 0, 1, v96);
      (*((swift_isaMask & *v92) + 0x268))(v94, v171);

      sub_10002B894(v94, &qword_100984340);
      v97 = swift_allocObject();
      v91 = v167;
      swift_weakInit();
      v98 = swift_allocObject();
      v99 = v172;
      v98[2] = v166;
      v98[3] = v99;
      v98[4] = v40;
      v98[5] = v97;
      v100 = v173;
      v98[6] = v173;
      v101 = (v92 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      v76 = v100;
      v102 = *v101;
      *v101 = sub_100597B4C;
      v101[1] = v98;

      sub_10001F63C(v102);
    }

    else
    {
      v85 = type metadata accessor for Accessory();
      v86 = v164;
      (*(*(v85 - 8) + 56))(v164, 1, 1, v85);
      v87 = *((swift_isaMask & *v37) + 0x268);
      v88 = v37;
      v87(v86, v171);
      sub_10002B894(v86, &qword_100984340);
      v89 = (v88 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      v90 = *(v88 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      *v89 = 0;
      v89[1] = 0;
      sub_10001F63C(v90);
      v91 = v167;
    }

    v103 = v170;
    v104 = v165;
    (*(*v91 + 632))(v76, v165);
    (*((swift_isaMask & *v37) + 0x1C8))(v103);
    v105 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
    v106 = v105;

    v107 = v159;
    if (v105)
    {
      dispatch thunk of ShelfPresenter.subtitle(for:)();
      if (v108)
      {
        v109 = String._bridgeToObjectiveC()();
      }

      else
      {
        v109 = 0;
      }

      [v106 setText:v109];

      v91 = v167;
    }

    if (v107)
    {
      swift_beginAccess();
      if (*(v91[8] + 16))
      {
        sub_1003D7340(v76);
        if (v110)
        {
          v175 = v149;
          v176 = &off_1008BC4B0;
          v174[0] = v107;
          v107 = v107;

          sub_100438E58(v174);

          sub_10002B894(v174, &unk_10097E140);
        }
      }
    }

    else
    {
      v111 = v152;
      dispatch thunk of ShelfPresenter.background(for:)();
      [v37 setOverrideUserInterfaceStyle:sub_1001AAD64()];
      (*(v150 + 8))(v111, v151);
    }

    [v104 pageMarginInsets];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    if (v76 >= 1)
    {
      v119 = v76 - 1;
    }

    else
    {
      v119 = 0;
    }

    v120 = v112 + sub_10058B404(v76, v119, v76 < 1, v104);
    [v37 setLayoutMargins:{v120, v114, v116, v118}];
    v121 = (v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
    *v121 = v120;
    v121[1] = v114;
    v121[2] = v116;
    v121[3] = v118;
    [v37 setNeedsLayout];
    [v37 setNeedsLayout];

    return;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v57 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v123 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator);

    [v123 startAnimating];
    return;
  }

  v152 = v20;
  v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v122)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v124 == a3)
  {
    goto LABEL_48;
  }

  v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v125)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v132 == a3)
  {
    goto LABEL_48;
  }

  v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v133)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v134 == a3)
  {
LABEL_48:

LABEL_50:
    v126 = v169;
    swift_getObjectType();
    v127 = swift_conformsToProtocol2();
    if (v127 && v126)
    {
      v128 = v127;
      ObjectType = swift_getObjectType();
      v130 = v126;
      v131 = v152;
      dispatch thunk of ShelfPresenter.background(for:)();
      (*(v128 + 8))(v131, v171, ObjectType, v128, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v12 + 8))(v131, v11);
    }

    return;
  }

  v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v135)
  {
    goto LABEL_50;
  }

  v136 = type metadata accessor for InteractiveSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v137 == a3)
  {
  }

  else
  {
    v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v138 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        dispatch thunk of ShelfPresenter.background(for:)();
        if ((*(v12 + 88))(v17, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v17, v11);
          return;
        }

        (*(v12 + 96))(v17, v11);
        v144 = *v17;
        v145 = *(sub_10002849C(&qword_100972A40) + 48);
        v146 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v146 - 8) + 8))(v17 + v145, v146);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x80000001007FB9B0 != a3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
        {
          return;
        }

        if (__OFSUB__(dispatch thunk of ShelfPresenter.sectionCount.getter(), 1))
        {
          __break(1u);
          return;
        }

        dispatch thunk of ShelfPresenter.background(for:)();
        if ((*(v12 + 88))(v14, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v14, v11);
          return;
        }

        (*(v12 + 96))(v14, v11);
        v144 = *v14;
        v147 = *(sub_10002849C(&qword_100972A40) + 48);
        v148 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v148 - 8) + 8))(v14 + v147, v148);
      }

      [v169 setBackgroundColor:v144];

      return;
    }
  }

  v139 = v169;
  v140 = swift_dynamicCastClass();
  if (v140)
  {
    v141 = v140;
    swift_beginAccess();
    if (*(v7[8] + 16))
    {
      sub_1003D7340(v173);
      if (v142)
      {
        v175 = v136;
        v176 = &off_1008C29C0;
        v174[0] = v141;
        v143 = v139;

        sub_100438E58(v174);

        sub_10002B894(v174, &unk_10097E140);
      }
    }
  }
}

uint64_t sub_10058E7C8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Shelf.ContentType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v10 = sub_1005D8420();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      dispatch thunk of ShelfPresenter.contentType(for:)();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10002B894(v5, &unk_100992460);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10058E9EC(uint64_t a1, void *a2)
{
  v4 = sub_10002849C(&qword_10098CB20);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = type metadata accessor for ShelfBackground();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
  {
    return 0;
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  v19 = v66;
  dispatch thunk of ShelfPresenter.background(for:)();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_100599198(&qword_100981230, &type metadata accessor for ShelfBackground);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = static ShelfBackground.== infix(_:_:)();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = static ShelfBackground.== infix(_:_:)();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10002B894(v6, &qword_10098CB20);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_10002849C(&qword_100972A40);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_100005744(0, &qword_100970180);
  LOBYTE(v34) = static NSObject.== infix(_:_:)();

  if (v34)
  {
    v37 = type metadata accessor for ShelfBackgroundStyle();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = type metadata accessor for ShelfBackgroundStyle();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

double sub_10058F1CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = type metadata accessor for Shelf.PresentationHints();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = type metadata accessor for ComponentLayoutOptions();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = type metadata accessor for IndexPath();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_10002849C(qword_10097DB40);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = type metadata accessor for Shelf.ContentType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v27 = sub_1005D8420();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    IndexPath.section.getter();
    if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
    {
      v29 = IndexPath.section.getter();
      v30 = sub_100596D4C(v29);
    }

    else
    {
      v30 = 0;
    }

    IndexPath.section.getter();
    if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
    {
      IndexPath.section.getter();
      v90 = dispatch thunk of ShelfPresenter.shelf(for:)();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_100587504(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    dispatch thunk of ShelfPresenter.model(at:)();
    (*(v80 + 16))(v18, a1, v82);
    StatePath<A>.init(_:)();
    v97 = *(v4 + 24);

    sub_10002849C(&unk_100980500);
    sub_100056080();
    StateLens.init<A>(contentsOf:in:)();
    ComponentLayoutOptions.init()();
    v37 = sub_1005934F8(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      static ComponentLayoutOptions.separatorHidden.getter();
      v41 = v93;
      sub_10032B148(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
    v44 = type metadata accessor for ItemBackground();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10002B894(v43, &unk_1009804F0);
    if (v45 != 1)
    {
      v46 = v94;
      static ComponentLayoutOptions.hasBackground.getter();
      v47 = v93;
      sub_10032B148(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = UITraitCollection.isSizeClassCompact.getter();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      static ComponentLayoutOptions.isSingleVerticalColumn.getter();
      v54 = v93;
      sub_10032B148(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!IndexPath.section.getter())
    {
      v56 = v94;
      static ComponentLayoutOptions.isFirstSection.getter();
      v57 = v93;
      sub_10032B148(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      Shelf.presentationHints.getter();

      v60 = v77;
      static Shelf.PresentationHints.showSupplementaryText.getter();
      sub_100599198(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
      v61 = v79;
      v62 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        static ComponentLayoutOptions.showSupplementaryText.getter();
        v65 = v93;
        sub_10032B148(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_100007000(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_10058FB9C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IndexPath.section.getter();
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

void sub_10058FDE4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v241 = a6;
  v272 = *&a5;
  v271 = a4;
  v262 = a3;
  v276 = a2;
  v273 = *v6;
  v260 = type metadata accessor for ImpressionMetrics.ID();
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v228 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for ImpressionMetrics();
  v263 = *(v267 - 1);
  __chkstk_darwin(v267);
  v233 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v254 = &v221 - v11;
  __chkstk_darwin(v12);
  v251 = &v221 - v13;
  __chkstk_darwin(v14);
  v230 = &v221 - v15;
  __chkstk_darwin(v16);
  v231 = &v221 - v17;
  v236 = type metadata accessor for IndexSet();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for ShelfBackground();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Shelf.PresentationHints();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v221 - v22;
  v265 = type metadata accessor for ComponentLayoutOptions();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v25 = &v221 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v244 = &v221 - v27;
  __chkstk_darwin(v28);
  v266 = &v221 - v29;
  v30 = type metadata accessor for IndexPath();
  v256 = *(v30 - 8);
  __chkstk_darwin(v30);
  v240 = v31;
  v255 = &v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v32 - 8);
  v253 = sub_10002849C(&unk_10097DAF0);
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v261 = &v221 - v33;
  v270 = type metadata accessor for Shelf.ContentType();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v35 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v257 = &v221 - v37;
  __chkstk_darwin(v38);
  v40 = &v221 - v39;
  v41 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v41 - 8);
  v237 = &v221 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v243 = &v221 - v44;
  __chkstk_darwin(v45);
  v242 = &v221 - v46;
  __chkstk_darwin(v47);
  v229 = &v221 - v48;
  __chkstk_darwin(v49);
  v232 = &v221 - v50;
  __chkstk_darwin(v51);
  v53 = &v221 - v52;
  v54 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v54 - 8);
  v238 = &v221 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v239 = &v221 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v221 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v274 = v6;
  v275 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v226 = v30;
    v258 = a1;
    v70 = v273[10];
    v71 = v276;
    v268 = v273[12];
    if ((dispatch thunk of ShelfPresenter.doesModelExist(for:)() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v225 = swift_conformsToProtocol2();
    if (!v225)
    {
      __break(1u);
      return;
    }

    dispatch thunk of ShelfPresenter.model(at:)();
    v72 = *(v256 + 16);
    v223 = v256 + 16;
    v222 = v72;
    v72(v255, v71, v226);
    StatePath<A>.init(_:)();
    v282 = *(v274 + 24);

    sub_10002849C(&unk_100980500);
    sub_100056080();
    v73 = v276;
    WritableStateLens.init<A>(contentsOf:in:)();
    ComponentLayoutOptions.init()();
    v74 = sub_100592FC4(v73, v271);
    v75 = v244;
    if (v74)
    {
      static ComponentLayoutOptions.separatorHidden.getter();
      sub_10032B148(v75, v25);
      v76 = *(v264 + 8);
      v77 = v265;
      v76(v25, v265);
      v76(v75, v77);
    }

    dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
    v78 = type metadata accessor for ItemBackground();
    v79 = (*(*(v78 - 8) + 48))(v23, 1, v78);
    sub_10002B894(v23, &unk_1009804F0);
    if (v79 != 1)
    {
      static ComponentLayoutOptions.hasBackground.getter();
      sub_10032B148(v75, v25);
      v80 = *(v264 + 8);
      v81 = v265;
      v80(v25, v265);
      v80(v75, v81);
    }

    if (!IndexPath.section.getter())
    {
      static ComponentLayoutOptions.isFirstSection.getter();
      sub_10032B148(v75, v25);
      v82 = *(v264 + 8);
      v83 = v265;
      v82(v25, v265);
      v82(v75, v83);
    }

    IndexPath.section.getter();
    v84 = v257;
    dispatch thunk of ShelfPresenter.contentType(for:)();
    IndexPath.section.getter();
    v227 = v70;
    v85 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
    v86 = v269;
    v87 = v84;
    v88 = v270;
    (*(v269 + 16))(v35, v87, v270);
    v89 = (*(v86 + 88))(v35, v88);
    v90 = v272;
    if (v89 == enum case for Shelf.ContentType.smallLockup(_:) || v89 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v89 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v89 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v89 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v89 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v89 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v89 == enum case for Shelf.ContentType.editorialCard(_:) || v89 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v89 == enum case for Shelf.ContentType.brick(_:) || v89 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v89 == enum case for Shelf.ContentType.reviews(_:) || v89 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v89 == enum case for Shelf.ContentType.framedVideo(_:) || v89 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v89 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v89 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v89 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v89 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v89 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v89 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v89 == enum case for Shelf.ContentType.posterLockup(_:) || v89 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v89 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v89 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v269 + 8))(v35, v270);
              goto LABEL_43;
            }

LABEL_38:
            if (v85)
            {
              goto LABEL_39;
            }

LABEL_43:
            v106 = [v271 traitCollection];
            v107 = UITraitCollection.isSizeClassCompact.getter();

            if ((v107 & 1) == 0)
            {
              v224 = 0;
              v110 = v266;
LABEL_46:
              v114 = v258;
              ObjectType = swift_getObjectType();
              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              v116 = v245;
              Shelf.presentationHints.getter();

              (*(v225 + 80))(&v284, v261, COERCE_DOUBLE(*&v90), v110, v116, v271, ObjectType);
              (*(v246 + 8))(v116, v247);
              IndexPath.section.getter();
              v117 = v248;
              dispatch thunk of ShelfPresenter.background(for:)();
              v118 = sub_1001AAD64();
              (*(v249 + 8))(v117, v250);
              if ([v114 overrideUserInterfaceStyle] != v118)
              {
                [v114 setOverrideUserInterfaceStyle:v118];
              }

              sub_10002C0AC(&v284, &v282);
              *(&v280 + 1) = sub_100005744(0, &qword_100978E10);
              *&v279 = v114;
              v119 = v114;
              tryToFetch(artworkFor:into:on:asPartOf:)();
              sub_10002B894(&v282, &unk_10097DBE0);
              sub_100007000(&v279);
              swift_getObjectType();
              v120 = swift_conformsToProtocol2();
              if (v120 && v114)
              {
                v121 = v120;
                v122 = swift_getObjectType();
                v123 = *(v121 + 8);
                v124 = v119;
                v125 = v123(v122, v121);
                v114 = v258;
                v126 = v125;
                v127 = (v125 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                v128 = *(v125 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                *v127 = 0;
                v127[1] = 0;
                sub_10001F63C(v128);
                [*&v126[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              v129 = swift_conformsToProtocol2();
              v130 = v251;
              if (v129 && v114)
              {
                v131 = swift_allocObject();
                swift_weakInit();
                v132 = v255;
                v133 = v226;
                v222(v255, v276, v226);
                v134 = v256;
                v135 = (*(v256 + 80) + 40) & ~*(v256 + 80);
                v136 = (v240 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
                v137 = swift_allocObject();
                *(v137 + 2) = v227;
                v138 = v268;
                *(v137 + 3) = v273[11];
                *(v137 + 4) = v138;
                (*(v134 + 32))(&v137[v135], v132, v133);
                v114 = v258;
                *&v137[v136] = v131;
                v139 = &v119[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                v140 = *&v119[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                *v139 = sub_100597A6C;
                v139[1] = v137;
                v141 = v119;

                sub_10001F63C(v140);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                v142 = v119;
                inject<A, B>(_:from:)();
                v143 = v282;
                swift_getObjectType();
                v144 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
                v145 = v142;
                dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

                v114 = v258;
              }

              *&v277[0] = v119;
              *(&v277[0] + 1) = v225;
              v146 = v119;
              sub_10002849C(&qword_100980510);
              sub_10002849C(&qword_100980518);
              if (swift_dynamicCast())
              {
                sub_100005A38(&v279, &v282);
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                inject<A, B>(_:from:)();
                v147 = v279;
                sub_10002A400(&v282, v283);
                dispatch thunk of ManagedVideoViewProviding.registerVideos(with:)();

                sub_100007000(&v282);
              }

              else
              {
                v281 = 0;
                v280 = 0u;
                v279 = 0u;
                sub_10002B894(&v279, &unk_100980520);
              }

              v148 = v224;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                type metadata accessor for PlaybackCoordinator();
                v149 = v146;
                BaseObjectGraph.optional<A>(_:)();
                v150 = v282;
                if (v282)
                {
                  v151 = v149;
                  v152 = v150;
                  dispatch thunk of PlaybackCoordinator.register(playableView:)();

                  v149 = v152;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_10002C0AC(&v284, &v279);
                v153 = v146;
                sub_10002849C(&qword_100973D50);
                sub_10002849C(&unk_100980530);
                if (swift_dynamicCast())
                {
                  sub_100005A38(v277, &v282);
                  sub_10002A400(&v282, v283);
                  if (dispatch thunk of SearchAdOpportunityProviding.searchAdOpportunity.getter())
                  {
                    SearchAdOpportunity.searchAd.getter();
                  }

                  v114 = v258;
                  swift_getObjectType();
                  dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();

                  sub_100007000(&v282);
                }

                else
                {

                  v278 = 0;
                  memset(v277, 0, sizeof(v277));
                  sub_10002B894(v277, &unk_100992FE0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                swift_getObjectType();
                v154 = v146;
                dispatch thunk of AnyAvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)();
              }

              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              if (v148)
              {
                v155 = [v241 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v156 = swift_dynamicCastClass();
                if (v156)
                {
                  v157 = v156;
                  v158 = [v156 _orthogonalScrollingSections];
                  v159 = v234;
                  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

                  v114 = v258;
                  v160 = IndexPath.section.getter();
                  v161 = IndexSet.contains(_:)(v160);
                  (*(v235 + 8))(v159, v236);
                  if (v161)
                  {
                    [v146 frame];
                    v163 = v162;
                    v165 = v164;
                    v167 = v166;
                    v169 = v168;
                    v170 = v232;
                    Shelf.impressionMetrics.getter();
                    v171 = v263;
                    v172 = *(v263 + 48);
                    v173 = v267;
                    if (v172(v170, 1, v267) == 1)
                    {

                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_100007000(&v284);
                      sub_10002B894(v170, &qword_100973D30);
                      return;
                    }

                    v193 = v231;
                    v275 = *(v171 + 32);
                    v275(v231, v170, v173);
                    sub_10002C0AC(&v284, &v282);
                    sub_10002A400(&v282, v283);
                    v194 = v229;
                    dispatch thunk of ViewModel.impressionMetrics.getter();
                    if (v172(v194, 1, v173) == 1)
                    {

                      (*(v263 + 8))(v193, v173);
                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_100007000(&v284);
                      v182 = v194;
                      goto LABEL_92;
                    }

                    v271 = v165;
                    v272 = v163;
                    v275(v230, v194, v173);
                    [v157 _layoutFrameForSection:IndexPath.section.getter()];
                    v196 = v195;
                    v198 = v197;
                    v200 = v199;
                    v202 = v201;
                    [v157 _offsetForOrthogonalScrollingSection:IndexPath.section.getter()];
                    v204 = v274;
                    v205 = *(v274 + 112);
                    v206 = v266;
                    if (v205)
                    {
                      v207 = v203;

                      v208 = v231;
                      v209 = v196;
                      ImpressionsCalculator.addElement(_:at:)();

                      v210 = v263;
                      v211 = v198;
                      if (*(v204 + 112))
                      {

                        v212 = v228;
                        ImpressionMetrics.id.getter();
                        v279 = v207;
                        *&v280 = v200;
                        *(&v280 + 1) = v202;
                        LOBYTE(v281) = 0;
                        v205 = ImpressionsCalculator.childCalculator(for:viewBounds:)();

                        (*(v259 + 8))(v212, v260);
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v213 = v253;
                      v214 = v252;
                      v215 = v272;
                    }

                    else
                    {
                      v209 = v196;
                      v210 = v263;
                      v213 = v253;
                      v214 = v252;
                      v208 = v231;
                      v215 = v272;
                      v211 = v198;
                    }

                    v216 = *&v271;
                    v285.origin.x = v209;
                    v285.origin.y = v211;
                    v285.size.width = v200;
                    v285.size.height = v202;
                    v217 = -CGRectGetMinY(v285);
                    v286.origin.x = v215;
                    v286.origin.y = v216;
                    v286.size.width = v167;
                    v286.size.height = v169;
                    CGRectOffset(v286, 0.0, v217);
                    v218 = v230;
                    if (v205)
                    {

                      ImpressionsCalculator.addElement(_:at:)();
                    }

                    sub_100597414(&v282, v205);

                    v219 = *(v210 + 8);
                    v220 = v267;
                    v219(v218, v267);
                    v219(v208, v220);
                    (*(v269 + 8))(v257, v270);
                    (*(v264 + 8))(v206, v265);
                    (*(v214 + 8))(v261, v213);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                v174 = v146;
                [v174 frame];
                sub_10058AD70();
                swift_getObjectType();
                dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
              }

              v175 = v242;
              Shelf.impressionMetrics.getter();
              v176 = v263;
              v177 = *(v263 + 48);
              v178 = v267;
              if (v177(v175, 1, v267) == 1)
              {
                v179 = v175;
                v180 = v266;
                sub_10002B894(v179, &qword_100973D30);
              }

              else
              {
                (*(v176 + 32))(v130, v175, v178);
                if (*(v274 + 112))
                {

                  [v146 frame];
                  ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
                }

                v180 = v266;
                (*(v176 + 8))(v130, v178);
              }

              sub_10002C0AC(&v284, &v282);
              sub_10002A400(&v282, v283);
              v181 = v243;
              dispatch thunk of ViewModel.impressionMetrics.getter();
              if (v177(v181, 1, v178) == 1)
              {

                (*(v269 + 8))(v257, v270);
                (*(v264 + 8))(v180, v265);
                (*(v252 + 8))(v261, v253);
                sub_100007000(&v284);
                v182 = v181;
LABEL_92:
                sub_10002B894(v182, &qword_100973D30);
LABEL_103:
                sub_100007000(&v282);
                return;
              }

              v183 = v178;
              (*(v176 + 32))(v254, v181, v178);
              v184 = v237;
              Shelf.impressionMetrics.getter();
              if (v177(v184, 1, v178) == 1)
              {
                sub_10002B894(v184, &qword_100973D30);
                v185 = 1;
                v186 = v260;
                v187 = v259;
                v188 = v239;
              }

              else
              {
                v188 = v239;
                ImpressionMetrics.id.getter();
                (*(v176 + 8))(v184, v183);
                v185 = 0;
                v186 = v260;
                v187 = v259;
              }

              v189 = v238;
              (*(v187 + 56))(v188, v185, 1, v186);
              if (*(v274 + 112))
              {
                sub_100031660(v188, v189, &qword_100990A90);
                v190 = (*(v187 + 48))(v189, 1, v186);

                if (v190 == 1)
                {
                  sub_10002B894(v189, &qword_100990A90);
                }

                else
                {
                  ImpressionMetrics.ID.element.getter();
                  (*(v187 + 8))(v189, v186);
                }

                v191 = v233;
                ImpressionMetrics.withParentId(_:)();

                [v146 frame];
                ImpressionsCalculator.addElement(_:at:)();

                (*(v176 + 8))(v191, v267);
              }

              [v146 frame];
              v192 = *(v274 + 112);

              sub_100597414(&v282, v192);

              sub_10002B894(v188, &qword_100990A90);
              (*(v176 + 8))(v254, v267);
              (*(v269 + 8))(v257, v270);
              (*(v264 + 8))(v180, v265);
              (*(v252 + 8))(v261, v253);
LABEL_102:
              sub_100007000(&v284);
              goto LABEL_103;
            }

            static ComponentLayoutOptions.isSingleVerticalColumn.getter();
            v224 = 0;
LABEL_45:
            v108 = v75;
            v109 = v75;
            v110 = v266;
            sub_10032B148(v108, v25);
            v111 = *(v264 + 8);
            v112 = v25;
            v113 = v265;
            v111(v112, v265);
            v111(v109, v113);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    v224 = 1;
    goto LABEL_45;
  }

  v268 = v62;
  v63 = a1;
  IndexPath.section.getter();
  v264 = v273[12];
  v64 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v266 = v63;
  [v63 frame];
  v265 = sub_10058AD70();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v65 = v284;
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v66 = v284;
  Shelf.impressionMetrics.getter();
  v67 = v263;
  v68 = v267;
  if ((*(v263 + 48))(v53, 1, v267) == 1)
  {
    sub_10002B894(v53, &qword_100973D30);
    v69 = 1;
  }

  else
  {
    ImpressionMetrics.id.getter();
    (*(v67 + 8))(v53, v68);
    v69 = 0;
  }

  (*(v259 + 56))(v61, v69, 1, v260);
  v91 = v65;
  v267 = v91;
  v92 = v274;
  v93 = sub_10058B038(v61, v65, v66, 0);

  sub_10002B894(v61, &qword_100990A90);
  type metadata accessor for ShelfComponentContainerDelegate();
  v273 = v66;
  v94 = v275;
  swift_unknownObjectRetain();
  v95 = IndexPath.section.getter();
  Shelf.contentType.getter();
  v96 = Shelf.ContentType.doesModelContainment.getter();
  (*(v269 + 8))(v40, v270);
  v97 = *(v92 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v263 = v93;
  v99 = sub_1005A2660(v94, v95, v96 & 1, v97, v93, &protocol witness table for CompoundScrollObserver, v265);

  swift_unknownObjectRetain();

  v100 = v266;
  v101 = swift_getObjectType();
  v102 = IndexPath.section.getter();
  WitnessTable = swift_getWitnessTable();
  v104 = v268;
  v105 = *(v268 + 32);

  v105(v64, v102, v262, *&v272, v99, WitnessTable, v271, v101, v104);

  swift_unknownObjectRelease();
}

void sub_100592594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v13 - 8);
  v14 = sub_10002849C(&unk_10097DAF0);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      dispatch thunk of ShelfPresenter.model(at:)();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      StatePath<A>.init(_:)();
      v40 = v5[3];

      sub_10002849C(&unk_100980500);
      sub_100056080();
      WritableStateLens.init<A>(contentsOf:in:)();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        dispatch thunk of ShelfPresenter.didSelectItem(at:)();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_100007000(v41);
            return;
          }

LABEL_6:
          sub_10002849C(&qword_10096FCE8);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007B10D0;
          v33((v28 + v27), a1, v38);
          v29 = Array._bridgeToObjectiveC()().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  dispatch thunk of ShelfPresenter.didSelectItem(at:)();
  v39 = IndexPath._bridgeToObjectiveC()().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_100592A04(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (UITraitCollection.isSizeClassRegular.getter())
    {
      v8 = UITraitCollection.prefersAccessibilityLayouts.getter() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_100592DF8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_1005D8F34(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100592FC4(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  IndexPath.section.getter();
  v15 = *(v4 + 80);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v39 = v15;
  v40 = v14;
  v16 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = IndexPath.section.getter();
  if (v19)
  {
    v24 = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
    result = IndexPath.item.getter();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_100596D4C(v23);
  v36[1] = v20;
  v27 = v26;
  IndexPath.section.getter();
  v28 = v37;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v36[0] = a1;
  IndexPath.section.getter();
  v29 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v30 = sub_100592DF8(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = IndexPath.item.getter();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_1005934F8(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  v6 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v7 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v8 = sub_100592DF8(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = IndexPath.item.getter();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1005936C8(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  IndexSet._bridgeToObjectiveC()(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

id sub_100593724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = type metadata accessor for Shelf.PresentationHints();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  dispatch thunk of ShelfPresenter.shelf(for:)();
  v16 = Shelf.items.getter();

  v17 = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
  dispatch thunk of ShelfPresenter.shelf(for:)();
  Shelf.presentationHints.getter();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_10058A454(v33, v34, v19, v18);
  aBlock[4] = sub_100597B78;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006BBC70;
  aBlock[3] = &unk_1008C9600;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_100593A40(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate();
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = Shelf.ContentType.doesModelContainment.getter();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_1005A2660(v13, a1, v14 & 1, v16, v15, v17, 0);

  swift_unknownObjectRetain();

  v20 = dispatch thunk of ShelfPresenter.shelf(for:)();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B0B70;
  *(v32 + 32) = v30;
  sub_100005744(0, &qword_10098EFE0);
  v33 = v30;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_100593D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = type metadata accessor for Shelf.ContentType();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_10098CB30);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_10002849C(&qword_10096FE10);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = type metadata accessor for IndexPath();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_100596D4C(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_100592DF8(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_1007B1890;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_10002849C(&qword_100980550);
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              IndexPath.init(arrayLiteral:)();
              v54 = sub_10058F1CC(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_100034394(0, *(v49 + 2) + 1, 1, v49);
              }

              v59 = *(v49 + 2);
              v58 = *(v49 + 3);
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_100034394(v58 > 1, v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              *(v49 + 2) = v59 + 1;
              sub_1000476A0(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &qword_10096FE10);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = *(v49 + 2);
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < *(v49 + 2))
          {
            sub_100031660(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &qword_10096FE10);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_1000476A0(v34, v20, &qword_10098CB30);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = UITraitCollection.isSizeClassRegular.getter();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_100595204(v67, v68);
          sub_100005744(0, &qword_100982860);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_10058B978(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_100005744(0, &qword_10098EFE0);
            v41 = Array._bridgeToObjectiveC()().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_10058BFB8(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_100005744(0, &qword_10098EFE0);
          v95 = Array._bridgeToObjectiveC()().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

double *sub_100594BFC()
{
  v0 = type metadata accessor for ShelfBackground();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ShelfPresenter.background(for:)();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v5 = *(sub_10002849C(&qword_100978420) + 48);
    sub_10002849C(&qword_100973210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B0B70;
    v7 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 backgroundDecorationItemWithElementKind:v8];

    *(v6 + 32) = v9;
    v10 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v10 - 8) + 8))(&v3[v5], v10);
  }

  else if (v4 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v11 = sub_10002849C(&qword_100978418);
    v12 = v11[12];
    v13 = v11[16];
    v14 = v11[20];
    sub_10002849C(&qword_100973210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B0B70;
    v15 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    *(v6 + 32) = v17;
    v18 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v18 - 8) + 8))(&v3[v14], v18);
    v19 = type metadata accessor for ShelfBackgroundGradientLocation();
    v20 = *(*(v19 - 8) + 8);
    v20(&v3[v13], v19);
    v20(&v3[v12], v19);
  }

  else if (v4 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v21 = *(sub_10002849C(&qword_100978410) + 48);
    sub_10002849C(&qword_100973210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B0B70;
    v22 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 backgroundDecorationItemWithElementKind:v23];

    *(v6 + 32) = v24;
    v25 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v25 - 8) + 8))(&v3[v21], v25);
    v26 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
    (*(*(v26 - 8) + 8))(v3, v26);
  }

  else if (v4 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = enum case for ShelfBackground.interactive(_:);
    v28 = v4;
    sub_10002849C(&qword_100973210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B0B70;
    v29 = objc_opt_self();
    if (v28 == v27)
    {
      type metadata accessor for InteractiveSectionBackgroundView();
      static UICollectionReusableView.elementKind.getter();
      v30 = String._bridgeToObjectiveC()();

      v31 = [v29 backgroundDecorationItemWithElementKind:v30];

      *(v6 + 32) = v31;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      static UICollectionReusableView.elementKind.getter();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v29 backgroundDecorationItemWithElementKind:v32];

      *(v6 + 32) = v33;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v6;
}

double *sub_100595204(double a1, double a2)
{
  v4 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for ItemBackground();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &unk_1009804F0);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v14 = (*(v8 + 88))(v10, v7);
    if (v14 == enum case for ItemBackground.ad(_:) || v14 == enum case for ItemBackground.insetAd(_:) || v14 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v17 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v18 = objc_opt_self();
      v19 = [v18 absoluteDimension:a1 + 16.0];
      v20 = [v18 absoluteDimension:a2];
      v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = v21;
      sub_10051A5AC();
      v23 = v17;
      v24 = String._bridgeToObjectiveC()();

      v25 = [objc_opt_self() supplementaryItemWithLayoutSize:v22 elementKind:v24 containerAnchor:v23];

      [v25 setZIndex:-1];
      sub_10002849C(&qword_100973210);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1007B0B70;
      *(v26 + 32) = v25;

      (*(v8 + 8))(v13, v7);
      return v26;
    }

    v28 = *(v8 + 8);
    v28(v13, v7);
    v28(v10, v7);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100595610(uint64_t a1, uint64_t a2)
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
  sub_100599198(&qword_100970C80, &type metadata accessor for IndexSet);
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
    sub_100599198(&qword_100970C88, &type metadata accessor for IndexSet.Index);
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

uint64_t sub_100595BA8(uint64_t a1, uint64_t a2)
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
  sub_100599198(&qword_100970C80, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_100599198(&qword_100970C88, &type metadata accessor for IndexSet.Index);
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

void sub_100595EEC(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10002849C(&qword_100985F30);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = type metadata accessor for IndexPath();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100005744(0, &qword_100978E10);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = IndexPath.section.getter();
        AnyHashable.init<A>(_:)();
        v23 = v34;
        StatePath.init(component:)();
        TransientStateStore.removeState(at:recursively:)();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

BOOL sub_100596280()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v8 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v7 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v8 = type metadata accessor for InformationRibbonCollectionViewCell();
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v8 = 0;
  }

  return v8 != 0;
}

uint64_t sub_100596434(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    if (!sub_100596280() && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_100596664(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1005966CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    dispatch thunk of ShelfPresenter.didSelectSeeAll(for:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100596774(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100980550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B1890;
  *(v6 + 32) = IndexPath.section.getter();
  *(v6 + 40) = a1;
  IndexPath.init(arrayLiteral:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    dispatch thunk of ShelfPresenter.didSelectNestedItem(at:)();
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1005968F0()
{
  sub_100589554();

  return swift_deallocClassInstance();
}

uint64_t sub_10059693C(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v40 = &v33[-v10];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100005744(0, &qword_1009729E0);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_10072411C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v38 = v4 + 32;
  v39 = v4 + 16;
  v37 = v4 + 88;
  v36 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v34 = enum case for Shelf.ContentType.informationRibbon(_:);
  v41 = a1;
  v42 = (v4 + 8);

  v24 = 0;
  v35 = v4;
  while (v21)
  {
LABEL_10:
    v26 = v40;
    v27 = *(v4 + 16);
    v27(v40, *(v41 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v3);
    (*(v4 + 32))(v17, v26, v3);
    v28 = v43;
    v27(v43, v17, v3);
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == v36)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v29 == v34)
    {
      type metadata accessor for InformationRibbonCollectionViewCell();
    }

    else
    {
      (*v42)(v43, v3);
      if (!sub_1005D8420())
      {
        goto LABEL_4;
      }
    }

    if (v44)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      Shelf.ContentType.string.getter();
      v31 = v17;
      v32 = String._bridgeToObjectiveC()();

      [v44 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v32];

      v17 = v31;
      v4 = v35;
    }

LABEL_4:
    v21 &= v21 - 1;
    result = (*v42)(v17, v3);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100596D4C(uint64_t a1)
{
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1 || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
  {
    return 0;
  }

  v2 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  if (sub_100596280())
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void sub_100596E08()
{
  TransientStateStore.removeAllState()();
  if (*(v0 + 112))
  {

    ImpressionsCalculator.removeAllElements()();
  }
}

uint64_t sub_100596E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A20);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100031660(a1, v9, &unk_100972A20);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &unk_100972A20);
    if (v2[14])
    {

      ImpressionsCalculator.removeAllElements()();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10002849C(&unk_100980500);
    v21[0] = 0;
    sub_100056080();
    v16 = v22;
    StateStore.performTransaction<A>(_:)();

    (*(v11 + 8))(v15, v10);
  }

  sub_10058A878();
  sub_100031660(v24, v6, &unk_100972A20);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10002B894(v6, &unk_100972A20);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10002849C(&unk_100980500);
  sub_100056080();
  StateStore.performTransaction<A>(_:)();

  return (*(v11 + 8))(v19, v10);
}

double sub_1005972B4(void *a1)
{
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticDimension();
  sub_1000056A8(v2, qword_1009D2460);
  v3 = [a1 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v8 = v7;

  return v8;
}

void sub_1005973D0(void *a1)
{
  [a1 reloadData];

  sub_10058AC94(a1);
}

uint64_t sub_100597414(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v19 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10002C0AC(v21, v53);
          sub_10002A400(v53, v53[3]);
          v23 = v48;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10002B894(v23, &qword_100973D30);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10002A400(v44, v44[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10002B894(v10, &qword_100973D30);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              ImpressionMetrics.id.getter();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = type metadata accessor for ImpressionMetrics.ID();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100031660(v27, v40, &qword_100990A90);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10002B894(v31, &qword_100990A90);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10002B894(v32, &qword_100990A90);
              v35(v34, v37);
            }

            else
            {
              sub_10002B894(v27, &qword_100990A90);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10002B894(v51, &qword_100973D60);
  }
}

uint64_t sub_100597A6C(uint64_t a1)
{
  type metadata accessor for IndexPath();

  return sub_100596774(a1);
}

void sub_100597BE4()
{
  v1 = *(type metadata accessor for IndexSet() - 8);
  v2 = *(v0 + 16);
  IndexSet._bridgeToObjectiveC()(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

uint64_t sub_100597C78(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v19 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10002C0AC(v21, v53);
          sub_10002A400(v53, v53[3]);
          v23 = v48;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10002B894(v23, &qword_100973D30);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10002A400(v44, v44[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10002B894(v10, &qword_100973D30);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              ImpressionMetrics.id.getter();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = type metadata accessor for ImpressionMetrics.ID();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100031660(v27, v40, &qword_100990A90);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10002B894(v31, &qword_100990A90);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10002B894(v32, &qword_100990A90);
              v35(v34, v37);
            }

            else
            {
              sub_10002B894(v27, &qword_100990A90);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10002B894(v51, &qword_100973D60);
  }
}

void sub_10059826C(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v102 = *v2;
  v6 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v6 - 8);
  v90 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v86 - v9;
  v10 = type metadata accessor for Shelf.ContentType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v96 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = v86 - v14;
  v15 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v15 - 8);
  v91 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = v86 - v18;
  __chkstk_darwin(v19);
  v95 = v86 - v20;
  v21 = type metadata accessor for ImpressionMetrics();
  v99 = *(v21 - 8);
  v100 = v21;
  __chkstk_darwin(v21);
  v89 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = v86 - v24;
  __chkstk_darwin(v25);
  v94 = v86 - v26;
  if (IndexPath.count.getter() >= 2)
  {
    v88 = v11;
    v86[3] = v2[2];
    v27 = *(v102 + 96);
    v86[2] = *(v102 + 80);
    v86[1] = v27;
    v28 = dispatch thunk of ShelfPresenter.doesModelExist(for:)();
    v29 = sub_100005744(0, &qword_100978E10);
    v107 = v29;
    v106[0] = a1;
    v30 = a1;
    v87 = v28;
    tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
    sub_100007000(v106);
    swift_getObjectType();
    v31 = swift_conformsToProtocol2();
    v101 = a2;
    if (v31 && v30)
    {
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      v32 = v30;
      v86[0] = v29;
      v33 = v32;
      inject<A, B>(_:from:)();
      v34 = v106[0];
      swift_getObjectType();
      v35 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
      v36 = v33;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
    }

    v105 = v30;
    v37 = v30;
    sub_10002849C(&qword_100980518);
    if (swift_dynamicCast())
    {
      sub_100005A38(v103, v106);
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v38 = *&v103[0];
      sub_10002A400(v106, v107);
      dispatch thunk of ManagedVideoViewProviding.unregisterVideos(with:)();

      sub_100007000(v106);
    }

    else
    {
      v104 = 0;
      memset(v103, 0, sizeof(v103));
      sub_10002B894(v103, &unk_100980520);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      type metadata accessor for PlaybackCoordinator();
      v39 = v37;
      BaseObjectGraph.optional<A>(_:)();
      v40 = v106[0];
      if (v106[0])
      {
        v41 = v39;
        v42 = v40;
        dispatch thunk of PlaybackCoordinator.unregister(playableView:)();

        v39 = v42;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      swift_getObjectType();
      v43 = v37;
      dispatch thunk of AnyAvatarShowcaseDisplaying.unapply()();
    }

    swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    v45 = v88;
    if (v44 && v30)
    {
      v46 = v44;
      ObjectType = swift_getObjectType();
      v48 = *(v46 + 8);
      v49 = v37;
      v48(ObjectType, v46);
    }

    if (v87)
    {
      swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (v50 && v30)
      {
        v51 = v50;
        v52 = swift_getObjectType();
        v53 = *(v51 + 40);
        v54 = v37;
        v53(v52, v51);
      }

      IndexPath.section.getter();
      v55 = sub_100596280();
      IndexPath.section.getter();
      if (v55)
      {
        dispatch thunk of ShelfPresenter.shelf(for:)();
        v56 = v95;
        Shelf.impressionMetrics.getter();
        v58 = v99;
        v57 = v100;
        if ((*(v99 + 48))(v56, 1, v100) == 1)
        {

          sub_10002B894(v56, &qword_100973D30);
        }

        else
        {
          v70 = v94;
          (*(v58 + 32))(v94, v56, v57);
          if (v3[14])
          {

            ImpressionsCalculator.removeElement(_:)();
          }

          (*(v58 + 8))(v70, v57);
        }

        return;
      }

      v59 = v98;
      dispatch thunk of ShelfPresenter.contentType(for:)();
      IndexPath.section.getter();
      v60 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
      v61 = v96;
      (*(v45 + 16))(v96, v59, v10);
      v62 = (*(v45 + 88))(v61, v10);
      v63 = v97;
      if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.editorialCard(_:) || v62 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.brick(_:) || v62 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.reviews(_:) || v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.framedVideo(_:) || v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v62 == enum case for Shelf.ContentType.posterLockup(_:) || v62 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v60)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v85 = v97;
        (*(v45 + 8))(v61, v10);
        v63 = v85;
      }

      v64 = v63;
      v65 = dispatch thunk of ShelfPresenter.sectionCount.getter();
      if (IndexPath.section.getter() < v65)
      {
        v66 = IndexPath.item.getter();
        IndexPath.section.getter();
        if (v66 < dispatch thunk of ShelfPresenter.numberOfRows(for:)())
        {
          dispatch thunk of ShelfPresenter.model(at:)();
          sub_10002A400(v106, v107);
          dispatch thunk of ViewModel.impressionMetrics.getter();
          v67 = v64;
          v68 = v99;
          v69 = v100;
          v101 = *(v99 + 48);
          if (v101(v67, 1, v100) == 1)
          {
            (*(v45 + 8))(v59, v10);
            sub_10002B894(v67, &qword_100973D30);
          }

          else
          {
            (*(v68 + 32))(v92, v67, v69);
            IndexPath.section.getter();
            dispatch thunk of ShelfPresenter.shelf(for:)();
            v71 = v91;
            Shelf.impressionMetrics.getter();
            v72 = v3;
            if (v101(v71, 1, v69) == 1)
            {
              sub_10002B894(v71, &qword_100973D30);
              v73 = 1;
              v74 = v93;
            }

            else
            {
              v75 = v93;
              ImpressionMetrics.id.getter();
              v74 = v75;
              (*(v68 + 8))(v71, v69);
              v73 = 0;
            }

            v76 = type metadata accessor for ImpressionMetrics.ID();
            v77 = *(v76 - 8);
            (*(v77 + 56))(v74, v73, 1, v76);
            if (v72[14])
            {
              v78 = v90;
              sub_100031660(v74, v90, &qword_100990A90);
              v79 = (*(v77 + 48))(v78, 1, v76);

              if (v79 == 1)
              {
                sub_10002B894(v78, &qword_100990A90);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v77 + 8))(v78, v76);
              }

              v84 = v89;
              v83 = v92;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();

              v82 = v99;
              v81 = v100;
              (*(v99 + 8))(v84, v100);
              v80 = v72[14];
            }

            else
            {
              v80 = 0;
              v82 = v99;
              v81 = v100;
              v83 = v92;
            }

            sub_100597C78(v106, v80);

            sub_10002B894(v93, &qword_100990A90);
            (*(v82 + 8))(v83, v81);
            (*(v45 + 8))(v98, v10);
          }

          sub_100007000(v106);
          return;
        }
      }

LABEL_56:
      (*(v45 + 8))(v59, v10);
    }
  }
}

uint64_t sub_100599198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005991E8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();

  v7 = sub_100553DF8(0x6D69542074696157, 0xEF29636573282065, sub_1005999EC, a1, sub_100599458, 0);

  *(v6 + 32) = v7;
  swift_allocObject();

  v8 = sub_100553DF8(0xD00000000000001ELL, 0x800000010081AAF0, sub_100599A1C, a1, sub_100599504, 0);

  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v10 = swift_allocObject();
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v6;
  *(v9 + 32) = v10;
  return v9;
}

uint64_t sub_100599470(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  v3 = inject<A, B>(_:from:)();
  a2(v3);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

unsigned __int8 *sub_10059951C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10002849C(&qword_1009839C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v40[-v12];
  type metadata accessor for LocalPreferences();
  result = a4();
  if (!a3 || ((v15 = HIBYTE(a3) & 0xF, v16 = a2 & 0xFFFFFFFFFFFFLL, (a3 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(a3) & 0xF) : (v17 = a2 & 0xFFFFFFFFFFFFLL), !v17))
  {
    static LocalPreferences.AppStoreKit.getter();
    v43 = v7;
    v44 = sub_100599A4C();
    v23 = sub_1000056E0(&v41);
    (*(v8 + 16))(v23, v13, v7);
    LocalPreferences.removeValue(forKey:)();

    (*(v8 + 8))(v13, v7);
    return sub_100007000(&v41);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    v19 = sub_10070EC94(a2, a3, 10);
    v39 = v38;

    if (v39)
    {
      return (*(v8 + 8))(v13, v7);
    }

    goto LABEL_65;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              v29 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v40[0] = v15;
      if (v15)
      {
        return (*(v8 + 8))(v13, v7);
      }

LABEL_65:
      static LocalPreferences.AppStoreKit.getter();
      (*(v8 + 16))(v10, v13, v7);
      v41 = v19;
      LOBYTE(v42) = 0;
      Preferences.subscript.setter();

      return (*(v8 + 8))(v13, v7);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v41 = a2;
  v42 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v35 = &v41;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v24 = &v41 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v30 = &v41 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}