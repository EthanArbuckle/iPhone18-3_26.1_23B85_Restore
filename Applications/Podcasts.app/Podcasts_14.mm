uint64_t sub_10023C15C()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    (*(v0 + 104))(2);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10023C23C(void *a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10023C810;
  }

  else
  {

    sub_100004590(v4 + 56);
    v5 = sub_10023C36C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023C36C()
{
  type metadata accessor for MainActor();
  *(v0 + 312) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023C530, v2, v1);
}

uint64_t sub_10023C400(void *a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_10023CB90;
  }

  else
  {

    sub_100004590(v4 + 16);
    v5 = sub_10023D944;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023C530()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    (*(v0 + 104))(1);
  }

  return _swift_task_switch(sub_10023C5B0, 0, 0);
}

uint64_t sub_10023C5B0()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10023C6A8()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    (*(v0 + 104))(2);
  }

  return _swift_task_switch(sub_10023C728, 0, 0);
}

uint64_t sub_10023C728()
{
  v1 = v0[41];
  v2 = v0[29];
  v3 = v0[25];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10023C810()
{
  v39 = v0;
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100004590((v0 + 7));
  v0[40] = v0[36];
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[15];
  static Logger.modernPlayback.getter();
  v1(v2, v3, v4);
  v6 = v5;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v0[33];
    v9 = v0[27];
    v33 = v0[28];
    v10 = v0[25];
    v11 = v0[26];
    v36 = v0[21];
    v37 = v0[32];
    v35 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v12 = 136315907;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v32 = v8;
    v16 = sub_1000153E0(v14, v15, &v38);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v34(v9, v33, v10);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v33, v10);
    v22 = sub_1000153E0(v18, v20, &v38);

    *(v12 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v7, v32, "[%s] Error starting manifest playback: %@. Intent %{private,mask.hash}s", v12, 0x2Au);
    sub_100009104(v13, &qword_100575B20);

    swift_arrayDestroy();

    v37(v36, v35);
  }

  else
  {
    v23 = v0[32];
    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[19];

    v21 = *(v26 + 8);
    v21(v24, v25);
    v23(v27, v28);
  }

  v0[41] = v21;
  type metadata accessor for MainActor();
  v0[42] = static MainActor.shared.getter();
  v30 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023C6A8, v30, v29);
}

uint64_t sub_10023CB90()
{
  v39 = v0;
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100004590((v0 + 2));
  v0[40] = v0[38];
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[15];
  static Logger.modernPlayback.getter();
  v1(v2, v3, v4);
  v6 = v5;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v0[33];
    v9 = v0[27];
    v33 = v0[28];
    v10 = v0[25];
    v11 = v0[26];
    v36 = v0[21];
    v37 = v0[32];
    v35 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v12 = 136315907;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v32 = v8;
    v16 = sub_1000153E0(v14, v15, &v38);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v34(v9, v33, v10);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v33, v10);
    v22 = sub_1000153E0(v18, v20, &v38);

    *(v12 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v7, v32, "[%s] Error starting manifest playback: %@. Intent %{private,mask.hash}s", v12, 0x2Au);
    sub_100009104(v13, &qword_100575B20);

    swift_arrayDestroy();

    v37(v36, v35);
  }

  else
  {
    v23 = v0[32];
    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[19];

    v21 = *(v26 + 8);
    v21(v24, v25);
    v23(v27, v28);
  }

  v0[41] = v21;
  type metadata accessor for MainActor();
  v0[42] = static MainActor.shared.getter();
  v30 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023C6A8, v30, v29);
}

uint64_t sub_10023CFE8(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackController.PreferredJumpInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100168088(&qword_1005791C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v31[-v11];
  __chkstk_darwin(v10);
  v14 = &v31[-v13];
  sub_10023D4B0(a1, &v31[-v13]);
  v15 = *(v3 + 48);
  if (v15(v14, 1, v2) == 1)
  {
    sub_100009104(v14, &qword_1005791C0);
  }

  else
  {
    PlaybackController.PreferredJumpInterval.forward.getter();
    v17 = v16;
    (*(v3 + 8))(v14, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      [Strong setPreferredJumpForwardInterval:v17];
    }
  }

  sub_10023D4B0(a1, v12);
  if (v15(v12, 1, v2) == 1)
  {
    sub_100009104(v12, &qword_1005791C0);
  }

  else
  {
    PlaybackController.PreferredJumpInterval.backward.getter();
    v21 = v20;
    (*(v3 + 8))(v12, v2);
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v22 setPreferredJumpBackwardInterval:v21];
    }
  }

  sub_10023D4B0(a1, v9);
  if (v15(v9, 1, v2) == 1)
  {
    return sub_100009104(v9, &qword_1005791C0);
  }

  (*(v3 + 32))(v5, v9, v2);
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    PlaybackController.PreferredJumpInterval.localizedStringForSkipForward.getter();
    v27 = String._bridgeToObjectiveC()();

    [v26 setLocalizedPreferredJumpForwardString:v27];
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    PlaybackController.PreferredJumpInterval.localizedStringForSkipBackward.getter();
    v30 = String._bridgeToObjectiveC()();

    [v29 setLocalizedPreferredJumpBackwardString:v30];
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_10023D400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedPlaybackController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10023D4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_1005791C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023D520(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_10023B798(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10023D5FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10023B0C0(a1, v4, v5, v6);
}

uint64_t sub_10023D6B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_10023AD98(a1, v4, v5, v6);
}

uint64_t sub_10023D764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10023AB88(a1, v4, v5, v6);
}

uint64_t sub_10023D818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10023A950(a1, v4, v5, v6);
}

unint64_t sub_10023D8CC()
{
  result = qword_1005791D0;
  if (!qword_1005791D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005791D0);
  }

  return result;
}

uint64_t sub_10023D970@<X0>(void *a1@<X8>)
{
  sub_10023DA74();
  v2 = NSManagedObjectContext.fetch<A>(_:)();
  v3 = sub_100380060(v2);

  v5 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10023DA00()
{
  sub_100168088(&qword_100579278);
  NSManagedObjectContext.performAndWait<A>(_:)();
  return v1;
}

unint64_t sub_10023DA74()
{
  result = qword_10057E7C0;
  if (!qword_10057E7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057E7C0);
  }

  return result;
}

uint64_t FlowAction.init(station:presentationContext:)(void *a1, uint64_t a2)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v31 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowDestinationPageHeader();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin();
  v28 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for StationDetail();
  v15 = a1;
  v16 = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  if (v16)
  {
    *v14 = v16;
    (*(v12 + 104))(v14, enum case for FlowDestination.station(_:), v11);

    v17 = StationDetail.title.getter();
    v26[1] = v18;
    v26[2] = v17;
    v19 = *(v8 + 16);
    v27 = a2;
    v19(v10, a2, v7);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v21 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v21;
    v22 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v22;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v21)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v22)
    {
      Link.Presentation.init(rawValue:)();
    }

    v23 = v27;
    (*(v29 + 104))(v28, enum case for FlowDestinationPageHeader.standard(_:), v30);
    static ActionMetrics.notInstrumented.getter();
    v24 = dispatch thunk of FlowAction.__allocating_init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

    (*(v8 + 8))(v23, v7);
  }

  else
  {
    (*(v8 + 8))(a2, v7);

    return 0;
  }

  return v24;
}

uint64_t FlowAction.init(podcast:presentationContext:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v41 = a2;
  v43 = type metadata accessor for ActionMetrics();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowDestinationPageHeader();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowDestination();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PodcastDetail();
  v16 = a1;
  v17 = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  if (v17)
  {
    v18 = v17;
    v34 = v16;
    sub_100036618();
    v33[1] = static UITraitCollection.interfaceIdiomIsMac.getter();
    *v15 = v18;
    (*(v13 + 104))(v15, enum case for FlowDestination.podcast(_:), v12);
    v35 = v11;
    v36 = v9;
    v19 = *(v9 + 16);
    v20 = v41;
    v37 = v8;
    v19(v11, v41, v8);
    v21 = *(v38 + 13);
    v38 = v7;
    v21(v7, enum case for FlowDestinationPageHeader.uber(_:), v39);
    v22 = v40;
    (*(v40 + 16))(v42, v44, v43);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v24 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v24;
    v25 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v25;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    v26 = v22;
    if (Link.Presentation.init(rawValue:)() != v24)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v25)
    {
      Link.Presentation.init(rawValue:)();
    }

    v28 = v43;
    v27 = v44;
    v30 = v36;
    v29 = v37;
    v31 = dispatch thunk of FlowAction.__allocating_init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

    (*(v26 + 8))(v27, v28);
    (*(v30 + 8))(v20, v29);
  }

  else
  {

    (*(v40 + 8))(v44, v43);
    (*(v9 + 8))(v41, v8);
    return 0;
  }

  return v31;
}

uint64_t sub_10023E394(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t CarPlayPageLoadCoordinator.__allocating_init(asPartOf:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1002442DC(a1);

  return v2;
}

uint64_t CarPlayPageLoadCoordinator.start(priority:maximumTasks:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = (v3 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations);
  os_unfair_lock_lock(v10);
  v11 = *&v10[2]._os_unfair_lock_opaque;
  *&v10[2]._os_unfair_lock_opaque = _swiftEmptyArrayStorage;
  os_unfair_lock_unlock(v10);
  sub_100010430(a1, v9, &qword_100578010);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a2;
  v12[6] = v6;
  return sub_10023EE80(0, 0, v9, &unk_100406520, v12);
}

uint64_t CarPlayPageLoadCoordinator.loadImage(for:into:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v55 = a2;
  v54 = type metadata accessor for PreparedArtworkRequest();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v8 = v49 - v7;
  v9 = sub_100168088(&unk_100582DE0);
  __chkstk_darwin(v9 - 8);
  v11 = v49 - v10;
  v12 = type metadata accessor for ArtworkModel();
  __chkstk_darwin(v12 - 8);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ArtworkRequest();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[1] = v15;
  __chkstk_darwin(v16);
  v18 = v49 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.artwork.getter();
  static os_log_type_t.info.getter();
  SignpostAndLogTrace(domain:level:)();
  (*(v20 + 8))(v22, v19);
  v51 = a1;
  sub_1002445E8(a1, v14);
  sub_1000044A0((v3 + 24), *(v3 + 48));
  v49[0] = objc_opt_self();
  [v49[0] maximumImageSize];
  dispatch thunk of ArtworkSizeBucketingStrategy.bucketedSize(for:)();
  v23 = type metadata accessor for CropCode();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_100004428(v62, v61);
  ArtworkRequest.init(model:targetSize:contentMode:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:trace:)();
  sub_1000044A0(v62, v62[3]);
  v58 = v18;
  ArtworkRequest.remoteUrl.getter();
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v8, 1, v24) == 1)
  {
    sub_100009104(v8, &qword_100574040);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v25 + 8))(v8, v24);
  }

  dispatch thunk of Trace.start(interval:context:)();

  sub_100168088(&qword_100579290);
  CacheDomain.memory.getter();
  v26 = v52;
  v27 = v58;
  ArtworkRequest.prepared.getter();
  InMemoryAssetCache.asset(at:)();

  (*(v53 + 8))(v26, v54);
  v28 = *&v60[0];
  if (*&v60[0])
  {
    sub_1000044A0(v61, v61[3]);
    dispatch thunk of TraceInterval.end(with:)();
    [v55 setImage:v28];

    (*(v56 + 8))(v27, v57);
  }

  else
  {
    [v49[0] maximumImageSize];
    v29 = CarPlayPageLoadCoordinator.placeholderImage(for:with:)(v51);
    v30 = v57;
    v31 = v56;
    if (v29)
    {
      v32 = v29;
      [v55 setImage:v29];
    }

    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100004428(v61, v60);
    sub_100004428(v3 + 72, v59);
    v34 = v50;
    (*(v31 + 16))(v50, v27, v30);
    type metadata accessor for MainActor();

    v35 = static MainActor.shared.getter();
    v36 = (*(v31 + 80) + 120) & ~*(v31 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = v35;
    *(v37 + 3) = &protocol witness table for MainActor;
    *(v37 + 4) = v33;
    sub_1000109E4(v60, (v37 + 40));
    sub_1000109E4(v59, (v37 + 80));
    (*(v31 + 32))(&v37[v36], v34, v30);
    v38 = v3 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations;
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations));
    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = v39;
    v41[4] = &unk_100406548;
    v41[5] = v37;
    v42 = *(v38 + 8);
    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 8) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_100021C2C(0, v42[2] + 1, 1, v42, &qword_100579528, &unk_100406768, &unk_100575BF0);
      *(v38 + 8) = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    v46 = v58;
    if (v45 >= v44 >> 1)
    {
      v42 = sub_100021C2C((v44 > 1), v45 + 1, 1, v42, &qword_100579528, &unk_100406768, &unk_100575BF0);
      *(v38 + 8) = v42;
    }

    v42[2] = v45 + 1;
    v47 = &v42[2 * v45];
    v47[4] = &unk_100406558;
    v47[5] = v41;
    os_unfair_lock_unlock(v38);

    (*(v31 + 8))(v46, v30);
  }

  sub_100004590(v61);
  return sub_100004590(v62);
}

