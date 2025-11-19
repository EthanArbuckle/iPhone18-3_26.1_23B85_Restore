uint64_t sub_10035C1FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035C294, v4, v3);
}

uint64_t sub_10035C294()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_10035C3D0(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10035C328()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AB9B8;

  return sub_10035C1FC(v2, v3);
}

uint64_t sub_10035C3D0(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CarPlayPageLoadCoordinator();
  swift_allocObject();

  sub_1002442DC(v3);

  v4 = BaseObjectGraph.satisfying<A>(_:with:)();
  if (a2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1001AA70C();
    v9 = sub_100355C6C(v4, v7, 1, 10);

    ++v6;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v8;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00);
      v10 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_18;
    }

LABEL_24:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v11 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v10);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithItems:isa];

  sub_100168088(&unk_100574680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;

  return v14;
}

id sub_10035C6EC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 type];
  v7 = [v1 title];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = objc_allocWithZone(CLSContext);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithType:v6 identifier:v9 title:v7];

  [v10 setAssignable:{objc_msgSend(v1, "isAssignable")}];
  [v10 setDisplayOrder:{objc_msgSend(v1, "displayOrder")}];
  v11 = [v1 universalLinkURL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v15 = 0;
  }

  [v10 setUniversalLinkURL:v15];

  v16 = [v1 thumbnail];
  [v10 setThumbnail:v16];

  return v10;
}

uint64_t sub_10035C930(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for Logger();
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = v9;
    sub_1001FE728();
    swift_errorRetain();
    static OS_os_log.classKit.getter();
    swift_errorRetain();
    v12 = a3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = a2;
      v30 = v26;
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *v17 = v12;
      *(v16 + 12) = 2080;
      swift_errorRetain();
      v18 = v12;
      sub_100168088(&qword_100575C50);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000153E0(v19, v20, &v30);
      v25 = v8;
      v22 = a4;
      v23 = v21;

      *(v16 + 14) = v23;
      a4 = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error loading contexts for predicate %@ - %s", v16, 0x16u);
      sub_100186264(v17);

      sub_100004590(v26);

      a1 = v27;

      (*(v28 + 8))(v11, v25);
    }

    else
    {

      (*(v28 + 8))(v11, v8);
    }
  }

  return a4(a1);
}

char *sub_10035CBD8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *&result[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver];

    v15 = 0;
    LODWORD(v5) = [v6 performFetch:&v15];

    v7 = v15;
    if (v5)
    {

      return v7;
    }

    else
    {
      v14[1] = v15;
      v8 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.database.getter();
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "unable to fetch stations %@", v11, 0xCu);
        sub_100186264(v12);
      }

      else
      {
      }

      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

id sub_10035CE84()
{
  [*&v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver] setDelegate:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StationListObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10035CFF8(void *a1, void *a2, uint64_t a3)
{
  result = [a1 fetchedObjects];
  if (result)
  {
    v6 = result;
    sub_100039340();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v8);
    v10[2] = a3;
    v9 = sub_10003938C(sub_10035D7F8, v10, v7);

    *a2 = v9;
  }

  return result;
}

uint64_t sub_10035D0D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v3 = type metadata accessor for StationListOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v11 = type metadata accessor for StationDetail();
  v8 = v7;
  static StationListOptions.excludeArtwork.getter();
  sub_10003955C();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  static StationListOptions.excludeEpisodes.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9(v6, v3);
  static StationListOptions.excludeShows.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9(v6, v3);
  result = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  *v12 = result;
  return result;
}

uint64_t (*sub_10035D31C())(void *)
{
  v1 = (*v0 + OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001A324C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_10035D3C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1001A3248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*v2 + OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  return sub_1000112B4(v8);
}

void (*sub_10035D468(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1001A3138;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_10035D540;
}

void sub_10035D540(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1001A3100;
    }

    else
    {
      v4 = sub_1001A3248;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v2[5] + v2[6]);
  *v7 = v4;
  v7[1] = v6;
  swift_endAccess();

  free(v2);
}

uint64_t sub_10035D5FC()
{
  v1 = type metadata accessor for StationListOptions();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_sync_enter(v0);
  v5 = *&v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver];
  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_options], v1);
  v6 = v5;
  v7 = sub_100038FE4(v6, v4);

  (*(v2 + 8))(v4, v1);
  *&v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue] = v7;

  objc_sync_exit(v0);
  v8 = &v0[OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange];
  result = swift_beginAccess();
  v10 = *v8;
  if (*v8)
  {
    sub_100013CB4(v10);

    v10(v11);
    sub_1000112B4(v10);
  }

  return result;
}

id sub_10035D794()
{
  v1 = *(type metadata accessor for StationListOptions() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10035CFF8(v2, v3, v4);
}

uint64_t sub_10035D81C()
{
  v14 = type metadata accessor for ScalarDictionary();
  v0 = *(v14 - 8);
  __chkstk_darwin();
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = type metadata accessor for MetricsPageFields();
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_1005815C0);
  __chkstk_darwin();
  v9 = &v13 - v8;

  static MetricsPageID.welcomeSheet.getter();
  static MetricsPageType.welcome.getter();
  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v10 = v14;
  (*(v0 + 16))(v2, v4, v14);
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v23 = v17;
  sub_100009104(&v23, &unk_100574650);
  v22 = v18;
  sub_100009104(&v22, &unk_100573A90);
  v21 = v19;
  sub_100009104(&v21, &unk_100574660);
  sub_100037470(v20);
  (*(v0 + 8))(v4, v10);
  (*(v15 + 8))(v7, v16);
  v11 = type metadata accessor for PageMetrics();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  MetricsController.pageMetrics.setter();
}

uint64_t sub_10035DEC4(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v38 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100010430(*(a1 + 56) + 32 * v11, v37, &unk_1005783D0);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_100010430(&v34, &v27, &unk_1005783D0);
    if (!v28)
    {

      sub_100009104(&v33, &qword_1005817D0);
      result = sub_100009104(&v27, &unk_1005783D0);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_10016B7CC(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_10016B7CC(v32, v29);
    v1 = v39;
    v15 = v39[2];
    if (v39[3] <= v15)
    {

      sub_10019B010(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v17 = v1 + 64;
    v18 = -1 << v1[32];
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(*(v1 + 6) + 16 * v21) = v16;
    sub_10016B7CC(v29, (*(v1 + 7) + 32 * v21));
    ++*(v1 + 2);
    result = sub_100009104(v31, &unk_1005783D0);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *&v17[8 * v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10035E1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager__downloaders;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_10000F9A8(a2, a3);
    v14 = 0u;
    if (v12)
    {
      v14 = *(*(v10 + 56) + 16 * v11);
      swift_unknownObjectRetain();
    }

    v13 = v14;
  }

  else
  {
    v13 = 0uLL;
  }

  *a4 = v13;
  return result;
}

id sub_10035E2A8()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___preflightURLSession);
  }

  else
  {
    v4 = sub_1000044A0((v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 120), *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 144));
    v5 = sub_100013848(0, *v4);
    v6 = [objc_opt_self() sessionWithConfiguration:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_10035E360()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability);
    v2 = Strong;
    swift_unknownObjectRetain();

    [v1 isReachable];
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_10035E3F8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = static os_log_type_t.debug.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.downloads.getter();
  sub_100004428(a1, v31);
  sub_100004428(a1, v28);
  if (!os_log_type_enabled(v9, v8))
  {

    sub_100004590(v28);
    sub_100004590(v31);
    return;
  }

  v10 = 0xE900000000000064;
  v11 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v11 = 136446722;
  if (a4)
  {
    v12 = 1936484398;
  }

  else
  {
    v12 = 0x7261646E6174732ELL;
  }

  if (a4)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE900000000000064;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);

  v16 = sub_1000153E0(0x496E6F6973736553, 0xEB00000000203A44, &v34);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2082;
  v17 = v32;
  v18 = v33;
  sub_1000044A0(v31, v32);
  v19 = (*(v18 + 56))(v17, v18);
  v21 = v20;
  sub_100004590(v31);
  v22 = sub_1000153E0(v19, v21, &v34);

  *(v11 + 14) = v22;
  *(v11 + 22) = 2080;
  v23 = v29;
  v24 = v30;
  sub_1000044A0(v28, v29);
  v25 = (*(v24 + 8))(v23, v24);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v10 = 0xE900000000000067;
      v26 = 0x6E696C65636E6163;
      goto LABEL_19;
    }

    if (v25 == 3)
    {
      v26 = 0x6574656C706D6F63;
      goto LABEL_19;
    }

LABEL_16:
    v10 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    goto LABEL_19;
  }

  if (!v25)
  {
    v10 = 0xE700000000000000;
    v26 = 0x676E696E6E7572;
    goto LABEL_19;
  }

  if (v25 != 1)
  {
    goto LABEL_16;
  }

  v26 = 0x65646E6570737573;
LABEL_19:
  sub_100004590(v28);
  v27 = sub_1000153E0(v26, v10, &v34);

  *(v11 + 24) = v27;
  _os_log_impl(&_mh_execute_header, v9, v8, "Restore task from url session: %{public}s task: %{public}s state: %s", v11, 0x20u);
  swift_arrayDestroy();
}

uint64_t sub_10035E75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin(v4);
  v103 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v101);
  v102 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v100 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v122 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v106 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v120 = &v89 - v13;
  __chkstk_darwin(v12);
  v115 = &v89 - v14;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v118 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v89 - v19;
  v21 = type metadata accessor for EpisodeMetadata(0);
  v22 = __chkstk_darwin(v21 - 8);
  v119 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = &v89 - v24;
  v112 = type metadata accessor for DownloadJob(0);
  v25 = __chkstk_darwin(v112);
  v117 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v114 = &v89 - v28;
  __chkstk_darwin(v27);
  v30 = &v89 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v32 = Strong;
  v111 = v20;
  v116 = v15;
  v33 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v34 = static OS_os_log.downloads.getter();
  sub_1003711F4(a1, v30, type metadata accessor for DownloadJob);
  sub_100004428(a2, v138);
  sub_100004428(a2, v135);
  v35 = os_log_type_enabled(v34, v33);
  v113 = v9;
  v99 = v16;
  if (v35)
  {
    *&v109 = a1;
    *&v110 = a2;
    v36 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v134[0] = v108;
    *v36 = 136446722;
    v37 = &v30[*(v112 + 20)];
    v38 = *v37;
    v39 = v37[1];

    sub_10037125C(v30, type metadata accessor for DownloadJob);
    v40 = sub_1000153E0(v38, v39, v134);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v41 = v139;
    v42 = v140;
    sub_1000044A0(v138, v139);
    v43 = (*(v42 + 56))(v41, v42);
    v45 = v44;
    sub_100004590(v138);
    v46 = sub_1000153E0(v43, v45, v134);

    *(v36 + 14) = v46;
    *(v36 + 22) = 2082;
    v47 = v136;
    v48 = v137;
    sub_1000044A0(v135, v136);
    v49 = (*(v48 + 8))(v47, v48);
    if (v49 > 1)
    {
      v50 = v114;
      if (v49 != 2)
      {
        v16 = v99;
        v51 = 0xE900000000000064;
        if (v49 == 3)
        {
          v52 = 0x6574656C706D6F63;
          goto LABEL_16;
        }

LABEL_12:
        v51 = 0xE700000000000000;
        v52 = 0x6E776F6E6B6E75;
        goto LABEL_16;
      }

      v51 = 0xE900000000000067;
      v52 = 0x6E696C65636E6163;
    }

    else
    {
      v50 = v114;
      if (v49)
      {
        v16 = v99;
        v51 = 0xE900000000000064;
        if (v49 == 1)
        {
          v52 = 0x65646E6570737573;
LABEL_16:
          sub_100004590(v135);
          v54 = sub_1000153E0(v52, v51, v134);

          *(v36 + 24) = v54;
          _os_log_impl(&_mh_execute_header, v34, v33, "Restoring job: %{public}s, task: %{public}s, state: %{public}s", v36, 0x20u);
          swift_arrayDestroy();

          v9 = v113;
          a2 = v110;
          a1 = v109;
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      v51 = 0xE700000000000000;
      v52 = 0x676E696E6E7572;
    }

    v16 = v99;
    goto LABEL_16;
  }

  sub_10037125C(v30, type metadata accessor for DownloadJob);
  sub_100004590(v135);
  sub_100004590(v138);
  v50 = v114;
LABEL_17:
  sub_1003711F4(a1 + *(v112 + 36), v121, type metadata accessor for EpisodeMetadata);
  sub_1003711F4(a1, v50, type metadata accessor for DownloadJob);
  sub_100004428(a2, v138);
  v55 = *&v32[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage];
  v109 = *&v32[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_jobStorage];
  v110 = v55;
  sub_100010430(&v32[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_mediaLibraryClient], v135, &unk_1005817C0);
  sub_100004428(&v32[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_dsidProvider], v134);
  sub_100004428(&v32[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_artworkStorage], v133);
  v56 = v16 + 16;
  v57 = *(v16 + 16);
  v58 = v111;
  v59 = v116;
  v107 = v56;
  v108 = v57;
  v57();
  v60 = qword_100572700;
  v112 = v110;
  swift_unknownObjectRetain();
  v98 = v109;
  swift_unknownObjectRetain();
  v97 = v32;
  v61 = v50;
  if (v60 != -1)
  {
    swift_once();
  }

  v90 = sub_1001825CC(v9, qword_1005931F8);
  v62 = v122 + 16;
  v63 = *(v122 + 16);
  v64 = v115;
  v63(v115, v90, v9);
  sub_100010C38(v134, v134[3]);
  v132[3] = &type metadata for AccounStoreDsidProvider;
  v132[4] = &off_1004F1108;
  v96 = type metadata accessor for EpisodeMetadata;
  sub_1003711F4(v121, v119, type metadata accessor for EpisodeMetadata);
  v95 = type metadata accessor for DownloadJob;
  sub_1003711F4(v61, v117, type metadata accessor for DownloadJob);
  sub_100004428(v138, v131);
  sub_100010430(v135, v130, &unk_1005817C0);
  sub_100004428(v132, v129);
  sub_100004428(v133, v128);
  v108(v118, v58, v59);
  v65 = v9;
  v63(v120, v64, v9);
  v92 = v62;
  v93 = v63;
  v66 = v63;
  sub_100010C38(v129, v129[3]);
  v127[3] = &type metadata for AccounStoreDsidProvider;
  v127[4] = &off_1004F1108;
  type metadata accessor for JobPipeline(0);
  v53 = swift_allocObject();
  sub_100010C38(v127, &type metadata for AccounStoreDsidProvider);
  v126[3] = &type metadata for AccounStoreDsidProvider;
  v126[4] = &off_1004F1108;
  v94 = v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate;
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v67 = OBJC_IVAR____TtC8Podcasts11JobPipeline_secureDownloadRenewalManager;
  type metadata accessor for SecureDownloadRenewalManager();
  *(v53 + v67) = SecureDownloadRenewalManager.__allocating_init()();
  v68 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
  v91 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
  v69 = v106;
  v66(v106, v90, v65);
  type metadata accessor for Throttler();
  swift_allocObject();
  *(v53 + v68) = sub_1002EE1F8(v69);
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = 0;
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue) = 0;
  v90 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v89 = sub_100009F1C(0, &qword_1005729D0);
  static DispatchQoS.unspecified.getter();
  v123[0] = &_swiftEmptyArrayStorage;
  sub_10000E614(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v104 + 104))(v103, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v105);
  *(v53 + v90) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v70 = (v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  *v70 = 0u;
  v70[1] = 0u;
  v71 = OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel;
  *(v53 + v71) = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  v72 = (v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter);
  v73 = [objc_opt_self() sharedInstance];
  v72[3] = sub_100009F1C(0, &qword_100574390);
  v72[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
  *v72 = v73;
  v93(v69, v120, v113);
  swift_allocObject();
  v74 = sub_1002EE1F8(v69);
  *(v53 + v91) = v74;

  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_type) = 1;
  v108((v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder), v118, v116);
  v75 = v109;
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage) = v110;
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage) = v75;
  sub_100010430(v130, v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &unk_1005817C0);
  sub_100004428(v126, v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_dsidProvider);
  sub_100004428(v128, v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_artworkStorage);
  *(v94 + 8) = &off_1004F0730;
  v76 = v97;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1003711F4(v119, v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata, v96);
  sub_1003711F4(v117, v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline__job, v95);
  sub_100004428(v131, v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline__task);
  v77 = (v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock);
  type metadata accessor for FairPlayInvalidationManager();
  *v77 = 0;
  v77[1] = 0;
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_fairPlayInvalidationManager) = FairPlayInvalidationManager.__allocating_init()();
  v78 = *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  v79 = v124;
  v80 = v125;
  sub_1000044A0(v123, v124);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = *(v80 + 136);

  *&v109 = v81;
  *&v110 = v82(sub_100371390, v81, v79, v80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v83 = *(v122 + 8);
  v122 += 8;
  v84 = v113;
  v83(v120, v113);
  v85 = *(v99 + 8);
  v86 = v116;
  v85(v118, v116);
  sub_100004590(v128);
  sub_100009104(v130, &unk_1005817C0);
  sub_100004590(v131);
  sub_10037125C(v117, type metadata accessor for DownloadJob);
  sub_10037125C(v119, type metadata accessor for EpisodeMetadata);
  v83(v115, v84);
  v85(v111, v86);
  sub_100004590(v133);
  sub_100009104(v135, &unk_1005817C0);
  sub_100004590(v138);
  sub_10037125C(v114, type metadata accessor for DownloadJob);
  sub_10037125C(v121, type metadata accessor for EpisodeMetadata);
  sub_100004590(v132);
  sub_100004590(v126);

  v87 = *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation);
  *(v53 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = v110;

  sub_100004590(v123);
  sub_100004590(v127);
  sub_100004590(v129);
  sub_100004590(v134);
  return v53;
}

