uint64_t sub_10005DA98()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DB94(uint64_t a1)
{
  v2 = type metadata accessor for StreamingService();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005DBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DC54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10005DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_100144658);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005DD50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_100144658);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for StreamingServicesProvider()
{
  result = qword_1001446B8;
  if (!qword_1001446B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005DE60()
{
  sub_10005DF1C(319, &qword_1001446C8, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10005DF1C(319, &unk_1001446D0, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005DF1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StreamingService();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10005DF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10005E050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for StreamingService()
{
  result = qword_100144758;
  if (!qword_100144758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005E140()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005E1C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10005E1D8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 = type metadata accessor for StreamingService(), (static URL.== infix(_:_:)()) && ((v6 = v5[6], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v11 = v5[7], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v16 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

char *sub_10005E2C0()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator];
  }

  else
  {
    *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator] = v0;
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

id sub_10005E310(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler];
  *v10 = nullsub_1;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler];
  *v11 = nullsub_1;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler];
  *v12 = nullsub_1;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler];
  *v13 = nullsub_1;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for AmbientListeningView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for AmbientMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AmbientNoMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator] = 0;
  *&v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_10005E4CC();

  return v17;
}

void sub_10005E4CC()
{
  [v0 setLayoutMargins:{-26.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v3];
  [v1 setHidden:1];
  [v2 setHidden:1];
  [v3 setHidden:1];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"displayMatchedMediaItemAction"];
  [v2 addGestureRecognizer:v4];

  [*&v3[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton] addTarget:v0 action:"retryAction" forControlEvents:64];
  [*&v1[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton] addTarget:v0 action:"cancelAction" forControlEvents:64];
  v54 = objc_opt_self();
  sub_100002D44(&qword_100142810);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F88A0;
  v6 = [v1 topAnchor];
  v7 = [v0 layoutMarginsGuide];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v5 + 32) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 layoutMarginsGuide];
  v12 = [v11 bottomAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v5 + 40) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v0 layoutMarginsGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:54.0];
  *(v5 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 layoutMarginsGuide];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v5 + 56) = v21;
  v22 = [v2 topAnchor];
  v23 = [v0 layoutMarginsGuide];
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v5 + 64) = v25;
  v26 = [v2 bottomAnchor];
  v27 = [v0 layoutMarginsGuide];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v5 + 72) = v29;
  v30 = [v2 leadingAnchor];
  v31 = [v0 layoutMarginsGuide];
  v32 = [v31 leadingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v5 + 80) = v33;
  v34 = [v2 trailingAnchor];
  v35 = [v0 layoutMarginsGuide];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v5 + 88) = v37;
  v38 = [v3 topAnchor];
  v39 = [v0 layoutMarginsGuide];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v5 + 96) = v41;
  v42 = [v3 bottomAnchor];
  v43 = [v0 layoutMarginsGuide];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v5 + 104) = v45;
  v46 = [v3 leadingAnchor];
  v47 = [v0 layoutMarginsGuide];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v5 + 112) = v49;
  v50 = [v3 trailingAnchor];
  v51 = [v0 layoutMarginsGuide];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v5 + 120) = v53;
  sub_100025014();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];
}

id sub_10005ECC8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler];
  *v4 = nullsub_1;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler];
  *v5 = nullsub_1;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler];
  *v6 = nullsub_1;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler];
  *v7 = nullsub_1;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AmbientListeningView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for AmbientMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for AmbientNoMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_10005E4CC();
  }

  return v12;
}

id sub_10005EE98(void *a1)
{
  v54 = type metadata accessor for Locale();
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&qword_100141F90);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v46 - v8;
  v9 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v9 - 8);
  v47 = &v46 - v10;
  v11 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem];
  *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem] = a1;

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = a1;
  v17 = v1;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  v19[5] = v16;
  sub_1000C8AF8(0, 0, v13, &unk_1000F88E8, v19);

  v20 = *&v17[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView];
  v50 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel;
  v21 = *&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel];
  v22 = [v16 title];
  [v21 setText:v22];

  v49 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel;
  v23 = *&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel];
  v24 = v16;
  v25 = [v16 artist];
  [v23 setText:v25];

  v26 = [objc_allocWithZone(LSApplicationWorkspace) init];
  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 applicationWithBundleIdentifier:v28];

  v30 = 1;
  v31 = String._bridgeToObjectiveC()();
  LODWORD(v28) = [v26 applicationIsInstalled:v31];

  if (v28)
  {
    v32 = [v24 appleMusicURL];
    v30 = v32 == 0;
    if (v32)
    {
      v33 = v47;
      v34 = v32;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = 0;
    }

    else
    {
      v35 = 1;
      v33 = v47;
    }

    v36 = type metadata accessor for URL();
    (*(*(v36 - 8) + 56))(v33, v35, 1, v36);
    sub_10001719C(v33);
  }

  v37 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton;
  [*&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton] setHidden:{v30, OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton}];
  [*&v20[v37] addTarget:v17 action:"appleMusicButtonAction" forControlEvents:64];
  v47 = v17;
  v38 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel;
  v39 = *&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel];
  v55 = [v24 shazamCount];
  static Locale.autoupdatingCurrent.getter();
  sub_1000045BC();
  v40 = v51;
  IntegerFormatStyle.init(locale:)();
  static Locale.current.getter();
  v41 = v52;
  IntegerFormatStyle.locale(_:)();
  (*(v48 + 8))(v4, v54);
  v42 = *(v53 + 8);
  v42(v40, v5);
  sub_1000602CC();
  BinaryInteger.formatted<A>(_:)();
  v42(v41, v5);
  v43 = String._bridgeToObjectiveC()();

  [v39 setText:v43];

  v44 = *&v20[v38];
  [v44 setHidden:{objc_msgSend(v24, "shazamCount") == 0}];

  [*&v20[v46] setAlpha:0.0];
  [*&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView] setAlpha:0.0];
  [*&v20[v50] setAlpha:0.0];
  [*&v20[v49] setAlpha:0.0];
  [*&v47[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView] setHidden:1];
  return [v20 setHidden:0];
}

uint64_t sub_10005F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10005F638, v7, v6);
}

uint64_t sub_10005F638()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10005F6DC;
  v2 = *(v0 + 24);

  return sub_1000EC918(v2);
}

uint64_t sub_10005F6DC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10005F7FC, v3, v2);
}

uint64_t sub_10005F7FC()
{

  v1 = sub_10005E2C0();
  sub_1000A93DC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005F870()
{
  v1 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem);
  if (!v12)
  {
    (*(v8 + 56))(v6, 1, 1, v7, v9);
    return sub_10001719C(v6);
  }

  v13 = [v12 appleMusicURL];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v3, 1, 1, v7);
  }

  sub_100007F6C(v3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001719C(v6);
  }

  (*(v8 + 32))(v11, v6, v7);
  v16 = *(v0 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler);

  v16(v11);

  return (*(v8 + 8))(v11, v7);
}

void sub_10005FB78()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_100060368;
  v10 = v1;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000C1C84;
  v8 = &unk_1001371E8;
  v2 = _Block_copy(&v5);

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_100060388;
  v10 = v3;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000A956C;
  v8 = &unk_100137210;
  v4 = _Block_copy(&v5);

  [v0 animateWithDuration:v2 animations:v4 completion:0.3];
  _Block_release(v4);
  _Block_release(v2);
}

void sub_10005FD08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView);

    [v2 setAlpha:0.0];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView);

    [v5 setAlpha:1.0];
  }
}

uint64_t sub_10005FDDC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler);
    v2 = result;

    v1();
  }

  return result;
}

id sub_10005FF48(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView];
  v9 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton;
  [*(v8 + OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton) convertPoint:v3 fromCoordinateSpace:{a2, a3}];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v18.x = v11;
  v18.y = v13;
  if (CGRectContainsPoint(v19, v18))
  {
    v14 = [*(v8 + v9) hitTest:a1 withEvent:{v11, v13}];
  }

  else
  {
    v16.receiver = v3;
    v16.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  }

  return v14;
}

uint64_t sub_1000601C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006020C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_10005F5A0(a1, v4, v5, v7, v6);
}

unint64_t sub_1000602CC()
{
  result = qword_100141FA0;
  if (!qword_100141FA0)
  {
    sub_100004370(&qword_100141F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FA0);
  }

  return result;
}

uint64_t sub_100060330()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000603C8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_100002D44(a1);
  sub_100004610(a2, a1);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t sub_1000605FC(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MusicLibrary();
  *(v1 + 24) = static MusicLibrary.shared.getter();
  *(v1 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_songAddStatusCancellable) = 0;
  v8 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_playlistsByID;
  *(v2 + v8) = sub_1000D58A4(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_mostRecentEditedPlaylist;
  v10 = type metadata accessor for Playlist();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v12 = *(v5 + 16);
  v12(v2 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song, a1, v4);
  v16[15] = 0;
  sub_100002D44(&qword_100144978);
  swift_allocObject();
  *(v2 + 16) = CurrentValueSubject.init(_:)();
  static MusicLibrary.shared.getter();
  v12(v7, (v2 + v11), v4);
  v13 = MusicLibrary.state<A>(for:)();

  v14 = *(v5 + 8);
  v14(v7, v4);
  *(v2 + 32) = v13;
  sub_100060820();
  v14(a1, v4);
  return v2;
}

uint64_t sub_100060820()
{
  v1 = v0;
  sub_100002D44(&qword_100144980);
  sub_100004610(&qword_100144988, &qword_100144980);
  ObservableObject<>.objectWillChange.getter();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100064538;
  *(v3 + 24) = v2;
  type metadata accessor for ObservableObjectPublisher();
  v4 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_songAddStatusCancellable) = v4;
}

uint64_t sub_100060964()
{
  v0 = type metadata accessor for MusicLibrary.AddStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v10[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    (*(v1 + 104))(v3, enum case for MusicLibrary.AddStatus.added(_:), v0);
    v8 = static MusicLibrary.AddStatus.== infix(_:_:)() & 1;
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);

    CurrentValueSubject.value.getter();

    if (v8 != v11)
    {
      v11 = v8;

      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_100060B50(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_100002D44(&qword_100144918);
  v2[7] = swift_task_alloc();
  sub_100002D44(&qword_100144920);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_100002D44(&qword_100144928);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100060CF4, 0, 0);
}

uint64_t sub_100060CF4()
{
  swift_getKeyPath();
  MusicLibraryRequest.init()();
  MusicLibraryRequest<>.sort<A>(by:ascending:)();
  swift_getKeyPath();
  *(v0 + 136) = 1;
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  MusicLibraryRequest.limit.setter();

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100060E34;
  v2 = *(v0 + 56);

  return sub_10006122C(v2);
}

uint64_t sub_100060E34()
{

  return _swift_task_switch(sub_100060F30, 0, 0);
}

uint64_t sub_100060F30()
{
  v1 = v0[7];
  v2 = sub_100002D44(&qword_100144930);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[9];
  if (v4 == 1)
  {
    (*(v6 + 8))(v0[15], v0[13]);
    sub_100007E14(v1, &qword_100144918);
    (*(v9 + 56))(v10, 1, 1, v8);
LABEL_4:
    v11 = v0[5];
    sub_100007E14(v0[9], &qword_100144920);
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
    goto LABEL_6;
  }

  sub_1000603C8(&qword_100144930, &qword_100144938, &type metadata accessor for Playlist, v0[9]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v1, v2);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[5];
  v17 = v0[6];
  v18 = *(v13 + 32);
  v18(v12, v0[9], v14);
  (*(v13 + 16))(v15, v12, v14);
  (*(v13 + 56))(v15, 0, 1, v14);
  v19 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_mostRecentEditedPlaylist;
  swift_beginAccess();
  sub_100062F30(v15, v17 + v19);
  swift_endAccess();
  v16[3] = type metadata accessor for MusicKitPlaylist();
  v16[4] = &off_1001361D0;
  v20 = sub_100023284(v16);
  v18(v20, v12, v14);
LABEL_6:

  v21 = v0[1];

  return v21();
}

uint64_t sub_10006122C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100002D44(&qword_100144940);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  v5 = sub_100002D44(&qword_100144928);
  *v4 = v1;
  v4[1] = sub_100061358;

  return MusicLibraryRequest.response()(v3, v5);
}

uint64_t sub_100061358()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100061550;
  }

  else
  {
    v2 = sub_10006146C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006146C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = sub_100002D44(&qword_100144930);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100061550()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error retrieving playlists from user's music library: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v8 = sub_100002D44(&qword_100144930);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100061750()
{
  v1[12] = v0;
  sub_100002D44(&qword_100144918);
  v1[13] = swift_task_alloc();
  v2 = sub_100002D44(&qword_100144930);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = sub_100002D44(&qword_100144928);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000618C8, 0, 0);
}

uint64_t sub_1000618C8()
{
  swift_getKeyPath();
  *(v0 + 168) = type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  MusicLibraryRequest.sort<A>(by:ascending:)();
  swift_getKeyPath();
  *(v0 + 184) = 1;
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  MusicLibraryRequest.limit.setter();

  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_100061A04;
  v2 = *(v0 + 104);

  return sub_10006122C(v2);
}

uint64_t sub_100061A04()
{

  return _swift_task_switch(sub_100061B00, 0, 0);
}

uint64_t sub_100061B00()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100007E14(v3, &qword_100144918);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_100004610(&qword_100144948, &qword_100144930);
    v7 = dispatch thunk of Sequence._copyToContiguousArray()();
    sub_100061EAC(v7);

    sub_100004610(&qword_100144938, &qword_100144930);
    v8 = dispatch thunk of Collection.count.getter();
    if (v8)
    {
      v9 = v8;
      sub_100063008(0, v8 & ~(v8 >> 63), 0);
      v4 = _swiftEmptyArrayStorage;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = *(v0 + 168) - 8;
      do
      {
        v12 = *(v0 + 168);
        v13 = dispatch thunk of Collection.subscript.read();
        v15 = v14;
        *(v0 + 40) = type metadata accessor for MusicKitPlaylist();
        *(v0 + 48) = &off_1001361D0;
        v16 = sub_100023284((v0 + 16));
        (*(*v11 + 16))(v16, v15, v12);
        v13(v0 + 56, 0);
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_100063008((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[5 * v18];
        v20 = *(v0 + 16);
        v21 = *(v0 + 32);
        v19[8] = *(v0 + 48);
        *(v19 + 2) = v20;
        *(v19 + 3) = v21;
        dispatch thunk of Collection.formIndex(after:)();
        --v9;
      }

      while (v9);
      v23 = *(v0 + 152);
      v22 = *(v0 + 160);
      v24 = *(v0 + 144);
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      (*(v23 + 8))(v22, v24);
    }

    else
    {
      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 144);
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      (*(v26 + 8))(v25, v27);
      v4 = _swiftEmptyArrayStorage;
    }
  }

  v28 = *(v0 + 8);

  return v28(v4);
}