uint64_t sub_10023EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100010430(a3, v22 - v9, &qword_100578010);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009104(v10, &qword_100578010);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100009104(a3, &qword_100578010);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009104(a3, &qword_100578010);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10023F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_100010430(a3, v24 - v11, &qword_100578010);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100009104(v12, &qword_100578010);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_100168088(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100009104(a3, &qword_100578010);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009104(a3, &qword_100578010);
  sub_100168088(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void CarPlayPageLoadCoordinator.loadImage(for:into:)(uint64_t a1, void *a2)
{
  v4 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ArtworkModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010430(a1, v6, &unk_100578C10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100009104(v6, &unk_100578C10);
    [objc_opt_self() maximumImageSize];
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() imageNamed:v11];

    [a2 setImage:v12];
  }

  else
  {
    sub_1001FBAE0(v6, v10);
    CarPlayPageLoadCoordinator.loadImage(for:into:)(v10, a2);
    sub_1001A0664(v10);
  }
}

Swift::Void __swiftcall CarPlayPageLoadCoordinator.loadImages(for:into:)(Swift::OpaquePointer a1, CPListImageRowItem into)
{
  isa = into.super.isa;
  v3 = type metadata accessor for ArtworkModel();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100579298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v39 - v7);
  v9 = sub_100168088(&qword_1005792A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v39 - v13);
  v15 = sub_10023E394(CPMaximumNumberOfGridImages, a1._rawValue, &type metadata accessor for ArtworkModel);
  v40 = v17;
  v46 = v18 >> 1;
  v19 = (v18 >> 1) - v16;
  if (__OFSUB__(v18 >> 1, v16))
  {
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v16;
  v45 = v5;
  type metadata accessor for CarPlayPageLoadCoordinator.ListImageRowLoadState();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v23 = sub_100244830(0, v19);
  isa = v22;
  *(v22 + 3) = v23;
  v24 = (v6 + 56);
  v25 = v21;
  v26 = (v6 + 48);
  v39 = v20;
  swift_unknownObjectRetain();
  v27 = 0;
  v42 = v25;
  while (1)
  {
    if (v25 == v46)
    {
      v28 = 1;
      v25 = v46;
      v29 = v45;
      goto LABEL_9;
    }

    v29 = v45;
    if (v25 < v42 || v25 >= v46)
    {
      break;
    }

    v30 = v40 + *(v41 + 72) * v25;
    v31 = *(v45 + 48);
    *v8 = v27;
    sub_1002445E8(v30, v8 + v31);
    if (__OFADD__(v27++, 1))
    {
      goto LABEL_13;
    }

    ++v25;
    sub_100010498(v8, v11, &qword_100579298);
    v28 = 0;
LABEL_9:
    (*v24)(v11, v28, 1, v29);
    sub_100010498(v11, v14, &qword_1005792A0);
    if ((*v26)(v14, 1, v29) == 1)
    {

      swift_unknownObjectRelease_n();
      return;
    }

    v33 = v11;
    v34 = v8;
    v35 = *v14;
    v36 = v14 + *(v29 + 48);
    v37 = v43;
    sub_1001FBAE0(v36, v43);
    v38 = v35;
    v8 = v34;
    v11 = v33;
    sub_100241F24(v37, v38, isa);
    sub_1001A0664(v37);
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t CarPlayPageLoadCoordinator.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_1002442DC(a1);

  return v1;
}

void _s8Podcasts26CarPlayPageLoadCoordinatorC7addTaskyyyyYaYAcF(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations));
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a1;
  v8[5] = a2;
  v9 = *(v5 + 8);
  swift_unknownObjectRetain();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100021C2C(0, v9[2] + 1, 1, v9, &qword_100579528, &unk_100406768, &unk_100575BF0);
    *(v5 + 8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100021C2C((v11 > 1), v12 + 1, 1, v9, &qword_100579528, &unk_100406768, &unk_100575BF0);
    *(v5 + 8) = v9;
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = &unk_100406578;
  v13[5] = v8;

  os_unfair_lock_unlock(v5);
}

uint64_t sub_10023FB5C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001C51C;

  return v7();
}

uint64_t sub_10023FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_10001C51C;

  return sub_100244CD4(a4, a5);
}

uint64_t sub_10023FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  sub_100168088(&qword_100578010);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10023FDA0, 0, 0);
}

void sub_10023FDA0()
{
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v23 = **(v0 + 72);
      v2 = type metadata accessor for TaskPriority();
      v3 = 0;
      v4 = *(v2 - 8);
      v22 = *(v4 + 56);
      v20 = v2;
      v21 = (v4 + 48);
      v19 = (v4 + 8);
      do
      {
        v24 = v3;
        v9 = *(v0 + 104);
        v8 = *(v0 + 112);
        v11 = *(v0 + 88);
        v10 = *(v0 + 96);
        v22(v8, 1, 1, v2);
        v12 = swift_allocObject();
        v12[2] = 0;
        v13 = v12 + 2;
        v12[3] = 0;
        v12[4] = v11;
        v12[5] = v10;
        sub_100010430(v8, v9, &qword_100578010);
        LODWORD(v9) = (*v21)(v9, 1, v2);

        v14 = *(v0 + 104);
        if (v9 == 1)
        {
          sub_100009104(*(v0 + 104), &qword_100578010);
          if (!*v13)
          {
            goto LABEL_10;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*v19)(v14, v2);
          if (!*v13)
          {
LABEL_10:
            v15 = 0;
            v17 = 0;
            goto LABEL_11;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = dispatch thunk of Actor.unownedExecutor.getter();
        v17 = v16;
        swift_unknownObjectRelease();
LABEL_11:

        if (v17 | v15)
        {
          v5 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v15;
          *(v0 + 40) = v17;
        }

        else
        {
          v5 = 0;
        }

        v3 = v24 + 1;
        v6 = *(v0 + 112);
        v7 = *(v0 + 80);
        *(v0 + 48) = 1;
        *(v0 + 56) = v5;
        *(v0 + 64) = v23;
        swift_task_create();

        sub_100009104(v6, &qword_100578010);
        v2 = v20;
      }

      while (v24 + 1 != v7);
    }

    v18 = swift_task_alloc();
    *(v0 + 120) = v18;
    *v18 = v0;
    v18[1] = sub_1002400D0;

    sub_100240710(0, 0);
  }
}

uint64_t sub_1002400D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100240204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100240224, 0, 0);
}

void sub_100240224()
{
  swift_beginAccess();
  v0[7] = 0;
  v1 = v0[5];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = v0[5];
  if (*(v2 + 2))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v5 = *(v2 + 2);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = sub_1003ADB6C(v2);
      v5 = *(v2 + 2);
      if (v5)
      {
LABEL_4:
        v6 = v0[5];
        v7 = v0[6];
        v8 = v5 - 1;
        v9 = *&v2[8 * v8 + 32];
        *(v2 + 2) = v8;
        *(v6 + 24) = v2;
        os_unfair_lock_unlock((v6 + 16));
        if ((v9 & 0x8000000000000000) == 0)
        {
          v10 = *(v7 + 16);
          if (v9 < *(v10 + 16))
          {
            v11 = v10 + 16 * v9;
            v12 = *(v11 + 32);
            v0[8] = *(v11 + 40);

            v15 = (v12 + *v12);
            v13 = swift_task_alloc();
            v0[9] = v13;
            *v13 = v0;
            v13[1] = sub_10024040C;

            v15();
            return;
          }

LABEL_15:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  os_unfair_lock_unlock((v3 + 16));
  v14 = v0[1];

  v14();
}

uint64_t sub_10024040C()
{

  return _swift_task_switch(sub_100240524, 0, 0);
}

void sub_100240524()
{
  v1 = v0[7];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[1];
LABEL_3:

    v2();
    return;
  }

  v0[7] = 0;
  v3 = v0[5];
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  v5 = v0[5];
  if (!*(v4 + 2))
  {
    os_unfair_lock_unlock((v5 + 16));
    v2 = v0[1];
    goto LABEL_3;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v4 + 2);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_1003ADB6C(v4);
  v7 = *(v4 + 2);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
  v8 = v0[5];
  v9 = v0[6];
  v10 = v7 - 1;
  v11 = *&v4[8 * v10 + 32];
  *(v4 + 2) = v10;
  *(v8 + 24) = v4;
  os_unfair_lock_unlock((v8 + 16));
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(v9 + 16);
  if (v11 >= *(v12 + 16))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v13 = v12 + 16 * v11;
  v14 = *(v13 + 32);
  v0[8] = *(v13 + 40);

  v16 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_10024040C;

  v16();
}

uint64_t sub_100240710(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1002407A4, v4, v6);
}

uint64_t sub_1002407A4()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_100168088(&qword_100575C50);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = sub_100168088(&qword_100579540);
    *v3 = v0;
    v3[1] = sub_1002408DC;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1002408DC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100240B28;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1002409F8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002409F8()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_100168088(&qword_100579540);
  *v4 = v0;
  v4[1] = sub_1002408DC;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 96, v7, v6, v5);
}

uint64_t sub_100240B28()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = sub_100168088(&qword_100579540);
    *v4 = v0;
    v4[1] = sub_1002408DC;
    v6 = v0[3];
    v7 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 12, v7, v6, v5);
  }
}

uint64_t CarPlayPageLoadCoordinator.deinit()
{

  sub_100004590(v0 + 24);
  sub_100004590(v0 + 72);
  v1 = OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_preparedArtworkCache;
  v2 = sub_100168088(&qword_100579290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations + 8, &qword_1005792A8);
  return v0;
}

uint64_t CarPlayPageLoadCoordinator.__deallocating_deinit()
{

  sub_100004590(v0 + 24);
  sub_100004590(v0 + 72);
  v1 = OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_preparedArtworkCache;
  v2 = sub_100168088(&qword_100579290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations + 8, &qword_1005792A8);

  return swift_deallocClassInstance();
}

id CarPlayPageLoadCoordinator.placeholderImage(for:with:)(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 == 255)
  {
    v10 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() imageNamed:v10];
  }

  else
  {
    v2 = *(a1 + 56);
    sub_1002448C4(v2, v1);
    static CGSize.* infix(_:_:)();
    v4 = v3;
    v6 = v5;
    v7 = Color.color.getter();
    v8 = objc_opt_self();
    v9 = [v8 imageWithSolidColor:v7 atSize:{v4, v6}];

    if (v9)
    {
      sub_1002448D8(v2, v1);
    }

    else
    {
      v11 = String._bridgeToObjectiveC()();
      v9 = [v8 imageNamed:v11];
      sub_1002448D8(v2, v1);
    }
  }

  return v9;
}

uint64_t sub_10024101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v7 = type metadata accessor for CancellationError();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[23] = v10;
  v6[24] = v9;

  return _swift_task_switch(sub_100241194, v10, v9);
}

uint64_t sub_100241194()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[11];

    v3 = v2[3];
    v4 = v2[4];
    sub_1000044A0(v2, v3);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_1002413E4;
    v6 = v0[12];

    return ImageProvider.load(request:)(v6, v3, v4);
  }

  else
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Skipping artwork load for deallocated list item.", v9, 2u);
    }

    v10 = v0[20];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[10];

    (*(v12 + 8))(v10, v11);
    sub_1000044A0(v13, v13[3]);
    dispatch thunk of TraceInterval.end(with:)();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1002413E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);
  if (v1)
  {
    v7 = sub_100241738;
  }

  else
  {
    v7 = sub_100241528;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100241528()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 208);
    sub_1000044A0(*(v0 + 80), *(*(v0 + 80) + 24));
    dispatch thunk of TraceInterval.end(with:)();
    [v2 setImage:v3];
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unused artwork load for deallocated list item.", v6, 2u);
    }

    v3 = *(v0 + 208);
    v7 = *(v0 + 168);
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = *(v0 + 80);

    (*(v9 + 8))(v7, v8);
    sub_1000044A0(v10, v10[3]);
    dispatch thunk of TraceInterval.end(with:)();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100241738()
{
  v1 = v0[27];

  v0[8] = v1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  if (swift_dynamicCast())
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Artwork load cancelled.", v4, 2u);
    }

    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[10];

    (*(v7 + 8))(v5, v6);
    sub_1000044A0(v11, v11[3]);
    dispatch thunk of TraceInterval.end(with:)();
    (*(v9 + 8))(v8, v10);
  }

  else
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to load artwork: %@", v14, 0xCu);
      sub_100009104(v15, &qword_100575B20);
    }

    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[16];
    v20 = v0[10];

    (*(v18 + 8))(v17, v19);
    sub_1000044A0(v20, v20[3]);
    dispatch thunk of TraceInterval.end(with:)();
  }

  v21 = v0[1];

  return v21();
}

void sub_100241AC0(void *a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = *(v3 + 24);
    if (v13[2] <= a2)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }
    }

    v13 = sub_1003ADB58();
    *(v3 + 24) = v13;
LABEL_4:
    if (v13[2] <= a2)
    {
      __break(1u);
    }

    else
    {
      v15 = &v13[a2];
      v16 = *(v15 + 4);
      *(v15 + 4) = a1;
      *(v3 + 24) = v13;
      v13 = a1;
      swift_endAccess();

      v8 = &stru_100555000;
      v17 = [v12 elements];
      sub_100009F1C(0, &qword_100579500);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v18 >> 62))
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

        goto LABEL_7;
      }
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_7:
    if (v19 > a2)
    {
      sub_100010430(a3, v28, &qword_1005794F8);
      if (v29)
      {
        sub_1000044A0(v28, v29);
        dispatch thunk of TraceInterval.end(with:)();
        sub_100004590(v28);
      }

      else
      {
        sub_100009104(v28, &qword_1005794F8);
      }

      v23 = [v12 v8[241].name];
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v24 & 0xC000000000000001) == 0)
      {
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
        {
          __break(1u);
          return;
        }

        v25 = *(v24 + 8 * a2 + 32);
        goto LABEL_18;
      }

LABEL_27:
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
      v26 = v25;

      [v26 setImage:v13];

      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unused artwork load for deallocated list item.", v22, 2u);
  }

  (v8->attr)(v10, v7);
  sub_100010430(a3, v28, &qword_1005794F8);
  if (v29)
  {
    sub_1000044A0(v28, v29);
    dispatch thunk of TraceInterval.end(with:)();
    sub_100004590(v28);
  }

  else
  {
    sub_100009104(v28, &qword_1005794F8);
  }
}

uint64_t sub_100241EE4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100241F24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v60 = a2;
  v58 = type metadata accessor for PreparedArtworkRequest();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_100168088(&unk_100582DE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for ArtworkModel();
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ArtworkRequest();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v54 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v16;
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.artwork.getter();
  static os_log_type_t.info.getter();
  SignpostAndLogTrace(domain:level:)();
  (*(v21 + 8))(v23, v20);
  v55 = a1;
  sub_1002445E8(a1, v15);
  sub_1000044A0((v4 + 24), *(v4 + 48));
  v52 = objc_opt_self();
  [v52 maximumImageSize];
  dispatch thunk of ArtworkSizeBucketingStrategy.bucketedSize(for:)();
  v24 = type metadata accessor for CropCode();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  sub_100004428(v67, v66);
  ArtworkRequest.init(model:targetSize:contentMode:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:trace:)();
  sub_1000044A0(v67, v67[3]);
  v25 = v19;
  ArtworkRequest.remoteUrl.getter();
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    sub_100009104(v9, &qword_100574040);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v27 + 8))(v9, v26);
  }

  dispatch thunk of Trace.start(interval:context:)();

  sub_100168088(&qword_100579290);
  CacheDomain.memory.getter();
  v28 = v56;
  ArtworkRequest.prepared.getter();
  InMemoryAssetCache.asset(at:)();

  (*(v57 + 8))(v28, v58);
  v29 = *&v64[0];
  v30 = v60;
  v31 = v59;
  if (*&v64[0])
  {
    sub_100004428(v66, v64);
    sub_100241AC0(v29, v30, v64);

    sub_100009104(v64, &qword_1005794F8);
    sub_100004590(v66);
    (*(v61 + 8))(v25, v62);
  }

  else
  {
    [v52 maximumImageSize];
    v32 = CarPlayPageLoadCoordinator.placeholderImage(for:with:)(v55);
    v33 = v61;
    if (v32)
    {
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      v34 = v32;
      sub_100241AC0(v32, v30, v64);

      sub_100009104(v64, &qword_1005794F8);
    }

    sub_100004428(v66, v64);
    sub_100004428(v4 + 72, v63);
    v35 = *(v33 + 16);
    v36 = v54;
    v58 = v25;
    v37 = v62;
    v35(v54, v25, v62);
    type metadata accessor for MainActor();

    v38 = static MainActor.shared.getter();
    v39 = (*(v33 + 80) + 120) & ~*(v33 + 80);
    v40 = (v53 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 2) = v38;
    *(v41 + 3) = &protocol witness table for MainActor;
    *(v41 + 4) = v31;
    sub_1000109E4(v64, (v41 + 40));
    sub_1000109E4(v63, (v41 + 80));
    (*(v33 + 32))(&v41[v39], v36, v37);
    *&v41[v40] = v30;
    v42 = v4 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations;
    os_unfair_lock_lock((v4 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations));
    v43 = *(v41 + 2);
    v44 = *(v41 + 3);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v44;
    v45[4] = &unk_100406730;
    v45[5] = v41;
    v46 = *(v42 + 8);
    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 8) = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = sub_100021C2C(0, v46[2] + 1, 1, v46, &qword_100579528, &unk_100406768, &unk_100575BF0);
      *(v42 + 8) = v46;
    }

    v49 = v46[2];
    v48 = v46[3];
    if (v49 >= v48 >> 1)
    {
      v46 = sub_100021C2C((v48 > 1), v49 + 1, 1, v46, &qword_100579528, &unk_100406768, &unk_100575BF0);
      *(v42 + 8) = v46;
    }

    v46[2] = v49 + 1;
    v50 = &v46[2 * v49];
    v50[4] = &unk_100406738;
    v50[5] = v45;
    os_unfair_lock_unlock(v42);

    sub_100004590(v66);
    (*(v33 + 8))(v58, v62);
  }

  return sub_100004590(v67);
}