void sub_10035F790(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11)
  {
    v63 = a3;
    v64 = a2;
    v62 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage;
    v12 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);
    v60 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
    v13 = *(v11 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);

    v14 = v13;
    v65 = v11;
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = v4;

    v16 = &v10[*(v8 + 20)];
    v18 = *v16;
    v17 = *(v16 + 1);
    v70 = v8;
    v71 = v17;

    v69 = v10;
    sub_10037125C(v10, type metadata accessor for DownloadJob);
    [*(v12 + 16) lock];
    swift_beginAccess();
    v61 = v12;
    a3 = *(v12 + 24);
    if (a3 >> 62)
    {
      goto LABEL_37;
    }

    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v20 = v15;
    if (v19)
    {
      v15 = 0;
      v67 = a3 & 0xFFFFFFFFFFFFFF8;
      v68 = a3 & 0xC000000000000001;
      v66 = v18;
      do
      {
        if (v68)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v22 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
          if (v15 >= *(v67 + 16))
          {
            __break(1u);
LABEL_37:
            v19 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v21 = a3[v15 + 4];

          v22 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_19;
          }
        }

        v23 = v20;
        v24 = v19;
        v25 = a3;
        v26 = *(v21 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v27 = v69;
        v28 = v21;
        v29 = v70;
        OS_dispatch_queue.sync<A>(execute:)();
        v72 = v23;

        v30 = (v27 + *(v29 + 20));
        v32 = *v30;
        v31 = v30[1];

        v33 = v27;
        v18 = v66;
        sub_10037125C(v33, type metadata accessor for DownloadJob);
        v34 = v32 == v18 && v31 == v71;
        if (v34)
        {

LABEL_24:

          goto LABEL_25;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = v25;
        if (v35)
        {

          goto LABEL_24;
        }

        ++v15;
        v19 = v24;
        v34 = v22 == v24;
        v20 = v72;
      }

      while (!v34);
    }

    v28 = 0;
LABEL_25:
    [*(v61 + 16) unlock];

    if (v28)
    {
      v37 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v38 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v38, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v73 = v40;
        *v39 = 136446210;
        v41 = *(v28 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v43 = v69;
        v42 = v70;
        OS_dispatch_queue.sync<A>(execute:)();

        v44 = (v43 + *(v42 + 20));
        v45 = *v44;
        v46 = v44[1];

        sub_10037125C(v43, type metadata accessor for DownloadJob);
        v47 = sub_1000153E0(v45, v46, &v73);

        *(v39 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v38, v37, "Existing job pipeline with episode %{public}s", v39, 0xCu);
        sub_100004590(v40);
      }

      else
      {
      }
    }

    v36 = v65;
    v48 = sub_1003AC270(v65);

    if (!v48)
    {
      v49 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v50 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v73 = v52;
        *v51 = 136446210;
        v53 = *(v65 + v60);
        v55 = v69;
        v54 = v70;
        OS_dispatch_queue.sync<A>(execute:)();

        v56 = (v55 + *(v54 + 20));
        v57 = *v56;
        v58 = v56[1];

        sub_10037125C(v55, type metadata accessor for DownloadJob);
        v59 = sub_1000153E0(v57, v58, &v73);

        *(v51 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v49, "Failed to add restored pipeline to memory storage for episode %{public}s", v51, 0xCu);
        sub_100004590(v52);
      }

      v36 = 0;
    }

    a3 = v63;
  }

  else
  {
LABEL_20:
    v36 = 0;
  }

  *a3 = v36;
}

void sub_10035FE1C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v9, v8))
  {
    swift_retain_n();
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v10 = 136446722;
    v35 = v8;
    v11 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
    v12 = *(v7 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    v34 = v9;
    v13 = v12;
    OS_dispatch_queue.sync<A>(execute:)();

    v14 = &v6[*(v4 + 20)];
    v37 = a2;
    v16 = *v14;
    v15 = v14[1];

    sub_10037125C(v6, type metadata accessor for DownloadJob);
    v17 = sub_1000153E0(v16, v15, &v43);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2082;
    v18 = *(v7 + v11);
    OS_dispatch_queue.sync<A>(execute:)();

    v19 = &v6[*(v4 + 32)];
    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = v19[16];

    sub_10037125C(v6, type metadata accessor for DownloadJob);
    v38 = 0x496E6F6973736553;
    v39 = 0xEB00000000203A44;
    if (v22)
    {
      v23 = 1936484398;
    }

    else
    {
      v23 = 0x7261646E6174732ELL;
    }

    v42._countAndFlagsBits = v21;
    v42._object = v20;
    if (v22)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE900000000000064;
    }

    v25._countAndFlagsBits = v23;
    v25._object = v24;
    String.append(_:)(v25);

    String.append(_:)(v42);

    v26 = sub_1000153E0(v38, v39, &v43);

    *(v10 + 14) = v26;
    *(v10 + 22) = 2050;
    v27 = *(v7 + v11);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v28 = v40;
    v29 = v41;
    sub_1000044A0(&v38, v40);
    v30 = (*(v29 + 24))(v28, v29);
    sub_100004590(&v38);

    *(v10 + 24) = v30;

    v9 = v34;
    _os_log_impl(&_mh_execute_header, v34, v35, "Restored job for episode: %{public}s, session: %{public}s, task: %{public}ld", v10, 0x20u);
    swift_arrayDestroy();
  }

  sub_100170EBC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_100366FE8(v7, &unk_1004F0C70, sub_100370F14, &unk_1004F0C88);
  }
}

void sub_100360290(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  _StringGuts.grow(_:)(35);

  v25 = 0xD000000000000021;
  v26 = 0x8000000100472080;
  swift_getErrorValue();
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  sub_100370B38();

  v8 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = a2;
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136446722;
    v25 = 0x496E6F6973736553;
    v26 = 0xEB00000000203A44;
    v12 = (a4 & 1) == 0;
    if (a4)
    {
      v13 = 1936484398;
    }

    else
    {
      v13 = 0x7261646E6174732ELL;
    }

    if (v12)
    {
      v14 = 0xE900000000000064;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15._countAndFlagsBits = v13;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = v10;
    v16._object = a3;
    String.append(_:)(v16);

    v17 = sub_1000153E0(v25, v26, &v24);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_100168088(&qword_100574900);
    v18 = Array.description.getter();
    v20 = sub_1000153E0(v18, v19, &v24);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000153E0(v21, v22, &v24);

    *(v11 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v9, v8, "Failed to restore download jobs for session: %{public}s tasks: %{public}s, error: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100360558(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v64 = a2;
  v65 = a1;
  v8 = type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_1005817E0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = v57 - v12;
  if ([*&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability] isReachable])
  {
    v62 = a4;
    v14 = 0xD00000000000002DLL;
    v15 = *sub_1000044A0(&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration], *&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 24]);
    v63 = a3;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = "ts.downloads.episodes.restore";
      }

      else
      {
        v16 = "ts.downloads.episodes.headers";
        v14 = 0xD00000000000002FLL;
      }
    }

    else if (v15)
    {
      v16 = "sodes.userInitiated";
    }

    else
    {
      v14 = 0xD000000000000033;
      v16 = "bytes";
    }

    v22 = v16 | 0x8000000000000000;
    __chkstk_darwin();
    *&v57[-8] = v4;
    *&v57[-6] = v14;
    v56 = v22;
    sub_100168088(&qword_1005817D8);
    OS_dispatch_queue.sync<A>(execute:)();

    if (v68)
    {
      v60 = *(&v68 + 1);
      v61 = v68;
      v23 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
      v59 = [v23 integerForKey:kMTCellularDownloadLimitKey];

      v24 = *&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_limitsHolder];
      v58 = [v24 audioLimit];
      swift_unknownObjectRetain();
      v25 = v65;
      v26 = v64;
      sub_1003A2E48(v65, v64, v13);
      swift_unknownObjectRelease();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v13;
        v27 = *(v13 + 1);
        v29 = v13[16];
        v57[3] = static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v30 = static OS_os_log.downloads.getter();
        sub_100168088(&unk_100574670);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100400790;
        *&v68 = v28;
        *(&v68 + 1) = v27;
        v32 = v28;
        v33 = v27;
        LOBYTE(v69) = v29;
        sub_1002178A8();
        v34 = Error.localizedDescription.getter();
        v36 = v35;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_100022C18();
        *(v31 + 32) = v34;
        *(v31 + 40) = v36;
        os_log(_:dso:log:_:_:)();

        sub_10033CB14(v32, v33, v29);
        v37 = swift_allocObject();
        v37[2] = v5;
        v37[3] = v25;
        v37[4] = v26;
        v37[5] = 0;
        v38 = v58;
        v37[6] = 0;
        v37[7] = v38;
        v37[8] = v59;
        v39 = sub_100370E84;
      }

      else
      {
        sub_100370EAC(v13, v10, type metadata accessor for EpisodeMetadata);
        if (v10[*(v8 + 48)])
        {
          v45 = &selRef_videoLimit;
        }

        else
        {
          v45 = &selRef_audioLimit;
        }

        v46 = [v24 *v45];
        v47 = &v10[*(v8 + 52)];
        v48 = *v47;
        v49 = v26;
        v50 = v47[8];
        v52 = *(v10 + 8);
        v51 = *(v10 + 9);

        sub_10037125C(v10, type metadata accessor for EpisodeMetadata);
        v37 = swift_allocObject();
        v37[2] = v5;
        v37[3] = v25;
        v37[4] = v49;
        v37[5] = v52;
        v37[6] = v51;
        v37[7] = v46;
        v53 = v59;
        v37[8] = v59;
        v39 = sub_10037138C;
        if ((v50 & 1) != 0 || v46 >= v48)
        {
          v26 = v64;
        }

        else
        {
          v26 = v64;
          if (v53)
          {
            v40 = 0;
            goto LABEL_28;
          }
        }
      }

      v40 = 1;
LABEL_28:
      sub_100168088(&qword_100574690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100400790;
      *(inited + 32) = v25;
      *(inited + 40) = v26;
      swift_bridgeObjectRetain_n();
      v5;
      v55 = sub_10039B51C(inited);
      swift_setDeallocating();
      sub_1002D23B8(inited + 32);

      sub_100361770(v55, v61, v60, 1, v40, v39, v37, v63, v62);

      swift_unknownObjectRelease();
    }

    v41 = v63;
    v42 = v65;
    if (!v63)
    {
      return result;
    }

    sub_100168088(&qword_100574690);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_100400790;
    *(v43 + 32) = v42;
    *(v43 + 40) = v64;

    v44 = sub_10039B51C(v43);
    swift_setDeallocating();
    sub_1002D23B8(v43 + 32);
    v41(v44);
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v17 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)();

  sub_100010430(v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v66, &qword_100581778);
  if (v67)
  {
    sub_1000044A0(v66, v67);
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v71 = 2;
    sub_1001D5888(&v68);
    result = sub_100004590(v66);
  }

  else
  {
    result = sub_100009104(v66, &qword_100581778);
  }

  v19 = v65;
  if (a3)
  {
    sub_100168088(&qword_100574690);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_100400790;
    *(v20 + 32) = v19;
    *(v20 + 40) = v64;

    v21 = sub_10039B51C(v20);
    swift_setDeallocating();
    sub_1002D23B8(v20 + 32);
    a3(v21);
  }

  return result;
}

uint64_t sub_100360D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability) isReachableViaWifi])
  {
    return 0;
  }

  v20 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_finalCheckBeforStart);
  if (!v20)
  {
    return 0;
  }

  v27 = a5;
  v29 = v20;
  type metadata accessor for DownloadableURLOptions();
  v28 = a8;
  v21 = type metadata accessor for EpisodeMetadata(0);
  (*(v16 + 16))(v19, a1 + *(v21 + 44), v15);

  v22 = DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)();
  v23 = sub_10035E2A8();
  type metadata accessor for DownloadPreflightValidator();
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = v27;
  *(v24 + 40) = a6;
  *(v24 + 48) = v23;
  *(v24 + 56) = 0;
  v25 = v30;
  *(v24 + 64) = 0x4024000000000000;
  *(v24 + 72) = v25;
  *(v24 + 96) = 1;
  *(v24 + 80) = v28;
  *(v24 + 88) = v22;

  return v24;
}

void sub_100360F50(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v76 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v75 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  if (!*(a1 + 16))
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v15 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();

    if (a3)
    {
      a3(a1);
    }

    return;
  }

  v12 = (v4 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration);
  v65 = a3;
  if ((a2 & 1) == 0)
  {
    v16 = *sub_1000044A0(v12 + 5, v12[8]);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v14 = "ts.downloads.episodes.headers";
        goto LABEL_21;
      }

      v18 = "com.apple.podcasts.downloads.episodes.headers";
    }

    else
    {
      if (!v16)
      {
        v14 = "bytes";
        goto LABEL_21;
      }

      v18 = "com.apple.podcasts.downloads.episodes.restore";
    }

    v14 = (v18 - 32);
    goto LABEL_21;
  }

  v13 = *sub_1000044A0(v12 + 10, v12[13]);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      v14 = "ts.downloads.episodes.headers";
      goto LABEL_21;
    }

    v17 = "com.apple.podcasts.downloads.episodes.headers";
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = "com.apple.podcasts.downloads.episodes.restore";
LABEL_16:
    v14 = (v17 - 32);
    goto LABEL_21;
  }

  v14 = "bytes";
