void sub_10033E09C()
{
  sub_10055069C();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
  if (v1)
  {
    v2 = v1;
    sub_10055069C();
  }
}

uint64_t sub_10033E118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v4 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v4 - 8);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v7 - 8);
  v75 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Artwork.Variant();
  v76 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v11 - 8);
  v70 = v57 - v12;
  v78 = type metadata accessor for Artwork.Crop();
  v73 = *(v78 - 8);
  __chkstk_darwin(v78);
  v71 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = v57 - v15;
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v67 = *(v16 - 8);
  __chkstk_darwin(v16);
  v65 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TodayCardArtworkLayout();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v63 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v57 - v24;
  v26 = type metadata accessor for PageGrid();
  v68 = *(v26 - 8);
  v69 = v26;
  __chkstk_darwin(v26);
  v77 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCard();
  sub_100343708(&qword_100977390, &type metadata accessor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v81)
  {
    v60 = v9;
    v61 = v6;
    v29 = TodayCard.media.getter();

    type metadata accessor for TodayCardMediaList();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v58 = v16;
      v62 = v29;
      v32 = TodayCardMediaList.lockups.getter();
      v59 = a2;
      sub_10036D830(v32);

      type metadata accessor for TodayCardGridTracker();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v33 = v81;
      LODWORD(v79) = sub_1006E2600();
      v81 = v31;
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v34 = v80;
      v35 = TodayCardMediaWithArtwork.prefetchableArtwork(for:)();

      if (v35)
      {
        v57[2] = v33;
        if (TodayCardMediaList.artworkLayoutsWithMetrics.getter())
        {
          v57[1] = v35;
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v57[0] = v81;
          v36 = v79;
          sub_100699534(v79);
          v37 = v63;
          v38 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v39 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v36 != 6)
          {
            v39 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v36 != 4)
          {
            v38 = v39;
          }

          (*(v63 + 104))(v22, *v38, v20);
          (*(v37 + 32))(v25, v22, v20);
          v40 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

          (*(v37 + 8))(v25, v20);
          TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
          if (v41)
          {
            Artwork.size.getter();
          }

          v42 = v78;
          v43 = v72;
          v44 = v73;
          v45 = v70;
          TodayCardArtworkSizedLayoutMetrics.layout(for:)();
          TodayCardArtworkLayout.collapsedLayoutInsets.getter();
          CGSize.subtracting(insets:)();
          CGSize.scaled(_:)();
          v46 = v67;
          v47 = v65;
          v48 = v58;
          (*(v67 + 104))(v65, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v58);
          CGSize.rounded(_:)();
          (*(v46 + 8))(v47, v48);
          (*(v64 + 8))(v19, v66);
          TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
          v49 = *(v44 + 48);
          v50 = v49(v45, 1, v42);
          v79 = v40;
          if (v50 == 1)
          {
            Artwork.crop.getter();
            v51 = v49(v45, 1, v42);
            v52 = v42;
            if (v51 != 1)
            {
              sub_10002B894(v45, &qword_100979D60);
            }
          }

          else
          {
            (*(v44 + 32))(v43, v45, v42);
            v52 = v42;
          }

          v53 = v74;
          dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
          Artwork.template.getter();
          v54 = v57[0];
          [v57[0] displayScale];
          (*(v44 + 16))(v71, v43, v52);
          Artwork.Variant.format.getter();
          Artwork.Variant.quality.getter();
          type metadata accessor for ArtworkLoaderConfig();
          swift_allocObject();
          v55 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

          (*(v76 + 8))(v53, v60);
          (*(v44 + 8))(v43, v78);
          (*(v68 + 8))(v77, v69);
          sub_10002849C(&qword_100973210);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1007B0B70;
          *(v56 + 32) = v55;

          ArtworkLoader.prefetchArtwork(using:)(v56);
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

  return result;
}

void sub_10033EBC4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  sub_10070CB5C(a1, a3);
}

void sub_10033EC40()
{
  v0 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_100988CE0];
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
      sub_1004E3360(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

char *sub_10033EFA0()
{
  v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer]) != 0)
  {
    sub_10002849C(&qword_100973210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B0B70;
    v4 = v2;
    *(inited + 32) = [v0 contentView];
    v5 = [v4 subviews];
    sub_100005744(0, &qword_100972EB0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003946F8(v6);
    v7 = sub_1002A5EF0(inited);
  }

  else
  {
    sub_10002849C(&qword_100973210);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1007B0B70;
    *(v8 + 32) = [v0 contentView];
    v9 = [*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer] subviews];
    sub_100005744(0, &qword_100972EB0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003946F8(v10);
    v7 = sub_1002A5EF0(v8);
  }

  return v7;
}

void sub_10033F248()
{

  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle, &qword_1009752C8);
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
}

uint64_t type metadata accessor for ListTodayCardCollectionViewCell()
{
  result = qword_100980B68;
  if (!qword_100980B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033F488()
{
  sub_10033F554();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033F554()
{
  if (!qword_100980B78)
  {
    type metadata accessor for TodayCard.Style();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100980B78);
    }
  }
}

void sub_10033F5AC(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_1006666C8(Strong);
}

uint64_t (*sub_10033F654(uint64_t **a1))()
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
  v2[4] = sub_1003359F8(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10033F6C8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100343708(&qword_100980BD0, type metadata accessor for ListTodayCardCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10033F73C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100343708(&qword_100980BD0, type metadata accessor for ListTodayCardCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10033F7C8(uint64_t *a1))()
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
  sub_100343708(&qword_100980BD0, type metadata accessor for ListTodayCardCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

char *sub_10033F888()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView;
  v4 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v1[v3] = sub_1001DCC8C(&off_1008AF6C0);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HeaderView();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  v7 = v5;
  [v7 addSubview:v6];
  [v7 addSubview:*&v7[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView]];
  [v7 setClipsToBounds:1];

  return v7;
}

void sub_10033FA68()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HeaderView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  [v1 bounds];
  [v2 setFrame:?];
  sub_10033FCCC();
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v5 = *&v1[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView];
  v6 = 0.174532925;
  if (v4)
  {
    v6 = -0.174532925;
  }

  v7 = *(v5 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle);
  *(v5 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = v6;
  if (v6 != v7)
  {
    sub_1001DD518();
  }
}

id sub_10033FB9C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView);

  sub_1001DC428(a1, a2);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v9[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v10;
  v12 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  v13 = *&v9[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView];

  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setBackgroundEffects:isa];

  [*&v9[v12] setOverrideUserInterfaceStyle:*&v9[v11]];

  return [v9 setHidden:(a4 & 1) == 0];
}

void sub_10033FCCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  [v2 frame];
  v3 = CGRectGetHeight(v9) * 0.5 * 0.176326981;
  [v2 frame];
  v4 = ceil(v3 + CGRectGetHeight(v10));
  v5 = *&v0[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView];
  [v2 frame];
  MinX = CGRectGetMinX(v11);
  [v2 frame];
  v7 = CGRectGetHeight(v12) + -145.0;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  [v1 bounds];
  [v5 setFrame:{MinX, v8, CGRectGetWidth(v13), v4}];
  *&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY] = v3 / v4;
  sub_1001DD518();
  *&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY] = (v3 + 145.0) / v4;
  sub_1001DD518();
}

id sub_10033FE40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100340000(uint64_t a1, void *a2, double a3)
{
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1004EDF34(v8, a2);
  sub_10002B894(v8, &qword_10097DBD0);
  if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
  {
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    sub_1000056A8(v11, qword_1009D24C0);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = a2;
    v13 = a2;
    v14 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    a3 = v15;
  }

  return a3 + 20.0;
}