uint64_t sub_1002427E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a3;
  v8 = type metadata accessor for CancellationError();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[21] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[22] = v11;
  v7[23] = v10;

  return _swift_task_switch(sub_100242958, v11, v10);
}

uint64_t sub_100242958()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[10];

    v3 = v2[3];
    v4 = v2[4];
    sub_1000044A0(v2, v3);
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_100242B88;
    v6 = v0[11];

    return ImageProvider.load(request:)(v6, v3, v4);
  }

  else
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Skipping artwork load for deallocated list item.", v9, 2u);
    }

    v10 = v0[20];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[9];

    (*(v12 + 8))(v10, v11);
    sub_1000044A0(v13, v13[3]);
    dispatch thunk of TraceInterval.end(with:)();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100242B88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_100242D8C;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_100242CB0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100242CB0()
{
  v1 = v0[26];
  v2 = v0[12];
  v3 = v0[9];

  sub_100004428(v3, (v0 + 2));
  v4 = v1;
  sub_100241AC0(v4, v2, (v0 + 2));

  sub_100009104((v0 + 2), &qword_1005794F8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100242D8C()
{
  v1 = v0[25];

  v0[7] = v1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  if (swift_dynamicCast())
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Artwork load cancelled.", v4, 2u);
    }

    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[9];

    (*(v7 + 8))(v5, v6);
    sub_1000044A0(v11, v11[3]);
    dispatch thunk of TraceInterval.end(with:)();
    (*(v9 + 8))(v8, v10);
  }

  else
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to load artwork: %@", v14, 0xCu);
      sub_100009104(v15, &qword_100575B20);
    }

    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[16];
    v20 = v0[9];

    (*(v18 + 8))(v17, v19);
    sub_1000044A0(v20, v20[3]);
    dispatch thunk of TraceInterval.end(with:)();
  }

  v21 = v0[1];

  return v21();
}

char *sub_100243134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_100574690);
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

void *sub_100243268(void *result, int64_t a2, char a3, void *a4)
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
    sub_100168088(&unk_100573FC0);
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
    sub_100168088(&unk_100574640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002433B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&unk_10057A0B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100243520(void *result, int64_t a2, char a3, void *a4)
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
    sub_100168088(&qword_1005748D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_1005748E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100243690(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_100574840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002437D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100168088(&qword_1005794C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_1005794D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100243944(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100168088(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_100243A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_1005794B8);
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

char *sub_100243C68(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100168088(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_100243E6C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100168088(&qword_1005794D8);
  v10 = *(sub_100168088(&qword_1005794E0) - 8);
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
  v15 = *(sub_100168088(&qword_1005794E0) - 8);
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

void *sub_1002440D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100168088(&qword_100574690);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100244158(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100168088(&qword_100574808);
  v4 = *(type metadata accessor for MediaLibraryPid() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100244254(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100168088(&unk_100574680);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1002442DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100579290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AssetCaches();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  sub_100168088(&unk_10057E7E0);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v15, v2 + 24);
  BaseObjectGraph.inject<A>(_:)();
  *(v2 + 64) = *&v15[0];
  sub_100168088(&qword_100579548);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v15, v2 + 72);
  BaseObjectGraph.inject<A>(_:)();
  AssetCaches.preparedArtwork.getter();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_preparedArtworkCache, v7, v4);
  v12 = v2 + OBJC_IVAR____TtC8Podcasts26CarPlayPageLoadCoordinator_operations;
  *v12 = 0;
  *(v12 + 8) = _swiftEmptyArrayStorage;
  return v2;
}

uint64_t sub_100244520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C51C;

  return sub_10023FC44(a1, v4, v5, v6, v7);
}

uint64_t sub_1002445E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024464C()
{
  v2 = *(type metadata accessor for ArtworkRequest() - 8);
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10021A620;

  return sub_10024101C(v4, v5, v6, (v0 + 5), (v0 + 10), v0 + v3);
}

uint64_t sub_100244740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10023FB5C(a1, v4, v5, v6);
}

void *sub_100244830(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100168088(&qword_100579508);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v5;
  }

  return result;
}

id sub_1002448C4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_1002448D8(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1001C1158(a1, a2);
  }
}

uint64_t type metadata accessor for CarPlayPageLoadCoordinator()
{
  result = qword_1005792D8;
  if (!qword_1005792D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100244940()
{
  sub_100244A00();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100244A00()
{
  if (!qword_1005792E8)
  {
    type metadata accessor for PreparedArtworkRequest();
    sub_100244B2C(&qword_1005792F0);
    sub_100244B2C(&qword_1005792F8);
    sub_100024384(&qword_100579300, &qword_100578C08);
    sub_100024384(&unk_100579308, &qword_100575278);
    v0 = type metadata accessor for CacheDomain();
    if (!v1)
    {
      atomic_store(v0, &qword_1005792E8);
    }
  }
}

uint64_t sub_100244B2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreparedArtworkRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100244B70()
{
  v2 = *(type metadata accessor for ArtworkRequest() - 8);
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001C51C;

  return sub_1002427E8(v4, v5, v6, (v0 + 5), (v0 + 10), v0 + v3, v7);
}

uint64_t sub_100244C94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100244CD4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_allocObject();
  v2[4] = v4;
  *(v4 + 16) = a1;

  return _swift_task_switch(sub_100244D58, 0, 0);
}

uint64_t sub_100244D58()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  v5 = sub_1002751A8(0, *(v3 + 16));
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v1;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_100244E7C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100244E7C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100245004;
  }

  else
  {

    v2 = sub_100244F98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100244F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100245004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024507C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10021A620;

  return sub_10023FCF4(a1, a2, v6, v7, v8);
}

uint64_t sub_100245140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_100240204(a1, v4, v5, v7, v6);
}

id sub_100245204()
{
  v1 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v1 - 8);
  v82 = &v74 - v2;
  v3 = type metadata accessor for ArtworkModel();
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v77 = &v74 - v7;
  v8 = type metadata accessor for URL();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v76 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ShowOffer();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PodcastContextActionDataType(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v74 - v16;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v21 = sub_100168088(&qword_100579698);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v74 - v23;
  v25 = *(v0 + 16);
  if (!v25)
  {
    (*(v12 + 56))(v24, 1, 1, v11, v22);
    sub_100009104(v24, &qword_100579698);
    return 0;
  }

  v74 = v5;
  v75 = v20;
  v26 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v25 + v26, v24);
  (*(v12 + 56))(v24, 0, 1, v11);
  sub_100009104(v24, &qword_100579698);
  v27 = *(v0 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v27 + v28, v17);
  v29 = v75;
  sub_100246EC4(v17, v75, type metadata accessor for PodcastContextActionDataType);
  sub_1001A1560(v29, v14);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100246F2C(v14, type metadata accessor for PodcastContextActionDataType.Kind);
    v48 = sub_100215D14();
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() shareViewControllerWithPodcast:v48];

      sub_100246F2C(v29, type metadata accessor for PodcastContextActionDataType);
      result = v50;
      if (v50)
      {
        return result;
      }
    }

    else
    {
      sub_100246F2C(v29, type metadata accessor for PodcastContextActionDataType);
    }

    return 0;
  }

  v30 = v83;
  (*(v85 + 32))(v84, v14, v83);
  sub_100168088(&qword_1005796A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v32;
  v33 = ShowOffer.title.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v33;
  *(inited + 56) = v34;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v35;
  v36 = ShowOffer.provider.getter();
  *(inited + 120) = &type metadata for String;
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v37)
  {
    v39 = v37;
  }

  *(inited + 96) = v38;
  *(inited + 104) = v39;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v40;
  *&v88 = ShowOffer.adamId.getter();
  sub_1000366D8();
  v41 = BinaryInteger.description.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v41;
  *(inited + 152) = v42;
  v43 = sub_10016A444(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100581D00);
  swift_arrayDestroy();
  v44 = v77;
  ShowOffer.storeUrl.getter();
  v46 = v78;
  v45 = v79;
  if ((*(v78 + 48))(v44, 1, v79) == 1)
  {
    sub_100009104(v44, &qword_100574040);
  }

  else
  {
    v51 = v76;
    (*(v46 + 32))(v76, v44, v45);
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    v55 = URL.absoluteString.getter();
    v89 = &type metadata for String;
    *&v88 = v55;
    *(&v88 + 1) = v56;
    sub_10016B7CC(&v88, v87);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v43;
    sub_10025E908(v87, v52, v54, isUniquelyReferenced_nonNull_native);

    v58 = v51;
    v30 = v83;
    (*(v46 + 8))(v58, v45);
    v43 = v86;
  }

  v59 = v74;
  v60 = v82;
  v61 = v84;
  ShowOffer.artwork.getter();
  (*(v85 + 8))(v61, v30);
  if ((*(v80 + 48))(v60, 1, v81) == 1)
  {
    sub_100009104(v60, &unk_100578C10);
  }

  else
  {
    sub_100246EC4(v60, v59, &type metadata accessor for ArtworkModel);
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
    sub_100168088(&qword_100574EC8);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_100400790;
    *(v65 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = *v59;
    v66 = v59[1];
    *(v65 + 40) = v68;
    *(v65 + 48) = v67;
    *(v65 + 56) = v66;

    v69 = sub_10016A574(v65);
    swift_setDeallocating();
    sub_100009104(v65 + 32, &qword_100574ED0);
    v89 = sub_100168088(&qword_1005796A8);
    *&v88 = v69;
    sub_10016B7CC(&v88, v87);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v43;
    sub_10025E908(v87, v62, v64, v70);

    sub_100246F2C(v59, &type metadata accessor for ArtworkModel);
    v43 = v86;
  }

  v71 = objc_opt_self();
  sub_10025810C(v43);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = [v71 shareViewControllerWithPodcastDetails:isa];

  sub_100246F2C(v29, type metadata accessor for PodcastContextActionDataType);
  return v73;
}