LABEL_21:
  v19 = v14 | 0x8000000000000000;
  __chkstk_darwin();
  *(&v60 - 4) = v4;
  *(&v60 - 3) = v20;
  v58 = v19;
  sub_100168088(&qword_1005817D8);
  OS_dispatch_queue.sync<A>(execute:)();

  v61 = v81;
  v63 = a2;
  v64 = a4;
  v62 = v80;
  if (v80)
  {
    v21 = v11;
    v22 = v11 + 56;
    v23 = 1 << *(v11 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v11 + 56);
    v71 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage;
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v66 = xmmword_100400790;
    v69 = v4;
    v70 = v11;
    v67 = v26;
    v68 = v11 + 56;
    while (v25)
    {
LABEL_31:
      v72 = v27;
      v73 = v25;
      v29 = (*(v21 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v25)))));
      v30 = v29[1];
      v79 = *v29;
      v31 = *(v5 + v71);
      v32 = *(v31 + 16);

      [v32 lock];
      swift_beginAccess();
      v74 = v31;
      v33 = *(v31 + 24);
      if (v33 >> 62)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v34)
      {
        v35 = 0;
        v77 = v33 & 0xFFFFFFFFFFFFFF8;
        v78 = v33 & 0xC000000000000001;
        while (1)
        {
          if (v78)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v37 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v35 >= *(v77 + 16))
            {
              goto LABEL_67;
            }

            v36 = *(v33 + 8 * v35 + 32);

            v37 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_66;
            }
          }

          v38 = *(v36 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
          v39 = v30;
          v40 = v75;
          v41 = v76;
          OS_dispatch_queue.sync<A>(execute:)();

          v42 = &v40[*(v41 + 20)];
          v44 = *v42;
          v43 = *(v42 + 1);

          v45 = v40;
          v30 = v39;
          sub_10037125C(v45, type metadata accessor for DownloadJob);
          if (v44 == v79 && v43 == v39)
          {
            break;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v47)
          {
            goto LABEL_50;
          }

          ++v35;
          if (v37 == v34)
          {
            goto LABEL_48;
          }
        }

