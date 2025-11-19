uint64_t sub_1000EF7F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000EF870(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for MetricsPipeline();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate();
  v12 = objc_allocWithZone(v11);
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC8AppStore28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v34.receiver = v12;
  v34.super_class = v11;
  v13 = objc_msgSendSuper2(&v34, "init");

  *(v4 + 32) = v13;
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v14 = v33;
  *(v4 + 40) = v33;
  sub_100005744(0, &qword_10098D1A0);
  v15 = v14;
  inject<A, B>(_:from:)();
  v16 = v33;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_rootViewController] = a2;
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
  *(a3 + 16) = sub_1000EFBD4;
  *(a3 + 24) = v21;

  v23 = v20;
  sub_10001F63C(v22);
  v24 = *(v4 + 40);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v4 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v28 = v26;
  v29 = v24;

  ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)();

  return v4;
}

uint64_t sub_1000EFBE4()
{
  v1 = *(type metadata accessor for ArcadeStateChange() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000EF030(v0 + v2, v4, v5);
}

uint64_t sub_1000EFC7C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EFCF4()
{
  result = qword_100973EE0;
  if (!qword_100973EE0)
  {
    sub_100005744(255, &qword_1009726E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973EE0);
  }

  return result;
}

uint64_t sub_1000EFD98(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000EFF20()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EF80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D3988);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1000F0068()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EF78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D3970);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1000F0240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F0288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = type metadata accessor for IndexSet();
  __chkstk_darwin(v20);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_10002849C(&qword_100973F48);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  sub_10074A548();
  v19[1] = a1;
  result = TitledButtonStack.buttons.getter();
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    TitledButtonStack.regularLineBreaks.getter();
    TitledButtonStack.compactLineBreaks.getter();
    sub_10002849C(&qword_100973F50);
    Conditional<>.init(regularValue:compactValue:)();
    v17 = sub_10002849C(&qword_100973F58);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    v18 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_lineBreaks;
    swift_beginAccess();
    sub_1000F0514(v11, v4 + v18);
    swift_endAccess();
    return [v4 setNeedsLayout];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      sub_10074A6E0(v16, a3);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F0514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973F48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F05C0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AspectRatio();
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  return AspectRatio.init(_:_:)();
}

id sub_1000F0620(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  if (qword_10096D048 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for AspectRatio();
  v12 = sub_1000056A8(v11, qword_1009CDF60);
  (*(*(v11 - 8) + 16))(&v4[v10], v12, v11);
  swift_unknownObjectWeakInit();
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong _setContinuousCornerRadius:20.0];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v13 contentView];
    [v18 addSubview:v17];
  }

  return v13;
}

uint64_t sub_1000F07CC(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100028004();
      v5 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_1000F0880(void *a1)
{
  sub_1000F1AA0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1000F0930(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000F0984;
}

void sub_1000F0984(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1000F1AA0();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1000F1AA0();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_1000F0B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v4 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v44 - v7;
  v8 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v8 - 8);
  v48 = &v44 - v9;
  v10 = type metadata accessor for VideoControls();
  __chkstk_darwin(v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  v14 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for VideoFillMode();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VideoConfiguration();
  v52 = *(v20 - 8);
  v53 = v20;
  __chkstk_darwin(v20);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AspectRatio();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_10018957C();
  v27 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaVideo();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
  }

  v55[0] = v28;
  v29 = [v26 traitCollection];
  v30 = TodayCardMediaWithArtwork.video(for:)();

  if (!v30)
  {
  }

  v31 = Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  v32 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  swift_beginAccess();
  (*(v23 + 40))(&v26[v32], v25, v22);
  swift_endAccess();
  (*(v45 + 104))(v19, enum case for VideoFillMode.scaleAspectFill(_:), v17);
  v45 = v31;
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  (*(v23 + 56))(v16, 0, 1, v22);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  v33 = v51;
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  v34 = v55[0];
  Video.playbackId.getter();
  v35 = v48;
  Video.videoUrl.getter();
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v49;
  Video.templateMediaEvent.getter();
  v38 = v50;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView();
  sub_1000F1B70(&qword_100973190, type metadata accessor for VideoView);
  v47 = v34;
  v39 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v38, &unk_100973A50);
  sub_10002B894(v37, &unk_100973A50);
  sub_10002B894(v35, &qword_100982460);
  sub_10002B894(v55, &qword_10096FB90);
  sub_1000F1AA0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = [v26 contentView];
    [v42 addSubview:v41];

    [v26 setNeedsLayout];
  }

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  sub_1000F12AC();

  return (*(v52 + 8))(v33, v53);
}

void sub_1000F12AC()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Video.preview.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v8], v2);
    LOBYTE(v8) = AspectRatio.isPortrait.getter();
    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      if (qword_10096D040 != -1)
      {
        swift_once();
      }

      v10 = qword_1009CDF48;
    }

    else
    {
      if (qword_10096D038 != -1)
      {
        swift_once();
      }

      v10 = qword_1009CDF30;
    }

    sub_1000056A8(v2, v10);
    [v1 bounds];
    AspectRatio.maxSize(fitting:)();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(filling:)();
    v9(v5, v2);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for VideoView();
    sub_1000F1B70(&unk_1009840E0, type metadata accessor for VideoView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
  }
}

uint64_t sub_1000F15A4()
{
  v1 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  v2 = type metadata accessor for AspectRatio();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for VideoTodayBrickCollectionViewCell()
{
  result = qword_100973F88;
  if (!qword_100973F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F16EC()
{
  result = type metadata accessor for AspectRatio();
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

uint64_t (*sub_1000F1798(uint64_t **a1))()
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
  v2[4] = sub_1000F0930(v2);
  return sub_1000C2700;
}

uint64_t sub_1000F1808()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000F1B70(&qword_100973FA8, type metadata accessor for VideoTodayBrickCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000F187C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000F1B70(&qword_100973FA8, type metadata accessor for VideoTodayBrickCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000F1908(uint64_t *a1))()
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
  sub_1000F1B70(&qword_100973FA8, type metadata accessor for VideoTodayBrickCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

void sub_1000F1AA0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1000F1B70(&qword_100973190, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1000F07CC(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1000F1B70(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1000F1BB8(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9)
{
  v17 = sub_10002849C(&qword_100973FB0);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = type metadata accessor for TodayCardArtworkLayout();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v56 - v28;
  v58 = a1;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  v59 = a9;
  if (a9)
  {
    v57 = TodayCardArtworkLayout.expandedContentMode.getter();
    TodayCardArtworkSizedLayoutMetrics.expandedSize.getter();
  }

  else
  {
    v57 = TodayCardArtworkLayout.collapsedContentMode.getter();
    TodayCardArtworkSizedLayoutMetrics.collapsedSize.getter();
  }

  sub_1000F1F50(v22, v19);
  v30 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.LayoutSize();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v19, 1, v30) == 1)
  {
    sub_1000F1FC0(v19);
  }

  else
  {
    sub_1000F22DC();
    a6 = v32;
    a7 = v33;
    (*(v31 + 8))(v19, v30);
  }

  sub_1000F2608(a6, a7, a4, a5);
  v35 = v34;
  v37 = v36;
  sub_1000F1FC0(v22);
  v60 = a2;
  v61 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = sub_1000F2794(v57, 0.0, 0.0, v35, v37, v38, a3, v40, a5);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  if (v59)
  {
    TodayCardArtworkLayout.expandedLayoutInsets.getter();
  }

  else
  {
    TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  }

  v51 = v49;
  v52 = v50;
  v53 = *(v24 + 8);
  v53(v26, v23);
  v54 = sub_1000F2028(v52, v51, v60, v39, v61, v41, v42, v44, v46, v48);
  v53(v29, v23);
  return v54;
}

uint64_t sub_1000F1F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1FC0(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000F2028(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v52.size.width = a9;
  v52.size.height = a10;
  v52.origin.x = a7;
  v52.origin.y = a8;
  v50 = a2;
  v53 = CGRectOffset(v52, a1, a2);
  x = v53.origin.x;
  width = v53.size.width;
  height = v53.size.height;
  if (a1 > 0.0)
  {
    rect = v53.origin.y;
    v48 = v53.size.width;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    if (CGRectGetMinX(v54) < MinX)
    {
      v55.origin.x = x;
      v55.origin.y = rect;
      v55.size.width = v48;
      v55.size.height = height;
      v47 = CGRectGetMinX(v55);
      v56.origin.x = a3;
      v56.origin.y = a4;
      v56.size.width = a5;
      v56.size.height = a6;
      x = x - (v47 - CGRectGetMinX(v56));
    }

    width = v48;
    v53.origin.y = rect;
  }

  if (a1 < 0.0)
  {
    v27 = x;
    y = v53.origin.y;
    v29 = width;
    v30 = height;
    MaxX = CGRectGetMaxX(v53);
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    if (MaxX < CGRectGetMaxX(v57))
    {
      v58.origin.x = a3;
      v58.origin.y = a4;
      v58.size.width = a5;
      v58.size.height = a6;
      v32 = CGRectGetMaxX(v58);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      x = x + v32 - CGRectGetMaxX(v59);
    }

    v53.origin.y = y;
  }

  if (v50 > 0.0)
  {
    v33 = x;
    v34 = v53.origin.y;
    v35 = width;
    v36 = height;
    MinY = CGRectGetMinY(v53);
    v60.origin.x = a3;
    v60.origin.y = a4;
    v60.size.width = a5;
    v60.size.height = a6;
    if (CGRectGetMinY(v60) >= MinY)
    {
      v53.origin.y = v34;
    }

    else
    {
      v61.origin.x = x;
      v61.origin.y = v34;
      v61.size.width = width;
      v61.size.height = height;
      v38 = CGRectGetMinY(v61);
      v62.origin.x = a3;
      v62.origin.y = a4;
      v62.size.width = a5;
      v62.size.height = a6;
      v53.origin.y = v34 - (v38 - CGRectGetMinY(v62));
    }
  }

  if (v50 < 0.0)
  {
    v39 = x;
    v40 = v53.origin.y;
    v41 = width;
    v42 = height;
    v43 = width;
    v44 = a4;
    MaxY = CGRectGetMaxY(v53);
    v63.origin.x = a3;
    v63.origin.y = v44;
    v63.size.width = a5;
    v63.size.height = a6;
    if (MaxY < CGRectGetMaxY(v63))
    {
      v64.origin.x = a3;
      v64.origin.y = v44;
      v64.size.width = a5;
      v64.size.height = a6;
      CGRectGetMaxY(v64);
      v65.origin.x = x;
      v65.origin.y = v40;
      v65.size.width = v43;
      v65.size.height = height;
      CGRectGetMaxY(v65);
    }
  }

  return x;
}

uint64_t sub_1000F22DC()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.LayoutSize();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.absolute(_:))
  {
    return (*(v7 + 96))(v10, v6);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalHeight(_:))
  {
    (*(v7 + 96))(v10, v6);
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalWidth(_:))
  {
    (*(v7 + 96))(v10, v6);
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalSize(_:))
  {
    return (*(v7 + 96))(v10, v6);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000F2608(double a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for AspectRatio();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a3 > a1 || a4 > a2)
  {
    AspectRatio.init(_:_:)();
    AspectRatio.init(_:_:)();
    AspectRatio.horizontalFraction.getter();
    v17 = v16;
    AspectRatio.horizontalFraction.getter();
    v18 = (v9 + 8);
    if (v17 >= v19)
    {
      AspectRatio.height(fromWidth:)();
    }

    else
    {
      AspectRatio.width(fromHeight:)();
    }

    v20 = *v18;
    (*v18)(v11, v8);
    v20(v14, v8);
  }
}

double sub_1000F2794(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 - 1 <= 1)
  {
    CGSize.fitting(_:mode:)();
    a4 = v17;
    a5 = v18;
  }

  if (a1 > 0xC)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xA80) != 0)
  {
    v26.origin.x = a6;
    v26.origin.y = a7;
    v26.size.width = a8;
    v26.size.height = a9;
    MinX = CGRectGetMinX(v26);
    goto LABEL_10;
  }

  if (((1 << a1) & 0x1500) != 0)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    Width = CGRectGetWidth(v25);
  }

  else
  {
LABEL_8:
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    MaxX = CGRectGetMidX(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    Width = CGRectGetMidX(v28);
  }

  MinX = MaxX - Width;
  if (a1 > 0xC)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (((1 << a1) & 0x620) != 0)
  {
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetMinY(v31);
    return MinX;
  }

  if (((1 << a1) & 0x1840) == 0)
  {
LABEL_14:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMidY(v32);
    v33.origin.x = MinX;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetMidY(v33);
    return MinX;
  }

  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxY(v29);
  v30.origin.x = MinX;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
  return MinX;
}

double sub_1000F2994()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_1000F2A74();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1000F2A74()
{
  v0 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v10 = v9;
  v8(v7, v4);
  v11 = ShelfLayoutContext.traitCollection.getter();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, "init");
  if (qword_10096EAD8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v0, qword_10098ED30);
  __chkstk_darwin(v16);
  *(&v20 - 2) = v15;
  Copyable.copyWithOverrides(in:)();

  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for ArcadeFooterLayout();
  sub_1000F2DB4(&qword_100973FC0, &type metadata accessor for ArcadeFooterLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v18 = v17;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_1000F2DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver()
{
  result = qword_100973FE0;
  if (!qword_100973FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000F2EAC()
{
  v1 = qword_100973FD8;
  v2 = *(v0 + qword_100973FD8);
  if (v2)
  {
    v3 = *(v0 + qword_100973FD8);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1000F2F20(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v114 = a3;
  v115 = a2;
  v113 = a1;
  v98 = type metadata accessor for FlowOrigin();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for FlowAnimationBehavior();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v97 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for FlowPresentationContext();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v92 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v10 - 8);
  v105 = &v82 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v104 = &v82 - v13;
  v89 = type metadata accessor for FlowPage();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v15 - 8);
  v108 = &v82 - v16;
  v17 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v17 - 8);
  v102 = &v82 - v18;
  v19 = type metadata accessor for ItemLayoutContext();
  v111 = *(v19 - 8);
  v112 = v19;
  __chkstk_darwin(v19);
  v101 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v82 - v22;
  v23 = type metadata accessor for ProductReview.ReviewSource();
  v109 = *(v23 - 8);
  v110 = v23;
  __chkstk_darwin(v23);
  v100 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  v28 = type metadata accessor for PageGrid();
  v106 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Shelf.PresentationHints();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v82 - v36;
  v116 = v4;
  sub_10002A400(&v4[qword_100973FD0], *&v4[qword_100973FD0 + 24]);
  v38 = v115;
  v39 = dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)();
  if (!v39 || (v43 = v39, v84 = v42, v85 = v41, v86 = v40, type metadata accessor for ProductReview(), sub_1000F4028(&qword_100971EE0, &type metadata accessor for ProductReview), ItemLayoutContext.typedModel<A>(as:)(), !v120))
  {
    type metadata accessor for SelectionHandlerCollectionElementsObserver();
    v52 = method lookup function for SelectionHandlerCollectionElementsObserver();
    return v52(v113, v38, v114, v117);
  }

  v83 = v43;
  v87 = v120;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static Shelf.PresentationHints.isSeeAllContext.getter();
  sub_1000F4028(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v45 = *(v32 + 8);
  v45(v34, v31);
  v45(v37, v31);
  if (v44)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v47 = v46;
    (*(v106 + 8))(v30, v28);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v47 <= 1.0)
    {
LABEL_11:
      type metadata accessor for SelectionHandlerCollectionElementsObserver();
      v77 = method lookup function for SelectionHandlerCollectionElementsObserver();
      v77(v113, v51, v114, v48);
    }
  }

  else
  {
    ProductReview.source.getter();
    v55 = v109;
    v54 = v110;
    v56 = (*(v109 + 88))(v27, v110);
    v57 = enum case for ProductReview.ReviewSource.editorsChoice(_:);
    (*(v55 + 8))(v27, v54);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v56 == v57)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v58 = v120;
    v59 = UITraitCollection.isSizeClassRegular.getter();

    if ((v59 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v60 = v100;
  ProductReview.source.getter();
  v62 = v109;
  v61 = v110;
  v63 = (*(v109 + 88))(v60, v110) == enum case for ProductReview.ReviewSource.reviewSummary(_:);
  (*(v62 + 8))(v60, v61);
  v64 = v107;
  ItemLayoutContext.withUpdatedLayoutOptions(_:)();
  v65 = v101;
  (*(v50 + 16))(v101, v64, v49);
  v66 = sub_10054A47C(v48, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100801690);
  v115 = type metadata accessor for ProductPageReviewsOverflowViewController();
  v67 = objc_allocWithZone(v115);
  v68 = sub_10018D534(v65, v83, v86, v85, v84, v66, v63);

  v69 = sub_1000F2EAC();
  v70 = v102;
  ItemLayoutContext.indexPath.getter();
  v71 = type metadata accessor for IndexPath();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_selectedIndexPath;
  swift_beginAccess();
  sub_1000F4070(v70, &v69[v72]);
  swift_endAccess();
  v69[OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
  v73 = v68;
  [v73 setTransitioningDelegate:v69];
  [v73 setModalPresentationStyle:4];

  v74 = sub_10002849C(&unk_100974490);
  v75 = v108;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v76 = *(v74 - 8);
  if ((*(v76 + 48))(v75, 1, v74) == 1)
  {
    (*(v50 + 8))(v64, v49);

    return sub_1000F40E0(v75);
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    (*(v88 + 104))(v103, enum case for FlowPage.viewController(_:), v89);
    v78 = type metadata accessor for URL();
    (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
    v79 = type metadata accessor for ReferrerData();
    (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
    v119 = v115;
    v118 = v73;
    v116 = v73;
    static ActionMetrics.notInstrumented.getter();
    (*(v90 + 104))(v95, enum case for FlowPresentationContext.infer(_:), v91);
    (*(v93 + 104))(v97, enum case for FlowAnimationBehavior.infer(_:), v94);
    (*(v96 + 104))(v99, enum case for FlowOrigin.inapp(_:), v98);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v80 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v81 = v108;
    sub_1005F9C8C(v80, 1, v117, v108);

    (*(v50 + 8))(v107, v112);
    return (*(v76 + 8))(v81, v74);
  }
}

uint64_t sub_1000F3DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComponentLayoutOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  static ComponentLayoutOptions.overflowed.getter();
  sub_10032B148(v10, v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return (*(v5 + 16))(a2, a1, v4);
}

void sub_1000F3F54()
{
  swift_unknownObjectWeakDestroy();
  sub_100007000(v0 + qword_100973FD0);
  v1 = *(v0 + qword_100973FD8);
}

uint64_t sub_1000F3FA4()
{
  v0 = SelectionHandlerCollectionElementsObserver.deinit();

  swift_unknownObjectWeakDestroy();
  sub_100007000(v0 + qword_100973FD0);
  v1 = *(v0 + qword_100973FD8);

  return swift_deallocClassInstance();
}

uint64_t sub_1000F4028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F4070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F40E0(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000F4148()
{
  result = [v0 animationKeys];
  if (result)
  {
    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {

        v6 = String._bridgeToObjectiveC()();
        v7 = [v0 animationForKey:v6];

        if (v7)
        {
          if (([v7 isRemovedOnCompletion] & 1) == 0)
          {
            v8 = String._bridgeToObjectiveC()();

            [v0 removeAnimationForKey:v8];

            goto LABEL_6;
          }
        }

LABEL_6:
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void sub_1000F43F4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SubviewToAncestorResizingView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v2 bounds];
      [v0 convertRect:v2 fromCoordinateSpace:?];
      [v4 setFrame:?];

      v2 = v4;
    }
  }
}

id sub_1000F44F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubviewToAncestorResizingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000F459C(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect);
  if (v3)
  {
    v10 = v3;
    v4 = [v10 tintColor];
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        sub_100028BB8();
        v6 = v2;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {

LABEL_13:
          a1 = v10;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v2)
    {
      goto LABEL_13;
    }

    [v10 setTintColor:v2];
    v8 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView);
    if (v8)
    {
      v9 = v8;
      [v9 setEffect:v10];

      a1 = v2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void (*sub_1000F46CC(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect);
  if (v3)
  {
    v3 = [v3 tintColor];
  }

  *a1 = v3;
  return sub_1000F4734;
}

void sub_1000F4734(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1000F459C(v2);
  }

  else
  {
    sub_1000F459C(*a1);
  }
}

void sub_1000F479C(char a1)
{
  v2 = v1[OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling];
  v1[OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling] = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v8[4] = sub_1000F789C;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100007A08;
      v8[3] = &unk_1008B43D0;
      v5 = _Block_copy(v8);
      v6 = v1;

      [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:0.3];
      _Block_release(v5);
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_imageView];

      [v7 setHidden:0];
    }
  }
}

uint64_t sub_1000F4A10(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "frame");
  v12 = v11 != a4 || v10 != a3;
  v13 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(v4 + v13, v17);
  sub_10002A400(v17, v18);
  if (dispatch thunk of OfferButtonConfiguration.shouldReapply(sizeChanged:)())
  {
    sub_100007000(v17);
    goto LABEL_6;
  }

  if (!v12)
  {
    return sub_100007000(v17);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v15 = CGRectEqualToRect(v20, v21);
  result = sub_100007000(v17);
  if (!v15)
  {
LABEL_6:
    sub_10002C0AC(v5 + v13, v17);
    sub_10002A400(v17, v18);
    sub_1000F78C4(&qword_1009741F0, v14, type metadata accessor for OfferButton);
    dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
    sub_100007000(v17);
    sub_10002C0AC(v5 + v13, v17);
    sub_10002A400(v17, v18);
    dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
    return sub_100007000(v17);
  }

  return result;
}

id sub_1000F4BF0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore11OfferButton_effectShape];
  [v2 setHidden:0];
  [v2 setFillColor:0];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape];
  [v3 setHidden:0];
  [v3 setFillColor:0];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_imageView];
  [v4 setHidden:0];
  v5 = [v1 tintColor];
  [v4 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_label];
  [v6 setHidden:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:1];
  [*&v1[OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel] setHidden:1];
  [v4 bounds];
  [v4 setBounds:?];
  v7 = type metadata accessor for Feature();
  v66[3] = v7;
  v66[4] = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature);
  v8 = sub_1000056E0(v66);
  (*(*(v7 - 8) + 104))(v8, enum case for Feature.glass_offer_button_2025A(_:), v7);
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100007000(v66);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView;
    v10 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView];
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
      v10 = 0;
    }

    v27 = v10;
    [v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    MidX = CGRectGetMidX(v73);
    v74.origin.x = v29;
    v74.origin.y = v31;
    v74.size.width = v33;
    v74.size.height = v35;
    [v4 setCenter:{MidX, CGRectGetMidY(v74)}];
    v37 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView];
    [v37 bounds];
    x = v75.origin.x;
    y = v75.origin.y;
    width = v75.size.width;
    height = v75.size.height;
    v42 = CGRectGetMidX(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    [v2 setPosition:{v42, CGRectGetMidY(v76)}];
    [v37 bounds];
    v43 = v77.origin.x;
    v44 = v77.origin.y;
    v45 = v77.size.width;
    v46 = v77.size.height;
    v47 = CGRectGetMidX(v77);
    v78.origin.x = v43;
    v78.origin.y = v44;
    v78.size.width = v45;
    v78.size.height = v46;
    [v3 setPosition:{v47, CGRectGetMidY(v78)}];
    v48 = *&v1[v9];
    if (v48)
    {
      v49 = *&v1[v9];
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
      v48 = 0;
    }

    v50 = v48;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v79.origin.x = v52;
    v79.origin.y = v54;
    v79.size.width = v56;
    v79.size.height = v58;
    v59 = CGRectGetMidX(v79);
    v80.origin.x = v52;
    v80.origin.y = v54;
    v80.size.width = v56;
    v80.size.height = v58;
    [v6 setCenter:{v59, CGRectGetMidY(v80)}];
    v60 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        [v62 bounds];
        [v60 convertRect:v62 fromCoordinateSpace:?];
        [v64 setFrame:?];
      }

      else
      {
      }
    }
  }

  else
  {
    [v3 position];
    [v4 setCenter:?];
    [v1 bounds];
    v12 = v67.origin.x;
    v13 = v67.origin.y;
    v14 = v67.size.width;
    v15 = v67.size.height;
    v16 = CGRectGetMidX(v67);
    v68.origin.x = v12;
    v68.origin.y = v13;
    v68.size.width = v14;
    v68.size.height = v15;
    [v2 setPosition:{v16, CGRectGetMidY(v68)}];
    [v1 bounds];
    v17 = v69.origin.x;
    v18 = v69.origin.y;
    v19 = v69.size.width;
    v20 = v69.size.height;
    v21 = CGRectGetMidX(v69);
    v70.origin.x = v17;
    v70.origin.y = v18;
    v70.size.width = v19;
    v70.size.height = v20;
    [v3 setPosition:{v21, CGRectGetMidY(v70)}];
    [v1 bounds];
    v22 = v71.origin.x;
    v23 = v71.origin.y;
    v24 = v71.size.width;
    v25 = v71.size.height;
    v26 = CGRectGetMidX(v71);
    v72.origin.x = v22;
    v72.origin.y = v23;
    v72.size.width = v24;
    v72.size.height = v25;
    [v6 setCenter:{v26, CGRectGetMidY(v72)}];
  }

  [v2 setStrokeStart:0.0];
  [v2 setStrokeEnd:0.0];
  [v3 setStrokeStart:0.0];
  [v3 setStrokeEnd:1.0];
  return sub_1000F4148();
}