id sub_100245B78()
{
  v1 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v1 - 8);
  v92 = &v83 - v2;
  v3 = type metadata accessor for ArtworkModel();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v86 = &v83 - v7;
  v89 = type metadata accessor for URL();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ShowOffer();
  v88 = *(v93 - 8);
  __chkstk_darwin(v93);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PodcastContextActionDataType(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  v20 = sub_100168088(&qword_100579698);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v83 - v22;
  v24 = *(v0 + 16);
  if (!v24)
  {
    (*(v11 + 56))(v23, 1, 1, v10, v21);
    sub_100009104(v23, &qword_100579698);
    return 0;
  }

  v83 = v5;
  v84 = v19;
  v25 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v24 + v25, v23);
  (*(v11 + 56))(v23, 0, 1, v10);
  sub_100009104(v23, &qword_100579698);
  v26 = *(v0 + 16);
  if (!v26)
  {
    return 0;
  }

  v27 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v26 + v27, v16);
  v28 = v84;
  sub_100246EC4(v16, v84, type metadata accessor for PodcastContextActionDataType);
  sub_1001A1560(v28, v13);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v88;
    v30 = v13;
    v31 = v93;
    (*(v88 + 32))(v94, v30, v93);
    sub_100168088(&qword_1005796A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007E0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v33;
    v34 = ShowOffer.title.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v34;
    *(inited + 56) = v35;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v36;
    v37 = ShowOffer.provider.getter();
    *(inited + 120) = &type metadata for String;
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    v40 = 0xE000000000000000;
    if (v38)
    {
      v40 = v38;
    }

    *(inited + 96) = v39;
    *(inited + 104) = v40;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v41;
    *&v97 = ShowOffer.adamId.getter();
    sub_1000366D8();
    v42 = BinaryInteger.description.getter();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v42;
    *(inited + 152) = v43;
    v44 = sub_10016A444(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100581D00);
    swift_arrayDestroy();
    v45 = v86;
    ShowOffer.storeUrl.getter();
    v46 = v87;
    v47 = v89;
    if ((*(v87 + 48))(v45, 1, v89) == 1)
    {
      sub_100009104(v45, &qword_100574040);
    }

    else
    {
      v53 = v28;
      v54 = v44;
      v55 = v85;
      (*(v46 + 32))(v85, v45, v47);
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      v59 = URL.absoluteString.getter();
      v98 = &type metadata for String;
      *&v97 = v59;
      *(&v97 + 1) = v60;
      sub_10016B7CC(&v97, v96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v54;
      v28 = v53;
      v31 = v93;
      sub_10025E908(v96, v56, v58, isUniquelyReferenced_nonNull_native);

      (*(v46 + 8))(v55, v47);
      v44 = v95;
    }

    v62 = v83;
    v63 = v92;
    v64 = v94;
    ShowOffer.artwork.getter();
    (*(v29 + 8))(v64, v31);
    if ((*(v90 + 48))(v63, 1, v91) == 1)
    {
      sub_100009104(v63, &unk_100578C10);
    }

    else
    {
      sub_100246EC4(v63, v62, &type metadata accessor for ArtworkModel);
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
      sub_100168088(&qword_100574EC8);
      v68 = swift_initStackObject();
      *(v68 + 16) = xmmword_100400790;
      *(v68 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = *v62;
      v69 = v62[1];
      *(v68 + 40) = v71;
      *(v68 + 48) = v70;
      *(v68 + 56) = v69;

      v72 = sub_10016A574(v68);
      swift_setDeallocating();
      sub_100009104(v68 + 32, &qword_100574ED0);
      v98 = sub_100168088(&qword_1005796A8);
      *&v97 = v72;
      sub_10016B7CC(&v97, v96);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v44;
      sub_10025E908(v96, v65, v67, v73);

      sub_100246F2C(v62, &type metadata accessor for ArtworkModel);
      v44 = v95;
    }

    v74 = objc_opt_self();
    sub_10025810C(v44);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v76 = [v74 shareActivityItemsWithPodcastDetails:isa];

    if (v76)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    v77 = objc_opt_self();
    v78 = Array._bridgeToObjectiveC()().super.isa;

    v79 = [v77 mt_configurationWithActivityItems:v78];

    sub_100246F2C(v28, type metadata accessor for PodcastContextActionDataType);
    return v79;
  }

  else
  {
    sub_100246F2C(v13, type metadata accessor for PodcastContextActionDataType.Kind);
    v49 = sub_100215D14();
    if (v49)
    {
      v50 = v49;
      v51 = [objc_opt_self() shareActivityItemsWithPodcast:v49];
      if (v51)
      {
        v52 = v51;
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v80 = objc_opt_self();
      v81 = Array._bridgeToObjectiveC()().super.isa;

      v82 = [v80 mt_configurationWithActivityItems:v81];

      sub_100246F2C(v28, type metadata accessor for PodcastContextActionDataType);
      return v82;
    }

    else
    {
      sub_100246F2C(v28, type metadata accessor for PodcastContextActionDataType);
      return 0;
    }
  }
}

id sub_1002465F4()
{
  v1 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = sub_100245204();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (!*(v0 + 24))
    {

      v8 = type metadata accessor for PresentationSource();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      return sub_100009104(v3, &unk_10057BB90);
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v6 = type metadata accessor for PresentationSource();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {

      return sub_100009104(v3, &unk_10057BB90);
    }

    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

    return (*(v7 + 8))(v3, v6);
  }

  return result;
}

uint64_t sub_1002467B4()
{

  v1 = OBJC_IVAR____TtC8Podcasts25SharePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharePodcastContextAction()
{
  result = qword_100579580;
  if (!qword_100579580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002468B4()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_100246958()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x6572616853;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100246A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts25SharePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100246A84@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.iOSShareSheetPodcast(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_100246B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_100246BC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100246C20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

BOOL sub_100246C80()
{
  v1 = sub_100168088(&qword_100579698);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v4 + v5, v3);
    v6 = type metadata accessor for PodcastContextActionDataType(0);
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  }

  else
  {
    v7 = type metadata accessor for PodcastContextActionDataType(0);
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  }

  sub_100009104(v3, &qword_100579698);
  return v4 != 0;
}

uint64_t sub_100246DC4(uint64_t a1)
{
  result = sub_100246E80(&qword_100579688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100246E3C(uint64_t a1)
{
  result = sub_100246E80(&qword_100579690);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100246E80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharePodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100246EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100246F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100246F8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8);
  if (v1 >= 2)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);

    v8._countAndFlagsBits = 0x5F4E495F4E45504FLL;
    v9._countAndFlagsBits = 0xD000000000000022;
    v9._object = 0x8000000100468280;
    v8._object = 0xEA00000000004025;
    PFLocalizedString(_:comment:)(v8, v9);
    sub_100168088(&unk_100574670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100022C18();
    *(v10 + 32) = v7;
    *(v10 + 40) = v1;
    v11 = static String.localizedStringWithFormat(_:_:)();

    return v11;
  }

  else
  {
    v2 = 0x4E494C5F4E45504FLL;
    v3 = 0x8000000100468250;
    v4 = 0xE90000000000004BLL;
    v5 = 0xD000000000000021;

    return PFLocalizedString(_:comment:)(*&v2, *&v5)._countAndFlagsBits;
  }
}

uint64_t sub_1002470E8()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &aBlock[-1] - v9;
  v11 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_100010430(v0 + v11, v3, &qword_100574040);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100009104(v3, &qword_100574040);
  }

  v13 = *(v5 + 32);
  v13(v10, v3, v4);
  v21 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v5 + 16))(v7, v10, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v13((v18 + v17), v7, v4);
  aBlock[4] = sub_100236184;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002016BC;
  aBlock[3] = &unk_1004E6FE8;
  v19 = _Block_copy(aBlock);

  v20 = v21;
  [v21 openURL:v16 withCompletionHandler:v19];
  _Block_release(v19);

  return (*(v5 + 8))(v10, v4);
}

void sub_1002473E8(char a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    static Logger.links.getter();
    (*(v5 + 16))(v7, a2, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_1002483D0(&qword_100573688, &type metadata accessor for URL);
      v20 = v13;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_1000153E0(v15, v17, &v22);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v20, "Unable to open link %{private,mask.hash}s.", v14, 0x16u);
      sub_100004590(v21);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1002476CC()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = v20 - v2;
  result = swift_beginAccess();
  if (*(v0 + 16))
  {
    type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v5 = result;
      v6 = qword_100593318;
      v7 = type metadata accessor for URL();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v5 + v6, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      v9 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
      swift_beginAccess();

      sub_1001FDDA8(v3, v0 + v9);
      swift_endAccess();
      v10 = objc_autoreleasePoolPush();
      sub_10024803C(v5, v20);
      objc_autoreleasePoolPop(v10);
      if (v20[0])
      {
        v11 = v20[0];
        if (([v11 isWebBrowser] & 1) == 0)
        {
          v14 = [v11 localizedName];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v15;

          goto LABEL_9;
        }
      }

      else
      {
      }

      v12 = 0;
      v13 = 0;
LABEL_9:
      v16 = (v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);
      v17 = *(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);
      v18 = *(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8);
      *v16 = v12;
      v16[1] = v13;
      return sub_100248418(v17, v18);
    }
  }

  return result;
}

uint64_t sub_100247918()
{

  v1 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType, &qword_100575870);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link, &qword_100574040);
  sub_100248418(*(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination), *(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenReferenceLinkContextAction()
{
  result = qword_1005796F0;
  if (!qword_1005796F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100247A74()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_100247BD4(319, &qword_10057FEF0, &type metadata accessor for ContextActionType);
    if (v1 <= 0x3F)
    {
      sub_100247BD4(319, &qword_10057C350, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100247BD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100247C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100247C78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100247CCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100247CE4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100247D28()
{
  if (*(v0 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8) >= 2uLL)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x697261666173;
  }
}

uint64_t sub_100247D70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100247E28(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return sub_1002476CC();
}

BOOL sub_100247E90()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2];
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_100010430(v0 + v4, v3, &qword_100574040);
  v5 = type metadata accessor for URL();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100009104(v3, &qword_100574040);
  return v6;
}

uint64_t sub_100247FE4(uint64_t a1)
{
  result = sub_1002483D0(&qword_1005797A8, type metadata accessor for OpenReferenceLinkContextAction);
  *(a1 + 8) = result;
  return result;
}

id sub_10024803C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + qword_1005932E0 + 8);
  if (v9)
  {
    v10 = *(a1 + qword_1005932E0);
    v11 = objc_allocWithZone(LSApplicationRecord);

    result = sub_1002482F4(v10, v9, 0);
    if (v2)
    {
      v23 = a2;
      static Logger.links.getter();

      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v21 = v14;
        v16 = v15;
        v22 = swift_slowAlloc();
        v24 = v22;
        *v16 = 141558531;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        *(v16 + 14) = sub_1000153E0(v10, v9, &v24);
        *(v16 + 22) = 2082;
        swift_getErrorValue();
        v17 = Error.localizedDescription.getter();
        v19 = sub_1000153E0(v17, v18, &v24);

        *(v16 + 24) = v19;
        _os_log_impl(&_mh_execute_header, v13, v21, "Unable to create record for %{private,mask.hash}s: %{public}s", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v6 + 8))(v8, v5);
      result = 0;
      a2 = v23;
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

id sub_1002482F4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1002483D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100248418(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10024847C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1005797B0;
  swift_beginAccess();
  return sub_100248AF0(v1 + v3, a1);
}

uint64_t sub_1002484D4(uint64_t a1)
{
  v3 = qword_1005797B0;
  swift_beginAccess();
  sub_100248A80(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1002485AC()
{
  result = [*(v0 + qword_1005797B8) numberOfObjects];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

void sub_1002485E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100248B60();
}

uint64_t sub_100248644(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v12 = sub_100168088(&qword_100576038);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v31 - v16;
  if (a4)
  {
    v18 = a3;
    v19 = a5;
    v20 = a7;
    v21 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (a5)
    {
LABEL_3:
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = type metadata accessor for IndexPath();
      (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v31, 0, sizeof(v31));
    v23 = a3;
    v24 = a5;
    v25 = a7;
    v26 = a1;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v27 = type metadata accessor for IndexPath();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
LABEL_6:
  if (a7)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = type metadata accessor for IndexPath();
  (*(*(v29 - 8) + 56))(v14, v28, 1, v29);

  sub_100009104(v14, &qword_100576038);
  sub_100009104(v17, &qword_100576038);
  return sub_100009104(v31, &unk_1005783D0);
}

id sub_1002488AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseResultsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100248908(uint64_t a1)
{
  sub_100009104(a1 + qword_1005797B0, &qword_1005798A0);
  v2 = *(a1 + qword_1005797B8);
}

void (*sub_1002489C4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100248534();
  return sub_1001A60EC;
}

uint64_t sub_100248A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_1005798A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100248AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_1005798A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100248B60()
{
  v1 = qword_1005797B0;
  swift_beginAccess();
  sub_100248AF0(v0 + v1, v11);
  if (!v12)
  {
    return sub_100009104(v11, &qword_1005798A0);
  }

  sub_100004428(v11, v8);
  sub_100009104(v11, &qword_1005798A0);
  v2 = v9;
  v3 = v10;
  sub_1000044A0(v8, v9);
  v7[3] = type metadata accessor for BaseResultsController();
  v7[4] = &off_1004E70C8;
  v7[0] = v0;
  v4 = *(v3 + 8);
  v5 = v0;
  v4(v7, v2, v3);
  sub_100004590(v7);
  return sub_100004590(v8);
}

unint64_t sub_100248D08(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_100245200(v19, 0);
      sub_1001CAC04(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1003ADF88(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1003ADF88(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_100248F18()
{
  sub_100009F1C(0, &qword_100575BD8);
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x800000010046B230;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1005933F8 = result;
  return result;
}

uint64_t sub_100249018()
{
  v0 = [objc_opt_self() mainBundle];
  v6._object = 0xED00007364656546;
  v6._countAndFlagsBits = 0x2068736572666552;
  v1._object = 0x800000010046B250;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v6);

  if (_UISolariumEnabled())
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v3];
  }

  sub_100009F1C(0, &qword_100575BD8);
  static MenuSelectors.refreshCommand.getter();
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_100593400 = result;
  return result;
}

uint64_t sub_100249190()
{
  sub_100009F1C(0, &qword_100575BD8);
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010046B2B0;
  v1._object = 0x800000010046B290;
  v4._countAndFlagsBits = 0xD000000000000018;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_100593408 = result;
  return result;
}

uint64_t sub_1002492A4()
{
  sub_100009F1C(0, &qword_100575BD8);
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x544154535F57454ELL;
  v1._object = 0xEB000000004E4F49;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_100593410 = result;
  return result;
}

void sub_1002493A8(void *a1)
{
  v2 = v1;
  sub_100009F1C(0, &qword_100579A60);
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = sub_100251B40;
  *(v7 + 24) = 0;
  v61 = sub_100257DA0;
  v62 = v7;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100249E10;
  *(&v60 + 1) = &unk_1004E7580;
  v8 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuApplication fromChildrenBlock:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_34;
  }

  v58 = v2;
  v10 = objc_opt_self();
  v11 = &selRef_viewAccountEmail;
  if (([v10 isRunningOnDesktop] & 1) == 0 && (_UIEnhancedMainMenuEnabled() & 1) == 0)
  {
    v26 = 0;
    v22 = UIMenuView;
    goto LABEL_14;
  }

  v12 = [a1 menuForIdentifier:UIMenuPreferences];
  v13 = sub_1002528C8(v12);
  if (v13)
  {
    v14 = v13;
    [a1 replaceMenuForIdentifier:UIMenuPreferences withMenu:v13];
  }

  v15 = v10;
  v16 = [a1 menuForIdentifier:UIMenuFile];
  v17 = sub_100252B00(v16);
  if (v17)
  {
    v18 = v17;
    [a1 replaceMenuForIdentifier:UIMenuFile withMenu:v17];
  }

  [a1 removeMenuForIdentifier:UIMenuFormat];
  [a1 removeMenuForIdentifier:UIMenuFind];
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100251CB8;
  *(v19 + 24) = 0;
  v61 = sub_100257E18;
  v62 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100249E10;
  *(&v60 + 1) = &unk_1004E75F8;
  v20 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuEdit fromChildrenBlock:v20];
  _Block_release(v20);
  v21 = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v22 = UIMenuView;
  v23 = [a1 menuForIdentifier:UIMenuView];
  v24 = sub_100253218(v23);
  if (v24)
  {
    v25 = v24;
    [a1 replaceMenuForIdentifier:UIMenuView withMenu:v24];
  }

  v26 = sub_100251CB8;
  v10 = v15;
  v11 = &selRef_viewAccountEmail;
LABEL_14:
  v27 = sub_100253AC8();
  [a1 insertSiblingMenu:v27 afterMenuForIdentifier:v22];
  if (([v10 v11[22]] & 1) == 0 && !_UIEnhancedMainMenuEnabled())
  {
    goto LABEL_25;
  }

  v28 = sub_100255314();
  v29 = [(objc_class *)v27 identifier];
  [a1 insertSiblingMenu:v28 afterMenuForIdentifier:v29];

  v61 = sub_100249E0C;
  v62 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100249E10;
  *(&v60 + 1) = &unk_1004E75A8;
  v30 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuHelp fromChildrenBlock:v30];
  _Block_release(v30);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_35:
    __break(1u);
    return;
  }

  v56 = v26;
  v57 = v10;
  sub_100009F1C(0, &qword_100579A68);
  v31 = objc_opt_self();
  v32 = [v31 mainBundle];
  swift__string._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD00000000000001ALL;
  v33._object = 0x800000010046B170;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, swift__string);

  aBlock = 0u;
  v60 = 0u;
  v35 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v36 = [v31 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v37._object = 0x800000010046B190;
  v37._countAndFlagsBits = 0xD000000000000010;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, swift__stringa);

  aBlock = 0u;
  v60 = 0u;
  v39 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100009F1C(0, &qword_100579A70);
  v40 = static UIMenuIdentifier.privacyInfoIdentifier.getter();
  sub_100168088(&unk_100574680);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100405740;
  *(v41 + 32) = v39;
  *(v41 + 40) = v35;
  preferredElementSize = v41;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v63.value.super.isa = 0;
  v63.is_nil = v40;
  v43.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v42, 0, v63, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  [a1 insertChildMenu:v43.super.super.isa atEndOfMenuForIdentifier:UIMenuHelp];
  v44 = [objc_opt_self() sharedApplication];
  v45 = [v44 delegate];

  if (!v45)
  {
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (v46)
  {
    if ([v46 _hasMainWindow])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100009F1C(0, &qword_100575BD8);
      v47 = [v31 mainBundle];
      swift__stringb._object = 0xE000000000000000;
      v48._countAndFlagsBits = 0xD000000000000019;
      v48._object = 0x800000010046B1B0;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      swift__stringb._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, swift__stringb);

      aBlock = 0u;
      v60 = 0u;
      v50 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1004007B0;
      *(v51 + 32) = v50;
      preferredElementSizea = v51;
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      v64.value.super.isa = 0;
      v64.is_nil = 0;
      isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v64, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, 0).super.super.isa;
      [a1 insertChildMenu:isa atEndOfMenuForIdentifier:UIMenuWindow];
      swift_unknownObjectRelease();
    }

    goto LABEL_23;
  }

  swift_unknownObjectRelease();
LABEL_24:
  v26 = v56;
  v10 = v57;
LABEL_25:
  if ([v10 isRunningOnInternalOS])
  {
    static UserDefaultsKey<>.demoMode.getter();
    NSUserDefaults.subscript.getter();

    if ((aBlock & 1) == 0)
    {
      sub_10025584C(a1);
    }
  }

  if (*(v58 + OBJC_IVAR____TtC8Podcasts17MenuBarController_menuBarPresenter))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of MenuBarPresenter.buildMenuBar(with:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1000112B4(v26);
}

Class sub_100249E10(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009F1C(0, &qword_100575BC0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

unint64_t sub_100249EA8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100009F1C(0, &qword_100575BC0);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100249FB8(uint64_t a1)
{
  sub_100009F1C(0, &qword_100579A68);
  v2 = [objc_opt_self() mainBundle];
  v8._object = 0xE000000000000000;
  v3._object = 0x8000000100468300;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v8);

  v5 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  *(inited + 32) = v5;

  sub_1001C408C(inited);
  return a1;
}

uint64_t sub_10024A234(uint64_t a1, uint64_t a2)
{
  sub_1002526CC(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_10024A26C(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + OBJC_IVAR____TtC8Podcasts17MenuBarController_menuBarPresenter);
  swift_unknownObjectRetain();
  return sub_10024A2C8;
}

uint64_t sub_10024A2C8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1002526CC(v4, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1002526CC(v3, v2);
  }

  return swift_unknownObjectRelease();
}

id sub_10024A330()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10024A654()
{
  v1 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v5 = type metadata accessor for SearchAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  static ActionMetrics.notInstrumented.getter();
  SearchAction.init(origin:term:url:hintIndex:activatesSearchBar:actionMetrics:)();
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  (*(v6 + 32))(v14 + v13, v8, v5);
  v15 = v0;
  LOBYTE(v13) = static Link.Presentation.textFollowsTintColor.getter();
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v13)
  {
    Link.Presentation.init(rawValue:)();
  }

  static ActionMetrics.notInstrumented.getter();
  v16 = type metadata accessor for ClosureAction();
  swift_allocObject();
  v17 = ClosureAction.init(title:presentationStyle:actionMetrics:closure:)();
  sub_100168088(&unk_1005747F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100400790;
  *(v18 + 56) = v16;
  *(v18 + 64) = sub_100252880(&qword_100579A58, &type metadata accessor for ClosureAction);
  *(v18 + 32) = v17;

  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v19 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  memset(v22, 0, sizeof(v22));
  v20 = UIResponder.firstViewInResponderChain.getter();
  sub_1002516A8(v19, v22, v20, v15, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  sub_100009104(v22, &unk_1005783D0);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_10024AAA8(void *a1, uint64_t a2)
{
  v26 = a2;
  v29 = a1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchTime();
  v28 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  sub_100009F1C(0, &qword_1005729D0);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v10 + 8);
  v27(v12, v9);
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = v29;
  (*(v7 + 32))(v17 + v16, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_100257D10;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E7530;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100252880(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  v21 = v30;
  v22 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v25;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v34 + 8))(v21, v22);
  (*(v32 + 8))(v5, v33);
  return (v27)(v15, v28);
}

uint64_t sub_10024AF54(uint64_t a1, uint64_t a2)
{
  memset(v6, 0, sizeof(v6));
  v4 = UIResponder.firstViewInResponderChain.getter();
  sub_100251430(a2, v6, v4, a1, &type metadata accessor for SearchAction, &qword_10057ADC0, &type metadata accessor for SearchAction);

  return sub_100009104(v6, &unk_1005783D0);
}

void sub_10024B104()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  static Logger.navigation.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = v4;
    v20 = v5;
    v21 = v19;
    v22 = v7;
    v23 = v10;
    v24 = v13;
    v25 = v1;
    v26 = swift_slowAlloc();
    v64 = v26;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v64);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s Attempting to navigate to current show page.", v21, 0xCu);
    sub_100004590(v26);
    v1 = v25;
    v13 = v24;
    v10 = v23;
    v7 = v22;

    v5 = v20;
    v4 = v60;
  }

  v27 = *(v5 + 8);
  v27(v16, v4);
  v28 = [objc_opt_self() sharedApplication];
  v29 = sub_1002D3F10();
  v30 = [v29 rootViewController];

  if (v30)
  {
    v31 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
    if (v31)
    {
      v32 = v31;
      v60 = v1;
      v33 = [v31 podcast];
      if (v33)
      {
        v34 = v33;
        v35 = MPModelObject.uuid.getter();
        v37 = v36;

        if (v37)
        {
          sub_100255DA0(v35, v37, v60, v30);

          return;
        }
      }

      v43 = [v32 podcast];
      if (v43)
      {
        v44 = v43;
        v45 = MPModelObject.adamID.getter();
        v47 = v46;

        if ((v47 & 1) == 0)
        {
          if (v45 < 0)
          {
            __break(1u);
            return;
          }

          v48 = [objc_opt_self() podcastUrlForStoreId:v45];
          if (v48)
          {
            v49 = v61;
            v50 = v48;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1002560A8(v49, v60, v30);
            (*(v62 + 8))(v49, v63);
            return;
          }
        }
      }

      static Logger.navigation.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v64 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v64);
        sub_100004590(v58);

        v27(v13, v4);
        return;
      }

      v42 = v13;
    }

    else
    {
      static Logger.navigation.getter();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v64 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v64);
        sub_100004590(v54);
      }

      v42 = v10;
    }
  }

  else
  {
    static Logger.navigation.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v64 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v64);
      sub_100004590(v41);
    }

    v42 = v7;
  }

  v27(v42, v4);
}