LABEL_50:
      }

      else
      {
LABEL_48:
        v39 = v30;

        v36 = 0;
      }

      [*(v74 + 16) unlock];

      v21 = v70;
      v26 = v67;
      v22 = v68;
      v48 = v39;
      if (v36)
      {

        static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v49 = static OS_os_log.downloads.getter();
        sub_100168088(&unk_100574670);
        v50 = v21;
        v51 = swift_allocObject();
        *(v51 + 16) = v66;
        *(v51 + 56) = &type metadata for String;
        *(v51 + 64) = sub_100022C18();
        *(v51 + 32) = v79;
        *(v51 + 40) = v48;

        os_log(_:dso:log:_:_:)();

        v21 = v50;
      }

      v25 = (v73 - 1) & v73;

      v5 = v69;
      v27 = v72;
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        if (v63)
        {
          v52 = 0;
          v54 = v64;
          v53 = v65;
          goto LABEL_59;
        }

        v55 = *(v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_reachability);
        v56 = [v55 isReachableViaCellular];
        v54 = v64;
        v53 = v65;
        if (v56 && ([v55 isPodcastsCellularDownloadsEnabled] & 1) == 0)
        {
          static os_log_type_t.error.getter();
          sub_100009F1C(0, &qword_1005748A0);
          v57 = static OS_os_log.downloads.getter();
          os_log(_:dso:log:_:_:)();

          if (v53)
          {
            v53(v21);
          }
        }

        else
        {
          v52 = [v55 isPodcastsCellularDownloadsEnabled];
LABEL_59:
          sub_100361770(v21, v62, v61, 0, v52, 0, 0, v53, v54);
        }

        swift_unknownObjectRelease();
        return;
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  v59 = 0;
  v58 = 373;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100361770(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v15 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v15, v14))
  {

    v16 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v16 = 134218498;
    *(v16 + 4) = *(a1 + 16);

    *(v16 + 12) = 2080;
    if (a5)
    {
      v17 = 7562617;
    }

    else
    {
      v17 = 28526;
    }

    v18 = a5;
    if (a5)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE200000000000000;
    }

    v20 = sub_1000153E0(v17, v19, &v125);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v21 = Set.description.getter();
    v23 = sub_1000153E0(v21, v22, &v125);

    *(v16 + 24) = v23;
    a5 = v18;
    _os_log_impl(&_mh_execute_header, v15, v14, "About to start %ld autodownloads, cellular allowed: %s. %{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  v24 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage;
  v25 = a4 & 1;
  if ((a4 & 1) == 0)
  {
    v24 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage;
  }

  v26 = &v10[*v24];
  v28 = *v26;
  v27 = *(v26 + 1);
  BatchEpisodeMetadataOperation = type metadata accessor for FetchBatchEpisodeMetadataOperation();
  v30 = objc_allocWithZone(BatchEpisodeMetadataOperation);
  v31 = &v30[OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_episodeStorage];
  *v31 = v28;
  *(v31 + 1) = v27;
  *&v30[OBJC_IVAR____TtC8Podcasts34FetchBatchEpisodeMetadataOperation_uuids] = a1;
  v134.receiver = v30;
  v134.super_class = BatchEpisodeMetadataOperation;
  swift_unknownObjectRetain_n();

  v114 = objc_msgSendSuper2(&v134, "init");
  v32 = swift_allocObject();
  v112 = v25;
  *(v32 + 16) = v25;
  v33 = sub_100168088(&qword_100581758);
  v34 = objc_allocWithZone(v33);
  v35 = &v34[*((swift_isaMask & *v34) + 0x180)];
  *v35 = 0;
  v35[8] = 2;
  v36 = &v34[*((swift_isaMask & *v34) + 0x188)];
  *v36 = sub_100370CCC;
  *(v36 + 1) = v32;
  v133.receiver = v34;
  v133.super_class = v33;
  v37 = objc_msgSendSuper2(&v133, "init");
  v38 = swift_allocObject();
  *(v38 + 16) = v10;
  *(v38 + 24) = v28;
  *(v38 + 32) = v27;
  *(v38 + 40) = a5 & 1;
  *(v38 + 48) = a2;
  *(v38 + 56) = a3;
  v39 = sub_100168088(&qword_100581760);
  v40 = objc_allocWithZone(v39);
  v41 = &v40[*((swift_isaMask & *v40) + 0x180)];
  *v41 = 0;
  v41[8] = 2;
  v42 = &v40[*((swift_isaMask & *v40) + 0x188)];
  *v42 = sub_100370CE8;
  v42[1] = v38;
  v132.receiver = v40;
  v132.super_class = v39;
  swift_unknownObjectRetain();
  v10;
  swift_unknownObjectRetain();
  v117 = objc_msgSendSuper2(&v132, "init");
  started = type metadata accessor for StartJobPipelinesOperation();
  v44 = objc_allocWithZone(started);
  v45 = OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_serialQueue;
  *&v44[v45] = [objc_allocWithZone(NSOperationQueue) init];
  v46 = &v44[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_input];
  *v46 = 0;
  v46[8] = 2;
  v47 = &v44[OBJC_IVAR____TtC8Podcasts26StartJobPipelinesOperation_beforeTakeOff];
  *v47 = a6;
  v47[1] = a7;
  sub_100013CB4(a6);
  v131.receiver = v44;
  v131.super_class = started;
  v120 = objc_msgSendSuper2(&v131, "init");
  v48 = swift_allocObject();
  *(v48 + 2) = a1;
  *(v48 + 3) = a8;
  *(v48 + 4) = a9;
  v49 = sub_100168088(&unk_100581768);
  v50 = objc_allocWithZone(v49);
  v51 = v50 + *((swift_isaMask & *v50) + 0x180);
  *v51 = 0;
  v51[8] = 2;
  v52 = (v50 + *((swift_isaMask & *v50) + 0x188));
  *v52 = sub_100370D10;
  v52[1] = v48;

  sub_100013CB4(a8);
  v130.receiver = v50;
  v130.super_class = v49;
  v113 = objc_msgSendSuper2(&v130, "init");
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = &v114[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v55 = *&v114[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v54 = sub_100370D30;
  v54[1] = v53;

  sub_1000112B4(v55);

  ObjectType = swift_getObjectType();
  v57 = swift_conformsToProtocol2();
  if (!v57)
  {
    __break(1u);
    goto LABEL_17;
  }

  v58 = v57;
  v59 = swift_allocObject();
  *(v59 + 24) = v58;
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v59;
  v62 = *(v58 + 72);
  v63 = v114;

  v62(sub_1000319D0, v61, ObjectType, v58);

  v64 = type metadata accessor for BaseOperation();
  v129.receiver = v37;
  v129.super_class = v64;
  v123 = v64;
  objc_msgSendSuper2(&v129, "addDependency:", v63);

  v115 = v63;
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = &v37[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v67 = *&v37[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v66 = sub_100371388;
  v66[1] = v65;

  sub_1000112B4(v67);

  v68 = swift_getObjectType();
  v69 = swift_conformsToProtocol2();
  if (!v69)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v70 = v69;
  v71 = swift_allocObject();
  *(v71 + 24) = v70;
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = v71;
  v74 = *(v70 + 72);
  v75 = v37;

  v74(sub_10003B6A0, v73, v68, v70);

  v128.receiver = v117;
  v128.super_class = v123;
  objc_msgSendSuper2(&v128, "addDependency:", v75);

  v111 = v75;
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = &v117[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v78 = *&v117[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v77 = sub_100370D84;
  v77[1] = v76;

  sub_1000112B4(v78);

  v79 = swift_getObjectType();
  v80 = swift_conformsToProtocol2();
  if (!v80)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v81 = v80;
  v82 = swift_allocObject();
  *(v82 + 24) = v81;
  swift_unknownObjectWeakInit();
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v82;
  v85 = *(v81 + 72);
  v86 = v117;

  v85(sub_10003B6A0, v84, v79, v81);

  v127.receiver = v120;
  v127.super_class = v123;
  objc_msgSendSuper2(&v127, "addDependency:", v86);

  v118 = v86;
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = &v120[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v89 = *&v120[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v88 = sub_100370DB8;
  v88[1] = v87;

  sub_1000112B4(v89);

  v90 = swift_getObjectType();
  v91 = swift_conformsToProtocol2();
  if (v91)
  {
    v92 = v91;
    v93 = swift_allocObject();
    *(v93 + 24) = v92;
    swift_unknownObjectWeakInit();
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v93;
    v96 = *(v92 + 72);
    v97 = v120;
    v98 = v113;

    v96(sub_10003B6A0, v95, v90, v92);

    v126.receiver = v98;
    v126.super_class = v123;
    objc_msgSendSuper2(&v126, "addDependency:", v97);

    v99 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = swift_allocObject();
    *(v100 + 16) = a8;
    *(v100 + 24) = a9;
    *(v100 + 32) = v112;
    *(v100 + 40) = v99;
    v101 = &v98[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v102 = *&v98[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v101 = sub_100370E0C;
    v101[1] = v100;
    sub_100013CB4(a8);

    sub_1000112B4(v102);

    v103 = sub_100011218();
    sub_100168088(&unk_100574680);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1004007F0;
    *(v104 + 32) = v115;
    *(v104 + 40) = v111;
    *(v104 + 48) = v118;
    *(v104 + 56) = v97;
    *(v104 + 64) = v98;
    sub_100009F1C(0, &unk_10057A6A0);
    v105 = v115;
    v106 = v111;
    v107 = v118;
    v108 = v97;
    v109 = v98;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v103 addOperations:isa waitUntilFinished:0];
    swift_unknownObjectRelease();

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100362468@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  v111 = a2;
  v91 = a3;
  sub_100168088(&qword_100574760);
  __chkstk_darwin();
  v110 = &v90 - v6;
  v7 = type metadata accessor for EpisodeMetadata(0);
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin();
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100168088(&qword_1005817A8);
  __chkstk_darwin();
  v106 = (&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v117 = (&v90 - v11);
  __chkstk_darwin();
  v105 = &v90 - v12;
  v13 = *a1;
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
  v102 = kPodcastTitle;
  v101 = kPodcastStoreCollectionId;
  v100 = kPodcastFeedUrl;
  v99 = kPodcastUpdatedFeedUrl;
  v98 = kEpisodeGuid;
  v97 = kEpisodeEnclosureUrl;
  v96 = kEpisodeUti;
  v94 = @"adst";
  v93 = @"epdl";
  v112 = v13;

  v20 = 0;
  *&v21 = 136446210;
  v92 = v21;
  v95 = xmmword_1004080E0;
  v118 = v9;
  v103 = v18;
  v104 = v14;
  while (v17)
  {
    v116 = v4;
LABEL_12:
    v26 = __clz(__rbit64(v17)) | (v20 << 6);
    v27 = (*(v112 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = v107;
    v31 = *(v107 + 48);
    v32 = v105;
    sub_1003711F4(*(v112 + 56) + *(v108 + 72) * v26, &v105[v31], type metadata accessor for EpisodeMetadata);
    v33 = *(v30 + 48);
    v34 = v117;
    *v117 = v29;
    v34[1] = v28;
    v114 = type metadata accessor for EpisodeMetadata;
    sub_100370EAC(&v32[v31], v34 + v33, type metadata accessor for EpisodeMetadata);
    v35 = v106;
    sub_100010430(v34, v106, &qword_1005817A8);
    v36 = v35[1];
    v113 = *v35;
    v115 = v36;
    v37 = *(v30 + 48);

    sub_10037125C(v35 + v37, type metadata accessor for EpisodeMetadata);
    sub_100010430(v34, v35, &qword_1005817A8);

    v38 = v118;
    sub_100370EAC(v35 + *(v30 + 48), v118, v114);
    v39 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v40 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v40, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v120 = v42;
      *v41 = v92;
      v43 = sub_1000153E0(v113, v115, &v120);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v40, v39, "Reporting metrics for episode uuid %{public}s", v41, 0xCu);
      sub_100004590(v42);
      v44 = v118;

      v38 = v44;
    }

    else
    {
    }

    sub_100168088(&unk_10057A6B0);
    inited = swift_initStackObject();
    *(inited + 16) = v95;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v46;
    v47 = *(v38 + 72);
    v114 = v47;
    if (v47)
    {
      v48 = *(v38 + 64);
      v49 = &type metadata for String;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      *(inited + 64) = 0;
    }

    *(inited + 48) = v48;
    *(inited + 56) = v47;
    *(inited + 72) = v49;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v50;
    v51 = *(v38 + 56);
    v115 = inited + 32;
    if (v51 == 1)
    {
      v52 = 0;
      v53 = 0;
      *(inited + 104) = 0;
      *(inited + 112) = 0;
    }

    else
    {
      v52 = *(v38 + 48);
      v53 = &type metadata for Int64;
    }

    *(inited + 96) = v52;
    *(inited + 120) = v53;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v54;
    if (*(v38 + 88))
    {
      v55 = *(v38 + 80);
      v56 = *(v38 + 88);
      v57 = &type metadata for String;
    }

    else
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      *(inited + 160) = 0;
    }

    *(inited + 144) = v55;
    *(inited + 152) = v56;
    *(inited + 168) = v57;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v58;
    if (*(v38 + 104))
    {
      v59 = *(v38 + 96);
      v60 = *(v38 + 104);
      v61 = &type metadata for String;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      *(inited + 208) = 0;
    }

    *(inited + 192) = v59;
    *(inited + 200) = v60;
    *(inited + 216) = v61;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v62;
    v63 = v38;
    v64 = *(v38 + 24);
    if (v64)
    {
      v65 = *(v63 + 16);
      v66 = &type metadata for String;
    }

    else
    {
      v65 = 0;
      v66 = 0;
      *(inited + 256) = 0;
    }

    *(inited + 240) = v65;
    *(inited + 248) = v64;
    *(inited + 264) = v66;
    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v67;
    v68 = v109;

    v69 = v63;
    v70 = URL.absoluteString.getter();
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v70;
    *(inited + 296) = v71;
    *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 328) = v72;
    if (*(v63 + *(v68 + 48)))
    {
      v73 = 0x6F65646976;
    }

    else
    {
      v73 = 0x6F69647561;
    }

    *(inited + 360) = &type metadata for String;
    *(inited + 336) = v73;
    *(inited + 344) = 0xE500000000000000;
    v74 = sub_10016A998(inited);
    swift_setDeallocating();
    sub_100168088(&unk_10057A6C0);
    swift_arrayDestroy();
    v75 = v116;
    v76 = sub_10035DEC4(v74);
    v4 = v75;

    v77 = v69 + *(v68 + 60);
    v78 = v110;
    sub_100010430(v77, v110, &qword_100574760);
    v79 = type metadata accessor for Date();
    LODWORD(v74) = (*(*(v79 - 8) + 48))(v78, 1, v79);
    sub_100009104(v78, &qword_100574760);
    if (v74 != 1)
    {
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = &type metadata for String;
      *&v120 = v83;
      *(&v120 + 1) = v84;
      sub_10016B7CC(&v120, v119);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v76;
      sub_10025E908(v119, v80, v82, isUniquelyReferenced_nonNull_native);

      v76 = v122;
    }

    v18 = v103;
    sub_100009F1C(0, &unk_100573E20);
    v86 = [swift_getObjCClassFromMetadata() sharedInstance];
    sub_10025810C(v76);

    v87.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v111)
    {
      v22 = 0;
      isa = v87.super.isa;
      v24 = v93;
    }

    else
    {
      v22 = 1;
      isa = v87.super.isa;
      v24 = v94;
    }

    [v86 reportWithType:v22 userInfo:isa location:v24 reason:0];
    v14 = v104;
    v17 &= v17 - 1;

    sub_10037125C(v118, type metadata accessor for EpisodeMetadata);
    result = sub_100009104(v117, &qword_1005817A8);
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v18)
    {
      v88 = v112;

      v89 = v91;
      *v91 = v88;
      *(v89 + 8) = 0;
    }

    v17 = *(v14 + 8 * v25);
    ++v20;
    if (v17)
    {
      v116 = v4;
      v20 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100362DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void ***a8@<X8>)
{
  v156 = a8;
  v173 = a6;
  v172 = a5;
  v140 = a3;
  v141 = a4;
  v163 = type metadata accessor for DispatchWorkItemFlags();
  v184 = *(v163 - 8);
  __chkstk_darwin();
  v162 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v183 = *(v139 - 8);
  __chkstk_darwin();
  v138 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v136 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for DispatchQoS();
  *&v181 = *(v161 - 8);
  __chkstk_darwin();
  v164 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v155 - 8);
  __chkstk_darwin();
  v145 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v118 - v17;
  __chkstk_darwin();
  v144 = &v118 - v18;
  v153 = type metadata accessor for URL();
  v19 = *(v153 - 8);
  __chkstk_darwin();
  v152 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v118 - v21;
  v185 = type metadata accessor for EpisodeMetadata(0);
  v176 = *(v185 - 1);
  __chkstk_darwin();
  v151 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v118 - v23;
  v135 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v149 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v118 - v25;
  __chkstk_darwin();
  v142 = &v118 - v26;
  v175 = sub_100168088(&qword_1005817A8);
  __chkstk_darwin();
  v182 = (&v118 - v27);
  v28 = *a1;
  static os_log_type_t.default.getter();
  v168 = sub_100009F1C(0, &qword_1005748A0);
  v29 = static OS_os_log.downloads.getter();
  v167 = sub_100168088(&unk_100574670);
  v30 = swift_allocObject();
  v166 = xmmword_100400790;
  *(v30 + 16) = xmmword_100400790;
  v31 = *(v28 + 16);
  *(v30 + 56) = &type metadata for Int;
  *(v30 + 64) = &protocol witness table for Int;
  *(v30 + 32) = v31;
  os_log(_:dso:log:_:_:)();

  v32 = a2;

  v208 = _swiftEmptyArrayStorage;
  v33 = v28 + 64;
  v34 = 1 << *(v28 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v28 + 64);
  v165 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter;
  v133 = v32 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_mediaLibraryClient;
  v134 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_jobStorage;
  v132 = v32 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_dsidProvider;
  v131 = v32 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_artworkStorage;
  v130 = v32 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_assetsFolder;
  v37 = (v34 + 63) >> 6;
  v174 = a7;
  v171 = a7 + 40;
  v159 = (v184 + 8);
  v160 = &v201;
  v158 = (v181 + 8);
  v146 = (v15 + 16);
  v147 = (v19 + 16);
  v129 = "ne for uuid %{public}s";
  v128 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v126 = (v15 + 8);
  v127 = v183 + 104;
  v125 = (v19 + 8);
  v177 = v28;

  v38 = 0;
  v39 = _swiftEmptyArrayStorage;
  v184 = v32;
  v169 = v37;
  v170 = v33;
LABEL_4:
  v183 = v39;
  while (1)
  {
    if (!v36)
    {
      while (1)
      {
        v46 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v46 >= v37)
        {
          break;
        }

        v36 = *(v33 + 8 * v46);
        ++v38;
        if (v36)
        {
          v38 = v46;
          goto LABEL_12;
        }
      }

      aBlock = _swiftEmptyArrayStorage;
      if (v39 >> 62)
      {
        goto LABEL_55;
      }

      v108 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v109 = v157;
      if (!v108)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

LABEL_12:
    v47 = __clz(__rbit64(v36)) | (v38 << 6);
    v48 = (*(v177 + 48) + 16 * v47);
    v49 = *v48;
    v39 = v48[1];
    v50 = v182;
    v51 = v182 + *(v175 + 48);
    sub_1003711F4(*(v177 + 56) + *(v176 + 72) * v47, v51, type metadata accessor for EpisodeMetadata);
    *v50 = v49;
    v50[1] = v39;
    v52 = *(v51 + 32);
    v53 = *(v51 + 40);
    v54 = v51 + v185[13];
    v55 = *(v54 + 8);
    *&v181 = v39;
    v178 = v49;
    if ((v55 & 1) == 0)
    {
      v58 = *v54;

      goto LABEL_27;
    }

    v56 = v51 + v185[14];
    v57 = *(v51 + v185[12]);
    if (*(v56 + 8))
    {

      if (v57)
      {
        v58 = 339256146;
      }

      else
      {
        v58 = 44055796;
      }

      goto LABEL_27;
    }

    v59 = *v56;
    if (v57)
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v61 = (v60 & 1) != 0 ? 14685.2654 : 188475.637;
    }

    else
    {

      v61 = 14685.2654;
    }

    v62 = v61 * v59;
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v62 <= -9.22337204e18)
    {
      goto LABEL_53;
    }

    if (v62 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    v58 = v62;
LABEL_27:
    v36 &= v36 - 1;
    ObjectType = swift_getObjectType();
    (*(v174 + 40))(&aBlock, v207, v51 + v185[11], v52, v53, v172 & 1, v58, 0, ObjectType, v174);
    v179 = aBlock;
    v180 = v200;
    v65 = v201;
    v64 = v202;
    v66 = v203;
    sub_100010430(v207, &v205, &unk_1005817B0);
    if (v206)
    {
      sub_1000109E4(&v205, &aBlock);
      v70 = v142;
      UUID.init()();
      v71 = v203;
      v183 = v202;
      v123 = v203;
      v122 = sub_1000044A0(&aBlock, v202);
      v124 = *(v71 + 3);

      v124 = v124(v183, v123);
      v72 = v135;
      v73 = *(v135 + 36);
      v183 = type metadata accessor for EpisodeMetadata;
      sub_1003711F4(v51, v70 + v73, type metadata accessor for EpisodeMetadata);
      Date.init()();
      *(v70 + v72[7]) = v124;
      v74 = v70 + v72[8];
      *v74 = v65;
      *(v74 + 8) = v64;
      *(v74 + 16) = v66;
      v75 = (v70 + v72[5]);
      v76 = v181;
      *v75 = v178;
      v75[1] = v76;
      v77 = v70 + v72[10];
      *v77 = 0;
      *(v77 + 8) = 0;
      *(v77 + 16) = 0;
      *(v77 + 24) = 1;
      *(v77 + 32) = 0;
      *(v77 + 40) = 0;
      *(v77 + 48) = 0;
      sub_1003711F4(v51, v150, v183);
      sub_1003711F4(v70, v148, type metadata accessor for DownloadJob);
      sub_100004428(&aBlock, &v205);
      v181 = *(v184 + v134);
      sub_100010430(v133, v198, &unk_1005817C0);
      sub_100004428(v132, v197);
      sub_100004428(v131, v196);
      v78 = v143;
      v79 = v153;
      v178 = *v147;
      v178();
      v80 = qword_100572700;
      v183 = v181;
      swift_unknownObjectRetain();
      if (v80 != -1)
      {
        swift_once();
      }

      v81 = v155;
      v119 = sub_1001825CC(v155, qword_1005931F8);
      v124 = *v146;
      v82 = v144;
      (v124)(v144, v119, v81);
      sub_100010C38(v197, v197[3]);
      v195[3] = &type metadata for AccounStoreDsidProvider;
      v195[4] = &off_1004F1108;
      v123 = type metadata accessor for EpisodeMetadata;
      sub_1003711F4(v150, v151, type metadata accessor for EpisodeMetadata);
      v122 = type metadata accessor for DownloadJob;
      sub_1003711F4(v148, v149, type metadata accessor for DownloadJob);
      sub_100004428(&v205, v194);
      sub_100010430(v198, v193, &unk_1005817C0);
      sub_100004428(v195, v192);
      sub_100004428(v196, v191);
      (v178)(v152, v78, v79);
      v83 = v81;
      v84 = v124;
      (v124)(v154, v82, v83);
      sub_100010C38(v192, v192[3]);
      v190[3] = &type metadata for AccounStoreDsidProvider;
      v190[4] = &off_1004F1108;
      type metadata accessor for JobPipeline(0);
      v85 = swift_allocObject();
      sub_100010C38(v190, &type metadata for AccounStoreDsidProvider);
      v189[3] = &type metadata for AccounStoreDsidProvider;
      v189[4] = &off_1004F1108;
      v121 = v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate;
      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      v86 = OBJC_IVAR____TtC8Podcasts11JobPipeline_secureDownloadRenewalManager;
      type metadata accessor for SecureDownloadRenewalManager();
      *(v85 + v86) = SecureDownloadRenewalManager.__allocating_init()();
      v87 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
      v120 = OBJC_IVAR____TtC8Podcasts11JobPipeline_throttler;
      v88 = v145;
      v84(v145, v119, v155);
      type metadata accessor for Throttler();
      swift_allocObject();
      *(v85 + v87) = sub_1002EE1F8(v88);
      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = 0;
      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue) = 0;
      v119 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
      v118 = sub_100009F1C(0, &qword_1005729D0);
      static DispatchQoS.unspecified.getter();
      v186[0] = _swiftEmptyArrayStorage;
      sub_10000E614(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100168088(&unk_1005729E0);
      sub_100015E58(&qword_1005743C0, &unk_1005729E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*v127)(v138, v128, v139);
      *(v85 + v119) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v89 = (v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
      *v89 = 0u;
      v89[1] = 0u;
      v90 = OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel;
      *(v85 + v90) = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
      v91 = (v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter);
      v92 = [objc_opt_self() sharedInstance];
      v91[3] = sub_100009F1C(0, &qword_100574390);
      v91[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
      *v91 = v92;
      v93 = v145;
      (v124)(v145, v154, v155);
      swift_allocObject();
      v94 = sub_1002EE1F8(v93);
      *(v85 + v120) = v94;

      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_type) = 0;
      (v178)(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder, v152, v153);
      v95 = (v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage);
      v96 = v141;
      *v95 = v140;
      v95[1] = v96;
      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage) = v181;
      sub_100010430(v193, v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &unk_1005817C0);
      sub_100004428(v189, v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_dsidProvider);
      sub_100004428(v191, v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_artworkStorage);
      *(v121 + 8) = &off_1004F0730;
      swift_unknownObjectWeakAssign();
      sub_1003711F4(v151, v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata, v123);
      sub_1003711F4(v149, v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline__job, v122);
      sub_100004428(v194, v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline__task);
      v97 = (v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock);
      v98 = v179;
      v99 = v180;
      *v97 = v179;
      v97[1] = v99;
      type metadata accessor for FairPlayInvalidationManager();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_100013CB4(v98);
      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_fairPlayInvalidationManager) = FairPlayInvalidationManager.__allocating_init()();
      v100 = *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      sub_100168088(&qword_100574900);
      v101 = v157;
      OS_dispatch_queue.sync<A>(execute:)();
      v157 = v101;

      v102 = v187;
      v103 = v188;
      sub_1000044A0(v186, v187);
      v104 = swift_allocObject();
      v178 = v104;
      swift_weakInit();
      v105 = *(v103 + 136);

      *&v181 = v105(sub_100370E5C, v104, v102, v103);

      sub_1000112B4(v179);
      swift_unknownObjectRelease();
      v183 = *v126;
      (v183)(v154, v155);
      v180 = *v125;
      v106 = v153;
      (v180)(v152, v153);
      sub_100004590(v191);
      sub_100009104(v193, &unk_1005817C0);
      sub_100004590(v194);
      sub_10037125C(v149, type metadata accessor for DownloadJob);
      sub_10037125C(v151, type metadata accessor for EpisodeMetadata);
      (v183)(v144, v155);
      (v180)(v143, v106);
      sub_100004590(v196);
      sub_100009104(v198, &unk_1005817C0);
      sub_100004590(&v205);
      sub_10037125C(v148, type metadata accessor for DownloadJob);
      sub_10037125C(v150, type metadata accessor for EpisodeMetadata);
      sub_10037125C(v142, type metadata accessor for DownloadJob);
      sub_100009104(v207, &unk_1005817B0);
      sub_100004590(v195);
      sub_100004590(v189);

      v107 = *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation);
      *(v85 + OBJC_IVAR____TtC8Podcasts11JobPipeline_taskObservation) = v181;

      sub_100004590(v186);
      sub_100004590(v190);
      sub_100004590(v192);
      sub_100004590(v197);
      sub_100004590(&aBlock);
      sub_100009104(v182, &qword_1005817A8);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = v208;
      v37 = v169;
      v33 = v170;
      goto LABEL_4;
    }

    sub_100009104(&v205, &unk_1005817B0);
    static os_log_type_t.error.getter();
    v67 = static OS_os_log.downloads.getter();
    v68 = swift_allocObject();
    *(v68 + 16) = v166;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = sub_100022C18();
    v69 = v181;
    *(v68 + 32) = v178;
    *(v68 + 40) = v69;

    os_log(_:dso:log:_:_:)();

    sub_100010430(v184 + v165, &v205, &qword_100581778);
    if (v206)
    {
      *&v181 = *(*sub_1000044A0(&v205, v206) + 56);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      v178 = v40;
      *(v41 + 16) = v40;
      *(v41 + 24) = 1;
      *(v41 + 32) = 0u;
      *(v41 + 48) = 0u;
      *(v41 + 64) = 2;
      v203 = sub_1001D8838;
      v204 = v41;
      aBlock = _NSConcreteStackBlock;
      v200 = 1107296256;
      v201 = sub_10000F038;
      v202 = &unk_1004F0B20;
      v42 = _Block_copy(&aBlock);

      v43 = v164;
      static DispatchQoS.unspecified.getter();
      v198[0] = _swiftEmptyArrayStorage;
      sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0);
      sub_100015E58(&qword_10057D390, &unk_100575CD0);
      v45 = v162;
      v44 = v163;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v42);
      sub_1000112B4(v179);
      (*v159)(v45, v44);
      (*v158)(v43, v161);
      sub_100009104(v207, &unk_1005817B0);

      sub_100004590(&v205);
    }

    else
    {
      sub_100009104(v207, &unk_1005817B0);
      sub_1000112B4(v179);
      sub_100009104(&v205, &qword_100581778);
    }

    v37 = v169;
    v33 = v170;
    v39 = v183;
    sub_100009104(v182, &qword_1005817A8);
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  v108 = _CocoaArrayWrapper.endIndex.getter();
  v109 = v157;
  if (!v108)
  {
LABEL_56:
    v115 = _swiftEmptyArrayStorage;
LABEL_57:

    v117 = v156;
    *v156 = v115;
    *(v117 + 8) = 0;
    return result;
  }

LABEL_37:
  v110 = 0;
  v185 = (v39 & 0xC000000000000001);
  v111 = v39 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v185)
    {
      v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v113 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v110 >= *(v111 + 16))
      {
        goto LABEL_51;
      }

      v112 = *(v39 + v110 + 4);

      v113 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        v115 = aBlock;
        goto LABEL_57;
      }
    }

    v207[0] = v112;
    v114 = sub_1003645D8(v207);
    if (v109)
    {
      break;
    }

    if (v114)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v109 = 0;
      v39 = v183;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v110;
    if (v113 == v108)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003645D8(uint64_t *a1)
{
  v3 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;

  LODWORD(v7) = sub_1003AC270(v6);

  v8 = static os_log_type_t.default.getter();
  v9 = sub_100009F1C(0, &qword_1005748A0);
  v10 = static OS_os_log.downloads.getter();
  if (!os_log_type_enabled(v10, v8))
  {

    if (v7)
    {
      return v7 & 1;
    }

LABEL_11:
    sub_100170BCC();
    static os_log_type_t.error.getter();
    v35 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100400790;
    v37 = *(v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v38 = &v5[*(v3 + 20)];
    v40 = *v38;
    v39 = *(v38 + 1);

    sub_10037125C(v5, type metadata accessor for DownloadJob);
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_100022C18();
    *(v36 + 32) = v40;
    *(v36 + 40) = v39;
    os_log(_:dso:log:_:_:)();

    return v7 & 1;
  }

  swift_retain_n();
  v11 = swift_slowAlloc();
  v46 = v9;
  v12 = v11;
  v45 = swift_slowAlloc();
  v53 = v45;
  *v12 = 136315650;
  v13 = *(v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v43 = v10;
  v14 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v15 = v13;
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = &v5[*(v3 + 20)];
  v44 = v8;
  v17 = *v16;
  v18 = v16[1];

  v47 = v7;
  sub_10037125C(v5, type metadata accessor for DownloadJob);
  v19 = sub_1000153E0(v17, v18, &v53);

  *(v12 + 4) = v19;
  *(v12 + 12) = 2080;
  v20 = *(v6 + v14);
  OS_dispatch_queue.sync<A>(execute:)();
  v42[1] = v1;

  v21 = &v5[*(v3 + 32)];
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = v21[16];

  sub_10037125C(v5, type metadata accessor for DownloadJob);
  v48 = 0x496E6F6973736553;
  v49 = 0xEB00000000203A44;
  if (v24)
  {
    v25 = 1936484398;
  }

  else
  {
    v25 = 0x7261646E6174732ELL;
  }

  v52._countAndFlagsBits = v22;
  v52._object = v23;
  if (v24)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE900000000000064;
  }

  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  String.append(_:)(v52);

  v28 = sub_1000153E0(v48, v49, &v53);

  *(v12 + 14) = v28;
  *(v12 + 22) = 2048;
  v29 = *(v6 + v14);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  v30 = v50;
  v7 = v51;
  sub_1000044A0(&v48, v50);
  v31 = *(v7 + 24);
  v32 = v7;
  LOBYTE(v7) = v47;
  v33 = v31(v30, v32);
  sub_100004590(&v48);

  *(v12 + 24) = v33;

  v34 = v43;
  _os_log_impl(&_mh_execute_header, v43, v44, "Adding job pipeline for episode %s for session %s task %ld", v12, 0x20u);
  swift_arrayDestroy();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  return v7 & 1;
}

uint64_t sub_100364B20@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v57 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = _swiftEmptyArrayStorage;
  v53 = a4;
  v54 = a5;
  v55 = v15;
  if (!v15)
  {
    goto LABEL_16;
  }

  v56 = v14;
  v58 = _swiftEmptyArrayStorage;
  result = sub_1001A7364(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v51 = a2;
    v52 = a3;
    v16 = v58;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v20 = v57;
        OS_dispatch_queue.sync<A>(execute:)();

        swift_unknownObjectRelease();
        v21 = &v13[*(v20 + 20)];
        v22 = *v21;
        v23 = *(v21 + 1);

        sub_10037125C(v13, type metadata accessor for DownloadJob);
        v58 = v16;
        v25 = v16[2];
        v24 = v16[3];
        if (v25 >= v24 >> 1)
        {
          sub_1001A7364((v24 > 1), v25 + 1, 1);
          v16 = v58;
        }

        ++v18;
        v16[2] = v25 + 1;
        v26 = &v16[2 * v25];
        v26[4] = v22;
        v26[5] = v23;
      }

      while (v55 != v18);
    }

    else
    {
      v27 = (v56 + 32);
      v28 = v15;
      do
      {
        v29 = *(*v27 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);

        v30 = v29;
        v31 = v57;
        OS_dispatch_queue.sync<A>(execute:)();
        v56 = v6;

        v32 = &v13[*(v31 + 20)];
        v34 = *v32;
        v33 = *(v32 + 1);

        sub_10037125C(v13, type metadata accessor for DownloadJob);
        v58 = v16;
        v36 = v16[2];
        v35 = v16[3];
        if (v36 >= v35 >> 1)
        {
          sub_1001A7364((v35 > 1), v36 + 1, 1);
          v16 = v58;
        }

        v16[2] = v36 + 1;
        v37 = &v16[2 * v36];
        v37[4] = v34;
        v37[5] = v33;
        ++v27;
        --v28;
        v6 = v56;
      }

      while (v28);
    }

    a2 = v51;
    a3 = v52;
LABEL_16:
    v38 = sub_10039B51C(v16);

    if (*(v38 + 16) <= a2[2] >> 3)
    {
      v58 = a2;

      sub_10036DEC4(v38);

      v39 = v58;
      if (v58[2])
      {
LABEL_18:
        v40 = static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v41 = static OS_os_log.downloads.getter();
        if (os_log_type_enabled(v41, v40))
        {

          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v58 = v43;
          *v42 = 134349314;
          *(v42 + 4) = *(v39 + 2);

          *(v42 + 12) = 2082;
          v44 = Set.description.getter();
          v46 = sub_1000153E0(v44, v45, &v58);

          *(v42 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v41, v40, "Skipped adding %{public}ld downloads. %{public}s", v42, 0x16u);
          sub_100004590(v43);
        }

        v47 = v54;
        if (!a3)
        {
          goto LABEL_22;
        }

LABEL_21:
        a3(v39);
LABEL_22:

        *v47 = 0;
        *(v47 + 8) = 0;
        return result;
      }
    }

    else
    {

      v39 = sub_10036F0E4(v38, a2);

      if (*(v39 + 2))
      {
        goto LABEL_18;
      }
    }

    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v48 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100400790;
    *(v49 + 56) = &type metadata for Int;
    *(v49 + 64) = &protocol witness table for Int;
    *(v49 + 32) = v55;
    os_log(_:dso:log:_:_:)();

    v47 = v54;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_100365088(uint64_t a1, void (*a2)(void *), uint64_t a3, char a4)
{
  if (a4)
  {
    v27[0] = a1;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    if (swift_dynamicCast())
    {
      v5 = v29;
      v6 = v30;
      v7 = BYTE8(v30);
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v8 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100400790;
      v29 = v5;
      *&v30 = v6;
      BYTE8(v30) = v7;
      sub_1002178A8();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100022C18();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)();

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_1003654C4(v5, v6, v7);
        sub_10033CB14(v5, v6, v7);
      }

      else
      {
        sub_10033CB14(v5, v6, v7);
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v20 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100022C18();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      os_log(_:dso:log:_:_:)();

      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        sub_100010430(v25 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v27, &qword_100581778);

        if (v28)
        {
          sub_1000044A0(v27, v28);
          v29 = 1;
          v30 = 0u;
          v31 = 0u;
          v32 = 2;
          sub_1001D5888(&v29);
          sub_100004590(v27);
        }

        else
        {
          sub_100009104(v27, &qword_100581778);
        }
      }
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v15 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100022C18();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();
  }

  if (a2)
  {
    a2(&_swiftEmptySetSingleton);
  }
}

void sub_1003654C4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a3 > 1u)
  {
    if (a3 == 2 && a1)
    {
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v6 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_100022C18();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      os_log(_:dso:log:_:_:)();

      sub_100010430(v4 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v26, &qword_100581778);
      v11 = v27;
      if (!v27)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_100370B38();
      sub_100010430(v3 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v26, &qword_100581778);
      v11 = v27;
      if (!v27)
      {
        goto LABEL_13;
      }
    }

    sub_1000044A0(v26, v11);
    aBlock = 1;
    v23 = 0u;
    v24 = 0u;
    LOBYTE(v25) = 2;
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100370B38();
    v14 = *(v3 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = *(v14 + 16);
    swift_unknownObjectRetain();

    v18 = v16(v17);

    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = sub_100370E1C;
    v19[6] = v15;
    *(&v24 + 1) = sub_100370E28;
    v25 = v19;
    aBlock = _NSConcreteStackBlock;
    *&v23 = 1107296256;
    *(&v23 + 1) = sub_10000F038;
    *&v24 = &unk_1004F0AA8;
    v20 = _Block_copy(&aBlock);
    v21 = v18;
    sub_1002179DC(a1, a2, 1u);

    [v21 performBlock:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    return;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v5 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)();

  sub_100010430(v4 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v26, &qword_100581778);
  if (v27)
  {
    sub_1000044A0(v26, v27);
    aBlock = 2;
    v23 = 0u;
    v24 = 0u;
    LOBYTE(v25) = 2;
LABEL_12:
    sub_1001D5888(&aBlock);
    sub_100004590(v26);
    return;
  }

LABEL_13:
  sub_100009104(v26, &qword_100581778);
}

id EpisodeDownloadsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeDownloadsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100365B48(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v4 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100400790;
    v16 = a1;
    sub_100217988();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100022C18();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v10 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v14, &qword_100581778);

    if (v15)
    {
      sub_1000044A0(v14, v15);
      v16 = 1;
      v17 = 0u;
      v18 = 0u;
      v11 = 2;
LABEL_8:
      v19 = v11;
      sub_1001D5888(&v16);
      return sub_100004590(v14);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v14, &qword_100581778);

    if (v15)
    {
      sub_1000044A0(v14, v15);
      v16 = a1;
      v17 = a2;
      v18 = 0uLL;
      v11 = 1;
      goto LABEL_8;
    }
  }

  return sub_100009104(v14, &qword_100581778);
}