uint64_t sub_100061EAC(uint64_t a1)
{
  v2 = v1;
  v23 = sub_100002D44(&qword_100144958);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v20 = v1;
    v24 = _swiftEmptyArrayStorage;
    sub_100062FE8(0, v7, 0);
    v8 = v24;
    v22 = type metadata accessor for Playlist();
    v9 = *(v22 - 8);
    v21 = *(v9 + 16);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v21(v6 + *(v23 + 48), v10, v22);
      *v6 = Playlist.id.getter();
      v6[1] = v12;
      v24 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_100062FE8(v13 > 1, v14 + 1, 1);
        v8 = v24;
      }

      v8[2] = v14 + 1;
      sub_1000633B8(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
      v10 += v11;
      --v7;
    }

    while (v7);
    v2 = v20;
  }

  if (v8[2])
  {
    sub_100002D44(&qword_100144960);
    v15 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptyDictionarySingleton;
  }

  v24 = v15;

  sub_100063944(v16, 1, &v24);

  v17 = v24;
  v18 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_playlistsByID;
  swift_beginAccess();
  *(v2 + v18) = v17;
}

uint64_t sub_10006212C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Playlist();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100062208, 0, 0);
}

uint64_t sub_100062208()
{
  v27 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_playlistsByID;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_1000B8EA0(v0[5], v0[6]), (v5 & 1) != 0))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[7];
    (*(v9 + 16))(v7, *(v3 + 56) + *(v9 + 72) * v4, v8);
    (*(v9 + 32))(v6, v7, v8);
    swift_endAccess();
    v11 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
    v25 = (&async function pointer to dispatch thunk of MusicLibrary.add<A>(_:to:) + async function pointer to dispatch thunk of MusicLibrary.add<A>(_:to:));
    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = type metadata accessor for Song();
    *v12 = v0;
    v12[1] = sub_1000624F8;
    v14 = v0[12];
    v15 = v0[10];

    return v25(v15, v10 + v11, v14, v13, &protocol witness table for Song);
  }

  else
  {
    swift_endAccess();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BEC4(v17, qword_10014FEA0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[5];
      v20 = v0[6];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000BA1EC(v21, v20, &v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "No playlist found with identifier %s", v22, 0xCu);
      sub_100007E74(v23);
    }

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1000624F8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000626B8;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v7 = *(v5 + 8);
    v2[15] = v7;
    v2[16] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v3 = sub_100062630;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100062630()
{
  (*(v0 + 120))(*(v0 + 96), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000626B8()
{
  (*(v0[9] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100062754()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v2 = type metadata accessor for Song();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_mostRecentEditedPlaylist, &qword_100144920);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MusicKitMusicLibrary()
{
  result = qword_100144858;
  if (!qword_100144858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006289C()
{
  type metadata accessor for Song();
  if (v0 <= 0x3F)
  {
    sub_100062994();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100062994()
{
  if (!qword_100144868)
  {
    type metadata accessor for Playlist();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100144868);
    }
  }
}

uint64_t sub_100062A10()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v6 = (&async function pointer to dispatch thunk of MusicLibrary.add<A>(_:) + async function pointer to dispatch thunk of MusicLibrary.add<A>(_:));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  v4 = type metadata accessor for Song();
  *v3 = v0;
  v3[1] = sub_10000DCC4;

  return v6(v1 + v2, v4, &protocol witness table for Song);
}

uint64_t sub_100062B0C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  v4 = type metadata accessor for Song();
  *v3 = v0;
  v3[1] = sub_10000D4B0;

  return MusicLibrary.remove<A>(_:)(v1 + v2, v4, &protocol witness table for Song);
}

uint64_t sub_100062BD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100062C60;

  return sub_100061750();
}

uint64_t sub_100062C60(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100062D5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000789C;

  return sub_100060B50(a1);
}

uint64_t sub_100062DF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000789C;

  return sub_10006212C(a1, a2);
}

uint64_t sub_100062EE8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000DC80(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistInternalFilter.isEditable.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100062F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144920);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062FA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000DC80(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistSortProperties.name.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

size_t sub_100062FE8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000630A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063008(char *a1, int64_t a2, char a3)
{
  result = sub_100063298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063028(char *a1, int64_t a2, char a3)
{
  result = sub_100063428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100063048(void *a1, int64_t a2, char a3)
{
  result = sub_10006352C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063068(char *a1, int64_t a2, char a3)
{
  result = sub_100063660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100063088(size_t a1, int64_t a2, char a3)
{
  result = sub_10006376C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000630A8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002D44(&qword_100144968);
  v10 = *(sub_100002D44(&qword_100144958) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100002D44(&qword_100144958) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100063298(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D44(&qword_100144950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000633B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100063428(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D44(&qword_100144970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_10006352C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D44(&qword_1001449D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002D44(&qword_100142FC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100063660(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D44(qword_1001449D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10006376C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002D44(&qword_100144990);
  v10 = *(type metadata accessor for StreamingService() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for StreamingService() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100063944(uint64_t a1, char a2, void *a3)
{
  v61 = type metadata accessor for Playlist();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100144958);
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_100063E90(v54, v11);
  v15 = v11[1];
  v64 = *v11;
  v16 = v64;
  v65 = v15;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_1000B8EA0(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100063F00();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100064180(v23, a2 & 1);
  v25 = sub_1000B8EA0(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v53((v29[7] + *(v59 + 72) * v20), v60, v61);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v56 != 1)
      {
        v34 = 1;
        while (v34 < *(v57 + 16))
        {
          sub_100063E90(v54 + *(v58 + 72) * v34, v11);
          v35 = v11[1];
          v64 = *v11;
          v36 = v64;
          v65 = v35;
          v37 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v38 = *a3;
          v39 = sub_1000B8EA0(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_100064180(v43, 1);
            v39 = sub_1000B8EA0(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v59 + 72) * v39), v60, v61);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v56 == v34)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v66 = v27;
    swift_errorRetain();
    sub_100002D44(&qword_100142F78);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v50._object = 0x8000000100100E90;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v50);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100063E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100063F00()
{
  v1 = v0;
  v35 = type metadata accessor for Playlist();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D44(&qword_100144960);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_100064180(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for Playlist();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100002D44(&qword_100144960);
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

uint64_t sub_100064500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000645A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100064608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = (__chkstk_darwin)();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v15 - v11;
  v10();
  sub_1000B03E4(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_1000B03E4(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t sub_10006474C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10006601C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  return sub_10002CEB0(v5 + v3, a1);
}

uint64_t sub_1000647E4()
{
  v1[28] = v0;
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v3;
  v1[31] = v2;

  return _swift_task_switch(sub_10006487C, v3, v2);
}

uint64_t sub_10006487C()
{
  v0[32] = [objc_allocWithZone(LSApplicationWorkspace) init];
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 applicationWithBundleIdentifier:v2];
  v0[33] = v3;

  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1000649A0;

  return (sub_1000897A8)(v3);
}

uint64_t sub_1000649A0(char a1)
{
  v4 = *v2;
  *(v4 + 280) = v1;

  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  if (v1)
  {

    v7 = *(v4 + 240);
    v8 = *(v4 + 248);
    v9 = sub_100064CB8;
  }

  else
  {

    *(v4 + 344) = a1 & 1;
    v7 = *(v4 + 240);
    v8 = *(v4 + 248);
    v9 = sub_100064B10;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100064B10()
{
  if (*(v0 + 344) == 1)
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 224);
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0;
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0 + 16;
    *(v0 + 288) = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel___observationRegistrar;
    *(v0 + 200) = v2;
    *(v0 + 296) = sub_10006601C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    *(v0 + 304) = v1;

    sub_10002EC08(v0 + 16);
    *(v0 + 312) = *(v2 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_libraryController);

    return _swift_task_switch(sub_100064D34, 0, 0);
  }

  else
  {

    (*(*(v0 + 224) + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler))(v4);
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100064CB8()
{

  (*(*(v0 + 224) + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler))(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100064D34()
{
  v1 = *(v0 + 312);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_100064E5C;

  return v6(v2, v3);
}

uint64_t sub_100064E5C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 328) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_100064F84, v4, v3);
}

uint64_t sub_100064F84()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    if (*(v1 + 16))
    {

      return _swift_task_switch(sub_1000650E0, 0, 0);
    }
  }

  v2 = *(v0 + 224);

  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 64) = 0u;
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 64;
  *(v0 + 208) = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10002EC08(v0 + 64);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000650E0()
{
  v1 = *(v0 + 312);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_100065210;

  return v6(v0 + 160, v2, v3);
}

uint64_t sub_100065210()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_100065330, v3, v2);
}

uint64_t sub_100065330()
{
  v1 = v0[41];
  v2 = v0[28];

  v0[14] = v1;
  sub_100066074((v0 + 20), (v0 + 15));
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 14;
  v0[27] = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100007E14((v0 + 20), &qword_100143538);

  sub_10002EC08((v0 + 14));
  v4 = v0[1];

  return v4();
}

uint64_t sub_10006545C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100065480, 0, 0);
}

uint64_t sub_100065480()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_libraryController);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v8 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000655BC;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1000655BC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000658F0;
  }

  else
  {
    v2 = sub_1000656D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000656D0()
{
  *(v0 + 56) = type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100065768, v2, v1);
}

uint64_t sub_100065768()
{

  *(v0 + 72) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];

  return _swift_task_switch(sub_1000657EC, 0, 0);
}

uint64_t sub_1000657EC()
{
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100065878, v2, v1);
}

uint64_t sub_100065878()
{
  v1 = *(v0 + 72);

  [v1 notificationOccurred:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000658F0()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Adding song to playlist failed: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100065A94(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  sub_1000660E4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100065B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_appleMusicBaseURL, v9, v10);
    v13 = v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0;
    ObservationRegistrar.init()();
    *(v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_libraryController) = a1;
    v14 = (v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler);
    *v14 = a2;
    v14[1] = a3;
    return v3;
  }

  return result;
}

uint64_t sub_100065C88()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_appleMusicBaseURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10002EC08(v0 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state);

  v3 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for AddToPlaylistViewModel()
{
  result = qword_100144AA0;
  if (!qword_100144AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100065DEC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100065EDC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100065EF4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100065F0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100065F20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100065FD8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_10006601C()
{
  result = qword_100143450;
  if (!qword_100143450)
  {
    type metadata accessor for AddToPlaylistViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143450);
  }

  return result;
}

uint64_t sub_100066074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066134()
{
  v1[5] = v0;
  v2 = type metadata accessor for IntentSystemContext.Source();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_100002D44(&qword_100144598);
  v1[10] = swift_task_alloc();
  sub_100002D44(&qword_100142878);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for ActivityPresentationOptions();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  sub_100002D44(&qword_100142FE0);
  v1[16] = swift_task_alloc();
  v4 = sub_100002D44(&qword_100144C50);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100066370, 0, 0);
}

uint64_t sub_100066370()
{
  v64 = v0;
  v1 = *(v0[5] + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  if (qword_100141A70 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000BEC4(v2, qword_10014FEA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Requesting MusicRecognitionActivity", v5, 2u);
    }

    v6 = [objc_opt_self() mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v9)
      {
        break;
      }
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v10 = v0[16];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100068770();
  sub_1000687C8();
  sub_100068820();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_1000689D4();
  v12 = SBSIsSystemApertureAvailable();
  sub_100002D44(&qword_100144C68);
  v13 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = (v14 + 104);
  v18 = swift_allocObject();
  if (v12)
  {
    *(v18 + 16) = xmmword_1000F7970;
    v19 = v18 + v16;
    v20 = *v17;
    (*v17)(v19, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v13);
    v21 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
    v22 = v19 + v15;
  }

  else
  {
    *(v18 + 16) = xmmword_1000F6160;
    v23 = v18 + v16;
    v20 = *v17;
    (*v17)(v23, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v13);
    v20(v23 + v15, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v13);
    v21 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
    v22 = v23 + 2 * v15;
  }

  v20(v22, v21, v13);

  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v24 = v0[12];
  v26 = v0[9];
  v25 = v0[10];
  v27 = v0[6];
  v28 = v0[7];
  v29 = qword_10014FF28;
  v30 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  (*(v28 + 104))(v24, enum case for IntentSystemContext.Source.actionButton(_:), v27);
  (*(v28 + 56))(v24, 0, 1, v27);
  v31 = *(v26 + 48);
  sub_100012CAC(v29 + v30, v25);
  sub_100012CAC(v24, v25 + v31);
  v32 = *(v28 + 48);
  if (v32(v25, 1, v27) == 1)
  {
    v33 = v0[6];
    sub_100007E14(v0[12], &qword_100142878);
    if (v32(v25 + v31, 1, v33) == 1)
    {
      sub_100007E14(v0[10], &qword_100142878);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v34 = v0[6];
  sub_100012CAC(v0[10], v0[11]);
  v35 = v32(v25 + v31, 1, v34);
  v36 = v0[11];
  v37 = v0[12];
  if (v35 == 1)
  {
    v38 = v0[6];
    v39 = v0[7];
    sub_100007E14(v0[12], &qword_100142878);
    (*(v39 + 8))(v36, v38);
LABEL_20:
    sub_100007E14(v0[10], &qword_100144598);
    goto LABEL_22;
  }

  v58 = v0[10];
  v40 = v0[7];
  v41 = v0[8];
  v42 = v0[6];
  (*(v40 + 32))(v41, v25 + v31, v42);
  sub_10006941C();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v40 + 8);
  v43(v41, v42);
  sub_100007E14(v37, &qword_100142878);
  v43(v36, v42);
  sub_100007E14(v58, &qword_100142878);
LABEL_22:
  ActivityPresentationOptions.isActionButtonInitiated.setter();

  sub_100002D44(&qword_100144C58);
  v44 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  v45 = v0[5];

  *(v45 + 16) = v44;
  swift_retain_n();

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[18];
  v61 = v0[17];
  v62 = v0[19];
  v50 = v0[14];
  v59 = v0[13];
  v60 = v0[15];
  if (v48)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63 = v52;
    *v51 = 136315138;
    v53 = Activity.id.getter();
    v55 = sub_1000BA1EC(v53, v54, &v63);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "Successfully requested activity with id %s", v51, 0xCu);
    sub_100007E74(v52);
  }

  (*(v50 + 8))(v60, v59);
  (*(v49 + 8))(v62, v61);

  v56 = v0[1];

  return v56();
}

uint64_t sub_100066CC8()
{
  v1[3] = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_100002D44(&qword_100144C48);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100066DC0, 0, 0);
}

uint64_t sub_100066DC0()
{
  v23 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling end activity", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + 16);
  v0[8] = v6;
  if (v6)
  {
    swift_retain_n();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v0[2] = v6;

      sub_100002D44(&qword_100144C58);
      v11 = String.init<A>(describing:)();
      v13 = sub_1000BA1EC(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ending activity %s", v9, 0xCu);
      sub_100007E74(v10);
    }

    v14 = v0[7];
    dispatch thunk of Activity.content.getter();
    v15 = sub_100002D44(&qword_100144C50);
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    static ActivityUIDismissalPolicy.immediate.getter();
    v21 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_1000670F0;
    v17 = v0[6];
    v18 = v0[7];

    return v21(v18, v17);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000670F0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  sub_100007E14(v1, &qword_100144C48);

  return _swift_task_switch(sub_100067274, 0, 0);
}

uint64_t sub_100067274()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000672E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 168) = a3;
  *(v4 + 64) = a1;
  sub_100002D44(&qword_100144C60);
  *(v4 + 88) = swift_task_alloc();
  sub_100002D44(&qword_100142FE0);
  *(v4 + 96) = swift_task_alloc();
  v5 = sub_100002D44(&qword_100144C50);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 128) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 136) = v7;
  *(v4 + 144) = v6;

  return _swift_task_switch(sub_10006745C, v7, v6);
}

uint64_t sub_10006745C()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling update activity", v4, 2u);
  }

  v5 = *(v0 + 80);

  v6 = *(v5 + 24);
  if (v6)
  {
    [v6 invalidate];
  }

  if (*(v0 + 168) || ((v8 = [*(v0 + 64) mediaItems], sub_100023398(), v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v8, v9 >> 62) ? (v10 = _CocoaArrayWrapper.endIndex.getter()) : (v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v10))
  {
    v7 = 5.0;
  }

  else
  {
    v7 = 180.0;
  }

  v11 = *(v0 + 80);
  v12 = objc_opt_self();
  *(v0 + 48) = sub_100068974;
  *(v0 + 56) = v11;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100068414;
  *(v0 + 40) = &unk_1001373C8;
  v13 = _Block_copy((v0 + 16));

  v14 = [v12 scheduledTimerWithTimeInterval:0 repeats:v13 block:v7];
  _Block_release(v13);
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (SHSession.Result.wasCancelled.getter())
  {

LABEL_22:

    v21 = *(v0 + 8);

    return v21();
  }

  if (!*(*(v0 + 80) + 16))
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No activity identifier found, unable to assert", v20, 2u);
    }

    goto LABEL_22;
  }

  v16 = *(v0 + 168);

  Activity.id.getter();

  if (!v16)
  {
    v17 = 1;
    goto LABEL_26;
  }

  if (v16 == 1)
  {
    v17 = 0;
LABEL_26:
    sub_100068FD0(v17);
  }

  if (SBUIIsSystemApertureEnabled())
  {
    v23 = *(v0 + 80);
    swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for ProminentPresentationAssertion());
    v24 = ProminentPresentationAssertion.init(explanation:activityIdentifier:duration:invalidationHandler:)();
    v25 = *(v23 + 32);
    *(v23 + 32) = v24;
  }

  else
  {
  }

  return _swift_task_switch(sub_1000678D8, 0, 0);
}

uint64_t sub_1000678D8()
{
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v5 = *(v0 + 168);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_100068770();
    sub_1000687C8();
    sub_100068820();

    ActivityContent.init(state:staleDate:relevanceScore:)();
    sub_10006C320(v4, v5, v2);
    v7 = type metadata accessor for AlertConfiguration();
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v14 = (&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:) + async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:));
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_100067AE4;
    v9 = *(v0 + 120);
    v10 = *(v0 + 88);

    return v14(v9, v10);
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);

    return _swift_task_switch(sub_100067C98, v12, v13);
  }
}

uint64_t sub_100067AE4()
{
  v1 = *(*v0 + 88);

  sub_100007E14(v1, &qword_100144C60);

  return _swift_task_switch(sub_100067C0C, 0, 0);
}

uint64_t sub_100067C0C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = v0[18];

  return _swift_task_switch(sub_100067C98, v4, v5);
}