uint64_t sub_10024B864()
{
  v0 = type metadata accessor for FlowPresentationContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowPresentationHints();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowDestination();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = 0;
  v12[1] = 0;
  (*(v9 + 104))(v12, enum case for FlowDestination.notificationSettings(_:), v8, v10);
  (*(v1 + 104))(v3, enum case for FlowPresentationContext.presentModalPageSheet(_:), v0);
  FlowPresentationHints.init(context:animate:)();
  if (UIResponder.nearestFlowController.getter())
  {
    swift_getObjectType();
    dispatch thunk of FlowController.show(destination:hints:referrer:)();
    swift_unknownObjectRelease();
  }

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10024BB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10024BBB8, v6, v5);
}

uint64_t sub_10024BBB8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10024BC58;

  return PlaybackController.togglePlayback()();
}

uint64_t sub_10024BC58()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100257E14;
  }

  else
  {
    v5 = sub_100257E1C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10024BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10024BF9C, v6, v5);
}

uint64_t sub_10024BF9C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10024C03C;

  return PlaybackController.togglePlayback()();
}

uint64_t sub_10024C03C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_10024C1DC;
  }

  else
  {
    v5 = sub_10024C178;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10024C178()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024C1DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024C418(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for PlaybackController.TransportCommand();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *a1, v9, v11);
  v21[3] = v9;
  v21[4] = &protocol witness table for PlaybackController.TransportCommand;
  v14 = sub_10000E680(v21);
  (*(v10 + 16))(v14, v13, v9);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_100004428(v21, v20);
  type metadata accessor for MainActor();
  v16 = v3;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_1000109E4(v20, (v18 + 5));
  sub_10023F12C(0, 0, v8, a3, v18);

  (*(v10 + 8))(v13, v9);
  return sub_100004590(v21);
}

uint64_t sub_10024C7A4(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for PlaybackController.TransportCommand();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (*(&v30 + 1))
  {
    sub_100168088(&qword_100579A20);
    if (swift_dynamicCast())
    {
      v15 = v34;
      if (*(v34 + 16))
      {
        v16 = sub_10000F9A8(0xD000000000000026, 0x800000010046AFE0);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 4 * v16);

          *v14 = v18;
          (*(v11 + 104))(v14, enum case for PlaybackController.TransportCommand.changePlaybackSpeed(_:), v10);
          *(&v32 + 1) = v10;
          v33 = &protocol witness table for PlaybackController.TransportCommand;
          v19 = sub_10000E680(&v31);
          (*(v11 + 16))(v19, v14, v10);
          v20 = type metadata accessor for TaskPriority();
          (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
          sub_100004428(&v31, &v29);
          type metadata accessor for MainActor();
          v21 = v1;
          v22 = static MainActor.shared.getter();
          v23 = swift_allocObject();
          v23[2] = v22;
          v23[3] = &protocol witness table for MainActor;
          v23[4] = v21;
          sub_1000109E4(&v29, (v23 + 5));
          sub_10023F12C(0, 0, v9, &unk_100406CA8, v23);

          (*(v11 + 8))(v14, v10);
          return sub_100004590(&v31);
        }
      }
    }
  }

  else
  {
    sub_100009104(&v31, &unk_1005783D0);
  }

  static Logger.navigation.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v31 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v31);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s Attempted to set playback speed but no rate found on command property list", v27, 0xCu);
    sub_100004590(v28);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10024CD28(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for PlaybackController.TransportCommand();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 1;
  (*(v10 + 104))(v13, *a1, v9, v11);
  v21[3] = v9;
  v21[4] = &protocol witness table for PlaybackController.TransportCommand;
  v14 = sub_10000E680(v21);
  (*(v10 + 16))(v14, v13, v9);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_100004428(v21, v20);
  type metadata accessor for MainActor();
  v16 = v3;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_1000109E4(v20, (v18 + 5));
  sub_10023F12C(0, 0, v8, a3, v18);

  (*(v10 + 8))(v13, v9);
  return sub_100004590(v21);
}

uint64_t sub_10024D03C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v83 = type metadata accessor for Notification();
  v2 = *(v83 - 8);
  __chkstk_darwin(v83);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  __chkstk_darwin(v14);
  v75 = &v74 - v15;
  v16 = sub_100168088(&qword_100579A48);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v19 = type metadata accessor for PerShowSettingNotificationData();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.pfPerShowSettingData.getter();
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v22, v18, v19);
    v34 = PerShowSettingNotificationData.uuid.getter();
    v36 = v35;
    v37 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
    if (v37 && (v38 = v37, v39 = [v37 podcast], v38, v39) && (v40 = MPModelObject.uuid.getter(), v42 = v41, v39, v42))
    {
      if (v34 == v40 && v42 == v36)
      {

        goto LABEL_18;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {
LABEL_18:
        v83 = v22;
        if ((PerShowSettingNotificationData.hasCustomSettings.getter() & 1) != byte_1005933F0 || (PerShowSettingNotificationData.playbackRate.getter(), v72 = v71, v73 = sub_10024DAA0(), (v73 & 0x100000000) != 0) || v72 != *&v73)
        {
          v56 = v75;
          static Logger.playbackSettings.getter();
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();
          v59 = os_log_type_enabled(v57, v58);
          v74 = v19;
          if (v59)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            aBlock[0] = v61;
            *v60 = 136315138;
            v62 = _typeName(_:qualified:)();
            v64 = sub_1000153E0(v62, v63, aBlock);

            *(v60 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v57, v58, "[%s] Received notification that per show settings should be updated.", v60, 0xCu);
            sub_100004590(v61);
          }

          (*(v84 + 8))(v56, v85);
          v65 = v83;
          byte_1005933F0 = PerShowSettingNotificationData.hasCustomSettings.getter() & 1;
          sub_100009F1C(0, &qword_1005729D0);
          v66 = static OS_dispatch_queue.main.getter();
          aBlock[4] = sub_100257DE8;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10000F038;
          aBlock[3] = &unk_1004E7328;
          v67 = _Block_copy(aBlock);
          v68 = v76;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100252880(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
          sub_100168088(&unk_100575CD0);
          sub_100009FAC(&qword_10057D390, &unk_100575CD0);
          v69 = v78;
          v70 = v81;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v67);

          (*(v80 + 8))(v69, v70);
          (*(v77 + 8))(v68, v79);
          v52 = *(v20 + 8);
          v53 = v65;
          v54 = v74;
          return v52(v53, v54);
        }

        v52 = *(v20 + 8);
        v53 = v83;
LABEL_16:
        v54 = v19;
        return v52(v53, v54);
      }
    }

    else
    {
    }

    static Logger.playbackSettings.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315138;
      v47 = _typeName(_:qualified:)();
      v49 = v19;
      v50 = sub_1000153E0(v47, v48, aBlock);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Per show setting changed, but not for current item. Ignoring...", v45, 0xCu);
      sub_100004590(v46);

      (*(v84 + 8))(v13, v85);
      return (*(v20 + 8))(v22, v49);
    }

    (*(v84 + 8))(v13, v85);
    v52 = *(v20 + 8);
    v53 = v22;
    goto LABEL_16;
  }

  sub_100009104(v18, &qword_100579A48);
  static Logger.playbackSettings.getter();
  v23 = v83;
  (*(v2 + 16))(v4, a1, v83);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = sub_1000153E0(v27, v28, aBlock);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    aBlock[6] = Notification.userInfo.getter();
    sub_100168088(&qword_100579A50);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v2 + 8))(v4, v23);
    v33 = sub_1000153E0(v30, v32, aBlock);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Unexpected user info dictionary: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v2 + 8))(v4, v23);
  }

  return (*(v84 + 8))(v10, v85);
}

unint64_t sub_10024DAA0()
{
  v0 = dispatch thunk of PlaybackController.tracklist.getter();
  if (v0 && (v1 = v0, v2 = [v0 playingItem], v1, v2) && (v3 = objc_msgSend(v2, "playbackRateCommand"), v2, v3))
  {
    [v3 preferredPlaybackRate];
    v5 = v4;
    swift_unknownObjectRelease();
    v6 = 0;
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v7 | (v6 << 32);
}

void sub_10024DB64()
{
  v0 = [objc_opt_self() mainSystem];
  [v0 setNeedsRebuild];
}

uint64_t sub_10024DCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10024DD48, v7, v6);
}

uint64_t sub_10024DD48()
{
  v4 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10024DE04;
  v2 = *(v0 + 32);

  return (v4)(v2, 0);
}

uint64_t sub_10024DE04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_10024DF9C;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_10024DF2C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10024DF2C()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10024DF9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024E330()
{
  v0 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for FlowDestinationPageHeader();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowPresentationContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestination();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowDestination.account(_:), v10);
  (*(v6 + 104))(v8, enum case for FlowPresentationContext.presentModalFormSheet(_:), v5);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v14 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v14;
  v15 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v15;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v14)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v15)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v2 + 104))(v4, enum case for FlowDestinationPageHeader.standard(_:), v1);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v16 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  memset(v19, 0, sizeof(v19));
  sub_1002516A8(v16, v19, 0, v18[1], &type metadata accessor for FlowAction, &unk_10057A0D0, &type metadata accessor for FlowAction);

  return sub_100009104(v19, &unk_1005783D0);
}

void sub_10024E8C0()
{
  type metadata accessor for AnalyticsIdentifierManager();
  v0 = static AnalyticsIdentifierManager.sharedInstance.getter();
  dispatch thunk of AnalyticsIdentifierManager.resetIdentifiers()();
}

void sub_10024E918()
{
  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  [v0 openURL:v2 withCompletionHandler:0];
}