uint64_t EpisodeDownloadsManager.handleEventsForBackgroundURLSession(identifier:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v43 - v11;

  v13 = sub_10016D7BC();
  if (v14)
  {
    v16 = v13;
    v17 = v14;
    v18 = v15;
    v44 = v7;
    v19 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_expectedDownloaderTypes;
    swift_beginAccess();
    v20 = *(v4 + v19);

    LOBYTE(v19) = sub_1002D4798(v16, v17, v20);

    if (v19)
    {
      v21 = sub_100011218();
      sub_100168088(&unk_100574680);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1004007B0;
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v25 = v45;
      v26 = v46;
      *(v24 + 16) = v23;
      *(v24 + 24) = v25;
      *(v24 + 32) = v26;
      *(v24 + 40) = v16;
      *(v24 + 48) = v17;
      *(v24 + 56) = v18 & 1;
      *(v24 + 64) = a1;
      *(v24 + 72) = a2;
      v50 = sub_100370A04;
      v51 = v24;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v48 = sub_10000F038;
      v49 = &unk_1004F0500;
      v27 = _Block_copy(&aBlock);
      v28 = objc_opt_self();

      v29 = [v28 blockOperationWithBlock:v27];
      _Block_release(v27);

      *(v22 + 32) = v29;
      sub_100009F1C(0, &unk_10057A6A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 addOperations:isa waitUntilFinished:0];

      return 1;
    }

    static Logger.downloads.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136446210;
      strcpy(&aBlock, "ConfigType: ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v41._countAndFlagsBits = v16;
      v41._object = v17;
      String.append(_:)(v41);

      v42 = sub_1000153E0(aBlock, *(&aBlock + 1), &v52);

      *(v39 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "No downloader of type %{public}s", v39, 0xCu);
      sub_100004590(v40);
    }

    else
    {
    }

    (*(v8 + 8))(v12, v44);
  }

  else
  {
    static Logger.downloads.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v7;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&aBlock = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1000153E0(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to handleEventsForBackgroundURLSession for invalid session identifier string: '%{public}s'.", v35, 0xCu);
      sub_100004590(v36);

      (*(v8 + 8))(v10, v34);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  return 0;
}

void sub_1003662C0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v40 = a7;
  v41 = type metadata accessor for Logger();
  v13 = *(v41 - 8);
  __chkstk_darwin();
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v38 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v38 = a3;
    v39 = a2;
    __chkstk_darwin();
    *(&v38 - 4) = v20;
    *(&v38 - 3) = a4;
    *(&v38 - 2) = a5;
    sub_100168088(&qword_1005817D8);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v42[0])
    {
      v21 = v42[1];
      static Logger.downloads.getter();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42[0] = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_1000153E0(v40, a8, v42);
        _os_log_impl(&_mh_execute_header, v22, v23, "Setting background URLSession handler for sessionIdentifier: %{public}s", v24, 0xCu);
        sub_100004590(v25);
      }

      (*(v13 + 8))(v17, v41);
      ObjectType = swift_getObjectType();
      v27 = *(v21 + 56);
      v28 = v38;

      v27(v39, v28, ObjectType, v21);

      swift_unknownObjectRelease();
    }

    else
    {
      static Logger.downloads.getter();

      v29 = v19;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v43[0] = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_1000153E0(v40, a8, v43);
        *(v32 + 12) = 2082;
        swift_beginAccess();

        sub_100168088(&qword_1005818A8);
        sub_10037117C();
        v33 = Dictionary.description.getter();
        v35 = v34;

        v36 = sub_1000153E0(v33, v35, v43);

        *(v32 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Not handling background URLSession events for unknown sessionIdentifier: %{public}s. Found types: %{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      v37 = (*(v13 + 8))(v15, v41);
      (v39)(v37);
    }
  }

  else
  {
    a2();
  }
}

uint64_t sub_100366804(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v87 = a1;
  v9 = type metadata accessor for URL();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v11 - 8);
  v80 = (&v79 - v12);
  v13 = type metadata accessor for AssetDownloadStatus();
  v14 = __chkstk_darwin(v13);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v79 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v79 - v20;
  __chkstk_darwin(v19);
  v23 = &v79 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v84 = v18, v85 = v21, v25 = a5, v26 = Strong, , v26, v27 = a2, v28 = v87[3], v29 = v87[4], sub_1000044A0(v87, v28), v30 = v28, a5 = v25, v31 = (*(v29 + 24))(v30, v29), v32 = v27, v18 = v84, v21 = v85, v33 = sub_1003ACA40(v31, v32, a3, a4 & 1), , v33))
  {
    sub_1003711F4(v25, v23, type metadata accessor for AssetDownloadStatus);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v66 = sub_100168088(&unk_100579C80);
        v67 = &v23[v66[12]];
        v68 = *v67;
        v69 = v67[8];
        v70 = *&v23[v66[16]];
        v71 = *&v23[v66[20]];
        v73 = v81;
        v72 = v82;
        v74 = v23;
        v75 = v83;
        (*(v82 + 32))(v81, v74, v83);
        sub_100172C64(v73, v68, v69, v70, v71, 0, 0);

        return (*(v72 + 8))(v73, v75);
      }

      sub_1001805A4();
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v35 = *v23;
        v36 = v80;
        (*(v82 + 56))(v80, 1, 1, v83);
        sub_10017DCE8(v35, 0, 0, v36);

        return sub_100009104(v36, &qword_100574040);
      }

      v78 = *v23;
      sub_10017FB88(*v23, *(v23 + 1), *(v23 + 2), 0);
    }
  }

  else
  {
    v38 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v39 = static OS_os_log.downloads.getter();
    sub_1003711F4(a5, v21, type metadata accessor for AssetDownloadStatus);
    v40 = v87;
    sub_100004428(v87, v89);
    if (os_log_type_enabled(v39, v38))
    {
      v41 = swift_slowAlloc();
      v85 = a5;
      v42 = v41;
      v88 = swift_slowAlloc();
      *v42 = 136446466;
      sub_1003711F4(v21, v18, type metadata accessor for AssetDownloadStatus);
      v43 = String.init<A>(reflecting:)();
      v45 = v44;
      sub_10037125C(v21, type metadata accessor for AssetDownloadStatus);
      v46 = sub_1000153E0(v43, v45, &v88);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v47 = v90;
      v48 = v91;
      sub_1000044A0(v89, v90);
      v49 = (*(v48 + 56))(v47, v48);
      v51 = v50;
      sub_100004590(v89);
      v52 = sub_1000153E0(v49, v51, &v88);
      v40 = v87;

      *(v42 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v39, v38, "URLSession delivered status update for download that does not exist. Status: %{public}s. Task description:%{public}s", v42, 0x16u);
      swift_arrayDestroy();

      a5 = v85;
    }

    else
    {

      sub_10037125C(v21, type metadata accessor for AssetDownloadStatus);
      sub_100004590(v89);
    }

    v53 = v86;
    sub_1003711F4(a5, v86, type metadata accessor for AssetDownloadStatus);
    v54 = swift_getEnumCaseMultiPayload();
    result = sub_10037125C(v53, type metadata accessor for AssetDownloadStatus);
    if (v54 == 1)
    {
      v55 = static os_log_type_t.error.getter();
      v56 = static OS_os_log.downloads.getter();
      sub_100004428(v40, v89);
      if (os_log_type_enabled(v56, v55))
      {
        v57 = v40;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v88 = v59;
        *v58 = 136446210;
        v60 = v90;
        v61 = v91;
        sub_1000044A0(v89, v90);
        v62 = (*(v61 + 56))(v60, v61);
        v64 = v63;
        sub_100004590(v89);
        v65 = sub_1000153E0(v62, v64, &v88);

        *(v58 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v55, "Cancel untracked download. Task description:%{public}s", v58, 0xCu);
        sub_100004590(v59);

        v40 = v57;
      }

      else
      {

        sub_100004590(v89);
      }

      v76 = v40[3];
      v77 = v40[4];
      sub_1000044A0(v40, v76);
      return (*(v77 + 120))(v76, v77);
    }
  }

  return result;
}