uint64_t sub_100067C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067D2C(uint64_t a1)
{
  v2 = sub_1000688CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067D68(uint64_t a1)
{
  v2 = sub_1000688CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100067E84@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100067EC0(uint64_t a1)
{
  v2 = sub_100068920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067EFC(uint64_t a1)
{
  v2 = sub_100068920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100067F7C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_100002D44(a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000DC80(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10006809C()
{
  v0 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1000C8DF8(0, 0, v2, &unk_1000F8ED8, v5);
}

uint64_t sub_1000681C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1000681E0, 0, 0);
}

uint64_t sub_1000681E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1000682D4;

    return sub_100066CC8();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000682D4()
{

  return _swift_task_switch(sub_1000683EC, 0, 0);
}

void sub_100068414(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10006847C(void *a1)
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = a1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2112;
    v8 = v3;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Presented prominent assertion %@ error %@", v6, 0x16u);
    sub_100002D44(&unk_100142880);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 32);
    *(Strong + 32) = 0;
  }
}

uint64_t sub_100068640()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_1000686C0()
{
  result = qword_100144BF8;
  if (!qword_100144BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144BF8);
  }

  return result;
}

unint64_t sub_100068718()
{
  result = qword_100144C00;
  if (!qword_100144C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C00);
  }

  return result;
}

unint64_t sub_100068770()
{
  result = qword_100144C08;
  if (!qword_100144C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C08);
  }

  return result;
}

unint64_t sub_1000687C8()
{
  result = qword_100144C10;
  if (!qword_100144C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C10);
  }

  return result;
}

unint64_t sub_100068820()
{
  result = qword_100144C18;
  if (!qword_100144C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C18);
  }

  return result;
}

unint64_t sub_100068878()
{
  result = qword_100144C20;
  if (!qword_100144C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C20);
  }

  return result;
}

unint64_t sub_1000688CC()
{
  result = qword_100144C30;
  if (!qword_100144C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C30);
  }

  return result;
}

unint64_t sub_100068920()
{
  result = qword_100144C40;
  if (!qword_100144C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C40);
  }

  return result;
}

uint64_t sub_10006897C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068994()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000689D4()
{
  v0 = type metadata accessor for ActivityDescriptor();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v38 - v5;
  v7 = type metadata accessor for ActivityPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityCenter();
  static ActivityCenter.shared.getter();
  static ActivityPredicate.allAuthorizedForRequester.getter();
  v39 = dispatch thunk of ActivityCenter.descriptors(matching:)();
  v49 = v4;
  (*(v8 + 8))(v10, v7);

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000BEC4(v12, qword_10014FEA0);
  v14 = v39;

  v48 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v49;
  if (v17)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = *(v14 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "Found %ld existing activities", v19, 0xCu);

    v21 = *(v14 + 16);
    if (!v21)
    {
    }
  }

  else
  {

    v21 = *(v14 + 16);
    if (!v21)
    {
    }
  }

  v23 = *(v1 + 16);
  v22 = v1 + 16;
  v45 = v23;
  v46 = v11;
  v24 = v14 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v44 = *(v22 + 56);
  *&v20 = 136315138;
  v40 = v20;
  v43 = (v22 - 8);
  v41 = v22;
  v42 = (v22 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47 = v6;
  do
  {
    v34 = v45;
    v45(v6, v24, v0);
    v34(v18, v6, v0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v25 = v0;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v27;
      *v26 = v40;
      v28 = ActivityDescriptor.id.getter();
      v29 = v18;
      v31 = v30;
      v32 = *v43;
      (*v43)(v29, v25);
      v33 = sub_1000BA1EC(v28, v31, &v50);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ending existing activity with id %s", v26, 0xCu);
      sub_100007E74(v27);

      v0 = v25;
    }

    else
    {

      v32 = *v43;
      (*v43)(v18, v0);
    }

    static ActivityCenter.shared.getter();
    v6 = v47;
    ActivityDescriptor.id.getter();
    dispatch thunk of ActivityCenter.endActivity(_:)();

    v32(v6, v0);
    v24 += v44;
    --v21;
    v18 = v49;
  }

  while (v21);
}

uint64_t sub_100068FD0(unsigned __int8 a1)
{
  v2 = type metadata accessor for IntentSystemContext.Source();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142878);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v9 = qword_10014FF28;
  v10 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100012CAC(v9 + v10, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_100007E14(v8, &qword_100142878);
  }

  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == enum case for IntentSystemContext.Source.app(_:) || v12 == enum case for IntentSystemContext.Source.CLI(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.siri(_:))
  {
LABEL_12:
    v14 = 2;
LABEL_15:
    (*(v3 + 8))(v8, v2);
    return sub_1000C3C14(a1 & 1u | (v14 << 8), 0xD000000000000028, 0x8000000100101010);
  }

  if (v12 == enum case for IntentSystemContext.Source.shortcuts(_:))
  {
    v14 = 3;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.testing(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.actionButton(_:))
  {
    v14 = 1;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.spotlight(_:))
  {
    v14 = 6;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.controlCenter(_:))
  {
    v14 = 4;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.widget(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.assistant(_:))
  {
    goto LABEL_12;
  }

  v15 = *(v3 + 8);
  v15(v5, v2);
  return (v15)(v8, v2);
}

uint64_t sub_100069328()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100069368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000681C0(a1, v4, v5, v6);
}

unint64_t sub_10006941C()
{
  result = qword_1001445A0;
  if (!qword_1001445A0)
  {
    type metadata accessor for IntentSystemContext.Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001445A0);
  }

  return result;
}

unint64_t sub_1000694A8()
{
  result = qword_100144C70;
  if (!qword_100144C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C70);
  }

  return result;
}

unint64_t sub_100069500()
{
  result = qword_100144C78;
  if (!qword_100144C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C78);
  }

  return result;
}

unint64_t sub_100069558()
{
  result = qword_100144C80;
  if (!qword_100144C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C80);
  }

  return result;
}

unint64_t sub_1000695B0()
{
  result = qword_100144C88;
  if (!qword_100144C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C88);
  }

  return result;
}

uint64_t sub_100069630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100069678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000696F4()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.15];

  v2 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v14[0];
  v4 = v14[1];
  v5 = v14[0] * 0.5;
  v6 = v14[2];
  v7 = v14[3];
  v8 = v14[4];
  sub_100069D7C(v14, &v13);

  v9 = static Alignment.center.getter();
  v11 = v10;
  sub_100069DD8(v14);
  *&xmmword_100144C90 = v5;
  *(&xmmword_100144C90 + 1) = v3;
  qword_100144CA0 = *&v4;
  unk_100144CA8 = *&v6;
  *&xmmword_100144CB0 = v7;
  *(&xmmword_100144CB0 + 1) = v8;
  qword_100144CC0 = v2;
  word_100144CC8 = 256;
  *&xmmword_100144CD0 = v9;
  *(&xmmword_100144CD0 + 1) = v11;
}