id sub_100340218()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  v5 = v1[v2];
  *(v4 + qword_10098B7C0) = v5;
  if (v5 == 7)
  {
    v6 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = 7;
    v8 = &qword_10098B7C0;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory;
    *(*(v4 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v9 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v9 + qword_10098B7C0) = v5;
    *(*(v9 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v9 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v6 = *(v9 + qword_10098B7E0);
    v7 = v5;
  }

  *(v6 + *v8) = v7;
LABEL_9:
  v10 = *(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  v10[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = v5;
  v11 = v10;
  sub_10070D46C();

  return [v1 setNeedsLayout];
}

uint64_t sub_1003403C0(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v189 = a5;
  v222 = a4;
  v223 = a3;
  v225 = a2;
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v182 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v184 = &v181 - v9;
  v10 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v10 - 8);
  v187 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = &v181 - v13;
  v227 = type metadata accessor for URL();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v183 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v216);
  v228 = &v181 - v15;
  v16 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v16 - 8);
  v185 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v188 = &v181 - v19;
  __chkstk_darwin(v20);
  v217 = &v181 - v21;
  __chkstk_darwin(v22);
  v224 = &v181 - v23;
  v24 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v24 - 8);
  v215 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v26 - 8);
  v211 = &v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for Artwork.Variant();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v29 - 8);
  v208 = &v181 - v30;
  v31 = type metadata accessor for Artwork.Crop();
  v231 = *(v31 - 1);
  v232 = v31;
  __chkstk_darwin(v31);
  v209 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v210 = &v181 - v34;
  v207 = type metadata accessor for FloatingPointRoundingRule();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v204 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for TodayCardArtworkLayout();
  v203 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v199 = &v181 - v39;
  v40 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v40 - 8);
  v197 = &v181 - v41;
  v194 = type metadata accessor for VideoFillMode();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v196 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for VideoConfiguration();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v236 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10002849C(&qword_100979D68);
  __chkstk_darwin(v44 - 8);
  v192 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v190 = &v181 - v47;
  v48 = type metadata accessor for VideoControls();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v195 = &v181 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v230 = &v181 - v52;
  __chkstk_darwin(v53);
  v191 = &v181 - v54;
  __chkstk_darwin(v55);
  v57 = &v181 - v56;
  __chkstk_darwin(v58);
  v235 = &v181 - v59;
  __chkstk_darwin(v60);
  v62 = &v181 - v61;
  __chkstk_darwin(v63);
  v65 = &v181 - v64;
  __chkstk_darwin(v66);
  v68 = &v181 - v67;
  __chkstk_darwin(v69);
  v71 = &v181 - v70;
  v238 = a1;
  Video.playbackControls.getter();
  static VideoControls.muteUnmute.getter();
  v229 = *(v49 + 16);
  v229(v62, v71, v48);
  sub_100343708(&unk_100988DE0, &type metadata accessor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v72 = dispatch thunk of SetAlgebra.isEmpty.getter();
  v234 = v71;
  if (v72)
  {
    v73 = *(v49 + 8);
    v73(v65, v48);
    v233 = v73;
    v73(v68, v48);
    v74 = 1;
    v75 = v190;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v233 = *(v49 + 8);
    v233(v68, v48);
    v75 = v190;
    (*(v49 + 32))(v190, v65, v48);
    v74 = 0;
  }

  v76 = *(v49 + 56);
  v76(v75, v74, 1, v48);
  sub_10002B894(v75, &qword_100979D68);
  v77 = v235;
  Video.autoPlayPlaybackControls.getter();
  static VideoControls.muteUnmute.getter();
  v229(v62, v77, v48);
  v78 = v191;
  dispatch thunk of SetAlgebra.intersection(_:)();
  v79 = dispatch thunk of SetAlgebra.isEmpty.getter();
  v218 = v49;
  if (v79)
  {
    v80 = v233;
    v233(v78, v48);
    v80(v57, v48);
    v81 = 1;
    v82 = v232;
    v83 = v192;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v233(v57, v48);
    v83 = v192;
    (*(v49 + 32))(v192, v78, v48);
    v81 = 0;
    v82 = v232;
  }

  v76(v83, v81, 1, v48);
  sub_10002B894(v83, &qword_100979D68);
  (*(v193 + 104))(v196, enum case for VideoFillMode.scaleAspectFill(_:), v194);
  Video.preview.getter();
  Artwork.size.getter();
  v84 = v197;
  AspectRatio.init(_:_:)();

  v85 = type metadata accessor for AspectRatio();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v229;
  v229(v230, v234, v48);
  v86(v195, v77, v48);
  Video.canPlayFullScreen.getter();
  v87 = v237;
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  Video.preview.getter();
  v88 = [v87 traitCollection];
  v89 = v223;
  sub_100699534(v223);
  v90 = v200;
  v91 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v92 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v89 != 6)
  {
    v92 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v89 != 4)
  {
    v91 = v92;
  }

  v93 = v198;
  v94 = v201;
  (*(v200 + 104))(v198, *v91, v201);
  v95 = v199;
  (*(v90 + 32))(v199, v93, v94);
  v96 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v90 + 8))(v95, v94);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  v221 = v48;
  if (v97)
  {
    Artwork.size.getter();
  }

  v98 = v208;
  v99 = v202;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v100 = v206;
  v101 = v204;
  v102 = v207;
  (*(v206 + 104))(v204, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v207);
  CGSize.rounded(_:)();
  (*(v100 + 8))(v101, v102);
  (*(v203 + 8))(v99, v205);
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v103 = v231;
  v104 = *(v231 + 48);
  v105 = v104(v98, 1, v82);
  v229 = v96;
  v106 = v88;
  if (v105 == 1)
  {
    v107 = v210;
    Artwork.crop.getter();
    v108 = v107;
    v109 = v82;
    if (v104(v98, 1, v82) != 1)
    {
      sub_10002B894(v98, &qword_100979D60);
    }
  }

  else
  {
    v108 = v210;
    (*(v103 + 32))(v210, v98, v82);
    v109 = v82;
  }

  v110 = v212;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  [v106 displayScale];
  v111 = v231;
  (*(v231 + 16))(v209, v108, v109);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v230 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v213 + 8))(v110, v214);
  (*(v111 + 8))(v108, v232);
  v112 = *&v237[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v231 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v229 = v112;
  v113 = *(v112 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  v114 = v224;
  Video.videoUrl.getter();
  v115 = v226;
  v116 = *(v226 + 56);
  v117 = 1;
  v118 = v227;
  v116(v114, 0, 1, v227);
  v232 = v113;
  v215 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v120 = Strong;
    v121 = v217;
    (*(v115 + 16))(v217, Strong + qword_1009D21C8, v118);

    v117 = 0;
  }

  else
  {
    v121 = v217;
  }

  v116(v121, v117, 1, v118);
  v122 = *(v216 + 48);
  v123 = v228;
  sub_100031660(v114, v228, &qword_100982460);
  v124 = v123;
  sub_100031660(v121, v123 + v122, &qword_100982460);
  v125 = *(v115 + 48);
  if (v125(v124, 1, v118) == 1)
  {
    sub_10002B894(v121, &qword_100982460);
    v126 = v228;
    sub_10002B894(v114, &qword_100982460);
    v127 = v125(v126 + v122, 1, v118);
    v128 = v221;
    if (v127 == 1)
    {
      sub_10002B894(v126, &qword_100982460);
      v129 = v229;
      goto LABEL_42;
    }
  }

  else
  {
    v130 = v188;
    sub_100031660(v124, v188, &qword_100982460);
    if (v125(v124 + v122, 1, v118) != 1)
    {
      v138 = v226;
      v139 = v124 + v122;
      v140 = v183;
      (*(v226 + 32))(v183, v139, v118);
      sub_100343708(&qword_100975040, &type metadata accessor for URL);
      v141 = v124;
      v142 = dispatch thunk of static Equatable.== infix(_:_:)();
      v143 = *(v138 + 8);
      v143(v140, v118);
      sub_10002B894(v121, &qword_100982460);
      sub_10002B894(v224, &qword_100982460);
      v143(v188, v118);
      sub_10002B894(v141, &qword_100982460);
      v128 = v221;
      v129 = v229;
      if (v142)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    sub_10002B894(v121, &qword_100982460);
    v126 = v228;
    sub_10002B894(v114, &qword_100982460);
    (*(v226 + 8))(v130, v118);
    v128 = v221;
  }

  sub_10002B894(v126, &unk_10097CCA0);
  v129 = v229;
LABEL_26:
  v131 = v129;
  type metadata accessor for VideoViewManager();
  v229 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v132 = v239;
  Video.playbackId.getter();
  v133 = v185;
  Video.videoUrl.getter();
  v116(v133, 0, 1, v227);
  v134 = v186;
  Video.templateMediaEvent.getter();
  v135 = v187;
  Video.templateClickEvent.getter();
  v136 = type metadata accessor for TodayCardVideoView();
  sub_100343708(&qword_100979D58, type metadata accessor for TodayCardVideoView);
  v228 = v136;
  v137 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v135, &unk_100973A50);
  sub_10002B894(v134, &unk_100973A50);
  sub_10002B894(v133, &qword_100982460);
  sub_10002B894(&v239, &qword_10096FB90);
  if (!v137)
  {
LABEL_31:

    v129 = v131;
    goto LABEL_42;
  }

  v227 = v132;
  if (*(v137 + qword_1009CE000))
  {

    goto LABEL_31;
  }

  v144 = v232;
  *(v137 + qword_1009CDFF8) = v232[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory];
  sub_1000FA22C();
  swift_unknownObjectWeakAssign();
  v145 = v215;
  v146 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v147 = v137;
  sub_1006666C8(v146);

  v148 = *&v145[v144];
  Video.preview.getter();
  Artwork.size.getter();
  v150 = v149;
  v152 = v151;

  v153 = type metadata accessor for PageGrid();
  v154 = *(v153 - 8);
  v155 = v184;
  (*(v154 + 16))(v184, v222, v153);
  (*(v154 + 56))(v155, 0, 1, v153);
  v156 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
  v157 = swift_unknownObjectWeakLoadStrong();
  v226 = v156;
  v238 = v147;
  swift_unknownObjectWeakAssign();
  sub_1006666C8(v157);

  v158 = &v148[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
  *v158 = v150;
  *(v158 + 1) = v152;
  v158[16] = 0;
  v159 = swift_unknownObjectWeakLoadStrong();
  v129 = v131;
  if (v159)
  {
    v160 = v159;
    (*((swift_isaMask & *v159) + 0xE8))(v150, v152, 0);
  }

  v161 = v225;
  *&v148[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = v225;

  v162 = swift_unknownObjectWeakLoadStrong();
  if (v162)
  {
    v163 = v162;
    v164 = *((swift_isaMask & *v162) + 0xD0);
    swift_bridgeObjectRetain_n();
    v164(v161);
  }

  else
  {
  }

  v165 = v184;
  v166 = v182;
  sub_100031660(v184, v182, &qword_10097DBD0);
  sub_100665BDC(v166);
  v167 = v223;
  v148[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory] = v223;
  v168 = swift_unknownObjectWeakLoadStrong();
  if (v168)
  {
    v169 = v168;
    (*((swift_isaMask & *v168) + 0x118))(v167);
  }

  v170 = swift_unknownObjectWeakLoadStrong();
  if (v170)
  {
    v171 = v170;
    v172 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v171) + 0x150))(v172, *v158, *(v158 + 1), v158[16], v225, v165, v167);
  }

  [v148 setNeedsLayout];
  v173 = v238;

  sub_10002B894(v165, &qword_10097DBD0);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  sub_100343708(&qword_100979D70, type metadata accessor for TodayCardVideoView);
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  v174 = v232;
  [*&v215[v232] setHidden:0];
  [*&v174[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] setHidden:1];

  v174[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = 1;
  v128 = v221;
LABEL_42:

  v175 = *&v129[v231];
  v175[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = v237[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v176 = v175;
  sub_10070D46C();

  v177 = swift_unknownObjectWeakLoadStrong();
  if (v177)
  {
    *(v177 + qword_100988CB8 + 8) = &off_1008BE700;
    v178 = v177;
    swift_unknownObjectWeakAssign();
  }

  sub_1002149C0();

  (*(v219 + 8))(v236, v220);
  v179 = v233;
  v233(v235, v128);
  return v179(v234, v128);
}

void sub_100342140(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v145 = a5;
  v153 = a4;
  v154 = a2;
  v138 = a1;
  LODWORD(v134) = a3;
  v8 = sub_10002849C(&qword_10097A450);
  __chkstk_darwin(v8 - 8);
  v121 = &v116 - v9;
  v151 = type metadata accessor for PageGrid();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v119 = v10;
  v127 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for UUID();
  v129 = *(v148 - 8);
  __chkstk_darwin(v148);
  v126 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v11;
  __chkstk_darwin(v12);
  v128 = &v116 - v13;
  v122 = sub_10002849C(&qword_100979D78);
  __chkstk_darwin(v122);
  v123 = &v116 - v14;
  v15 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v15 - 8);
  v120 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v116 - v18;
  __chkstk_darwin(v19);
  v124 = &v116 - v20;
  __chkstk_darwin(v21);
  v125 = &v116 - v22;
  v23 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v23 - 8);
  v144 = &v116 - v24;
  v25 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v25 - 8);
  v143 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Artwork.URLTemplate();
  v147 = *(v130 - 8);
  __chkstk_darwin(v130);
  v146 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Artwork.Variant();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v29 - 8);
  v133 = &v116 - v30;
  v139 = type metadata accessor for Artwork.Crop();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v136 = &v116 - v33;
  v132 = type metadata accessor for FloatingPointRoundingRule();
  v34 = *(v132 - 8);
  __chkstk_darwin(v132);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for TodayCardArtworkLayout();
  v37 = *(v131 - 8);
  __chkstk_darwin(v131);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = __chkstk_darwin(v44).n128_u64[0];
  v47 = &v116 - v46;
  v152 = v6;
  v48 = [v6 traitCollection];
  v150 = a3;
  sub_100699534(a3);
  v49 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v50 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v134 != 6)
  {
    v50 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v134 != 4)
  {
    v49 = v50;
  }

  (*(v41 + 104))(v43, *v49, v40);
  (*(v41 + 32))(v47, v43, v40);
  v51 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v41 + 8))(v47, v40);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  if (v52)
  {
    Artwork.size.getter();
  }

  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v53 = v132;
  (*(v34 + 104))(v36, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v132);
  CGSize.rounded(_:)();
  (*(v34 + 8))(v36, v53);
  (*(v37 + 8))(v39, v131);
  v54 = v133;
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v55 = v137;
  v56 = *(v137 + 48);
  v57 = v139;
  v58 = v56(v54, 1, v139);
  v134 = v51;
  if (v58 == 1)
  {
    v59 = v136;
    Artwork.crop.getter();
    if (v56(v54, 1, v57) != 1)
    {
      sub_10002B894(v54, &qword_100979D60);
    }
  }

  else
  {
    v59 = v136;
    (*(v55 + 32))(v136, v54, v57);
  }

  v60 = v140;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  [v48 displayScale];
  v61 = v48;
  (*(v55 + 16))(v135, v59, v57);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v62 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v141 + 8))(v60, v142);
  (*(v55 + 8))(v59, v57);
  v143 = *&v152[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v142 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v63 = *&v143[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v64 = v63;
  inject<A, B>(_:from:)();
  v65 = v155;
  v141 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);

  v145 = v64;
  v140 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  v67 = *&v64[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  ArtworkLoaderConfig.size.getter();
  v69 = v68;
  v71 = v70;
  v72 = [*(v67 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) image];
  v73 = v149;
  v74 = v144;
  v75 = v151;
  v136 = *(v149 + 16);
  (v136)(v144, v153, v151);
  (*(v73 + 56))(v74, 0, 1, v75);
  sub_1001A5AD8(v72, v69, v71, 0, v154, v74, v150);

  v76 = v74;
  v77 = v67;
  sub_10002B894(v76, &qword_10097DBD0);
  v78 = *(v67 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded);
  v138 = v62;
  v139 = v65;
  v137 = v67;
  if (v78)
  {
    v79 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v80 = v125;
    sub_100031660(v67 + v79, v125, &qword_100972638);
    v81 = v124;
    ArtworkLoaderConfig.template.getter();
    v82 = v147;
    v83 = v130;
    (*(v147 + 56))(v81, 0, 1, v130);
    v84 = *(v122 + 48);
    v85 = v123;
    sub_100031660(v80, v123, &qword_100972638);
    sub_100031660(v81, v85 + v84, &qword_100972638);
    v86 = v80;
    v87 = *(v82 + 48);
    if (v87(v85, 1, v83) == 1)
    {
      sub_10002B894(v81, &qword_100972638);
      sub_10002B894(v86, &qword_100972638);
      if (v87(v85 + v84, 1, v83) == 1)
      {
        sub_10002B894(v85, &qword_100972638);
        goto LABEL_20;
      }
    }

    else
    {
      v88 = v117;
      sub_100031660(v85, v117, &qword_100972638);
      if (v87(v85 + v84, 1, v83) != 1)
      {
        v112 = v146;
        v113 = v147;
        (*(v147 + 32))(v146, v85 + v84, v83);
        sub_100343708(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate);
        v114 = dispatch thunk of static Equatable.== infix(_:_:)();
        v115 = *(v113 + 8);
        v115(v112, v83);
        sub_10002B894(v124, &qword_100972638);
        sub_10002B894(v125, &qword_100972638);
        v115(v88, v83);
        sub_10002B894(v85, &qword_100972638);
        v77 = v137;
        if (v114)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      sub_10002B894(v124, &qword_100972638);
      sub_10002B894(v125, &qword_100972638);
      (*(v147 + 8))(v88, v83);
    }

    sub_10002B894(v85, &qword_100979D78);
    v77 = v137;
  }

LABEL_18:
  if ((*(v77 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v89 = v128;
    UUID.init()();
    v90 = v129;
    v91 = *(v129 + 16);
    v92 = v126;
    v93 = v148;
    v91(v126, v89, v148);
    sub_100343708(&qword_100979D80, &type metadata accessor for UUID);
    AnyHashable.init<A>(_:)();
    v146 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91(v92, v89, v93);
    (v136)(v127, v153, v151);
    v94 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v95 = (v118 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
    v97 = v149;
    v98 = (*(v149 + 80) + v96 + 8) & ~*(v149 + 80);
    v99 = v98 + v119;
    v100 = swift_allocObject();
    *(v100 + 16) = v146;
    v101 = *(v90 + 32);
    v101(v100 + v94, v126, v148);
    v102 = (v100 + v95);
    *v102 = v69;
    v102[1] = v71;
    *(v100 + v96) = v154;
    (*(v97 + 32))(v100 + v98, v127, v151);
    *(v100 + v99) = v150;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(&v155, &qword_10096FB90);

    v103 = v120;
    ArtworkLoaderConfig.template.getter();
    (*(v147 + 56))(v103, 0, 1, v130);
    v104 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    v105 = v137;
    swift_beginAccess();
    sub_1000315F8(v103, v105 + v104, &qword_100972638);
    swift_endAccess();
    v106 = v121;
    v107 = v148;
    v101(v121, v128, v148);
    (*(v129 + 56))(v106, 0, 1, v107);
    v108 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_1000315F8(v106, v105 + v108, &qword_10097A450);
    swift_endAccess();
  }

LABEL_20:
  v109 = v145;
  [*&v140[v145] setHidden:0];
  [*&v109[v141] setHidden:1];

  v109[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = 1;

  v110 = *&v143[v142];
  v110[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = v152[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v111 = v110;
  sub_10070D46C();
}

uint64_t sub_100343708(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_100343750()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v2 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  result = *(v1 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  if (result[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] != 1)
  {
    return v0;
  }

  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v4] != 6)
  {
    v5 = [v0 traitCollection];
    v6 = v0;
    v7 = UITraitCollection.prefersAccessibilityLayouts.getter();

    result = v6;
    if ((v7 & 1) == 0)
    {
      return *(v1 + v2);
    }
  }

  return result;
}

double sub_100343828(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(&v16 - v13, a1, v4, v12);
  (*(v5 + 56))(v14, 0, 1, v4);
  sub_100031660(v14, v10, &qword_10097DBD0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10002B894(v10, &qword_10097DBD0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    [a2 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    (*(v5 + 8))(v7, v4);
  }

  sub_10002B894(v14, &qword_10097DBD0);
  return 20.0;
}

id sub_100343C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_100343D48(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100343E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100343EB8()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100343F50@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009CFB00;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100343FA8(uint64_t a1)
{
  v3 = qword_1009CFB00;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100344068()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*((v3 & v2) + 0x58) + 88))(*((v3 & v2) + 0x50));
}

uint64_t sub_100344184@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v6 = type metadata accessor for ComponentSeparator();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

char *sub_1003442F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_1009CFB00;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_1009CFB08;
  *&v5[v15] = (*(*((v12 & v11) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_1009CFB08]];

  return v20;
}

id sub_10034452C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_1009CFB08];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_100344598(void *a1)
{
  v1 = a1;
  sub_10034452C();
}

uint64_t sub_1003445E0()
{
  type metadata accessor for ScrollablePillView();
  swift_dynamicCastClass();
  return CustomLayoutView.sizeThatFits(_:)();
}

double sub_100344644(void *a1)
{
  v1 = a1;
  sub_1003445E0();
  v3 = v2;

  return v3;
}

void sub_100344698(void *a1)
{
  v1 = a1;
  sub_100344068();
}

id sub_1003446E0(void *a1)
{
  v1 = a1;
  v2 = sub_100344724();

  return v2;
}

void sub_1003448A0(uint64_t a1)
{
  sub_1000284E4(a1 + qword_1009CFB00);
  v2 = *(a1 + qword_1009CFB08);
}

void sub_10034492C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_1009CFB00;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_1009CFB08;
  *(v1 + v6) = (*(*((v3 & v2) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100344A48(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaMediumLockupWithScreenshots();
  if (swift_dynamicCastClass())
  {
    v12 = sub_100344F64();
    v13 = TodayCardMediaMediumLockupWithScreenshots.mediumAdLockupWithScreenshotsBackground.getter();
    sub_1001B49C8(v13, a4);

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

void sub_100344CDC(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v5);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaMediumLockupWithScreenshots();
    if (swift_dynamicCastClass())
    {
      v3 = sub_100344F64();
      v4 = TodayCardMediaMediumLockupWithScreenshots.mediumAdLockupWithScreenshotsBackground.getter();
      sub_10034595C(v4, a2, v3);
    }

    else
    {
    }
  }
}

void sub_100344DD0()
{
  v0 = sub_100344F64();
  v1 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v2 = *(*&v0[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.image.setter();

  v3 = *(*&v0[v1] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  v4 = v3;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void (*sub_100344E9C(uint64_t a1))()
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
  return sub_100345950;
}

id sub_100344F64()
{
  v1 = OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_100344FE4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for AutomationSemantics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_100344F64();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v19, &unk_1009711D0);
  sub_10002B894(v20, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_100345244()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100345304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_1001B2E10(a4, a5);
  return v7;
}

void sub_100345510(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_1003457B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_100980CE8;
  if (!qword_100980CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034589C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100344F64();
  sub_100772574(a1, a2);
}

uint64_t sub_100345908()
{
  v0 = sub_100344F64();
  v1 = *(*&v0[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_10034595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_10002C0AC(v12, &v11);

  sub_10002849C(&unk_1009793D0);
  if (swift_dynamicCast())
  {
    MediumAdLockupWithScreenshotsBackground.lockup.getter();
    v6 = Lockup.icon.getter();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_10003B944(&v11);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v8 = *(*(a3 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      type metadata accessor for ArtworkView();
      sub_10009A098();
      v9 = v8;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }
  }

  return sub_100007000(v12);
}

uint64_t sub_100345B3C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E170 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D13D0);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = type metadata accessor for StaticDimension();
  *a3 = &protocol witness table for StaticDimension;
  sub_1000056E0(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v16);
  (*(v8 + 16))(v13, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  return (*(v8 + 8))(v10, v7);
}

char *sub_100345D28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel;
  if (qword_10096E170 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v10, qword_1009D13D0);
  (*(v11 + 16))(v13, v15, v10);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v14] = sub_1002F5B8C(v13, 0, 0);
  v17 = type metadata accessor for SearchTransparencyView();
  v26.receiver = v5;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel;
  v20 = *&v18[OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel];
  v21 = v18;
  [v21 addSubview:v20];
  [v21 setLayoutMargins:{0.0, 32.0, 0.0, 32.0}];
  sub_100028BB8();
  v22 = static UIColor.componentBackgroundStandout.getter();
  [v21 setBackgroundColor:v22];

  [v21 _setCornerRadius:10.0];
  v23 = *&v18[v19];
  v24 = static UIColor.secondaryText.getter();
  [v23 setTextColor:v24];

  [*&v18[v19] setTextAlignment:1];
  return v21;
}

id sub_100346270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTransparencyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003462D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LegacyAppState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != enum case for LegacyAppState.waiting(_:))
  {
    if (v6 == enum case for LegacyAppState.purchased(_:))
    {
      (*(v3 + 96))(v5, v2);
      v9 = type metadata accessor for PurchaseType();
    }

    else
    {
      if (v6 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v3 + 8))(v5, v2);
        v8 = &enum case for AdInteractionType.update(_:);
        goto LABEL_12;
      }

      if (v6 == enum case for LegacyAppState.downloadable(_:))
      {
        (*(v3 + 8))(v5, v2);
        v8 = &enum case for AdInteractionType.download(_:);
        goto LABEL_12;
      }

      if (v6 == enum case for LegacyAppState.paused(_:) || v6 == enum case for LegacyAppState.downloading(_:) || v6 == enum case for LegacyAppState.installing(_:))
      {
        (*(v3 + 96))(v5, v2);
        v7 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        goto LABEL_3;
      }

      if (v6 != enum case for LegacyAppState.openable(_:))
      {
        if (v6 != enum case for LegacyAppState.buyable(_:))
        {
          if (v6 == enum case for LegacyAppState.installed(_:))
          {
            goto LABEL_7;
          }

          if (v6 != enum case for LegacyAppState.unknown(_:))
          {
            v13 = enum case for AdInteractionType.open(_:);
            v14 = type metadata accessor for AdInteractionType();
            (*(*(v14 - 8) + 104))(a1, v13, v14);
            return (*(v3 + 8))(v5, v2);
          }
        }

        v8 = &enum case for AdInteractionType.getArcade(_:);
        goto LABEL_12;
      }

      (*(v3 + 96))(v5, v2);

      v9 = type metadata accessor for OpenableDestination();
    }

    (*(*(v9 - 8) + 8))(v5, v9);
LABEL_7:
    v8 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  (*(v3 + 96))(v5, v2);
  v7 = type metadata accessor for InstallationType();
LABEL_3:
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = &enum case for AdInteractionType.cancel(_:);
LABEL_12:
  v10 = *v8;
  v11 = type metadata accessor for AdInteractionType();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_1003466AC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AdvertActionMetrics.PurchaseType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LegacyAppState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = type metadata accessor for InstallationType();
LABEL_3:
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = &enum case for AdInteractionType.cancel(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = type metadata accessor for PurchaseType();
LABEL_6:
    (*(*(v13 - 8) + 8))(v9, v13);
LABEL_7:
    v12 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v7 + 8))(v9, v6);
    v12 = &enum case for AdInteractionType.update(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v7 + 8))(v9, v6);
    v12 = &enum case for AdInteractionType.download(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.paused(_:) || v10 == enum case for LegacyAppState.downloading(_:) || v10 == enum case for LegacyAppState.installing(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    goto LABEL_3;
  }

  if (v10 == enum case for LegacyAppState.openable(_:))
  {
    (*(v7 + 96))(v9, v6);

    v13 = type metadata accessor for OpenableDestination();
    goto LABEL_6;
  }

  if (v10 != enum case for LegacyAppState.buyable(_:))
  {
    if (v10 == enum case for LegacyAppState.installed(_:))
    {
      goto LABEL_7;
    }

    if (v10 != enum case for LegacyAppState.unknown(_:))
    {
      v17 = enum case for AdInteractionType.open(_:);
      v18 = type metadata accessor for AdInteractionType();
      (*(*(v18 - 8) + 104))(a1, v17, v18);
      return (*(v7 + 8))(v9, v6);
    }
  }

  (*(v3 + 104))(v5, enum case for AdvertActionMetrics.PurchaseType.standard(_:), v2);
  sub_100346C54();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v3 + 8))(v5, v2);

    if ((v19 & 1) == 0)
    {
      v12 = &enum case for AdInteractionType.getPreorder(_:);
      goto LABEL_12;
    }
  }

  v12 = &enum case for AdInteractionType.get(_:);
LABEL_12:
  v14 = *v12;
  v15 = type metadata accessor for AdInteractionType();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_100346BF8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_100346C54()
{
  result = qword_100980DC8;
  if (!qword_100980DC8)
  {
    type metadata accessor for AdvertActionMetrics.PurchaseType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980DC8);
  }

  return result;
}

double sub_100346D70(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspectRatio();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v17._object = 0x80000001007FC650;
  v17._countAndFlagsBits = 0xD000000000000010;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v99 = localizedString(_:comment:)(v17, v18);
  v19 = sub_100072384(v99);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_10096CEA8 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_1009CD920;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_1009CD978;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1009CD818;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_10096CE98 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1009CD870;
  }

  else
  {
    if (qword_10096CEA0 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1009CD8C8;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_100072738(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_1000723D0(&v95);

  *&v86 = a1;
  Quote.text.getter();
  v33 = v32;
  v34 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for FontUseCase();
  v35 = sub_1000056A8(v84, qword_1009CD9D0);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_10096E898;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_100005744(0, &unk_100993000);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100347FB4(&qword_100976620, type metadata accessor for Key);
  v79 = v33;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_100397150(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = String._bridgeToObjectiveC()();
    v51 = Dictionary._bridgeToObjectiveC()().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_100072770(v92);
  }

  else
  {

    sub_100072770(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = type metadata accessor for Feature();
  v90 = v60;
  v61 = sub_100347FB4(&qword_100972E50, &type metadata accessor for Feature);
  v91 = v61;
  v62 = sub_1000056E0(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  isFeatureEnabled(_:)();
  sub_100007000(v89);
  v65 = v88;
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  sub_10025BAF0(v59);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for StaticDimension();
  sub_1000056A8(v66, qword_1009CDA00);
  AnyDimension.topMargin(from:in:)();
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v66, qword_1009CDA18);
  AnyDimension.bottomMargin(from:in:)();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  Quote.credit.getter();
  if (v67)
  {
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v84, qword_1009CD9E8);
    v90 = v60;
    v91 = v61;
    v68 = sub_1000056E0(v89);
    v64(v68, v63, v60);
    isFeatureEnabled(_:)();
    sub_100007000(v89);
    v69 = v88;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v66, qword_1009CDA30);
    AnyDimension.topMargin(from:in:)();
    v65 = v69;
    v70 = v83;
    v71 = &StringUserDefaultsDebugSetting;
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v66, qword_1009CDA48);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    v70 = v83;
    v71 = &StringUserDefaultsDebugSetting;
  }

  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    if ((Quote.isFullWidthArtwork.getter() & 1) == 0)
    {
      [v65 v71[53].ivar_lyt];
      [v65 v71[53].ivar_lyt];
    }

    AspectRatio.height(fromWidth:)();
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v66, qword_1009CDA60);
    v72 = v75;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_100347B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for AspectRatio();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView];
  v16 = Quote.text.getter();
  sub_10007003C(v16, v17);
  v18 = Quote.credit.getter();
  sub_1000707B0(v18, v19);
  v15[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] = Quote.isFullWidthArtwork.getter() & 1;
  sub_100070BA0();
  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_100347F44(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    AspectRatio.height(fromWidth:)();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_100347F44(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}

uint64_t sub_100347F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009732A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100347FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100347FFC(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a3;
  v11 = a2;
  v13 = type metadata accessor for AspectRatio();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Shelf.items.getter();
  v7 = *(v6 + 16);
  v15 = v6 + 32;
  v12 = (v3 + 8);
  v16 = v6;

  v9 = 0;
  while (1)
  {
    if (v9 == v7)
    {
      v24 = 0;
      v9 = v7;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10002C0AC(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100005A38(v20, v19);
    sub_10002C0AC(v19, v17);
    sub_10002849C(&qword_100973D50);
    type metadata accessor for Quote();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    result = sub_100007000(v19);
    if (v18)
    {
      if (Quote.artwork.getter())
      {
        Artwork.size.getter();
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        if ((Quote.isFullWidthArtwork.getter() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        AspectRatio.height(fromWidth:)();
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        result = (*v12)(v5, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void (*sub_1003482E4(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100348348;
}

void sub_100348348(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100349D78(&qword_100973190, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100028004();
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_1001B8790();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100349D78(&qword_100973190, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100028004();
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_1001B8790();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_1003485EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_preferredImageSizes] = &_swiftEmptyDictionarySingleton;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots]];

  return v15;
}

id sub_1003488A4()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView];
  sub_1000AB0CC();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v11 setFrame:?];
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  CGRectGetMinX(v34);
  [v11 frame];
  CGRectGetMaxY(v35);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for StaticDimension();
  sub_1000056A8(v12, qword_1009D2430);
  v13 = [v1 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007B0B70;
  *(v14 + 32) = v13;
  v15 = v13;
  v16 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  v18 = *&v11[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
  v17 = *&v11[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8];
  v19 = *&v11[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];

  v20 = [v19 text];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = [*&v11[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] text];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [v1 traitCollection];
  sub_100349130(v18, v8, v17, v22, v24, v27, v29, v30);

  v31 = *&v1[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots];
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v31 setFrame:?];
}

id sub_100348CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100348DC8(void *a1)
{
  sub_100349C14();
}

uint64_t (*sub_100348E00(uint64_t **a1))()
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
  v2[4] = sub_1003482E4(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100348E70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100348EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100348F30(uint64_t *a1))()
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

uint64_t sub_100348FCC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100028004();
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

double sub_100349130(NSString *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v80 = a6;
  v81 = a7;
  v75 = a4;
  v76 = a5;
  v69 = a1;
  v10 = type metadata accessor for SmallSearchLockupLayout();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v85 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LabelPlaceholderCompatibility();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OfferButtonMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v83 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v21, qword_1009CDC00);
  v28 = *(v22 + 16);
  v92 = v21;
  v72 = v28;
  v73 = v22 + 16;
  v28(v26, v27, v21);
  v29 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v84 = v22;
  if (v29)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v30 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v30 = qword_100991028;
  }

  v31 = sub_1000056A8(v14, v30);
  v32 = v15;
  (*(v15 + 16))(v17, v31, v14);
  (*(v15 + 32))(v20, v17, v14);
  v33 = [a8 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v82 = v14;

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v91 = v26;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v34 = type metadata accessor for LayoutViewPlaceholder();
  v74 = a8;
  v35 = v34;
  swift_allocObject();
  v90 = LayoutViewPlaceholder.init(representing:)();
  v36 = objc_opt_self();

  v66 = v36;
  v37 = [v36 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = type metadata accessor for Feature();
  v77 = v20;
  v39 = v38;
  v129[3] = v38;
  *&v89 = sub_100349D78(&qword_100972E50, 255, &type metadata accessor for Feature);
  v129[4] = v89;
  v40 = sub_1000056E0(v129);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v71 = v32;
  v88 = v41 + 104;
  v42(v40);
  v67 = v42;
  isFeatureEnabled(_:)();
  sub_100007000(v129);
  v43 = v70;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v44 = v79;
  v78 = *(v78 + 8);
  (v78)(v43, v79);
  v69 = UIFontTextStyleFootnote;

  v45 = [v36 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v128[3] = v39;
  v128[4] = v89;
  v46 = sub_1000056E0(v128);
  v47 = v68;
  (v42)(v46, v68, v39);
  isFeatureEnabled(_:)();
  sub_100007000(v128);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v48 = v78;
  (v78)(v43, v44);

  v49 = [v66 preferredFontForTextStyle:v69];
  v127[3] = v39;
  v127[4] = v89;
  v50 = sub_1000056E0(v127);
  v67(v50, v47, v39);
  isFeatureEnabled(_:)();
  sub_100007000(v127);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v48(v43, v44);
  sub_1000AE138(0, 0);
  swift_allocObject();
  v51 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138(0, 0);
  swift_allocObject();
  v52 = LayoutViewPlaceholder.init(representing:)();
  v72(v83, v91, v92);
  v126 = &protocol witness table for LayoutViewPlaceholder;
  v125 = v35;
  v124 = v90;
  v123 = 0;
  *&v121[40] = 0u;
  v122 = 0u;
  sub_10002C0AC(v129, v121);
  sub_10002C0AC(v128, &v120);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;

  v53 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v113 = &protocol witness table for LayoutViewPlaceholder;
  v112 = v35;
  v111 = v53;
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0;
  v100 = 0u;
  *&v99[40] = 0u;
  sub_10002C0AC(v127, v99);
  v97 = v35;
  v98 = &protocol witness table for LayoutViewPlaceholder;
  v95 = &protocol witness table for LayoutViewPlaceholder;
  v96 = v51;
  v94 = v35;
  v93 = v52;
  v54 = v85;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v55 = swift_allocObject();
  v89 = xmmword_1007B0B70;
  *(v55 + 16) = xmmword_1007B0B70;
  v56 = v74;
  *(v55 + 32) = v74;
  v57 = v56;
  v58 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100349D78(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
  v59 = v87;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v86 + 8))(v54, v59);
  sub_100007000(v127);
  sub_100007000(v128);
  sub_100007000(v129);
  (*(v71 + 8))(v77, v82);
  (*(v84 + 8))(v91, v92);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for StaticDimension();
  sub_1000056A8(v60, qword_1009D2430);
  v61 = swift_allocObject();
  *(v61 + 16) = v89;
  *(v61 + 32) = v57;
  v62 = v57;
  v63 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  return a2;
}

id sub_100349C14()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100349D78(&qword_100973190, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100028004();
    v6 = v1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_1001B8790();

  return [v1 setNeedsLayout];
}

uint64_t sub_100349D78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100349DC0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v75 = v0;
  v76 = v1;
  __chkstk_darwin(v0);
  v3 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - v6;
  v69 = sub_10002849C(&qword_100973210);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1007B48F0;
  if (qword_10096CF10 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_1009CDAB0);
  v72 = type metadata accessor for LocalPreferences();
  v9 = static LocalPreferences.AppStoreKit.getter();
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  v67 = type metadata accessor for BoolPreferencesDebugSetting();
  v11 = swift_allocObject();
  *(v11 + 56) = 0xD00000000000001BLL;
  *(v11 + 64) = 0x800000010080E160;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  v73 = v10;
  v74 = v5 + 16;
  v10((v11 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v7, v4);
  v12 = (v11 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v12 = v9;
  v12[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v76 + 8);
  v76 += 8;
  v17 = v16;
  v16(v3, v75);
  *&v79 = v13;
  *(&v79 + 1) = v15;
  AnyHashable.init<A>(_:)();
  v18 = *(v5 + 8);
  v70 = v5 + 8;
  v71 = v18;
  v18(v7, v4);

  *(v68 + 32) = v11;
  if (qword_10096CF18 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v4, qword_1009CDAC8);
  v20 = static LocalPreferences.AppStoreKit.getter();
  v21 = v73;
  v73(v7, v19, v4);
  v22 = swift_allocObject();
  *(v22 + 56) = 0xD000000000000019;
  *(v22 + 64) = 0x800000010080E180;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0;
  v21(v22 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v23 = (v22 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v23 = v20;
  v23[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v27 = v75;
  v66 = v17;
  v17(v3, v75);
  *&v79 = v24;
  *(&v79 + 1) = v26;
  AnyHashable.init<A>(_:)();
  v71(v7, v4);

  v65 = v7;
  v28 = v68;
  *(v68 + 40) = v22;
  sub_10034A6F8();
  v29 = static NSUserDefaults.jsAdLoggingEnabledKey.getter();
  v31 = v30;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v32 = swift_allocObject();
  *(v32 + 56) = 0xD000000000000014;
  *(v32 + 64) = 0x800000010080E1A0;
  *(v32 + 72) = 0;
  *(v32 + 80) = v29;
  *(v32 + 88) = v31;
  *(v32 + 96) = 0;
  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v17(v3, v27);
  v77 = v33;
  v78 = v35;
  AnyHashable.init<A>(_:)();
  v36 = v80;
  *(v32 + 16) = v79;
  *(v32 + 32) = v36;
  *(v32 + 48) = v81;
  *(v28 + 48) = v32;
  v77 = v28;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B15F0;
  if (qword_10096CF20 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v4, qword_1009CDAE0);
  v39 = static LocalPreferences.AppStoreKit.getter();
  v40 = v65;
  v41 = v73;
  v73(v65, v38, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x800000010080E1C0;
  *(v42 + 72) = 0;
  *(v42 + 80) = 0;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v40, v4);
  v43 = (v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v43 = v39;
  v43[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  v66(v3, v75);
  *&v79 = v44;
  *(&v79 + 1) = v46;
  AnyHashable.init<A>(_:)();
  v71(v40, v4);

  *(inited + 32) = v42;
  v68 = inited;
  if (qword_10096CF28 != -1)
  {
    swift_once();
  }

  v47 = sub_1000056A8(v4, qword_1009CDAF8);
  v48 = static LocalPreferences.AppStoreKit.getter();
  v49 = v73;
  v73(v40, v47, v4);
  v50 = swift_allocObject();
  *(v50 + 56) = 0xD000000000000029;
  *(v50 + 64) = 0x800000010080E1E0;
  *(v50 + 72) = 0;
  *(v50 + 80) = 0;
  *(v50 + 88) = 0;
  v49(v50 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v40, v4);
  v51 = (v50 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v51 = v48;
  v51[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;
  v55 = v75;
  v56 = v66;
  v66(v3, v75);
  *&v79 = v52;
  *(&v79 + 1) = v54;
  AnyHashable.init<A>(_:)();
  v71(v40, v4);

  v57 = v68;
  *(v68 + 40) = v50;
  sub_100394BD0(v57);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007B0B70;
  v59 = v77;
  type metadata accessor for DebugSection();
  v60 = swift_allocObject();
  UUID.init()();
  v61 = UUID.uuidString.getter();
  v63 = v62;
  v56(v3, v55);
  v60[2] = v61;
  v60[3] = v63;
  v60[4] = 0;
  v60[5] = 0xE000000000000000;
  v60[6] = v59;
  *(v58 + 32) = v60;
  return v58;
}

id sub_10034A6A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10034A6F8()
{
  result = qword_100980E88;
  if (!qword_100980E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100980E88);
  }

  return result;
}

double sub_10034A744(double a1)
{
  v3 = type metadata accessor for DynamicTextAppearance();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  __chkstk_darwin(v12);
  v13 = type metadata accessor for LabelPlaceholder();
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {
    v16 = 1;
  }

  else
  {
    v33 = v1;
    v34 = v13;
    v17._object = 0x800000010080E210;
    v17._countAndFlagsBits = 0xD000000000000016;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = localizedString(_:comment:)(v17, v18);
    v32[1] = v19._object;
    v32[2] = v19._countAndFlagsBits;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for FontUseCase();
    sub_1000056A8(v20, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v21 = *(v35 + 8);
    v21(v5, v3);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v21(v8, v3);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v21(v11, v3);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v23 = v22;
    v24 = v33;
    sub_10002A400(v33 + 16, v33[19]);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v26 = v25;
    sub_10002A400(v24, v24[3]);
    AnyDimension.value(with:)();
    v28 = v27;
    (*(v36 + 8))(v15, v34);
    v16 = v26 + v23 + v28 > a1;
  }

  sub_10034AB28(v16, v37);
  sub_10002A400(v37, v37[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v30 = v29;
  sub_100007000(v37);
  return v30;
}

uint64_t sub_10034AB28@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = type metadata accessor for HorizontalStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for VerticalStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  if (a1)
  {
    VerticalStack.init(with:)();
    sub_10034B4F4(v3, &v38);
    v19 = swift_allocObject();
    v20 = v47;
    *(v19 + 144) = v46;
    *(v19 + 160) = v20;
    *(v19 + 176) = v48;
    v21 = v43;
    *(v19 + 80) = v42;
    *(v19 + 96) = v21;
    v22 = v45;
    *(v19 + 112) = v44;
    *(v19 + 128) = v22;
    v23 = v39;
    *(v19 + 16) = v38;
    *(v19 + 32) = v23;
    v24 = v41;
    *(v19 + 48) = v40;
    *(v19 + 64) = v24;
    VerticalStack.adding(_:with:)();

    v25 = *(v13 + 8);
    v25(v15, v12);
    v26 = v37;
    v37[3] = v12;
    v26[4] = &protocol witness table for VerticalStack;
    sub_1000056E0(v26);
    VerticalStack.adding(_:with:)();
    return (v25)(v18, v12);
  }

  else
  {
    HorizontalStack.init(with:)();
    sub_10034B4F4(v3, &v38);
    v28 = swift_allocObject();
    v29 = v47;
    *(v28 + 144) = v46;
    *(v28 + 160) = v29;
    *(v28 + 176) = v48;
    v30 = v43;
    *(v28 + 80) = v42;
    *(v28 + 96) = v30;
    v31 = v45;
    *(v28 + 112) = v44;
    *(v28 + 128) = v31;
    v32 = v39;
    *(v28 + 16) = v38;
    *(v28 + 32) = v32;
    v33 = v41;
    *(v28 + 48) = v40;
    *(v28 + 64) = v33;
    HorizontalStack.adding(_:with:)();

    v34 = *(v6 + 8);
    v34(v8, v5);
    v35 = v37;
    v37[3] = v5;
    v35[4] = &protocol witness table for HorizontalStack;
    sub_1000056E0(v35);
    HorizontalStack.adding(_:with:)();
    return (v34)(v11, v5);
  }
}

uint64_t sub_10034AEB0(void *a1, double a2, double a3, double a4)
{
  v50 = type metadata accessor for DisjointStack();
  v6 = *(v50 - 8);
  __chkstk_darwin(v50);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v43 - v10;
  v12 = type metadata accessor for DynamicTextAppearance();
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v43 - v16;
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  __chkstk_darwin(v21);
  v22 = type metadata accessor for LabelPlaceholder();
  v47 = *(v22 - 8);
  v48 = v22;
  __chkstk_darwin(v22);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v51 = a1;
  if (v25 & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v44 = v11;
    v45 = v6;
    v28._object = 0x800000010080E210;
    v28._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v30 = localizedString(_:comment:)(v28, v29);
    v43[1] = v30._countAndFlagsBits;
    v43[0] = v30._object;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for FontUseCase();
    sub_1000056A8(v31, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v32 = *(v46 + 8);
    v32(v14, v12);
    v27 = 1;
    DynamicTextAppearance.withNumberOfLines(_:)();
    v32(v17, v12);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v32(v20, v12);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v34 = v33;
    v35 = v49;
    sub_10002A400((v49 + 128), *(v49 + 152));
    dispatch thunk of Placeable.measure(toFit:with:)();
    v37 = v36;
    sub_10002A400(v35, *(v35 + 24));
    AnyDimension.value(with:)();
    v39 = v38;
    (*(v47 + 8))(v24, v48);
    if (v37 + v34 + v39 <= a4)
    {
      v27 = 0;
      v26 = *(v35 + 40) ^ 1;
    }

    else
    {
      v26 = 0;
    }

    v6 = v45;
    v11 = v44;
  }

  sub_10034AB28(v27, v52);
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v26 & 1;
  DisjointStack.inserting(_:at:with:)();

  v40 = *(v6 + 8);
  v41 = v50;
  v40(v8, v50);
  sub_10053F68C(v51);
  v40(v11, v41);
  return sub_100007000(v52);
}

void sub_10034B3F0(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DisjointStack.EdgePosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v6[3] = type metadata accessor for ZeroDimension();
    v6[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v6);
    static ZeroDimension.zero.getter();
    (*(v4 + 104))(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v3);
    DisjointStack.Properties.leadingEdge.setter();
  }
}

uint64_t sub_10034B5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10034B604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10034B67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10034B6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10034B73C()
{
  result = qword_100980E90;
  if (!qword_100980E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980E90);
  }

  return result;
}

uint64_t sub_10034B790()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  if (!*(v0 + 24))
  {
    v16 = v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 40))(1, 0, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  AppEventNotificationConfig.displayTime.getter();
  Date.init()();
  sub_1000077E4(&unk_100980FA0, &type metadata accessor for Date);
  v8 = dispatch thunk of static Comparable.< infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = UserNotificationsManager.hasScheduledNotification(with:)();
  v11 = v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 40))((v8 & 1) == 0, 0, v13, v12);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v11 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v10 & 1, 0, v15, v14);

    return swift_unknownObjectRelease();
  }
}

uint64_t NotifyMeButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10034B790();
  return swift_unknownObjectRelease();
}

void (*NotifyMeButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10034BB98;
}

void sub_10034BB98(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_10034B790();
  }

  free(v3);
}

uint64_t NotifyMeButtonPresenter.__allocating_init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a3;
  v9 = type metadata accessor for MetricsPipeline();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v14 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v12, v9);
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = a5;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v21[2];
  sub_10034B790();
  sub_10034C234();
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  type metadata accessor for UserNotificationsManager();

  v17 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v16 addObserver:v13 selector:"userNotificationsDidChangeNotification:" name:v17 object:0];

  v18 = [v15 defaultCenter];
  [v18 addObserver:v13 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v19 = [v15 defaultCenter];
  [v19 addObserver:v13 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  swift_unknownObjectRelease();

  return v13;
}

uint64_t NotifyMeButtonPresenter.init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22[1] = a3;
  v11 = type metadata accessor for MetricsPipeline();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v15 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v14, v11);
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = a5;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v22[2];
  sub_10034B790();
  sub_10034C234();
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  type metadata accessor for UserNotificationsManager();

  v18 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v17 addObserver:v6 selector:"userNotificationsDidChangeNotification:" name:v18 object:0];

  v19 = [v16 defaultCenter];
  [v19 addObserver:v6 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v16 defaultCenter];
  [v20 addObserver:v6 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  swift_unknownObjectRelease();

  return v6;
}

void sub_10034C234()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (*(v0 + 24))
  {
    AppEventNotificationConfig.displayTime.getter();
    (*(v3 + 32))(v11, v8, v2);
    Date.init()();
    v12 = static Date.> infix(_:_:)();
    v13 = *(v3 + 8);
    v13(v5, v2);
    if ((v12 & 1) != 0 && (v14 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer, !*(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer)))
    {
      isa = Date._bridgeToObjectiveC()().super.isa;

      v16 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v1 target:"displayTimeReached" selector:0 userInfo:0 repeats:0.0];

      v17 = [objc_opt_self() mainRunLoop];
      [v17 addTimer:v16 forMode:NSRunLoopCommonModes];

      v13(v11, v2);
      v18 = *(v1 + v14);
      *(v1 + v14) = v16;
    }

    else
    {
      v13(v11, v2);
    }
  }
}

uint64_t NotifyMeButtonPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline;
  v3 = type metadata accessor for MetricsPipeline();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10001F64C(v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view);

  return v0;
}

uint64_t NotifyMeButtonPresenter.__deallocating_deinit()
{
  NotifyMeButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NotifyMeButtonPresenter.didTapButton(sender:)(UIButton sender)
{
  v2 = *(v1 + 24);
  if (v2 && (*(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) & 1) == 0)
  {

    if (ASKBagContract.enableAppEventsServerNotifications.getter())
    {
      if (UserNotificationsManager.hasScheduledNotification(with:)())
      {
        sub_10034DBB8(v2);
      }

      else
      {
        sub_10034E008(v2);
      }
    }

    else
    {
      UserNotificationsManager.getIsAuthorized()();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2].super.super.super.super.isa = v4;
      v6[3].super.super.super.super.isa = v5;
      v6[4].super.super.super.super.isa = v2;
      v6[5].super.super.super.super.isa = sender.super.super.super.super.isa;
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      v9 = sub_100005744(0, &qword_1009729E0);
      swift_retain_n();
      v10 = sender.super.super.super.super.isa;

      v11[3] = v9;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = static OS_dispatch_queue.main.getter();
      Promise.then(perform:orCatchError:on:)();

      sub_100007000(v11);
    }
  }
}

uint64_t sub_10034C804(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v12 = Strong;
    if (v9)
    {

      v13 = UserNotificationsManager.hasScheduledNotification(with:)();

      if (v13)
      {
        sub_10034DBB8(a4);
      }

      else
      {
        sub_10034E008(a4);
      }

      goto LABEL_11;
    }

    v14 = AppEventNotificationConfig.notAuthorizedAction.getter();
    if (!v14)
    {
LABEL_11:
    }

    v15 = v14;
    v16 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {

      return sub_10002B894(v8, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v15, 1, v12, v8);

      return (*(v17 + 8))(v8, v16);
    }
  }

  return result;
}

uint64_t sub_10034CA58()
{
  v0 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = AppEventNotificationConfig.failureAction.getter();
    if (v5)
    {
      v6 = v5;
      v7 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {

        return sub_10002B894(v2, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v6, 1, v4, v2);

        return (*(v8 + 8))(v2, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10034CC10(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = type metadata accessor for UserNotificationsManager.SchedulingResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 88))(v8, v5);
    if (v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) || v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      v13 = AppEventNotificationConfig.scheduledAction.getter();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = sub_10002849C(&unk_100974490);
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v4, 1, v17) == 1)
          {

            sub_10002B894(v4, &unk_100972A00);
          }

          else
          {
            sub_1005F9AF4(v14, 1, v16, v4);

            (*(v18 + 8))(v4, v17);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (v11 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v19 = v10 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 32))(0, 0, ObjectType, v20);
        swift_unknownObjectRelease();
      }
    }

    *(v10 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_10034CF64(uint64_t a1)
{
  v2 = type metadata accessor for UserNotificationsManager.SchedulingResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) && v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      if (v8 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v10 = v7 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(1, 0, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    *(v7 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_10034D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = AppEventNotificationConfig.failureAction.getter();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = sub_10002849C(&unk_100974490);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v8, 1, v15) == 1)
        {

          sub_10002B894(v8, &unk_100972A00);
        }

        else
        {
          sub_1005F9AF4(v12, 1, v14, v8);

          (*(v16 + 8))(v8, v15);
        }
      }

      else
      {
      }
    }

    v17 = v10 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 32))(a5 & 1, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    *(v10 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

void sub_10034D38C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v29 = v7;

    v10 = Notification.userInfo.getter();
    if (v10)
    {
      v11 = v10;
      type metadata accessor for UserNotificationsManager();
      v30 = static UserNotificationsManager.appEventIdKey.getter();
      v31 = v12;
      AnyHashable.init<A>(_:)();
      if (*(v11 + 16) && (v13 = sub_1003D78D8(aBlock), (v14 & 1) != 0))
      {
        sub_1000073E8(*(v11 + 56) + 32 * v13, v32);
        sub_10003D614(aBlock);

        if (swift_dynamicCast())
        {
          v15 = v31;
          v28 = v30;
          if (v28 == AppEventNotificationConfig.appEventId.getter() && v15 == v16)
          {
          }

          else
          {
            LODWORD(v28) = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v28 & 1) == 0)
            {
LABEL_21:

              return;
            }
          }
        }
      }

      else
      {

        sub_10003D614(aBlock);
      }
    }

    v17 = Notification.userInfo.getter();
    if (v17)
    {
      v18 = v17;
      type metadata accessor for UserNotificationsManager();
      v30 = static UserNotificationsManager.sourceViewKey.getter();
      v31 = v19;
      AnyHashable.init<A>(_:)();
      if (*(v18 + 16) && (v20 = sub_1003D78D8(aBlock), (v21 & 1) != 0))
      {
        sub_1000073E8(*(v18 + 56) + 32 * v20, v32);
        sub_10003D614(aBlock);

        sub_100005744(0, &qword_100972EB0);
        if (swift_dynamicCast())
        {
          v22 = v30;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            swift_unknownObjectRelease();

            if (v22 == v24)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_10003D614(aBlock);
      }
    }

    sub_100005744(0, &qword_1009729E0);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10034E5C0;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008BEF38;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000077E4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v27);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v29);
  }
}

uint64_t sub_10034D8A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10034B790();
  }

  return result;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_10034DBB8(uint64_t a1)
{
  v24 = type metadata accessor for MetricsFieldsContext();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for MetricsData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v23 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22[1] = v1;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(0, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  AppEventNotificationConfig.cancelScheduleClickEvent.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_100973A50);
  }

  else
  {
    v15 = v23;
    (*(v10 + 32))(v23, v8, v9);
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();

    (*(v3 + 8))(v5, v24);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  UserNotificationsManager.cancelScheduledNotification(with:from:)();
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = sub_100005744(0, &qword_1009729E0);

  v20 = static OS_dispatch_queue.main.getter();
  v25[3] = v19;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v25);
}

uint64_t sub_10034E008(uint64_t a1)
{
  v28 = type metadata accessor for MetricsFieldsContext();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MetricsData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v10;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v10 = v26;
    (*(v13 + 32))(1, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  AppEventNotificationConfig.scheduleClickEvent.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_100973A50);
  }

  else
  {
    v15 = v27;
    (*(v10 + 32))(v27, v8, v9);
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();

    (*(v3 + 8))(v5, v28);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  UserNotificationsManager.scheduleNotification(with:from:)();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v20;
  v22 = sub_100005744(0, &qword_1009729E0);
  swift_retain_n();

  v23 = static OS_dispatch_queue.main.getter();
  v29[3] = v22;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v23;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v29);
}