uint64_t sub_100366FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_delegateQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  v17 = v4;
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t MTLegacyDownloadProtocol.logDescription.getter(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(376);
  v4._object = 0x80000001004717A0;
  v4._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v4);
  v5 = [v1 podcastUuid];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_100168088(&qword_100574230);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._object = 0x80000001004717C0;
  v11._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v11);
  v12 = [v2 episodeUuid];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._object = 0x80000001004717E0;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19 = [v2 episodeGuid];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  v25._object = 0x8000000100471800;
  v25._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v25);
  v26 = [v2 storeItemId];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 longLongValue];
  }

  else
  {
    v28 = 0;
  }

  LOBYTE(v74) = v27 == 0;
  sub_100168088(&qword_1005741A0);
  v29._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000022;
  v30._object = 0x8000000100471820;
  String.append(_:)(v30);
  v31 = [v2 storeCollectionIdentifier];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 longLongValue];
  }

  else
  {
    v33 = 0;
  }

  LOBYTE(v75) = v32 == 0;
  v34._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v34);

  v35._object = 0x8000000100471850;
  v35._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v35);
  v72 = [v2 downloadBytes];
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x8000000100471870;
  String.append(_:)(v37);
  v73 = [v2 downloadBytes];
  v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD000000000000018;
  v39._object = 0x8000000100471890;
  String.append(_:)(v39);
  [v2 downloadProgress];
  v40._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v40);

  v41._object = 0x80000001004718B0;
  v41._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v41);
  [v2 downloadPhase];
  type metadata accessor for MTEpisodeDownloadPhase(0);
  v42._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0xD00000000000001CLL;
  v43._object = 0x80000001004718D0;
  String.append(_:)(v43);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = v2;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_100371174;
  *(v45 + 24) = v44;
  v76 = v45;
  swift_unknownObjectRetain();
  sub_100168088(&unk_1005815D8);
  v46._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0xD00000000000001ELL;
  v47._object = 0x80000001004718F0;
  String.append(_:)(v47);
  [v2 downloadRemainingTime];
  v48._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0xD000000000000019;
  v49._object = 0x8000000100471910;
  String.append(_:)(v49);
  v50 = [v2 downloadDescription];
  if (v50)
  {
    v51 = v50;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
  }

  else
  {
    v54 = 0xE400000000000000;
    v52 = 1162760014;
  }

  v55._countAndFlagsBits = v52;
  v55._object = v54;
  String.append(_:)(v55);

  v56._object = 0x8000000100471930;
  v56._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v56);
  v57 = [v2 isPausable];
  v58 = v57 == 0;
  if (v57)
  {
    v59 = 5457241;
  }

  else
  {
    v59 = 20302;
  }

  if (v58)
  {
    v60 = 0xE200000000000000;
  }

  else
  {
    v60 = 0xE300000000000000;
  }

  v61 = v60;
  String.append(_:)(*&v59);

  v62._countAndFlagsBits = 0xD000000000000012;
  v62._object = 0x8000000100471950;
  String.append(_:)(v62);
  v63 = [v2 isPaused];
  v64 = v63 == 0;
  if (v63)
  {
    v65 = 5457241;
  }

  else
  {
    v65 = 20302;
  }

  if (v64)
  {
    v66 = 0xE200000000000000;
  }

  else
  {
    v66 = 0xE300000000000000;
  }

  v67 = v66;
  String.append(_:)(*&v65);

  v68._object = 0x8000000100471970;
  v68._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v68);
  [v2 phase];
  type metadata accessor for LegacyDownloadPhase(0);
  v69._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v69);

  v70._countAndFlagsBits = 32010;
  v70._object = 0xE200000000000000;
  String.append(_:)(v70);
  return 0;
}

uint64_t sub_1003679B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), const char *a6)
{
  v28 = a6;
  v29 = type metadata accessor for Logger();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v17 = sub_10020ED6C();
  sub_10037125C(v15, type metadata accessor for DownloadJob);
  v18 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier);
  if (v18)
  {
    [v18 _sendDelegateSelector:*a4 withDownload:{v17, v28}];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = a5();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    ObjectType = swift_getObjectType();
    v24 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v26 = sub_1000153E0(v24, v25, &v30);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, v28, v21, 0xCu);
    sub_100004590(v22);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v10 + 8))(v12, v29);
}

uint64_t sub_100367CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v11 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_10020ED6C();
  sub_10037125C(v9, type metadata accessor for DownloadJob);
  v12 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier);
  if (v12)
  {
    v27 = "downloadManagerDidRemoveDownloads:";
    sub_100168088(&unk_100574680);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1004007B0;
    v14 = *(a1 + v10);
    OS_dispatch_queue.sync<A>(execute:)();

    v15 = sub_10020ED6C();
    sub_10037125C(v9, type metadata accessor for DownloadJob);
    *(v13 + 32) = v15;
    sub_100168088(&unk_100576C80);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 _sendDelegateSelector:v27 withDownloads:isa];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    ObjectType = swift_getObjectType();
    v22 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v24 = sub_1000153E0(v22, v23, &v30);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Download pipeline did send notification for pipeline cancel: %s", v19, 0xCu);
    sub_100004590(v20);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v28 + 8))(v6, v29);
}

uint64_t sub_10036805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v6 = v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);

  v18 = v17;
  OS_dispatch_queue.sync<A>(execute:)();

  v19 = &v16[*(v14 + 20)];
  v20 = *v19;
  v21 = v19[1];

  sub_10037125C(v16, type metadata accessor for DownloadJob);
  sub_1003AC6C4(v20, v21);

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v6;
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  v24 = v6;
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000E614(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v10, v8);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_1003683FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v15 = sub_10020ED6C();
  sub_10037125C(v13, type metadata accessor for DownloadJob);
  v16 = *(a2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_notifier);
  v17 = &selRef_viewAccountEmail;
  if (v16)
  {
    [v16 _sendDelegateSelector:"downloadManagerWillRemoveDownload:" withDownload:v15];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v10;
    v23 = v22;
    v43[0] = v22;
    *v21 = 136315138;
    ObjectType = swift_getObjectType();
    v25 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v27 = v8;
    v28 = v5;
    v29 = sub_1000153E0(v25, v26, v43);

    *(v21 + 4) = v29;
    v5 = v28;
    v8 = v27;
    v17 = &selRef_viewAccountEmail;
    _os_log_impl(&_mh_execute_header, v18, v19, "Download pipeline did send notification for pipeline removal: %s", v21, 0xCu);
    sub_100004590(v23);

    v4 = v42;

    v30 = *(v5 + 8);
    v30(v41, v4);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v10, v4);
  }

  if (v16)
  {
    [v16 v17[300]];
  }

  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v5;
    v43[0] = v34;
    v35 = v34;
    *v33 = 136315138;
    v36 = swift_getObjectType();
    v37 = MTLegacyDownloadProtocol.logDescription.getter(v36);
    v39 = sub_1000153E0(v37, v38, v43);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Download pipeline did send notification for pipeline update: %s", v33, 0xCu);
    sub_100004590(v35);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (v30)(v8, v4);
}

void sub_100368838(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v82 = a3;
  v84 = a2;
  v8 = 0xD00000000000002DLL;
  v9 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036805C(a1, sub_100371398, &unk_1004F0D88, sub_100370FB0, &unk_1004F0DA0);
  v81 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v12 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v13 = &v11[*(v9 + 32)];
  v15 = *v13;
  v14 = *(v13 + 1);

  sub_10037125C(v11, type metadata accessor for DownloadJob);
  v16 = *sub_1000044A0((v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration), *(v5 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_downloaderConfiguration + 24));
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = "ts.downloads.episodes.restore";
    }

    else
    {
      v17 = "ts.downloads.episodes.headers";
      v8 = 0xD00000000000002FLL;
    }
  }

  else if (v16)
  {
    v17 = "sodes.userInitiated";
  }

  else
  {
    v8 = 0xD000000000000033;
    v17 = "bytes";
  }

  if (v15 == v8 && (v17 | 0x8000000000000000) == v14)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v20 = 0;
      v21 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_systemEpisodeStorage;
      goto LABEL_16;
    }
  }

  v20 = 1;
  v21 = &OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userEpisodeStorage;
LABEL_16:
  v22 = *v21;
  v83 = v5;
  v23 = *(v5 + v22);
  v24 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_type);
  if (!(a4 >> 6))
  {
    if (((v24 | v20 ^ 1) & 1) == 0)
    {
      swift_unknownObjectRetain();
      LODWORD(v82) = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v79 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1004007C0;
      v36 = v81;
      v37 = *(a1 + v81);
      OS_dispatch_queue.sync<A>(execute:)();

      v38 = &v11[*(v9 + 20)];
      v40 = *v38;
      v39 = *(v38 + 1);

      v78 = type metadata accessor for DownloadJob;
      sub_10037125C(v11, type metadata accessor for DownloadJob);
      *(v35 + 56) = &type metadata for String;
      v41 = sub_100022C18();
      v80 = v23;
      v42 = v41;
      *(v35 + 64) = v41;
      *(v35 + 32) = v40;
      *(v35 + 40) = v39;
      swift_getErrorValue();
      v43 = Error.localizedDescription.getter();
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v42;
      *(v35 + 72) = v43;
      *(v35 + 80) = v44;
      v45 = v79;
      os_log(_:dso:log:_:_:)();

      v46 = *(a1 + v36);
      OS_dispatch_queue.sync<A>(execute:)();

      v47 = &v11[*(v9 + 20)];
      v49 = *v47;
      v48 = *(v47 + 1);

      sub_10037125C(v11, v78);
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = a1;
      v52 = *(v80 + 16);

      v54 = v52(v53);

      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = v49;
      v55[4] = v48;
      v55[5] = sub_100370F70;
      v55[6] = v51;
      *&aBlock[32] = sub_100370F7C;
      v87 = v55;
      *aBlock = _NSConcreteStackBlock;
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_10000F038;
      *&aBlock[24] = &unk_1004F0D50;
      v56 = _Block_copy(aBlock);
      v57 = v54;

      [v57 performBlock:v56];
      _Block_release(v56);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_29;
  }

  if (a4 >> 6 != 1)
  {
    if (((v24 | v20 ^ 1) & 1) == 0)
    {
      swift_unknownObjectRetain();
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v69 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v71 = Error.localizedDescription.getter();
      v73 = v72;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = sub_100022C18();
      *(v70 + 32) = v71;
      *(v70 + 40) = v73;
      os_log(_:dso:log:_:_:)();

      sub_100010430(v83 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v88, &qword_100581778);
      if (!v89)
      {
LABEL_45:
        swift_unknownObjectRelease();
LABEL_46:
        sub_100009104(v88, &qword_100581778);
        return;
      }

      sub_1000044A0(v88, v89);
      *aBlock = 1;
      memset(&aBlock[8], 0, 32);
      LOBYTE(v87) = 2;
      sub_1001D5888(aBlock);
      goto LABEL_41;
    }

LABEL_29:
    v58 = a4;
    swift_unknownObjectRetain();
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v59 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1004007E0;
    v61 = sub_100022C18();
    v62 = v61;
    v63 = 28526;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = v61;
    if (v20)
    {
      v64 = 7562617;
    }

    else
    {
      v64 = 28526;
    }

    if (v20)
    {
      v65 = 0xE300000000000000;
    }

    else
    {
      v65 = 0xE200000000000000;
    }

    *(v60 + 32) = v64;
    *(v60 + 40) = v65;
    if (v24)
    {
      v63 = 7562617;
      v66 = 0xE300000000000000;
    }

    else
    {
      v66 = 0xE200000000000000;
    }

    *(v60 + 96) = &type metadata for String;
    *(v60 + 104) = v61;
    *(v60 + 72) = v63;
    *(v60 + 80) = v66;
    *aBlock = v84;
    *&aBlock[8] = v82;
    aBlock[16] = v58;
    sub_100182864();
    v67 = Error.localizedDescription.getter();
    *(v60 + 136) = &type metadata for String;
    *(v60 + 144) = v62;
    *(v60 + 112) = v67;
    *(v60 + 120) = v68;
    os_log(_:dso:log:_:_:)();

    goto LABEL_50;
  }

  if ((a4 & 0x3F) == 0)
  {
    swift_unknownObjectRetain();
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v74 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_100400790;
    *(v75 + 56) = &type metadata for Int64;
    *(v75 + 64) = &protocol witness table for Int64;
    *(v75 + 32) = v84;
    os_log(_:dso:log:_:_:)();

    goto LABEL_50;
  }

  if ((a4 & 0x3F) != 1)
  {
    if (v84 | v82)
    {
      swift_unknownObjectRetain();
      static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v76 = static OS_os_log.downloads.getter();
      os_log(_:dso:log:_:_:)();

      goto LABEL_50;
    }

    sub_100010430(v83 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v88, &qword_100581778);
    if (!v89)
    {
      goto LABEL_46;
    }

    sub_1000044A0(v88, v89);
    memset(aBlock, 0, sizeof(aBlock));
    LOBYTE(v87) = 2;
    swift_unknownObjectRetain();
    sub_1001D5888(aBlock);
LABEL_41:
    swift_unknownObjectRelease();
    sub_100004590(v88);
    return;
  }

  swift_unknownObjectRetain();
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v25 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100400790;
  v27 = *(a1 + v81);
  OS_dispatch_queue.sync<A>(execute:)();

  v28 = &v11[*(v9 + 20)];
  v30 = *v28;
  v29 = *(v28 + 1);

  sub_10037125C(v11, type metadata accessor for DownloadJob);
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100022C18();
  *(v26 + 32) = v30;
  *(v26 + 40) = v29;
  os_log(_:dso:log:_:_:)();

  if (v20)
  {
    v31 = _convertErrorToNSError(_:)();
    v32 = [v31 ams_underlyingErrorWithDomain:AKAppleIDAuthenticationErrorDomain code:-7003];

    v33 = v83;
    if (v32)
    {
    }

    swift_getErrorValue();
    if (sub_10036951C(v85))
    {
      sub_100010430(v33 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v88, &qword_100581778);
      if (v89)
      {
        sub_1000044A0(v88, v89);
        v34 = 3;
LABEL_54:
        *aBlock = v34;
        memset(&aBlock[8], 0, 32);
        LOBYTE(v87) = 2;
        sub_1001D5888(aBlock);
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    if (!v32)
    {
      sub_100010430(v33 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v88, &qword_100581778);
      if (v89)
      {
        sub_1000044A0(v88, v89);
        v34 = 1;
        goto LABEL_54;
      }

      goto LABEL_45;
    }
  }

LABEL_50:
  swift_unknownObjectRelease();
}

uint64_t sub_10036951C(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 domain];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  type metadata accessor for StandardKeyRequestHandler();
  if (v9 == static StandardKeyRequestHandler.keyRequestLicenseErrorDomain.getter() && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_1003696EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 136;
  if (a3)
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v12 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v13 = swift_allocObject();
    v36 = xmmword_100400790;
    *(v13 + 16) = xmmword_100400790;
    *&v39 = a1;
    sub_100217988();
    v14 = Error.localizedDescription.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100022C18();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v37, &qword_100581778);

    if (v38)
    {
      sub_1000044A0(v37, v38);
      sub_100168088(&qword_100574690);
      inited = swift_initStackObject();
      *(inited + 16) = v36;
      v20 = *(a5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v21 = &v11[*(v9 + 20)];
      v23 = *v21;
      v22 = *(v21 + 1);

      sub_10037125C(v11, type metadata accessor for DownloadJob);
      *(inited + 32) = v23;
      *(inited + 40) = v22;
      v24 = sub_10039B51C(inited);
      swift_setDeallocating();
      sub_1002D23B8(inited + 32);
      v25 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v39 = 0uLL;
      v40 = v24;
      v41 = sub_100370F94;
      v42 = v25;
      v43 = 0;

      sub_1001D5888(&v39);
LABEL_8:

      return sub_100004590(v37);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v27 = result;
    sub_100010430(result + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_userAlertsPresenter, v37, &qword_100581778);
    sub_100261508(a1, a2, 0);

    if (v38)
    {
      sub_1000044A0(v37, v38);
      sub_100168088(&qword_100574690);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_100400790;
      v29 = *(a5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v30 = &v11[*(v9 + 20)];
      v32 = *v30;
      v31 = *(v30 + 1);

      sub_10037125C(v11, type metadata accessor for DownloadJob);
      *(v28 + 32) = v32;
      *(v28 + 40) = v31;
      v33 = sub_10039B51C(v28);
      swift_setDeallocating();
      sub_1002D23B8(v28 + 32);
      v34 = swift_allocObject();
      swift_beginAccess();
      v35 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *&v39 = a1;
      *(&v39 + 1) = a2;
      v40 = v33;
      v41 = sub_100371394;
      v42 = v34;
      v43 = 0;

      sub_1001D5888(&v39);
      sub_100261518(a1, a2, 0);
      goto LABEL_8;
    }

    sub_100261518(a1, a2, 0);
  }

  return sub_100009104(v37, &qword_100581778);
}

uint64_t sub_100369C14(uint64_t a1)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v2 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100400790;
  v4 = *(a1 + 16);
  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v4;
  os_log(_:dso:log:_:_:)();

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v7 &= v7 - 1;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;

      v13 = String._bridgeToObjectiveC()();
      [v12 downloadEpisode:v13 isFromSaving:0];
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void EpisodeDownloadsManager.restoreDownloadedEpisodes(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = *(a1 + 16);
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v10;
  os_log(_:dso:log:_:_:)();

  v11 = sub_100011218();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v15[4] = sub_100370A4C;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000F038;
  v15[3] = &unk_1004F0578;
  v13 = _Block_copy(v15);
  v14 = v4;

  sub_100013CB4(a2);

  [v11 addOperationWithBlock:v13];
  _Block_release(v13);
}

Swift::Void __swiftcall EpisodeDownloadsManager.downloadEpisode(_:isFromSaving:)(Swift::String _, Swift::Bool isFromSaving)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v7 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100400790;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100022C18();
  *(v8 + 32) = countAndFlagsBits;
  *(v8 + 40) = object;

  os_log(_:dso:log:_:_:)();

  v9 = sub_100011218();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = countAndFlagsBits;
  *(v10 + 32) = object;
  *(v10 + 40) = isFromSaving;
  v13[4] = sub_100370A7C;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000F038;
  v13[3] = &unk_1004F05C8;
  v11 = _Block_copy(v13);

  v12 = v3;

  [v9 addOperationWithBlock:v11];
  _Block_release(v11);
}

uint64_t sub_10036A25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;

  sub_100360558(a2, a3, sub_100371118, v7);
}

void sub_10036A2FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((sub_1002D4798(a2, a3, a1) & 1) == 0)
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 mainOrPrivateContext];

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4 & 1;
    v12[4] = sub_100371164;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10000F038;
    v12[3] = &unk_1004F0F58;
    v10 = _Block_copy(v12);
    v11 = v8;

    [v11 performBlockAndWaitWithSave:v10];
    _Block_release(v10);
  }
}