__n128 sub_100069824@<Q0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100002D44(&qword_100144CE0);
  State.wrappedValue.getter();
  v10 = *v1;
  v11 = *(v4 + 8);
  if (v11 == 1)
  {
    v12 = *v4;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v2 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100069CB4(v10, 0);
    (*(v7 + 8))(v9, v6);
    v12 = *v38;
  }

  v13 = v12 * 64.0;
  if (COERCE__INT64(fabs(v12 * 64.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11)
  {
    v41 = *&v10;
    v14 = *&v10;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v2 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100069CB4(v10, 0);
    v15 = *(v7 + 8);
    v7 += 8;
    v15(v9, v6);
    v14 = v41;
  }

  v16 = v14 * 64.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v2 = v47;
  v6 = v16;
  v9 = v43;
  v17 = v44;
  sub_10000DC80(v42, v43);
  *&v10 = COERCE_DOUBLE((*(v17 + 48))(v13, v6, v9, v17));
  sub_100069CC0(v42);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = *&v47[102];
  LOBYTE(v6) = v48;
  v7 = v49;
  LOBYTE(v9) = v50;
  v11 = v51;
  v3 = v52;
  v46 = v48;
  v45 = v50;
  if (qword_100141B50 != -1)
  {
LABEL_21:
    swift_once();
  }

  v30 = xmmword_100144CB0;
  v31 = *&qword_100144CC0;
  v32 = xmmword_100144CD0;
  v28 = xmmword_100144C90;
  v29 = *&qword_100144CA0;
  v18 = static Alignment.center.getter();
  v38[2] = v30;
  v38[3] = v31;
  v38[4] = v32;
  v38[0] = v28;
  v38[1] = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v33[0] = v28;
  v33[1] = v29;
  v37.n128_u64[0] = v18;
  v37.n128_u64[1] = v19;
  v20 = v28;
  *(v2 + 22) = v29;
  *(v2 + 6) = v20;
  v21 = v36;
  *(v2 + 86) = v37;
  *(v2 + 70) = v21;
  v22 = v34;
  *(v2 + 54) = v35;
  *(v2 + 38) = v22;
  v39 = v18;
  v40 = v19;
  sub_100007FDC(&v28, v27, &qword_100144CE8);
  sub_100007FDC(v33, v27, &qword_100144CF0);
  sub_100069D14(v38);
  v23 = v2[2];
  *(a1 + 106) = v2[3];
  v24 = v2[5];
  *(a1 + 122) = v2[4];
  *(a1 + 138) = v24;
  result = *v2;
  v26 = v2[1];
  *(a1 + 58) = *v2;
  *(a1 + 74) = v26;
  *a1 = *&v10;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v3;
  *(a1 + 56) = 256;
  *(a1 + 152) = *(&v2[5].n128_u64[1] + 6);
  *(a1 + 90) = v23;
  return result;
}

uint64_t sub_100069CB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100069D14(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100144CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100069E30()
{
  result = qword_100144CF8;
  if (!qword_100144CF8)
  {
    sub_100004370(&qword_100144D00);
    sub_100069EE8();
    sub_100004610(&qword_100144D28, &qword_100144CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144CF8);
  }

  return result;
}

unint64_t sub_100069EE8()
{
  result = qword_100144D08;
  if (!qword_100144D08)
  {
    sub_100004370(&qword_100144D10);
    sub_100069FA0();
    sub_100004610(&qword_100144368, &qword_100144370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144D08);
  }

  return result;
}

unint64_t sub_100069FA0()
{
  result = qword_100144D18;
  if (!qword_100144D18)
  {
    sub_100004370(&qword_100144D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144D18);
  }

  return result;
}

unint64_t sub_10006A024(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10006A04C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10006A0A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10006A108(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_10006A144()
{
  sub_10006A3AC();
  if (v0 <= 0x3F)
  {
    sub_10006A3FC();
    if (v1 <= 0x3F)
    {
      sub_10006A44C();
      if (v2 <= 0x3F)
      {
        sub_10006A4A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10006A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(qword_100144D30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006A2E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(qword_100144D30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006A3AC()
{
  if (!qword_100144DB8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100144DB8);
    }
  }
}

unint64_t sub_10006A3FC()
{
  result = qword_100144DC0;
  if (!qword_100144DC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100144DC0);
  }

  return result;
}

void sub_10006A44C()
{
  if (!qword_100144DC8)
  {
    type metadata accessor for URLRequest();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100144DC8);
    }
  }
}

unint64_t sub_10006A4A4()
{
  result = qword_100144DD0;
  if (!qword_100144DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100144DD0);
  }

  return result;
}

uint64_t sub_10006A534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = type metadata accessor for TaskPriority();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v52 = a1;
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  a1 -= 8;
  v43 = v7;
  __chkstk_darwin(v8);
  v47 = v9;
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(qword_100144D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v46 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v46);
  v49 = &v42 - v13;
  v14 = *(a1 + 24);
  v48 = *(v14 - 8);
  __chkstk_darwin(v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004370(&qword_100144DD8);
  v18 = type metadata accessor for ModifiedContent();
  v51 = *(v18 - 8);
  __chkstk_darwin(v18);
  v42 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v45 = &v42 - v21;
  v22 = *(v2 + 2);
  v60 = *v2;
  sub_100002D44(&qword_100144DE0);
  State.wrappedValue.getter();
  v23 = v59;
  v44 = v17;
  v22(v59);
  sub_10006B3EC(v23);
  sub_10006B40C(v2 + *(a1 + 52), v12);
  v24 = type metadata accessor for URLRequest();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_100007E14(v12, qword_100144D30);
    v26 = type metadata accessor for URL();
    v27 = v49;
    (*(*(v26 - 8) + 56))(v49, 1, 1, v26);
  }

  else
  {
    v27 = v49;
    URLRequest.url.getter();
    (*(v25 + 8))(v12, v24);
  }

  v28 = v43;
  v29 = v50;
  v30 = v52;
  (*(v43 + 16))(v50, v3, v52);
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = *(v30 + 24);
  *(v32 + 16) = v14;
  *(v32 + 24) = v33;
  (*(v28 + 32))(v32 + v31, v29, v30);
  sub_10006B6C0();
  v34 = v53;
  static TaskPriority.userInitiated.getter();
  v35 = v42;
  v36 = v44;
  View.task<A>(id:priority:_:)();

  (*(v54 + 8))(v34, v55);
  sub_100007E14(v27, &unk_100144630);
  (*(v48 + 8))(v36, v14);
  v37 = sub_10006B79C();
  v57 = v33;
  v58 = v37;
  WitnessTable = swift_getWitnessTable();
  v39 = v45;
  sub_1000B03E4(v35, v18, WitnessTable);
  v40 = *(v51 + 8);
  v40(v35, v18);
  sub_1000B03E4(v39, v18, WitnessTable);
  return (v40)(v39, v18);
}

uint64_t sub_10006AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_100002D44(qword_100144D30);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v6;
  v3[20] = v5;

  return _swift_task_switch(sub_10006AC58, v6, v5);
}

uint64_t sub_10006AC58()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for CachedAsyncImage();
  sub_10006B40C(v4 + *(v5 + 44), v3);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  if (v6 == 1)
  {

    sub_100007E14(v7, qword_100144D30);
    *(v0 + 16) = *v8;
    *(v0 + 64) = 0x8000000000000008;
    sub_100002D44(&qword_100144DE0);
    State.wrappedValue.setter();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
    *(v0 + 168) = *(v8 + *(v5 + 48));
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    v11[1] = sub_10006AE28;
    v12 = *(v0 + 136);

    return NSURLSession.data(for:delegate:)(v12, 0);
  }
}

uint64_t sub_10006AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[23] = a1;
  v6[24] = a2;
  v6[25] = a3;
  v6[26] = v3;

  v7 = v5[20];
  v8 = v5[19];
  if (v3)
  {
    v9 = sub_10006B2A4;
  }

  else
  {
    v9 = sub_10006AF70;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10006AF70()
{

  v1 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithData:isa];

  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 88);
    v31 = *(v0 + 96);
    v6 = Image.init(uiImage:)();
    Transaction.animation.getter();
    v7 = swift_task_alloc();
    *(v7 + 16) = v31;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    withAnimation<A>(_:_:)();

    v8 = [v4 configuration];
    v9 = [v8 URLCache];

    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    if (v9)
    {
      v32 = *(v0 + 120);
      v16 = objc_allocWithZone(NSCachedURLResponse);
      v17 = v11;
      sub_10006B840(v12, v10);
      v18 = Data._bridgeToObjectiveC()().super.isa;
      v19 = [v16 initWithResponse:v17 data:v18];

      sub_10005B7AC(v12, v10);
      v20 = URLRequest._bridgeToObjectiveC()().super.isa;
      [v9 storeCachedResponse:v19 forRequest:v20];

      sub_10005B7AC(v12, v10);
      (*(v14 + 8))(v13, v32);
    }

    else
    {
      sub_10005B7AC(*(v0 + 184), *(v0 + 192));

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *v21;
    v23 = v21[1];
    *(v0 + 48) = *v21;
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v27 = *(v0 + 128);
    v33 = *(v0 + 136);
    v28 = *(v0 + 120);
    *(v0 + 56) = v23;
    *(v0 + 80) = 0x8000000000000008;
    sub_10006B800(v22);

    sub_100002D44(&qword_100144DE0);
    State.wrappedValue.setter();
    sub_10005B7AC(v26, v24);

    sub_10006B3EC(v22);

    (*(v27 + 8))(v33, v28);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10006B2A4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);

  *(v0 + 32) = *v5;
  *(v0 + 72) = v1 | 0x4000000000000000;
  sub_100002D44(&qword_100144DE0);
  State.wrappedValue.setter();
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006B384()
{

  sub_100002D44(&qword_100144DE0);
  return State.wrappedValue.setter();
}

unint64_t sub_10006B3EC(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_10006B40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(qword_100144D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B47C()
{
  v1 = type metadata accessor for CachedAsyncImage();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10006B3EC(*(v0 + v3));

  v6 = *(v1 + 44);
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B5D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for CachedAsyncImage() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000789C;

  return sub_10006AB28(v0 + v5, v2, v3);
}

unint64_t sub_10006B6C0()
{
  result = qword_100144DE8;
  if (!qword_100144DE8)
  {
    sub_100004370(&unk_100144630);
    sub_10006B744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144DE8);
  }

  return result;
}

unint64_t sub_10006B744()
{
  result = qword_100144DF0;
  if (!qword_100144DF0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144DF0);
  }

  return result;
}

unint64_t sub_10006B79C()
{
  result = qword_100144DF8;
  if (!qword_100144DF8)
  {
    sub_100004370(&qword_100144DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144DF8);
  }

  return result;
}

unint64_t sub_10006B800(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_10006B840(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10006B894()
{
  sub_100004370(&qword_100144DD8);
  type metadata accessor for ModifiedContent();
  sub_10006B79C();
  return swift_getWitnessTable();
}

uint64_t value<A>(iOS:iPadOS:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return a3();
  }

  else
  {
    return a1();
  }
}

uint64_t sub_10006B9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006BA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitAlbum()
{
  result = qword_100144E58;
  if (!qword_100144E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006BB00()
{
  result = type metadata accessor for Album();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006BB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VideoArtwork();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Album();
  v10 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  if (!*(v11 + 16) || (v12 = sub_1000B8F18(v5), (v13 & 1) == 0))
  {

    (*(v3 + 8))(v5, v2);
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  (*(v7 + 16))(v9, *(v11 + 56) + *(v7 + 72) * v12, v6);
  (*(v3 + 8))(v5, v2);

  VideoArtwork.url.getter();
  (*(v7 + 8))(v9, v6);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_10006BDA8(uint64_t (*a1)(void))
{
  v2 = sub_100002D44(&qword_100142D60);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  Album.artwork.getter();
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10006C2B8(v4);
  }

  else
  {
    v7 = a1();
    (*(v6 + 8))(v4, v5);
    if (v7)
    {
      [objc_allocWithZone(UIColor) initWithCGColor:v7];
      v8 = Color.init(uiColor:)();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_10006BEF8()
{
  v0 = type metadata accessor for ArtworkUnavailableView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
  sub_100018120(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10006C0B8()
{
  v0 = sub_100002D44(&qword_100142D60);
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for ArtworkImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&qword_100144E90);
  __chkstk_darwin(v5);
  Album.artwork.getter();
  ArtworkImage.init(_:)();
  v6 = sub_100002D44(&qword_100142D90);
  v7 = sub_100018034();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  (*(v2 + 8))(v4, v1);
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  return AnyView.init<A>(_:)();
}

uint64_t sub_10006C2B8(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006C320(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AlertConfiguration.AlertSound();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100002D44(&qword_100142CC8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  if (a2)
  {
    if (a2 != 1)
    {
      v57 = a1;
      swift_errorRetain();
      sub_100002D44(&qword_100142F78);
      sub_1000123E4(0, &qword_100144E98);
      if (swift_dynamicCast())
      {
        v24 = v56;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        v28 = sub_10006CA70(&off_100134E20);
        sub_1000CD1A0(v25, v27, v28);
        v30 = v29;

        if (v30)
        {

          LocalizedStringResource.init(stringLiteral:)();
          LocalizedStringResource.init(stringLiteral:)();
          static AlertConfiguration.AlertSound.default.getter();
          AlertConfiguration.init(title:body:sound:)();

          return;
        }
      }

      else
      {
      }
    }

    goto LABEL_25;
  }

  v54 = &v50 - v22;
  v55 = a3;
  v51 = v23;
  v52 = v10;
  v31 = [a1 mediaItems];
  sub_1000123E4(0, &qword_100143088);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v33)
  {
LABEL_25:
    LocalizedStringResource.init(stringLiteral:)();
    LocalizedStringResource.init(stringLiteral:)();
    static AlertConfiguration.AlertSound.default.getter();
    AlertConfiguration.init(title:body:sound:)();
    return;
  }

  v34 = [a1 mediaItems];
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (!(v35 >> 62))
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_29;
  }

LABEL_11:

  if ((v36 & 0xC000000000000001) == 0)
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v37 = *(v36 + 32);
    goto LABEL_14;
  }

LABEL_30:
  v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v38 = v37;

  v53 = v38;
  v39 = [v53 title];
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    LocalizedStringResource.init(stringLiteral:)();
    v41 = *(v14 + 56);
    v41(v12, 0, 1, v13);
    (*(v14 + 32))(v54, v12, v13);
  }

  else
  {
    v41 = *(v14 + 56);
    v41(v12, 1, 1, v13);
    LocalizedStringResource.init(stringLiteral:)();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_10006CB88(v12);
    }
  }

  v42 = v53;
  v43 = [v53 artist];

  if (v43)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v52;
    LocalizedStringResource.init(stringLiteral:)();
    v41(v44, 0, 1, v13);
    v45 = v51;
    (*(v14 + 32))(v51, v44, v13);
  }

  else
  {
    v46 = v52;
    v41(v52, 1, 1, v13);
    v45 = v51;
    LocalizedStringResource.init(stringLiteral:)();
    if ((*(v14 + 48))(v46, 1, v13) != 1)
    {
      sub_10006CB88(v46);
    }
  }

  v47 = *(v14 + 16);
  v48 = v54;
  v47(v20, v54, v13);
  v47(v17, v45, v13);
  static AlertConfiguration.AlertSound.default.getter();
  AlertConfiguration.init(title:body:sound:)();

  v49 = *(v14 + 8);
  v49(v45, v13);
  v49(v48, v13);
}

uint64_t sub_10006CA70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100144EA0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006CB88(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006CBF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100002D44(&qword_100144EB0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10006CF98(&qword_1001445A8);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10006CF98(&qword_100144EB8);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10006CE5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100144EA8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006CF98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006CFDC()
{
  v1 = *(v0 + 32);
  v16 = *(v0 + 48);
  v17 = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = type metadata accessor for AppStoreComponent.AppStoreCoordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_subtitle] = *(v0 + 32);
  sub_100002D44(&qword_100144F88);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v16;
  *&v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_metricsQuery] = v8;
  if (v2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    v10 = sub_10006ECFC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_100002D44(&qword_100144F90);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *&v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onOpen] = v11;
  v12 = &v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onStateChange];
  *v12 = v5;
  v12[1] = v4;
  sub_10006EBB4(&v17, v15);
  sub_10006EBB4(&v16, v15);
  sub_10002F7D4(v2);
  sub_10002F7D4(v5);
  v14.receiver = v7;
  v14.super_class = v6;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10006D150()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100002D44(&qword_100144FA0);
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v14];

  v6 = objc_allocWithZone(ASCAdamID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithStringValue:v7];

  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextStandard;
  if (*(v1 + 24))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() _requestWithID:v8 kind:v9 context:v10 productVariantID:v11];

  [v4 setRequest:v12];
  return v4;
}

void sub_10006D320()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  os_unfair_lock_lock((v1 + 32));
  sub_10006EC24((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onOpen);
  os_unfair_lock_lock((v2 + 32));
  sub_10006EC6C((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_10006D3BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_10006E8E4(v6);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_10006ECFC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_10002F7D4(a2);
}

uint64_t sub_10006D494(void *a1, void *a2)
{
  v45 = a1;
  v4 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v43[1] = v8 + 56;
  v44 = v9;
  v9(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_1000C8DF8(0, 0, v6, &unk_1000F9408, v13);

  v14 = *&v10[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onOpen];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_10006ECF0;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10006ECF0;
    *(v19 + 24) = v17;
    *(v14 + 16) = sub_10006ECFC;
    *(v14 + 24) = v19;

    os_unfair_lock_unlock((v14 + 32));
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100064578;
    *(v20 + 24) = v18;
    v21 = sub_10006EA50;
  }

  else
  {
    os_unfair_lock_unlock((v14 + 32));
    v21 = 0;
    v20 = 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_6;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
LABEL_6:

      goto LABEL_8;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      return sub_10006E8E4(v21);
    }
  }

LABEL_8:
  if (v15)
  {
    v28 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v29._object = 0x80000001001011D0;
    v29._countAndFlagsBits = 0xD000000000000026;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v46);

    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 textMetadataWithTitle:v32 subtitle:0];

    v44(v6, 1, 1, v7);
    v34 = v33;
    sub_10002F7D4(v21);
    v35 = v45;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v34;
    v37[5] = v21;
    v37[6] = v20;
    v37[7] = v35;
    sub_1000C8AF8(0, 0, v6, &unk_1000F9418, v37);

    sub_10006E8E4(v21);
  }

  return result;
}

uint64_t sub_10006D958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D9F4, v7, v6);
}

uint64_t sub_10006D9F4()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onStateChange);
  if (v2)
  {
    v2(*(v0 + 32));
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DB28, v9, v8);
}

uint64_t sub_10006DB28()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = objc_allocWithZone(ASCLocalOffer);
  v0[6] = v3;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000C1C84;
  v0[5] = &unk_100137790;
  v6 = _Block_copy(v0 + 2);

  v7 = [v5 initWithMetadata:v4 action:v6];
  _Block_release(v6);
  v8 = [v1 lockup];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lockupWithOffer:v7];
  }

  else
  {
    v10 = 0;
  }

  [v0[11] setLockup:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DDB8, v8, v7);
}