uint64_t type metadata accessor for NotifyMeButtonPresenter()
{
  result = qword_100980EE0;
  if (!qword_100980EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034E4F8()
{
  result = type metadata accessor for MetricsPipeline();
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

void sub_10034E624()
{
  v1 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

uint64_t sub_10034E6F0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CFB70);
  sub_1000056A8(v0, qword_1009CFB70);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10034E854(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v36 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D08A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = type metadata accessor for StaticDimension();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_1009D0890);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v38);
  v34(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v32 = v14;
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D0860);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v38);
  v34(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v32(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  v19 = v11;
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v6, qword_1009D0878);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24 = v32;
  v32(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v38);
  v23(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_10034EE3C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CFB88);
  sub_1000056A8(v0, qword_1009CFB88);
  if (qword_10096D918 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CFB70);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10034EFD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AspectRatio();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100005644(v7, qword_1009CFBA0);
  v74 = v7;
  v75 = sub_1000056A8(v7, qword_1009CFBA0);
  v76 = v6;
  AspectRatio.init(_:_:)();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_10096D958 != -1)
  {
    swift_once();
  }

  v8 = qword_100980FD0;
  *v3 = qword_100980FD0;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = type metadata accessor for StaticDimension();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = type metadata accessor for ZeroDimension();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v151);
  static ZeroDimension.zero.getter();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v148);
  static ZeroDimension.zero.getter();
  v14 = qword_100980FD0;
  *v3 = qword_100980FD0;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  StaticDimension.init(_:scaledLike:)();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_10096D960 != -1)
  {
    swift_once();
  }

  v17 = qword_100980FD8;
  *v3 = qword_100980FD8;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  StaticDimension.init(_:scaledLike:)();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_100980FD0;
  *v3 = qword_100980FD0;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v133);
  static ZeroDimension.zero.getter();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v130);
  static ZeroDimension.zero.getter();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v127);
  static ZeroDimension.zero.getter();
  if (qword_10096D968 != -1)
  {
    swift_once();
  }

  v29 = qword_100980FE0;
  *v3 = qword_100980FE0;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  StaticDimension.init(_:scaledLike:)();
  v79(v3, v0);
  v34 = qword_100980FE0;
  *v3 = qword_100980FE0;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  StaticDimension.init(_:scaledLike:)();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_100980FE0;
  *v3 = qword_100980FE0;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_1000056E0(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  StaticDimension.init(_:scaledLike:)();
  v38(v3, v0);
  if (qword_10096D970 != -1)
  {
    swift_once();
  }

  v42 = qword_100980FE8;
  *v3 = qword_100980FE8;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_1000056E0(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  StaticDimension.init(_:scaledLike:)();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_100980FE8;
  *v3 = qword_100980FE8;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_1000056E0(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  StaticDimension.init(_:scaledLike:)();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_100980FE8;
  *v3 = qword_100980FE8;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_1000056E0(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  StaticDimension.init(_:scaledLike:)();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_100980FE8;
  *v3 = qword_100980FE8;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_1000056E0(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  StaticDimension.init(_:scaledLike:)();
  v55(v3, v0);
  v60 = qword_100980FE8;
  *v3 = qword_100980FE8;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_1000056E0(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  StaticDimension.init(_:scaledLike:)();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_10096D948 != -1)
  {
    swift_once();
  }

  v64 = qword_100980FC0;
  *v3 = qword_100980FC0;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_1000056E0(v87);
  v83(v65, v3, v0);
  v66 = v64;
  StaticDimension.init(_:scaledLike:)();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_100005A38(&v166, v67 + v74[5]);
  sub_100005A38(&v163, v67 + v68[6]);
  sub_100005A38(&v160, v67 + v68[7]);
  sub_100005A38(&v157, v67 + v68[8]);
  sub_100005A38(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_100005A38(&v151, v67 + v68[11]);
  sub_100005A38(&v148, v67 + v68[12]);
  sub_100005A38(&v145, v67 + v68[13]);
  sub_100005A38(&v142, v67 + v68[14]);
  sub_100005A38(&v139, v67 + v68[15]);
  sub_100005A38(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_100005A38(&v133, v67 + v68[18]);
  sub_100005A38(&v130, v67 + v68[19]);
  sub_100005A38(&v127, v67 + v68[20]);
  sub_100005A38(&v124, v67 + v68[21]);
  sub_100005A38(&v121, v67 + v68[22]);
  sub_100005A38(&v118, v67 + v68[23]);
  sub_100005A38(&v115, v67 + v68[24]);
  sub_100005A38(&v112, v67 + v68[25]);
  sub_100005A38(&v109, v67 + v68[26]);
  sub_100005A38(&v106, v67 + v68[27]);
  sub_100005A38(&v103, v67 + v68[28]);
  sub_100005A38(&v100, v67 + v68[29]);
  sub_100005A38(&v97, v67 + v68[30]);
  sub_100005A38(&v94, v67 + v68[31]);
  sub_100005A38(&v91, v67 + v68[32]);
  return sub_100005A38(&v88, v67 + v68[33]);
}

uint64_t sub_10034FE24()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AspectRatio();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100005644(v7, qword_1009CFBB8);
  v52 = v7;
  v53 = sub_1000056A8(v7, qword_1009CFBB8);
  v54 = v6;
  AspectRatio.init(_:_:)();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = type metadata accessor for ZeroDimension();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v136);
  static ZeroDimension.zero.getter();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v127);
  static ZeroDimension.zero.getter();
  if (qword_10096D938 != -1)
  {
    swift_once();
  }

  v9 = qword_100980FB0;
  *v3 = qword_100980FB0;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = type metadata accessor for StaticDimension();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  StaticDimension.init(_:scaledLike:)();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_100980FB0;
  *v3 = qword_100980FB0;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  v120 = &protocol witness table for Double;
  v119 = &type metadata for Double;
  *&v118 = 0x4000000000000000;
  v117 = &protocol witness table for Double;
  v116 = &type metadata for Double;
  *&v115 = 0x4034000000000000;
  v19 = v58;
  v113 = v58;
  v114 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v112);
  static ZeroDimension.zero.getter();
  if (qword_10096D940 != -1)
  {
    swift_once();
  }

  v20 = qword_100980FB8;
  *v3 = qword_100980FB8;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v106);
  static ZeroDimension.zero.getter();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v103);
  static ZeroDimension.zero.getter();
  if (qword_10096D948 != -1)
  {
    swift_once();
  }

  v23 = qword_100980FC0;
  *v3 = qword_100980FC0;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v97);
  static ZeroDimension.zero.getter();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v94);
  static ZeroDimension.zero.getter();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_1000056E0(&v88);
  static ZeroDimension.zero.getter();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_10096D950 != -1)
  {
    swift_once();
  }

  v27 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  StaticDimension.init(_:scaledLike:)();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v82);
  static ZeroDimension.zero.getter();
  v34 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v38 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v73);
  static ZeroDimension.zero.getter();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v70);
  static ZeroDimension.zero.getter();
  v42 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_1000056E0(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v64);
  static ZeroDimension.zero.getter();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_100005A38(&v142, v45 + v52[5]);
  sub_100005A38(&v139, v45 + v46[6]);
  sub_100005A38(&v136, v45 + v46[7]);
  sub_100005A38(&v133, v45 + v46[8]);
  sub_100005A38(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_100005A38(&v127, v45 + v46[11]);
  sub_100005A38(&v124, v45 + v46[12]);
  sub_100005A38(&v121, v45 + v46[13]);
  sub_100005A38(&v118, v45 + v46[14]);
  sub_100005A38(&v115, v45 + v46[15]);
  sub_100005A38(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_100005A38(&v109, v45 + v46[18]);
  sub_100005A38(&v106, v45 + v46[19]);
  sub_100005A38(&v103, v45 + v46[20]);
  sub_100005A38(&v100, v45 + v46[21]);
  sub_100005A38(&v97, v45 + v46[22]);
  sub_100005A38(&v94, v45 + v46[23]);
  sub_100005A38(&v91, v45 + v46[24]);
  sub_100005A38(&v88, v45 + v46[25]);
  sub_100005A38(&v85, v45 + v46[26]);
  sub_100005A38(&v82, v45 + v46[27]);
  sub_100005A38(&v79, v45 + v46[28]);
  sub_100005A38(&v76, v45 + v46[29]);
  sub_100005A38(&v73, v45 + v46[30]);
  sub_100005A38(&v70, v45 + v46[31]);
  sub_100005A38(&v67, v45 + v46[32]);
  return sub_100005A38(&v64, v45 + v46[33]);
}

void sub_100350A74()
{
  v0 = objc_opt_self();
  if (qword_10096D940 != -1)
  {
    swift_once();
  }

  v1 = qword_100980FB8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100980FF8 = v2;
}

void sub_100350B50()
{
  v0 = objc_opt_self();
  if (qword_10096D950 != -1)
  {
    swift_once();
  }

  v1 = qword_100980FC8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100981008 = v2;
}

void sub_100350C58(uint64_t a1, void *a2, id *a3, void *a4)
{
  v7 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  v9 = [v7 _preferredFontForTextStyle:v8 weight:UIFontWeightSemibold];

  *a4 = v9;
}

void sub_100350D38(uint64_t a1, void *a2, id *a3, void *a4)
{
  v7 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  v9 = [v7 preferredFontForTextStyle:v8];

  *a4 = v9;
}

void sub_100350DD4()
{
  v0 = objc_opt_self();
  if (qword_10096D970 != -1)
  {
    swift_once();
  }

  v1 = qword_100980FE8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100981028 = v2;
}

UIColor sub_100350E84()
{
  sub_100005744(0, &qword_100970180);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 whiteColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_100981030 = result.super.isa;
  return result;
}

id sub_100350F18()
{
  result = [objc_opt_self() blackColor];
  qword_100981038 = result;
  return result;
}

uint64_t sub_100350F54()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  sub_100005644(v4, qword_100981040);
  sub_1000056A8(v4, qword_100981040);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  return UIButton.Configuration.image.setter();
}