void sub_10036A454(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = String._bridgeToObjectiveC()();
  v8 = [a1 episodeForUuid:v6];

  if (v8)
  {
    if (a4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    [v8 setDownloadBehavior:v7];
  }
}

void EpisodeDownloadsManager.addEpisodeAutoDownloads(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v9, v8))
  {

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(a1 + 16);

    *(v10 + 12) = 2082;
    v12 = Set.description.getter();
    v14 = sub_1000153E0(v12, v13, v19);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v8, "Add auto downloads for %{public}ld episodes: %{public}s", v10, 0x16u);
    sub_100004590(v11);
  }

  v15 = sub_100011218();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v19[4] = sub_100370ADC;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10000F038;
  v19[3] = &unk_1004F0618;
  v17 = _Block_copy(v19);

  v18 = v4;
  sub_100013CB4(a2);

  [v15 addOperationWithBlock:v17];
  _Block_release(v17);
}

Swift::Bool __swiftcall EpisodeDownloadsManager.resumeOrPauseEpisodeDownload(withUuid:)(Swift::String withUuid)
{
  v23 = withUuid;
  v2 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);
  v6 = *(v5 + 16);

  [v6 lock];
  swift_beginAccess();
  v7 = *(v5 + 24);
  v20 = v5;
  if (v7 >> 62)
  {
LABEL_25:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }
      }

      v12 = *(v10 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v13 = &v4[*(v2 + 20)];
      v15 = *v13;
      v14 = *(v13 + 1);

      sub_10037125C(v4, type metadata accessor for DownloadJob);
      if (v15 == v23._countAndFlagsBits && v14 == v23._object)
      {

LABEL_20:

        goto LABEL_21;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_20;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  v10 = 0;
LABEL_21:
  [*(v20 + 16) unlock];

  if (v10)
  {
    sub_1001723C8();
  }

  return v10 != 0;
}

Swift::Void __swiftcall EpisodeDownloadsManager.cancelDownloads(forEpisodeUuid:userInitiated:)(Swift::String forEpisodeUuid, Swift::Bool userInitiated)
{
  object = forEpisodeUuid._object;
  countAndFlagsBits = forEpisodeUuid._countAndFlagsBits;
  v5 = sub_100011218();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = countAndFlagsBits;
  *(v7 + 32) = object;
  *(v7 + 40) = userInitiated;
  v9[4] = sub_100370B28;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000F038;
  v9[3] = &unk_1004F0668;
  v8 = _Block_copy(v9);

  [v5 addOperationWithBlock:v8];
  _Block_release(v8);
}

void *EpisodeDownloadsManager.cancelAllDownloads(userInitiated:)(char a1)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v5 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v4, "Cancelling all downloads. User Initiated: %{BOOL,public}d", v6, 8u);
  }

  v10 = &_swiftEmptySetSingleton;
  v7 = v2;

  sub_1003ADBE4(v8, v7, a1 & 1, &v10);

  return v10;
}

void sub_10036AF50(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v56 = a2;
  v57 = a3;
  v55 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v53 = a4;
  v8 = *(Strong + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);
  v9 = Strong;

  [*(v8 + 16) lock];
  swift_beginAccess();
  v52 = v8;
  v10 = *(v8 + 24);
  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v11)
  {
    v12 = 0;
    v54 = v10 & 0xC000000000000001;
    do
    {
      if (v54)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v13 = *(v10 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_18;
        }
      }

      v15 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v16 = v55;
      OS_dispatch_queue.sync<A>(execute:)();

      v17 = &v6[*(v16 + 20)];
      v19 = *v17;
      v18 = *(v17 + 1);

      sub_10037125C(v6, type metadata accessor for DownloadJob);
      if (v19 == v56 && v18 == v57)
      {

LABEL_21:

        goto LABEL_22;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_21;
      }

      ++v12;
    }

    while (v14 != v11);
  }

  v13 = 0;
LABEL_22:
  [*(v52 + 16) unlock];

  v22 = v53;
  if (v13)
  {
    v23 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v24 = static OS_os_log.downloads.getter();
    v25 = os_log_type_enabled(v24, v23);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136446210;
        v28 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v29 = v55;
        OS_dispatch_queue.sync<A>(execute:)();

        v30 = &v6[*(v29 + 20)];
        v31 = *v30;
        v32 = v30[1];

        sub_10037125C(v6, type metadata accessor for DownloadJob);
        v33 = sub_1000153E0(v31, v32, aBlock);

        *(v26 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v24, v23, "Cancelling download pipeline for episode uuid %{public}s", v26, 0xCu);
        sub_100004590(v27);
      }

      v34 = [objc_opt_self() sharedInstance];
      v35 = [v34 mainOrPrivateContext];

      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v13;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100371110;
      *(v37 + 24) = v36;
      aBlock[4] = sub_10002D7F0;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002D904;
      aBlock[3] = &unk_1004F0EE0;
      v38 = _Block_copy(aBlock);

      v39 = v35;

      [v39 performBlockAndWait:v38];
      _Block_release(v38);
      LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

      if (v38)
      {
        __break(1u);
      }

      else
      {
        sub_100170BCC();
      }
    }

    else
    {
      if (v25)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136446210;
        v46 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
        v47 = v55;
        OS_dispatch_queue.sync<A>(execute:)();

        v48 = &v6[*(v47 + 20)];
        v49 = *v48;
        v50 = v48[1];

        sub_10037125C(v6, type metadata accessor for DownloadJob);
        v51 = sub_1000153E0(v49, v50, aBlock);

        *(v44 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v24, v23, "Non-interactive download pipeline cancellation for episode uuid %{public}s", v44, 0xCu);
        sub_100004590(v45);
      }

      sub_100170BCC();
    }
  }

  else
  {
LABEL_28:
    v40 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v41 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1000153E0(v56, v57, aBlock);
      _os_log_impl(&_mh_execute_header, v41, v40, "Trying to cancel download but pipeline with episode uuid %{public}s not found, no download in flight.", v42, 0xCu);
      sub_100004590(v43);
    }
  }
}

void sub_10036B6B0(void *a1, uint64_t a2)
{
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_10037125C(v5, type metadata accessor for DownloadJob);
  v7 = String._bridgeToObjectiveC()();

  v8 = [a1 episodeForUuid:v7];

  if (v8)
  {
    [v8 setDownloadBehavior:3];
    [a1 saveInCurrentBlock];
  }
}

Swift::String_optional __swiftcall EpisodeDownloadsManager.episodeUuidForDownload(withAdamID:)(NSNumber withAdamID)
{
  v2 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_1003ACEB8([(objc_class *)withAdamID.super.super.isa longLongValue]);

  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = &v4[*(v2 + 20)];
    v8 = *v7;
    v9 = v7[1];

    sub_10037125C(v4, type metadata accessor for DownloadJob);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

void EpisodeDownloadsManager.removeDownload(_:shouldAllowAutomaticRedownloads:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v12 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100400790;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100022C18();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  os_log(_:dso:log:_:_:)();

  v14 = *(v6 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_episodeRemover);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  v18[4] = sub_100370BF8;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000F038;
  v18[3] = &unk_1004F06B8;
  v17 = _Block_copy(v18);

  [v14 removeDownloadedEpisodeWithUuid:v15 completion:v17];
  _Block_release(v17);
}

uint64_t sub_10036BBD4(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = v10;
  v17[4] = sub_1003710FC;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000F038;
  v17[3] = &unk_1004F0E68;
  v12 = _Block_copy(v17);
  v13 = v9;

  [v13 performBlockAndWaitWithSave:v12];
  _Block_release(v12);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v15 = *(v10 + 24);

  a4(a1, a2, v14, v15);
}

void sub_10036BDA8(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 episodeForUuid:v8];

  if (v9)
  {
    if (a4 & 1) != 0 && (v10 = type metadata accessor for Podcasts(), v18[3] = v10, v18[4] = sub_10000E614(&qword_1005742C0, &type metadata accessor for Podcasts), v11 = sub_10000E680(v18), (*(*(v10 - 8) + 104))(v11, enum case for Podcasts.serialSortAutoDownloads(_:), v10), LOBYTE(v10) = isFeatureEnabled(_:)(), sub_100004590(v18), (v10))
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    [v9 setDownloadBehavior:v12];
    v13 = [v9 podcastUuid];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    swift_beginAccess();
    *(a5 + 16) = v15;
    *(a5 + 24) = v17;
  }
}

void sub_10036C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

void EpisodeDownloadsManager.removeDownloadedEpisodes(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19[1] = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v13 = Set.description.getter();
    v15 = sub_1000153E0(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduling work to remove episodes: %{public}s", v11, 0xCu);
    sub_100004590(v12);
  }

  (*(v5 + 8))(v7, v4);
  v16 = sub_100011218();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_100370C08;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F0708;
  v18 = _Block_copy(aBlock);

  [v16 addOperationWithBlock:v18];
  _Block_release(v18);
}

void sub_10036C320()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v1 removeDownloadAssetsForEpisodeUuids:isa];
  }

  else
  {
    __break(1u);
  }
}

Swift::Int __swiftcall EpisodeDownloadsManager.numberOfDownloads(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 numberOfDownloadsFrom:v9];

  static Logger.downloads.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1000153E0(countAndFlagsBits, object, &v17);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Data Source reports number of downloads for uuid: %s is: %ld", v13, 0x16u);
    sub_100004590(v14);
  }

  (*(v5 + 8))(v7, v4);
  return v10;
}

Swift::Int __swiftcall EpisodeDownloadsManager.numberOfDownloads()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage) numberOfDownloads];
  static Logger.downloads.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Data Source reports total number of downloads is: %ld", v9, 0xCu);
  }

  (*(v2 + 8))(v5, v1);
  return v6;
}

id EpisodeDownloadsManager.download(at:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage) downloadAtIndex:{a1, v5}];
  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v14 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v16 = sub_1000153E0(v14, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Data Source reports download at index: %ld is: %s", v11, 0x16u);
    sub_100004590(v12);
  }

  (*(v4 + 8))(v7, v3);
  return v8;
}

id EpisodeDownloadsManager.index(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage) indexForDownload:{a1, v5}];
  static Logger.downloads.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v8;
    *(v11 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v14 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v16 = sub_1000153E0(v14, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Data Source reports index (%ld) for download: %s", v11, 0x16u);
    sub_100004590(v12);
  }

  (*(v4 + 8))(v7, v3);
  return v8;
}