id sub_1000F51C0(char *a1, char a2, void *a3)
{
  [a1 setNeedsLayout];
  if (a2)
  {

    return [a1 layoutIfNeeded];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v8, "invalidateIntrinsicContentSize");
    v7 = &a1[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[16] = 1;
    [a3 setNeedsLayout];
    return [a3 layoutIfNeeded];
  }
}

char *sub_1000F5284(int a1)
{
  v2 = v1;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v96 = type metadata accessor for AutomationSemantics();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OfferButtonMetrics();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v93 - v6;
  v103 = v7;
  __chkstk_darwin(v8);
  v105 = &v93 - v9;
  v10 = type metadata accessor for UICornerConfiguration();
  __chkstk_darwin(v10 - 8);
  v93 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  v17 = OBJC_IVAR____TtC8AppStore11OfferButton_effectShape;
  *&v1[v17] = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape;
  *&v1[v18] = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView;
  *&v1[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC8AppStore11OfferButton_imageView;
  *&v1[v20] = [objc_allocWithZone(UIImageView) init];
  v100 = OBJC_IVAR____TtC8AppStore11OfferButton_label;
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1250);
  v23 = *(v21 - 8);
  v99 = *(v23 + 16);
  v99(v16, v22, v21);
  v98 = *(v23 + 56);
  v98(v16, 0, 1, v21);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v97 = *(v12 + 104);
  v97(v109, enum case for DirectionalTextAlignment.none(_:), v110);
  v25 = type metadata accessor for DynamicTypeLabel();
  v26 = objc_allocWithZone(v25);
  *&v1[v100] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v21, qword_1009D1298);
  v99(v16, v28, v21);
  v98(v16, 0, 1, v21);
  static OfferButtonStyling.maxNumberOfLinesForSubtitle.getter();
  v97(v109, v24, v110);
  v29 = objc_allocWithZone(v25);
  *&v1[v27] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v30 = OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *&v1[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect;
  *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect] = 0;
  v32 = OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView;
  *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView] = 0;
  v33 = &v1[OBJC_IVAR____TtC8AppStore11OfferButton_presenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties] = 0;
  v1[OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v34 = &v1[OBJC_IVAR____TtC8AppStore11OfferButton_isEnabledObserver];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v1[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] = 1;
  v1[OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding] = 2;
  v35 = &v1[OBJC_IVAR____TtC8AppStore11OfferButton__configuration];
  v35[3] = type metadata accessor for EmptyConfiguration();
  v35[4] = &protocol witness table for EmptyConfiguration;
  sub_1000056E0(v35);
  EmptyConfiguration.init()();
  v36 = &v1[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration] = 0;
  if (v101)
  {
    v37 = type metadata accessor for Feature();
    *(&v113 + 1) = v37;
    v114 = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature);
    v38 = sub_1000056E0(&aBlock);
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.glass_offer_button_2025A(_:), v37);
    LOBYTE(v37) = isFeatureEnabled(_:)();
    sub_100007000(&aBlock);
    if (v37)
    {
      v40 = [objc_allocWithZone(UIGlassEffect) init];
      v41 = *&v2[v31];
      *&v2[v31] = v40;

      v42 = [objc_allocWithZone(UIVisualEffectView) init];
      goto LABEL_10;
    }
  }

  else
  {
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
  }

  v43 = *&v2[v31];
  *&v2[v31] = 0;

  v42 = 0;
LABEL_10:
  v44 = *&v2[v32];
  *&v2[v32] = v42;

  v116.receiver = v2;
  v116.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v116, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v45 setScalesLargeContentImage:1];
  v46 = [objc_opt_self() mainScreen];
  [v46 scale];
  v48 = v47;

  v49 = OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape;
  [*&v45[OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape] setContentsScale:v48];
  [*&v45[v49] setFillColor:0];
  v50 = OBJC_IVAR____TtC8AppStore11OfferButton_effectShape;
  [*&v45[OBJC_IVAR____TtC8AppStore11OfferButton_effectShape] setContentsScale:v48];
  [*&v45[v50] setFillColor:0];
  v51 = OBJC_IVAR____TtC8AppStore11OfferButton_label;
  v52 = *&v45[OBJC_IVAR____TtC8AppStore11OfferButton_label];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v53 = OBJC_IVAR____TtC8AppStore11OfferButton_imageView;
  [*&v45[OBJC_IVAR____TtC8AppStore11OfferButton_imageView] setContentMode:4];
  v54 = type metadata accessor for Feature();
  *(&v113 + 1) = v54;
  v114 = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature);
  v55 = sub_1000056E0(&aBlock);
  (*(*(v54 - 8) + 104))(v55, v39, v54);
  v56 = isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  if (v56)
  {
    v57 = *&v45[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView];
    if (v57 && (v58 = *&v45[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect]) != 0)
    {
      v59 = v57;
      v60 = v58;
      static UICornerConfiguration.capsule(maximumRadius:)();
      UIView.cornerConfiguration.setter();
      [v59 setUserInteractionEnabled:0];
      [v59 setEffect:v60];
      v61 = [v59 contentView];
      [v61 addSubview:*&v45[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView]];

      [v45 addSubview:v59];
    }

    else
    {
      [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView]];
    }

    v65 = OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView;
    swift_unknownObjectWeakAssign();
    v66 = OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView;
    swift_unknownObjectWeakAssign();
    v67 = [*&v45[v66] layer];
    [v67 addSublayer:*&v45[v49]];

    v68 = [*&v45[v66] layer];
    [v68 addSublayer:*&v45[v50]];

    [*&v45[v65] addSubview:*&v45[v66]];
    [*&v45[v65] addSubview:*&v45[v51]];
    [*&v45[v65] addSubview:*&v45[v53]];
  }

  else
  {
    v62 = v45;
    v63 = [v62 layer];
    [v63 addSublayer:*&v45[v49]];

    v64 = [v62 layer];
    [v64 addSublayer:*&v45[v50]];

    [v62 addSubview:*&v45[v51]];
    [v62 addSubview:*&v45[v53]];
  }

  v69 = OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel;
  v70 = *&v45[OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v45 addSubview:*&v45[v69]];
  [*&v45[v69] setShowsLargeContentViewer:1];
  v71 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v45 addInteraction:v71];

  isEscapingClosureAtFileLocation = [v45 traitCollection];
  v73 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v74 = v107;
  v75 = v106;
  v76 = v105;
  if ((v73 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v77 = qword_100991028;
    goto LABEL_23;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v77 = qword_100991010;
LABEL_23:
    v78 = sub_1000056A8(v74, v77);
    v79 = *(v75 + 16);
    v80 = v102;
    v79(v102, v78, v74);

    v81 = *(v75 + 32);
    v81(v76, v80, v74);
    v82 = objc_opt_self();
    v83 = v104;
    v79(v104, v76, v74);
    v84 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v45;
    v81((v85 + v84), v83, v74);
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1000F7F6C;
    *(v86 + 24) = v85;
    v114 = sub_10006F094;
    v115 = v86;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v113 = sub_1000489A8;
    *(&v113 + 1) = &unk_1008B4448;
    v87 = _Block_copy(&aBlock);
    v45 = v45;

    [v82 performWithoutAnimation:v87];
    _Block_release(v87);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v88 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&v45[v88], &aBlock);
  sub_10002A400(&aBlock, *(&v113 + 1));
  sub_1000F78C4(&qword_1009741F0, v89, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  sub_100007000(&aBlock);
  aBlock = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v90 = v94;
  static AutomationSemantics.offerButton(id:parentId:)();
  sub_10002B894(v111, &unk_1009711D0);
  sub_10002B894(&aBlock, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  (*(v95 + 8))(v90, v96);
  sub_10002849C(&qword_10097B110);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1007B10D0;
  *(v91 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v91 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  (*(v75 + 8))(v76, v74);

  return v45;
}

id sub_1000F62D4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore11OfferButton_label);
  OfferButtonMetrics.minimumSize.getter();
  [v2 frame];
  [v2 setFrame:?];
  v3 = *(a1 + OBJC_IVAR____TtC8AppStore11OfferButton_effectShape);
  OfferButtonMetrics.minimumSize.getter();
  [v3 frame];
  [v3 setFrame:?];
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape);
  OfferButtonMetrics.minimumSize.getter();
  [v4 frame];

  return [v4 setFrame:?];
}

void sub_1000F65D4()
{
  swift_getObjectType();
  v1 = [v0 superview];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration;
    if (*&v0[OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration])
    {
      return;
    }

    sub_10002849C(&qword_10097B110);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007B5350;
    *(v3 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v3 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v3 + 48) = type metadata accessor for UITraitLayoutDirection();
    *(v3 + 56) = &protocol witness table for UITraitLayoutDirection;
    *(v3 + 64) = type metadata accessor for UITraitDisplayScale();
    *(v3 + 72) = &protocol witness table for UITraitDisplayScale;
    *(v3 + 80) = type metadata accessor for UITraitLegibilityWeight();
    *(v3 + 88) = &protocol witness table for UITraitLegibilityWeight;
    v4 = UIView.registerForTraitChanges<A>(_:handler:)();

    *&v0[v2] = v4;
  }

  else
  {
    if (!*&v0[OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration])
    {
      return;
    }

    swift_unknownObjectRetain();
    UIView.unregisterForTraitChanges(_:)();
  }

  swift_unknownObjectRelease();
}

void sub_1000F6788()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&v0[v2], v11);
  sub_10002A400(v11, v12);
  [v0 bounds];
  [objc_opt_self() areAnimationsEnabled];
  sub_1000F78C4(&qword_1009741F0, v3, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.layout<A>(button:in:disableAnimations:)();
  sub_100007000(v11);
  v4 = type metadata accessor for Feature();
  v12 = v4;
  v13 = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature);
  v5 = sub_1000056E0(v11);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.glass_offer_button_2025A(_:), v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100007000(v11);
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v8 bounds];
        [v6 convertRect:v8 fromCoordinateSpace:?];
        [v10 setFrame:?];

        v8 = v10;
      }
    }
  }
}