id sub_1003510D4()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isSizeClassCompact.getter();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = UITraitCollection.isSizeClassRegular.getter();

  if (v15)
  {
    if (qword_10096D9C0 != -1)
    {
      swift_once();
    }

    v16 = &qword_100981038;
  }

  else
  {
    if (qword_10096D9B8 != -1)
    {
      swift_once();
    }

    v16 = &qword_100981030;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  UITraitCollection.isSizeClassRegular.getter();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  dispatch thunk of ShadowView.setCorner(radius:style:)();
  v20(v6, v2);
  v19(v6, v18, v2);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = UITraitCollection.isSizeClassRegular.getter();

  if (v25)
  {
    if (qword_10096D978 != -1)
    {
      swift_once();
    }

    v26 = &qword_100980FF0;
  }

  else
  {
    if (qword_10096D998 != -1)
    {
      swift_once();
    }

    v26 = &qword_100981010;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = UITraitCollection.isSizeClassRegular.getter();

  if (v29)
  {
    if (qword_10096D980 != -1)
    {
      swift_once();
    }

    v30 = &qword_100980FF8;
  }

  else
  {
    if (qword_10096D9A0 != -1)
    {
      swift_once();
    }

    v30 = &qword_100981018;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = UITraitCollection.isSizeClassRegular.getter();

  if (v33)
  {
    if (qword_10096D988 != -1)
    {
      swift_once();
    }

    v34 = &qword_100981000;
  }

  else
  {
    if (qword_10096D9A8 != -1)
    {
      swift_once();
    }

    v34 = &qword_100981020;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = UITraitCollection.isSizeClassRegular.getter();

    if (v38)
    {
      if (qword_10096D990 != -1)
      {
        swift_once();
      }

      v39 = &qword_100981008;
    }

    else
    {
      if (qword_10096D9B0 != -1)
      {
        swift_once();
      }

      v39 = &qword_100981028;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = UITraitCollection.isSizeClassRegular.getter();

  v42 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_100353534();
    sub_100355870();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_100251D00(0), sub_100357DEC(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1003517F4()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = UITraitCollection.isSizeClassCompact.getter();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        sub_1004ABCF0();
      }
    }

    sub_100005744(0, &qword_100970180);
    v23 = static UIColor.primaryText.getter();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_setRequiresColorStatistics_;
      v30 = &selRef__setDefaultAttributes_;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = static UIColor.primaryText.getter();
    [v26 setTextColor:v27];
    v28 = &selRef_setRequiresColorStatistics_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      sub_1004ABCF0();
    }
  }

  sub_100005744(0, &qword_100970180);
  v32 = static UIColor.primaryText.getter();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_setRequiresColorStatistics_;
  if (v33)
  {
    v26 = v33;
    v27 = static UIColor.secondaryText.getter();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef__setDefaultAttributes_;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef__setDefaultAttributes_;
LABEL_23:
  v34 = [v1 v28[35]];
  v35 = UITraitCollection.isSizeClassCompact.getter();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[361]];
  v40 = [v1 v28[35]];
  v41 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v41)
  {
    if (qword_10096D920 != -1)
    {
      swift_once();
    }

    v42 = qword_1009CFB88;
  }

  else
  {
    if (qword_10096D918 != -1)
    {
      swift_once();
    }

    v42 = qword_1009CFB70;
  }

  v43 = sub_1000056A8(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_100351E5C()
{
  v1 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = String._bridgeToObjectiveC()();

  v2 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
  if (v8)
  {
    v9 = [v8 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 layer];

      [v11 setCompositingFilter:v15];
    }
  }

  if (v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView] setHidden:v14];
  sub_1004ABCF0();
}