id EpisodeDownloadsManager.downloadForEpisode(withUuid:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_inMemoryStorage);

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 downloadForEpisodeWithUuid:v10];

  static Logger.downloads.getter();

  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v5;
    v15 = v14;
    v22 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1000153E0(a1, a2, &v22);
    *(v15 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v17 = MTLegacyDownloadProtocol.logDescription.getter(ObjectType);
    v19 = sub_1000153E0(v17, v18, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Data Source reports download for episode with uuid: %s is: %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

uint64_t sub_10036CFA0(void *a1)
{
  v1 = [a1 downloadDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Void __swiftcall EpisodeDownloadsManager.invalidateURLSessions()()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager__downloaders;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 72);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10036D188(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100168088(a3);
  v6 = __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = __chkstk_darwin(v6);
  v11 = v20 - v10 + 16;
  __chkstk_darwin(v9);
  v13 = v20 - v12 + 16;
  sub_10001B944(a1, v20);
  swift_dynamicCast();
  sub_100010430(v13, v11, a3);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    sub_100009104(v11, a3);
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_100010430(v13, v8, a3);
      v16 = *((swift_isaMask & *v15) + 0x180);
      swift_beginAccess();
      sub_100016A14(v8, v15 + v16, a3);
      swift_endAccess();
LABEL_6:
    }
  }

  return sub_100009104(v13, a3);
}

uint64_t sub_10036D39C(uint64_t a1)
{
  sub_10001B944(a1, v14);
  sub_100168088(&unk_100581898);
  swift_dynamicCast();
  v1 = v18;
  if (v18 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v5 + *((swift_isaMask & *v5) + 0x180);
      swift_beginAccess();
      v8 = *v7;
      v9 = *(v7 + 1);
      *v7 = v2;
      *(v7 + 1) = v3;
      v10 = v7[16];
      v7[16] = v4;
      v11 = v7[17];
      v7[17] = v1;
      sub_100371028(v2, v3, v4, v1);
      sub_100370FF0(v8, v9, v10, v11);
LABEL_6:
    }
  }

  return sub_100370FF0(v15, v16, v17, v18);
}

uint64_t sub_10036D558(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005735D0);
  v3 = __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = __chkstk_darwin(v3);
  v8 = v17 - v7 + 16;
  __chkstk_darwin(v6);
  v10 = v17 - v9 + 16;
  sub_10001B944(a1, v17);
  swift_dynamicCast();
  sub_100010430(v10, v8, &qword_1005735D0);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    sub_100009104(v8, &qword_1005735D0);
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_100010430(v10, v5, &qword_1005735D0);
      v13 = *((swift_isaMask & *v12) + 0x198);
      swift_beginAccess();
      sub_100016A14(v5, v12 + v13, &qword_1005735D0);
      swift_endAccess();
LABEL_6:
    }
  }

  return sub_100009104(v10, &qword_1005735D0);
}

uint64_t sub_10036D7D0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10001B944(a1, &v13);
  sub_100168088(&qword_100578BE0);
  swift_dynamicCast();
  v4 = v15;
  if (v15 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v14;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v6 + *a3;
      v9 = *v8;
      *v8 = v5;
      v10 = *(v8 + 8);
      *(v8 + 8) = v4;
      sub_1000314A0(v5, v4);
      sub_10003163C(v9, v10);
LABEL_6:
    }
  }

  return sub_10003163C(v14, v15);
}

uint64_t sub_10036D968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  sub_10001B944(a1, &v16);
  sub_100168088(a3);
  swift_dynamicCast();
  v7 = v18;
  if (v18 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = v17;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = v9 + *a5;
      v12 = *v11;
      *v11 = v8;
      v13 = *(v11 + 8);
      *(v11 + 8) = v7;
      sub_10003B668(v8, v7);
      sub_10003B684(v12, v13);
LABEL_6:
    }
  }

  return sub_10003B684(v17, v18);
}

void sub_10036DA88(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_1005747D0);
    sub_100276194();
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1000319D8();
      return;
    }

    while (1)
    {
      v16 = sub_100292F50(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100009F1C(0, &qword_1005747D0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10036DCA8(uint64_t a1)
{
  v3 = sub_100168088(&unk_100581810);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for ShowInfo();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_100009104(v5, &unk_100581810))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_10029326C(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10036DEC4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10029351C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10036DFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_1005747D0);
    sub_100276194();
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_100009F1C(0, &qword_1005747D0);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100009F1C(0, &qword_1005747D0);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_100370034(v63, v61, v4, v3, &unk_100581840);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_10036F654(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_1000319D8();
  return v3;
}

void *sub_10036E680(uint64_t a1, void *a2)
{
  v5 = sub_100168088(&unk_100581810);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for ShowInfo();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_100009104(v30, &unk_100581810);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_10000E614(&qword_10057E770, &type metadata accessor for ShowInfo);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_10000E614(&unk_100581820, &type metadata accessor for ShowInfo);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_100009104(v24, &unk_100581810);
        a2 = sub_100370220(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_10036F900(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_1000319D8();
  return a2;
}

_BYTE *sub_10036F0E4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v52 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v56 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v60 = a2 + 7;

  v15 = 0;
  v58 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v59 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << v5[32];
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v60[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v58;
    v15 = v59;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 6) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v60[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v58;
  v27 = v59;
  v62 = v56;
  v63 = v59;
  v64 = v11;
  v61[0] = v58;
  v61[1] = v7;

  v28 = v5[32];
  v53 = ((1 << v28) + 63) >> 6;
  v14 = 8 * v53;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v54 = &v52;
    __chkstk_darwin();
    v2 = &v52 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v60, v29);
    v30 = *(v2 + 8 * v8) & ~v4;
    v31 = *(v5 + 2);
    v57 = v2;
    *(v2 + 8 * v8) = v30;
    v32 = v31 - 1;
LABEL_23:
    v55 = v32;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v34 = v27;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v12)
      {
        v5 = sub_100370548(v57, v53, v55, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v35);
      ++v34;
      if (v11)
      {
        v27 = v35;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v36 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v37 = *(v3 + 48);
            v59 = v27;
            v38 = (v37 + ((v27 << 10) | (16 * v36)));
            v39 = *v38;
            v4 = v38[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v40 = Hasher._finalize()();
            v41 = -1 << v5[32];
            v8 = v40 & ~v41;
            v2 = v8 >> 6;
            v42 = 1 << v8;
            if (((1 << v8) & v60[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v59;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v43 = (*(v5 + 6) + 16 * v8);
          if (*v43 != v39 || v43[1] != v4)
          {
            v45 = ~v41;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v45;
              v2 = v8 >> 6;
              v42 = 1 << v8;
              if (((1 << v8) & v60[v8 >> 6]) == 0)
              {
                v3 = v58;
                goto LABEL_45;
              }

              v46 = (*(v5 + 6) + 16 * v8);
              if (*v46 == v39 && v46[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v58;
          v33 = v57[v2];
          v57[v2] = v33 & ~v42;
          v26 = (v33 & v42) == 0;
          v27 = v59;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v32 = v55 - 1;
        if (__OFSUB__(v55, 1))
        {
          __break(1u);
        }

        if (v55 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v48 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v59;
  }

  v49 = swift_slowAlloc();
  memcpy(v49, v60, v48);
  v50 = v52;
  v51 = sub_10036FDD4(v49, v53, v5, v2, v61);

  if (!v50)
  {

    v56 = v62;
    v5 = v51;
LABEL_52:
    sub_1000319D8();
    return v5;
  }

  __break(1u);
  return result;
}

void sub_10036F654(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100009F1C(0, &qword_1005747D0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_100370034(a1, a2, v30, a3, &unk_100581840);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100009F1C(0, &qword_1005747D0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_10036F900(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_100168088(&unk_100581810);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for ShowInfo();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_100009104(v11, &unk_100581810);
          v45 = v61;

          return sub_100370220(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10000E614(&qword_10057E770, &type metadata accessor for ShowInfo);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10000E614(&unk_100581820, &type metadata accessor for ShowInfo);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

unint64_t *sub_10036FDD4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100370548(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100370034(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_100168088(a5);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = v10[5];
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = NSObject._rawHashValue(seed:)(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v10[6] + 8 * v22) = v18;
    ++v10[2];
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100370220(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for ShowInfo();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100168088(&unk_100582860);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10000E614(&qword_10057E770, &type metadata accessor for ShowInfo);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100370548(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100168088(&qword_1005817A0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t (*sub_10037076C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100371324;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003707EC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10037086C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100370874(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100371328;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1003708F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100370974;
  }

  __break(1u);
  return result;
}

void (*sub_10037097C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1003709FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100370A1C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100370A8C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100370B38()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    sub_10000F9A8(0xD00000000000001BLL, 0x8000000100471C30);
  }
}

uint64_t sub_100370C20()
{

  return _swift_deallocObject(v0, 41, 7);
}

void sub_100370C64()
{
  v1 = *(v0 + 16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_100370EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100370FB8(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_100370FD4(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100370FF0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
    return sub_10037100C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10037100C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 >> 6 == 2)
  {
  }

  if (!(a3 >> 6))
  {
    return sub_1001829A0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100371028(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
    return swift_errorRetain();
  }

  if (!a4)
  {
    return sub_1001841D0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100371098(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 48));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100371124()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_10037117C()
{
  result = qword_1005818B0;
  if (!qword_1005818B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005818B0);
  }

  return result;
}

uint64_t sub_1003711F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RunOnceAsyncMigrationStep.requiresMigration.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  (*(a2 + 16))(a1, a2);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v4 BOOLForKey:v5];

  return a2 ^ 1;
}

uint64_t sub_100371470()
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v2 = &v12 - v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v7 = v0[3];
  static TaskPriority.utility.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 49) = v6;
  *(v9 + 56) = v7;
  v10 = v7;
  sub_10023EE80(0, 0, v2, &unk_10040F828, v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunOnceAsyncMigrationStep.performMigration()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v9 = v13 - v8;
  static TaskPriority.utility.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v5;
  *(v12 + 5) = v4;
  (*(v6 + 32))(&v12[v11], v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_10023EE80(0, 0, v9, &unk_10040F7E0, v12);
}

uint64_t sub_100371798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  *(v7 + 40) = a5;
  *(v7 + 48) = a7;
  *(v7 + 112) = a6;
  *(v7 + 32) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100371860, 0, 0);
}

uint64_t sub_100371860()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v10 = StaticString.description.getter();
  v11 = v3;

  v4._countAndFlagsBits = 0x726F7272652ELL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v1[10] = v10;
  v1[11] = v11;
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_100371954;
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[4];

  return UpgradeMediaLibraryEntryArtwork.performMigrationStep()(v8, v6, v2 & 0x1FF, v7);
}

uint64_t sub_100371954()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100371BA8;
  }

  else
  {
    v2 = sub_100371A68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100371A68()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setBool:1 forKey:v3];

  v4 = [v1 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();

  [v4 removeObjectForKey:v5];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100371BA8()
{
  v32 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setBool:0 forKey:v5];

  v6 = [v3 standardUserDefaults];
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  [v6 setObject:v7 forKey:v8];

  if ((v2 & 0x100) != 0)
  {
    v10 = *(v0 + 48);
    static Logger.database.getter();
    swift_errorRetain();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 104);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v14)
    {
      v30 = *(v0 + 56);
      v19 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v19 = 136315394;
      v29 = v16;
      v20 = _typeName(_:qualified:)();
      v28 = v13;
      v22 = v21;

      v23 = sub_1000153E0(v20, v22, v31);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v0 + 24) = v15;
      swift_errorRetain();
      v24 = String.init<A>(describing:)();
      v26 = sub_1000153E0(v24, v25, v31);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v12, v28, "Failed migration step silently: %s: %s.", v19, 0x16u);
      swift_arrayDestroy();

      (*(v17 + 8))(v29, v30);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v9 = *(v0 + 8);
  }

  else
  {
    swift_willThrow();

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_100371F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v6[7] = *(a5 - 8);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10037203C, 0, 0);
}

uint64_t sub_10037203C()
{
  v1 = v0[5];
  v10 = v0[6];
  v2 = *(v10 + 16);
  v0[12] = v2;
  v0[13] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0x3517000000000000;
  v11 = v2(v1);
  v12 = v3;

  v4._countAndFlagsBits = 0x726F7272652ELL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v0[14] = v11;
  v0[15] = v12;
  v9 = (*(v10 + 32) + **(v10 + 32));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1003721B4;
  v7 = v0[5];
  v6 = v0[6];

  return v9(v7, v6);
}

uint64_t sub_1003721B4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100372420;
  }

  else
  {
    v2 = sub_1003722C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003722C8()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v1(v3, v2);
  v6 = String._bridgeToObjectiveC()();

  [v5 setBool:1 forKey:v6];

  v7 = [v4 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();

  [v7 removeObjectForKey:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100372420()
{
  v41 = v0;
  v1 = v0[17];
  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v2(v4, v3);
  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:0 forKey:v7];

  v8 = [v5 standardUserDefaults];
  v0[2] = v1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  String.init<A>(describing:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  [v8 setObject:v9 forKey:v10];

  v11 = (*(v3 + 24))(v4, v3);
  v12 = v0[8];
  if (v11)
  {
    v13 = v0[7];
    v15 = v0[4];
    v14 = v0[5];
    static Logger.database.getter();
    (*(v13 + 16))(v12, v15, v14);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v39 = v17;
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    v24 = v0[5];
    if (v18)
    {
      v35 = v0[17];
      v38 = v0[11];
      v25 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v25 = 136315394;
      swift_getDynamicType();
      v37 = v22;
      v26 = _typeName(_:qualified:)();
      log = v16;
      v28 = v27;
      (*(v23 + 8))(v21, v24);
      v29 = sub_1000153E0(v26, v28, v40);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v0[3] = v35;
      swift_errorRetain();
      v30 = String.init<A>(describing:)();
      v32 = sub_1000153E0(v30, v31, v40);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, log, v39, "Failed migration step silently: %s: %s.", v25, 0x16u);
      swift_arrayDestroy();

      (*(v19 + 8))(v38, v37);
    }

    else
    {

      (*(v19 + 8))(v20, v22);
      (*(v23 + 8))(v21, v24);
    }

    v33 = v0[1];
  }

  else
  {
    swift_willThrow();

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_100372838(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_100371F28(a1, v7, v8, v1 + v6, v4, v5);
}

uint64_t sub_100372934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = *(a4 + 17);
  v12 = *(a4 + 24);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  if (v11)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  *v13 = v4;
  v13[1] = sub_10001C51C;

  return sub_100371798(a1, a2, a3, v8, v9, v14 | v10, v12);
}

uint64_t sub_100372A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C51C;

  return sub_100372934(a1, v4, v5, v1 + 32);
}

id sub_100372B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Glyph();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (StationDetail.showCount.getter() < 1)
  {
    return 0;
  }

  v34 = a1;
  v16 = objc_opt_self();
  v17 = [v16 stringForEpisodeCount:StationDetail.episodeCount.getter() titleCase:1];
  v33 = v3;
  if (v17)
  {
    v18 = v17;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v31 = 0;
    v20 = 0;
  }

  v32 = a2;
  StationDetail.title.getter();
  static Glyph.Sidebar.station.getter();
  v22 = Glyph.image.getter();
  (*(v13 + 8))(v15, v12);
  v23 = String._bridgeToObjectiveC()();

  if (v20)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v23 detailText:v24 image:v22 accessoryImage:0 accessoryType:1];

  *v8 = v32;
  v25 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 0, 1, v25);
  v26(v11, 1, 1, v25);
  v27 = type metadata accessor for CarPlayTemplateInfo(0);
  v28 = *(v27 + 20);

  sub_1001FBB44(v8, v11);
  v11[v28] = 0;
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  sub_1001D2AD4(v11);
  aBlock[4] = sub_100373134;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004F1188;
  v29 = _Block_copy(aBlock);

  [v21 setHandler:v29];
  _Block_release(v29);
  return v21;
}

uint64_t sub_100372F30(uint64_t a1, int a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = swift_unknownObjectRetain();
  v3(v6, sub_10037313C, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_100372FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_10040F870, v13);
}

uint64_t sub_10037314C(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t CarPlayStepPlaybackRateAction.init(playbackRateStep:actionMetrics:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1 & 1;
  v5 = *(type metadata accessor for CarPlayStepPlaybackRateAction() + 20);
  v6 = type metadata accessor for ActionMetrics();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for CarPlayStepPlaybackRateAction()
{
  result = qword_100581A78;
  if (!qword_100581A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarPlayStepPlaybackRateAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CarPlayStepPlaybackRateAction() + 20);
  v4 = type metadata accessor for ActionMetrics();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_100373374()
{
  result = qword_100581A18;
  if (!qword_100581A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581A18);
  }

  return result;
}