id sub_1000F6D88(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_1000F6E50(char a1)
{
  swift_getObjectType();
  LODWORD(v3) = 1057971241;
  if (a1)
  {
    *&v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.25;
  }

  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.56;
  }

  [*(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape) setOpacity:v3];
  [*(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_imageView) setAlpha:v4];
  [*(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_label) setAlpha:v5];
  v6 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(v1 + v6, v9);
  sub_10002A400(v9, v9[3]);
  sub_1000F78C4(&qword_1009741F0, v7, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.reapply<A>(colorsTo:)();
  return sub_100007000(v9);
}

id sub_1000F6FAC()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "invalidateIntrinsicContentSize");
  v1 = &v0[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled;
  v0[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] = 0;
  v5 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&v0[v5], v8);
  sub_10002A400(v8, v9);
  sub_1000F78C4(&qword_1009741F0, v6, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
  sub_100007000(v8);
  sub_10002C0AC(&v0[v5], v8);
  sub_10002A400(v8, v9);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  sub_100007000(v8);
  [v2 setAnimationsEnabled:v3];
  v0[v4] = 1;
  [v0 setNeedsLayout];
  return [v0 setNeedsDisplay];
}

id sub_1000F7240@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_label);
  *a1 = v2;
  return v2;
}

id sub_1000F7254@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel);
  *a1 = v2;
  return v2;
}

id sub_1000F7268@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_imageView);
  *a1 = v2;
  return v2;
}

id sub_1000F727C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_1000F72B4()
{
  v1 = [v0 tintColor];

  return v1;
}

id sub_1000F72EC()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled);
  }

  return result;
}

id (*sub_1000F735C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 overrideUserInterfaceStyle];
  return sub_1000F73B0;
}

id sub_1000F73C4()
{
  result = *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect);
  if (result)
  {
    return [result tintColor];
  }

  return result;
}

uint64_t (*sub_1000F7400(void *a1))()
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
  v2[4] = sub_1000F46CC(v2);
  return sub_1000B4CAC;
}

void *sub_1000F7488()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

id sub_1000F74D8()
{
  v1 = [v0 largeContentImage];

  return v1;
}

void sub_1000F7510(void *a1)
{
  [v1 setLargeContentImage:a1];
}

void (*sub_1000F7558(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 largeContentImage];
  return sub_1000F75B4;
}

void sub_1000F75B4(id *a1)
{
  v1 = *a1;
  [a1[1] setLargeContentImage:?];
}

uint64_t sub_1000F75FC()
{
  v1 = [v0 largeContentTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000F7664(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v2 setLargeContentTitle:v3];
}

uint64_t (*sub_1000F76D0(uint64_t **a1))()
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
  v2[4] = sub_1000F7740(v2);
  return sub_1000C2700;
}

void (*sub_1000F7740(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 largeContentTitle];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1000F77C8;
}

void sub_1000F77C8(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = String._bridgeToObjectiveC()();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setLargeContentTitle:v4];
  }

  else if (v3)
  {
    v4 = String._bridgeToObjectiveC()();

    [*(a1 + 16) setLargeContentTitle:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setLargeContentTitle:0];
  }
}

uint64_t sub_1000F78C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000F790C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_10002C0AC(v1, v3);
    sub_10002A400(v3, v3[3]);
    dispatch thunk of OfferButtonPresenter.update(ignoringCache:)();
    return sub_100007000(v3);
  }

  return result;
}

uint64_t sub_1000F79BC()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  if (*(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v2 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v0 + v2, v8);
    sub_10002A400(v8, v8[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v4 = v3;
    v6 = v5;
    result = sub_100007000(v8);
    *v1 = v4;
    *(v1 + 8) = v6;
    *(v1 + 16) = 0;
  }

  return result;
}

void sub_1000F7A7C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC8AppStore11OfferButton_effectShape;
  *(v1 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  v9 = OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape;
  *(v1 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC8AppStore11OfferButton_imageView;
  *(v1 + v11) = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC8AppStore11OfferButton_label;
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1250);
  v14 = *(v12 - 8);
  v28 = *(v14 + 16);
  v28(v7, v13, v12);
  v27 = *(v14 + 56);
  v27(v7, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v2;
  v16(v32, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = type metadata accessor for DynamicTypeLabel();
  v18 = objc_allocWithZone(v17);
  *(v1 + v29) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v19 = OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v12, qword_1009D1298);
  v28(v7, v20, v12);
  v27(v7, 0, 1, v12);
  static OfferButtonStyling.maxNumberOfLinesForSubtitle.getter();
  v16(v32, v15, v31);
  v21 = objc_allocWithZone(v17);
  *(v1 + v19) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView) = 0;
  v23 = v1 + OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC8AppStore11OfferButton_isEnabledObserver);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding) = 2;
  v25 = (v1 + OBJC_IVAR____TtC8AppStore11OfferButton__configuration);
  v25[3] = type metadata accessor for EmptyConfiguration();
  v25[4] = &protocol witness table for EmptyConfiguration;
  sub_1000056E0(v25);
  EmptyConfiguration.init()();
  v26 = v1 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000F7F6C()
{
  type metadata accessor for OfferButtonMetrics();
  v1 = *(v0 + 16);

  return sub_1000F62D4(v1);
}

uint64_t sub_1000F7FD8()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009CDF98);
  sub_1000056A8(v0, qword_1009CDF98);
  return AspectRatio.init(_:_:)();
}

uint64_t sub_1000F802C()
{
  v0 = sub_10002849C(&qword_100974248);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrickLayout.Metrics();
  sub_100005644(v10, qword_1009CDFB0);
  v19[2] = sub_1000056A8(v10, qword_1009CDFB0);
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v6, qword_1009CDF98);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_10096E2B0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v19[0] = sub_1000056A8(v12, qword_1009D1790);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = type metadata accessor for StaticDimension();
  v22[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v21);
  (*(v3 + 16))(v16, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)();
}

uint64_t sub_1000F83D0()
{
  v0 = sub_10002849C(&qword_100974248);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrickLayout.Metrics();
  sub_100005644(v7, qword_1009CDFC8);
  sub_1000056A8(v7, qword_1009CDFC8);
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v3, qword_1009CDF98);
  (*(v4 + 16))(v6, v8, v3);
  v9 = type metadata accessor for FontSource();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)();
}

char *sub_1000F85B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v13 = &v5[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
  type metadata accessor for ArtworkView();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView] = static ArtworkView.brickArtworkView.getter();
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView]];

  sub_10002849C(&qword_10097B110);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B10D0;
  *(v17 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v14;
}

id sub_1000F88B0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &StringUserDefaultsDebugSetting;
      if (v13)
      {
      }

      else
      {
        v17 = qword_10096E2B0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for FontUseCase();
        v19 = sub_1000056A8(v18, qword_1009D1790);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
        v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &StringUserDefaultsDebugSetting;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();

        [v28 setText:v29];

        return [v1 v14[41].base_meths];
      }

LABEL_20:

      return [v1 v14[41].base_meths];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1000F8C64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrickLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = type metadata accessor for BrickLayout();
  v13 = *(v33 - 8);
  *&v14 = __chkstk_darwin(v33).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v14);
  v17 = OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  if ([v19 isHidden])
  {

LABEL_4:
    if (qword_10096D060 != -1)
    {
      swift_once();
    }

    v20 = sub_1000056A8(v6, qword_1009CDFC8);
    (*(v7 + 16))(v9, v20, v6);
    v21 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView];
    v40 = type metadata accessor for ArtworkView();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = v21;
    BrickLayout.init(metrics:artworkView:labelView:)();
    goto LABEL_13;
  }

  if (qword_10096D058 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v6, qword_1009CDFB0);
  (*(v7 + 16))(v12, v23, v6);
  v24 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView];
  v40 = type metadata accessor for ArtworkView();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = *&v1[v17];
  if (v25)
  {
    v26 = type metadata accessor for DynamicTypeLabel();
    v27 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
  }

  *&v36 = v25;
  *(&v37 + 1) = v26;
  v38 = v27;
  v28 = v24;
  v29 = v25;
  BrickLayout.init(metrics:artworkView:labelView:)();

LABEL_13:
  v30 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  BrickLayout.placeChildren(relativeTo:in:)();
  (*(v34 + 8))(v5, v35);
  return (*(v13 + 8))(v16, v33);
}

uint64_t type metadata accessor for BrickCollectionViewCell()
{
  result = qword_100974230;
  if (!qword_100974230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F920C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1000F92CC()
{
  v1 = v0;
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AspectRatio();
  sub_1000056A8(v2, qword_1009CDF98);
  v3 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  AspectRatio.height(fromWidth:)();
  v4 = [v1 contentView];
  LayoutMarginsAware<>.layoutFrame.getter();
  v6 = v5;

  return v6;
}

uint64_t sub_1000F93C4()
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_1000F94B4(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1000F945C(uint64_t a1)
{
  result = sub_1000F94B4(&qword_100974240, type metadata accessor for BrickCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F94B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TodayCardVideoView()
{
  result = qword_100974250;
  if (!qword_100974250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1000F959C(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v94 = a7;
  v92 = a6;
  v95 = a5;
  v96 = a4;
  v97 = a3;
  v98 = a2;
  v87 = type metadata accessor for AutomationSemantics();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v17 = type metadata accessor for VideoConfiguration();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v77 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v78 = &v77 - v25;
  __chkstk_darwin(v26);
  v28 = &v77 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_1009CDFF8] = 7;
  v29[qword_1009CE000] = 0;
  v89 = a1;
  sub_10003D4AC(a1, v103);
  v90 = v22;
  v30 = *(v22 + 16);
  v91 = v21;
  v79 = v30;
  v30(v28, v98, v21);
  v88 = v18;
  v31 = *(v18 + 16);
  v84 = v20;
  v93 = v17;
  v83 = v18 + 16;
  v82 = v31;
  v31(v20, v97, v17);
  v32 = v16;
  sub_100031660(v96, v16, &unk_100973A50);
  sub_100031660(v95, v13, &unk_100973A50);
  sub_100031660(v92, v102, &unk_100988E00);
  swift_weakInit();
  *&v29[qword_100988CA8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_100988CB0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_100988CB8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_100988CC0;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_100988CC8] = 0;
  v29[qword_100988CD0] = 0;
  v29[qword_100988CD8] = 0;
  *&v29[qword_100988CE0] = 0;
  *&v29[qword_100988CE8] = 0;
  v34 = qword_100988CF0;
  type metadata accessor for AutoPlayVideoSettingsManager();
  *&v29[v34] = static AutoPlayVideoSettingsManager.shared.getter();
  v35 = qword_100988CF8;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_1009D21B0];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_1009D21B8];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_1009D21C0] = 1;
  v29[qword_100988D00] = 0;
  v40 = &v29[qword_1009D21D0];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_1009D21E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_1009D21E8] = 0;
  v29[qword_1009D21F0] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_100988D08] = 0;
  v29[qword_1009D2208] = 0;
  *&v29[qword_100988D10] = 0;
  v29[qword_100988D18] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_10003D4AC(v103, &v29[qword_1009D21D8]);
  v41 = URL.scheme.getter();
  v43 = v42;
  v44 = static Artwork.URLTemplate.resourceScheme.getter();
  v81 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v91;
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = v91;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    URL.lastPathComponent.getter();
    v49 = String._bridgeToObjectiveC()();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v77;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = *(v90 + 32);
      v53 = v78;
      v52(v78, v51, v46);
      v52(&v29[qword_1009D21C8], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v91;
  }

LABEL_9:
  v79(&v29[qword_1009D21C8], v36, v46);
LABEL_10:
  v80 = v32;
  sub_100031660(v32, &v29[qword_1009D2198], &unk_100973A50);
  v54 = v13;
  sub_100031660(v13, &v29[qword_1009D21A0], &unk_100973A50);
  v55 = v84;
  v56 = v93;
  v82(&v29[qword_1009D2200], v84, v93);
  sub_100031660(v102, &v29[qword_1009D21A8], &unk_100988E00);
  v57 = type metadata accessor for VideoView();
  v101.receiver = v29;
  v101.super_class = v57;
  v58 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_100988CC0;
  [*&v58[qword_100988CC0] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = static NSNotificationName.AutoPlayVideoSettingsDidChange.getter();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_100988CF8;
  [*&v58[qword_100988CF8] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  *v67 = sub_1000FA7C8;
  v67[1] = v66;
  v69 = v65;

  sub_10001F63C(v68);

  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  v70 = v85;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v99, &unk_1009711D0);
  sub_10002B894(v100, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  (*(v86 + 8))(v70, v87);
  [v58 addSubview:*&v58[v64]];
  sub_1004E77F8();

  sub_10002B894(v102, &unk_100988E00);
  sub_10002B894(v54, &unk_100973A50);
  sub_10002B894(v80, &unk_100973A50);
  v71 = *(v88 + 8);
  v71(v55, v56);
  v72 = *(v90 + 8);
  v73 = v91;
  v72(v81, v91);
  sub_10003D614(v103);
  v74 = v58[qword_100988CD8];
  v58[qword_100988CD8] = 1;
  if (v74)
  {
  }

  else
  {
    v75 = v58;
    sub_1004E1178();
  }

  sub_10002B894(v92, &unk_100988E00);
  sub_10002B894(v95, &unk_100973A50);
  sub_10002B894(v96, &unk_100973A50);
  v71(v97, v93);
  v72(v98, v73);
  sub_10003D614(v89);
  return v58;
}

void sub_1000FA22C()
{
  v1 = v0;
  v2 = qword_1009CDFF8;
  v3 = *(v0 + qword_1009CDFF8);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_1009CE000);
    v6 = *(v0 + qword_100988CD8);
    *(v0 + qword_100988CD8) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_100988CD8) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_100988CD8);
  *(v0 + qword_100988CD8) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_1004E1178();
  }