uint64_t sub_10006DDB8()
{
  v1 = v0;
  v2 = *(v0 + 16);

  v3 = [v2 lockup];
  if (v3)
  {
    v4 = v3;
    v29 = [v3 id];
    v28 = [v4 kind];
    v27 = [v4 metrics];
    v26 = [v4 icon];
    v5 = [v4 heading];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 title];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 ageRating];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v1 = v0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 offer];
    if (v8)
    {
      v25 = String._bridgeToObjectiveC()();

      if (v12)
      {
LABEL_13:
        v24 = String._bridgeToObjectiveC()();

LABEL_16:
        v18 = String._bridgeToObjectiveC()();
        if (v16)
        {
          v19 = String._bridgeToObjectiveC()();
        }

        else
        {
          v19 = 0;
        }

        v23 = *(v1 + 16);
        v20 = [objc_allocWithZone(ASCLockup) initWithID:v29 kind:v28 metrics:v27 icon:v26 heading:v25 title:v24 subtitle:v18 ageRating:v19 offer:v17];
        swift_unknownObjectRelease();

        [v23 setLockup:v20];
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v24 = 0;
    goto LABEL_16;
  }

LABEL_20:
  v21 = *(v1 + 8);

  return v21();
}

void sub_10006E23C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    sub_100002D44(&qword_100144F68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F57C0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = v3;

    sub_1000D5660(inited);
    swift_setDeallocating();
    sub_10006E664(inited + 32);
    v7 = objc_allocWithZone(ASCMetricsActivity);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithFields:isa];
  }

  else
  {
    v9 = [objc_allocWithZone(ASCMetricsActivity) init];
  }

  *a2 = v9;
}

uint64_t sub_10006E4B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10006E4D0()
{
  sub_100002D44(&qword_100144FA0);
  UIViewRepresentableContext.coordinator.getter();
  sub_10006D320();
}

id sub_10006E54C@<X0>(void *a1@<X8>)
{
  result = sub_10006CFDC();
  *a1 = result;
  return result;
}

uint64_t sub_10006E574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006EC88();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006EC88();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006E63C()
{
  sub_10006EC88();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10006E664(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100144F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006E6CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100012EC8;

  return sub_10006DD1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10006E7DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006E824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_10006D958(a1, v4, v5, v7, v6);
}

uint64_t sub_10006E8E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10006E8F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006E944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100012EC8;

  return sub_10006DA8C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10006EA18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10006EA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10006EAAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006EAF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006EB60()
{
  result = qword_100144F80;
  if (!qword_100144F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144F80);
  }

  return result;
}

uint64_t sub_10006EBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EC24(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_10006EC88()
{
  result = qword_100144FA8;
  if (!qword_100144FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144FA8);
  }

  return result;
}

uint64_t sub_10006ED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShazamUpsellViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100002D44(&qword_1001421C0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10006EE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShazamUpsellViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_100002D44(&qword_1001421C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ShazamUpsellView()
{
  result = qword_100145098;
  if (!qword_100145098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006EFE0()
{
  type metadata accessor for ShazamUpsellViewModel();
  if (v0 <= 0x3F)
  {
    sub_100008ADC();
    if (v1 <= 0x3F)
    {
      sub_10006F07C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006F07C()
{
  if (!qword_100142248)
  {
    type metadata accessor for OpenURLAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100142248);
    }
  }
}

uint64_t sub_10006F0F0()
{
  result = static Font.footnote.getter();
  qword_100145010 = result;
  return result;
}

uint64_t sub_10006F110()
{
  result = static Font.Weight.bold.getter();
  qword_100145018 = v1;
  return result;
}

uint64_t sub_10006F130()
{
  result = static Color.secondary.getter();
  qword_100145020 = result;
  return result;
}

uint64_t sub_10006F150()
{
  result = static Color.secondary.getter();
  qword_100145028 = result;
  return result;
}

uint64_t sub_10006F170()
{
  result = static Font.subheadline.getter();
  qword_100145030 = result;
  return result;
}

uint64_t sub_10006F190()
{
  result = static Font.Weight.regular.getter();
  qword_100145038 = v1;
  return result;
}

uint64_t sub_10006F1B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v147 = a2;
  v3 = type metadata accessor for ShazamUpsellView();
  v144 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v145 = v4;
  v146 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v143 = &v131 - v6;
  v148 = sub_100002D44(&qword_100143CA0);
  __chkstk_darwin(v148);
  v166 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v165 = &v131 - v9;
  v150 = type metadata accessor for ShazamUpsellViewModel();
  v10 = *(v150 + 28);
  v167 = a1;
  v11 = (a1 + v10);
  v12 = v11[1];
  v192 = *v11;
  v193 = v12;
  sub_10000B730();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  if (qword_100141B58 != -1)
  {
    swift_once();
  }

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  sub_10000BFBC(v13, v15, v17 & 1);

  if (qword_100141B68 != -1)
  {
    swift_once();
  }

  v192 = qword_100145020;

  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  v27 = v26;
  sub_10000BFBC(v18, v20, v22 & 1);

  if (qword_100141B60 != -1)
  {
    swift_once();
  }

  v28 = Text.fontWeight(_:)();
  v162 = v29;
  v163 = v28;
  v31 = v30;
  v164 = v32;
  sub_10000BFBC(v23, v25, v27 & 1);

  v161 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v159 = v34;
  v160 = v33;
  v157 = v36;
  v158 = v35;
  v156 = v31 & 1;
  LOBYTE(v192) = v31 & 1;
  LOBYTE(v186) = 0;

  v37 = Text.init(_:tableName:bundle:comment:)();
  v39 = v38;
  v41 = v40;
  static Font.title2.getter();
  v42 = Text.font(_:)();
  v44 = v43;
  v46 = v45;

  sub_10000BFBC(v37, v39, v41 & 1);

  v192 = static Color.primary.getter();
  v47 = Text.foregroundStyle<A>(_:)();
  v49 = v48;
  v51 = v50;
  sub_10000BFBC(v42, v44, v46 & 1);

  static Font.Weight.bold.getter();
  v52 = Text.fontWeight(_:)();
  v153 = v53;
  v154 = v52;
  LOBYTE(v37) = v54;
  v155 = v55;
  sub_10000BFBC(v47, v49, v51 & 1);

  v152 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v141 = v57;
  v142 = v56;
  v139 = v59;
  v140 = v58;
  v151 = v37 & 1;
  LOBYTE(v192) = v37 & 1;
  LOBYTE(v186) = 0;

  v60 = Text.init(_:tableName:bundle:comment:)();
  v62 = v61;
  v64 = v63;
  if (qword_100141B78 != -1)
  {
    swift_once();
  }

  v65 = Text.font(_:)();
  v67 = v66;
  v69 = v68;
  sub_10000BFBC(v60, v62, v64 & 1);

  if (qword_100141B80 != -1)
  {
    swift_once();
  }

  v70 = Text.fontWeight(_:)();
  v72 = v71;
  v74 = v73;
  sub_10000BFBC(v65, v67, v69 & 1);

  if (qword_100141B70 != -1)
  {
    swift_once();
  }

  v192 = qword_100145028;

  v75 = Text.foregroundStyle<A>(_:)();
  v134 = v75;
  v149 = v76;
  v150 = v77;
  v79 = v78;
  sub_10000BFBC(v70, v72, v74 & 1);

  v80 = static Edge.Set.bottom.getter();
  v81 = v80;
  v133 = v80;
  EdgeInsets.init(_all:)();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v135 = v88;
  v89 = v79 & 1;
  LOBYTE(v192) = v79 & 1;
  v132 = v79 & 1;
  LOBYTE(v186) = 0;
  v90 = v165;
  Divider.init()();
  v91 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v92 = v90 + *(v148 + 36);
  *v92 = v91;
  *(v92 + 8) = v93;
  *(v92 + 16) = v94;
  *(v92 + 24) = v95;
  *(v92 + 32) = v96;
  *(v92 + 40) = 0;
  v97 = v167;
  v98 = *v167;
  v148 = v167[1];
  v99 = v167[3];
  v137 = v167[2];
  v138 = v98;
  v136 = v99;
  v100 = v143;
  sub_1000704E4(v167, v143);
  v101 = (*(v144 + 80) + 16) & ~*(v144 + 80);
  v144 = swift_allocObject();
  sub_10007054C(v100, v144 + v101);
  v102 = v97;
  v103 = v146;
  sub_1000704E4(v102, v146);
  v167 = swift_allocObject();
  sub_10007054C(v103, v167 + v101);
  v104 = v90;
  v105 = v166;
  sub_100007FDC(v104, v166, &qword_100143CA0);
  *&v174 = v163;
  *(&v174 + 1) = v162;
  LOBYTE(v175) = v156;
  *(&v175 + 1) = *v173;
  DWORD1(v175) = *&v173[3];
  *(&v175 + 1) = v164;
  LOBYTE(v176) = v161;
  *(&v176 + 1) = *v172;
  DWORD1(v176) = *&v172[3];
  *(&v176 + 1) = v160;
  *&v177[0] = v159;
  *(&v177[0] + 1) = v158;
  *&v177[1] = v157;
  BYTE8(v177[1]) = 0;
  v106 = v174;
  v107 = v175;
  v108 = v147;
  *(v147 + 57) = *(v177 + 9);
  v109 = v177[0];
  v108[2] = v176;
  v108[3] = v109;
  *v108 = v106;
  v108[1] = v107;
  *&v178 = v154;
  *(&v178 + 1) = v153;
  LOBYTE(v179) = v151;
  DWORD1(v179) = *(v171 + 3);
  *(&v179 + 1) = v171[0];
  *(&v179 + 1) = v155;
  LOBYTE(v180) = v152;
  DWORD1(v180) = *&v170[3];
  *(&v180 + 1) = *v170;
  v111 = v141;
  v110 = v142;
  *(&v180 + 1) = v142;
  *&v181[0] = v141;
  v113 = v139;
  v112 = v140;
  *(&v181[0] + 1) = v140;
  *&v181[1] = v139;
  BYTE8(v181[1]) = 0;
  v114 = v178;
  v115 = v179;
  *(v108 + 137) = *(v181 + 9);
  v116 = v181[0];
  v108[7] = v180;
  v108[8] = v116;
  v108[5] = v114;
  v108[6] = v115;
  *&v182 = v75;
  *(&v182 + 1) = v149;
  LOBYTE(v183) = v89;
  DWORD1(v183) = *(v169 + 3);
  *(&v183 + 1) = v169[0];
  *(&v183 + 1) = v150;
  LOBYTE(v184) = v81;
  DWORD1(v184) = *&v168[3];
  *(&v184 + 1) = *v168;
  *(&v184 + 1) = v83;
  *&v185[0] = v85;
  *(&v185[0] + 1) = v87;
  v117 = v135;
  *&v185[1] = v135;
  BYTE8(v185[1]) = 0;
  v118 = v182;
  v119 = v183;
  *(v108 + 217) = *(v185 + 9);
  v120 = v185[0];
  v108[12] = v184;
  v108[13] = v120;
  v108[10] = v118;
  v108[11] = v119;
  v121 = sub_100002D44(&qword_100145100);
  sub_100007FDC(v105, v108 + *(v121 + 80), &qword_100143CA0);
  v122 = (v108 + *(v121 + 96));
  v123 = v137;
  v124 = v138;
  *&v186 = v138;
  *(&v186 + 1) = v148;
  *&v187 = v137;
  v125 = v136;
  *(&v187 + 1) = v136;
  v188 = 0u;
  v189 = 0u;
  *&v190 = sub_1000705B0;
  v126 = v144;
  *(&v190 + 1) = v144;
  *&v191 = sub_100070868;
  v127 = v167;
  *(&v191 + 1) = v167;
  v122[2] = 0u;
  v122[3] = 0u;
  v128 = v191;
  v122[4] = v190;
  v122[5] = v128;
  v129 = v187;
  *v122 = v186;
  v122[1] = v129;

  sub_100007FDC(&v174, &v192, &qword_1001435C8);
  sub_100007FDC(&v178, &v192, &qword_1001435C8);
  sub_100007FDC(&v182, &v192, &qword_1001435C8);
  sub_1000708D8(&v186, &v192);
  sub_100007E14(v165, &qword_100143CA0);
  v192 = v124;
  v193 = v148;
  v194 = v123;
  v195 = v125;
  v196 = 0u;
  v197 = 0u;
  v198 = sub_1000705B0;
  v199 = v126;
  v200 = sub_100070868;
  v201 = v127;
  sub_100070934(&v192);
  sub_100007E14(v166, &qword_100143CA0);
  v202[0] = v134;
  v202[1] = v149;
  v203 = v132;
  *v204 = v169[0];
  *&v204[3] = *(v169 + 3);
  v205 = v150;
  v206 = v133;
  *v207 = *v168;
  *&v207[3] = *&v168[3];
  v208 = v83;
  v209 = v85;
  v210 = v87;
  v211 = v117;
  v212 = 0;
  sub_100007E14(v202, &qword_1001435C8);
  v213[0] = v154;
  v213[1] = v153;
  v214 = v151;
  *v215 = v171[0];
  *&v215[3] = *(v171 + 3);
  v216 = v155;
  v217 = v152;
  *v218 = *v170;
  *&v218[3] = *&v170[3];
  v219 = v110;
  v220 = v111;
  v221 = v112;
  v222 = v113;
  v223 = 0;
  sub_100007E14(v213, &qword_1001435C8);
  v224[0] = v163;
  v224[1] = v162;
  v225 = v156;
  *v226 = *v173;
  *&v226[3] = *&v173[3];
  v227 = v164;
  v228 = v161;
  *v229 = *v172;
  *&v229[3] = *&v172[3];
  v230 = v160;
  v231 = v159;
  v232 = v158;
  v233 = v157;
  v234 = 0;
  return sub_100007E14(v224, &qword_1001435C8);
}

void sub_10006FEF8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShazamUpsellViewModel();
  sub_100007FDC(a1 + *(v13 + 40), v8, &unk_100144630);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007E14(v8, &unk_100144630);
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BEC4(v14, qword_10014FEA0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not open shazam app from appstore component", v17, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for ShazamUpsellView();
    sub_100041144(v5);
    OpenURLAction.callAsFunction(_:)();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10007020C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  result = type metadata accessor for ShazamUpsellView();
  v10 = (a2 + *(result + 20));
  if (*v10)
  {
    return (*v10)();
  }

  return result;
}

uint64_t sub_1000702CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&qword_1001450D8);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_100002D44(&qword_1001450E0);
  sub_10006F1B0(v1, &v5[*(v6 + 44)]);
  sub_100070480();
  View.accessibilityIdentifier(_:)();
  sub_100007E14(v5, &qword_1001450D8);
  v7 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(sub_100002D44(&qword_1001450F0) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_100002D44(&qword_1001450F8);
  v27 = a1 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

unint64_t sub_100070480()
{
  result = qword_1001450E8;
  if (!qword_1001450E8)
  {
    sub_100004370(&qword_1001450D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001450E8);
  }

  return result;
}

uint64_t sub_1000704E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamUpsellView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007054C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamUpsellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000705B0()
{
  v1 = *(type metadata accessor for ShazamUpsellView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10006FEF8(v2);
}

uint64_t sub_100070610()
{
  v1 = type metadata accessor for ShazamUpsellView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v15 = v0;
  v4 = v0 + v3;

  v5 = type metadata accessor for ShazamUpsellViewModel();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v5 + 40);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  if (*(v4 + *(v1 + 20)))
  {
  }

  v11 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v4 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_100070868(uint64_t a1)
{
  v3 = *(type metadata accessor for ShazamUpsellView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10007020C(a1, v4);
}

uint64_t sub_1000709FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100070A80()
{
  result = qword_100145118;
  if (!qword_100145118)
  {
    sub_100004370(qword_100145120);
    sub_100070480();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145118);
  }

  return result;
}

uint64_t sub_100070B10()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100070BEC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  sub_100070CC8();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_100070D68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

uint64_t sub_100070EFC()
{
  sub_1000714B0();
}

uint64_t sub_100070F24(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 104));
  v4 = type metadata accessor for LibraryListViewModel();
  if (v3 == a1)
  {
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100070E24();
  }
}

uint64_t sub_100071084(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_100070BEC(&v9 - v5);
  v7 = (*(*(v2 + 88) + 16))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000711B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_100070BEC(&v8 - v5);
  LOBYTE(v2) = (*(*(v2 + 88) + 32))(v3);
  (*(v4 + 8))(v6, v3);
  return v2 & 1;
}

uint64_t sub_1000712B8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100071398()
{
  sub_1000712B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100071408()
{
  swift_getKeyPath();
  sub_100070E24();
}

uint64_t sub_1000714B0()
{
  swift_getKeyPath();
  sub_100070CC8();

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_100071538(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v11 = qword_10014FF90;
  swift_getKeyPath();
  v16[1] = v11;
  sub_10005B1D0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_10005B228(v11 + v12, v10);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000717A0(v10);
    v13 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1000717A0(v10);
    v14 = MusicSubscription.canPlayCatalogContent.getter();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }
  }

  return sub_1000C3900(v13 | a1 | (a2 << 8), 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000717A0(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10007185C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100071884@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000714B0();
}

uint64_t sub_1000718F8()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 104)) = *(v0 + 24);
}

uint64_t sub_10007194C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100071994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100071A00()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_1001451A8 = result;
  unk_1001451B0 = v1;
  byte_1001451B8 = v2 & 1;
  qword_1001451C0 = v3;
  return result;
}

uint64_t sub_100071A48()
{
  result = static Solarium.isEnabled.getter();
  v1 = 10.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1001451C8 = *&v1;
  return result;
}

uint64_t sub_100071A78()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  result = Color.init(uiColor:)();
  qword_1001451D0 = result;
  return result;
}