id sub_10024EA68(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_100256714() && (static Selector.== infix(_:_:)() & 1) != 0 || _UIAccessibilityFullKeyboardAccessEnabled() && (static Selector.== infix(_:_:)() & 1) != 0)
  {
    return 0;
  }

  if (static Selector.== infix(_:_:)())
  {
    return [objc_opt_self() allowAccountModifications];
  }

  sub_100256864(a2, v16);
  v7 = v17;
  if (v17)
  {
    v8 = sub_1000044A0(v16, v17);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100004590(v16);
  }

  else
  {
    v13 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v13);
  swift_unknownObjectRelease();
  return v14;
}

id sub_10024ECD8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v83 - v7;
  v9 = sub_100168088(&qword_1005791C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v83 - v14;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v16 = 1;
    v17 = &selRef_viewAccountEmail;
    goto LABEL_15;
  }

  if (static Selector.== infix(_:_:)())
  {
    swift_getObjectType();
    v18 = dispatch thunk of LibraryDataProviderProtocol.hasFollowedShows()();
LABEL_5:
    v16 = v18;
LABEL_6:
    v17 = &selRef_viewAccountEmail;
    goto LABEL_15;
  }

  if (static Selector.== infix(_:_:)())
  {
    if ((_UIAccessibilityFullKeyboardAccessEnabled() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (_UIAccessibilityFullKeyboardAccessEnabled())
    {
LABEL_12:
      v19 = objc_opt_self();
      v20 = [v19 mainBundle];
      v90._object = 0xE400000000000000;
      v21._object = 0x800000010046A810;
      v21._countAndFlagsBits = 0xD000000000000013;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v90._countAndFlagsBits = 2036427856;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v90);

      v23 = [v19 mainBundle];
      v91._object = 0xE500000000000000;
      v91._countAndFlagsBits = 0x6573756150;
      v24._countAndFlagsBits = 0xD000000000000014;
      v24._object = 0x800000010046B010;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v91);

      dispatch thunk of PlaybackController.isPlaying.getter();

      v17 = &selRef_viewAccountEmail;
      [a1 setAttributes:{objc_msgSend(a1, "attributes") & 0xFFFFFFFFFFFFFFFBLL}];
      v26 = String._bridgeToObjectiveC()();

      [a1 setTitle:v26];

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v17 = &selRef_viewAccountEmail;
    [a1 setAttributes:{objc_msgSend(a1, "attributes") | 4}];
    goto LABEL_14;
  }

  if (static Selector.== infix(_:_:)())
  {
    v29 = type metadata accessor for PlaybackController.TransportCommand();
    *(&v88 + 1) = v29;
    v89 = &protocol witness table for PlaybackController.TransportCommand;
    v30 = sub_10000E680(&v87);
    v31 = &enum case for PlaybackController.TransportCommand.moveToNextTrack(_:);
LABEL_30:
    (*(*(v29 - 8) + 104))(v30, *v31, v29);
    v16 = dispatch thunk of PlaybackController.canPerform(_:)();
    sub_100004590(&v87);
    goto LABEL_6;
  }

  if (static Selector.== infix(_:_:)())
  {
    v29 = type metadata accessor for PlaybackController.TransportCommand();
    *(&v88 + 1) = v29;
    v89 = &protocol witness table for PlaybackController.TransportCommand;
    v30 = sub_10000E680(&v87);
    v31 = &enum case for PlaybackController.TransportCommand.moveToPreviousTrack(_:);
    goto LABEL_30;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      dispatch thunk of PlaybackController.preferredJumpInterval.getter();
      v34 = type metadata accessor for PlaybackController.PreferredJumpInterval();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v11, 1, v34) == 1)
      {
        sub_100009104(v11, &qword_1005791C0);
      }

      else
      {
        PlaybackController.PreferredJumpInterval.localizedStringForSkipBackward.getter();
        (*(v35 + 8))(v11, v34);
      }

      v17 = &selRef_viewAccountEmail;
      v40 = String._bridgeToObjectiveC()();

      [a1 setTitle:v40];

      v37 = type metadata accessor for PlaybackController.TransportCommand();
      *(&v88 + 1) = v37;
      v89 = &protocol witness table for PlaybackController.TransportCommand;
      v38 = sub_10000E680(&v87);
      v39 = &enum case for PlaybackController.TransportCommand.jumpBackward(_:);
      goto LABEL_44;
    }

    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      v18 = dispatch thunk of PlaybackController.isVolumeControlAvailable.getter();
      goto LABEL_5;
    }

    if (static Selector.== infix(_:_:)())
    {
      if ([a1 propertyList])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v85 = 0u;
        v86 = 0u;
      }

      v87 = v85;
      v88 = v86;
      if (*(&v86 + 1))
      {
        sub_100168088(&qword_100579A20);
        if (swift_dynamicCast())
        {
          v41 = v84;
          if (*(v84 + 16))
          {
            v42 = sub_10000F9A8(0xD000000000000026, 0x800000010046AFE0);
            if (v43)
            {
              v44 = *(*(v41 + 56) + 4 * v42);

              v45 = type metadata accessor for PlaybackController.TransportCommand();
              *(&v88 + 1) = v45;
              v89 = &protocol witness table for PlaybackController.TransportCommand;
              *sub_10000E680(&v87) = v44;
              (*(*(v45 - 8) + 104))();
              v16 = dispatch thunk of PlaybackController.canPerform(_:)();
              sub_100004590(&v87);
              v46 = sub_10024DAA0();
              v47 = v44 == *&v46 && (v46 & &_mh_execute_header) == 0;
              [a1 setState:v47];
              goto LABEL_6;
            }
          }
        }
      }

      else
      {
        sub_100009104(&v87, &unk_1005783D0);
      }

      static Logger.navigation.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v87 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v87);
        _os_log_impl(&_mh_execute_header, v55, v56, "%s No rate found in command property list for playback rate command", v57, 0xCu);
        sub_100004590(v58);
      }

      (*(v3 + 8))(v8, v2);
      goto LABEL_71;
    }

    if (static Selector.== infix(_:_:)())
    {
      v29 = type metadata accessor for PlaybackController.TransportCommand();
      *(&v88 + 1) = v29;
      v89 = &protocol witness table for PlaybackController.TransportCommand;
      v30 = sub_10000E680(&v87);
      *v30 = 1;
      v31 = &enum case for PlaybackController.TransportCommand.increasePlaybackSpeed(_:);
      goto LABEL_30;
    }

    if (static Selector.== infix(_:_:)())
    {
      v29 = type metadata accessor for PlaybackController.TransportCommand();
      *(&v88 + 1) = v29;
      v89 = &protocol witness table for PlaybackController.TransportCommand;
      v30 = sub_10000E680(&v87);
      *v30 = 1;
      v31 = &enum case for PlaybackController.TransportCommand.decreasePlaybackSpeed(_:);
      goto LABEL_30;
    }

    if (static Selector.== infix(_:_:)())
    {
      v48 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
      if (v48 && (v49 = v48, v50 = [v48 podcast], v49, v50))
      {
        v51 = MPModelObject.uuid.getter();
        v53 = v52;

        if (v53)
        {
          v54 = 2;
LABEL_77:
          type metadata accessor for PlayerPerShowSettingsHelper();
          v61 = static PlayerPerShowSettingsHelper.isCustomSettingsSupported(contentID:)();
          sub_1001CEA54(v51, v53, v54);
          v62 = [a1 attributes] & 0xFFFFFFFFFFFFFFFBLL;
          v63 = 4;
          if (v61)
          {
            v63 = 0;
          }

          [a1 setAttributes:v62 | v63];
          static Logger.playbackSettings.getter();
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v87 = v67;
            *v66 = 136315650;
            *(v66 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v87);
            *(v66 + 12) = 1024;
            *(v66 + 14) = byte_1005933F0;
            *(v66 + 18) = 1024;
            v16 = 1;
            *(v66 + 20) = 1;
            _os_log_impl(&_mh_execute_header, v64, v65, "%s Current show settings is %{BOOL}d. Toggle supported: %{BOOL}d", v66, 0x18u);
            sub_100004590(v67);

            (*(v3 + 8))(v5, v2);
            goto LABEL_6;
          }

          (*(v3 + 8))(v5, v2);
          goto LABEL_71;
        }

        v51 = 0;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v54 = -1;
      goto LABEL_77;
    }

    if (static Selector.== infix(_:_:)())
    {
      sub_100009F1C(0, &qword_10057AB20);
      v59 = [swift_getObjCClassFromMetadata() sharedInstance];
      v60 = [v59 activeFullName];

      if (!v60)
      {
        goto LABEL_92;
      }

      goto LABEL_83;
    }

    if (static Selector.== infix(_:_:)())
    {
      sub_100009F1C(0, &qword_10057AB20);
      v68 = [swift_getObjCClassFromMetadata() sharedInstance];
      v60 = [v68 activeEmail];

      if (!v60)
      {
LABEL_92:
        v77 = String._bridgeToObjectiveC()();

        [a1 setTitle:v77];

        v78 = [a1 title];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v79 = String.count.getter();

        v80 = [a1 attributes];
        if (v79)
        {
          v81 = v80 & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          v81 = v80 | 4;
        }

        [a1 setAttributes:v81];
        v16 = 0;
        goto LABEL_6;
      }

LABEL_83:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_92;
    }

    if (static Selector.== infix(_:_:)())
    {
      v69 = [objc_opt_self() mainBundle];
      v82 = 0xE000000000000000;
      v70 = 0x800000010046AFA0;
      v71 = 0x1000000000000013;
      v72.super.isa = v69;
      v73 = 0;
      v74 = 0xE000000000000000;
      v75 = 0;
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
LABEL_71:
        v16 = 1;
        goto LABEL_6;
      }

      v69 = [objc_opt_self() mainBundle];
      v82 = 0x80000001004682E0;
      v71 = 0xD000000000000029;
      v70 = 0x80000001004682B0;
      v75 = 0x100000000000001DLL;
      v72.super.isa = v69;
      v73 = 0;
      v74 = 0xE000000000000000;
    }

    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v71, 0, v72, *&v73, *&v75);

    v76 = String._bridgeToObjectiveC()();

    [a1 setTitle:v76];

    goto LABEL_71;
  }

  dispatch thunk of PlaybackController.preferredJumpInterval.getter();
  v32 = type metadata accessor for PlaybackController.PreferredJumpInterval();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v15, 1, v32) == 1)
  {
    sub_100009104(v15, &qword_1005791C0);
  }

  else
  {
    PlaybackController.PreferredJumpInterval.localizedStringForSkipForward.getter();
    (*(v33 + 8))(v15, v32);
  }

  v17 = &selRef_viewAccountEmail;
  v36 = String._bridgeToObjectiveC()();

  [a1 setTitle:v36];

  v37 = type metadata accessor for PlaybackController.TransportCommand();
  *(&v88 + 1) = v37;
  v89 = &protocol witness table for PlaybackController.TransportCommand;
  v38 = sub_10000E680(&v87);
  v39 = &enum case for PlaybackController.TransportCommand.jumpForward(_:);
LABEL_44:
  (*(*(v37 - 8) + 104))(v38, *v39, v37);
  v16 = dispatch thunk of PlaybackController.canPerform(_:)();
  sub_100004590(&v87);
LABEL_15:
  if (sub_100256714() && (([a1 action], (static Selector.== infix(_:_:)() & 1) != 0) || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0) || (v16 & 1) == 0)
  {
    v27 = [a1 attributes] | 1;
  }

  else
  {
    v27 = [a1 attributes] & 0xFFFFFFFFFFFFFFFELL;
  }

  return [a1 v17[4]];
}

void sub_10025004C(void *a1)
{
  type metadata accessor for CoreDataFetcher();
  v2 = [objc_opt_self() predicateForSubscribedPodcasts];
  v3 = static CoreDataFetcher.fetchPodcasts(for:by:with:)();

  if (!v3)
  {
    return;
  }

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v4)
      {
LABEL_4:
        v5 = sub_1002513A4(v4);
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_8;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
          v17 = v6;

          v7 = [v17 episodes];
          if (v7 && (v8 = v7, sub_100009F1C(0, &qword_100573660), sub_100024384(&qword_100579A08, &qword_100573660), v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v8, v11 = sub_10025127C(v10, v9), , v11))
          {
            sub_100168088(&unk_100574680);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_1004007B0;
            *(v12 + 32) = v11;
            v13 = swift_allocObject();
            *(v13 + 16) = v12;
            *(v13 + 24) = a1;
            aBlock[4] = sub_100257DEC;
            aBlock[5] = v13;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10000F038;
            aBlock[3] = &unk_1004E72B0;
            v14 = _Block_copy(aBlock);
            v15 = v11;
            v16 = a1;

            [v16 performBlock:v14];
            _Block_release(v14);
          }

          else
          {
          }

          return;
        }

        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      __break(1u);
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }
}

void sub_1002503B0(unint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 predicateForSubscribedPodcasts];
  v4 = [v2 sortDescriptorsForRecentlyUpdatedAscending:0];
  if (!v4)
  {
    goto LABEL_45;
  }

  v5 = v4;
  type metadata accessor for CoreDataFetcher();
  sub_100009F1C(0, &qword_10057B1F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = static CoreDataFetcher.fetchPodcasts(for:by:with:)();

  if (!v6)
  {
    return;
  }

  aBlock[0] = _swiftEmptyArrayStorage;
  v41 = v6 & 0xFFFFFFFFFFFFFF8;
  v40 = v6;
  if (v6 >> 62)
  {
    goto LABEL_30;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = a1;
  while (v7)
  {
    a1 = 0;
    v8 = v40 & 0xC000000000000001;
    v9 = v40 + 32;
    v39 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v8)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v41 + 16))
        {
          goto LABEL_29;
        }

        v10 = *(v9 + 8 * a1);
      }

      v11 = v10;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v13 = [v10 episodes];
      if (v13)
      {
        v14 = v13;
        v42 = v11;
        sub_100009F1C(0, &qword_100573660);
        sub_100024384(&qword_100579A08, &qword_100573660);
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = v15 & 0xC000000000000001;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v17 = __CocoaSet.startIndex.getter();
          v19 = v18;
          v20 = __CocoaSet.endIndex.getter();
          v22 = v21;
          v23 = static __CocoaSet.Index.== infix(_:_:)();
          v24 = v20;
          v8 = v40 & 0xC000000000000001;
          v9 = v40 + 32;
          sub_100252820(v24, v22, 1);
          if ((v23 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v25 = 0;
          v26 = (v15 + 56);
          v17 = 1 << *(v15 + 32);
          v27 = (v17 + 63) >> 6;
          while (1)
          {
            v29 = *v26++;
            v28 = v29;
            if (v29)
            {
              break;
            }

            v25 -= 64;
            if (!--v27)
            {
              v19 = *(v15 + 36);
              goto LABEL_19;
            }
          }

          v30 = __clz(__rbit64(v28));
          v19 = *(v15 + 36);
          if (v30 - v17 != v25)
          {
            v17 = v30 - v25;
LABEL_24:
            sub_10033C850(v17, v19, v16 != 0, v15);
            sub_100252820(v17, v19, v16 != 0);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v39 = aBlock[0];
            goto LABEL_21;
          }
        }

LABEL_19:
        sub_100252820(v17, v19, v16 != 0);

        v11 = v42;
      }

LABEL_21:
      if (a1 == v7)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v38 = a1;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_32:

  if (v39 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }
  }

  else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    if ((v39 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_37;
    }

    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v39 + 32);