LABEL_9:
  v7 = qword_100988CE0;
  v8 = *(v0 + qword_100988CE0);
  if (v8)
  {
    v9 = v8;
    v10 = dispatch thunk of VideoPlayer.isPlaying.getter();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = dispatch thunk of VideoPlayer.shouldBePlaying.getter(), v12, (v13))
    {
      if ((*(v1 + qword_1009CE000) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (dispatch thunk of VideoPlayer.shouldBePlaying.getter())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000FA3AC()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009D2200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = VideoConfiguration.allowsAutoPlay.getter();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || (dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + qword_1009CDFF8);
  if (v7 == 7 || v7 == 4)
  {
    return *(v1 + qword_1009CE000);
  }

  else
  {
    return 1;
  }
}

void sub_1000FA508()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009CDFF8;
  v7 = *(v0 + qword_1009CDFF8);
  if (v7 == 4)
  {
    v9 = *(v0 + qword_1009CE000);
    v10 = *(v0 + qword_100988CD8);
    *(v0 + qword_100988CD8) = v9 ^ 1;
    if (v9 & 1) != 0 || (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v7 != 7)
  {
    *(v0 + qword_100988CD8) = 0;
    goto LABEL_9;
  }

  v8 = *(v0 + qword_100988CD8);
  *(v0 + qword_100988CD8) = 1;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    sub_1004E1178();
  }

LABEL_9:
  v11 = qword_1009CE000;
  if (*(v0 + qword_1009CE000) == 1 && (v12 = qword_1009D2200, swift_beginAccess(), (*(v3 + 16))(v5, v1 + v12, v2), LOBYTE(v12) = VideoConfiguration.allowsAutoPlay.getter(), (*(v3 + 8))(v5, v2), (v12 & 1) != 0) && (dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter() & 1) != 0 && ((v13 = *(v1 + v6), v13 != 7) && v13 != 4 || *(v1 + v11) == 1))
  {
    sub_1004DF87C();
  }

  else
  {
    v14 = qword_100988CE0;
    v15 = *(v1 + qword_100988CE0);
    if (v15)
    {
      v16 = v15;
      v17 = dispatch thunk of VideoPlayer.isPlaying.getter();

      if (v17 & 1) != 0 || (v18 = *(v1 + v14)) != 0 && (v19 = v18, v20 = dispatch thunk of VideoPlayer.shouldBePlaying.getter(), v19, (v20))
      {
        if ((*(v1 + v11) & 1) == 0)
        {
          v21 = *(v1 + v6);
          if (v21 == 7 || v21 == 4)
          {
            v23 = *(v1 + v14);
            if (v23)
            {
              v24 = v23;
              if (dispatch thunk of VideoPlayer.shouldBePlaying.getter())
              {
                [v24 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000FA78C()
{
  v1 = *(v0 + qword_1009CDFF8);
  v2 = v1 == 7 || v1 == 4;
  if (!v2 || *(v0 + qword_1009CE000) == 1)
  {
    sub_1004DF87C();
  }
}

void sub_1000FA7F8(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

double sub_1000FA8B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = type metadata accessor for HorizontalRule.Style();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((HorizontalRule.isFullWidth.getter() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  HorizontalRule.style.getter();
  v15 = [a7 traitCollection];
  HorizontalRule.Style.lineThickness(traitCollection:)();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_1000FA9EC()
{
  v0 = type metadata accessor for HorizontalRule.Style();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalRule.style.getter();
  sub_10075D014(v2);
  v3 = HorizontalRule.color.getter();
  sub_10075DB40(v3);
}

uint64_t sub_1000FAB24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000FAB6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *&v4[v14] = CompoundScrollObserver.init(children:)();
  v16 = &v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_10096D068;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v22 = qword_100974320;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100005744(0, &qword_1009744B0), v25 = v22, v26 = static NSObject.== infix(_:_:)(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10096D070;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_100974328);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1006DD1E4(v12);

  v34 = qword_10096D078;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1000FE7DC(&qword_100974340, v68);
  v36 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE838(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1000FE894(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_10096D080;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v29, qword_100974368);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_1004442A4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_1000FC3DC();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for NestedCollectionViewImpressionsCoordinator();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator] = NestedCollectionViewImpressionsCoordinator.init(collectionView:)();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v60 = String._bridgeToObjectiveC()();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v64 = String._bridgeToObjectiveC()();

  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v65 = String._bridgeToObjectiveC()();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1000FB358()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.impressionsCalculator.setter();

    if (swift_weakLoadStrong())
    {
      type metadata accessor for ImpressionsScrollObserver();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver) = ImpressionsScrollObserver.init(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000FB428()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_100974320 = v5;
  return result;
}

void sub_1000FB534()
{
  qword_100974358 = &type metadata for CGFloat;
  unk_100974360 = &protocol witness table for CGFloat;
  qword_100974340 = 0x4008000000000000;
}

id sub_1000FB570(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = type metadata accessor for FontUseCase();
  sub_100005644(v5, a2);
  v6 = sub_1000056A8(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_1000FB62C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_100974380);
  v1 = sub_1000056A8(v0, qword_100974380);
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0608);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000FB6F4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10096D088 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_100974380);
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
  sub_100005A38(&v13, &unk_100974398);
  return sub_100005A38(&v10, &unk_1009743C0);
}

id sub_1000FB91C(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
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

uint64_t sub_1000FB9F8()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FontSource();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchLockupListLayout.Metrics();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v48 - v15;
  v16 = type metadata accessor for SmallLockupLayout.Metrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v69.receiver = v0;
  v69.super_class = v20;
  objc_msgSendSuper2(&v69, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v50 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v60 = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v16, qword_1009D3798);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v29 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v29 = qword_100991028;
    }

    v30 = sub_1000056A8(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v48;
    (*(v11 + 32))(v48, v31, v10);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v11 + 8))(v32, v10);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v60, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView];
  v68[3] = type metadata accessor for ImageHeadingView();
  v68[4] = &protocol witness table for UIView;
  v68[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView];
  result = type metadata accessor for SearchHeadingView();
  v67[3] = result;
  v67[4] = &protocol witness table for UIView;
  v67[0] = v34;
  if (*&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v65[0] = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_100005744(0, &qword_100978E50);
    v36 = v33;
    v37 = v34;
    LayoutView.withMeasurements(representing:)();
    v65[3] = type metadata accessor for ZeroDimension();
    v65[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v65);
    static ZeroDimension.zero.getter();
    if (qword_10096D080 == -1)
    {
LABEL_16:
      v38 = type metadata accessor for FontUseCase();
      v39 = sub_1000056A8(v38, qword_100974368);
      v40 = v49;
      (*(*(v38 - 8) + 16))(v49, v39, v38);
      v42 = v51;
      v41 = v52;
      (*(v51 + 104))(v40, enum case for FontSource.useCase(_:), v52);
      v64[3] = type metadata accessor for StaticDimension();
      v64[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(v64);
      v62 = v41;
      v63 = &protocol witness table for FontSource;
      v43 = sub_1000056E0(v61);
      (*(v42 + 16))(v43, v40, v41);
      StaticDimension.init(_:scaledLike:)();
      (*(v42 + 8))(v40, v41);
      v62 = &type metadata for CGFloat;
      v63 = &protocol witness table for CGFloat;
      v61[0] = 0x4030000000000000;
      v44 = v54;
      SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)();
      v46 = v55;
      v45 = v56;
      (*(v55 + 16))(v53, v44, v56);
      sub_10002C0AC(v68, v65);
      sub_10002C0AC(v67, v64);
      sub_10002C0AC(v66, v61);
      type metadata accessor for SearchLockupListLayout();
      swift_allocObject();
      v65[0] = SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)();
      (*(v46 + 8))(v44, v45);
      sub_100007000(v66);
      sub_100007000(v67);
      sub_100007000(v68);
      sub_1000FE794(&unk_1009744A0, &type metadata accessor for SearchLockupListLayout);
      v47 = v57;
      dispatch thunk of Layout.placeChildren(relativeTo:in:)();
      (*(v58 + 8))(v47, v59);
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_1000FC3DC()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_1000FDCE0;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002E9BD4;
  v7[3] = &unk_1008B4698;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

_BYTE *sub_1000FC508(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration];
    v5 = *&result[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = [result contentView];

      if (v7)
      {
        [v7 layoutMargins];
        v10 = sub_1000FDCE8(v4, v5, a2, v8, v9);
        if (v10)
        {
          v11 = v10;
          v12 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v14 = v11;
          v15 = v11;

          aBlock[4] = sub_1000FE19C;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1006BBC70;
          aBlock[3] = &unk_1008B46C0;
          v16 = _Block_copy(aBlock);

          [v15 setVisibleItemsInvalidationHandler:v16];

          _Block_release(v16);
          v7 = v15;
        }

        else
        {
          v14 = 0;
        }

        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1000FC6F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      type metadata accessor for ImpressionsScrollObserver();
      ScrollObserver.didScroll(visibleItems:layoutEnvironment:contentOffset:)();
    }
  }
}

id sub_1000FC9B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000FCBBC()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1000FB358();
}

void (*sub_1000FCC20(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1000FCCB8;
}

void sub_1000FCCB8(void **a1, char a2)
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

    sub_1000FB358();
  }

  free(v3);
}

uint64_t sub_1000FCD40()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1000FCD9C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

double sub_1000FCE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10)
{
  v79 = a8;
  v78 = a7;
  v75 = a5;
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v72 = a1;
  v10 = type metadata accessor for FontSource();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchLockupListLayout.Metrics();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v66 - v15;
  v88 = type metadata accessor for LabelPlaceholderCompatibility();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ImageHeadingView();
  if (qword_10096D068 != -1)
  {
    swift_once();
  }

  v18 = qword_100974320;
  if (qword_10096D070 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for FontUseCase();
  sub_1000056A8(v77, qword_100974328);
  if (qword_10096D078 != -1)
  {
    swift_once();
  }

  v19 = sub_100005744(0, &qword_1009730E0);
  v20 = [a9 traitCollection];
  v87 = v19;
  v21 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v22 = objc_opt_self();
  v70 = v21;
  v23 = [v22 configurationWithFont:v21];
  v24 = [v18 imageByApplyingSymbolConfiguration:v23];
  v25 = v24;
  if (v24)
  {
    [v24 size];
  }

  v26 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v27 = LayoutViewPlaceholder.init(representing:)();

  v89 = a9;
  v28 = [a9 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v29 = type metadata accessor for Feature();
  *(&v98 + 1) = v29;
  v69 = sub_1000FE794(&qword_100972E50, &type metadata accessor for Feature);
  *&v99 = v69;
  v30 = sub_1000056E0(&v97);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = v31 + 104;
  v67 = v32;
  v32(v30);
  isFeatureEnabled(_:)();
  sub_100007000(&v97);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  v33 = LabelPlaceholderCompatibility.referableLayoutTextView.getter();
  v35 = v34;
  v36 = *(v90 + 8);
  v90 += 8;
  v36(v17, v88);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_1006DDD30(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_100974340, &v97);

  swift_unknownObjectRelease();
  sub_10002A39C(&v97, &v102);
  v38 = swift_allocObject();
  sub_1000FDA14(&v102, (v38 + 16));
  swift_allocObject();
  v72 = LayoutViewPlaceholder.init(measureWith:)();

  swift_unknownObjectRelease();

  sub_100007000(&v97);
  if (qword_10096D080 != -1)
  {
    swift_once();
  }

  v39 = v77;
  v40 = sub_1000056A8(v77, qword_100974368);
  if (qword_10096D088 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v39, qword_100974380);
  if (qword_10096D090 != -1)
  {
    swift_once();
  }

  v41 = [v89 traitCollection];
  v71 = v40;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *(&v98 + 1) = v29;
  *&v99 = v69;
  v42 = sub_1000056E0(&v97);
  v67(v42, v68, v29);
  isFeatureEnabled(_:)();
  sub_100007000(&v97);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  v43 = LabelPlaceholderCompatibility.referableLayoutTextView.getter();
  v45 = v44;
  v36(v17, v88);
  v46 = swift_allocObject();
  v47 = v76;
  *(v46 + 16) = v75;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = LayoutViewPlaceholder.init(measureWith:)();
  sub_1000FDA3C(&unk_100974398, &v97);
  v49 = swift_allocObject();
  v50 = v100;
  *(v49 + 48) = v99;
  *(v49 + 64) = v50;
  *(v49 + 80) = v101;
  v51 = v98;
  *(v49 + 16) = v97;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = LayoutViewPlaceholder.init(measureWith:)();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v78 & 1;
  *(v53 + 32) = v79;
  swift_allocObject();
  v54 = LayoutViewPlaceholder.init(measureWith:)();
  *(&v98 + 1) = v26;
  *&v99 = &protocol witness table for LayoutViewPlaceholder;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v72;
  v103 = v26;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  *&v102 = v52;
  v96[3] = v26;
  v96[0] = v54;
  v95[3] = type metadata accessor for ZeroDimension();
  v95[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v95);

  static ZeroDimension.zero.getter();
  v55 = v80;
  (*(*(v39 - 8) + 16))(v80, v71, v39);
  v57 = v81;
  v56 = v82;
  (*(v81 + 104))(v55, enum case for FontSource.useCase(_:), v82);
  v94[3] = type metadata accessor for StaticDimension();
  v94[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v94);
  v92 = v56;
  v93 = &protocol witness table for FontSource;
  v58 = sub_1000056E0(v91);
  (*(v57 + 16))(v58, v55, v56);
  StaticDimension.init(_:scaledLike:)();
  (*(v57 + 8))(v55, v56);
  v92 = &type metadata for CGFloat;
  v93 = &protocol witness table for CGFloat;
  v91[0] = 0x4030000000000000;
  v59 = v84;
  SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)();
  v61 = v85;
  v60 = v86;
  (*(v85 + 16))(v83, v59, v86);
  sub_10002C0AC(&v97, v95);
  sub_10002C0AC(&v102, v94);
  sub_10002C0AC(v96, v91);
  type metadata accessor for SearchLockupListLayout();
  swift_allocObject();
  v62 = SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)();
  (*(v61 + 8))(v59, v60);
  sub_100007000(v96);
  sub_100007000(&v102);
  sub_100007000(&v97);
  *&v97 = v62;
  sub_1000FE794(&qword_100978E20, &type metadata accessor for SearchLockupListLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v64 = v63;

  return v64;
}

_OWORD *sub_1000FDA14(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_1000FDAA8(void *a1)
{
  v3 = *(v1 + 32);
  swift_getObjectType();
  sub_1000FDC00(v3, a1);
}

void sub_1000FDB10()
{
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v0 + v2) = CompoundScrollObserver.init(children:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000FDC00(uint64_t a1, void *a2)
{
  type metadata accessor for SmallLockupView();
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = sub_1000056A8(v4, qword_1009D3798);
  sub_10070B598(v5, a2);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

id sub_1000FDCE8(char a1, uint64_t a2, void *a3, double a4, double a5)
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
  v42 = a2;
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
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
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

void sub_1000FE1A4()
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
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource);
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

uint64_t sub_1000FE528()
{
  v1 = sub_10002849C(&qword_100974470);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2 - 8];
  v4 = sub_10002849C(&qword_100974478);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-v7 - 8];
  v9 = *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v9)
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    return sub_10002B894(v3, &qword_100974470);
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10002B894(v3, &qword_100974470);
  }

  result = (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v14 = type metadata accessor for Lockup();
    v15 = sub_1000FE794(&qword_100974480, &type metadata accessor for Lockup);

    DiffableLens.value.getter();
    dispatch thunk of NestedCollectionViewImpressionsCoordinator.register(model:for:)();

    (*(v5 + 8))(v8, v4);
    return sub_100007000(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FE794(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000FE8FC()
{
  result = qword_1009744B8;
  if (!qword_1009744B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744B8);
  }

  return result;
}

unint64_t sub_1000FE96C()
{
  result = qword_1009744C0;
  if (!qword_1009744C0)
  {
    type metadata accessor for ArcadeSubscriptionStateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744C0);
  }

  return result;
}

Swift::Int sub_1000FE9C4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000FEA30()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000FEA88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArcadeState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002849C(&qword_1009764A0);
  v7 = Promise.__allocating_init()();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v8 = v24[1];
  ArcadeSubscriptionManager.subscriptionState.getter();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = ArcadeSubscriptionStateAction.notSubscribedAction.getter();
    v11 = type metadata accessor for ArcadeIntroOfferState();
    v12 = *(*(v11 - 8) + 8);

    v12(v6, v11);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v4 + 8))(v6, v3);
    v13 = ArcadeSubscriptionStateAction.purchasingAction.getter();

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 != enum case for ArcadeState.subscribed(_:))
    {
      v18 = enum case for ArcadeState.unknown(_:);
      v19 = v9;
      v20 = ArcadeSubscriptionStateAction.unknownAction.getter();
      if (v19 == v18)
      {

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(v4 + 8);

        v22(v6, v3);
        if (v20)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_1000FEE00();
      swift_allocError();
      Promise.reject(_:)();

      return v7;
    }

    (*(v4 + 96))(v6, v3);

    v14 = *(sub_10002849C(&qword_100973ED8) + 48);
    v15 = ArcadeSubscriptionStateAction.subscribedAction.getter();
    v16 = type metadata accessor for ArcadeTrialEnrolledState();
    v17 = *(*(v16 - 8) + 8);

    v17(v6 + v14, v16);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_1005D0214(v21, 1, a2);

  Promise.pipe(to:)();

  return v7;
}

unint64_t sub_1000FEE00()
{
  result = qword_1009744C8;
  if (!qword_1009744C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000FEF38()
{
  result = qword_1009744D0;
  if (!qword_1009744D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744D0);
  }

  return result;
}

uint64_t sub_1000FEF8C(uint64_t a1, uint64_t a2)
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

void sub_1000FF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    ContingentOffer.offerLockup.getter();
    v9 = Lockup.clickAction.getter();

    if (v9)
    {
      v10 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10002B894(v6, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000FF2B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Artwork.Crop();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v29);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for ContingentOffer();
  if (swift_dynamicCast())
  {
    v11 = ContingentOffer.backgroundArtwork.getter();
    if (qword_10096EBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1000056A8(v12, qword_1009D31A8);
    AspectRatio.height(fromWidth:)();
    if (v11)
    {

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v8 + 8))(v10, v7);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v13 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v13 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkView();
      sub_1001028D8(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v14 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
    v15 = ContingentOffer.offerLockup.getter();
    sub_100504CB0(v15, a2);
  }

  else
  {
    sub_10002C0AC(a1, v29);
    type metadata accessor for OfferItem();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v28 = v8;
    v17 = v2;
    v18 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
    v19 = OfferItem.offerLockup.getter();
    sub_100504CB0(v19, a2);

    if (OfferItem.moduleArtwork.getter())
    {
      v20 = qword_10096EBE0;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_1000056A8(v21, qword_1009D31A8);
      AspectRatio.height(fromWidth:)();

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v28 + 8))(v10, v7);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v22 = *(v17 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v22 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkView();
      sub_1001028D8(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView);
      v24 = a1[3];
      v25 = a1[4];
      v26 = sub_10002A400(a1, v24);
      sub_1005BFE40(v26, a2, v23, v24, v25);
    }
  }
}

double sub_1000FF8A4(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100100904(a2, v10, a7, v7, ObjectType);
}

uint64_t sub_1000FF910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContingentOffer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100100AE8(v5, a3);
  }

  else
  {
    type metadata accessor for OfferItem();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_1001018CC(v7, a3);
  }
}

double sub_1000FFA50(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, uint64_t a9, void *a10)
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
  v15 = type metadata accessor for LabelPlaceholderCompatibility();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v21 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v101 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v96 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v95 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v94 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v92 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v90 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v102 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v97 = LayoutViewPlaceholder.init(representing:)();
  v22 = [a7 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v93 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v91 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v89 = LayoutViewPlaceholder.init(representing:)();
  v23 = [a7 traitCollection];
  v24 = [v23 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  sub_1000056A8(v25, qword_1009D1A60);
  v26 = [a7 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v28 = type metadata accessor for Feature();
  v111 = v28;
  v83 = sub_1001028D8(&qword_100972E50, &type metadata accessor for Feature);
  v112 = v83;
  v29 = sub_1000056E0(aBlock);
  v30 = *(v28 - 8);
  v31 = *(v30 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v84 = v28;
  v81 = v31;
  v80 = v30 + 104;
  v31(v29);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);

  v85 = v27;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v88 = v15;
  v79 = v33;
  v33(v20, v15);
  if (qword_10096E650 != -1)
  {
    swift_once();
  }

  v34 = qword_1009D2238;
  v35 = unk_1009D2240;
  v36 = qword_1009D2248;
  v37 = [a7 traitCollection];
  v38 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v87 = v32;
  if (v38)
  {
  }

  else
  {
    v39 = UITraitCollection.isSizeClassCompact.getter();

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
  v48[2] = sub_10010279C;
  v48[3] = v47;
  v112 = sub_1001027AC;
  v113 = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v111 = &unk_1008B4980;
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
  v54 = sub_1000056E0(aBlock);
  v81(v54, v82, v53);
  v55 = v50;
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  v56 = v86;
  v107 = v55;
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
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
  sub_100585D88(v59, v57, v100, 0, v60, v109);

  v61 = [v48 traitCollection];
  LOBYTE(v60) = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v60)
  {
    if (qword_10096EBE8 == -1)
    {
LABEL_18:
      v62 = qword_1009D31C0;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_10096EBE0 != -1)
  {
    swift_once();
  }

  v62 = qword_1009D31A8;
LABEL_22:
  v63 = v105;
  v64 = sub_1000056A8(v103, v62);
  sub_1001027B4(v64, v63);
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
  sub_10002C0AC(v114, v14 + v65[13]);
  sub_10002C0AC(aBlock, v14 + v65[14]);
  sub_10002C0AC(v109, v14 + v65[15]);
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
  sub_100102818(v63, v14);
  *(v14 + v65[19]) = v88;

  sub_1005787A8(v48, v14);

  sub_100007000(v109);
  sub_100007000(aBlock);
  sub_100007000(v114);
  sub_10010287C(v14);
  return a8;
}

void sub_1001006C8(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for AdamId();
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (Lockup.offerDisplayProperties.getter())
    {
      v6 = OfferDisplayProperties.subscriptionFamilyId.getter();
      v8 = v7;

      if (v8)
      {
        type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
        v9 = static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.getter();
        if (v9)
        {
          v10 = v9;
          Lockup.adamId.getter();

          sub_10002849C(&unk_100973AF0);
          type metadata accessor for BaseObjectGraph();

          inject<A, B>(_:from:)();
          v11 = v17[1];
          v12 = v17[2];
          type metadata accessor for SubscriptionLockupPresenter();
          swift_allocObject();
          v13 = a2;
          v14 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v6, v8, v5, a2, &off_1008C69D8, v10, v11, v12);
          v15 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v13[v15] = v14;

          return;
        }
      }
    }
  }

  v16 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v16] = 0;

  sub_100506E98(0, 0);
}

double sub_100100904(double a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  type metadata accessor for ContingentOffer();
  if (swift_dynamicCastClass())
  {

    ContingentOffer.title.getter();
    v9 = Paragraph.text.getter();

    v10 = a5;
    v26 = a4;
    v11 = ContingentOffer.badge.getter();
    v13 = v12;
    v14 = ContingentOffer.subtitle.getter();
    v16 = v15;
    v17 = ContingentOffer.trunkAppIcon.getter();
    v18 = sub_1000FFA50(v9, v11, v13, v14, v16, v17, a3, a1, v26, v10);
  }

  else
  {
    type metadata accessor for OfferItem();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    OfferItem.title.getter();
    v19 = Paragraph.text.getter();

    v20 = OfferItem.badge.getter();
    v22 = v21;
    v23 = OfferItem.subtitle.getter();
    v18 = sub_1000FFA50(v19, v20, v22, v23, v24, 0, a3, a1, a4, a5);
  }

  return v18;
}

uint64_t sub_100100AE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v5 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v5 - 8);
  v103 = &v84 - v6;
  v102 = type metadata accessor for OfferButtonSubtitlePosition();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10002849C(&unk_1009701A0);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v101 = &v84 - v8;
  v9 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v9 - 8);
  v106 = &v84 - v10;
  v11 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v11 - 8);
  v108 = &v84 - v12;
  v13 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v13 - 8);
  v107 = &v84 - v14;
  v15 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v15 - 8);
  v112 = &v84 - v16;
  v17 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v17 - 8);
  v19 = &v84 - v18;
  v20 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v20 - 8);
  v98 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v110 = &v84 - v23;
  v105 = type metadata accessor for MediaOverlayStyle();
  v24 = *(v105 - 8);
  __chkstk_darwin(v105);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = ContingentOffer.badge.getter();
  sub_10065FA88(v27, v28);
  ContingentOffer.title.getter();
  v29 = Paragraph.text.getter();

  sub_10065FBE8(v29);
  v30 = ContingentOffer.subtitle.getter();
  v32 = v31;
  v33 = ContingentOffer.trunkAppIcon.getter();
  sub_10058625C(v30, v32, v33);
  v34 = v19;

  v35 = v112;

  v36 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  ContingentOffer.mediaOverlayStyle.getter();
  v37 = MediaOverlayStyle.userInterfaceStyle.getter();
  v38 = v105;
  (*(v24 + 8))(v26, v105);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_100660130();
  [*(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v109 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
  v40 = v110;
  v41 = v39;
  v42 = ContingentOffer.offerLockup.getter();
  v43 = sub_10002849C(&unk_100973240);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v97 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = type metadata accessor for OfferStyle();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  type metadata accessor for InAppPurchaseLockup();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v92 = v45;
    v93 = v43;
    v95 = v34;
    v96 = a1;
    v50 = v48;
    v104 = v48;
    v51 = v49;
    v89 = type metadata accessor for OfferEnvironment();
    v52 = *(v89 - 8);
    v88 = *(v52 + 56);
    v90 = v52 + 56;
    v53 = v107;
    v88(v107, 1, 1, v89);
    v87 = *(v111 + 56);
    v105 = v42;
    v54 = v108;
    v87(v108, 1, 1, v113);
    v55 = type metadata accessor for OfferTint();
    v56 = *(v55 - 8);
    v85 = *(v56 + 56);
    v86 = v56 + 56;
    v57 = v106;
    v85(v106, 1, 1, v55);
    swift_retain_n();
    sub_1004F3190(v50, v51, v40, v114, 1, 0, v35, v53, v57, v54);
    sub_10002B894(v57, &unk_100973AD0);
    v51[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    v91 = v51;
    [v51 setNeedsLayout];
    sub_10002B894(v54, &unk_100970150);
    sub_10002B894(v53, &unk_100970160);
    v58 = v35;
    v94 = v41;
    v59 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v60 = InAppPurchaseLockup.parent.getter();
    v88(v53, 1, 1, v89);
    v87(v54, 1, 1, v113);
    v85(v57, 1, 1, v55);
    sub_1004F3190(v60, v59, v40, v114, 0, 0, v58, v53, v57, v54);
    sub_10002B894(v57, &unk_100973AD0);
    v59[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v105;
    sub_10002B894(v61, &unk_100970150);
    sub_10002B894(v53, &unk_100970160);
    v63 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = Lockup.icon.getter();
    if (v64)
    {
    }

    sub_100709C80(v64 != 0);
    v65 = *&v59[v63];
    v66 = Lockup.offerDisplayProperties.getter();

    v67 = Lockup.buttonAction.getter();

    v68 = v98;
    v92(v98, 1, 1, v93);
    v69 = v99;
    v70 = v102;
    (*(v99 + 104))(v100, enum case for OfferButtonSubtitlePosition.below(_:), v102);
    (*(v69 + 56))(v103, 1, 1, v70);
    sub_1001028D8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v71 = v101;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v66, v67, 0, v68, v71, v114, 0, 0);

    (*(v111 + 8))(v71, v113);
    sub_10002B894(v68, &unk_100973230);
    v46 = v94;
    sub_1001006C8(v62, v94);

    v34 = v95;
    sub_1005076FC(v46, v95);
    a1 = v96;
    v35 = v112;
    v40 = v110;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] setHidden:1];
    v72 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v73 = type metadata accessor for OfferEnvironment();
    v74 = v107;
    (*(*(v73 - 8) + 56))(v107, 1, 1, v73);
    v75 = v108;
    (*(v111 + 56))(v108, 1, 1, v113);
    v76 = type metadata accessor for OfferTint();
    v77 = v106;
    (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
    sub_1004F3190(v42, v72, v40, v114, 0, 0, v35, v74, v77, v75);
    sub_10002B894(v77, &unk_100973AD0);
    v72[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v72 setNeedsLayout];
    sub_10002B894(v75, &unk_100970150);
    sub_10002B894(v74, &unk_100970160);
    sub_1005076FC(v46, v34);
  }

  sub_10002B894(v35, &qword_100973AE0);
  sub_10002B894(v34, &qword_100974528);
  sub_10002B894(v40, &unk_100973230);
  v78 = swift_allocObject();
  v79 = v109;
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  *(v80 + 2) = v78;
  *(v80 + 3) = a1;
  *(v80 + 4) = v114;
  v81 = (v79 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  v82 = *(v79 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  *v81 = sub_1001018C0;
  v81[1] = v80;

  sub_10001F63C(v82);
}

uint64_t sub_1001018CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v6 - 8);
  v114 = v94 - v7;
  v113 = type metadata accessor for OfferButtonSubtitlePosition();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10002849C(&unk_1009701A0);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v112 = v94 - v9;
  v10 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v10 - 8);
  v116 = v94 - v11;
  v12 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v12 - 8);
  v118 = v94 - v13;
  v14 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v14 - 8);
  v117 = v94 - v15;
  v16 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v16 - 8);
  v124 = v94 - v17;
  v18 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v18 - 8);
  v122 = v94 - v19;
  v20 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v20 - 8);
  v109 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v120 = v94 - v23;
  v24 = type metadata accessor for MediaOverlayStyle();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OfferItem.badge.getter();
  sub_10065FA88(v28, v29);
  OfferItem.title.getter();
  v30 = Paragraph.text.getter();

  sub_10065FBE8(v30);
  v31 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView);
  OfferItem.subtitle.getter();
  v32 = *(v31 + qword_10098CA38);
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_10098CA40) setHidden:1];
  type metadata accessor for ArtworkLoader();
  v35 = a2;
  BaseObjectGraph.optional<A>(_:)();

  v36 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  OfferItem.mediaOverlayStyle.getter();
  v37 = MediaOverlayStyle.userInterfaceStyle.getter();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView);
  sub_1005BFBEC();
  sub_100660130();
  [*(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (OfferItem.moduleArtwork.getter())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView);
  }

  v39 = v122;
  v40 = v120;
  v115 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
  v42 = OfferItem.offerLockup.getter();
  v43 = sub_10002849C(&unk_100973240);
  v44 = *(v43 - 8);
  v107 = *(v44 + 56);
  v108 = v43;
  v106 = v44 + 56;
  v107(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = type metadata accessor for OfferStyle();
  (*(*(v45 - 8) + 56))(v124, 1, 1, v45);
  type metadata accessor for InAppPurchaseLockup();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v119 = v41;
  if (v47)
  {
    v49 = v47;
    v104 = a1;
    v105 = v3;
    v100 = type metadata accessor for OfferEnvironment();
    v50 = *(v100 - 8);
    v99 = *(v50 + 56);
    v101 = v50 + 56;
    v51 = v117;
    v99(v117, 1, 1, v100);
    v98 = *(v121 + 56);
    v52 = v118;
    v98(v118, 1, 1, v123);
    v96 = type metadata accessor for OfferTint();
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
    sub_1004F3190(v49, v48, v57, v115, 1, 0, v124, v51, v54, v52);
    sub_10002B894(v54, &unk_100973AD0);
    v48[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    v102 = v48;
    [v48 setNeedsLayout];
    sub_10002B894(v52, &unk_100970150);
    sub_10002B894(v51, &unk_100970160);
    v60 = v49;
    v61 = *&v119[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v103 = v60;
    v62 = v58;
    v63 = InAppPurchaseLockup.parent.getter();
    v99(v51, 1, 1, v100);
    v98(v52, 1, 1, v123);
    v95(v54, 1, 1, v96);
    v64 = v62;
    sub_1004F3190(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10002B894(v54, &unk_100973AD0);
    v61[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v61 setNeedsLayout];

    sub_10002B894(v52, &unk_100970150);
    sub_10002B894(v51, &unk_100970160);
    v65 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = Lockup.icon.getter();
    v67 = v55;
    if (v66)
    {
    }

    sub_100709C80(v66 != 0);
    v68 = *&v61[v65];
    v69 = Lockup.offerDisplayProperties.getter();

    v70 = Lockup.buttonAction.getter();

    v71 = v109;
    (v107)(v109, 1, 1, v108);
    v72 = v110;
    v73 = v113;
    (*(v110 + 104))(v111, enum case for OfferButtonSubtitlePosition.below(_:), v113);
    (*(v72 + 56))(v114, 1, 1, v73);
    sub_1001028D8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v74 = v112;
    AccessibilityConditional.init(value:axValue:)();
    v75 = v64;
    sub_10064AFA4(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v121 + 8))(v74, v123);
    sub_10002B894(v71, &unk_100973230);
    v76 = v119;
    sub_1001006C8(v67, v119);

    v39 = v122;
    sub_1005076FC(v76, v122);
    v3 = v105;
    v77 = v124;
    v78 = v120;
  }

  else
  {
    [v48 setHidden:1];
    v94[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v80 = type metadata accessor for OfferEnvironment();
    v81 = v117;
    (*(*(v80 - 8) + 56))(v117, 1, 1, v80);
    v82 = v118;
    (*(v121 + 56))(v118, 1, 1, v123);
    v83 = type metadata accessor for OfferTint();
    v84 = v116;
    (*(*(v83 - 8) + 56))(v116, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v115;
    v77 = v124;
    sub_1004F3190(v85, v79, v86, v115, 0, 0, v124, v81, v84, v82);
    sub_10002B894(v84, &unk_100973AD0);
    v79[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v79 setNeedsLayout];
    v76 = v119;
    v75 = v87;
    sub_10002B894(v82, &unk_100970150);
    sub_10002B894(v81, &unk_100970160);
    sub_1005076FC(v76, v39);
  }

  sub_10002B894(v77, &qword_100973AE0);
  sub_10002B894(v39, &qword_100974528);
  sub_10002B894(v78, &unk_100973230);
  OfferItem.offerLockup.getter();
  v88 = Lockup.clickAction.getter();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_10010276C;
    *(v88 + 24) = v89;

    v90 = sub_100102774;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  *v91 = v90;
  v91[1] = v88;
  return sub_10001F63C(v92);
}

uint64_t sub_1001027B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010287C(uint64_t a1)
{
  v2 = type metadata accessor for AppPromotionCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001028D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100102920()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100974530);
  sub_1000056A8(v4, qword_100974530);
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1640);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100102AF4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_100974548);
  sub_1000056A8(v0, qword_100974548);
  return AspectRatio.init(_:_:)();
}

char *sub_100102B48(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = type metadata accessor for AppShowcaseType();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

uint64_t sub_100102E9C(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100005744(0, &qword_100972EB0);
      v5 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_100102F60(void *a1)
{
  sub_100105720();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_100103010(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100103064;
}

void sub_100103064(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100105720();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_100105720();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_10010318C()
{
  v0 = type metadata accessor for VideoConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_1009D2200;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  VideoConfiguration.aspectRatio.getter();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10002B894(v6, &unk_1009732A0);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = AspectRatio.isLandscape.getter();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_10010343C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_100105720();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

void sub_1001035A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v113 = type metadata accessor for FloatingPointRoundingRule();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for VideoConfiguration();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v5 - 8);
  v126 = &v111 - v6;
  v128 = type metadata accessor for AspectRatio();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v117 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShowcaseType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v111 - v12;
  __chkstk_darwin(v13);
  v125 = &v111 - v14;
  __chkstk_darwin(v15);
  v124 = &v111 - v16;
  __chkstk_darwin(v17);
  *&v133 = &v111 - v18;
  __chkstk_darwin(v19);
  v116 = &v111 - v20;
  __chkstk_darwin(v21);
  *&v121 = &v111 - v22;
  __chkstk_darwin(v23);
  v131 = &v111 - v24;
  __chkstk_darwin(v25);
  v27 = &v111 - v26;
  __chkstk_darwin(v28);
  v30 = &v111 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v111 - v33;
  v142.receiver = v1;
  v142.super_class = ObjectType;
  objc_msgSendSuper2(&v142, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v135 = v44;
  v132 = *&v1;
  v136 = v45;
  v137 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v134 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_10010626C(&qword_1009745B0, &type metadata accessor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v138 == v140 && v139 == v141)
  {
    v48 = 1;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v49 = v9[1];
  v49(v30, v8);
  v130 = v9 + 1;
  v129 = v49;
  v49(v34, v8);

  if (v48)
  {
    v50 = v132;
    v123 = sub_10010318C();
  }

  else
  {
    v123 = 0;
    v50 = v132;
  }

  v51 = v131;
  v136(v27, *&v50 + v135, v8);
  sub_10010318C();
  v52 = v46;
  v53 = v46[4];
  v53(v51, v27, v8);
  v54 = v52[11];
  v131 = (v52 + 11);
  v55 = v54(v51, v8);
  v122 = v53;
  if (v55 == v134 || v55 == enum case for AppShowcaseType.small(_:))
  {
    v56 = v132;
  }

  else
  {
    v56 = v132;
    if (v55 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v51, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v59 = &StringUserDefaultsDebugSetting;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v60 = Strong;
  v61 = [Strong isHidden];

  v62 = v135;
  if (v61)
  {
    goto LABEL_27;
  }

  v63 = v121;
  v64 = v136;
  v136(*&v121, *&v56 + v135, v8);
  v65 = sub_10010318C();
  v143.origin.x = v37;
  v143.origin.y = v39;
  v143.size.width = v41;
  v143.size.height = v43;
  Width = CGRectGetWidth(v143);
  v66 = v116;
  v64(v116, *&v63, v8);
  v67 = v54(v66, v8);
  if (v67 != v134)
  {
    if (v67 != enum case for AppShowcaseType.small(_:) && v67 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(*&v121, v8);
      Width = 0.0;
      v121 = *&v116;
      v59 = &StringUserDefaultsDebugSetting;
      goto LABEL_25;
    }

    v59 = &StringUserDefaultsDebugSetting;
    if (qword_10096D0A0 == -1)
    {
LABEL_24:
      sub_1000056A8(v128, qword_100974548);
      AspectRatio.width(fromHeight:)();
      Width = v68;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v65 & 1) == 0)
  {
    v59 = &StringUserDefaultsDebugSetting;
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v59 = &StringUserDefaultsDebugSetting;
LABEL_25:
  v129(*&v121, v8);
LABEL_26:
  v62 = v135;
LABEL_27:
  v136(*&v133, *&v56 + v62, v8);
  v69 = swift_unknownObjectWeakLoadStrong();
  v121 = Width;
  if (v69)
  {
    v70 = v69;
    v71 = [v69 v59[51].base_prots];
  }

  else
  {
    v71 = 1;
  }

  v72 = v122;
  v73 = sub_10010318C();
  v144.origin.x = v37;
  v144.origin.y = v39;
  v144.size.width = v41;
  v144.size.height = v43;
  CGRectGetWidth(v144);
  v132 = v37;
  v74 = v134;
  if (v71 || (v73 & 1) != 0)
  {
    v129(*&v133, v8);
    v75 = v125;
    goto LABEL_46;
  }

  v76 = v114;
  v136(v114, *&v133, v8);
  v77 = v54(v76, v8);
  v75 = v125;
  if (v77 == v74)
  {
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v77 != enum case for AppShowcaseType.small(_:) && v77 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v129(v76, v8);
    goto LABEL_41;
  }

  if (qword_10096D0A0 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_1000056A8(v128, qword_100974548);
  AspectRatio.width(fromHeight:)();
LABEL_41:
  v78 = v115;
  v72(v115, *&v133, v8);
  v79 = v54(v78, v8);
  if (v79 != v74 && v79 != enum case for AppShowcaseType.small(_:) && v79 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (v129)(v78, v8, 25.0, 25.0);
  }

  v37 = v132;
LABEL_46:
  v80 = *(*&v56 + OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView);
  v145.origin.x = v37;
  v145.origin.y = v39;
  v145.size.width = v41;
  v145.size.height = v43;
  CGRectGetHeight(v145);
  v81 = sub_1002966E0();
  v83 = v82;
  v146.origin.x = v37;
  v146.origin.y = v39;
  v133 = v41;
  v146.size.width = v41;
  v146.size.height = v43;
  MinX = CGRectGetMinX(v146);
  v85 = v124;
  v136(v124, *&v56 + v135, v8);
  v72(v75, v85, v8);
  v86 = v54(v75, v8);
  v87 = 0.0;
  v88 = v43;
  v89 = v39;
  if (v86 == v74)
  {
    v90 = v128;
    v91 = v127;
    v92 = v123;
  }

  else
  {
    v87 = 30.0;
    v90 = v128;
    v91 = v127;
    v92 = v123;
    if (v86 != enum case for AppShowcaseType.small(_:))
    {
      v87 = 25.0;
      if (v86 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v129)(v75, v8, 25.0);
        v87 = 0.0;
      }
    }
  }

  v93 = MinX + v87;
  v94 = 20.0;
  if ((v92 & 1) == 0)
  {
    v147.origin.x = v132;
    v147.origin.y = v89;
    v147.size.width = v133;
    v147.size.height = v88;
    v94 = CGRectGetMidY(v147) + v83 * -0.5;
  }

  CGRect.withLayoutDirection(in:relativeTo:)();
  [v80 setFrame:?];
  v95 = swift_unknownObjectWeakLoadStrong();
  if (!v95)
  {
    v102 = v126;
    (*(v91 + 56))(v126, 1, 1, v90);
    goto LABEL_59;
  }

  v96 = qword_1009D2200;
  v97 = v95;
  swift_beginAccess();
  v98 = v119;
  v99 = &v97[v96];
  v100 = v118;
  v101 = v120;
  (*(v119 + 16))(v118, v99, v120);

  v102 = v126;
  VideoConfiguration.aspectRatio.getter();
  (*(v98 + 8))(v100, v101);
  if ((*(v91 + 48))(v102, 1, v90) == 1)
  {
LABEL_59:
    sub_10002B894(v102, &unk_1009732A0);
    goto LABEL_60;
  }

  v103 = v117;
  (*(v91 + 32))(v117, v102, v90);
  v104 = swift_unknownObjectWeakLoadStrong();
  if (v104 && (v105 = v104, v106 = [v104 isHidden], v105, v103 = v117, (v106 & 1) == 0))
  {
    AspectRatio.height(fromWidth:)();
    if (v92)
    {
      v148.origin.x = v132;
      v148.origin.y = v89;
      v148.size.width = v133;
      v148.size.height = v88;
      CGRectGetMinX(v148);
      v149.origin.x = v93;
      v149.origin.y = v94;
      v149.size.width = v81;
      v149.size.height = v83;
      CGRectGetMaxY(v149);
      if (qword_10096D098 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for StaticDimension();
      sub_1000056A8(v109, qword_100974530);
      v110 = v111;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      (*(v112 + 8))(v110, v113);
      (*(v91 + 8))(v117, v90);
    }

    else
    {
      v150.origin.x = v93;
      v150.origin.y = v94;
      v150.size.width = v81;
      v150.size.height = v83;
      CGRectGetMaxX(v150);
      v151.origin.x = v132;
      v151.origin.y = v89;
      v151.size.width = v133;
      v151.size.height = v88;
      CGRectGetHeight(v151);
      (*(v91 + 8))(v103, v90);
    }
  }

  else
  {
    (*(v91 + 8))(v103, v90);
  }

LABEL_60:
  v107 = swift_unknownObjectWeakLoadStrong();
  if (v107)
  {
    v108 = v107;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v108 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell()
{
  result = qword_100974588;
  if (!qword_100974588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100104844()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppShowcaseType();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_100104948(uint64_t **a1))()
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
  v2[4] = sub_100103010(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1001049B8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10010626C(&qword_1009745A8, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100104A2C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10010626C(&qword_1009745A8, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100104AB8(uint64_t *a1))()
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
  sub_10010626C(&qword_1009745A8, type metadata accessor for AppShowcaseCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100104C50(uint64_t a1, void *a2)
{
  v72 = a2;
  v63 = type metadata accessor for FloatingPointRoundingRule();
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppShowcaseType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v58 - v8;
  __chkstk_darwin(v9);
  v60 = &v58 - v10;
  __chkstk_darwin(v11);
  v62 = &v58 - v12;
  __chkstk_darwin(v13);
  v71 = &v58 - v14;
  __chkstk_darwin(v15);
  v61 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = &v58 - v18;
  __chkstk_darwin(v19);
  v73 = &v58 - v20;
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = type metadata accessor for AspectRatio();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v59 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v68 = &v58 - v28;
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = AppShowcase.video.getter();
  v69 = v25;
  v70 = v24;
  if (v32)
  {
    Video.preview.getter();

    Artwork.size.getter();

    AspectRatio.init(_:_:)();
    v33 = AspectRatio.isLandscape.getter();
    (*(v25 + 8))(v31, v24);
  }

  else
  {
    v33 = 0;
  }

  if (!AppShowcase.video.getter())
  {
    v34 = v33;
    AppShowcase.type.getter();
    goto LABEL_8;
  }

  AppShowcase.type.getter();
  if (v33)
  {
    v34 = v33;
LABEL_8:
    v5[1](v23, v4);
    goto LABEL_23;
  }

  v35 = v61;
  (v5[2])(v61, v23, v4);
  v36 = v5;
  v37 = v5[11];
  v38 = (v37)(v35, v4);
  v39 = enum case for AppShowcaseType.large(_:);
  if (v38 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v38 == enum case for AppShowcaseType.small(_:) || v38 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_10096D0A0 == -1)
    {
LABEL_16:
      sub_1000056A8(v70, qword_100974548);
      AspectRatio.width(fromHeight:)();
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v36[1](v35, v4);
LABEL_17:
  v40 = v71;
  (v36[4])(v71, v23, v4);
  v41 = (v37)(v40, v4);
  if (v41 == v39)
  {
    v5 = v36;
  }

  else
  {
    v5 = v36;
    if (v41 != enum case for AppShowcaseType.small(_:) && v41 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (v36[1])(v40, v4, 25.0, 25.0);
    }
  }

  v34 = v33;
LABEL_23:
  type metadata accessor for AppShowcaseLockupView();
  sub_100296ADC(a1, v72);
  v71 = a1;
  AppShowcase.type.getter();
  v42 = enum case for AppShowcaseType.large(_:);
  v43 = v5[13];
  (v43)(v74, enum case for AppShowcaseType.large(_:), v4);
  sub_10010626C(&qword_1009745B0, &type metadata accessor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v77 != v75 || v78 != v76)
  {
    v34 &= _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v61 = v5;
  v44 = v5[1];
  v44(v74, v4);
  v44(v73, v4);

  if (v34)
  {
    if (qword_10096D098 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for StaticDimension();
    sub_1000056A8(v45, qword_100974530);
    v46 = v65;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v67 + 8))(v46, v63);
    result = AppShowcase.video.getter();
    v49 = v69;
    v48 = v70;
    v50 = v68;
    if (result)
    {
      Video.preview.getter();

      Artwork.size.getter();

      v51 = v59;
      AspectRatio.init(_:_:)();
      (*(v49 + 32))(v50, v51, v48);
      v52 = v62;
      AppShowcase.type.getter();
      v53 = v61;
      v54 = v60;
      (*(v61 + 2))(v60, v52, v4);
      v55 = (*(v53 + 11))(v54, v4);
      if (v55 != v42)
      {
        if (v55 == enum case for AppShowcaseType.small(_:) || v55 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_10096D0A0 != -1)
          {
            swift_once();
          }

          sub_1000056A8(v48, qword_100974548);
          AspectRatio.width(fromHeight:)();
        }

        else
        {
          v44(v52, v4);
          v52 = v54;
        }
      }

      v44(v52, v4);
      AspectRatio.height(fromWidth:)();
      return (*(v49 + 8))(v50, v48);
    }
  }

  else
  {
    v56 = v64;
    AppShowcase.type.getter();
    v57 = v66;
    (v43)(v66, v42, v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v77 != v75 || v78 != v76)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v44(v57, v4);
    v44(v56, v4);
  }

  return result;
}

void sub_100105720()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10010626C(&qword_100973190, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_100102E9C(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1001057F0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v4 = type metadata accessor for AspectRatio();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artwork.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v55 = type metadata accessor for AppShowcaseType();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = &v47 - v19;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  sub_10002C0AC(a1, v59);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for AppShowcase();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v48 = v17;
  v27 = v58;
  v28 = *(*&v2[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v28;
  v29 = [v2 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  AppShowcase.lockup.getter();
  v30 = Lockup.icon.getter();

  if (v30)
  {
    v47 = v27;
    AppShowcase.type.getter();
    v31 = v57;
    v32 = v55;
    (*(v57 + 32))(v22, v25, v55);
    v33 = (*(v31 + 88))(v22, v32);
    if (v33 != enum case for AppShowcaseType.large(_:) && v33 != enum case for AppShowcaseType.small(_:) && v33 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v57 + 8))(v22, v32);
    }

    Artwork.style.getter();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    Artwork.Style.orIfUnspecified(_:)();
    v34 = *(v7 + 8);
    v34(v9, v6);
    v34(v12, v6);
    Artwork.Style.iconWidth(fromHeight:)();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v35 = v51;
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v35 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_10010626C(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v34(v15, v6);
  }

  if (!AppShowcase.video.getter())
  {
  }

  Video.preview.getter();

  Artwork.size.getter();
  Artwork.size.getter();
  v36 = v52;
  AspectRatio.init(_:_:)();
  v37 = v50;
  AppShowcase.type.getter();
  v38 = AspectRatio.isLandscape.getter();
  v39 = v57;
  v40 = v48;
  v41 = v55;
  (*(v57 + 16))(v48, v37, v55);
  v42 = (*(v39 + 88))(v40, v41);
  v43 = Strong;
  if (v42 == enum case for AppShowcaseType.large(_:))
  {
    v44 = v54;
    if (v38)
    {
LABEL_21:
      (*(v57 + 8))(v37, v41);
      goto LABEL_22;
    }

    if (qword_10096D0A0 == -1)
    {
LABEL_20:
      sub_1000056A8(v44, qword_100974548);
      AspectRatio.width(fromHeight:)();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v44 = v54;
  if (v42 == enum case for AppShowcaseType.small(_:) || v42 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v45 = *(v57 + 8);
  v45(v37, v41);
  v45(v48, v41);
LABEL_22:
  AspectRatio.height(fromWidth:)();
  Artwork.config(_:mode:prefersLayeredImage:)();
  if (v43)
  {
    type metadata accessor for VideoView();
    sub_10010626C(&unk_1009840E0, type metadata accessor for VideoView);
    v46 = v43;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    ArtworkLoader.prefetchArtwork(using:)();
  }

  return (*(v53 + 8))(v36, v44);
}

void sub_1001060A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView);
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v12, v4);

  v5 = *(v1 + v2);
  type metadata accessor for ArtworkView();
  sub_10010626C(&qword_100970E80, &type metadata accessor for ArtworkView);
  v6 = v5;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = qword_100988CC0;
    v10 = Strong;
    v9 = [*(Strong + qword_100988CC0) layer];
    [v9 removeAllAnimations];

    [*&v10[v8] setImage:0];
    type metadata accessor for VideoView();
    sub_10010626C(&unk_1009840E0, type metadata accessor for VideoView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10010626C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001062B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001062FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10010635C()
{
  result = qword_1009745B8;
  if (!qword_1009745B8)
  {
    type metadata accessor for GameCenterAchievementsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009745B8);
  }

  return result;
}

uint64_t sub_1001063B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    type metadata accessor for GameCenter();
    v8 = a1;
    GameCenterAchievementsAction.bundleId.getter();
    static GameCenter.fetchGameRecord(for:with:)();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_1000076C0();
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = static OS_dispatch_queue.main.getter();
    Promise.then(perform:orCatchError:on:)();

    return sub_100007000(v13);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100106DE8();
    swift_allocError();
    Promise.reject(_:)();
  }
}

uint64_t sub_100106674(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = type metadata accessor for FlowOrigin();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowAnimationBehavior();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FlowPresentationContext();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for FlowPage();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = GameCenterAchievementsAction.achievementIdsToHighlight.getter();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.gameAchievements(_:), v18);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = type metadata accessor for ReferrerData();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v42 = &type metadata for GameCenterAchievementsPage;
  v40 = v22;
  v41 = v23;
  v29 = v22;

  static ActionMetrics.notInstrumented.getter();
  (*(v9 + 104))(v30, enum case for FlowPresentationContext.infer(_:), v31);
  (*(v33 + 104))(v32, enum case for FlowAnimationBehavior.infer(_:), v34);
  (*(v36 + 104))(v35, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v26 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005D01FC(v26, 1, v38);
  Promise.pipe(to:)();
}

uint64_t sub_100106B8C()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100106CE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10002849C(&qword_1009764A0);
  v4 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v7[3] = sub_1000076C0();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v7);
  return v4;
}

unint64_t sub_100106DE8()
{
  result = qword_1009745C0;
  if (!qword_1009745C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009745C0);
  }

  return result;
}

unint64_t sub_100106E64()
{
  result = qword_1009745C8;
  if (!qword_1009745C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009745C8);
  }

  return result;
}

id sub_100106EB8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_100107128(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

void (*sub_100107278(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v4 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v4 = dispatch thunk of AdRotationDisabling.disableAdvertRotation.getter();
  v7 = v6;

LABEL_6:
  *a1 = v4;
  a1[1] = v7;
  return sub_100107338;
}

void sub_100107338(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10000827C(v2);
        v4 = v3;
        dispatch thunk of AdRotationDisabling.disableAdvertRotation.setter();
      }
    }

    goto LABEL_10;
  }

  if (!v3 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    sub_10001F63C(v2);
    return;
  }

  v5 = v3;
  dispatch thunk of AdRotationDisabling.disableAdvertRotation.setter();
}

void sub_100107474(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v3 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_10010AD30(&qword_100973190, type metadata accessor for VideoView);
    }

    swift_getObjectType();
    v6 = a1;
    v5 = v3;
    dispatch thunk of AnyVideoViewProviding.someVideoView.setter();

    v4 = v6;
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_100107578()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v3 = v1;
    v4 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();

    if (v4)
    {
      type metadata accessor for VideoView();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_100107618(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
    v7 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();

    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v5;
  return sub_1001076EC;
}

void sub_1001076EC(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_10010AD30(&qword_100973190, type metadata accessor for VideoView);
        }

        v7 = v11;
        v8 = v5;
        dispatch thunk of AnyVideoViewProviding.someVideoView.setter();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_10010AD30(&qword_100973190, type metadata accessor for VideoView);
    }

    v9 = v11;
    v10 = v5;
    dispatch thunk of AnyVideoViewProviding.someVideoView.setter();

    v4 = v9;
  }

LABEL_13:
}

id sub_1001078AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640), sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10002A400(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_100007000(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10002B894(&v8, &qword_100974638);

  return v7;
}

id sub_1001079D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640), sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10002A400(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_100007000(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10002B894(&v8, &qword_100974638);

  return v7;
}

id sub_100107B04()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640), sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10002A400(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_100007000(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10002B894(&v8, &qword_100974638);

  return v7;
}

uint64_t sub_100107C30()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640), sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10002A400(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_100007000(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10002B894(&v6, &qword_100974638);
}

uint64_t sub_100107D6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640), sub_10002849C(&qword_100988830), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10002A400(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_100007000(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10002B894(&v6, &qword_100974638);
}

void sub_100107E88()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchResultCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t sub_100108048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PageEnvironment();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for PageGrid.Direction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for PageGrid();
  v70 = *(v17 - 8);
  v71 = v17;
  __chkstk_darwin(v17);
  v67 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v59 - v20;
  type metadata accessor for SearchResult();
  sub_10010AD30(&qword_10096FAA0, &type metadata accessor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v73)
  {
    v61 = v16;
    v22 = sub_100484CDC();
    if (!v22)
    {
    }

    v24 = v23;
    v60 = a2;
    v62 = &v3[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
    v63 = v3;
    if (!*&v3[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents] || sub_10002849C(&qword_100974630) != v22)
    {
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v26 = v62;
      v27 = *v62;
      *v62 = v25;
      *(v26 + 1) = v24;
      v28 = v11;
      v29 = a1;
      v30 = v25;
      sub_100107128(v27);

      a1 = v29;
      v11 = v28;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v31 = v73;
    v32 = UITraitCollection.isSizeClassCompact.getter();

    if ((v32 & 1) == 0)
    {
      v50 = *v62;
      if (*v62)
      {
        v51 = *(v62 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v63 setNeedsLayout];
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v64 + 8))(v10, v8);
    v33 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v73)
    {
      v33 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v34 = v61;
    (*(v12 + 104))(v61, *v33, v11);
    PageGrid.containerWidth.getter();
    v64 = v35;
    PageGrid.containerHeight.getter();
    v59 = v36;
    PageGrid.safeAreaInsets.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v37 = v66;
    PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)();
    (*(v12 + 16))(v65, v34, v11);
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    v38 = v67;
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v68 + 8))(v37, v69);
    v39 = v62;
    if (*v62)
    {
      [*v62 layoutMargins];
      v41 = v40;
      v43 = v42;
      PageGrid.horizontalMargins.getter();
      v45 = v44;
      PageGrid.horizontalMargins.getter();
      v46 = *v39;
      if (!*v39)
      {
        goto LABEL_14;
      }
    }

    else
    {
      PageGrid.horizontalMargins.getter();
      v41 = v56;
      v45 = v57;
      v43 = v58;
      v46 = *v39;
      if (!*v39)
      {
LABEL_14:
        v47 = *(v70 + 8);
        v48 = v38;
        v49 = v71;
        v47(v48, v71);
        (*(v12 + 8))(v34, v11);
        v47(v72, v49);
        v50 = *v39;
        if (*v39)
        {
          v51 = *(v39 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v53 = a1;
          v54 = *(v51 + 48);
          v55 = v50;
          v54(v53, v60, ObjectType, v51);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v46 setLayoutMargins:{v41, v45, v43}];
    goto LABEL_14;
  }

  return result;
}

void sub_100108780(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      sub_10027B8BC(a1, a2);
      [v6 setNeedsLayout];
    }
  }
}

uint64_t sub_100108894(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v73 = a6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for DispatchTime();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&unk_100980530);
  type metadata accessor for MixedMediaLockup();
  result = swift_dynamicCast();
  if (result)
  {
    v68 = v11;
    v23 = *&v6[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
    if (v23 && (v69 = v81[0], v65 = v9, v24 = type metadata accessor for AdvertsSearchResultContentView(), (v25 = swift_dynamicCastClass()) != 0))
    {
      v26 = v25;
      v27 = v23;
      [v6 setUserInteractionEnabled:0];
      v66 = v27;
      [v26 frame];
      v32 = [objc_allocWithZone(v24) initWithFrame:{v28, v29, v30, v31}];
      v33 = *(*&v26[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing);
      [v26 layoutMargins];
      v67 = v21;
      v34 = v69;
      v35 = v71;
      v36 = v70;
      v70 = v6;
      sub_1006C65C8(v69, v71, v36, v79, v33, v37, v38, v39, v40);
      [v32 layoutIfNeeded];
      [v26 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v81[0] = v42;
      v81[1] = v44;
      v81[2] = v46;
      v81[3] = v48;
      v82 = 0;
      sub_1006C89B8(v34, v81, v72, v35);
      v49 = &v26[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v72 = v8;
      v50 = *v49;
      v51 = v49[1];
      sub_10000827C(*v49);
      sub_10068D354(v50, v51);
      sub_10001F63C(v50);
      sub_1000076C0();
      v71 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v52 = 333;
      if ((v73 & 1) == 0)
      {
        v52 = 0;
      }

      *v16 = v52;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      + infix(_:_:)();
      (*(v14 + 8))(v16, v13);
      v74 = *(v74 + 8);
      v53 = v75;
      (v74)(v18, v75);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = v26;
      v56 = v79;
      v55[4] = v32;
      v55[5] = v56;
      aBlock[4] = sub_10010AD18;
      aBlock[5] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008B4BC8;
      v57 = _Block_copy(aBlock);
      v58 = v66;
      v59 = v32;

      v60 = v76;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10010AD30(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      v61 = v78;
      v62 = v72;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v63 = v67;
      v64 = v71;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v57);

      (*(v65 + 8))(v61, v62);
      (*(v77 + 8))(v60, v68);
      return (v74)(v63, v53);
    }

    else
    {
    }
  }

  return result;
}

void sub_10010904C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_10010AD24;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100504C5C;
    aBlock[3] = &unk_1008B4C18;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_1001091AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10010AD30(&qword_100973190, type metadata accessor for VideoView);
  }

  sub_10010AD30(&unk_100973DE0, type metadata accessor for AdvertsSearchResultContentView);
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    sub_10010AD30(&qword_100973190, type metadata accessor for VideoView);
  }

  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  v9 = sub_10010AD30(&qword_10096FAE0, type metadata accessor for AdvertsSearchResultContentView);
  v10 = &a5[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  v11 = *&a5[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  *v10 = a4;
  *(v10 + 1) = v9;
  v12 = a4;
  sub_100107128(v11);

  [a5 setUserInteractionEnabled:1];
}

void sub_1001093E8()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_10001F63C(v2);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v3;
      dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
    }
  }
}

void sub_1001094D4()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = v4;
      dispatch thunk of NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
    }
  }
}

uint64_t sub_1001095D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for ComponentSeparator.Position();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PageGrid();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ItemBackground();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100974620);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  type metadata accessor for AdvertsSearchResult();
  sub_10010AD30(&qword_10096FA98, &type metadata accessor for AdvertsSearchResult);
  v37 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v45)
  {
    v26 = 1;
    v25 = v44;
    goto LABEL_14;
  }

  v34 = v4;
  v43 = v45;
  dispatch thunk of AdvertsSearchResult.itemBackground.getter();
  (*(v9 + 104))(v19, enum case for ItemBackground.clearAdWithSeparator(_:), v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v23 = *(v11 + 48);
  sub_100031660(v22, v13, &unk_1009804F0);
  sub_100031660(v19, &v13[v23], &unk_1009804F0);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    sub_100031660(v13, v16, &unk_1009804F0);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v27 = v35;
      (*(v9 + 32))(v35, &v13[v23], v8);
      sub_10010AD30(&qword_100974628, &type metadata accessor for ItemBackground);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v9 + 8);
      v29(v27, v8);
      sub_10002B894(v19, &unk_1009804F0);
      sub_10002B894(v22, &unk_1009804F0);
      v29(v16, v8);
      sub_10002B894(v13, &unk_1009804F0);
      v25 = v44;
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_9:

      v26 = 1;
      goto LABEL_14;
    }

    sub_10002B894(v19, &unk_1009804F0);
    sub_10002B894(v22, &unk_1009804F0);
    (*(v9 + 8))(v16, v8);
LABEL_8:
    sub_10002B894(v13, &qword_100974620);
    v25 = v44;
    goto LABEL_9;
  }

  sub_10002B894(v19, &unk_1009804F0);
  sub_10002B894(v22, &unk_1009804F0);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_10002B894(v13, &unk_1009804F0);
  v25 = v44;
LABEL_11:
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  v30 = v38;
  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.horizontalDirectionalMargins.getter();
  (*(v40 + 104))(v34, enum case for ComponentSeparator.Position.bottom(_:), v42);
  v31 = [objc_opt_self() systemGray3Color];
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();

  (*(v39 + 8))(v30, v41);
  v26 = 0;
LABEL_14:
  v32 = type metadata accessor for ComponentSeparator();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

id sub_100109D20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell()
{
  result = qword_1009745F8;
  if (!qword_1009745F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100109E2C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100109ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_100109F38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100109FFC()
{
  type metadata accessor for SearchResult();
  sub_10010AD30(&qword_10096FAA0, &type metadata accessor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v1)
  {
    if (sub_100484CDC())
    {
      dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
    }
  }

  return result;
}

void sub_10010A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell();
    v10 = v4;
    LayoutMarginsAware<>.layoutFrame.getter();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}

void sub_10010A1C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v4;
    v10(a1, a2, a3 & 1, ObjectType, v8);
  }
}

uint64_t static CondensedEditorialSearchResultContentView.sizingForArtworkPrefetch(in:asPartOf:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentPrefetchSizing();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10010A30C()
{
  type metadata accessor for SearchResult();
  sub_10010AD30(&qword_10096FAA0, &type metadata accessor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v1)
  {
    if (sub_100484CDC())
    {
      dispatch thunk of static ArtworkPrefetchingShelfComponentView.prefetchArtwork(for:with:asPartOf:)();
    }
  }

  return result;
}

uint64_t (*sub_10010A3E4(uint64_t **a1))()
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
  v2[4] = sub_100107618(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10010A458()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents))
  {
    return 0;
  }

  type metadata accessor for AdvertsSearchResultContentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(*(result + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView) + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd);
  }

  return result;
}