uint64_t sub_100071AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v56 = a5;
  v8 = sub_100002D44(&qword_1001451E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_100002D44(&qword_1001451E8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v53 = sub_100002D44(&qword_1001451F0);
  __chkstk_darwin(v53);
  v16 = &v50 - v15;
  v54 = sub_100002D44(&qword_1001451F8);
  __chkstk_darwin(v54);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v52 = &v50 - v22;
  v23 = sub_100002D44(&qword_100143B50);
  __chkstk_darwin(v23 - 8);
  v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  v28 = a3;
  v29 = v50;
  sub_100072060(&v50 - v26);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v30 = sub_100002D44(&qword_100145200);
  sub_100072350(a1, a2, v28, v29, &v10[*(v30 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F250(v10, v14, &qword_1001451E0);
  v31 = &v14[*(v12 + 44)];
  v32 = v62;
  *(v31 + 4) = v61;
  *(v31 + 5) = v32;
  *(v31 + 6) = v63;
  v33 = v58;
  *v31 = v57;
  *(v31 + 1) = v33;
  v34 = v60;
  *(v31 + 2) = v59;
  *(v31 + 3) = v34;
  if (qword_100141B98 != -1)
  {
    swift_once();
  }

  v35 = qword_1001451D0;
  v36 = static Edge.Set.all.getter();
  sub_10002F250(v14, v16, &qword_1001451E8);
  v37 = &v16[*(v53 + 36)];
  *v37 = v35;
  v37[8] = v36;
  v38 = qword_100141B90;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_1001451C8;
  v40 = &v20[*(v54 + 36)];
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_100002D44(&qword_100143758) + 36)) = 256;
  sub_10002F250(v16, v20, &qword_1001451F0);
  v44 = v52;
  sub_10002F250(v20, v52, &qword_1001451F8);
  v45 = v51;
  sub_100007FDC(v27, v51, &qword_100143B50);
  v46 = v55;
  sub_100007FDC(v44, v55, &qword_1001451F8);
  v47 = v56;
  sub_100007FDC(v45, v56, &qword_100143B50);
  v48 = sub_100002D44(&qword_100145208);
  sub_100007FDC(v46, v47 + *(v48 + 48), &qword_1001451F8);
  sub_100007E14(v44, &qword_1001451F8);
  sub_100007E14(v27, &qword_100143B50);
  sub_100007E14(v46, &qword_1001451F8);
  return sub_100007E14(v45, &qword_100143B50);
}

uint64_t sub_100072060@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002D44(&qword_100143B50);
  __chkstk_darwin(v25);
  v24 = &v23 - v4;
  if (qword_100141B88 != -1)
  {
    swift_once();
  }

  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Font.title2.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v5, v7, v9 & 1);

  static Font.Weight.bold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  v20 = v19;
  sub_10000BFBC(v10, v12, v14 & 1);

  v29 = v15;
  v30 = v17;
  v31 = v5 & 1;
  v32 = v20;
  static AccessibilityTraits.isHeader.getter();
  v21 = v24;
  View.accessibilityAddTraits(_:)();
  (*(v26 + 8))(v3, v27);
  sub_10000BFBC(v15, v17, v5 & 1);

  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_100007E14(v21, &qword_100143B50);
}

uint64_t sub_100072350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  v9 = sub_100002D44(&qword_100145210);
  __chkstk_darwin(v9 - 8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v45[-v13];
  v49 = &v45[-v13];
  sub_100072754(a1, a2, a3, a4, &v45[-v13]);
  v76 = a3;
  v77 = a4;
  sub_100002D44(&qword_100145218);
  State.wrappedValue.getter();
  v15 = LocationViewModel.address.getter();
  v53 = v16;
  v54 = v15;

  v76 = a1;
  v77 = a2;
  sub_100002D44(&qword_100145220);
  State.wrappedValue.getter();
  v17 = *(v63 + 56);
  v47 = *(v63 + 48);
  v18 = v47;
  v51 = v17;

  v76 = a1;
  v77 = a2;
  State.wrappedValue.getter();
  v19 = *(v63 + 32);
  v50 = *(v63 + 24);
  v20 = v19;
  v48 = v19;

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = static Edge.Set.all.getter();
  LOBYTE(a4) = v22;
  v46 = v22;
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v97 = 0;
  v52 = v11;
  sub_100007FDC(v14, v11, &qword_100145210);
  v31 = v11;
  v32 = v55;
  sub_100007FDC(v31, v55, &qword_100145210);
  v33 = (v32 + *(sub_100002D44(&qword_100145228) + 48));
  v35 = v50;
  v34 = v51;
  *&v63 = v18;
  *(&v63 + 1) = v51;
  *&v64 = v50;
  *(&v64 + 1) = v20;
  v37 = v53;
  v36 = v54;
  *&v65 = v54;
  *(&v65 + 1) = v53;
  *&v66 = sub_100072CC0;
  *(&v66 + 1) = v21;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  LOBYTE(v74) = a4;
  *(&v74 + 1) = v24;
  *&v75[0] = v26;
  *(&v75[0] + 1) = v28;
  *&v75[1] = v30;
  BYTE8(v75[1]) = 0;
  v38 = v57;
  v33[4] = v56;
  v33[5] = v38;
  v39 = v66;
  v33[2] = v65;
  v33[3] = v39;
  v40 = v72;
  v33[8] = v71;
  v33[9] = v40;
  v41 = v70;
  v33[6] = v69;
  v33[7] = v41;
  v42 = v64;
  *v33 = v63;
  v33[1] = v42;
  *(v33 + 201) = *(v75 + 9);
  v43 = v75[0];
  v33[11] = v74;
  v33[12] = v43;
  v33[10] = v73;
  sub_100007FDC(&v63, &v76, &qword_100145230);
  sub_100007E14(v49, &qword_100145210);
  v76 = v47;
  v77 = v34;
  v78 = v35;
  v79 = v48;
  v80 = v36;
  v81 = v37;
  v82 = sub_100072CC0;
  v83 = v21;
  v88 = v60;
  v89 = v61;
  v90 = v62;
  v84 = v56;
  v85 = v57;
  v86 = v58;
  v87 = v59;
  v91 = v46;
  v92 = v24;
  v93 = v26;
  v94 = v28;
  v95 = v30;
  v96 = 0;
  sub_100007E14(&v76, &qword_100145230);
  return sub_100007E14(v52, &qword_100145210);
}

uint64_t sub_100072754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v29 = a5;
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100145238);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_100002D44(&qword_100145240);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  v26 = sub_100002D44(&qword_100145210);
  __chkstk_darwin(v26);
  v19 = &v24 - v18;
  *&v32 = a3;
  *(&v32 + 1) = a4;
  sub_100002D44(&qword_100145218);
  State.wrappedValue.getter();
  *&v32 = a1;
  *(&v32 + 1) = v25;
  sub_100002D44(&qword_100145220);
  State.wrappedValue.getter();

  LocationView.init(viewModel:strokeColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v13[*(v11 + 36)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  static AccessibilityChildBehavior.combine.getter();
  v22 = sub_100072CCC();
  View.accessibilityElement(children:)();
  (*(v27 + 8))(v10, v28);
  sub_100007E14(v13, &qword_100145238);
  v30 = v11;
  v31 = v22;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  (*(v15 + 8))(v17, v14);
  ModifiedContent<>.accessibilityHidden(_:)();
  return sub_100007E14(v19, &qword_100145210);
}

uint64_t sub_100072AE4()
{
  sub_100002D44(&qword_100145220);
  State.wrappedValue.getter();
  sub_100002D44(&qword_100145218);
  State.wrappedValue.getter();
  v0 = LocationViewModel.location.getter();

  [v0 coordinate];
  v2 = v1;
  v4 = v3;

  State.wrappedValue.getter();
  v5 = LocationViewModel.address.getter();
  v7 = v6;

  sub_1000B2AEC(v2, v4, v5, v7);
}

uint64_t sub_100072BF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = sub_100002D44(&qword_1001451D8);
  return sub_100071AB8(v3, v4, v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_100072C70()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100072CCC()
{
  result = qword_100145248;
  if (!qword_100145248)
  {
    sub_100004370(&qword_100145238);
    sub_100072D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145248);
  }

  return result;
}

unint64_t sub_100072D58()
{
  result = qword_100145250;
  if (!qword_100145250)
  {
    type metadata accessor for LocationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145250);
  }

  return result;
}

unint64_t sub_100072DB4()
{
  result = qword_100145258;
  if (!qword_100145258)
  {
    sub_100004370(&qword_100145260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145258);
  }

  return result;
}

uint64_t sub_100072E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100072F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&unk_100144630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AnyArtist()
{
  result = qword_1001452C0;
  if (!qword_1001452C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073020()
{
  sub_1000085D0();
  if (v0 <= 0x3F)
  {
    sub_1000730A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000730A4()
{
  result = qword_1001452D0;
  if (!qword_1001452D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001452D0);
  }

  return result;
}

uint64_t sub_100073108(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_100073160(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 24))(v3, v4);
}

uint64_t sub_1000731B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 32))(v3, v4);
}

uint64_t sub_100073218(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 40))(v3, v4);
}

uint64_t sub_100073270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000DC80(v6, v7);
  return (*(v8 + 48))(a1, a2, v7, v8);
}

uint64_t sub_1000732E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000DC80(v6, v7);
  return (*(v8 + 56))(a1, a2, v7, v8);
}

uint64_t sub_100073358()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 < 0.0 || v4 > 1.0)
  {
    v2 = sub_100073500();
    swift_getKeyPath();
    swift_getKeyPath();
    if (v2)
    {
      static Published.subscript.getter();

      if (v4 <= 1.0)
      {
        return result;
      }

      swift_getKeyPath();
      swift_getKeyPath();
    }

    v3 = static Published.subscript.setter();
    return sub_100073358(v3);
  }

  return result;
}

double sub_10007348C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL sub_100073500()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 < 0.0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return (~*&v1 & 0x7FF0000000000000) != 0 || (*&v1 & 0xFFFFFFFFFFFFFLL) == 0;
}

uint64_t sub_1000735E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100073658()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_100073358();
}