id sub_10035217C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel;
  result = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel];
  if (!result || (result = [result text]) == 0)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_11;
  }

  v39 = v7;
  v16 = v3;
  v17 = a1;
  v18 = result;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (!a2)
  {

    v3 = v16;
    v7 = v39;
    if (*&v3[v14])
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v16;
    v7 = v39;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (*&v3[v14])
    {
LABEL_12:

      return [v3 setNeedsLayout];
    }

LABEL_14:
    v24 = type metadata accessor for FontUseCase();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v26 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v27 = [v3 traitCollection];
    v28 = UITraitCollection.isSizeClassRegular.getter();

    if (v28)
    {
      if (qword_10096D990 != -1)
      {
        swift_once();
      }

      v29 = &qword_100981008;
    }

    else
    {
      if (qword_10096D9B0 != -1)
      {
        swift_once();
      }

      v29 = &qword_100981028;
    }

    [v26 setFont:*v29];
    if (a2)
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    v31 = *&v3[v14];
    *&v3[v14] = v26;
    v32 = v26;

    v33 = [v3 traitCollection];
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v34 = UITraitCollection.isSizeClassCompact.getter();

      if (v34)
      {
        [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] addSubview:v32];
        sub_100005744(0, &qword_100970180);
        v35 = v32;
        v36 = static UIColor.secondaryText.getter();
LABEL_33:
        v37 = v36;
        [v35 setTextColor:v36];

        return [v3 setNeedsLayout];
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] addSubview:v32];
    sub_100005744(0, &qword_100970180);
    v35 = v32;
    v36 = static UIColor.primaryText.getter();
    goto LABEL_33;
  }