uint64_t sub_10010A4E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1;
    v4 = dispatch thunk of AdRotationDisabling.disableAdvertRotation.getter();

    return v4;
  }

  return result;
}

void sub_10010A57C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v2)
  {
    v3 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v2;
      dispatch thunk of AdRotationDisabling.disableAdvertRotation.setter();

      return;
    }

    a1 = v3;
  }

  sub_10001F63C(a1);
}

uint64_t (*sub_10010A65C(void *a1))()
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
  v2[4] = sub_100107278(v2);
  return sub_1000C2700;
}

uint64_t sub_10010A714()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10010A774(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10010A80C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_10010A868(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_10010A9FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10010AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10010AABC(uint64_t *a1))()
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

uint64_t sub_10010AB58()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 0;
  }

  v2 = v1;
  v3 = dispatch thunk of VideoViewContainer.currentlyOwns(videoView:)();

  return v3 & 1;
}

uint64_t sub_10010AD30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010AD80(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = type metadata accessor for PageGrid.HorizontalMargins();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_10002849C(&qword_100970EF0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v63 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = v15;
  v54 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = a1;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  v55 = v9;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 2 * v34;
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v40 = v46;
  v41 = v35;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v41 = v47;
  v38(v41, v36, v39);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 4 * v42;
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v51;
}

uint64_t sub_10010B764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_10002849C(&qword_100970EE8);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = type metadata accessor for AspectRatio();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Shelf.PresentationHints();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = type metadata accessor for DynamicTypeSize();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = type metadata accessor for Shelf.ContentType();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = type metadata accessor for PageGrid.Direction();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_10002849C(&qword_100974650);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_100031660(v139, &v111 - v47, &unk_10098FFB0);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_100031660(v140, v50, &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_10010E3D0(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  v139 = v32;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    ReadOnlyLens.subscript.getter();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10002B894(v59, &unk_100992460);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v64 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10035F3AC(v64 & 1);
LABEL_41:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10096DB10 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    static PageGrid.DirectionalValue<>.zero.getter();
    v72 = v122;
    static PageGrid.DirectionalValue<>.zero.getter();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1001ABF90(v71, v72);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10002B894(v134, &qword_100974650);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (PageEnvironment.isHorizontalSizeClassRegular.getter())
    {
      v78 = v118;
      AspectRatio.init(_:_:)();
      v79 = AspectRatio.isPortrait.getter();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_10096DB78 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_10096DB80 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10002B894(v134, &qword_100974650);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_10096ED30 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10096EEF0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    ReadOnlyLens.subscript.getter();

    v85 = v115;
    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_10010E3D0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v86 = v117;
    v87 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    LOBYTE(v88) = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10060A4CC(v88 & 1, v87 & 1);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10002B894(v134, &qword_100974650);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (PageEnvironment.isHorizontalSizeClassRegular.getter())
    {
      v96 = v125;
      PageEnvironment.dynamicTypeSize.getter();
      v97 = DynamicTypeSize.isAccessibilitySize.getter();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_10069F96C(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_10096E9A0 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (PageEnvironment.isAX.getter())
    {
      if (qword_10096DC48 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_10096DC40 == -1)
    {
LABEL_83:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10002B894(v134, &qword_100974650);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10002B894(v134, &qword_100974650);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_1001E6E40(v100, 0);
LABEL_91:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_100479FD4(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10005DDB8(v101);
LABEL_108:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10002B894(v134, &qword_100974650);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    sub_10055F7F4(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10096ED30 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = PageEnvironment.isHorizontalSizeClassCompact.getter();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_10096EF08 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_10096EF00 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1001D19A0();
LABEL_68:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10002B894(v134, &qword_100974650);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v107 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (PageEnvironment.isHorizontalSizeClassCompact.getter())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_1001D231C(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10002B894(v134, &qword_100974650);
  return v110(v136, v56);
}

uint64_t sub_10010DBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D4>, double a8@<D5>)
{
  v31 = a5;
  v34 = a4;
  v35 = a2;
  v37 = a3;
  v38 = a6;
  v32 = a7;
  v33 = a8;
  v36 = type metadata accessor for Shelf.ContentType();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageGrid.Direction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  sub_100031660(v35, &v29 - v21, &unk_10098FFB0);
  v29 = v17;
  sub_100031660(v37, &v22[*(v17 + 48)], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v37 = v12;
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v41)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v12 + 104))(v16, *v23, v11);
  swift_getKeyPath();
  v24 = v36;
  v35 = a1;
  ReadOnlyLens.subscript.getter();

  v25 = (*(v39 + 88))(v10, v24);
  if (v25 == enum case for Shelf.ContentType.reviews(_:) || v25 == enum case for Shelf.ContentType.reviewsContainer(_:) || v25 == enum case for Shelf.ContentType.todayCard(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.productMedia(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v25 == enum case for Shelf.ContentType.upsellBreakout(_:) || v25 == enum case for Shelf.ContentType.smallBreakout(_:) || v25 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v28 = v37;
    (*(v37 + 16))(v30, v16, v11);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v28 + 8))(v16, v11);
    return sub_10002B894(v22, &qword_100974650);
  }

  else
  {
    v40 = v31;
    sub_100031660(v22, v19, &qword_100974650);
    v26 = *(v29 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v37 + 8))(v16, v11);
    sub_10002B894(v22, &qword_100974650);
    sub_10002B894(&v19[v26], &unk_10098FFB0);
    sub_10002B894(v19, &unk_10098FFB0);
    return (*(v39 + 8))(v10, v24);
  }
}

uint64_t sub_10010E180()
{
  sub_10010E37C();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_10010E264()
{
  sub_10010E37C();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

unint64_t sub_10010E37C()
{
  result = qword_100974648;
  if (!qword_100974648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974648);
  }

  return result;
}

uint64_t sub_10010E3D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010E41C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10010E4C8()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell();
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_100112220(&qword_100974B28, type metadata accessor for MediumLockupCollectionViewCell);
      sub_100112220(&qword_100974B30, type metadata accessor for MediumLockupCollectionViewCell);
      v16 = &qword_100974B38;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell();
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_100112220(&qword_100974B58, type metadata accessor for LargeLockupCollectionViewCell);
      sub_100112220(&qword_100974B60, type metadata accessor for LargeLockupCollectionViewCell);
      v16 = &qword_100974B68;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell();
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_100112220(&qword_100974988, type metadata accessor for ProductLockupCollectionViewCell);
      sub_100112220(&qword_100987110, type metadata accessor for ProductLockupCollectionViewCell);
      v16 = &qword_100974990;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell();
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_100112220(&qword_100974BE8, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
      sub_100112220(&qword_100974BF0, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
      v16 = &qword_100974BF8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell();
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_100112220(&qword_100974BB8, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);
      sub_100112220(&qword_100974BC0, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);
      v16 = &qword_100974BC8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_100112220(&qword_100974788, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);
      sub_100112220(&qword_100974790, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);
      v16 = &qword_100974798;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell();
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_100112220(&qword_100974770, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);
      sub_100112220(&qword_100974778, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);
      v16 = &qword_100974780;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell();
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_100112220(&qword_100974DE0, type metadata accessor for ActionCollectionViewCell);
      sub_100112220(&qword_100974DE8, type metadata accessor for ActionCollectionViewCell);
      v16 = &qword_100974DF0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell();
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_100112220(&qword_100974D30, type metadata accessor for ArtworkCollectionViewCell);
      sub_100112220(&qword_100974D38, type metadata accessor for ArtworkCollectionViewCell);
      v16 = &unk_100974D40;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell();
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_100112220(&qword_100974CF0, type metadata accessor for RibbonBarItemCollectionViewCell);
      sub_100112220(&qword_100974CF8, type metadata accessor for RibbonBarItemCollectionViewCell);
      v16 = &qword_100974D00;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell();
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_100112220(&qword_100974B00, type metadata accessor for ParagraphCollectionViewCell);
      sub_100112220(&qword_100974B08, type metadata accessor for ParagraphCollectionViewCell);
      v16 = &qword_100974B10;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v18 = type metadata accessor for Feature();
      v30 = v18;
      v31 = sub_100112220(&qword_100972E50, &type metadata accessor for Feature);
      v19 = sub_1000056E0(v29);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.annotations_update_2025A(_:), v18);
      LOBYTE(v18) = isFeatureEnabled(_:)();
      sub_100007000(v29);
      if (v18)
      {
        v14 = type metadata accessor for AnnotationCollectionViewHostingCell();
        v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
        sub_100112220(&qword_100974DC8, type metadata accessor for AnnotationCollectionViewHostingCell);
        sub_100112220(&qword_100974DD0, type metadata accessor for AnnotationCollectionViewHostingCell);
        v16 = &unk_100974DD8;
      }

      else
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell();
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_100112220(&qword_100974DB0, type metadata accessor for AnnotationCollectionViewCell);
        sub_100112220(&qword_100974DB8, type metadata accessor for AnnotationCollectionViewCell);
        v16 = &qword_100974DC0;
      }

      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell();
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_100112220(&qword_100974C88, type metadata accessor for FootnoteCollectionViewCell);
      sub_100112220(&qword_100970F18, type metadata accessor for FootnoteCollectionViewCell);
      v16 = &qword_100974C90;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell();
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_100112220(&qword_100974828, type metadata accessor for TitledParagraphCollectionViewCell);
      sub_100112220(&qword_100978680, type metadata accessor for TitledParagraphCollectionViewCell);
      v16 = &unk_100974830;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell();
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_100112220(&qword_100974CD8, type metadata accessor for EditorialCardCollectionViewCell);
      sub_100112220(&qword_100974CE0, type metadata accessor for EditorialCardCollectionViewCell);
      v16 = &qword_100974CE8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell();
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_100112220(&qword_1009747B8, type metadata accessor for VideoCardCollectionViewCell);
      sub_100112220(&qword_1009747C0, type metadata accessor for VideoCardCollectionViewCell);
      v16 = &qword_1009747C8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell();
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_100112220(&qword_100974D08, type metadata accessor for BrickCollectionViewCell);
      sub_100112220(&qword_100974D10, type metadata accessor for BrickCollectionViewCell);
      v16 = &qword_100974D18;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell();
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_100112220(&qword_1009748E0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
      sub_100112220(&qword_1009748E8, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
      v16 = &qword_1009748F0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v20 = type metadata accessor for Feature();
      v30 = v20;
      v31 = sub_100112220(&qword_100972E50, &type metadata accessor for Feature);
      v21 = sub_1000056E0(v29);
      (*(*(v20 - 8) + 104))(v21, enum case for Feature.product_capability_update_2024E(_:), v20);
      LOBYTE(v20) = isFeatureEnabled(_:)();
      sub_100007000(v29);
      if ((v20 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell();
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_100112220(&qword_100974A28, type metadata accessor for ProductCapabilityCell);
        sub_100112220(&qword_100974A30, type metadata accessor for ProductCapabilityCell);
        v16 = &qword_100974A38;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell();
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_100112220(&qword_100974960, type metadata accessor for ProductReviewCollectionViewCell);
        sub_100112220(&qword_100974968, type metadata accessor for ProductReviewCollectionViewCell);
        v16 = &unk_100974970;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell();
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_100112220(&qword_100974948, type metadata accessor for ReviewSummaryCollectionViewCell);
        sub_100112220(&qword_100974950, type metadata accessor for ReviewSummaryCollectionViewCell);
        v16 = &unk_100974958;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell();
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_100112220(&qword_100974C98, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
        sub_100112220(&qword_100974CA0, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
        v16 = &qword_100974CA8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell();
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_100112220(&qword_100974810, type metadata accessor for BaseTodayCardCollectionViewCell);
        sub_100112220(&qword_100974818, type metadata accessor for BaseTodayCardCollectionViewCell);
        v16 = &qword_100974820;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell();
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_100112220(&qword_100974B40, type metadata accessor for LinkCollectionViewCell);
        sub_100112220(&qword_100974B48, type metadata accessor for LinkCollectionViewCell);
        v16 = &qword_100974B50;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell();
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_100112220(&qword_100974978, type metadata accessor for QuoteCollectionViewCell);
        sub_100112220(&unk_100982680, type metadata accessor for QuoteCollectionViewCell);
        v16 = &qword_100974980;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell();
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_100112220(&qword_100974C00, type metadata accessor for HorizontalRuleCollectionViewCell);
        sub_100112220(&qword_100974C08, type metadata accessor for HorizontalRuleCollectionViewCell);
        v16 = &qword_100974C10;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell();
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_100112220(&qword_100974C78, type metadata accessor for FramedArtworkCollectionViewCell);
        sub_100112220(&unk_1009901F0, type metadata accessor for FramedArtworkCollectionViewCell);
        v16 = &qword_100974C80;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell();
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_100112220(&qword_100974910, type metadata accessor for ScreenshotShelfCollectionViewCell);
        sub_100112220(&qword_100974918, type metadata accessor for ScreenshotShelfCollectionViewCell);
        v16 = &unk_100974920;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell();
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_100112220(&qword_100974A00, type metadata accessor for ProductMediaCollectionViewCell);
        sub_100112220(&qword_100974A08, type metadata accessor for ProductMediaCollectionViewCell);
        v16 = &qword_100974A10;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell();
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_100112220(&qword_1009749E8, type metadata accessor for ProductMediaItemCollectionViewCell);
        sub_100112220(&qword_1009749F0, type metadata accessor for ProductMediaItemCollectionViewCell);
        v16 = &unk_1009749F8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell();
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_100112220(&qword_100974D88, type metadata accessor for AppShowcaseCollectionViewCell);
        sub_100112220(&qword_100974D90, type metadata accessor for AppShowcaseCollectionViewCell);
        v16 = &qword_100974D98;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_100112220(&qword_100974BD0, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell);
        sub_100112220(&qword_100974BD8, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell);
        v16 = &unk_100974BE0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell();
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_100112220(&qword_100974D70, type metadata accessor for AppTrailerLockupCollectionViewCell);
        sub_100112220(&qword_100974D78, type metadata accessor for AppTrailerLockupCollectionViewCell);
        v16 = &unk_100974D80;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell();
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_100112220(&qword_1009749D8, type metadata accessor for ProductPageLinkCollectionViewCell);
        sub_100112220(&unk_100991B30, type metadata accessor for ProductPageLinkCollectionViewCell);
        v16 = &qword_1009749E0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell();
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_100112220(&qword_1009749C8, type metadata accessor for ProductRatingsCollectionViewCell);
        sub_100112220(&qword_100970EB0, type metadata accessor for ProductRatingsCollectionViewCell);
        v16 = &qword_1009749D0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell();
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_100112220(&qword_1009749B0, type metadata accessor for GenericProductReviewCollectionViewCell);
        sub_100112220(&qword_1009749B8, type metadata accessor for GenericProductReviewCollectionViewCell);
        v16 = &unk_1009749C0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell();
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_100112220(&qword_100974998, type metadata accessor for GenericProductReviewActionCollectionViewCell);
        sub_100112220(&qword_1009749A0, type metadata accessor for GenericProductReviewActionCollectionViewCell);
        v16 = &unk_1009749A8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell();
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_100112220(&qword_100974938, type metadata accessor for LinkableTextCollectionViewCell);
        sub_100112220(&qword_100970F00, type metadata accessor for LinkableTextCollectionViewCell);
        v16 = &qword_100974940;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell();
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_100112220(&qword_100974C68, type metadata accessor for FramedVideoCollectionViewCell);
        sub_100112220(&unk_10098B630, type metadata accessor for FramedVideoCollectionViewCell);
        v16 = &qword_100974C70;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell();
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_100112220(&qword_100974A18, type metadata accessor for ProductDescriptionCollectionViewCell);
        sub_100112220(&qword_10098BB90, type metadata accessor for ProductDescriptionCollectionViewCell);
        v16 = &unk_100974A20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell();
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_100112220(&qword_100974D20, type metadata accessor for BannerCollectionViewCell);
        sub_100112220(&qword_10096F998, type metadata accessor for BannerCollectionViewCell);
        v16 = &unk_100974D28;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell();
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_100112220(&qword_1009748F8, type metadata accessor for ScreenshotsLockupCollectionViewCell);
        sub_100112220(&qword_100974900, type metadata accessor for ScreenshotsLockupCollectionViewCell);
        v16 = &unk_100974908;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell();
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_100112220(&qword_100974928, type metadata accessor for RoundedButtonCollectionViewCell);
        sub_100112220(&qword_1009705E0, type metadata accessor for RoundedButtonCollectionViewCell);
        v16 = &unk_100974930;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell();
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_100112220(&qword_100974838, type metadata accessor for TitledButtonStackCollectionViewCell);
        sub_100112220(&qword_100974840, type metadata accessor for TitledButtonStackCollectionViewCell);
        v16 = &unk_100974848;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell();
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_100112220(&qword_100974850, type metadata accessor for BaseTodayBrickCollectionViewCell);
        sub_100112220(&qword_100974858, type metadata accessor for BaseTodayBrickCollectionViewCell);
        v16 = &qword_100974860;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell();
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_100112220(&qword_100974B70, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
        sub_100112220(&qword_100974B78, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
        v16 = &qword_100974B80;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell();
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_100112220(&qword_1009747D0, type metadata accessor for UpsellBreakoutCollectionViewCell);
        sub_100112220(&qword_1009747D8, type metadata accessor for UpsellBreakoutCollectionViewCell);
        v16 = &unk_1009747E0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell();
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_100112220(&qword_1009748A8, type metadata accessor for SmallBreakoutCollectionViewCell);
        sub_100112220(&qword_10098BA00, type metadata accessor for SmallBreakoutCollectionViewCell);
        v16 = &qword_1009748B0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell();
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_100112220(&qword_100974CB0, type metadata accessor for EditorialStoryCardCollectionViewCell);
        sub_100112220(&qword_100974CB8, type metadata accessor for EditorialStoryCardCollectionViewCell);
        v16 = &unk_100974CC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell();
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_100112220(&qword_100974B18, type metadata accessor for MixedMediaLockupCollectionViewCell);
        sub_100112220(&qword_100972B20, type metadata accessor for MixedMediaLockupCollectionViewCell);
        v16 = &unk_100974B20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell();
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_100112220(&qword_100974D60, type metadata accessor for ArcadeFooterCollectionViewCell);
        sub_100112220(&qword_100973FB8, type metadata accessor for ArcadeFooterCollectionViewCell);
        v16 = &unk_100974D68;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell();
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_100112220(&qword_100974CC8, type metadata accessor for EditorialQuoteCollectionViewCell);
        sub_100112220(&unk_10098D250, type metadata accessor for EditorialQuoteCollectionViewCell);
        v16 = &qword_100974CD0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell();
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_100112220(&qword_100974D48, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        sub_100112220(&qword_100974D50, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        v16 = &qword_100974D58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell();
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_100112220(&qword_100974C50, type metadata accessor for GameCenterActivityFeedCollectionViewCell);
        sub_100112220(&qword_100974C58, type metadata accessor for GameCenterActivityFeedCollectionViewCell);
        v16 = &unk_100974C60;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell();
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_100112220(&qword_100974758, type metadata accessor for ArcadeDownloadPackCollectionViewCell);
        sub_100112220(&qword_100974760, type metadata accessor for ArcadeDownloadPackCollectionViewCell);
        v16 = &qword_100974768;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell();
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_100112220(&qword_100974C30, type metadata accessor for GameCenterReengagementCollectionViewCell);
        sub_100112220(&qword_100996200, type metadata accessor for GameCenterReengagementCollectionViewCell);
        v16 = &qword_100974C38;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_100112220(&qword_100974880, type metadata accessor for SmallGameCenterPlayerCollectionViewCell);
        sub_100112220(&qword_100989850, type metadata accessor for SmallGameCenterPlayerCollectionViewCell);
        v16 = &unk_100974888;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_100112220(&qword_100974B88, type metadata accessor for LargeGameCenterPlayerCollectionViewCell);
        sub_100112220(&qword_100974B90, type metadata accessor for LargeGameCenterPlayerCollectionViewCell);
        v16 = &unk_100974B98;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell();
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_100112220(&qword_100974C40, type metadata accessor for AchievementSummaryCollectionViewCell);
        sub_100112220(&qword_100995E70, type metadata accessor for AchievementSummaryCollectionViewCell);
        v16 = &qword_100974C48;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell();
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_100112220(&qword_100974AD8, type metadata accessor for PosterLockupCollectionViewCell);
        sub_100112220(&qword_100974AE0, type metadata accessor for PosterLockupCollectionViewCell);
        v16 = &qword_100974AE8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell();
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_100112220(&qword_100974890, type metadata accessor for SmallContactCardCollectionViewCell);
        sub_100112220(&qword_100974898, type metadata accessor for SmallContactCardCollectionViewCell);
        v16 = &qword_1009748A0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell();
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_100112220(&qword_100974BA0, type metadata accessor for InformationRibbonCollectionViewCell);
        sub_100112220(&qword_100974BA8, type metadata accessor for InformationRibbonCollectionViewCell);
        v16 = &qword_100974BB0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell();
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_100112220(&qword_100974AB0, type metadata accessor for PreorderDisclaimerCollectionViewCell);
        sub_100112220(&unk_100982710, type metadata accessor for PreorderDisclaimerCollectionViewCell);
        v16 = &qword_100974AB8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell();
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_100112220(&qword_100974A60, type metadata accessor for PrivacyHeaderCollectionViewCell);
        sub_100112220(&qword_10097E550, type metadata accessor for PrivacyHeaderCollectionViewCell);
        v16 = &qword_100974A68;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell();
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_100112220(&qword_100974A70, type metadata accessor for PrivacyFooterCollectionViewCell);
        sub_100112220(&unk_10098DE00, type metadata accessor for PrivacyFooterCollectionViewCell);
        v16 = &qword_100974A78;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell();
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_100112220(&qword_100974A50, type metadata accessor for PrivacyTypeCollectionViewCell);
        sub_100112220(&qword_10097AA20, type metadata accessor for PrivacyTypeCollectionViewCell);
        v16 = &qword_100974A58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell();
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_100112220(&qword_100974A98, type metadata accessor for PrivacyCategoryCollectionViewCell);
        sub_100112220(&qword_100974AA0, type metadata accessor for PrivacyCategoryCollectionViewCell);
        v16 = &qword_100974AA8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell();
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_100112220(&qword_100974A80, type metadata accessor for PrivacyDefinitionCollectionViewCell);
        sub_100112220(&qword_100974A88, type metadata accessor for PrivacyDefinitionCollectionViewCell);
        v16 = &qword_100974A90;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell();
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_100112220(&qword_100974DA0, type metadata accessor for AppEventCollectionViewCell);
        sub_100112220(&qword_100973AB0, type metadata accessor for AppEventCollectionViewCell);
        v16 = &qword_100974DA8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell();
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_100112220(&qword_1009748D0, type metadata accessor for SearchResultCollectionViewCell);
        sub_100112220(&qword_100974618, type metadata accessor for SearchResultCollectionViewCell);
        v16 = &unk_1009748D8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell();
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_100112220(&qword_1009748B8, type metadata accessor for SearchResultsContextCardCollectionViewCell);
        sub_100112220(&qword_1009748C0, type metadata accessor for SearchResultsContextCardCollectionViewCell);
        v16 = &qword_1009748C8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell();
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_100112220(&qword_1009747A0, type metadata accessor for SegmentedControlCollectionViewCell);
        sub_100112220(&qword_1009747A8, type metadata accessor for SegmentedControlCollectionViewCell);
        v16 = &qword_1009747B0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell();
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_100112220(&qword_100974C18, type metadata accessor for HeroCarouselCollectionViewCell);
        sub_100112220(&qword_100974C20, type metadata accessor for HeroCarouselCollectionViewCell);
        v16 = &unk_100974C28;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell();
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_100112220(&qword_100974800, type metadata accessor for UberCollectionViewCell);
        sub_100112220(&qword_1009812D0, type metadata accessor for UberCollectionViewCell);
        v16 = &qword_100974808;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell();
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_100112220(&qword_100974A40, type metadata accessor for BadgeCollectionViewCell);
        sub_100112220(&qword_100974A48, type metadata accessor for BadgeCollectionViewCell);
        v16 = &unk_100973130;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell();
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_100112220(&qword_100974710, type metadata accessor for MediaPageHeaderCollectionViewHostingCell);
        sub_100112220(&qword_100974718, type metadata accessor for MediaPageHeaderCollectionViewHostingCell);
        v16 = &unk_100974720;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell();
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_100112220(&qword_100974AF0, type metadata accessor for PlaceholderCollectionViewCell);
        sub_100112220(&qword_1009739A0, type metadata accessor for PlaceholderCollectionViewCell);
        v16 = &qword_100974AF8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell();
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_100112220(&qword_100974AC0, type metadata accessor for PrefetchMarkerCollectionViewCell);
        sub_100112220(&qword_100974AC8, type metadata accessor for PrefetchMarkerCollectionViewCell);
        v16 = &qword_100974AD0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_100112220(&qword_1009747E8, type metadata accessor for UnifiedMessageCollectionViewCell);
        sub_100112220(&qword_1009747F0, type metadata accessor for UnifiedMessageCollectionViewCell);
        v16 = &unk_1009747F8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        ShelfLayoutContext.shelfPresentationHints.getter();
        v22 = v26;
        static Shelf.PresentationHints.isSeeAllContext.getter();
        sub_100112220(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
        v23 = v28;
        v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v25 = *(v27 + 8);
        v25(v22, v23);
        v25(v4, v23);
        if ((v24 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_100112220(&qword_100974740, type metadata accessor for SwiftUIProductPageCardViewHostingCell);
          sub_100112220(&qword_100974748, type metadata accessor for SwiftUIProductPageCardViewHostingCell);
          v16 = &unk_100974750;
          goto LABEL_26;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell();
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_100112220(&qword_100974728, type metadata accessor for SwiftUIViewHostingCell);
    sub_100112220(&qword_100974730, type metadata accessor for SwiftUIViewHostingCell);
    v16 = &unk_100974738;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell();
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_100112220(&qword_100974868, type metadata accessor for SmallLockupCollectionViewCell);
  sub_100112220(&qword_100974870, type metadata accessor for SmallLockupCollectionViewCell);
  v16 = &qword_100974878;
LABEL_26:
  sub_100112220(v16, v15);
  return v14;
}