LABEL_37:
      v32 = v31;

      sub_100168088(&unk_100574680);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1004007B0;
      *(v33 + 32) = v32;
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v38;
      aBlock[4] = sub_100257DEC;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004E7210;
      v35 = _Block_copy(aBlock);
      v36 = v32;
      v37 = v38;

      [v37 performBlock:v35];
      _Block_release(v35);

      return;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }
}

void sub_100250970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v11[4] = a2;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = a3;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 performBlock:v9];
  _Block_release(v9);
}

void sub_100250A90(void *a1)
{
  type metadata accessor for CoreDataFetcher();
  v2 = [objc_opt_self() predicateForSubscribedPodcasts];
  sub_100168088(&unk_100574680);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004007B0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  v7 = static CoreDataFetcher.fetchPodcasts(for:by:with:)();

  if (!v7)
  {
    return;
  }

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 episodes];

  if (v10)
  {
    sub_100009F1C(0, &qword_100573660);
    sub_100024384(&qword_100579A08, &qword_100573660);
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_10033BE6C(v11);

    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004007B0;
      *(v13 + 32) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = a1;
      aBlock[4] = sub_100252810;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004E7170;
      v15 = _Block_copy(aBlock);
      v16 = v12;
      v17 = a1;

      [v17 performBlock:v15];
      _Block_release(v15);
    }
  }
}

uint64_t sub_100250EA4()
{
  v14 = type metadata accessor for FlowDestination();
  v0 = *(v14 - 8);
  __chkstk_darwin(v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FlowPresentationContext();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationHints();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UIResponder.nearestFlowController.getter();
  if (result)
  {
    (*(v4 + 104))(v6, enum case for FlowPresentationContext.presentModal(_:), v3);
    FlowPresentationHints.init(context:animate:)();
    swift_getObjectType();
    v12 = v14;
    (*(v0 + 104))(v2, enum case for FlowDestination.debugSettings(_:), v14);
    dispatch thunk of FlowController.show(destination:hints:referrer:)();
    swift_unknownObjectRelease();
    (*(v0 + 8))(v2, v12);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

id sub_100251168(unint64_t a1, id a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setIsNew:1];
      [v7 setSentNotification:0];

      ++v5;
      if (v8 == i)
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

  return [a2 saveInCurrentBlock];
}

unint64_t sub_10025127C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v5 = sub_1002513A4(v9);
      v6 = _HashTable.startBucket.getter();
      v8 = *(a2 + 36);
      goto LABEL_8;
    }

    return 0;
  }

  if (!__CocoaSet.count.getter())
  {
    return 0;
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v5 = sub_1002513A4(result);
    v6 = __CocoaSet.startIndex.getter();
    v8 = v7;
LABEL_8:
    v10 = v3 != 0;
    v11 = v6;
    v12 = sub_100251908(v6, v8, v10, v5, a2);
    v14 = v13;
    v16 = v15;
    sub_100252820(v11, v8, v10);
    sub_10033C850(v12, v14, v16 & 1, a2);
    v18 = v17;
    sub_100252820(v12, v14, v16 & 1);
    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002513A4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100251430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, void (*a7)(uint64_t))
{
  v24[0] = a2;
  v24[1] = a3;
  v11 = type metadata accessor for ActionPerformer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&unk_10057BB60);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v24 - v17;
  v19 = a5(0, v16);
  v26[3] = v19;
  v26[4] = sub_100252880(a6, a7);
  v20 = sub_10000E680(v26);
  (*(*(v19 - 8) + 16))(v20, a1, v19);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v21 = type metadata accessor for InteractionContext();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(v18, &unk_10057BB60);
  sub_100004428(v26, v25);

  ActionPerformer.init(_:asPartOf:)();
  v22 = ActionPerformer.callAsFunction()();

  (*(v12 + 8))(v14, v11);
  sub_100004590(v26);
  return v22;
}

uint64_t sub_1002516A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, void (*a7)(uint64_t))
{
  v22[1] = a3;
  v11 = type metadata accessor for ActionPerformer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&unk_10057BB60);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v22 - v17;
  v24[3] = a5(0, v16);
  v24[4] = sub_100252880(a6, a7);
  v24[0] = a1;
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v19 = type metadata accessor for InteractionContext();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(v18, &unk_10057BB60);
  sub_100004428(v24, v23);

  ActionPerformer.init(_:asPartOf:)();
  v20 = ActionPerformer.callAsFunction()();

  (*(v12 + 8))(v14, v11);
  sub_100004590(v24);
  return v20;
}