LABEL_19:
}

void sub_10035262C(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
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
    [v6 addTarget:v1 action:"dismissTapGestureRecognized:"];
    [v6 setDelegate:v1];

    [v1 addGestureRecognizer:v6];
  }
}

void sub_100352718()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_10035262C(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer])
    {
      [v0 removeGestureRecognizer:?];
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 0;
    }

    *&v0[v2] = 0;
  }
}

void sub_1003527B8(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_1003528B8()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_1003527B8([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_10035296C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = type metadata accessor for Artwork.Crop();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = Artwork.backgroundColor.getter();
        if (!v25)
        {
          sub_100005744(0, &qword_100970180);
          v25 = static UIColor.placeholderBackground.getter();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = UITraitCollection.isSizeClassRegular.getter();

        if (v28)
        {
          if (qword_10096D930 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_1009CFBB8;
        }

        else
        {
          if (qword_10096D928 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_1009CFBA0;
        }

        v31 = sub_1000056A8(v29, v30);
        sub_100357FA8(v31, v15);
        [v23 bounds];
        AspectRatio.height(fromWidth:)();
        [v23 bounds];
        Artwork.crop.getter();
        v32 = Artwork.Crop.preferredContentMode.getter();
        (*(v9 + 8))(v11, v8);
        Artwork.config(_:mode:prefersLayeredImage:)();
        [*&v23[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView();
          sub_100357838(&unk_1009840E0, type metadata accessor for VideoView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        }

        else
        {
          sub_100005744(0, &qword_100973120);
          sub_1000D0150();
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        }

        sub_100358070(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

uint64_t sub_100352DC4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork);
  *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork) = result;
  if (result)
  {
    if (v2)
    {
      type metadata accessor for Artwork();
      sub_100357838(&unk_1009811F0, &type metadata accessor for Artwork);
      swift_retain_n();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader);

    sub_100392960(v5, v4);

LABEL_9:
  }

  if (v2)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_100352F00(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

id sub_100352F9C()
{
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_1003530A8()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v0 + v6, v2);
  sub_100357838(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    v10 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView);
    v7(v5, v1 + v6, v2);
    v11 = MediaOverlayStyle.userInterfaceStyle.getter();
    v9(v5, v2);
    [v10 setOverrideUserInterfaceStyle:v11];
    v12 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView);
    v7(v5, v1 + v6, v2);
    v13 = MediaOverlayStyle.userInterfaceStyle.getter();
    v9(v5, v2);
    [v12 setOverrideUserInterfaceStyle:v13];
    v14 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView);
    v7(v5, v1 + v6, v2);
    v15 = MediaOverlayStyle.inverseUserInterfaceStyle.getter();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
    v16 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView);
    if (v16)
    {
      v7(v5, v1 + v6, v2);
      v17 = v16;
      v18 = MediaOverlayStyle.userInterfaceStyle.getter();
      v9(v5, v2);
      [v17 setOverrideUserInterfaceStyle:v18];
    }

    sub_100351E5C();
  }
}

void sub_10035338C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_1009D2208] = 1;
    *&v6[qword_100988CA8 + 8] = &off_1008BF048;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    UITraitCollection.isSizeClassRegular.getter();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_1003527B8([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = UITraitCollection.isSizeClassRegular.getter();

    if (v3)
    {
      sub_100353534();
    }

    [v1 setNeedsLayout];
  }
}

id sub_100353534()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_10075DCD8(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_10096D2F8;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_1001DA558();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_100353A78(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100353ACC;
}

void sub_100353ACC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1003578C8();
    swift_unknownObjectWeakAssign();
    sub_10035338C();
  }

  else
  {
    v2 = *a1;
    sub_1003578C8();
    swift_unknownObjectWeakAssign();
    sub_10035338C();
  }
}

uint64_t sub_100353B50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v232 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutRect();
  v234 = *(v6 - 1);
  v235 = v6;
  __chkstk_darwin(v6);
  v233 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v237 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v190 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v190 - v18;
  v271.receiver = v1;
  v271.super_class = ObjectType;
  objc_msgSendSuper2(&v271, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v272);
  if ((result & 1) == 0)
  {
    v193 = v5;
    v194 = v3;
    LayoutMarginsAware<>.layoutFrame.getter();
    v236 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = UITraitCollection.isSizeClassRegular.getter();

    if (v22)
    {
      if (qword_10096D930 != -1)
      {
        swift_once();
      }

      v23 = qword_1009CFBB8;
    }

    else
    {
      if (qword_10096D928 != -1)
      {
        swift_once();
      }

      v23 = qword_1009CFBA0;
    }

    v24 = sub_1000056A8(v11, v23);
    sub_100357FA8(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_10096D9C8 != -1)
    {
      swift_once();
    }

    v229 = ObjectType;
    v25 = type metadata accessor for UIButton.Configuration();
    sub_1000056A8(v25, qword_100981040);
    swift_beginAccess();
    v26 = UIButton.Configuration.image.getter();
    v231 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = UIButton.Configuration.preferredSymbolConfigurationForImage.getter();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;
        *&v268 = v35;
        v36 = v28[20];
        sub_100007000(&v15[v36]);
        sub_100005A38(&v268, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v228) = UITraitCollection.prefersRightToLeftLayouts.getter();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;

        if (v228)
        {
          *&v268 = v41;
        }

        else
        {
          *&v268 = v39;
        }

        v42 = v28[19];
        sub_100007000(&v15[v42]);
        sub_100005A38(&v268, &v15[v42]);
        v19 = v231;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = UITraitCollection.isSizeClassCompact.getter();

    if (v44)
    {
      if (Strong)
      {
        v269 = &type metadata for Double;
        v270 = &protocol witness table for Double;

        *&v268 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_100007000(&v15[v45]);
        sub_100005A38(&v268, &v15[v45]);
      }
    }

    else
    {
    }

    v192 = v11;
    sub_10035800C(v15, v19);
    sub_100357FA8(v19, v237);
    v46 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView];
    v269 = type metadata accessor for ShadowView();
    v270 = &protocol witness table for UIView;
    v227 = v46;
    *&v268 = v46;
    v47 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView];
    v266 = type metadata accessor for RoundedCornerView();
    v267 = &protocol witness table for UIView;
    *&v265 = v47;
    v48 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView];
    v264 = &protocol witness table for UIView;
    v263 = v266;
    v225 = v48;
    v226 = v47;
    *&v262 = v48;
    v49 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView];
    v50 = sub_100005744(0, &qword_100972EB0);
    v261 = &protocol witness table for UIView;
    v260 = v50;
    *&v259 = v49;
    v51 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
    v258 = &protocol witness table for UIView;
    v257 = v50;
    v223 = v51;
    v224 = v49;
    *&v256 = v51;
    v52 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView];
    v53 = sub_100005744(0, &qword_100973120);
    v255 = &protocol witness table for UIView;
    v254 = v53;
    v222 = v52;
    *&v253 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v209 = type metadata accessor for VideoView();
      v217 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v209 = 0;
      v217 = 0;
    }

    v228 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView;
    v221 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView];
    if (v221)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v215 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v215 = 0;
    }

    v220 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
    if (v220)
    {
      v212 = type metadata accessor for MirrorView();
      v211 = &protocol witness table for UIView;
    }

    else
    {
      v211 = 0;
      v212 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v252 = &protocol witness table for UIView;
    v251 = v56;
    *&v250 = v55;
    v57 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView];
    v218 = v55;
    v219 = v57;
    if (v57)
    {
      v205 = sub_100005744(0, &qword_10097E628);
      v204 = &protocol witness table for UIView;
    }

    else
    {
      v204 = 0;
      v205 = 0;
    }

    v216 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView];
    v58 = v216;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v249 = &protocol witness table for UIView;
    v248 = v59;
    *&v247 = v58;
    v203 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
    v60 = sub_100005744(0, &qword_1009811E0);
    v197 = v60;
    v214 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel];
    v61 = v214;
    v62 = type metadata accessor for DynamicTypeLabel();
    v63 = &protocol witness table for UILabel;
    v245 = v62;
    v246 = &protocol witness table for UILabel;
    v243 = &protocol witness table for UILabel;
    *&v244 = v61;
    v213 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel];
    v191 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
    v198 = v64;
    v242 = v62;
    v240 = &protocol witness table for UILabel;
    *&v241 = v213;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v199 = v66;
    v200 = v65;
    v210 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
    v239 = v62;
    *&v238 = v210;
    v67 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v201 = v63;
    v202 = v68;
    v69 = v10 + v8[23];
    v208 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
    v70 = v208;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v206 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
    v73 = v206;
    v207 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView();
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v195 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing;
    v196 = v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing];
    sub_10035800C(v237, v10);
    sub_100005A38(&v268, v10 + v8[5]);
    sub_100005A38(&v265, v10 + v8[6]);
    sub_100005A38(&v262, v10 + v8[7]);
    sub_100005A38(&v259, v10 + v8[8]);
    sub_100005A38(&v256, v10 + v8[9]);
    sub_100005A38(&v253, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v209;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v217;
    v77 = v10 + v8[12];
    v78 = v220;
    v79 = v221;
    *v77 = v221;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v215;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v211;
    v82 = v212;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_100005A38(&v250, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v219;
    *v83 = v219;
    *(v83 + 1) = 0;
    v85 = v204;
    v86 = v205;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_100005A38(&v247, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v203;
    *v87 = v203;
    *(v87 + 3) = v197;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_100005A38(&v244, v10 + v8[18]);
    sub_100005A38(&v241, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v198;
    *v89 = v198;
    *(v89 + 1) = 0;
    v91 = v199;
    v92 = v200;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_100005A38(&v238, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v201;
    v95 = v202;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v196;
    v96 = v67;
    v97 = v227;
    v98 = v226;
    v99 = v225;
    v100 = v224;
    v225 = v223;
    v237 = v222;
    Strong = v218;
    v224 = v216;
    v226 = v88;
    v101 = v214;
    v102 = v213;
    v103 = v210;
    v104 = v208;
    v105 = v207;
    v227 = v206;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    LayoutMarginsAware<>.layoutFrame.getter();
    v110 = v233;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v234[1](v110, v235);
    v115 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v273) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v274);
    v235 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v228];
    if (v120 && (v1[v195] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v275);
      v124 = [v1 traitCollection];
      v125 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v125)
      {
        if (*&v1[v191])
        {
          v121 = *&v1[v191];
        }

        else
        {
          v121 = v224;
        }
      }

      v126 = v121;
      v234 = v126;
      [v225 frame];
      v127 = CGRectGetHeight(v276);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v277.origin.x = v129;
      v277.origin.y = v131;
      v277.size.width = v133;
      v277.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v277));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_100250FB4(v138);
      v154 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = UITraitCollection.isSizeClassRegular.getter();

    if (v161)
    {
      v234 = v10;
      [v227 frame];
      MaxY = CGRectGetMaxY(v278);
      v163 = v231;
      sub_10002A400(&v231[*(v192 + 128)], *&v231[*(v192 + 128) + 24]);
      v164 = v193;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v166 = v165;
      (*(v232 + 8))(v164, v194);
      v167 = Strong;
      [Strong bounds];
      [v167 setContentSize:{CGRectGetWidth(v279), MaxY + v166 * 0.8}];
      v168 = [v1 traitCollection];
      v169 = UITraitCollection.isSizeClassCompact.getter();

      if (v169)
      {
        v170 = 1;
      }

      else
      {
        [v167 contentSize];
        v176 = v175;
        [v167 bounds];
        v170 = v176 <= CGRectGetHeight(v280);
      }

      v174 = v237;
      [v235 setAlwaysBounceVertical:v170];
      v10 = v234;
    }

    else
    {
      v171 = Strong;
      [Strong bounds];
      [v171 setContentSize:{v172, v173}];
      v163 = v231;
      v174 = v237;
    }

    [v174 bounds];
    sub_10035296C(v177, v178, 0);
    v179 = swift_unknownObjectWeakLoadStrong();
    if (v179)
    {
      v180 = v179;
      v181 = [v1 traitCollection];
      v182 = UITraitCollection.isSizeClassCompact.getter();

      if ((v182 & 1) == 0)
      {
        sub_100358070(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_100358070(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v226 frame];
      v184 = v183;
      [v180 frame];
      v186.f64[0] = v185 + -53.0;
      v187 = &v180[qword_1009D21B0];
      v188 = *&v180[qword_1009D21B0];
      v189 = *&v180[qword_1009D21B0 + 16];
      *v187 = xmmword_1007C8990;
      *(v187 + 2) = *&v186.f64[0];
      *(v187 + 3) = v184 + 25.0;
      v186.f64[1] = v184 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_1007C8990, v188), vceqq_f64(v186, v189)))) & 1) == 0)
      {
        sub_1004E2320();
      }
    }

    sub_100358070(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_100358070(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}

void sub_100354E34(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_1002C17B4();
  v9 = *(v4 + *a2);
  if (v9)
  {

    v9(a1);

    sub_10001F63C(v9);
  }
}

uint64_t sub_100354F34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100354E34(v8, a4);

  return sub_100007000(v8);
}