uint64_t sub_100073720()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition27SongPreviewStatusController__progress;
  v2 = sub_100002D44(&qword_1001453E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicRecognition27SongPreviewStatusController__playbackStatus;
  v4 = sub_100002D44(&qword_1001453E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for SongPreviewStatusController()
{
  result = qword_100145338;
  if (!qword_100145338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073868()
{
  sub_100073950(319, &qword_100145348);
  if (v0 <= 0x3F)
  {
    sub_100073950(319, &unk_100145350);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100073950(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1000739B0()
{
  result = qword_1001453D8;
  if (!qword_1001453D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001453D8);
  }

  return result;
}

uint64_t sub_100073A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100073AF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContextMenuForSubscribedUserView()
{
  result = qword_100145458;
  if (!qword_100145458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073BF4()
{
  sub_100008ADC();
  if (v0 <= 0x3F)
  {
    sub_100073CF0(319, &unk_100145468, type metadata accessor for ContextMenuForSubscribedUserViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100073CF0(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100073CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100073D70()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x8000000100101320;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1001453F0 = v3;
}

uint64_t sub_100073E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v79 = type metadata accessor for URL();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContextMenuForSubscribedUserView();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v70 = v6;
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100002D44(&qword_1001454A0);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = v59 - v8;
  v91 = sub_100002D44(&qword_1001454A8);
  v73 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v59 - v9;
  v74 = sub_100002D44(&qword_1001454B0);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v92 = v59 - v10;
  v77 = sub_100002D44(&qword_1001454B8);
  v82 = *(v77 - 8);
  __chkstk_darwin(v77);
  v93 = v59 - v11;
  v83 = sub_100002D44(&qword_1001454C0);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v59 - v12;
  v85 = sub_100002D44(&qword_1001454C8);
  __chkstk_darwin(v85);
  v80 = v59 - v13;
  v67 = v7;
  v66 = type metadata accessor for ContextMenuForSubscribedUserView;
  sub_100079C54(v1, v7, type metadata accessor for ContextMenuForSubscribedUserView);
  v69 = *(v5 + 80);
  v14 = (v69 + 16) & ~v69;
  v68 = v14;
  v15 = swift_allocObject();
  sub_100079BEC(v7, v15 + v14, type metadata accessor for ContextMenuForSubscribedUserView);
  v95 = v2;
  sub_100002D44(&qword_1001422A8);
  sub_100002D44(&qword_1001454D0);
  v16 = sub_100004370(&qword_1001422B8);
  *&v96 = &type metadata for Image;
  *(&v96 + 1) = &protocol witness table for Image;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v96 = v16;
  *(&v96 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_1001454D8, &qword_1001454D0);
  Menu.init(onPresentationChanged:content:label:)();
  v60 = LocalizedStringKey.init(_:)();
  v59[3] = v18;
  v89 = *(v2 + 16);
  v88 = *(v2 + 24);
  v62 = v2;
  *&v104 = v89;
  *(&v104 + 1) = v88;
  v87 = sub_100002D44(&qword_1001454E0);
  State.projectedValue.getter();
  v19 = v96;
  v20 = v97;
  swift_getKeyPath();
  v96 = v19;
  v97 = v20;
  v64 = sub_100002D44(&qword_1001454E8);
  Binding.subscript.getter();

  v94 = v2;
  v61 = sub_100002D44(&qword_1001454F0);
  v63 = sub_100004610(&qword_1001454F8, &qword_1001454A0);
  v21 = sub_1000794B0();
  v22 = v71;
  v23 = v65;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)();

  (*(v72 + 8))(v23, v22);
  *&v104 = v89;
  *(&v104 + 1) = v88;
  State.projectedValue.getter();
  v24 = v96;
  v25 = v97;
  swift_getKeyPath();
  v104 = v24;
  v105 = v25;
  Binding.subscript.getter();

  v26 = v67;
  v27 = v66;
  sub_100079C54(v62, v67, v66);
  v28 = v68;
  v29 = swift_allocObject();
  sub_100079BEC(v26, v29 + v28, v27);
  v70 = sub_100002D44(&qword_100145518);
  *&v96 = v22;
  *(&v96 + 1) = v61;
  v97 = &type metadata for Text;
  v98 = v63;
  v99 = v21;
  v100 = &protocol witness table for Text;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_100004610(&qword_100145520, &qword_100145518);
  v30 = v91;
  v31 = v90;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v73 + 8))(v31, v30);
  v32 = v89;
  v33 = v88;
  *&v104 = v89;
  *(&v104 + 1) = v88;
  State.projectedValue.getter();
  v34 = v96;
  v35 = v97;
  swift_getKeyPath();
  v104 = v34;
  v105 = v35;
  Binding.subscript.getter();

  *&v96 = v32;
  *(&v96 + 1) = v33;
  State.wrappedValue.getter();
  v36 = v78;
  v37 = v76;
  v38 = v79;
  (*(v78 + 16))(v76, v103 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v79);

  *&v96 = v91;
  *(&v96 + 1) = v70;
  v97 = v71;
  v98 = v72;
  v58 = swift_getOpaqueTypeConformance2();
  v39 = v74;
  v40 = v92;
  View.sharingPicker(isPresented:item:subject:message:)();

  (*(v36 + 8))(v37, v38);
  v41 = v40;
  v42 = v39;
  (*(v75 + 8))(v41, v39);
  Solarium.init()();
  v43 = sub_100002D44(&qword_100145528);
  v44 = sub_100002D44(&qword_100145530);
  *&v96 = v42;
  *(&v96 + 1) = v58;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = type metadata accessor for PlainButtonStyle();
  v47 = sub_1000796DC(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  v48 = v77;
  *&v96 = v77;
  *(&v96 + 1) = v46;
  v97 = v45;
  v98 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = type metadata accessor for NavigationBarButtonStyle();
  v51 = sub_1000796DC(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  *&v96 = v48;
  *(&v96 + 1) = v50;
  v97 = v45;
  v98 = v51;
  v57 = swift_getOpaqueTypeConformance2();
  v52 = v81;
  v53 = v93;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v82 + 8))(v53, v48);
  *&v96 = v48;
  *(&v96 + 1) = &type metadata for Solarium;
  v97 = v43;
  v98 = v44;
  v54 = v80;
  v99 = v45;
  v100 = &protocol witness table for Solarium;
  v101 = v49;
  v102 = v57;
  swift_getOpaqueTypeConformance2();
  v55 = v83;
  View.accessibilityIdentifier(_:)();
  (*(v84 + 8))(v52, v55);
  if (qword_100141BA0 != -1)
  {
    swift_once();
  }

  v96 = xmmword_1001453F0;
  sub_10000B730();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  return sub_100007E14(v54, &qword_1001454C8);
}

uint64_t sub_100074D7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v36 = sub_100002D44(&qword_100142320);
  v41 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v30 - v5;
  __chkstk_darwin(v6);
  v40 = &v30 - v7;
  __chkstk_darwin(v8);
  v39 = &v30 - v9;
  v10 = sub_100002D44(&qword_100145548);
  v32 = *(v10 - 8);
  v11 = v32;
  v33 = v10;
  __chkstk_darwin(v10);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  LocalizedStringKey.init(_:)();
  v44 = a1;
  sub_100002D44(&qword_100145550);
  sub_100004610(&qword_100145558, &qword_100145550);
  v31 = v15;
  Section<>.init(_:content:)();
  v43 = a1;
  sub_100002D44(&qword_100142328);
  sub_10000B804();
  v16 = v39;
  Section<>.init(content:)();
  v42 = a1;
  v17 = v40;
  Section<>.init(content:)();
  v18 = *(v11 + 16);
  v19 = v38;
  v20 = v33;
  v18(v38, v15, v33);
  v21 = *(v41 + 16);
  v22 = v34;
  v23 = v36;
  v21(v34, v16, v36);
  v24 = v35;
  v21(v35, v17, v23);
  v25 = v37;
  v18(v37, v19, v20);
  v26 = sub_100002D44(&qword_100145560);
  v21(&v25[*(v26 + 48)], v22, v23);
  v21(&v25[*(v26 + 64)], v24, v23);
  v27 = *(v41 + 8);
  v27(v40, v23);
  v27(v39, v23);
  v28 = *(v32 + 8);
  v28(v31, v20);
  v27(v24, v23);
  v27(v22, v23);
  return (v28)(v38, v20);
}

uint64_t sub_100075200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_100002D44(&qword_100145568);
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = &v70 - v4;
  v5 = sub_100002D44(&qword_100145570);
  __chkstk_darwin(v5 - 8);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v70 - v8;
  v9 = type metadata accessor for ContextMenuForSubscribedUserView();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v90 = v10;
  v84 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100142340);
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11);
  v85 = &v70 - v12;
  v72 = sub_100002D44(&qword_100142328);
  v13 = *(v72 - 8);
  __chkstk_darwin(v72);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v78 = &v70 - v16;
  __chkstk_darwin(v17);
  v77 = &v70 - v18;
  __chkstk_darwin(v19);
  v88 = &v70 - v20;
  v21 = sub_100002D44(&qword_100144658);
  __chkstk_darwin(v21 - 8);
  v23 = &v70 - v22;
  v24 = type metadata accessor for StreamingService();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v70 - v29;
  v31 = sub_100002D44(&qword_100145578);
  __chkstk_darwin(v31 - 8);
  v73 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v91 = &v70 - v34;
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v83 = a1;
  v93 = v35;
  v94 = v36;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  sub_100007FDC(v92 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_classicalProvider, v23, &qword_100144658);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100007E14(v23, &qword_100144658);
    v37 = 1;
    v38 = v91;
  }

  else
  {
    v39 = v30;
    sub_100079BEC(v23, v30, type metadata accessor for StreamingService);
    v40 = v83;
    v71 = v13;
    v41 = v84;
    sub_100079C54(v83, v84, type metadata accessor for ContextMenuForSubscribedUserView);
    sub_100079C54(v39, v27, type metadata accessor for StreamingService);
    v42 = (v82[80] + 16) & ~v82[80];
    v43 = (v90 + *(v25 + 80) + v42) & ~*(v25 + 80);
    v44 = swift_allocObject();
    v13 = v71;
    sub_100079BEC(v41, v44 + v42, type metadata accessor for ContextMenuForSubscribedUserView);
    v45 = sub_100079BEC(v27, v44 + v43, type metadata accessor for StreamingService);
    __chkstk_darwin(v45);
    *(&v70 - 2) = v40;
    *(&v70 - 1) = v39;
    sub_100002D44(&qword_100141F68);
    sub_100004610(&qword_100141F60, &qword_100141F68);
    v46 = v85;
    Button.init(action:label:)();
    sub_100004610(&qword_100142338, &qword_100142340);
    v48 = v87;
    v47 = v88;
    View.accessibilityIdentifier(_:)();
    (*(v86 + 8))(v46, v48);
    sub_10000BEFC(v39, type metadata accessor for StreamingService);
    v49 = v91;
    sub_10007A05C(v47, v91);
    v37 = 0;
    v38 = v49;
  }

  (*(v13 + 56))(v38, v37, 1, v72);
  v50 = v83;
  v51 = v84;
  sub_100079C54(v83, v84, type metadata accessor for ContextMenuForSubscribedUserView);
  v52 = (v82[80] + 16) & ~v82[80];
  v53 = swift_allocObject();
  sub_100079BEC(v51, v53 + v52, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_100002D44(&qword_100143A78);
  v82 = &protocol conformance descriptor for Label<A, B>;
  sub_100004610(&qword_100143A98, &qword_100143A78);
  v54 = v74;
  Button.init(action:label:)();
  sub_100004610(&qword_100145580, &qword_100145568);
  v55 = v89;
  v56 = v76;
  View.accessibilityIdentifier(_:)();
  (*(v75 + 8))(v54, v56);
  v57 = v88;
  sub_100075DD8(v88);
  sub_100079C54(v50, v51, type metadata accessor for ContextMenuForSubscribedUserView);
  v58 = swift_allocObject();
  sub_100079BEC(v51, v58 + v52, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  v59 = v85;
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340);
  v60 = v77;
  v61 = v87;
  View.accessibilityIdentifier(_:)();
  (*(v86 + 8))(v59, v61);
  v62 = v73;
  sub_100007FDC(v91, v73, &qword_100145578);
  v63 = v55;
  v64 = v80;
  sub_100079B7C(v63, v80);
  v65 = v78;
  sub_100007FDC(v57, v78, &qword_100142328);
  v66 = v79;
  sub_100007FDC(v60, v79, &qword_100142328);
  v67 = v81;
  sub_100007FDC(v62, v81, &qword_100145578);
  v68 = sub_100002D44(&qword_100145588);
  sub_100079B7C(v64, v67 + v68[12]);
  sub_100007FDC(v65, v67 + v68[16], &qword_100142328);
  sub_100007FDC(v66, v67 + v68[20], &qword_100142328);
  sub_100007E14(v60, &qword_100142328);
  sub_100007E14(v57, &qword_100142328);
  sub_100007E14(v89, &qword_100145570);
  sub_100007E14(v91, &qword_100145578);
  sub_100007E14(v66, &qword_100142328);
  sub_100007E14(v65, &qword_100142328);
  sub_100007E14(v64, &qword_100145570);
  return sub_100007E14(v62, &qword_100145578);
}

uint64_t sub_100075DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for ContextMenuForSubscribedUserView();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100002D44(&qword_100143C20);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_100002D44(&qword_100142340);
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v11;
  v29 = v11;
  v30 = v23;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v12 = v28;
  swift_getKeyPath();
  v29 = v12;
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary);

  if (v13 == 1)
  {
    static ButtonRole.destructive.getter();
  }

  else
  {
    static ButtonRole.cancel.getter();
  }

  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_100079C54(v2, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v16 = swift_allocObject();
  v17 = sub_100079BEC(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ContextMenuForSubscribedUserView);
  __chkstk_darwin(v17);
  *(&v21 - 2) = v2;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(role:action:label:)();
  v29 = v24;
  v30 = v23;
  State.wrappedValue.getter();
  v18 = v28;
  swift_getKeyPath();
  v29 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004610(&qword_100142338, &qword_100142340);
  v19 = v26;
  View.accessibilityIdentifier(_:)();

  return (*(v25 + 8))(v10, v19);
}

uint64_t sub_100076288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ContextMenuForSubscribedUserView();
  v26 = *(v3 - 8);
  v25 = *(v26 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142340);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  __chkstk_darwin(v6);
  v27 = &v24 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *(a1 + 24);
  v32 = *(a1 + 16);
  v33 = v16;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v17 = *(v10 + 16);
  v17(v15, v31 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL, v9);

  sub_100079C54(a1, v5, type metadata accessor for ContextMenuForSubscribedUserView);
  v17(v12, v15, v9);
  v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v19 = (v25 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_100079BEC(v5, v20 + v18, type metadata accessor for ContextMenuForSubscribedUserView);
  (*(v10 + 32))(v20 + v19, v12, v9);
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  v21 = v27;
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340);
  v22 = v28;
  View.accessibilityIdentifier(_:)();
  (*(v29 + 8))(v21, v22);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_10007668C@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v2 = type metadata accessor for ContextMenuForSubscribedUserView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100002D44(&qword_100142340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  v9 = sub_100002D44(&qword_100142328);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_100079C54(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_100079BEC(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();
  (*(v6 + 8))(v8, v5);
  LocalizedStringKey.init(_:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  LOBYTE(v4) = v17;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000BFBC(v14, v16, v4 & 1);

  return sub_100007E14(v11, &qword_100142328);
}

uint64_t sub_100076A0C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_100002D44(&qword_1001422B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  v14 = Image.init(systemName:)();
  if (static Solarium.isEnabled.getter())
  {
    static SymbolVariants.none.getter();
  }

  else
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
    (*(v2 + 8))(v4, v1);
  }

  View.symbolVariant(_:)();
  (*(v2 + 8))(v7, v1);

  static Font.Weight.regular.getter();
  v14 = &type metadata for Image;
  v15 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  View.fontWeight(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100076CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for ContextMenuForSubscribedUserView();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100002D44(&qword_100143C20);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_100002D44(&qword_100145510);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  v12 = LocalizedStringKey.init(_:)();
  v18[0] = v13;
  v18[1] = v12;
  static ButtonRole.destructive.getter();
  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_100079C54(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v15 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v16 = swift_allocObject();
  sub_100079BEC(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ContextMenuForSubscribedUserView);
  Button<>.init(_:role:action:)();
  sub_100004610(&qword_100145508, &qword_100145510);
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100076FAC(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForSubscribedUserView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100079C54(a1, v5, type metadata accessor for ContextMenuForSubscribedUserView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100079BEC(v5, v12 + v11, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_1000C8AF8(0, 0, v8, &unk_1000F9B98, v12);
}

uint64_t sub_100077180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100077218, v6, v5);
}

uint64_t sub_100077218()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1000772DC;

  return sub_1000CB5DC();
}

uint64_t sub_1000772DC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10007A850, v3, v2);
}

uint64_t sub_100077420@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000774AC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100077588()
{
  type metadata accessor for AddToPlaylistView();
  sub_1000796DC(&qword_100145538, type metadata accessor for AddToPlaylistView);
  return NavigationView.init(content:)();
}

uint64_t sub_10007761C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ContextMenuForSubscribedUserView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *(a1 + 24);
  v16 = *(a1 + 16);
  v17 = v7;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v8 = *(v15 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_musicLibraryController);

  sub_100079C54(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_100079BEC(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ContextMenuForSubscribedUserView);
  v11 = *(type metadata accessor for AddToPlaylistView() + 20);
  *(a2 + v11) = swift_getKeyPath();
  sub_100002D44(&qword_1001422A0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AddToPlaylistViewModel();
  swift_allocObject();

  v15 = sub_100065B00(v8, sub_10007969C, v10);
  State.init(wrappedValue:)();

  v13 = v17;
  *a2 = v16;
  a2[1] = v13;
  return result;
}

uint64_t sub_10007782C()
{
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) = 0;
  }
}

uint64_t sub_10007797C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000796DC(&qword_100142308, type metadata accessor for ContextMenuViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
  return result;
}

uint64_t sub_100077A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[2] = a2;
  v16[3] = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  v16[1] = sub_100002D44(&qword_1001454B8);
  v16[0] = sub_100004370(&qword_1001454B0);
  v6 = sub_100004370(&qword_1001454A8);
  v7 = sub_100004370(&qword_100145518);
  v8 = sub_100004370(&qword_1001454A0);
  v9 = sub_100004370(&qword_1001454F0);
  v10 = sub_100004610(&qword_1001454F8, &qword_1001454A0);
  v11 = sub_1000794B0();
  v17 = v8;
  v18 = v9;
  v19 = &type metadata for Text;
  v20 = v10;
  v21 = v11;
  v22 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_100004610(&qword_100145520, &qword_100145518);
  v17 = v6;
  v18 = v7;
  v19 = OpaqueTypeConformance2;
  v20 = v13;
  v14 = swift_getOpaqueTypeConformance2();
  v17 = v16[0];
  v18 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1000796DC(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100077CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v16 = type metadata accessor for NavigationBarButtonStyle();
  __chkstk_darwin(v16);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  v15 = sub_100002D44(&qword_1001454B8);
  v4 = sub_100004370(&qword_1001454B0);
  v5 = sub_100004370(&qword_1001454A8);
  v6 = sub_100004370(&qword_100145518);
  v7 = sub_100004370(&qword_1001454A0);
  v8 = sub_100004370(&qword_1001454F0);
  v9 = sub_100004610(&qword_1001454F8, &qword_1001454A0);
  v10 = sub_1000794B0();
  v19 = v7;
  v20 = v8;
  v21 = &type metadata for Text;
  v22 = v9;
  v23 = v10;
  v24 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_100004610(&qword_100145520, &qword_100145518);
  v19 = v5;
  v20 = v6;
  v21 = OpaqueTypeConformance2;
  v22 = v12;
  v13 = swift_getOpaqueTypeConformance2();
  v19 = v4;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1000796DC(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  View.buttonStyle<A>(_:)();
  return sub_10000BEFC(v3, type metadata accessor for NavigationBarButtonStyle);
}

uint64_t sub_100077FA4(uint64_t a1)
{
  v16 = type metadata accessor for URL();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OpenURLAction();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v18 = *(a1 + 16);
  v9 = v18;
  v19 = v8;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v10 = v17;
  type metadata accessor for ContextMenuForSubscribedUserView();
  sub_100041144(v7);
  v18 = v9;
  v19 = v8;
  State.wrappedValue.getter();
  v11 = v16;
  (*(v2 + 16))(v4, v17 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songCampaignURL, v16);

  OpenURLAction.callAsFunction(_:)();
  (*(v2 + 8))(v4, v11);
  (*(v5 + 8))(v7, v15);
  if (*(v10 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v12 = 66305;
  }

  else
  {
    v12 = 769;
  }

  sub_1000C3900(v12, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000781F0()
{
  sub_100002D44(&qword_1001422B8);
  swift_getOpaqueTypeConformance2();
  return Label.init(title:icon:)();
}

uint64_t sub_1000782B4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007832C()
{
  v0 = type metadata accessor for SymbolVariants();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  v9[1] = Image.init(_internalSystemName:)();
  static SymbolVariants.square.getter();
  SymbolVariants.fill.getter();
  v7 = *(v1 + 8);
  v7(v6, v0);
  View.symbolVariant(_:)();
  v7(v3, v0);
}

uint64_t sub_100078484(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForSubscribedUserView();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2 - 8);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v22 = v8;
  v23 = v7;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v9 = v21;
  swift_getKeyPath();
  v22 = v9;
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary);

  if (v10 != 1)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = v20;
    sub_100079C54(a1, v20, type metadata accessor for ContextMenuForSubscribedUserView);
    type metadata accessor for MainActor();
    v14 = static MainActor.shared.getter();
    v15 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_100079BEC(v13, v16 + v15, type metadata accessor for ContextMenuForSubscribedUserView);
    sub_1000C8AF8(0, 0, v6, &unk_1000F9C38, v16);
  }

  v22 = v8;
  v23 = v7;
  State.wrappedValue.getter();
  v11 = v21;
  if (*(v21 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__confirmationDialogPresented) == 1)
  {
    *(v21 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__confirmationDialogPresented) = 1;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v19 - 2) = v11;
  *(&v19 - 8) = 1;
  v22 = v11;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100078808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1000788A0, v6, v5);
}

uint64_t sub_1000788A0()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100027BF8;

  return sub_1000CBD48();
}

uint64_t sub_100078964()
{
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_100078BB4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100078C2C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100002D44(&qword_1001454E0);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_100078CE4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100078D5C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100078DA4()
{
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  sub_1000E7B74(sub_100079B44);
}

uint64_t sub_100078E2C(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = type metadata accessor for EnvironmentValues();
  v3 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_1001422A0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextMenuForSubscribedUserView();
  sub_100007FDC(a1 + *(v13 + 24), v8, &qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v16[0]);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100079110@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100079188(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  v10[2] = *(a1 + 16);
  v10[3] = v6;
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();
  v7 = v10[1];
  type metadata accessor for ContextMenuForSubscribedUserView();
  sub_100041144(v5);
  type metadata accessor for StreamingService();
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  if (*(v7 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v8 = 66313;
  }

  else
  {
    v8 = 777;
  }

  sub_1000C3900(v8, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000792FC@<X0>(uint64_t a1@<X8>)
{
  sub_100002D44(&qword_1001454E0);
  State.wrappedValue.getter();

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000793DC(char a1)
{
  v3 = type metadata accessor for ContextMenuForSubscribedUserView();
  v6 = *(v3 - 8);
  result = v3 - 8;
  v5 = v6;
  if (a1)
  {
    v7 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
    if (*v7)
    {
      return (*v7)();
    }
  }

  return result;
}

unint64_t sub_1000794B0()
{
  result = qword_100145500;
  if (!qword_100145500)
  {
    sub_100004370(&qword_1001454F0);
    sub_100004610(&qword_100145508, &qword_100145510);
    sub_1000796DC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145500);
  }

  return result;
}

uint64_t sub_1000795E8()
{
  type metadata accessor for ContextMenuForSubscribedUserView();

  return sub_100077588();
}

uint64_t sub_1000796DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007973C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContextMenuForSubscribedUserView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000797B4(uint64_t a1)
{
  v4 = *(type metadata accessor for ContextMenuForSubscribedUserView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100012EC8;

  return sub_100077180(a1, v6, v7, v1 + v5);
}

uint64_t sub_100079954()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  if (*(v0 + v3))
  {
  }

  v9 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_100079B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079CBC()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for StreamingService();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v8 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  v10 = v2 | v6;
  v11 = (v3 + v4 + v6) & ~v6;

  v12 = *(v5 + 20);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(v0 + v11 + v12, v13);

  return _swift_deallocObject(v0, v11 + v7, v10 | 7);
}

uint64_t sub_100079EF8(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContextMenuForSubscribedUserView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

uint64_t sub_10007A05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A0DC()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A234()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  if (*(v0 + v3))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A374(uint64_t a1)
{
  v4 = *(type metadata accessor for ContextMenuForSubscribedUserView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_100078808(a1, v6, v7, v1 + v5);
}

unint64_t sub_10007A488()
{
  result = qword_100145590;
  if (!qword_100145590)
  {
    sub_100004370(&qword_1001454C8);
    sub_100004370(&qword_1001454B8);
    sub_100004370(&qword_100145528);
    sub_100004370(&qword_100145530);
    sub_100004370(&qword_1001454B0);
    sub_100004370(&qword_1001454A8);
    sub_100004370(&qword_100145518);
    sub_100004370(&qword_1001454A0);
    sub_100004370(&qword_1001454F0);
    sub_100004610(&qword_1001454F8, &qword_1001454A0);
    sub_1000794B0();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100145520, &qword_100145518);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlainButtonStyle();
    sub_1000796DC(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for NavigationBarButtonStyle();
    sub_1000796DC(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000796DC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145590);
  }

  return result;
}

void sub_10007A9BC(void *a1)
{
  v2 = v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ambient compact scene will connect %@", v8, 0xCu);
    sub_1000157BC(v9);
  }

  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(UIWindow);
    oslog = v5;
    v14 = [v13 initWithWindowScene:v12];
    v15 = OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window;
    v16 = *(v2 + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window) = v14;

    v17 = *(v2 + v15);
    if (v17)
    {
      type metadata accessor for MusicRecognitionAmbientCompactViewController();
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v19 = v17;
      v20 = [v18 init];
      [v19 setRootViewController:v20];

      v21 = *(v2 + v15);
      if (v21)
      {
        v22 = v21;
        [v22 makeKeyAndVisible];
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unable to connect to ActivityScene", v24, 2u);
    }
  }
}

uint64_t sub_10007AC4C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_10007C388(v1, &v12 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 0;
  }

  (*(v5 + 32))(v7, v10, v4);
  a1(&v12, v7);
  if (v2)
  {
    result = (*(v5 + 8))(v7, v4);
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return v12;
  }

  return result;
}

uint64_t sub_10007AE14@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a3;
  v113 = a4;
  v111 = a2;
  v110 = a1;
  v109 = a5;
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v106 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v104 = *(v7 - 8);
  v105 = v7;
  __chkstk_darwin(v7);
  v103 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v14 = *(v13 - 8);
  v120 = v13;
  v121 = v14;
  __chkstk_darwin(v13);
  v118 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v16 - 8);
  v117 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeZone();
  __chkstk_darwin(v18 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar();
  __chkstk_darwin(v21 - 8);
  v115 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Locale();
  v122 = *(v119 - 8);
  __chkstk_darwin(v119);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002D44(&qword_100145688);
  __chkstk_darwin(v25 - 8);
  v27 = &v76 - v26;
  v28 = sub_100002D44(&qword_100145690);
  __chkstk_darwin(v28 - 8);
  v30 = &v76 - v29;
  v114 = type metadata accessor for Date.FormatStyle();
  v31 = *(v114 - 8);
  __chkstk_darwin(v114);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v76 - v35;
  __chkstk_darwin(v37);
  v76 = &v76 - v38;
  __chkstk_darwin(v39);
  v77 = &v76 - v40;
  __chkstk_darwin(v41);
  v43 = &v76 - v42;
  __chkstk_darwin(v44);
  v80 = &v76 - v45;
  __chkstk_darwin(v46);
  v116 = &v76 - v47;
  v90 = type metadata accessor for SongMetadataRowViewModel();
  v86 = *(v90 + 28);
  v88 = type metadata accessor for Date.FormatStyle.DateStyle();
  v48 = *(v88 - 8);
  v87 = *(v48 + 56);
  v89 = v48 + 56;
  v78 = v30;
  v87(v30, 1, 1, v88);
  v84 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v49 = *(v84 - 8);
  v83 = *(v49 + 56);
  v85 = v49 + 56;
  v79 = v27;
  v83(v27, 1, 1, v84);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  v81 = v20;
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v50 = v118;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  v51 = *(v121 + 8);
  v121 += 8;
  v82 = v51;
  v51(v50, v120);
  v52 = *(v31 + 8);
  v53 = v114;
  v52(v33, v114);
  v54 = v91;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v55 = v76;
  Date.FormatStyle.month(_:)();
  (*(v92 + 8))(v54, v93);
  v52(v36, v53);
  v56 = v94;
  static Date.FormatStyle.Symbol.Day.twoDigits.getter();
  v57 = v77;
  Date.FormatStyle.day(_:)();
  (*(v95 + 8))(v56, v96);
  v52(v55, v53);
  v58 = v98;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
  v59 = v97;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v101 + 8))(v58, v102);
  Date.FormatStyle.hour(_:)();
  (*(v99 + 8))(v59, v100);
  v52(v57, v53);
  v60 = v103;
  static Date.FormatStyle.Symbol.Minute.twoDigits.getter();
  v61 = v80;
  Date.FormatStyle.minute(_:)();
  (*(v104 + 8))(v60, v105);
  v52(v43, v53);
  v62 = v106;
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v63 = v116;
  Date.FormatStyle.weekday(_:)();
  (*(v107 + 8))(v62, v108);
  v64 = v61;
  v65 = v61;
  v66 = v53;
  v52(v64, v53);
  static Locale.autoupdatingCurrent.getter();
  v67 = v109;
  Date.FormatStyle.locale(_:)();
  v68 = *(v122 + 8);
  v122 += 8;
  v108 = v68;
  v69 = v24;
  v68(v24, v119);
  v52(v63, v66);
  v107 = *(v90 + 32);
  v87(v78, 1, 1, v88);
  v83(v79, 1, 1, v84);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v70 = v118;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v71 = v116;
  Date.FormatStyle.year(_:)();
  v82(v70, v120);
  v72 = v65;
  v73 = v114;
  v52(v72, v114);
  static Locale.autoupdatingCurrent.getter();
  Date.FormatStyle.locale(_:)();
  v108(v69, v119);
  v52(v71, v73);
  *v67 = v110;
  result = sub_1000518E8(v111, v67 + 8);
  v75 = v113;
  *(v67 + 48) = v112;
  *(v67 + 56) = v75;
  return result;
}