uint64_t sub_100251908(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    goto LABEL_28;
  }

  v24 = result;
  v25 = a2;
  v26 = a3 & 1;
  if (!a4)
  {
    v22 = result;
    sub_100252874(result, a2, a3 & 1);
    return v22;
  }

  v7 = a5 & 0xC000000000000001;
  result = sub_100252874(result, a2, a3 & 1);
  v8 = 0;
  v9 = a4 - 1;
  while (1)
  {
    if (v7)
    {
      if (v26 != 1)
      {
        goto LABEL_29;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100168088(&qword_100579A10);
      v10 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v10(v23, 0);
      goto LABEL_5;
    }

    if (v26)
    {
      goto LABEL_30;
    }

    result = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    v12 = 1 << *(a5 + 32);
    if (v24 >= v12)
    {
      break;
    }

    v13 = v24 >> 6;
    v14 = *(a5 + 56 + 8 * (v24 >> 6));
    if (((v14 >> v24) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(a5 + 36) != v25)
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v24 & 0x3F));
    if (v15)
    {
      v12 = __clz(__rbit64(v15)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v13 << 6;
      v17 = v13 + 1;
      v18 = (a5 + 64 + 8 * v13);
      while (v17 < (v12 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100252820(v24, v25, 0);
          v12 = __clz(__rbit64(v19)) + v16;
          goto LABEL_22;
        }
      }

      result = sub_100252820(v24, v25, 0);
    }

LABEL_22:
    v21 = *(a5 + 36);
    v24 = v12;
    v25 = v21;
    v26 = 0;
LABEL_5:
    if (v8++ == v9)
    {
      return v24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100251B40(uint64_t a1)
{
  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100402D70;
  if (qword_1005727B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1005933F8;
  *(inited + 32) = qword_1005933F8;
  v4 = qword_1005727C0;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100593400;
  *(inited + 40) = qword_100593400;
  v7 = qword_1005727C8;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_100593408;
  *(inited + 48) = qword_100593408;
  v10 = qword_1005727D0;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_100593410;
  *(inited + 56) = qword_100593410;
  v13 = v12;

  sub_1001C408C(inited);
  return a1;
}

uint64_t sub_100251CB8(unint64_t a1)
{
  v1 = a1;
  v27 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_41:
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v1;
  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    while (2)
    {
      v6 = v3;
      while (1)
      {
        if (v4)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v29 + 16))
          {
            goto LABEL_38;
          }

          v7 = *(v1 + 8 * v6 + 32);
        }

        v8 = v7;
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v6;
        if (v3 == v2)
        {
          goto LABEL_19;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = _swiftEmptyArrayStorage;
      v1 = v28;
      if (v3 != v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_19:
  if (_swiftEmptyArrayStorage >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_21:
      v10 = 0;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v11 = v5[v10 + 4];
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_39;
        }

        v1 = v5;
        v14 = [v11 identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {

            goto LABEL_24;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_24:
        v5 = v1;
        ++v10;
        if (v13 == v9)
        {
          v1 = v28;
          break;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_46;
    }

LABEL_59:

    return v1;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_59;
  }

LABEL_46:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!_swiftEmptyArrayStorage[2])
    {
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_52;
    }

    v21 = _swiftEmptyArrayStorage[4];
  }

  v1 = v21;

  v22 = sub_100249EA8(v1, v28);
  if (v23)
  {

    return v28;
  }

  v9 = v22;
  if (qword_1005727B8 != -1)
  {
    goto LABEL_63;
  }

LABEL_52:
  v24 = qword_1005933F8;
  if (v27)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v29 + 16);
  }

  if (result < v9)
  {
    __break(1u);
  }

  else if ((v9 & 0x8000000000000000) == 0)
  {
    v26 = v24;
    sub_100255C98(v9, v9, v26, sub_1001CDBEC, sub_100255B6C);

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100252124(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  sub_100168088(&unk_100574640);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_100252214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  _s7SectionCMa();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_100252360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s7SectionCMa();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100252460(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1001CDBEC(result);

  return sub_100252360(v4, v2, 0);
}

unint64_t sub_100252538(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  v14 = 48 * v12;
  v15 = &v13[48 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10025260C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100243690(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100252538(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1002526CC(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC8Podcasts17MenuBarController_menuBarPresenter);
  if (*(v2 + OBJC_IVAR____TtC8Podcasts17MenuBarController_menuBarPresenter))
  {
    v5 = a1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of MenuBarPresenter.rebuildMenuBar.setter();
    swift_unknownObjectRelease();
    a1 = v5;
  }

  *v4 = a1;
  v4[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*v4)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of MenuBarPresenter.rebuildMenuBar.setter();
    swift_unknownObjectRelease();
  }

  v6 = [objc_opt_self() mainSystem];
  [v6 setNeedsRebuild];
}

uint64_t sub_100252820(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100252834()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100252874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100252880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002528C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() keyCommandWithInput:v2 modifierFlags:0x100000 action:"presentPreferences"];

  v4 = [v1 children];
  sub_100009F1C(0, &qword_100575BC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;

    v9 = [v8 title];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_11:
    v11 = String._bridgeToObjectiveC()();

    [v3 setTitle:v11];

    sub_100168088(&unk_100574680);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1004007B0;
    *(v12 + 32) = v3;
    v13 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [v1 menuByReplacingChildren:isa];

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100252B00(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v53 = a1;
  v1 = [v53 children];
  sub_100009F1C(0, &qword_100575BC0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_32:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_33;
    }
  }

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
        goto LABEL_31;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = v8;
    v10 = [v8 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_20;
    }

LABEL_5:

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_33;
    }
  }

LABEL_20:

  v18 = [v9 children];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_53;
    }

LABEL_22:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v21 = *(v19 + 32);
    }

    v22 = v21;

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {

      goto LABEL_35;
    }

    v24 = [objc_opt_self() mainBundle];
    swift__string._object = 0xEC000000776F646ELL;
    v25._countAndFlagsBits = 0x49575F45534F4C43;
    v25._object = 0xEC000000574F444ELL;
    swift__string._countAndFlagsBits = 0x69572065736F6C43;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, swift__string);

    [v23 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100009F1C(0, &qword_100575BD8);
    if (swift_dynamicCast())
    {
      v23 = v54;
      v27 = String._bridgeToObjectiveC()();

      [v54 setTitle:v27];

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_22;
  }

LABEL_53:

LABEL_33:

LABEL_34:
  v23 = 0;
LABEL_35:
  if (qword_1005727D0 != -1)
  {
    swift_once();
  }

  v28 = qword_100593410;
  v55[4] = qword_100593410;
  v55[5] = v23;
  v29 = v23;
  v30 = v28;
  for (i = 0; i != 2; ++i)
  {
    v32 = v55[i + 4];
    if (v32)
    {
      v33 = v32;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100168088(&qword_100579A80);
  swift_arrayDestroy();
  v34 = static UIMenuIdentifier.station.getter();

  if (_swiftEmptyArrayStorage >> 62)
  {
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_100009F1C(0, &qword_100579A70);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v56.value.super.isa = 0;
  v56.is_nil = v34;
  v37.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, 0, v56, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v51).super.super.isa;
  v38 = static UIMenuIdentifier.subscribe.getter();
  sub_100168088(&unk_100574680);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100405740;
  if (qword_1005727C8 != -1)
  {
    swift_once();
  }

  v40 = qword_100593408;
  *(v39 + 32) = qword_100593408;
  v41 = qword_1005727C0;
  v42 = v40;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_100593400;
  *(v39 + 40) = qword_100593400;
  v44 = v43;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v57.value.super.isa = 0;
  v57.is_nil = v38;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v57, 1, 0xFFFFFFFFFFFFFFFFLL, v39, v52.super.super.isa).super.super.isa;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100405740;
  *(v47 + 32) = v37;
  *(v47 + 40) = isa;
  v48 = v37.super.super.isa;
  v49 = isa;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v53 menuByReplacingChildren:v50];

  return v17;
}

id sub_100253218(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &selRef_application_willFinishLaunchingWithOptions_;
  v65 = a1;
  v2 = [v65 children];
  sub_100009F1C(0, &qword_100575BC0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_57;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v4)
  {
    v5 = 0;
    v68 = v3 & 0xC000000000000001;
    v69 = 0;
    v66 = v3 & 0xFFFFFFFFFFFFFF8;
    v67 = v3;
    while (1)
    {
      if (v68)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v66 + 16))
        {
          goto LABEL_56;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }

LABEL_7:
      ++v5;
      if (v8 == v4)
      {
        goto LABEL_41;
      }
    }

    v10 = v4;
    v11 = v9;
    v12 = [v9 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {

LABEL_31:
        v3 = v67;
        v4 = v10;
        goto LABEL_7;
      }
    }

    v19 = [v11 v1[261]];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_40:

LABEL_41:

LABEL_43:
        v28 = v69;
        goto LABEL_44;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v20 = *(v3 + 32);
    }

    v21 = v20;

    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {

      goto LABEL_43;
    }

    v23 = v22;
    if ([v22 action])
    {
      v24 = [v23 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v23 image];
      if ([v23 propertyList])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v4 = v10;
      sub_100009F1C(0, &qword_100575BD8);
      v64 = 0u;
      v62 = 0u;
      preferredElementSize = _swiftEmptyArrayStorage;
      v26 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();

      v69 = v26;
      v1 = &selRef_application_willFinishLaunchingWithOptions_;
      v3 = v67;
      goto LABEL_7;
    }

    v69 = 0;
    goto LABEL_31;
  }

  v28 = 0;
LABEL_44:
  v70 = v28;
  v29 = objc_opt_self();
  v30 = [v29 mainBundle];
  swift__string._object = 0xEA00000000006465;
  swift__string._countAndFlagsBits = 0x6464412065746144;
  v31._countAndFlagsBits = 0xD000000000000012;
  v31._object = 0x800000010046B1D0;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, swift__string);

  sub_100009F1C(0, &qword_100579A68);
  v33 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v34 = [v29 mainBundle];
  swift__stringa._object = 0xE500000000000000;
  swift__stringa._countAndFlagsBits = 0x656C746954;
  v35._object = 0x800000010046B1F0;
  v35._countAndFlagsBits = 0xD000000000000011;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, swift__stringa);

  v74 = 0u;
  v75 = 0u;
  v37 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v38 = [v29 mainBundle];
  swift__stringb._object = 0xE700000000000000;
  v39._countAndFlagsBits = 0x59425F54524F53;
  swift__stringb._countAndFlagsBits = 0x79422074726F53;
  v39._object = 0xE700000000000000;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, swift__stringb);

  v42 = 0;
  if (_UISolariumEnabled())
  {
    v43 = String._bridgeToObjectiveC()();
    v42 = [objc_opt_self() systemImageNamed:v43];
  }

  sub_100009F1C(0, &qword_100579A70);
  v44 = static UIMenuIdentifier.sortOptions.getter();
  sub_100168088(&unk_100574680);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100405740;
  *(v45 + 32) = v33;
  *(v45 + 40) = v37;
  v46 = v42;
  v47 = v33;
  v48 = v37;
  v76.value.super.isa = v42;
  v76.is_nil = v44;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v76, 0, 0xFFFFFFFFFFFFFFFFLL, v45, 0).super.super.isa;
  v50 = static UIMenuIdentifier.viewOptions.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1004007B0;
  *(v51 + 32) = isa;
  v52 = isa;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v77.value.super.isa = 0;
  v77.is_nil = v50;
  v72 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v53, 0, v77, 1, 0xFFFFFFFFFFFFFFFFLL, v51, v63).super.super.isa;
  v73 = v70;
  *&v74 = _swiftEmptyArrayStorage;
  v54 = v70;
  v55 = v72;
  for (i = 0; i != 2; ++i)
  {
    v57 = v71[i + 4];
    if (v57)
    {
      v58 = v57;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100168088(&qword_100579A78);
  swift_arrayDestroy();
  v59 = Array._bridgeToObjectiveC()().super.isa;

  v27 = [v65 menuByReplacingChildren:v59];

  return v27;
}

Class sub_100253AC8()
{
  v154 = _swiftEmptyArrayStorage;
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  swift__string._object = 0xE000000000000000;
  v2._countAndFlagsBits = 1954047310;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, swift__string);

  v4 = 0;
  if (_UISolariumEnabled())
  {
    v5 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v5];
  }

  sub_100009F1C(0, &qword_100575BD8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = 0u;
  v153 = 0u;
  v139 = v4;
  v146 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v6 = [v0 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x73756F6976657250;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, swift__stringa);

  v9 = 0;
  if (_UISolariumEnabled())
  {
    v10 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v10];
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = 0u;
  v153 = 0u;
  v138 = v9;
  v11 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (_UISolariumEnabled())
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() systemImageNamed:{v12, _swiftEmptyArrayStorage, 0, 0, 0, 0}];
  }

  else
  {
    v13 = 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = 0u;
  v153 = 0u;
  v137 = v13;
  v14 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v15 = 0;
  if (_UISolariumEnabled())
  {
    v16 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() systemImageNamed:{v16, _swiftEmptyArrayStorage, 0, 0, 0, 0}];
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = 0u;
  v153 = 0u;
  v136 = v15;
  v17 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  [v146 setAllowsAutomaticMirroring:{0, _swiftEmptyArrayStorage, 0, 0, 0, 0}];
  [v11 setAllowsAutomaticMirroring:0];
  v145 = v14;
  [v14 setAllowsAutomaticMirroring:0];
  v142 = v17;
  [v17 setAllowsAutomaticMirroring:0];
  v18 = [v0 mainBundle];
  v164._countAndFlagsBits = 0xD000000000000012;
  v164._object = 0x800000010046B350;
  v19._countAndFlagsBits = 0x6853206F74206F47;
  v19._object = 0xEA0000000000776FLL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v164);

  v21 = 0;
  if (_UISolariumEnabled())
  {
    v22 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() _systemImageNamed:v22];
  }

  v152 = 0u;
  v153 = 0u;
  v135 = v21;
  v23 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  image = static UIMenuIdentifier.play.getter();
  v24 = [v0 mainBundle];
  v25._countAndFlagsBits = 0xD000000000000013;
  swift__stringc._object = 0xE400000000000000;
  v25._object = 0x800000010046A810;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  swift__stringc._countAndFlagsBits = 2036427856;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, swift__stringc);

  v27 = 0;
  if (_UISolariumEnabled())
  {
    v28 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() systemImageNamed:v28];
  }

  _UIAccessibilityFullKeyboardAccessEnabled();
  v29 = v27;

  v30 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v152 = 0u;
  v153 = 0u;
  _UIAccessibilityFullKeyboardAccessEnabled();
  v31 = v29;
  v32 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100168088(&unk_100574680);
  v33 = swift_allocObject();
  v127 = xmmword_100405740;
  *(v33 + 16) = xmmword_100405740;
  *(v33 + 32) = v30;
  *(v33 + 40) = v32;

  sub_100009F1C(0, &qword_100579A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007F0;
  *(inited + 32) = v146;
  *(inited + 40) = v11;
  *(inited + 48) = v145;
  *(inited + 56) = v142;
  *(inited + 64) = v23;
  *&v152 = v33;
  v134 = v146;
  v133 = v11;
  v132 = v145;
  v131 = v142;
  v130 = v23;
  sub_1001C408C(inited);
  v35 = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v155.value.super.isa = 0;
  v155.is_nil = image;
  v37 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, 0, v155, 1, 0xFFFFFFFFFFFFFFFFLL, v33, 0).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v129 = v37;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v143 = v154;
    v38 = [v0 mainBundle];
    swift__stringd._object = v35;
    v39._countAndFlagsBits = 0x6573616572636E49;
    v39._object = 0xEF656D756C6F5620;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    swift__stringd._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, swift__stringd);

    static String.localizedStringWithFormat(_:_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();

    v42 = objc_opt_self();
    v43 = [v42 keyCommandWithInput:v41 modifierFlags:0x100000 action:"increaseVolume" upAction:"cancelVolumeEvent"];

    v140 = v43;
    if (v43)
    {
      v44 = v43;
      v45 = String._bridgeToObjectiveC()();

      [v44 setTitle:v45];
    }

    else
    {
    }

    v46 = [v0 mainBundle];
    swift__stringe._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0x6573616572636544;
    v47._object = 0xEF656D756C6F5620;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    swift__stringe._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, swift__stringe);

    static String.localizedStringWithFormat(_:_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = String._bridgeToObjectiveC()();

    v50 = [v42 keyCommandWithInput:v49 modifierFlags:0x100000 action:"decreaseVolume" upAction:"cancelVolumeEvent"];

    v128 = v50;
    if (v50)
    {
      v51 = v50;
      v52 = String._bridgeToObjectiveC()();

      [v51 setTitle:v52];

      v53 = v143;
      if (v140)
      {
        v54 = v140;
        v55 = v51;
        v56 = static UIMenuIdentifier.volume.getter();
        v57 = swift_allocObject();
        *(v57 + 16) = v127;
        *(v57 + 32) = v54;
        *(v57 + 40) = v55;
        v58 = v54;
        v59 = v55;
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        v156.value.super.isa = 0;
        v156.is_nil = v56;
        v61 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v60, 0, v156, 1, 0xFFFFFFFFFFFFFFFFLL, v57, children).super.super.isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v53 = v154;
      }
    }

    else
    {

      v53 = v143;
    }

    v144 = v53;
    v150 = _swiftEmptyArrayStorage;
    v151 = _swiftEmptyArrayStorage;
    type metadata accessor for PlaybackRateHelper();
    v62 = static PlaybackRateHelper.supportedRates.getter();
    v63 = *(v62 + 16);
    if (!v63)
    {
      break;
    }

    *&v127 = v62;
    v35 = (v62 + 32);
    sub_100168088(&qword_100579A88);
    v64 = 0;
    while (1)
    {
      v65 = *(v35 + v64);
      static PlaybackRateHelper.localizedWithX(_:)();
      v37 = v66;
      v147 = 0xD000000000000026;
      v148 = 0x800000010046AFE0;
      v149 = v65;
      v67 = static _DictionaryStorage.allocate(capacity:)();

      v68 = v147;
      v69 = v148;
      v70 = v149;

      v71 = sub_10000F9A8(v68, v69);
      if (v72)
      {
        break;
      }

      v67[(v71 >> 6) + 8] |= 1 << v71;
      v73 = (v67[6] + 16 * v71);
      *v73 = v68;
      v73[1] = v69;
      *(v67[7] + 4 * v71) = v70;
      v74 = v67[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_63;
      }

      v67[2] = v76;

      sub_100009104(&v147, &unk_100579A90);
      *&v152 = v64;
      dispatch thunk of CustomStringConvertible.description.getter();
      *(&v153 + 1) = sub_100168088(&qword_100579A20);
      *&v152 = v67;
      children._rawValue = 0;
      UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v64;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v63 == v64)
      {
        v77 = v150;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v77 = _swiftEmptyArrayStorage;
LABEL_33:

  v78 = sub_100248D08(v77);
  v79 = static UIMenuIdentifier.playbackSpeedPresets.getter();
  if (v78 >> 62)
  {
    sub_100009F1C(0, &qword_100575BC0);

    v80 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F1C(0, &qword_100575BC0);
    v80 = v78;
  }

  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v157.value.super.isa = 0;
  v157.is_nil = v79;
  v82 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v81, 0, v157, 1, 0xFFFFFFFFFFFFFFFFLL, v80, children).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v83 = v151;
  if (static Podcasts.isAdvancedPlaybackEnabled.getter())
  {
    v84 = [v0 mainBundle];
    swift__stringf._object = 0xE000000000000000;
    v85._countAndFlagsBits = 0x726574736146;
    v85._object = 0xE600000000000000;
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    swift__stringf._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, swift__stringf);

    v87 = String._bridgeToObjectiveC()();
    v88 = objc_opt_self();
    v89 = [v88 systemImageNamed:v87];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = 0u;
    v153 = 0u;
    UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v90 = [v0 mainBundle];
    swift__stringg._object = 0xE000000000000000;
    v91._countAndFlagsBits = 0x7265776F6C53;
    v91._object = 0xE600000000000000;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    swift__stringg._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, swift__stringg);

    v93 = String._bridgeToObjectiveC()();
    v94 = [v88 systemImageNamed:v93];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = 0u;
    v153 = 0u;
    UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v95 = static UIMenuIdentifier.playbackSpeedControls.getter();
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_100009F1C(0, &qword_100575BC0);

      v96 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F1C(0, &qword_100575BC0);
      v96 = _swiftEmptyArrayStorage;
    }

    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v158.value.super.isa = 0;
    v158.is_nil = v95;
    v98 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v97, 0, v158, 1, 0xFFFFFFFFFFFFFFFFLL, v96, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v99 = [v0 mainBundle];
    v100._countAndFlagsBits = 0xD000000000000014;
    swift__stringh._object = 0x800000010046B3D0;
    v100._object = 0x800000010046B3B0;
    swift__stringh._countAndFlagsBits = 0xD000000000000048;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, v99, v101, swift__stringh);

    v152 = 0u;
    v153 = 0u;
    sub_100009F1C(0, &qword_100579A68);
    UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v102 = static UIMenuIdentifier.perShowSettings.getter();
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_100009F1C(0, &qword_100575BC0);

      v103 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F1C(0, &qword_100575BC0);
      v103 = _swiftEmptyArrayStorage;
    }

    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v159.value.super.isa = 0;
    v159.is_nil = v102;
    v105 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v104, 0, v159, 1, 0xFFFFFFFFFFFFFFFFLL, v103, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v83 = v151;
  }

  *&v152 = v83;
  sub_100168088(&qword_100575BC8);
  sub_100009FAC(&qword_100575BD0, &qword_100575BC8);
  if (Collection.isNotEmpty.getter())
  {
    if (static Podcasts.isAdvancedPlaybackEnabled.getter())
    {
      v106 = [v0 mainBundle];
      preferredElementSize = 0x800000010046B370;
      v107 = 0xD00000000000003BLL;
      v108 = 0x6B63616279616C50;
      v109 = 0xEE00646565705320;
      v110.super.isa = v106;
      v111 = 0;
      v112 = 0xE000000000000000;
    }

    else
    {
      v106 = [v0 mainBundle];
      preferredElementSize = 0xE000000000000000;
      v108 = 0x6B63616279616C50;
      v109 = 0xEE00646565705320;
      v110.super.isa = v106;
      v111 = 0;
      v112 = 0xE000000000000000;
      v107 = 0;
    }

    v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v108, 0, v110, *&v111, *&v107);

    v160.is_nil = static UIMenuIdentifier.speedAudioAdjustments.getter();
    v160.value.super.isa = 0;
    v117 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v116, 0, v160, 0, 0xFFFFFFFFFFFFFFFFLL, v83, childrena).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v113 = v129;
    v114 = v140;
    if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v115 = v154;
  }

  else
  {

    v113 = v129;
    v114 = v140;
    v115 = v144;
  }

  v118 = [v0 mainBundle];
  swift__stringi._object = 0xE000000000000000;
  v119._countAndFlagsBits = 0x736C6F72746E6F43;
  v119._object = 0xE800000000000000;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  swift__stringi._countAndFlagsBits = 0;
  v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, swift__stringi);

  v161.is_nil = static UIMenuIdentifier.controls.getter();
  v161.value.super.isa = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v121, 0, v161, 0, 0xFFFFFFFFFFFFFFFFLL, v115, childrena).super.super.isa;

  return isa;
}

Class sub_100255314()
{
  sub_100009F1C(0, &qword_100579A68);
  v0 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v1 = [objc_opt_self() mainBundle];
  swift__string._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0x544E554F434341;
  swift__string._countAndFlagsBits = 0x746E756F636341;
  v2._object = 0xE700000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, swift__string);

  sub_100009F1C(0, &qword_10057AB20);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 isUserLoggedIn];

  if (v6)
  {
    v7 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v0;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = static UIMenuIdentifier.accountManage.getter();
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_100009F1C(0, &qword_100575BC0);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F1C(0, &qword_100575BC0);
      preferredElementSize = _swiftEmptyArrayStorage;
    }

    sub_100009F1C(0, &qword_100579A70);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v19.value.super.isa = 0;
    v19.is_nil = v10;
    v13 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v19, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20.is_nil = static UIMenuIdentifier.account.getter();
    v20.value.super.isa = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v20, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v18).super.super.isa;

    return isa;
  }

  else
  {
    sub_100009F1C(0, &qword_100579A70);
    v16 = static UIMenuIdentifier.accountManage.getter();
    sub_100168088(&unk_100574680);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004007B0;
    *(v17 + 32) = v0;
    v21.value.super.isa = 0;
    v21.is_nil = v16;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, v17, 0).super.super.isa;
  }
}

void sub_10025584C(void *a1)
{
  sub_100009F1C(0, &qword_100579A70);
  sub_100168088(&unk_100574680);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100405740;
  sub_100009F1C(0, &qword_100579A68);
  *(v2 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100402D70;
  *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *(preferredElementSize + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *(preferredElementSize + 56) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v4._countAndFlagsBits = 0x6163696669746F4ELL;
  v4._object = 0xED0000736E6F6974;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  *(v2 + 40) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v9, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  v5._countAndFlagsBits = 0x6775626544;
  v5._object = 0xE500000000000000;
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v10, 0, 0xFFFFFFFFFFFFFFFFLL, v2, v6).super.super.isa;
  [a1 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuHelp];
}

char *sub_100255B6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100009F1C(0, &qword_100575BC0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}