uint64_t sub_100354FAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v42[0]) = 1;
  *&v24 = a1;
  *(&v24 + 1) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  BYTE8(v26) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v27 = _Q0;
  v28 = _Q0;
  v29 = 15;
  sub_100005744(0, &qword_1009729E0);
  v18 = a1;
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v32 = xmmword_100975F50;
    v33 = xmmword_100975F60;
    v34 = xmmword_100975F70;
    v30 = xmmword_100975F30;
    v31 = xmmword_100975F40;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v36 = v24;
    v37 = v25;
    v42[0] = xmmword_100975F30;
    v42[1] = xmmword_100975F40;
    v42[3] = xmmword_100975F60;
    v42[4] = xmmword_100975F70;
    v35 = qword_100975F80;
    v41 = v29;
    v43 = qword_100975F80;
    v42[2] = xmmword_100975F50;
    sub_100357ED0(&v30, v22);
    xmmword_100975F50 = v38;
    xmmword_100975F60 = v39;
    xmmword_100975F70 = v40;
    qword_100975F80 = v41;
    xmmword_100975F30 = v36;
    xmmword_100975F40 = v37;
    sub_100357F40(v42);
    v20 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock);
    sub_10019DADC(&v24, v22);
    if (v20)
    {
      v21 = sub_10000827C(v20);
      v20(v21);
      sub_10001F63C(v20);
    }

    v22[2] = xmmword_100975F50;
    v22[3] = xmmword_100975F60;
    v22[4] = xmmword_100975F70;
    v23 = qword_100975F80;
    v22[0] = xmmword_100975F30;
    v22[1] = xmmword_100975F40;
    xmmword_100975F30 = v30;
    xmmword_100975F40 = v31;
    xmmword_100975F50 = v32;
    xmmword_100975F60 = v33;
    xmmword_100975F70 = v34;
    qword_100975F80 = v35;
    sub_100357F40(v22);
    return sub_10019DB38(&v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003552DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_100988CE8];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1000D0740;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_100235C48;
      v6[3] = &unk_1008BF1C8;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_100355414(0, 0);
}

void sub_100355414(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = UITraitCollection.isSizeClassRegular.getter();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_100357DC8;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_100007A08;
        v23[3] = &unk_1008BF0B0;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_1003590B8;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}

void sub_100355870()
{
  v1 = type metadata accessor for MediaOverlayStyle();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [objc_opt_self() effectWithStyle:7];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];
  v10 = *&v0[v6];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v0[v6];
  }

  else
  {
    v11 = 0;
  }

  *&v0[v6] = v9;
  v12 = v9;

  if (v12)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] insertSubview:v12 belowSubview:*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView]];
  }

  [v0 setNeedsLayout];

  v7 = *&v0[v6];
  if (v7)
  {
LABEL_8:
    [v7 setHidden:{0, v3}];
    v13 = *&v0[v6];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
      swift_beginAccess();
      (*(v2 + 16))(v5, &v0[v14], v1);
      v15 = v13;
      v16 = MediaOverlayStyle.userInterfaceStyle.getter();
      (*(v2 + 8))(v5, v1);
      [v15 setOverrideUserInterfaceStyle:v16];
    }
  }
}

void sub_100355A98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_100988CE8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_100355B2C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView) setAlpha:a1];
    [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton] setAlpha:a1];
  }
}

void sub_100355BC0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

void *(*sub_100355C54(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_100355CAC;
}

void *sub_100355CAC(void *result, char a2)
{
  if (a2)
  {

    sub_100355BC0(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

void sub_100355D54(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
      if ([v4 isHidden])
      {
        [v4 setAlpha:0.0];
        [v4 setHidden:0];
      }
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = a1 & 1;
    *(v7 + 24) = a1 & 1;
    v19 = sub_100357DD4;
    v20 = v7;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100007A08;
    v18 = &unk_1008BF128;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v19 = sub_100357DE0;
    v20 = v11;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100504C5C;
    v18 = &unk_1008BF178;
    v12 = _Block_copy(&v15);

    [v5 animateWithDuration:v9 animations:v12 completion:0.3];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton] setHidden:a1 & 1];
    [v13 setAlpha:v14];

    [v2 setNeedsLayout];
  }
}

void sub_100355FF8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton);

    v6 = 1.0;
    if (a2)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_10035608C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton);

    [v6 setHidden:a3 & 1];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

BOOL sub_100356148(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer);
  if (v4)
  {
    sub_100005744(0, &unk_100993110);
    v6 = a1;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

BOOL sub_1003562A0(void *a1, id a2)
{
  v3 = v2;
  [a2 locationInView:v2];
  v7 = v6;
  v9 = v8;
  v10 = [v2 hitTest:0 withEvent:?];
  v11 = *&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer];
  if (v11)
  {
    sub_100005744(0, &unk_100993110);
    v12 = a1;
    v13 = v11;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      [v3 bounds];
      v62.x = v7;
      v62.y = v9;
      if (CGRectContainsPoint(v65, v62))
      {
        if (v10)
        {
          sub_100005744(0, &qword_100972EB0);
          v15 = v10;
          v3 = v3;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            v17 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock;
            return *&v3[v17] != 0;
          }
        }

        return 0;
      }

      goto LABEL_27;
    }
  }

  v18 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer];
  if (!v18 || (sub_100005744(0, &unk_100993110), v19 = a1, v20 = v18, v21 = static NSObject.== infix(_:_:)(), v20, v19, (v21 & 1) == 0))
  {
    v41 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer];
    if (!v41 || (sub_100005744(0, &unk_100993110), v42 = a1, v43 = v41, v44 = static NSObject.== infix(_:_:)(), v43, v42, (v44 & 1) == 0))
    {

      return 1;
    }

    v45 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
    [a2 locationInView:v45];
    v47 = v46;
    v49 = v48;
    [v45 bounds];
    v64.x = v47;
    v64.y = v49;
    if (CGRectContainsPoint(v67, v64))
    {
      if (!v10 || (objc_opt_self(), v50 = swift_dynamicCastObjCClass(), v10, !v50))
      {
        v17 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock;
        return *&v3[v17] != 0;
      }

      return 0;
    }

    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v23 = Strong;
  [Strong frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  v63.x = v7;
  v63.y = v9;
  if (!CGRectContainsPoint(v66, v63))
  {
    goto LABEL_27;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;
  v34 = *&v32[qword_100988CE0];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = dispatch thunk of VideoPlayer.isPlaying.getter();

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
  if (!v10)
  {
    if (!v37)
    {
      v60 = 0;
      return 0;
    }

    return 1;
  }

  if (v37)
  {
    sub_100005744(0, &qword_100972EB0);
    v38 = v10;
    v39 = v37;
    v40 = static NSObject.== infix(_:_:)();

    if (v40)
    {

      return 0;
    }

    v52 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
  }

  else
  {
    v52 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
    v53 = 0;
  }

  sub_100005744(0, &qword_100972EB0);
  v10 = v10;
  v54 = v52;
  v55 = static NSObject.== infix(_:_:)();

  if (v55)
  {
LABEL_27:

    return 0;
  }

  v56 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  v57 = v10;
  v58 = v56;
  v59 = static NSObject.== infix(_:_:)();

  if (v59)
  {

    return 0;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass() == 0;

  return v61;
}

id sub_10035679C(void *a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.isSizeClassRegular.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.isSizeClassRegular.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_1003510D4();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 2;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
LABEL_10:
  v8 = [v2 traitCollection];
  v9 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v7 == 2 || ((v9 ^ v7) & 1) != 0)
  {
    goto LABEL_18;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_18;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v15 != v16)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1003517F4();
    goto LABEL_19;
  }

LABEL_19:
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (!a1 || v19 != [a1 userInterfaceStyle])
  {
    sub_100351E5C();
  }

  v20 = [v2 traitCollection];
  v21 = [v20 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v21 != result))
  {
    v23 = [v2 traitCollection];
    v24 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v24)
    {
      v25 = -*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin];
    }

    else
    {
      v25 = 0.0;
    }

    return [*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v25}];
  }

  return result;
}

uint64_t type metadata accessor for AppEventDetailPageView()
{
  result = qword_100981198;
  if (!qword_100981198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100356EA0()
{
  result = type metadata accessor for MediaOverlayStyle();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100356FD4(void *a1)
{
  sub_1003578C8();
  swift_unknownObjectWeakAssign();
  sub_10035338C();
}

uint64_t (*sub_100357024(uint64_t **a1))()
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
  v2[4] = sub_100353A78(v2);
  return sub_1000B4CAC;
}

uint64_t (*sub_1003570B8(void *a1))()
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
  v2[4] = sub_100355C54(v2);
  return sub_1000C2700;
}

id sub_100357128(char a1, char a2)
{
  *(*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton] + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive) = a1;
  sub_1004ACDC0();
  sub_1004ACEC4(a2);

  return [v2 setNeedsLayout];
}

CGFloat sub_1003571D8()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_100357234()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100357838(&unk_100981200, type metadata accessor for AppEventDetailPageView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1003572A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100357838(&unk_100981200, type metadata accessor for AppEventDetailPageView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100357334(uint64_t *a1))()
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
  sub_100357838(&unk_100981200, type metadata accessor for AppEventDetailPageView);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1003573F0(void *a1)
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
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView);
  sub_100005744(0, &qword_100972EB0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_100357488(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_100005744(0, &qword_100972EB0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
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

uint64_t sub_100357838(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003578C8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100357838(&qword_100973190, type metadata accessor for VideoView);
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      v4 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
      sub_100005744(0, &qword_100972EB0);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];
        }

        [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView] setHidden:0];
        v9 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer;
        if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer])
        {
          [v5 removeGestureRecognizer:?];
          v10 = *&v1[v9];
        }

        else
        {
          v10 = 0;
        }

        *&v1[v9] = 0;

        v11 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView;
        v12 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
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

id sub_100357ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock];
  v12 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock];
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
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
  sub_10000827C(a1);
  result = sub_10001F63C(v12);
  if (*v11)
  {
    v17 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton;
    if (!*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton])
    {
      sub_100005744(0, &qword_1009811E0);
      if (qword_10096D9C8 != -1)
      {
        swift_once();
      }

      v18 = sub_1000056A8(v6, qword_100981040);
      swift_beginAccess();
      (*(v7 + 16))(v10, v18, v6);
      v19 = UIButton.init(configuration:primaryAction:)();
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

      sub_100005744(0, &qword_100970180);
      v23 = static UIColor.primaryText.getter();
      v24 = [v23 colorWithAlphaComponent:0.7];

      [v22 setTintColor:v24];
      [v22 setHitTestInsets:{-10.0, -10.0, -10.0, -10.0}];
      [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] addSubview:v22];
      sub_100351E5C();

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

id sub_100357DEC(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView];
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
    v8 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
    if (Strong)
    {
      [v8 insertSubview:v6 aboveSubview:Strong];
    }

    else
    {
      [v8 insertSubview:v6 aboveSubview:*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView]];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_100357ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097F520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100357F40(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097F520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100357FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035800C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100358070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1003580D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v2 - 8);
  v102 = &v95[-v3];
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v95[-v9];
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel] = 0;
  v11 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer] = 0;
  v12 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock];
  *v12 = 0;
  v12[1] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer] = 0;
  v13 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer] = 0;
  v14 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators] = 0;
  v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing] = 0;
  v16 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
  v17 = enum case for MediaOverlayStyle.matchSystem(_:);
  v18 = type metadata accessor for MediaOverlayStyle();
  (*(*(v18 - 8) + 104))(&v1[v16], v17, v18);
  v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter] = 0;
  v19 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] = v19;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView] = v20;
  v21 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] = v21;
  v22 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView] = v22;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] = [objc_allocWithZone(type metadata accessor for OverlayContentContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView] = v23;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = type metadata accessor for FontUseCase();
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
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26(v10, 1, 1, v24);
  v106(v7, v28, v4);
  v31 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v101 = v24;
  v104 = v26;
  v105 = v25;
  v26(v10, 1, 1, v24);
  v106(v7, v96, v97);
  v32 = objc_allocWithZone(v29);
  v100 = v10;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton] = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
  v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView] = v33;
  type metadata accessor for SmallLockupView();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView] = v34;
  v35 = sub_10035F010();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton] = v35;
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
  v42 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView;
  [*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView) setClipsToBounds:0];
  [*(v41 + v42) setContentInsetAdjustmentBehavior:2];
  [v41 addSubview:*(v41 + v42)];
  v43 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView;
  v44 = qword_10096DA90;
  v45 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView);
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Shadow();
  v47 = sub_1000056A8(v46, qword_1009CFE10);
  v48 = *(v46 - 8);
  v49 = v102;
  (*(v48 + 16))(v102, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  dispatch thunk of ShadowView.shadow.setter();

  v50 = *(v41 + v43);
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  [*(v41 + v42) addSubview:*(v41 + v43)];
  v102 = v42;
  v51 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView;
  [*(v41 + v42) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView)];
  v52 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView;
  [*(v41 + v51) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView)];
  v53 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView)];
  v54 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView;
  [*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView) setContentMode:2];
  [*(v41 + v54) setClipsToBounds:1];
  [*(v41 + v54) setAccessibilityIgnoresInvertColors:1];
  [*(v41 + v53) addSubview:*(v41 + v54)];
  v55 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView)];
  v56 = *(v41 + v51);
  v106 = v36;
  [v56 addSubview:v36];
  v57 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView;
  v58 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView);
  LOBYTE(v51) = v58[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  v58[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 1;
  v59 = v58;
  sub_1002C3F30(v51);

  *(*(v41 + v57) + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008BF008;
  swift_unknownObjectWeakAssign();
  [*(v41 + v55) addSubview:*(v41 + v57)];
  v60 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel;
  v61 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel);
  v62 = sub_100005744(0, &qword_100970180);
  v63 = v61;
  v64 = static UIColor.primaryText.getter();
  v65 = [v64 colorWithAlphaComponent:0.7];

  [v63 setTextColor:v65];
  [*(v41 + v55) addSubview:*(v41 + v60)];
  v66 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel);
  v67 = static UIColor.primaryText.getter();
  [v66 setTextColor:v67];

  v68 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton);
  [v68 addTarget:v41 action:"notifyMeButtonTapped:" forControlEvents:64];

  v69 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView;
  v70 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView);
  ObjectType = v62;
  v71 = static UIColor.primaryText.getter();
  v72 = [v71 colorWithAlphaComponent:0.5];

  [v70 setBackgroundColor:v72];
  [*(v41 + v52) addSubview:*(v41 + v69)];
  v73 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView;
  v74 = qword_10096DDA0;
  v75 = *(*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = v101;
  v77 = sub_1000056A8(v101, qword_1009D0878);
  v78 = *(v103 + 16);
  v79 = v100;
  v78(v100, v77, v76);
  v80 = v104;
  v104(v79, 0, 1, v76);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v81 = qword_10096DDA8;
  v82 = *(*(v41 + v73) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = sub_1000056A8(v76, qword_1009D0890);
  v78(v79, v83, v76);
  v80(v79, 0, 1, v76);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v84 = *(*(v41 + v73) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v85 = static UIColor.primaryText.getter();
  v86 = [v85 colorWithAlphaComponent:0.7];

  [v84 setTextColor:v86];
  v87 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView;
  v88 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView);
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 whiteColor];
  v92 = [v91 colorWithAlphaComponent:0.2];

  dispatch thunk of RoundedCornerView.borderColor.setter();
  v93 = *(v41 + v87);
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*(v41 + v87) setUserInteractionEnabled:0];
  [*(v41 + v87) setHidden:1];
  [*&v102[v41] addSubview:*(v41 + v87)];
  sub_1003510D4();
  sub_1003517F4();
  sub_100351E5C();

  return v41;
}

void sub_100358EC0()
{
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing) = 0;
  v6 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = type metadata accessor for MediaOverlayStyle();
  (*(*(v8 - 8) + 104))(v0 + v6, v7, v8);
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003590DC@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_10002849C(&qword_100981220);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_10002849C(&qword_100981228);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = type metadata accessor for ShelfBackground();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_10002849C(&unk_1009731F0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = type metadata accessor for Shelf.ContentType();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v143 = v45;
  ReadOnlyLens.subscript.getter();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  v46(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v32, &unk_10098FFB0);
  v142 = v35;
  sub_100031660(v35, v48, &unk_10098FFB0);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10002B894(v48, &unk_10098FFB0);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    ReadOnlyLens.subscript.getter();

    v46(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_100031660(v54, &v58[v57], &unk_100992460);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v63 = v135;
    ReadOnlyLens.subscript.getter();

    v134 = v46;
    v46(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = static ShelfBackground.== infix(_:_:)();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10002B894(v145, &unk_100992460);
      sub_10002B894(v142, &unk_10098FFB0);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10002B894(v71 + v59, &unk_100992460);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_100031660(v71 + v59, v130, &unk_100992460);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_100031660(v142, v123, &unk_10098FFB0);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10002B894(v86, &unk_10098FFB0);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          ReadOnlyLens.subscript.getter();

          v134(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_100031660(v101, v125, &qword_100981228);
        sub_100031660(v97, v102 + v100, &qword_100981228);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10002B894(v97, &qword_100981228);
          sub_10002B894(v131, &qword_100981228);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10002B894(v102, &qword_100981228);
LABEL_44:
            if (qword_10096E6E0 != -1)
            {
              swift_once();
            }

            v115 = type metadata accessor for StaticDimension();
            v116 = sub_1000056A8(v115, qword_1009D24C0);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_1000056E0(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_100031660(v102, v120, &qword_100981228);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_10035CE6C(&qword_100981230, &type metadata accessor for ShelfBackground);
            LODWORD(v144) = dispatch thunk of static Equatable.== infix(_:_:)();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10002B894(v128, &qword_100981228);
            sub_10002B894(v104, &qword_100981228);
            v114(v105, v88);
            sub_10002B894(v102, &qword_100981228);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10002B894(v128, &qword_100981228);
          sub_10002B894(v104, &qword_100981228);
          (*(v138 + 8))(v105, v88);
        }

        sub_10002B894(v102, &qword_100981220);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10002B894(v145, &unk_100992460);
    sub_10002B894(v142, &unk_10098FFB0);
    (*(v82 + 8))(v143, v83);
    return sub_10002B894(v71, &qword_100972A48);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_100031660(v71 + v59, v126, &unk_100992460);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10002B894(v145, &unk_100992460);
        sub_10002B894(v142, &unk_10098FFB0);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_100031660(v145, v129, &unk_100992460);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10002B894(v91, &unk_100992460);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_10096E560 != -1)
      {
        swift_once();
      }

      if (sub_100295E2C(v92, qword_1009D1F68))
      {
        if (qword_10096E6C8 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for StaticDimension();
        v94 = sub_1000056A8(v93, qword_1009D2478);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_1000056E0(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10002B894(v90, &unk_100992460);
        sub_10002B894(v142, &unk_10098FFB0);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_100031660(v71 + v57, v121, &unk_100992460);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10002B894(v71 + v59, &unk_100992460);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for StaticDimension();
  sub_1000056A8(v108, qword_1009D2490);
  StaticDimension.constant.getter();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10002B894(v145, &unk_100992460);
  sub_10002B894(v142, &unk_10098FFB0);
  return (v107)(v143, v81);
}

uint64_t sub_10035A2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v163 = a2;
  v3 = type metadata accessor for ShelfBackground();
  v155 = *(v3 - 8);
  v156 = v3;
  __chkstk_darwin(v3);
  v154 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v141 - v6;
  v7 = type metadata accessor for PageGrid();
  v149 = *(v7 - 8);
  v150 = v7;
  __chkstk_darwin(v7);
  v148 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v162);
  v166 = &v141 - v9;
  v10 = type metadata accessor for Shelf.ContentType();
  v11 = *(v10 - 8);
  v164 = v10;
  v165 = v11;
  __chkstk_darwin(v10);
  v161 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009731F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v153 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v141 - v17;
  v19 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v19 - 8);
  v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v141 - v23;
  __chkstk_darwin(v25);
  v27 = &v141 - v26;
  v28 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v28 - 8);
  v142 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v141 - v31;
  __chkstk_darwin(v32);
  v144 = &v141 - v33;
  __chkstk_darwin(v34);
  v147 = &v141 - v35;
  __chkstk_darwin(v36);
  v151 = &v141 - v37;
  __chkstk_darwin(v38);
  v160 = &v141 - v39;
  __chkstk_darwin(v40);
  v159 = &v141 - v41;
  __chkstk_darwin(v42);
  v157 = &v141 - v43;
  __chkstk_darwin(v44);
  v152 = &v141 - v45;
  __chkstk_darwin(v46);
  v146 = &v141 - v47;
  __chkstk_darwin(v48);
  v145 = &v141 - v49;
  __chkstk_darwin(v50);
  v143 = &v141 - v51;
  __chkstk_darwin(v52);
  v54 = &v141 - v53;
  v167 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v24, &unk_10098FFB0);
  sub_100094E74(v21, v27);
  if ((*(v14 + 48))(v27, 1, v13) == 1)
  {
    sub_10002B894(v27, &unk_10098FFB0);
    v55 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v14 + 8))(v27, v13);
    v55 = 0;
  }

  v56 = v165;
  v57 = v54;
  v58 = v54;
  v59 = v164;
  (*(v165 + 56))(v57, v55, 1, v164);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v60 = v161;
  ReadOnlyLens.subscript.getter();

  v61 = *(v14 + 8);
  v61(v18, v13);
  v62 = v166;
  v63 = v60;
  v64 = *(v162 + 48);
  (*(v56 + 32))(v166, v63, v59);
  v162 = v58;
  sub_100031660(v58, &v62[v64], &unk_100992460);
  v65 = *(v56 + 88);
  v66 = v65(v62, v59);
  if (v66 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v70 = v159;
      sub_100031660(&v62[v64], v159, &unk_100992460);
      v71 = v65(v70, v59);
      v160 = v70;
      if (v71 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_10096E6D0 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for StaticDimension();
        sub_1000056A8(v72, qword_1009D2490);
        StaticDimension.constant.getter();
        v73 = v163;
        v163[3] = &type metadata for CGFloat;
        v73[4] = &protocol witness table for CGFloat;
        *v73 = v74;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for StaticDimension();
    v138 = sub_1000056A8(v137, qword_1009D24C0);
    v139 = v163;
    v163[3] = v137;
    v139[4] = &protocol witness table for StaticDimension;
    v140 = sub_1000056E0(v139);
    (*(*(v137 - 8) + 16))(v140, v138, v137);
    sub_10002B894(v162, &unk_100992460);
    v69 = &qword_100972A48;
    v68 = v62;
    return sub_10002B894(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v75 = v157;
    sub_100031660(&v62[v64], v157, &unk_100992460);
    v76 = v65(v75, v59);
    v160 = v75;
    if (v76 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v56 + 8))(v160, v59);
    goto LABEL_85;
  }

  if (v66 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v86 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v66 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v87 = v153;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v61(v87, v13);
    v89 = v154;
    v88 = v155;
    v90 = v156;
    (*(v155 + 104))(v154, enum case for ShelfBackground.editorsChoice(_:), v156);
    v91 = v158;
    v92 = static ShelfBackground.== infix(_:_:)();
    v93 = *(v88 + 8);
    v93(v89, v90);
    v93(v91, v90);
    if ((v92 & 1) == 0)
    {
      goto LABEL_85;
    }

    v94 = v163;
    v163[3] = &type metadata for CGFloat;
    v94[4] = &protocol witness table for CGFloat;
    *v94 = 0x403E000000000000;
    goto LABEL_22;
  }

  if (v66 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v95 = v152;
      sub_100031660(&v62[v64], v152, &unk_100992460);
      v96 = v65(v95, v59);
      if (v96 == enum case for Shelf.ContentType.ribbonFlow(_:) || v96 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10002B894(&v62[v64], &unk_100992460);
        (*(v56 + 8))(v62, v59);
        if (qword_10096E6E0 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for StaticDimension();
        v78 = v77;
        v79 = qword_1009D24C0;
        goto LABEL_19;
      }

      (*(v56 + 8))(v95, v59);
    }

LABEL_16:
    sub_10002B894(&v62[v64], &unk_100992460);
    (*(v56 + 8))(v62, v59);
    if (qword_10096E6C8 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for StaticDimension();
    v78 = v77;
    v79 = qword_1009D2478;
LABEL_19:
    v80 = sub_1000056A8(v77, v79);
    v81 = v163;
    v163[3] = v78;
    v81[4] = &protocol witness table for StaticDimension;
    v82 = sub_1000056E0(v81);
    (*(*(v78 - 8) + 16))(v82, v80, v78);
    v69 = &unk_100992460;
    v68 = v162;
    return sub_10002B894(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v83 = type metadata accessor for SpacerDimension();
    v84 = v163;
    v163[3] = v83;
    v84[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension);
    sub_1000056E0(v84);
    SpacerDimension.init(constant:)();
    goto LABEL_22;
  }

  v97 = enum case for Shelf.ContentType.productReview(_:);
  if (v66 == enum case for Shelf.ContentType.productReview(_:))
  {
    v98 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v99 = v151;
    sub_100031660(&v62[v64], v151, &unk_100992460);
    v100 = v65(v99, v59);
    if (v100 == v98)
    {
      v101 = v148;
      ShelfLayoutContext.contentPageGrid.getter();
      PageGrid.interColumnSpace.getter();
      v103 = v102;
      (*(v149 + 8))(v101, v150);
      v104 = v163;
      v163[3] = &type metadata for CGFloat;
      v104[4] = &protocol witness table for CGFloat;
      *v104 = v103;
      goto LABEL_22;
    }

    if (v100 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v160 = v99;
    if (v100 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v115 = v163;
    v163[3] = &type metadata for Double;
    v115[4] = &protocol witness table for Double;
    *v115 = 0;
LABEL_22:
    sub_10002B894(v162, &unk_100992460);
    sub_10002B894(&v62[v64], &unk_100992460);
    return (*(v56 + 8))(v62, v59);
  }

  v105 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v66 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v105 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v106 = v160;
    sub_100031660(&v62[v64], v160, &unk_100992460);
    v107 = v65(v106, v59);
    if (v107 == v97)
    {
      if (qword_10096E6D0 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for StaticDimension();
      v109 = v108;
      v110 = qword_1009D2490;
LABEL_53:
      v112 = sub_1000056A8(v108, v110);
      v113 = v163;
      v163[3] = v109;
      v113[4] = &protocol witness table for StaticDimension;
      v114 = sub_1000056E0(v113);
      (*(*(v109 - 8) + 16))(v114, v112, v109);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v66 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v111 = v147;
    sub_100031660(&v62[v64], v147, &unk_100992460);
    v107 = v65(v111, v59);
    v160 = v111;
LABEL_49:
    if (v107 != v105)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for StaticDimension();
    v109 = v108;
    v110 = qword_1009D24A8;
    goto LABEL_53;
  }

  if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v116 = v146;
    sub_100031660(&v62[v64], v146, &unk_100992460);
    v117 = v65(v116, v59);
    v160 = v116;
    if (v117 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v118 = v145;
    sub_100031660(&v62[v64], v145, &unk_100992460);
    v119 = v65(v118, v59);
    v160 = v118;
    if (v119 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v120 = v144;
    sub_100031660(&v62[v64], v144, &unk_100992460);
    v121 = v65(v120, v59);
    v160 = v120;
    if (v121 != v86)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v122 = v64;
  if (v66 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v129 = v66;
    v130 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v66 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v131 = v142;
      sub_100031660(&v62[v64], v142, &unk_100992460);
      v132 = v65(v131, v59);
      v160 = v131;
      if (v132 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if (v66 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v135 = v141;
      sub_100031660(&v62[v64], v141, &unk_100992460);
      v136 = v65(v135, v59);
      if (v136 != v130)
      {
        v160 = v141;
        if (v136 != v129)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10002B894(&v62[v64], &unk_100992460);
    (*(v56 + 8))(v62, v59);
    v133 = type metadata accessor for SpacerDimension();
    v134 = v163;
    v163[3] = v133;
    v134[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension);
    sub_1000056E0(v134);
    SpacerDimension.init(constant:)();
    goto LABEL_6;
  }

  v56 = v165;
  v62 = v166;
  v59 = v164;
  if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
  {
LABEL_5:
    sub_10002B894(&v62[v64], &unk_100992460);
    (*(v56 + 8))(v62, v59);
    v67 = v163;
    v163[3] = &type metadata for Double;
    v67[4] = &protocol witness table for Double;
    *v67 = 0;
LABEL_6:
    v68 = v162;
    v69 = &unk_100992460;
    return sub_10002B894(v68, v69);
  }

  v123 = v143;
  sub_100031660(&v62[v122], v143, &unk_100992460);
  if (v65(v123, v59) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v59 = v164;
    v56 = v165;
    (*(v165 + 8))(v143, v164);
    v62 = v166;
    v64 = v122;
    goto LABEL_5;
  }

  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for StaticDimension();
  v125 = sub_1000056A8(v124, qword_1009D2490);
  v126 = v163;
  v163[3] = v124;
  v126[4] = &protocol witness table for StaticDimension;
  v127 = sub_1000056E0(v126);
  (*(*(v124 - 8) + 16))(v127, v125, v124);
  sub_10002B894(v162, &unk_100992460);
  v128 = v166;
  sub_10002B894(&v166[v122], &unk_100992460);
  return (*(v165 + 8))(v128, v164);
}