void *sub_1002A096C(unint64_t a1)
{
  v2 = type metadata accessor for EpisodeOffer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_25:
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

LABEL_24:
  v12 = v4;
  v6 = _CocoaArrayWrapper.endIndex.getter();
  v4 = v12;
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_3:
  v7 = 0;
  v14 = v3 + 4;
  v15 = v3;
  v3 = _swiftEmptyArrayStorage;
  v16 = v4;
  do
  {
    v8 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      v9 = dispatch thunk of LegacyLockup.buttonAction.getter();

      if (!v9)
      {

        return 0;
      }

      type metadata accessor for EpisodeOfferAction();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    EpisodeOfferAction.episodeOffer.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100243D84(0, v3[2] + 1, 1, v3);
    }

    v11 = v3[2];
    v10 = v3[3];
    if (v11 >= v10 >> 1)
    {
      v3 = sub_100243D84(v10 > 1, v11 + 1, 1, v3);
    }

    v3[2] = v11 + 1;
    v4 = (v15[4])(v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v11, v17, v16);
  }

  while (v7 != v6);
LABEL_26:
  if (!v3[2])
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1002A0C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a5;
  *(v8 + 72) = a8;
  *(v8 + 233) = a7;
  *(v8 + 232) = a6;
  *(v8 + 56) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = type metadata accessor for PlaybackController.QueueCommand();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  v11 = type metadata accessor for PlaybackIntent();
  *(v8 + 152) = v11;
  *(v8 + 160) = *(v11 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1002A0DB4, 0, 0);
}

uint64_t sub_1002A0DB4()
{
  v1 = *(v0 + 232);
  v2 = *(*(v0 + 160) + 16);
  v2(*(v0 + 176), *(v0 + 56), *(v0 + 152));
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 160);
    v22 = *(v0 + 152);
    v23 = *(v0 + 176);
    v20 = *(v0 + 64);
    v21 = *(v0 + 168);
    sub_100168088(&qword_10057A0A8);
    v4 = type metadata accessor for PlaybackIntent.Option();
    v5 = *(v4 - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004007C0;
    v9 = v8 + v7;
    v10 = *(v5 + 104);
    v10(v9, enum case for PlaybackIntent.Option.startPlayback(_:), v4);
    *(v9 + v6) = v20;
    v10(v9 + v6, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v4);
    sub_10016BA80(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    PlaybackIntent.replacingOptions(_:)();

    (*(v3 + 8))(v23, v22);
    (*(v3 + 32))(v23, v21, v22);
  }

  if (*(v0 + 233) == 1)
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v2(v11, *(v0 + 176), *(v0 + 152));
    (*(v13 + 104))(v11, enum case for PlaybackController.QueueCommand.replace(_:), v12);
    *(v0 + 40) = v12;
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    v14 = sub_10000E680((v0 + 16));
    (*(v13 + 16))(v14, v11, v12);
    v24 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_1002A1134;
    v16.n128_u64[0] = 5.0;

    return (v24)(v0 + 16, 0, v16);
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_1002A1324;
    v19 = *(v0 + 176);

    return PlaybackController.performIntent(_:whenPossible:)(v19, 0);
  }
}

uint64_t sub_1002A1134(void *a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1002A15F0;
  }

  else
  {

    sub_100004590(v4 + 16);
    v5 = sub_1002A1264;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A1264()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A1324(void *a1)
{
  *(*v2 + 208) = v1;

  if (v1)
  {
    v4 = sub_1002A1800;
  }

  else
  {

    v4 = sub_1002A1440;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A1440()
{
  (*(v0[20] + 8))(v0[22], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002A14E0()
{
  v1 = *(v0 + 216);

  sub_100295BD4(v1);

  return _swift_task_switch(sub_1002A1560, 0, 0);
}

uint64_t sub_1002A1560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A15F0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  (*(v3 + 8))(v1, v2);
  sub_100004590(v0 + 16);
  *(v0 + 216) = *(v0 + 192);
  sub_1000044A0(*(v0 + 80), *(*(v0 + 80) + 24));
  dispatch thunk of PendingPlaybackControllerProtocol.reset()();
  static Logger.modernPlayback.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to play intent: %@", v6, 0xCu);
    sub_100009104(v7, &qword_100575B20);
  }

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);

  (*(v10 + 8))(v9, v11);
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A14E0, v13, v12);
}

uint64_t sub_1002A1800()
{
  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
  *(v0 + 216) = *(v0 + 208);
  sub_1000044A0(*(v0 + 80), *(*(v0 + 80) + 24));
  dispatch thunk of PendingPlaybackControllerProtocol.reset()();
  static Logger.modernPlayback.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to play intent: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20);
  }

  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);

  (*(v7 + 8))(v6, v8);
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A14E0, v10, v9);
}

void sub_1002A19E8(char a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a2;
    sub_100168088(&qword_10057A0A8);
    v8 = type metadata accessor for PlaybackIntent.Option();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100400790;
    (*(v9 + 104))(v11 + v10, enum case for PlaybackIntent.Option.forceLocalPlayback(_:), v8);
    sub_10016BA80(v11);
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    PlaybackIntent.addingOptions(_:)();

    type metadata accessor for EpisodeController();
    sub_1002A91E8(&qword_10057AC48, v12, type metadata accessor for EpisodeController);
    memset(v13, 0, sizeof(v13));
    EpisodeControllerProtocol.performIntent(_:sender:)();
    sub_100009104(v13, &unk_1005783D0);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1002A1C50()
{
  sub_100184228(v0 + 16);

  sub_100004590(v0 + 40);
  sub_100004590(v0 + 80);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002A1CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *v4;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = *(v9 + 120);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v9;

  sub_100296DB0(0, 0, v8, a4, v12);

  return sub_100009104(v8, &qword_100578010);
}

uint64_t sub_1002A1E2C(double a1)
{
  v3 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1;
  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = *(v6 + 120);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  *(v9 + 48) = v6;

  sub_100296DB0(0, 0, v5, &unk_100409220, v9);

  return sub_100009104(v5, &qword_100578010);
}

uint64_t sub_1002A2174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a3;
  v21[2] = a4;
  v6 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for MediaIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PlaybackIntent();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v4;
  *v12 = a1;
  (*(v10 + 104))(v12, enum case for MediaIdentifier.podcast(_:), v9, v15);
  v19 = type metadata accessor for EpisodeListSettings();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  v21[3] = v18;
  EpisodeControllerProtocol.performIntent(_:sender:)();
  return (*(v14 + 8))(v17, v13);
}

id sub_1002A244C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v19 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  result = [objc_opt_self() episodeUrlForPodcastStoreId:a3 episodeStoreId:a2];
  if (result)
  {
    v17 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 32))(v15, v12, v9);
    sub_10029A700(a1, v15, a4, v19);
    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1002A25D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15 = a4;
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowOffer.storeUrl.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100009104(v8, &qword_100574040);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_10029A700(a1, v12, a3, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002A2794(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v9 = type metadata accessor for PreviewingPresentationHint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreDataFetcher();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, a5, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = v14 + v11;
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = a1;
  *(v16 + 4) = a4;
  (*(v10 + 32))(&v16[v14], v12, v9);
  v16[v15] = v20;

  v17 = a4;
  static CoreDataFetcher.fetchPodcast(with:completion:)();
}

id sub_1002A2954(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  result = [objc_opt_self() podcastUrlForStoreId:a2];
  if (result)
  {
    v16 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v11, v8);
    sub_10029A700(a1, v14, a3, a4);
    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_1002A2ACC()
{
  objc_allocWithZone(sub_100168088(&unk_10057BC30));

  return ModernPageViewController.init(asPartOf:with:)();
}

BOOL sub_1002A2B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PresentationSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PresentationSource.topmostPresentationSource.getter();
  static InteractionContext.none.getter();
  v12 = sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
  }

  return v12 != 0;
}

BOOL sub_1002A2D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PresentationSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PresentationSource.topmostPresentationSource.getter();
  static InteractionContext.none.getter();
  v12 = sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    Share = ContextActionsConfiguration.canCreateShareSheet()();
  }

  else
  {
    return 0;
  }

  return Share;
}

char *sub_1002A2EE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, char a6, uint64_t a7)
{
  v9 = sub_10029DA58(a1, a2, a3, a4, a5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  type metadata accessor for ContextActionsMenuConfiguration();

  v11 = sub_1002A7674(v10, a7, (a6 & 1) == 0);

  return v11;
}

void *sub_1002A2F5C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  if (!sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, a3, a4))
  {
    return _swiftEmptyArrayStorage;
  }

  isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(_swiftEmptyArrayStorage).super.super.isa;
  v5 = [(objc_class *)isa children];

  sub_100009F1C(0, &qword_100575BC0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1002A3034(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  result = sub_10029DA58(a1, a2, a3, a4, a5);
  if (result)
  {
    v6 = ContextActionsConfiguration.shareSheet()();

    return v6;
  }

  return result;
}

Class sub_1002A30B0(uint64_t a1, UIMenuElementSize a2)
{
  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  if (a2 >> 62)
  {
    sub_100009F1C(0, &qword_100575BC0);

    v7 = _bridgeCocoaArray<A>(_:)();

    a2 = v7;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F1C(0, &qword_100575BC0);
  }

  sub_100009F1C(0, &qword_100579A70);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  *(inited + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, a2, v8);
  isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(inited).super.super.isa;
  swift_setDeallocating();
  swift_arrayDestroy();
  return isa;
}

id sub_1002A3268()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextActionsMenuConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A32D4(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaybackIntent() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 9);
  v11 = *(v1 + v6);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10021A620;

  return sub_1002A0C10(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1002A345C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_10001BC58(a1, v4);
}

id sub_1002A3514(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1002A3564(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009F1C(0, &qword_100575BC0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1002A35F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v69 = a8;
  v64 = a7;
  v67 = a5;
  v66 = a4;
  LODWORD(v65) = a3;
  v68 = a1;
  v60 = *a9;
  v11 = sub_100168088(&qword_100576938);
  __chkstk_darwin(v11 - 8);
  v61 = &v55 - v12;
  v63 = type metadata accessor for URL();
  v59 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InteractionContext();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v55 - v18;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v22 - 8);
  v55 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v56 = &v55 - v25;
  __chkstk_darwin(v26);
  v28 = &v55 - v27;
  v29 = type metadata accessor for AnyReferenceLink();
  v73[3] = v29;
  v73[4] = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink);
  v30 = sub_10000E680(v73);
  v31 = *(*(v29 - 8) + 32);
  v32 = v29;
  v33 = v69;
  v31(v30, v64, v32);
  v34 = a9 + qword_1005932C8;
  *v34 = v65 & 1;
  v35 = v67;
  *(v34 + 1) = v66;
  *(v34 + 2) = v35;
  *(v34 + 3) = a6;
  v36 = a2;
  sub_100010430(a2, v28, &unk_10057BB90);
  sub_100004428(v73, v72);
  v37 = *(v15 + 16);
  v37(v21, v33, v14);
  if (!sub_1002A465C(v30))
  {

    v41 = *(v15 + 8);
    v41(v33, v14);
    sub_100009104(v36, &unk_10057BB90);
    v41(v21, v14);
    sub_100004590(v72);
    sub_100009104(v28, &unk_10057BB90);
    sub_100004590(v73);
    goto LABEL_5;
  }

  v66 = v28;
  v67 = v21;
  v65 = v36;

  v38 = v61;
  sub_1001EC5E0(v72, v61);
  v39 = sub_100168088(&qword_100576930);
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
  {

    v40 = *(v15 + 8);
    v40(v69, v14);
    sub_100009104(v65, &unk_10057BB90);
    v40(v67, v14);
    sub_100004590(v72);
    sub_100009104(v66, &unk_10057BB90);
    sub_100004590(v73);
    sub_100009104(v38, &qword_100576938);
LABEL_5:
    type metadata accessor for OtherContextActionConfiguration(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v43 = (v38 + *(v39 + 48));
  v44 = *v43;
  v45 = v43[1];
  v46 = v59;
  v47 = v62;
  v48 = v38;
  v49 = v63;
  (*(v59 + 32))(v62, v48, v63);
  (*(v46 + 16))(a9 + qword_100593318, v47, v49);
  v50 = (a9 + qword_100593320);
  *v50 = v44;
  v50[1] = v45;
  v51 = v56;
  sub_100010430(v66, v56, &unk_10057BB90);
  sub_100004428(v72, v71);
  v52 = v58;
  v37(v58, v67, v14);
  sub_100010430(v51, v55, &unk_10057BB90);
  sub_100010430(v71, v70, &qword_100576490);
  v37(v57, v52, v14);
  v53 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v54 = *(v15 + 8);
  v54(v69, v14);
  sub_100009104(v65, &unk_10057BB90);
  v54(v52, v14);
  sub_100009104(v71, &qword_100576490);
  sub_100009104(v51, &unk_10057BB90);
  (*(v46 + 8))(v62, v63);
  v54(v67, v14);
  sub_100004590(v72);
  sub_100009104(v66, &unk_10057BB90);
  sub_100004590(v73);
  return v53;
}

uint64_t sub_1002A3E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t (*a10)(void, __n128), unint64_t *a11, void (*a12)(uint64_t))
{
  v77 = a8;
  v76 = a6;
  v73 = a5;
  v72 = a4;
  LODWORD(v71) = a3;
  v75 = a1;
  v67 = *a9;
  v14 = sub_100168088(&qword_100576938);
  __chkstk_darwin(v14 - 8);
  v66 = &v59 - v15;
  v69 = type metadata accessor for URL();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for InteractionContext();
  v17 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v24 - 8);
  v61 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v62 = &v59 - v27;
  v29 = __chkstk_darwin(v28);
  v31 = &v59 - v30;
  v81[3] = a10(0, v29);
  v81[4] = sub_1002A91E8(a11, 255, a12);
  v81[0] = a7;
  v74 = a9;
  v32 = a9 + qword_1005932C8;
  *v32 = v71 & 1;
  v33 = v73;
  *(v32 + 1) = v72;
  *(v32 + 2) = v33;
  *(v32 + 3) = v76;
  v76 = a2;
  v34 = a2;
  v35 = v77;
  sub_100010430(v34, v31, &unk_10057BB90);
  sub_100004428(v81, v80);
  v36 = v23;
  v37 = v23;
  v38 = v70;
  v71 = *(v17 + 16);
  v71(v37, v35);
  if (!sub_1002A4918(a7, a11, a12))
  {

    v43 = *(v17 + 8);
    v43(v35, v38);
    sub_100009104(v76, &unk_10057BB90);
    v43(v36, v38);
    sub_100004590(v80);
    sub_100009104(v31, &unk_10057BB90);
    sub_100004590(v81);
    goto LABEL_5;
  }

  v60 = v17;
  v39 = v38;
  v72 = v31;
  v73 = v36;

  v40 = v66;
  sub_1001EC5E0(v80, v66);
  v41 = sub_100168088(&qword_100576930);
  if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
  {

    v42 = *(v60 + 8);
    v42(v77, v38);
    sub_100009104(v76, &unk_10057BB90);
    v42(v73, v38);
    sub_100004590(v80);
    sub_100009104(v72, &unk_10057BB90);
    sub_100004590(v81);
    sub_100009104(v40, &qword_100576938);
LABEL_5:
    type metadata accessor for OtherContextActionConfiguration(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v45 = (v40 + *(v41 + 48));
  v47 = *v45;
  v46 = v45[1];
  v48 = v65;
  v49 = v68;
  v50 = v40;
  v51 = v69;
  (*(v65 + 32))(v68, v50, v69);
  v52 = v74;
  (*(v48 + 16))(v74 + qword_100593318, v49, v51);
  v53 = (v52 + qword_100593320);
  *v53 = v47;
  v53[1] = v46;
  v54 = v62;
  sub_100010430(v72, v62, &unk_10057BB90);
  sub_100004428(v80, v79);
  v55 = v64;
  v56 = v71;
  (v71)(v64, v73, v39);
  sub_100010430(v54, v61, &unk_10057BB90);
  sub_100010430(v79, v78, &qword_100576490);
  v56(v63, v55, v39);
  v57 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v58 = *(v60 + 8);
  v58(v77, v39);
  sub_100009104(v76, &unk_10057BB90);
  v58(v55, v39);
  sub_100009104(v79, &qword_100576490);
  sub_100009104(v54, &unk_10057BB90);
  (*(v48 + 8))(v68, v69);
  v58(v73, v39);
  sub_100004590(v80);
  sub_100009104(v72, &unk_10057BB90);
  sub_100004590(v81);
  return v57;
}

uint64_t sub_1002A465C(uint64_t a1)
{
  v2 = type metadata accessor for AnyReferenceLink();
  v12[3] = v2;
  v12[4] = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink);
  v3 = sub_10000E680(v12);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  sub_100004428(v12, v10);
  sub_100168088(&qword_1005748C0);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCast())
  {
    sub_100004428(v12, v9);
    sub_100168088(&unk_10057BBF0);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v6, v10);
      sub_1000044A0(v10, v11);
      v4 = dispatch thunk of CustomPreviewActionModel.previewAction.getter();
      sub_100004590(v10);
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      sub_100009104(&v6, &qword_100576940);
    }

    sub_100004428(v12, v9);
    sub_100168088(&qword_10057BC00);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v6, v10);
      sub_1000044A0(v10, v11);
      dispatch thunk of ClickableModel.clickAction.getter();
      if (v9[3])
      {
        sub_100168088(&unk_10057BB70);
        type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v4 = v6;
          sub_100004590(v10);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100009104(v9, &qword_100578C20);
      }

      sub_100004590(v10);
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      sub_100009104(&v6, &qword_100576928);
    }

    v4 = 0;
    goto LABEL_15;
  }

  v4 = v9[0];
LABEL_15:
  sub_100004590(v12);
  return v4;
}

uint64_t sub_1002A4918(void *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  v12[3] = *a1;
  v12[4] = sub_1002A91E8(a2, 255, a3);
  v12[0] = a1;
  sub_100004428(v12, v10);

  sub_100168088(&qword_1005748C0);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCast())
  {
    sub_100004428(v12, v9);
    sub_100168088(&unk_10057BBF0);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v6, v10);
      sub_1000044A0(v10, v11);
      v4 = dispatch thunk of CustomPreviewActionModel.previewAction.getter();
      sub_100004590(v10);
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      sub_100009104(&v6, &qword_100576940);
    }

    sub_100004428(v12, v9);
    sub_100168088(&qword_10057BC00);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v6, v10);
      sub_1000044A0(v10, v11);
      dispatch thunk of ClickableModel.clickAction.getter();
      if (v9[3])
      {
        sub_100168088(&unk_10057BB70);
        type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v4 = v6;
          sub_100004590(v10);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100009104(v9, &qword_100578C20);
      }

      sub_100004590(v10);
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      sub_100009104(&v6, &qword_100576928);
    }

    v4 = 0;
    goto LABEL_15;
  }

  v4 = v9[0];
LABEL_15:
  sub_100004590(v12);
  return v4;
}

uint64_t sub_1002A4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  v70 = a8;
  v75 = a6;
  LODWORD(v84) = a5;
  v82 = a4;
  v67 = a3;
  v15 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v15 - 8);
  v89 = &v67 - v16;
  v17 = sub_100168088(&qword_10057BB30);
  __chkstk_darwin(v17 - 8);
  v19 = &v67 - v18;
  v20 = sub_100168088(&qword_10057A0A0);
  __chkstk_darwin(v20 - 8);
  v80 = &v67 - v21;
  v77 = type metadata accessor for PlaybackIntent.Origin();
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PlaybackIntent.Context();
  __chkstk_darwin(v23 - 8);
  v79 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for MediaIdentifier();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for PlaybackIntent();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v26;
  __chkstk_darwin(v27);
  v87 = &v67 - v28;
  v29 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v29 - 8);
  v71 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v67 - v32;
  v34 = sub_100168088(&qword_10057BC50);
  __chkstk_darwin(v34 - 8);
  v36 = &v67 - v35;
  v37 = type metadata accessor for PendingPlaybackMetadata();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);

  PendingPlaybackMetadata.init(adamId:uuid:)();
  v41 = (*(v38 + 48))(v36, 1, v37);
  v86 = v33;
  if (v41 == 1)
  {
    sub_100009104(v36, &qword_10057BC50);
  }

  else
  {
    (*(v38 + 32))(v40, v36, v37);
    sub_1000044A0(v12 + 10, v12[13]);
    v33 = v86;
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v38 + 8))(v40, v37);
  }

  v70 = a11;
  v69 = a10;
  v68 = a9;
  if (v75)
  {
    v42 = type metadata accessor for EpisodeListSettings();
    (*(*(v42 - 8) + 56))(v33, 1, 1, v42);
  }

  else
  {
    sub_100010430(v67, v33, &unk_100573A80);
  }

  sub_100168088(&qword_100574690);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100400790;
  *(v43 + 32) = a1;
  *(v43 + 40) = a2;
  v44 = v76;
  *v76 = v43;
  v45 = v72;
  v46 = v73;
  (*(v72 + 104))(v44, enum case for MediaIdentifier.localEpisodes(_:), v73);
  v47 = &enum case for PlaybackIntent.Origin.smartPlay(_:);
  if ((v84 & 1) == 0)
  {
    v47 = &enum case for PlaybackIntent.Origin.default(_:);
  }

  (*(v74 + 104))(v78, *v47, v77);
  (*(v45 + 56))(v80, 1, 1, v46);
  sub_100010430(v33, v71, &unk_100573A80);

  PlaybackIntent.Context.init(origin:seed:baseListSettings:)();
  v48 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
  (*(*(v48 - 8) + 56))(v19, 1, 1, v48);
  static Set<>.default.getter();
  v49 = v87;
  PlaybackIntent.init(id:context:initialItem:options:)();
  v50 = v89;
  static TaskPriority.userInitiated.getter();
  v51 = type metadata accessor for TaskPriority();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v84 = v12[15];
  v52 = v85;
  v53 = v83;
  (*(v85 + 16))(v83, v49, v88);
  sub_100004428((v12 + 10), v91);
  sub_100010430(v82, v90, &unk_1005783D0);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = (v81 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 17) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v60 = v59 + v54;
  v61 = v88;
  (*(v52 + 32))(v60, v53, v88);
  v62 = v59 + v55;
  *v62 = v68;
  *(v62 + 8) = v69 & 1;
  *(v62 + 9) = v70 & 1;
  *(v59 + v56) = v84;
  sub_1000109E4(v91, v59 + v57);
  *(v59 + v58) = v12;
  v63 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
  v64 = v90[1];
  *v63 = v90[0];
  v63[1] = v64;

  v65 = v89;
  sub_100296DB0(0, 0, v89, &unk_1004091E0, v59);

  sub_100009104(v65, &qword_100578010);
  (*(v52 + 8))(v87, v61);
  return sub_100009104(v86, &unk_100573A80);
}

void sub_1002A5520(char a1)
{
  type metadata accessor for PlaybackIntent();
  v3 = *(v1 + 16);

  sub_1002A19E8(a1, v3);
}

void sub_1002A55A0(char a1)
{
  if (os_feature_enabled_red_sun())
  {
    if (qword_100593598 && *(qword_100593598 + OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap))
    {

      sub_1001CDBF0(a1 & 1, 0, 0);
    }
  }

  else
  {
    v2 = [objc_opt_self() defaultInstance];
    [v2 presentNowPlayingAnimated:a1 & 1];
  }
}

uint64_t sub_1002A5684(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = os_feature_enabled_red_sun();
  if (result)
  {
    if (qword_100593598 && *(qword_100593598 + OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap))
    {

      sub_1001CDE5C(a1 & 1, a2, a3);
    }
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1002A5728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  v112 = a5;
  v111 = a4;
  v123 = a3;
  v115 = a1;
  v106 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v106);
  v105 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PreviewingPresentationHint();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for PresentationSource();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for InteractionContext();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v99 - v11;
  __chkstk_darwin(v12);
  v122 = &v99 - v13;
  v14 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v14 - 8);
  v16 = (&v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v108 = &v99 - v18;
  __chkstk_darwin(v19);
  v121 = &v99 - v20;
  v21 = type metadata accessor for PodcastsReferenceLink();
  v104 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100168088(&qword_100577EA0);
  __chkstk_darwin(v24 - 8);
  v26 = &v99 - v25;
  v118 = type metadata accessor for ShowOffer();
  v117 = *(v118 - 1);
  __chkstk_darwin(v118);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100168088(&unk_10057BBB0);
  __chkstk_darwin(v29 - 8);
  v31 = &v99 - v30;
  v32 = type metadata accessor for EpisodeContextActionDataType(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v100 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v107 = &v99 - v36;
  v37 = type metadata accessor for AnyReferenceLink();
  v128[3] = v37;
  v128[4] = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink);
  v38 = sub_10000E680(v128);
  (*(*(v37 - 8) + 16))(v38, v123, v37);
  v39 = PodcastsReferenceLink.content.getter();
  sub_1001CEA68(v40, v41, v42);
  if (v39 == 3)
  {
    v50 = v28;
    v123 = v16;
    v51 = v105;
    (*(v104 + 16))(v23, a2, v21);
    ShowOffer.init(from:)();
    if ((*(v117 + 48))(v26, 1, v118) != 1)
    {
      v67 = v117;
      v68 = *(v117 + 32);
      v69 = v50;
      v99 = v50;
      v70 = v26;
      v71 = v118;
      v68(v50, v70, v118);
      v72 = v119;
      v73 = v121;
      v74 = v120;
      (*(v119 + 16))(v121, v111, v120);
      (*(v72 + 56))(v73, 0, 1, v74);
      (*(v67 + 16))(v51, v69, v71);
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PodcastContextActionData(0);
      v75 = swift_allocObject();
      *(v75 + 16) = [objc_opt_self() sharedInstance];
      sub_1002A8F58(v51, v75 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
      v76 = v75 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType;
      *v76 = 0u;
      *(v76 + 16) = 0u;
      *(v76 + 32) = 0u;
      *(v76 + 48) = 0u;
      *(v76 + 64) = -1;
      sub_100216334();
      sub_1002A9028(v51, type metadata accessor for PodcastContextActionDataType);
      sub_100004428(v128, v126);
      v77 = v113;
      v78 = *(v113 + 16);
      v79 = v122;
      v80 = v114;
      v78(v122, v112, v114);
      type metadata accessor for PodcastContextActionConfiguration(0);
      *(swift_allocObject() + qword_100576738) = v75;
      v81 = v108;
      sub_100010430(v121, v108, &unk_10057BB90);
      sub_100010430(v126, v125, &qword_100576490);
      v82 = v110;
      v78(v110, v79, v80);
      sub_100010430(v81, v123, &unk_10057BB90);
      sub_100010430(v125, v124, &qword_100576490);
      v78(v109, v82, v80);

      v43 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v83 = *(v77 + 8);
      v83(v82, v80);
      sub_100009104(v125, &qword_100576490);
      sub_100009104(v81, &unk_10057BB90);
      v83(v122, v80);
      sub_100009104(v126, &qword_100576490);
      sub_100009104(v121, &unk_10057BB90);
      (*(v117 + 8))(v99, v118);
      goto LABEL_15;
    }

    v48 = &qword_100577EA0;
    v49 = v26;
LABEL_10:
    sub_100009104(v49, v48);
LABEL_11:
    v43 = 0;
    goto LABEL_15;
  }

  if (v39 == 2)
  {
    sub_100399650(v31);
    if ((*(v33 + 48))(v31, 1, v32) != 1)
    {
      v52 = v107;
      sub_1002A8FC0(v31, v107, type metadata accessor for EpisodeContextActionDataType);
      v118 = *(v119 + 16);
      (v118)(v116, v111, v120);
      v53 = v100;
      sub_1002A8F58(v52, v100, type metadata accessor for EpisodeContextActionDataType);
      v54 = v102;
      v55 = v101;
      v56 = v103;
      (*(v102 + 104))(v101, enum case for PreviewingPresentationHint.push(_:), v103);
      type metadata accessor for EpisodeContextActionData(0);
      v57 = swift_allocObject();
      v58 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
      *(v57 + v58) = [objc_opt_self() sharedInstance];
      sub_1002A8F58(v53, v57 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
      (*(v54 + 16))(v57 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v55, v56);
      *(v57 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
      sub_100399908();
      (*(v54 + 8))(v55, v56);
      v123 = type metadata accessor for EpisodeContextActionDataType;
      sub_1002A9028(v53, type metadata accessor for EpisodeContextActionDataType);
      sub_100004428(v128, v126);
      v59 = v113;
      v60 = *(v113 + 16);
      v61 = v122;
      v62 = v114;
      v60(v122, v112, v114);
      type metadata accessor for EpisodeContextActionConfiguration(0);
      *(swift_allocObject() + qword_100576670) = v57;
      v63 = v121;
      v64 = v120;
      (v118)(v121, v116, v120);
      (*(v119 + 56))(v63, 0, 1, v64);
      sub_100010430(v126, v125, &qword_100576490);
      v65 = v110;
      v60(v110, v61, v62);
      sub_100010430(v63, v108, &unk_10057BB90);
      sub_100010430(v125, v124, &qword_100576490);
      v60(v109, v65, v62);

      v43 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v66 = *(v59 + 8);
      v66(v65, v62);
      sub_100009104(v125, &qword_100576490);
      sub_100009104(v63, &unk_10057BB90);
      v66(v122, v62);
      sub_100009104(v126, &qword_100576490);
      (*(v119 + 8))(v116, v120);
      sub_1002A9028(v107, v123);
      goto LABEL_15;
    }

    v48 = &unk_10057BBB0;
    v49 = v31;
    goto LABEL_10;
  }

  v43 = 0;
  if (v39 == 1)
  {
    PodcastsReferenceLink.content.getter();
    v47 = v44;
    if (!v46)
    {
      v84 = v119;
      v85 = v121;
      v86 = v120;
      (*(v119 + 16))(v121, v111, v120);
      (*(v84 + 56))(v85, 0, 1, v86);
      v87 = PodcastsReferenceLink.title.getter();
      v89 = v88;
      sub_100004428(v128, v126);
      v90 = v122;
      (*(v113 + 16))(v122, v112, v114);
      type metadata accessor for ChannelContextActionConfiguration(0);
      v91 = swift_allocObject();
      v92 = sub_100010C38(v126, v127);
      v93 = __chkstk_darwin(v92);
      v95 = &v99 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v96 + 16))(v95, v93);

      v43 = sub_1002A35F4(v97, v85, 1, v47, v87, v89, v95, v90, v91);
      sub_100004590(v126);
      goto LABEL_15;
    }

    sub_1001CEA68(v44, v45, v46);
    goto LABEL_11;
  }

LABEL_15:
  sub_100004590(v128);
  return v43;
}

uint64_t sub_1002A6790(uint64_t a1, uint64_t (*a2)(uint64_t a1), void (*a3)(void, void, void), uint64_t a4)
{
  v127 = a4;
  v126 = a3;
  v125 = a1;
  v111 = type metadata accessor for URLReferenceLink();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v103 - v7;
  v117 = type metadata accessor for InteractionContext();
  v124 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v115 = &v103 - v10;
  __chkstk_darwin(v11);
  v116 = &v103 - v12;
  __chkstk_darwin(v13);
  v123 = &v103 - v14;
  v15 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v15 - 8);
  v112 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v113 = &v103 - v18;
  __chkstk_darwin(v19);
  v119 = &v103 - v20;
  __chkstk_darwin(v21);
  v120 = &v103 - v22;
  v122 = type metadata accessor for URL();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v128 = &v103 - v25;
  v26 = type metadata accessor for AppReferenceLink();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v103 - v31;
  v33 = type metadata accessor for PodcastsReferenceLink();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v103 - v38;
  AnyReferenceLink.base.getter();
  sub_100168088(&qword_10057BC10);
  if (!swift_dynamicCast())
  {
    v41 = v126;
    v42 = v127;
    v107 = a2;
    if (swift_dynamicCast())
    {
      v106 = v27;
      v43 = *(v27 + 32);
      v104 = v29;
      v105 = v26;
      v43(v29, v32, v26);
      v44 = AppReferenceLink.bundleID.getter();
      v46 = v45;
      AppReferenceLink.shareURL.getter();
      v111 = AppReferenceLink.title.getter();
      v110 = v47;
      v48 = type metadata accessor for PresentationSource();
      v49 = *(v48 - 8);
      v50 = v120;
      (*(v49 + 16))(v120, v41, v48);
      (*(v49 + 56))(v50, 0, 1, v48);
      v126 = *(v124 + 16);
      v51 = v123;
      v52 = v117;
      v126(v123, v42, v117);
      v53 = type metadata accessor for AnyReferenceLink();
      v133 = v53;
      v134 = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink);
      v54 = sub_10000E680(&v132);
      (*(*(v53 - 8) + 16))(v54, v107, v53);
      type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
      v55 = swift_allocObject();
      v56 = (v55 + qword_1005932E0);
      *v56 = v44;
      v56[1] = v46;
      v57 = *(v121 + 16);
      v58 = v118;
      v59 = v122;
      v57(v118, v128, v122);
      sub_100004428(&v132, v131);
      v60 = v50;
      v61 = v119;
      sub_100010430(v60, v119, &unk_10057BB90);
      v62 = v116;
      v63 = v51;
      v64 = v126;
      v126(v116, v63, v52);
      v57((v55 + qword_100593318), v58, v59);
      v65 = (v55 + qword_100593320);
      v66 = v110;
      *v65 = v111;
      v65[1] = v66;
      v67 = v113;
      sub_100010430(v61, v113, &unk_10057BB90);
      sub_100004428(v131, v130);
      v68 = v115;
      v64(v115, v62, v52);
      sub_100010430(v67, v112, &unk_10057BB90);
      sub_100010430(v130, v129, &qword_100576490);
      v64(v114, v68, v52);

      v40 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v69 = *(v124 + 8);
      v69(v68, v52);
      sub_100009104(v130, &qword_100576490);
      sub_100009104(v67, &unk_10057BB90);
      v69(v62, v52);
      sub_100009104(v119, &unk_10057BB90);
      sub_100004590(v131);
      v70 = *(v121 + 8);
      v71 = v122;
      v70(v118, v122);
      v69(v123, v52);
      sub_100009104(v120, &unk_10057BB90);
      v70(v128, v71);
      (*(v106 + 8))(v104, v105);
    }

    else
    {
      v72 = v108;
      v73 = v111;
      v74 = swift_dynamicCast();
      v40 = 0;
      v75 = v107;
      if (!v74)
      {
        goto LABEL_8;
      }

      (*(v110 + 32))(v109, v72, v73);
      v76 = URLReferenceLink.bundleID.getter();
      v78 = v77;
      URLReferenceLink.url.getter();
      v79 = type metadata accessor for PresentationSource();
      v80 = *(v79 - 8);
      v81 = v120;
      (*(v80 + 16))(v120, v41, v79);
      (*(v80 + 56))(v81, 0, 1, v79);
      v126 = *(v124 + 16);
      v82 = v123;
      v83 = v117;
      v126(v123, v42, v117);
      v84 = type metadata accessor for AnyReferenceLink();
      v133 = v84;
      v134 = sub_1002A91E8(&qword_10057BC18, 255, &type metadata accessor for AnyReferenceLink);
      v85 = sub_10000E680(&v132);
      (*(*(v84 - 8) + 16))(v85, v75, v84);
      type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
      v86 = swift_allocObject();
      v87 = (v86 + qword_1005932E0);
      *v87 = v76;
      v87[1] = v78;
      v88 = *(v121 + 16);
      v89 = v118;
      v90 = v122;
      v88(v118, v128, v122);
      sub_100004428(&v132, v131);
      v91 = v81;
      v92 = v119;
      sub_100010430(v91, v119, &unk_10057BB90);
      v93 = v116;
      v94 = v82;
      v95 = v126;
      v126(v116, v94, v83);
      v88((v86 + qword_100593318), v89, v90);
      v96 = (v86 + qword_100593320);
      *v96 = 0;
      v96[1] = 0;
      v97 = v113;
      sub_100010430(v92, v113, &unk_10057BB90);
      sub_100004428(v131, v130);
      v98 = v115;
      v95(v115, v93, v83);
      sub_100010430(v97, v112, &unk_10057BB90);
      sub_100010430(v130, v129, &qword_100576490);
      v95(v114, v98, v83);

      v40 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v99 = *(v124 + 8);
      v99(v98, v83);
      sub_100009104(v130, &qword_100576490);
      sub_100009104(v97, &unk_10057BB90);
      v99(v93, v83);
      sub_100009104(v119, &unk_10057BB90);
      sub_100004590(v131);
      v100 = *(v121 + 8);
      v101 = v122;
      v100(v118, v122);
      v99(v123, v83);
      sub_100009104(v120, &unk_10057BB90);
      v100(v128, v101);
      (*(v110 + 8))(v109, v111);
    }

    sub_100004590(&v132);
    goto LABEL_8;
  }

  (*(v34 + 32))(v36, v39, v33);
  v40 = sub_1002A5728(v125, v36, a2, v126, v127);
  (*(v34 + 8))(v36, v33);
LABEL_8:
  sub_100004590(v135);
  return v40;
}

char *sub_1002A7674(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = sub_1002A9088;
  v19 = v6;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002A3514;
  v17 = &unk_1004E9598;
  v9 = _Block_copy(&v14);
  swift_retain_n();

  v18 = sub_1002A90C0;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002A3564;
  v17 = &unk_1004E95C0;
  v10 = _Block_copy(&v14);

  v11 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:v9 actionProvider:v10];

  _Block_release(v10);
  _Block_release(v9);
  *&v11[OBJC_IVAR____TtC8PodcastsP33_1E0FAAAEE761D84EC15F0A371F0F292131ContextActionsMenuConfiguration_config] = a1;
  v12 = v11;

  [v12 setPreferredMenuElementOrder:2];

  return v12;
}

uint64_t sub_1002A7888(void *a1, void *a2)
{
  type metadata accessor for ContextActionsMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC8PodcastsP33_1E0FAAAEE761D84EC15F0A371F0F292131ContextActionsMenuConfiguration_config);
    if (v5)
    {
      v6 = a1;

      [a2 setPreferredCommitStyle:dispatch thunk of ContextActionsConfiguration.preferredPreviewActionCommitStyle.getter()];
      v8[4] = j___s8ShelfKit27ContextActionsConfigurationC20performPreviewActionyyFTj;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10000F038;
      v8[3] = &unk_1004E9520;
      v7 = _Block_copy(v8);

      [a2 addCompletion:v7];
      _Block_release(v7);
    }
  }

  return result;
}

id sub_1002A79B4(uint64_t a1, void *a2)
{
  v35 = a2;
  v2 = type metadata accessor for PresentationSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EpisodeOffer();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShareSheetContentSource();
  __chkstk_darwin(v10);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  ShareSheetAction.shareSheetContentSource.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v12;
    v13 = COERCE_DOUBLE(ShareSheetAction.referenceTime.getter());
    v15 = 0.0;
    if (v14)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    v17 = COERCE_DOUBLE(ShareSheetAction.playerTime.getter());
    if ((v18 & 1) == 0)
    {
      v15 = v17;
    }

    v19 = objc_opt_self();
    [v12 playhead];
    v21 = [v19 shareViewControllerWithEpisode:v12 selectedReferenceTime:v16 selectedPlayerTime:v15 currentPlayerTime:v20];

    if (v21)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  (*(v7 + 32))(v9, v12, v6);
  v22 = sub_100294534();
  if (!v22)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v12 = v22;
  v23 = COERCE_DOUBLE(ShareSheetAction.referenceTime.getter());
  v25 = 0.0;
  if (v24)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v23;
  }

  v27 = COERCE_DOUBLE(ShareSheetAction.playerTime.getter());
  if ((v28 & 1) == 0)
  {
    v25 = v27;
  }

  v29 = objc_opt_self();
  [v12 playhead];
  result = [v29 shareViewControllerWithPlayerItem:v12 selectedReferenceTime:v26 selectedPlayerTime:v25 currentPlayerTime:v30];
  if (result)
  {
    v21 = result;
    (*(v7 + 8))(v9, v6);
LABEL_17:

    v32 = v21;
    v33 = v35;
    PresentationSource.init(view:)();
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

void *sub_1002A7D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v62 = a8;
  v58 = a7;
  v60 = a6;
  v59 = a5;
  v74 = a4;
  v66 = a1;
  v12 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v12 - 8);
  v65 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v54 - v15;
  v56 = type metadata accessor for InteractionContext();
  v72 = *(v56 - 8);
  __chkstk_darwin(v56);
  v64 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v61 = &v54 - v18;
  __chkstk_darwin(v19);
  v73 = &v54 - v20;
  v21 = sub_100168088(&qword_100576948);
  __chkstk_darwin(v21 - 8);
  v71 = &v54 - v22;
  v23 = type metadata accessor for PresentationSource();
  v67 = v23;
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v69 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PreviewingPresentationHint();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = (&v54 - v33);
  sub_100168088(&qword_100574690);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100400790;
  *(v35 + 32) = a2;
  *(v35 + 40) = a3;
  *v34 = v35;
  v34[1] = 0;
  v57 = v34;
  swift_storeEnumTagMultiPayload();
  sub_1002A8F58(v34, v31, type metadata accessor for EpisodeContextActionDataType);
  (*(v26 + 104))(v28, enum case for PreviewingPresentationHint.push(_:), v25);
  type metadata accessor for EpisodeContextActionData(0);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
  v38 = objc_opt_self();

  *(v36 + v37) = [v38 sharedInstance];
  sub_1002A8F58(v31, v36 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  (*(v26 + 16))(v36 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v28, v25);
  v68 = v36;
  *(v36 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
  sub_100399908();
  (*(v26 + 8))(v28, v25);
  v55 = type metadata accessor for EpisodeContextActionDataType;
  sub_1002A9028(v31, type metadata accessor for EpisodeContextActionDataType);
  v39 = v70;
  v54 = *(v70 + 16);
  v40 = v69;
  v54(v69, v58, v23);
  v41 = v71;
  sub_100010430(v59, v71, &qword_100576948);
  sub_100004428(v60, v78);
  v42 = v73;
  v43 = *(v72 + 16);
  v44 = v56;
  v43(v73, v62, v56);
  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v45 = swift_allocObject();
  *(v45 + qword_1005766C8) = v68;
  *(v45 + qword_1005766D0) = v74;
  *(v45 + qword_1005766D8) = a9;
  sub_100010430(v41, v45 + qword_100593298, &qword_100576948);
  sub_100004428(v78, v45 + qword_1005932A0);
  v46 = v63;
  v47 = v40;
  v48 = v67;
  v54(v63, v47, v67);
  (*(v39 + 56))(v46, 0, 1, v48);
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v49 = v61;
  v43(v61, v42, v44);
  sub_100010430(v46, v65, &unk_10057BB90);
  sub_100010430(v76, v75, &qword_100576490);
  v43(v64, v49, v44);

  v50 = v74;

  ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v51 = *(v72 + 8);
  v51(v49, v44);
  sub_100009104(v76, &qword_100576490);
  sub_100009104(v46, &unk_10057BB90);
  v51(v73, v44);
  sub_100004590(v78);
  sub_100009104(v71, &qword_100576948);
  (*(v70 + 8))(v69, v67);
  rawValue = ContextActionsConfiguration.transcriptSelectionActions()()._0._rawValue;

  sub_1002A9028(v57, v55);
  return rawValue;
}

void *sub_1002A858C(uint64_t a1, uint64_t (*a2)(uint64_t a1), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v62 = a7;
  v59 = a6;
  v61 = a5;
  v60 = a4;
  v73 = a3;
  v57 = a2;
  v67 = a1;
  v9 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v9 - 8);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v55 - v12;
  v72 = type metadata accessor for InteractionContext();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v55 - v15;
  __chkstk_darwin(v16);
  v71 = &v55 - v17;
  v18 = sub_100168088(&qword_100576948);
  __chkstk_darwin(v18 - 8);
  v70 = &v55 - v19;
  v75 = type metadata accessor for PresentationSource();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v68 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PreviewingPresentationHint();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v25);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = (&v55 - v29);
  sub_100168088(&qword_10057BBA0);
  v31 = type metadata accessor for EpisodeOffer();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100400790;
  (*(v32 + 16))(v34 + v33, v57, v31);
  *v30 = v34;
  v58 = v30;
  swift_storeEnumTagMultiPayload();
  sub_1002A8F58(v30, v27, type metadata accessor for EpisodeContextActionDataType);
  (*(v22 + 104))(v24, enum case for PreviewingPresentationHint.push(_:), v21);
  type metadata accessor for EpisodeContextActionData(0);
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
  *(v35 + v36) = [objc_opt_self() sharedInstance];
  sub_1002A8F58(v27, v35 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  (*(v22 + 16))(v35 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v24, v21);
  *(v35 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
  sub_100399908();
  (*(v22 + 8))(v24, v21);
  v57 = type metadata accessor for EpisodeContextActionDataType;
  sub_1002A9028(v27, type metadata accessor for EpisodeContextActionDataType);
  v37 = v69;
  v56 = *(v69 + 16);
  v38 = v68;
  v56(v68, v59, v75);
  v39 = v70;
  sub_100010430(v60, v70, &qword_100576948);
  sub_100004428(v61, v79);
  v40 = *(v74 + 16);
  v41 = v71;
  v40(v71, v62, v72);
  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v42 = swift_allocObject();
  *(v42 + qword_1005766C8) = v35;
  *(v42 + qword_1005766D0) = v73;
  *(v42 + qword_1005766D8) = a8;
  sub_100010430(v39, v42 + qword_100593298, &qword_100576948);
  sub_100004428(v79, v42 + qword_1005932A0);
  v43 = v64;
  v44 = v38;
  v45 = v75;
  v56(v64, v44, v75);
  (*(v37 + 56))(v43, 0, 1, v45);
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v46 = v63;
  v47 = v72;
  v40(v63, v41, v72);
  sub_100010430(v43, v66, &unk_10057BB90);
  sub_100010430(v77, v76, &qword_100576490);
  v48 = v46;
  v49 = v46;
  v50 = v47;
  v40(v65, v48, v47);

  v51 = v73;

  ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v52 = *(v74 + 8);
  v52(v49, v50);
  sub_100009104(v77, &qword_100576490);
  sub_100009104(v43, &unk_10057BB90);
  v52(v71, v50);
  sub_100004590(v79);
  sub_100009104(v70, &qword_100576948);
  (*(v69 + 8))(v68, v75);
  rawValue = ContextActionsConfiguration.transcriptSelectionActions()()._0._rawValue;

  sub_1002A9028(v58, v57);
  return rawValue;
}

void sub_1002A8E4C(char a1)
{
  if (qword_100593598 && *(qword_100593598 + OBJC_IVAR____TtC8Podcasts11AppDelegate_nowPlayingBootstrap))
  {

    RepublishingValueSubject.value.getter();
    if (v3)
    {
      v2 = [v3 view];

      if (!v2)
      {
        __break(1u);
        return;
      }

      [v2 setHidden:a1 & 1];
    }
  }
}

unint64_t sub_1002A8F04()
{
  result = qword_10057BBC0;
  if (!qword_10057BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057BBC0);
  }

  return result;
}

uint64_t sub_1002A8F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A8FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A9028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002A9088()
{
  if (*(v0 + 16) == 1)
  {
    return ContextActionsConfiguration.previewViewController()();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A90C8(void *a1)
{
  v3 = *(type metadata accessor for PreviewingPresentationHint() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v8 = *(v7 + *(v3 + 64));

  return sub_10029C8EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002A9160()
{
  v1 = *(type metadata accessor for PreviewingPresentationHint() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));
  return sub_10029CD4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), v2, *(v2 + *(v1 + 64)));
}

uint64_t sub_1002A91E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1002A9240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_1002980B0(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A9300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_100297F88(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A93C0(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackController.TransportCommand() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_100297BCC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1002A94F0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_100297428(v7, a1, v4, v5, v6, v8);
}

uint64_t sub_1002A95BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10021A620;

  return sub_100297070(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A967C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002A96C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C51C;

  return sub_1002957BC(a1, v4, v5, v7, v6);
}

void sub_1002A97A4()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = [objc_opt_self() topLevelPlaylistsExcludingFoldersPredicate];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(MTUuidQueryObserver);
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithEntityName:v4 predicate:v3];

  if (v5)
  {
    *(v0 + 16) = v5;
    [v5 startObserving];
    v6 = [*(v0 + 16) uuids];
    if (v6)
    {
      v7 = v6;
      v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = *(v8 + 16);

      *(v0 + 24) = v9;
      v10 = *(v0 + 16);
      v11 = swift_allocObject();
      swift_weakInit();
      v15[4] = sub_1002A9EC0;
      v15[5] = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100043B8C;
      v15[3] = &unk_1004E98B8;
      v12 = _Block_copy(v15);
      v13 = v10;

      v14 = [v13 addResultsChangedHandler:v12];

      _Block_release(v12);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002A99B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + 16);

      v4 = [v3 uuids];

      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    *(v1 + 24) = v6;
    swift_beginAccess();
    v7 = *(v1 + 32);
    if (v7)
    {

      v7(v6);

      sub_1000112B4(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1002A9AF4()
{
  [*(v0 + 16) stop];

  sub_1000112B4(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t (*sub_1002A9B78())(void *)
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002A9EC8;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_1002A9C40(uint64_t a1, uint64_t a2)
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

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8);
}

void (*sub_1002A9D10(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1002A9E94;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1002A9DDC;
}

void sub_1002A9DDC(uint64_t a1, char a2)
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

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

uint64_t sub_1002A9ECC()
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v39 = &v26 - v9;
  v10 = type metadata accessor for MetricsData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v40 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  result = swift_beginAccess();
  v18 = *(v0 + v16);
  if (v18)
  {
    v38 = type metadata accessor for FlowAction();
    sub_100168088(&unk_10057DC50);
    v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100400790;

    static MetricsTargetID.manageFavoriteCategories.getter();
    v34 = v3;
    static MetricsTargetType.button.getter();
    v32 = v11;
    v28 = v5;
    v27 = v7;
    v37 = v13;
    static MetricsActionType.navigate.getter();
    v29 = v4;
    v30 = v10;
    static MetricsActionContext.contextual.getter();
    v35 = v14;
    v19 = type metadata accessor for URL();
    v20 = v39;
    (*(*(v19 - 8) + 56))(v39, 1, 1, v19);
    v36 = v18;
    static MetricsDataConfiguration.default.getter();
    v21 = v40;
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
    v49 = v43;
    sub_100009104(&v49, &unk_100574650);
    v48 = v44;
    sub_100009104(&v48, &unk_100573A90);
    v47 = v45;
    sub_100009104(&v47, &unk_100574660);
    sub_100037470(v46);

    sub_100009104(v20, &qword_100574040);
    v22 = v27;
    static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
    MetricsData.removingIncludedField(_:)();
    (*(v28 + 8))(v22, v29);
    (*(v32 + 8))(v21, v30);
    ScalarDictionary.init()();
    v23 = v41;
    ActionMetrics.init(data:custom:)();
    v24 = v38;
    v25 = static FlowAction.manageCategoriesPage(actionMetrics:pushPresentationContext:)();
    (*(v35 + 8))(v23, v37);
    v42[3] = v24;
    v42[4] = sub_1002AAA30(&unk_10057A0D0, &type metadata accessor for FlowAction);
    v42[0] = v25;

    ContextActionsConfiguration.perform(_:)();

    return sub_100004590(v42);
  }

  return result;
}

uint64_t sub_1002AA4A4()
{

  v1 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageFavoriteCategoriesContextAction()
{
  result = qword_10057BD78;
  if (!qword_10057BD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AA5CC()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002AA6B8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x80000001004682E0;
  v1._object = 0x80000001004682B0;
  v1._countAndFlagsBits = 0xD000000000000029;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x100000000000001DLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002AA770@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002AA800(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002AA8AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1002AA96C()
{
  v1 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  result = 0;
  if (*(v0 + v1))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002AA9D8(uint64_t a1)
{
  result = sub_1002AAA30(&unk_1005822E0, type metadata accessor for ManageFavoriteCategoriesContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002AAA30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AAA78()
{
  sub_100168088(&qword_100579468);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004007A0;
  sub_100004428(v0 + 24, v42);
  v2 = *(v0 + 64);
  type metadata accessor for PlayTranscriptSelectionContextAction();
  swift_allocObject();

  v3 = sub_100236A64(v42, v2);
  v4 = sub_1002AB1BC(&qword_100578FD0, type metadata accessor for PlayTranscriptSelectionContextAction);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  type metadata accessor for CopyTranscriptSelectionContextAction();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = [objc_opt_self() mainBundle];
  v43._object = 0xE000000000000000;
  v7._countAndFlagsBits = 2037411651;
  v7._object = 0xE400000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v43);

  *(v5 + 32) = v9;
  *(v5 + 48) = xmmword_1004093E0;
  *(v5 + 64) = 0xEA0000000000636FLL;
  v10 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_metricsLabel;
  v11 = enum case for MetricsLabel.copyTranscriptSelection(_:);
  v12 = type metadata accessor for MetricsLabel();
  v13 = *(*(v12 - 8) + 104);
  v41 = v11;
  v13(v5 + v10, v11, v12);
  v14 = v5 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v5 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL;
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText) = 0;
  v18 = sub_1002AB1BC(&qword_10057AA90, type metadata accessor for CopyTranscriptSelectionContextAction);
  *(v1 + 48) = v5;
  *(v1 + 56) = v18;
  type metadata accessor for ShareEpisodeContextAction();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  *(v19 + 40) = 1;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  v13(v19 + OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel, enum case for MetricsLabel.share(_:), v12);
  v20 = sub_1002AB1BC(&qword_10057BED0, type metadata accessor for ShareEpisodeContextAction);
  *(v1 + 64) = v19;
  *(v1 + 72) = v20;
  type metadata accessor for ViewTranscriptContextAction();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_episodeOffer;
  v23 = type metadata accessor for EpisodeOffer();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration) = 0;
  v24 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
  v25 = type metadata accessor for TranscriptRequestInformation();
  (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
  v26 = sub_1002AB1BC(&qword_10057BED8, type metadata accessor for ViewTranscriptContextAction);
  *(v1 + 80) = v21;
  *(v1 + 88) = v26;
  type metadata accessor for ReportConcernContextAction();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = -1;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  *(v27 + 64) = 0xD000000000000016;
  *(v27 + 72) = 0x800000010046D090;
  v13(v27 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel, enum case for MetricsLabel.reportPodcast(_:), v12);
  v28 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType;
  v29 = enum case for ContextActionType.report(_:);
  v30 = type metadata accessor for ContextActionType();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  (*(v31 + 56))(v27 + v28, 0, 1, v30);
  v32 = sub_1002AB1BC(&qword_100582290, type metadata accessor for ReportConcernContextAction);
  *(v1 + 96) = v27;
  *(v1 + 104) = v32;
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    type metadata accessor for TranscriptionErrorTTRContextAction();
    v33 = swift_allocObject();
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 16) = 0;
    *(v33 + 40) = xmmword_1004093F0;
    v13(v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_metricsLabel, v41, v12);
    v34 = (v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction____lazy_storage___title);
    *v34 = 0;
    v34[1] = 0;
    v35 = (v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_selectedText);
    *v35 = 0;
    v35[1] = 0;
    v36 = v33 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_timestamp;
    *v36 = 0;
    *(v36 + 8) = 1;
    v37 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent;
    v38 = type metadata accessor for KCURadar.ReportContent();
    (*(*(v38 - 8) + 56))(v33 + v37, 1, 1, v38);
    v1 = sub_100243DAC(1, 6, 1, v1);
    v39 = sub_1002AB1BC(&qword_10057BEE0, type metadata accessor for TranscriptionErrorTTRContextAction);
    *(v1 + 16) = 6;
    *(v1 + 112) = v33;
    *(v1 + 120) = v39;
  }

  return v1;
}

uint64_t sub_1002AB12C()
{

  sub_100004590(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1002AB1BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AB204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a4;
  v43 = a1;
  v5 = type metadata accessor for EpisodeOffer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v16);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001EAFE4(a3, v18);
  LODWORD(v19) = swift_getEnumCaseMultiPayload();
  if (v19 <= 1)
  {
LABEL_9:
    if (!v19)
    {
      v20 = v10;
      v21 = *v18;

      if (v21[2])
      {
        v22 = v21[4];
        v23 = v21[5];

        v24 = [objc_opt_self() sharedInstance];
        v25 = [v24 mainQueueContext];

        v26 = String._bridgeToObjectiveC()();
        v27 = [v25 episodeForUuid:v26];

        if (v27)
        {

          v28 = [v27 title];
          if (v28)
          {
            v29 = v28;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v39 = [v27 podcast];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 title];

            if (v41)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }

          [v27 pubDate];
          Date.init(timeIntervalSinceReferenceDate:)();
          v42 = type metadata accessor for Date();
          (*(*(v42 - 8) + 56))(v15, 0, 1, v42);
          v33 = static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)();

          sub_1001A4748(v15);
          return v33;
        }

        static Logger.transcripts.getter();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v46 = v37;
          *v36 = 136315138;
          v38 = sub_1000153E0(v22, v23, &v46);

          *(v36 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v34, v35, "Failed to fetch local episode with uuid %s to copy selection from transcript", v36, 0xCu);
          sub_100004590(v37);
        }

        else
        {
        }

        (*(v20 + 8))(v12, v9);
        return 0;
      }

      goto LABEL_38;
    }

    if (*(*v18 + 16))
    {
      (*(v6 + 16))(v8, *v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      v33 = sub_1002AB888(v43, v44, v8, v45);
      (*(v6 + 8))(v8, v5);
      return v33;
    }

LABEL_38:

    return 0;
  }

  if (v19 != 2)
  {
    if (v19 != 3)
    {
      sub_1001EDA30(v18);
      return 0;
    }

    v15 = sub_10039779C(*v18);

    if (v15 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (!v19)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_38;
      }
    }

    if ((v15 & 0xC000000000000001) == 0)
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_34:
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  v15 = *v18;
  if (*v18 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_38;
    }
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_38;
    }
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v31 = *(v15 + 32);
LABEL_19:
    v32 = v31;

    v33 = sub_1002ABA84(v43, v44, v32);

    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002AB888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[2] = a2;
  v14[3] = a4;
  v14[1] = a1;
  v4 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ShowOffer();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.title.getter();
  EpisodeOffer.showOffer.getter();
  ShowOffer.title.getter();
  (*(v8 + 8))(v10, v7);
  if (EpisodeOffer.releaseDate.getter())
  {
    LazyDate.value.getter();
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v12 = static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)();

  sub_1001A4748(v6);
  return v12;
}

uint64_t sub_1002ABA84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100168088(&qword_100574760);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - v6;
  v8 = [a3 title];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = [a3 author];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [a3 pubDate];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  v16 = static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)();

  sub_1001A4748(v7);
  return v16;
}

uint64_t (*sub_1002ABC80())()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002ABF4C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_1002ABD1C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1002ABF48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8);
}

void (*sub_1002ABDB4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1002ABF40;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1002ABE80;
}

void sub_1002ABE80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1002ABF38;
    }

    else
    {
      v4 = sub_1002ABF48;
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

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

void sub_1002ABF50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_1005729D0);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    type metadata accessor for CoreDataFetcher();
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 predicateForPodcastUUID:v18];

    __chkstk_darwin(v20);
    *(&v25 - 6) = a1;
    *(&v25 - 5) = a2;
    *(&v25 - 4) = a3;
    *(&v25 - 3) = a4;
    *(&v25 - 2) = a5;
    static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

    v21 = v30;
    v35 = v30;
    v22 = v29;
    v33 = v28;
    v34 = v29;
    v23 = v26;
    v24 = v27;
    v31 = v26;
    v32 = v27;
    *(a6 + 32) = v28;
    *(a6 + 48) = v22;
    *(a6 + 64) = v21;
    *a6 = v23;
    *(a6 + 16) = v24;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1002AC178@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  if (!a1)
  {
    goto LABEL_17;
  }

  v42 = v15;
  v43 = v14;
  v18 = *(a2 + 18);
  if (v18 == 1)
  {
    swift_getObjectType();
    v41 = a4;
    v19 = a1;
    dispatch thunk of MTNotificationManagerProtocol.requestNotificationPermissionsIfNeeded()();
  }

  else
  {
    v20 = a1;
  }

  [a1 setNotifications:v18];
  [a1 setShowTypeSetting:*(a2 + 24)];
  [a1 setHidesPlayedEpisodes:*(a2 + 32)];
  [a1 setEpisodeLimit:*(a2 + 40)];
  [a1 setDeletePlayedEpisodes:*(a2 + 48)];
  v21 = [a1 advancedPlaybackSettings];
  if (v21)
  {
    v22 = v21;
    static Logger.settings.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = a3;
      v27 = v26;
      *&v44[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, v44);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] advancedPlaybackSettings already existed, modifying existing record", v25, 0xCu);
      sub_100004590(v27);
    }

    (*(v42 + 8))(v17, v43);
    v28 = *(a2 + 60);
    v29 = *(a2 + 64);
    [v22 setHasCustomSettings:*(a2 + 56) & 1];
    [v22 setPlaybackRate:v28];
    [v22 setEnhanceDialogueEnabled:v29 & 1];
LABEL_13:

    goto LABEL_14;
  }

  v30 = *(a2 + 56);
  v31 = *(a2 + 60);
  v46 = *(a2 + 64);
  if (v30)
  {
    static Logger.settings.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v44[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, v44);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%s] advancedPlaybackSettings did not already exist, inserting new record", v34, 0xCu);
      sub_100004590(v35);
    }

    (*(v42 + 8))(v12, v43);
    v22 = [objc_opt_self() insertNewAdvancedPlaybackSettingsOnPodcast:a1 hasCustomSettings:1 playbackRate:v46 enhanceDialogueEnabled:v31];
    goto LABEL_13;
  }

LABEL_14:
  v36 = [a1 subscribed];
  v37 = *(a2 + 17);
  if (v36 != v37)
  {
    sub_1002ACF0C(a1, v37);
  }

  v38 = [a1 managedObjectContext];
  [v38 saveInCurrentBlock];

  type metadata accessor for PlayerPerShowSettingsHelper();
  static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)();

LABEL_17:
  sub_1002AC8B4(a1, 1, v44);
  v39 = v44[3];
  *(a5 + 32) = v44[2];
  *(a5 + 48) = v39;
  *(a5 + 64) = v45;
  result = v44[1];
  *a5 = v44[0];
  *(a5 + 16) = result;
  return result;
}

__n128 sub_1002AC67C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for CoreDataFetcher();
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 predicateForPodcastUUID:v3];

  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();
  result = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

__n128 sub_1002AC78C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002AC8B4(a1, 0, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1002AC7E0(uint64_t a1)
{
  sub_100009F1C(0, &unk_100573E20);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_10025810C(a1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 reportWithType:4 userInfo:isa location:@"psst" reason:0];
}

void sub_1002AC8B4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v45[-v11];
  if (a1)
  {
    v13 = a1;
    v14 = [v13 notifications];
    if (a2)
    {
      v48 = v14;
    }

    else
    {
      v27 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
      v28 = [v27 BOOLForKey:kMTDidPromptForNotificationsPermissionsKey];

      v48 = [v13 notifications] & v28;
    }

    v29 = [v13 advancedPlaybackSettings];
    if (v29)
    {
      v30 = v29;
      static Logger.settings.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, &v49);
        _os_log_impl(&_mh_execute_header, v31, v32, "[%s] Found advancedPlaybackSettings record on show", v33, 0xCu);
        sub_100004590(v34);
      }

      (*(v7 + 8))(v12, v6);
      v47 = [v30 hasCustomSettings];
      if ([v30 hasCustomSettings])
      {
        [v30 playbackRate];
        v23 = v35;
      }

      else
      {
        type metadata accessor for PlaybackRateHelper();
        static PlaybackRateHelper.standardRate.getter();
        v23 = v40;
      }

      if ([v30 hasCustomSettings])
      {
        v41 = [v30 enhanceDialogueEnabled];
      }

      else
      {
        v41 = [objc_opt_self() defaultEnhanceDialogueEnabled];
      }

      v46 = v41;
    }

    else
    {
      static Logger.settings.getter();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v49 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_1000153E0(0xD000000000000016, 0x8000000100409550, &v49);
        _os_log_impl(&_mh_execute_header, v36, v37, "[%s] advancedPlaybackSettings not found on show, will use default settings", v38, 0xCu);
        sub_100004590(v39);
      }

      (*(v7 + 8))(v9, v6);
      if (qword_100572818 != -1)
      {
        swift_once();
      }

      v23 = *&dword_10059353C;
      v46 = byte_100593540;
      v47 = byte_100593538;
    }

    v42 = [v13 title];
    if (v42)
    {
      v43 = v42;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v44;
    }

    else
    {
      v16 = 0;
      v21 = 0xE000000000000000;
    }

    v17 = [v13 isSerialShowTypeInFeed];
    v18 = [v13 subscribed];
    v26 = [v13 showTypeSetting];
    v20 = [v13 hidesPlayedEpisodes];
    v15 = [v13 episodeLimit];
    v25 = [v13 deletePlayedEpisodes];

    v22 = v47;
    v19 = v48;
    v24 = v46;
  }

  else
  {
    v15 = MTPodcastEpisodeLimit.intValue.getter();
    if (qword_100572818 != -1)
    {
      swift_once();
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = byte_100593538;
    v23 = *&dword_10059353C;
    v24 = byte_100593540;
    v25 = 0xFFFFFFFFLL;
    v26 = 1;
  }

  *a3 = v16;
  *(a3 + 8) = v21;
  *(a3 + 16) = v17;
  *(a3 + 17) = v18;
  *(a3 + 18) = v19;
  *(a3 + 19) = v49;
  *(a3 + 23) = BYTE4(v49);
  *(a3 + 24) = v26;
  *(a3 + 32) = v20;
  *(a3 + 40) = v15;
  *(a3 + 48) = v25;
  *(a3 + 56) = v22;
  *(a3 + 57) = v50;
  *(a3 + 59) = v51;
  *(a3 + 60) = v23;
  *(a3 + 64) = v24;
}

uint64_t sub_1002ACE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1002ACEAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1002ACF0C(void *a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      if (qword_100572820 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = static PodcastsStateCoordinator.shared;
      v15 = String._bridgeToObjectiveC()();
      [v14 unsafeEnableSubscriptionOnPodcastUUID:v15 from:3 context:v13];

      [a1 markPlaylistsForUpdate];
      v16 = [a1 dictionaryRepresentation];
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009F1C(0, &qword_1005729D0);
      v18 = static OS_dispatch_queue.main.getter();
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      aBlock[4] = sub_1002AD338;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004E9B30;
      v20 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001D293C();
      sub_100168088(&unk_100575CD0);
      sub_100182E30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v23 + 8))(v6, v4);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      if (qword_100572820 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v21 = static PodcastsStateCoordinator.shared;
      v22 = String._bridgeToObjectiveC()();
      [v21 disableSubscriptionOnPodcastUUID:v22 from:3 context:v13];
    }
  }
}

BOOL sub_1002AD340()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-v2 - 8];
  if (!*(v0 + 16))
  {
    return 0;
  }

  sub_1002AE7A8(v9);
  if (v10 == 3)
  {
    sub_1002ADAC4(v3);
    v4 = type metadata accessor for URL();
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
    sub_100009104(v3, &qword_100574040);
    return v5;
  }

  if (v10 >= 3)
  {
    v7 = v9[0];
    sub_100009104(v9, &qword_100574578);
    return (v7 & 1) == 0;
  }

  sub_100009104(v9, &qword_100574578);
  return 1;
}

void sub_1002AD484()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v7[-v2 - 8];
  sub_1002AE7A8(v7);
  if (v8 != 3)
  {
    if (v8 < 3 || (v7[0] & 1) != 0)
    {
      sub_1002AE34C();
      sub_1000044A0((v0 + 32), *(v0 + 56));
      sub_1002ADAC4(v3);
      sub_1002AE0DC();
      sub_1002AD850();
      sub_1002AD634();
      dispatch thunk of LibraryActionControllerProtocol.subscribe(feedUrl:adamId:location:explicit:displaySuccessHUD:)();

      sub_100009104(v7, &qword_100574578);
      v4 = &qword_100574040;
      v5 = v3;
    }

    else
    {
      sub_1000044A0((v0 + 32), *(v0 + 56));
      sub_1002AD634();
      dispatch thunk of LibraryActionControllerProtocol.subscribe(podcast:displaySuccessHUD:)();

      v4 = &qword_100574578;
      v5 = v7;
    }

    sub_100009104(v5, v4);
  }
}

uint64_t sub_1002AD634()
{
  v1 = type metadata accessor for InteractionContext();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 24))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v2 + 8))(v4, v1);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v8 = *v7;
      v9 = v7[8];

      v10 = sub_100168088(&qword_10057C150);
      sub_100009104(&v7[*(v10 + 64)], &unk_100573A80);
      v11 = *(v0 + 16);
      v12 = v11 == 0;
      if (v11)
      {

        v13 = sub_1002160A8();

        if ((v9 & 1) == 0)
        {
LABEL_5:
          if (v11)
          {
            v14 = v8 == v13;
          }

          else
          {
            v14 = 0;
          }

          v12 = v14;
        }
      }

      else
      {
        v13 = 0;
        if ((v9 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      return !v12;
    }

    sub_1002AF030(v7, &type metadata accessor for InteractionContext.Page);
  }

  return 1;
}

uint64_t sub_1002AD850()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v14 + v15, v10);
    sub_1001A15C4(v10, v13);
    sub_1001A1560(v13, v7);
    swift_getEnumCaseMultiPayload();
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v2 + 32))(v4, v7, v1);
      v16 = ShowOffer.dzcPageLocation.getter();
      (*(v2 + 8))(v4, v1);
      sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
      return v16;
    }

    sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
    sub_1002AF030(v7, type metadata accessor for PodcastContextActionDataType.Kind);
  }

  return 0;
}

uint64_t sub_1002ADAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = type metadata accessor for ShowOffer();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v10 - 8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &aBlock[-1] - v14;
  __chkstk_darwin(v16);
  v18 = &aBlock[-1] - v17;
  v19 = *(v1 + 16);
  if (v19)
  {
    v20 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v19 + v20, v15);
    sub_1001A15C4(v15, v18);
    sub_1001A1560(v18, v12);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(v9, v12, v6);
      ShowOffer.feedUrl.getter();
      (*(v7 + 8))(v9, v6);
      return sub_1002AF030(v18, type metadata accessor for PodcastContextActionDataType);
    }

    else
    {
      sub_1002AF030(v12, type metadata accessor for PodcastContextActionDataType.Kind);
      v24 = sub_100215D14();
      if (v24)
      {
        v25 = v24;
        v26 = type metadata accessor for URL();
        (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
        v27 = [v25 managedObjectContext];
        if (v27)
        {
          v28 = v27;
          v29 = swift_allocObject();
          *(v29 + 16) = v25;
          *(v29 + 24) = v5;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_1002AF028;
          *(v30 + 24) = v29;
          aBlock[4] = sub_10002D950;
          aBlock[5] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002D904;
          aBlock[3] = &unk_1004E9CB8;
          v31 = _Block_copy(aBlock);
          v32 = v28;
          v33 = v25;

          [v32 performBlockAndWait:v31];
          _Block_release(v31);

          sub_1002AF030(v18, type metadata accessor for PodcastContextActionDataType);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          else
          {
            sub_1001B8A3C(v5, a1);
          }
        }

        else
        {
          sub_1002AF030(v18, type metadata accessor for PodcastContextActionDataType);

          return sub_1001B8A3C(v5, a1);
        }
      }

      else
      {
        sub_1002AF030(v18, type metadata accessor for PodcastContextActionDataType);
        v35 = type metadata accessor for URL();
        return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
      }
    }
  }

  else
  {
    v22 = type metadata accessor for URL();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  return result;
}

id sub_1002AE004(void *a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v10 - v6;
  result = [a1 feedURL];
  if (result)
  {
    v9 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();

    return sub_1001FDDA8(v7, a2);
  }

  return result;
}

uint64_t sub_1002AE0DC()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v14 + v15, v10);
    sub_1001A15C4(v10, v13);
    sub_1001A1560(v13, v7);
    swift_getEnumCaseMultiPayload();
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v2 + 32))(v4, v7, v1);
      v16 = ShowOffer.adamId.getter();
      (*(v2 + 8))(v4, v1);
      sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
      return v16;
    }

    sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
    sub_1002AF030(v7, type metadata accessor for PodcastContextActionDataType.Kind);
  }

  return 0;
}

uint64_t sub_1002AE34C()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = aBlock - v9;
  __chkstk_darwin(v11);
  v13 = aBlock - v12;
  v14 = *(v0 + 16);
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v14 + v15, v10);
  sub_1001A15C4(v10, v13);
  sub_1001A1560(v13, v7);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    if (ShowOffer.contentRating.getter() == 2)
    {
      v16 = 0;
    }

    else
    {
      v28 = ContentRating.rawValue.getter();
      v30 = v29;
      v16 = 1;
      if (v28 != ContentRating.rawValue.getter() || v30 != v31)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    (*(v2 + 8))(v4, v1);
    sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
    return v16 & 1;
  }

  sub_1002AF030(v7, type metadata accessor for PodcastContextActionDataType.Kind);
  v17 = sub_100215D14();
  if (!v17)
  {
    sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

  v18 = v17;
  v34 = 0;
  v19 = [v17 managedObjectContext];
  if (!v19)
  {
    sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);

    goto LABEL_18;
  }

  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = &v34;
  *(v21 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002AEFF8;
  *(v22 + 24) = v21;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E9C40;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v18;

  [v24 performBlockAndWait:v23];
  _Block_release(v23);

  sub_1002AF030(v13, type metadata accessor for PodcastContextActionDataType);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v16 = v34;

    return v16 & 1;
  }

  __break(1u);
  return result;
}

void sub_1002AE7A8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShowOffer();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = *(v1 + 16);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v16 + v17, v12);
    sub_1001A15C4(v12, v15);
    sub_1001A1560(v15, v9);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v4 + 32))(v6, v9, v3);
      ShowOffer.adamId.getter();
      (*(v4 + 8))(v6, v3);
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    dispatch thunk of PodcastStateMachine.currentState.getter();
    v21 = v24;
    v22 = v23;
    v18 = v25;

    sub_1002AF030(v15, type metadata accessor for PodcastContextActionDataType);
    v19 = v21;
    v20 = v22;
  }

  else
  {
    v18 = 0;
    v19 = xmmword_100401980;
    v20 = 0uLL;
  }

  *a1 = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
}

uint64_t sub_1002AEA50()
{

  sub_100004590(v0 + 32);

  v1 = OBJC_IVAR____TtC8Podcasts29SubscribePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscribePodcastContextAction()
{
  result = qword_10057C008;
  if (!qword_10057C008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AEB60()
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

uint64_t sub_1002AEC14()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x800000010046D120;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002AECB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts29SubscribePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002AED2C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.subscribe(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002AEE08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1002AEE68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002AEEC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002AEF2C(uint64_t a1)
{
  result = sub_1002AEFB4(&qword_10057C140);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002AEF70(uint64_t a1)
{
  result = sub_1002AEFB4(&qword_10057C148);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002AEFB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SubscribePodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002AEFF8()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) isExplicit];
  *v1 = result;
  return result;
}

uint64_t sub_1002AF030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002AF098@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_10057C158);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v56 - v6;
  v8 = sub_100168088(&qword_10057C160);
  __chkstk_darwin(v8 - 8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = v56 - v12;
  v13 = sub_100168088(&qword_10057C168);
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = v56 - v16;
  v17 = type metadata accessor for Podcasts();
  *(&v91 + 1) = v17;
  *&v92 = sub_1001A9324();
  v18 = sub_10000E680(&v90);
  (*(*(v17 - 8) + 104))(v18, enum case for Podcasts.advancedPlayback(_:), v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  v19 = sub_100004590(&v90);
  if ((v17 & 1) == 0)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v61 = v4;
  v62 = a2;
  v56[2] = v56;
  __chkstk_darwin(v19);
  v56[1] = &v56[-4];
  v20 = [objc_opt_self() currentDevice];
  [v20 userInterfaceIdiom];

  v59 = v7;
  v60 = v5;
  v57 = v13;
  v58 = v10;
  LocalizedStringKey.init(stringLiteral:)();
  v96 = Text.init(_:tableName:bundle:comment:)();
  v97 = v22;
  v98 = v23 & 1;
  v99 = v24;
  sub_1002AFF64(a1, &v90);
  sub_100168088(&qword_10057C170);
  sub_100168088(&qword_10057C178);
  v25 = sub_100168310(&qword_10057C180);
  v26 = type metadata accessor for InlinePickerStyle();
  v27 = sub_100009FAC(&qword_10057C188, &qword_10057C180);
  *&v84 = v25;
  *(&v84 + 1) = v26;
  *&v85 = v27;
  *(&v85 + 1) = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_1002B0DB4(&qword_10057C190, &qword_10057C178);
  Section<>.init(header:footer:content:)();
  v28 = a1[5];
  v29 = a1[6];
  v30 = a1[3];
  v85 = a1[4];
  v86 = v28;
  v31 = a1[7];
  v87 = v29;
  v88 = v31;
  v84 = v30;
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  v87 = v93;
  v88 = v94;
  v89 = v95;
  v84 = v90;
  v85 = v91;
  v86 = v92;
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(&v90, &qword_100577810);
  v32 = v79;
  v33 = v80;
  LOBYTE(v26) = v81;
  v34 = v82;
  v35 = v83;
  swift_getKeyPath();
  v74 = v32;
  v75 = v33;
  v76 = v26;
  v77 = v34;
  v78 = v35;
  sub_100168088(&qword_10057C198);
  Binding.subscript.getter();

  v36 = v71;
  v37 = v72;
  LOBYTE(v26) = v73;

  v68 = v36;
  v69 = v37;
  v70 = v26;
  sub_100168088(&qword_10057C1A0);
  Binding.wrappedValue.getter();
  v38 = v67;

  v40 = v38 == 1;
  v41 = 1;
  v42 = v64;
  if (v40)
  {
    __chkstk_darwin(v39);
    sub_1002B0BC4(a1, &v84);
    sub_100168088(&qword_10057C1B8);
    sub_100009FAC(&qword_10057C1C0, &qword_10057C1B8);
    Section<>.init(header:footer:content:)();
    v41 = 0;
  }

  v43 = sub_100168088(&qword_10057C1A8);
  (*(*(v43 - 8) + 56))(v42, v41, 1, v43);
  v45 = v65;
  v44 = v66;
  v46 = *(v65 + 16);
  v47 = v63;
  v48 = v57;
  v46(v63, v66, v57);
  v49 = v42;
  v50 = v42;
  v51 = v58;
  sub_100010430(v49, v58, &qword_10057C160);
  v52 = v59;
  v46(v59, v47, v48);
  v53 = sub_100168088(&qword_10057C1B0);
  sub_100010430(v51, v52 + *(v53 + 48), &qword_10057C160);
  sub_100009104(v50, &qword_10057C160);
  v54 = *(v45 + 8);
  v54(v44, v48);
  sub_100009104(v51, &qword_10057C160);
  v54(v47, v48);
  v55 = v62;
  sub_100053364(v52, v62);
  return (*(v60 + 56))(v55, 0, 1, v61);
}

uint64_t sub_1002AF920@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100168088(&qword_10057C180);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v23 - v8;
  v10 = a1[6];
  v46 = a1[5];
  v47 = v10;
  v48 = a1[7];
  v11 = a1[4];
  v44 = a1[3];
  v45 = v11;
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  v46 = v50[2];
  v47 = v50[3];
  v48 = v50[4];
  v49 = v51;
  v44 = v50[0];
  v45 = v50[1];
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(v50, &qword_100577810);
  v12 = v39;
  v13 = v40;
  v14 = v41;
  v15 = v42;
  v16 = v43;
  swift_getKeyPath();
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  sub_100168088(&qword_10057C198);
  Binding.subscript.getter();

  v17 = v31;
  v18 = v32;
  v19 = v33;

  v27 = a1;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  sub_100168088(&qword_10057C1F0);
  sub_1002B0D60();
  sub_1002B0DB4(&qword_10057C200, &qword_10057C1F0);
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  sub_100009FAC(&qword_10057C188, &qword_10057C180);
  v21 = v23;
  v20 = v24;
  View.pickerStyle<A>(_:)();
  (*(v25 + 8))(v6, v20);
  return (*(v7 + 8))(v9, v21);
}

char *sub_1002AFCD8(char *result, uint64_t a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for PlaybackRateHelper();
    static PlaybackRateHelper.standardRate.getter();
    *(a2 + 4) = v4;
    result = [objc_opt_self() defaultEnhanceDialogueEnabled];
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1002AFD38(uint64_t a1)
{
  v2 = type metadata accessor for ShowSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = &off_1004DF0A8;
  swift_getKeyPath();
  sub_10020DCB0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10020DD14(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100168088(&qword_10057C208);
  sub_100009FAC(&unk_10057C210, &qword_10057C208);
  sub_1002B0D60();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1002AFED8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1002AFF64@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[6];
  v32 = a1[5];
  v33 = v4;
  v34 = a1[7];
  v5 = a1[4];
  v30 = a1[3];
  v31 = v5;
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  v35[2] = v27;
  v36 = v28;
  v37 = v29;
  v35[0] = v25;
  v35[1] = v26;
  result = sub_10020DB40(v35);
  if (BYTE8(v36))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = a1[6];
    v32 = a1[5];
    v33 = v11;
    v34 = a1[7];
    v12 = a1[4];
    v30 = a1[3];
    v31 = v12;
    State.wrappedValue.getter();
    v14 = *(&v25 + 1);
    v13 = v25;
    v15 = a1[6];
    v32 = a1[5];
    v33 = v15;
    v34 = a1[7];
    v16 = a1[4];
    v30 = a1[3];
    v31 = v16;
    State.wrappedValue.getter();
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v25 = v20;
    v26 = v21;
    sub_10020DB40(&v25);
    v7 = sub_1002B00D4(v13, v14, SBYTE8(v28));
    v8 = v17;
    LOBYTE(v13) = v18;
    v10 = v19;

    v9 = v13 & 1;
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t sub_1002B00D4(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  if (a3)
  {
    v7 = " on this device.";
    v8 = 0xD000000000000036;
  }

  else
  {
    v7 = "Speed & Audio Adjustments";
    v8 = 0xD000000000000037;
  }

  v9 = v7 | 0x8000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v8);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._object = 0x800000010046D1A0;
  v11._countAndFlagsBits = 0xD000000000000010;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.init(stringInterpolation:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1002B020C@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v62 = sub_100168088(&qword_10057C1C8);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = v50 - v3;
  v4 = sub_100168088(&qword_10057C1D0);
  __chkstk_darwin(v4 - 8);
  v63 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = v50 - v7;
  v61 = sub_100168088(&qword_10057C1D8);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v50 - v10;
  v12 = a1[6];
  v86 = a1[5];
  v87 = v12;
  v88 = a1[7];
  v13 = a1[4];
  v84 = a1[3];
  v85 = v13;
  v54 = sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  v86 = v90[2];
  v87 = v90[3];
  v88 = v90[4];
  v89 = v91;
  v84 = v90[0];
  v85 = v90[1];
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(v90, &qword_100577810);
  v14 = v69;
  v15 = v70;
  v16 = DWORD1(v70);
  v17 = BYTE8(v70);
  swift_getKeyPath();
  v80 = v14;
  v81 = v15;
  v82 = v16;
  v83 = v17;
  sub_100168088(&qword_10057C198);
  Binding.subscript.getter();

  v18 = v65;
  v19 = v66;

  type metadata accessor for PlaybackRateHelper();
  static PlaybackRateHelper.extendedSupportedRatesLowerBound.getter();
  v21 = v20;
  result = static PlaybackRateHelper.extendedSupportedRatesUpperBound.getter();
  if (v21 > v23)
  {
    __break(1u);
  }

  else
  {
    v24 = v23;
    v25 = static PlaybackRateHelper.extendedSupportedRatesStep.getter();
    v26 = __chkstk_darwin(v25).n128_u32[0];
    v78 = v18;
    v79 = v19;
    v75 = v26;
    v76 = v21;
    v77 = v24;
    Stepper.init<A>(value:in:step:onEditingChanged:label:)();
    if (static Podcasts.isSpeakEasyEnabled.getter())
    {
      v27 = LocalizedStringKey.init(stringLiteral:)();
      v52 = v28;
      v53 = v27;
      v50[3] = v29;
      v51 = v30;
      v31 = a1[6];
      v71 = a1[5];
      v72 = v31;
      v73 = a1[7];
      v32 = a1[4];
      v69 = a1[3];
      v70 = v32;
      State.projectedValue.getter();
      swift_getKeyPath();
      v71 = v86;
      v72 = v87;
      v73 = v88;
      v74 = v89;
      v69 = v84;
      v70 = v85;
      Binding.subscript.getter();

      sub_100009104(&v84, &qword_100577810);
      v33 = v80;
      v34 = v81;
      v35 = v82;
      v36 = v83;
      swift_getKeyPath();
      v65 = v33;
      LOBYTE(v66) = v34;
      v67 = v35;
      v68 = v36;
      Binding.subscript.getter();

      v37 = v55;
      Toggle<>.init(_:isOn:)();
      v38 = v60;
      v39 = v57;
      v40 = v62;
      (*(v60 + 32))(v57, v37, v62);
      (*(v38 + 56))(v39, 0, 1, v40);
    }

    else
    {
      v39 = v57;
      (*(v60 + 56))(v57, 1, 1, v62);
    }

    v56 = v11;
    v42 = v58;
    v41 = v59;
    v43 = *(v59 + 16);
    v44 = v11;
    v45 = v61;
    v43(v58, v44, v61);
    v46 = v63;
    sub_100010430(v39, v63, &qword_10057C1D0);
    v47 = v64;
    v43(v64, v42, v45);
    v48 = sub_100168088(&qword_10057C1E0);
    sub_100010430(v46, &v47[*(v48 + 48)], &qword_10057C1D0);
    sub_100009104(v39, &qword_10057C1D0);
    v49 = *(v41 + 8);
    v49(v56, v45);
    sub_100009104(v46, &qword_10057C1D0);
    return (v49)(v42, v45);
  }

  return result;
}

uint64_t sub_1002B08C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010046D220;
  v3._countAndFlagsBits = 0xD000000000000010;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  type metadata accessor for PlaybackRateHelper();
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(&v19, &qword_100577810);
  swift_getKeyPath();
  sub_100168088(&qword_10057C198);
  Binding.subscript.getter();

  sub_100168088(&qword_10057C1E8);
  Binding.wrappedValue.getter();

  v4._countAndFlagsBits = static PlaybackRateHelper.localizedWithX(_:alwaysShowTenthsDigit:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v11 = Text.monospacedDigit()();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1002B0D48(v6, v8, v10 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_1002B0BC4@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[6];
  v32 = a1[5];
  v33 = v4;
  v34 = a1[7];
  v5 = a1[4];
  v30 = a1[3];
  v31 = v5;
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  v35[2] = v27;
  v36 = v28;
  v37 = v29;
  v35[0] = v25;
  v35[1] = v26;
  result = sub_10020DB40(v35);
  if (BYTE8(v36) == 1)
  {
    v7 = a1[6];
    v32 = a1[5];
    v33 = v7;
    v34 = a1[7];
    v8 = a1[4];
    v30 = a1[3];
    v31 = v8;
    State.wrappedValue.getter();
    v10 = *(&v25 + 1);
    v9 = v25;
    v11 = a1[6];
    v32 = a1[5];
    v33 = v11;
    v34 = a1[7];
    v12 = a1[4];
    v30 = a1[3];
    v31 = v12;
    State.wrappedValue.getter();
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v25 = v20;
    v26 = v21;
    sub_10020DB40(&v25);
    v13 = sub_1002B00D4(v9, v10, SBYTE8(v28));
    v15 = v14;
    LOBYTE(v9) = v16;
    v18 = v17;

    v19 = v9 & 1;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v18 = 0;
  }

  *a2 = v13;
  a2[1] = v15;
  a2[2] = v19;
  a2[3] = v18;
  return result;
}

uint64_t sub_1002B0D48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1002B0D60()
{
  result = qword_10057C1F8;
  if (!qword_10057C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057C1F8);
  }

  return result;
}

uint64_t sub_1002B0DB4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002B0E14@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShowSettingsView();

  return sub_1002AFED8(a1);
}

id sub_1002B0E94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v89 = a6;
  v92 = a3;
  v94 = a2;
  v8 = *(a5 + 48);
  v115 = *(a5 + 32);
  v116 = v8;
  v117 = *(a5 + 64);
  v10 = *a5;
  v9 = *(a5 + 16);
  v93 = a5;
  v113 = v10;
  v114 = v9;
  v11 = type metadata accessor for ArtworkModel();
  v90 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v101 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v13 - 8);
  v88 = &v85 - v14;
  v15 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v15 - 8);
  v87 = &v85 - v16;
  v17 = sub_100168088(&unk_10057C220);
  __chkstk_darwin(v17 - 8);
  v19 = &v85 - v18;
  v104 = _s19EpisodeImageRowItemVMa_0();
  v97 = *(v104 - 8);
  __chkstk_darwin(v104);
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v105 = &v85 - v22;
  __chkstk_darwin(v23);
  v103 = &v85 - v24;
  if (a4 >> 62)
  {
    goto LABEL_49;
  }

  v25 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v96 = a1;
  if (v25)
  {
    v26 = 0;
    v27 = a4 & 0xC000000000000001;
    v28 = a4 & 0xFFFFFFFFFFFFFF8;
    v29 = (v97 + 48);
    v102 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v27)
      {
        v31 = a4;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a4 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v26 >= *(v28 + 16))
        {
          goto LABEL_48;
        }

        v31 = a4;

        a4 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v25 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_1002B1DE0(v19);
      if ((*v29)(v19, 1, v104) == 1)
      {
        sub_100009104(v19, &unk_10057C220);
      }

      else
      {
        sub_1002B3F34(v19, v103, _s19EpisodeImageRowItemVMa_0);
        v32 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1002434D0(0, v32[2] + 1, 1, v32);
        }

        v102 = v32;
        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          v102 = sub_1002434D0(v33 > 1, v34 + 1, 1, v102);
        }

        v35 = v102;
        v102[2] = v34 + 1;
        sub_1002B3F34(v103, v35 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 9) * v34, _s19EpisodeImageRowItemVMa_0);
        a1 = v96;
      }

      ++v26;
      v30 = a4 == v25;
      a4 = v31;
      if (v30)
      {
        goto LABEL_20;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_20:

  v36 = v102[2];
  if (v36 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = v102[2];
  }

  if (!v36)
  {

    sub_100018888(v93);

    return 0;
  }

  v38 = v97;
  v39 = v102 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v86 = (2 * v37) | 1;
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v98 = aBlock;
  aBlock = _swiftEmptyArrayStorage;
  v40 = v105 + *(v104 + 28);
  v99 = objc_opt_self();
  v103 = *(v38 + 9);
  v97 = "defaultCoverImage";
  v95 = "CarPlayLoadArtwork";
  v91 = v39;
  v41 = v37;
  do
  {
    sub_1002B2CD4(v39, v105, _s19EpisodeImageRowItemVMa_0);
    [v99 maximumImageSize];
    v43 = *(v40 + 64);
    if (v43 == 255)
    {
      v52 = String._bridgeToObjectiveC()();
      v51 = [objc_opt_self() imageNamed:v52];

      if (!v51)
      {
LABEL_25:
        sub_1002B54FC(v105, _s19EpisodeImageRowItemVMa_0);
        goto LABEL_26;
      }
    }

    else
    {
      v44 = *(v40 + 56);
      sub_1002448C4(v44, *(v40 + 64));
      static CGSize.* infix(_:_:)();
      v46 = v45;
      v48 = v47;
      v49 = Color.color.getter();
      v50 = objc_opt_self();
      v51 = [v50 imageWithSolidColor:v49 atSize:{v46, v48}];

      if (v51)
      {
        sub_1002448D8(v44, v43);
      }

      else
      {
        v53 = String._bridgeToObjectiveC()();
        v51 = [v50 imageNamed:v53];
        sub_1002448D8(v44, v43);

        if (!v51)
        {
          goto LABEL_25;
        }
      }
    }

    v54 = *(v105 + *(v104 + 32) + 8);
    v55 = String._bridgeToObjectiveC()();
    v56 = String._bridgeToObjectiveC()();
    if (v54)
    {
      v54 = String._bridgeToObjectiveC()();
    }

    [objc_allocWithZone(CPListImageRowItemCondensedElement) initWithImage:v51 imageShape:1 title:v55 subtitle:v56 accessorySymbolName:v54];

    sub_1002B54FC(v105, _s19EpisodeImageRowItemVMa_0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_26:
    v42 = v101;
    v39 += v103;
    --v41;
  }

  while (v41);
  v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v58 = v92;
  v59 = String._bridgeToObjectiveC()();
  sub_100009F1C(0, &qword_10057A498);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v61 = [v57 initWithText:v59 condensedElements:isa allowsMultipleLines:1];

  rawValue = _swiftEmptyArrayStorage;
  v62 = v61;
  sub_1001A7650(0, v37, 0);
  v63._rawValue = rawValue;
  v64 = v91;
  v65 = v96;
  v66 = v90;
  do
  {
    v67 = v100;
    sub_1002B2CD4(v64, v100, _s19EpisodeImageRowItemVMa_0);
    sub_1002B2CD4(v67 + *(v104 + 28), v42, &type metadata accessor for ArtworkModel);
    sub_1002B54FC(v67, _s19EpisodeImageRowItemVMa_0);
    rawValue = v63._rawValue;
    v69 = *(v63._rawValue + 2);
    v68 = *(v63._rawValue + 3);
    if (v69 >= v68 >> 1)
    {
      sub_1001A7650(v68 > 1, v69 + 1, 1);
      v66 = v90;
      v63._rawValue = rawValue;
    }

    *(v63._rawValue + 2) = v69 + 1;
    sub_1002B3F34(v42, v63._rawValue + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v69, &type metadata accessor for ArtworkModel);
    v64 += v103;
    --v37;
  }

  while (v37);
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v63, v62);

  v70 = v116;
  v71 = v88;
  *(v88 + 2) = v115;
  *(v71 + 48) = v70;
  *(v71 + 64) = v117;
  v72 = v114;
  *v71 = v113;
  *(v71 + 16) = v72;
  v73 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v74 = *(*(v73 - 8) + 56);
  v74(v71, 0, 1, v73);
  v75 = v87;
  v74(v87, 1, 1, v73);
  v76 = type metadata accessor for CarPlayTemplateInfo(0);
  v77 = *(v76 + 20);
  v78 = v93;
  sub_10019BB44(v93, &aBlock);
  sub_1001FBB44(v71, v75);
  *(v75 + v77) = 0;
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  sub_1001D2AD4(v75);
  v110 = sub_1002B2BB8;
  v111 = v65;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_100372F30;
  v109 = &unk_1004E9D08;
  v79 = _Block_copy(&aBlock);

  [v62 setHandler:v79];
  _Block_release(v79);
  v80 = swift_allocObject();
  v81 = v91;
  *(v80 + 16) = v102;
  *(v80 + 24) = v81;
  v82 = v86;
  *(v80 + 32) = 0;
  *(v80 + 40) = v82;
  *(v80 + 48) = v94;
  *(v80 + 56) = v58;
  *(v80 + 64) = v89;
  *(v80 + 72) = v65;
  v110 = sub_1002B2BC0;
  v111 = v80;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_1002B1CD0;
  v109 = &unk_1004E9D58;
  v83 = _Block_copy(&aBlock);

  [v62 setListImageRowHandler:v83];
  _Block_release(v83);

  sub_100018888(v78);

  return v62;
}

void sub_1002B1CD0(uint64_t a1, void *a2, int a3, void *aBlock)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t _s19EpisodeImageRowItemVMa_0()
{
  result = qword_10057C298;
  if (!qword_10057C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B1DE0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v43 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v43);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for ArtworkModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19EpisodeImageRowItemVMa_0();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v44 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = LegacyLockup.title.getter();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (v19 = dispatch thunk of LegacyLockup.playAction.getter()) == 0)
  {

LABEL_9:

    goto LABEL_10;
  }

  v42 = v19;
  LegacyLockup.artwork.getter();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v41 = v11;
    sub_1002B3F34(v7, v11, &type metadata accessor for ArtworkModel);
    sub_100168088(&unk_100578420);
    BaseObjectGraph.inject<A>(_:)();
    sub_100168088(&unk_10057A4A0);
    BaseObjectGraph.inject<A>(_:)();
    LegacyLockup.adamId.getter();
    EpisodeStateController.stateMachine(for:)();
    v24 = v45;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    v25 = v44;
    *v44 = v16;
    v25[1] = v17;
    LegacyEpisodeLockup.showTypeIsSerial.getter();
    v26 = LegacyLockup.isExplicit.getter();
    v27 = &v2[*(sub_100168088(&qword_1005812A0) + 64)];
    *v2 = LegacyEpisodeLockup.episodeNumber.getter();
    v2[8] = v28 & 1;
    LegacyEpisodeLockup.releaseDate.getter();
    *v27 = LegacyEpisodeLockup.duration.getter();
    v27[8] = v29 & 1;
    swift_storeEnumTagMultiPayload();
    v30 = sub_1001A3250(v49, v26 & 1, v2);
    v32 = v31;
    sub_1002B54FC(v2, _s27CarPlayEpisodeSubtitleStyleOMa);
    v25[2] = v30;
    v25[3] = v32;
    v33 = v47;
    v34 = v25 + *(v47 + 24);
    *(v34 + 3) = type metadata accessor for Action();
    *(v34 + 4) = sub_1002B5338(&qword_100578430, &type metadata accessor for Action);
    *v34 = v42;
    v34[40] = 0;
    type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v35 = v41;
    sub_1002B2CD4(v41, v25 + *(v33 + 28), &type metadata accessor for ArtworkModel);

    v36 = sub_1002B5380();
    v38 = v37;

    sub_1002B54FC(v24, &type metadata accessor for EpisodePlayState);
    sub_100004590(v49);
    sub_1002B54FC(v35, &type metadata accessor for ArtworkModel);
    v39 = (v25 + *(v33 + 32));
    *v39 = v36;
    v39[1] = v38;
    v40 = v48;
    sub_1002B3F34(v25, v48, _s19EpisodeImageRowItemVMa_0);
    v22 = v33;
    v21 = v40;
    v20 = 0;
    return (*(v46 + 56))(v21, v20, 1, v22);
  }

  sub_100009104(v7, &unk_100578C10);
LABEL_10:
  v20 = 1;
  v22 = v47;
  v21 = v48;
  return (*(v46 + 56))(v21, v20, 1, v22);
}

uint64_t sub_1002B237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_10023EE80(0, 0, v10, &unk_100409848, v13);
}

void sub_1002B24D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v59 = a6;
  v63 = a3;
  v64 = a4;
  v15 = type metadata accessor for Logger();
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v18 - 8);
  v62 = &v56[-v19];
  v20 = type metadata accessor for CarPlayTemplateInfo(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v58 = &v56[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v23 - 8);
  v25 = &v56[-v24];
  v26 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v26 - 8);
  v28 = &v56[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v31 = &v56[-v30];
  v32 = _s19EpisodeImageRowItemVMa_0();
  __chkstk_darwin(v32);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Attempted to select list image row item with invalid index!", v54, 2u);
    }

    v55 = (*(v60 + 8))(v17, v61);
    v63(v55);
  }

  else
  {
    v60 = a12;
    v57 = a11;
    v35 = &v56[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_1002B2CD4(v59 + *(v33 + 72) * a2, v35, _s19EpisodeImageRowItemVMa_0);
    v36 = objc_allocWithZone(CPListImageRowItem);
    v37 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_10057A498);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v39 = [v36 initWithText:v37 condensedElements:isa allowsMultipleLines:1];

    v40 = *(v32 + 24);
    v61 = v35;
    sub_1002B2CD4(&v35[v40], v25, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v41 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v42 = *(*(v41 - 8) + 56);
    v42(v25, 0, 1, v41);
    v42(v31, 1, 1, v41);
    v43 = *(v20 + 20);
    sub_1001FBB44(v25, v31);
    v31[v43] = v57;
    (*(v21 + 56))(v31, 0, 1, v20);
    sub_100010430(v31, v28, &unk_100578410);
    v44 = 0;
    if ((*(v21 + 48))(v28, 1, v20) != 1)
    {
      sub_1002B2CD4(v28, v58, type metadata accessor for CarPlayTemplateInfo);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_1002B54FC(v28, type metadata accessor for CarPlayTemplateInfo);
    }

    [v39 setUserInfo:v44];
    swift_unknownObjectRelease();
    sub_100009104(v31, &unk_100578410);
    v45 = v62;
    static TaskPriority.userInitiated.getter();
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    type metadata accessor for MainActor();
    v47 = v60;

    v48 = v39;
    v49 = v64;

    v50 = static MainActor.shared.getter();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = &protocol witness table for MainActor;
    v51[4] = v47;
    v51[5] = v48;
    v51[6] = v63;
    v51[7] = v49;
    sub_10023EE80(0, 0, v45, &unk_100409828, v51);

    sub_1002B54FC(v61, _s19EpisodeImageRowItemVMa_0);
  }
}

uint64_t sub_1002B2C00(uint64_t a1)
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

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002B2CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B2D3C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v156 = a2;
  v7 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v7 - 8);
  v147 = &v135 - v8;
  v9 = type metadata accessor for Logger();
  v152 = *(v9 - 8);
  __chkstk_darwin(v9);
  v155 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v145 = &v135 - v12;
  __chkstk_darwin(v13);
  v144 = &v135 - v14;
  v15 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v15 - 8);
  v148 = (&v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v135 - v18;
  v20 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v20 - 8);
  v149 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v150 = &v135 - v23;
  __chkstk_darwin(v24);
  v26 = &v135 - v25;
  v27 = type metadata accessor for CarPlayTemplateInfo(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v29;
  v32 = __chkstk_darwin(v31);
  v34 = &v135 - v33;
  v153 = a1;
  sub_1003A7AF0(v32);
  v151 = v28;
  v37 = *(v28 + 48);
  v36 = v28 + 48;
  v35 = v37;
  v154 = v27;
  if (v37(v26, 1, v27) == 1)
  {
    v38 = sub_100009104(v26, &unk_100578410);
    return v156(v38);
  }

  else
  {
    v137 = v35;
    v138 = v36;
    v136 = v30;
    v139 = v9;
    v140 = a3;
    v143 = v19;
    sub_1002B3F34(v26, v34, type metadata accessor for CarPlayTemplateInfo);
    v40 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions;
    swift_beginAccess();
    v41 = *(a4 + v40);
    v142 = v34;
    v141 = a4;
    if ((v41 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1002B5338(&unk_100575AF0, &type metadata accessor for AnyCancellable);
      result = Set.Iterator.init(_cocoa:)();
      v42 = v161;
      v43 = v162;
      v44 = v163;
      v45 = v164;
      v46 = v165;
    }

    else
    {
      v47 = -1 << *(v41 + 32);
      v43 = v41 + 56;
      v44 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v46 = v49 & *(v41 + 56);
      result = swift_bridgeObjectRetain_n();
      v45 = 0;
      v42 = v41;
    }

    if (v42 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v50 = v45;
      v51 = v46;
      v52 = v45;
      if (!v46)
      {
        break;
      }

LABEL_14:
      v53 = (v51 - 1) & v51;
      v54 = *(*(v42 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));

      if (!v54)
      {
LABEL_20:
        sub_1000319D8();

        v56 = v142;
        v57 = v143;
        sub_100010430(v142, v143, &unk_100575AE0);
        v58 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
        v60 = v154;
        v61 = v155;
        if (v59 == 1)
        {
          goto LABEL_33;
        }

        v62 = v148;
        sub_100010430(v57, v148, &unk_100575AE0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 13)
          {
            sub_100009F1C(0, &qword_1005748A0);
            v64 = v144;
            static OS_os_log.carPlay.getter();
            v65 = v153;
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = v56;
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *&aBlock = v70;
              *v69 = 136315138;
              objc_opt_self();
              v71 = swift_dynamicCastObjCClass();
              if (v71 && (v72 = [v71 text]) != 0 || (v72 = objc_msgSend(v65, "text")) != 0)
              {
                v73 = v72;
                v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v76 = v75;
              }

              else
              {
                v76 = 0xE200000000000000;
                v74 = 16718;
              }

              v121 = sub_1000153E0(v74, v76, &aBlock);

              *(v69 + 4) = v121;
              _os_log_impl(&_mh_execute_header, v66, v67, "Did select item with title %s for template info type reload.", v69, 0xCu);
              sub_100004590(v70);

              v99 = (*(v152 + 8))(v64, v139);
              v56 = v68;
            }

            else
            {

              v99 = (*(v152 + 8))(v64, v139);
            }

            v156(v99);
            v122 = v141 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
            swift_beginAccess();
            if (*(v122 + 24))
            {
              sub_100004428(v122, &aBlock);
              swift_endAccess();
              v123 = *&v160[8];
              v124 = *&v160[16];
              sub_1000044A0(&aBlock, *&v160[8]);
              (*(v124 + 16))(v123, v124);
              sub_1002B54FC(v56, type metadata accessor for CarPlayTemplateInfo);
              sub_100004590(&aBlock);
            }

            else
            {
              sub_1002B54FC(v56, type metadata accessor for CarPlayTemplateInfo);
              swift_endAccess();
            }

            return sub_100009104(v57, &unk_100575AE0);
          }

          sub_1002B54FC(v62, type metadata accessor for CarPlayTemplateInfo.TemplateType);
LABEL_33:
          sub_100009F1C(0, &qword_1005748A0);
          static OS_os_log.carPlay.getter();
          v87 = v153;
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *&aBlock = v91;
            *v90 = 136315138;
            objc_opt_self();
            v92 = swift_dynamicCastObjCClass();
            if (v92 && (v93 = [v92 text]) != 0 || (v93 = objc_msgSend(v87, "text")) != 0)
            {
              v94 = v93;
              v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v97 = v96;

              v60 = v154;
            }

            else
            {
              v97 = 0xE200000000000000;
              v95 = 16718;
            }

            v100 = sub_1000153E0(v95, v97, &aBlock);

            *(v90 + 4) = v100;
            _os_log_impl(&_mh_execute_header, v88, v89, "Did select item with title %s and will attempt to push to a new list template.", v90, 0xCu);
            sub_100004590(v91);

            v98 = (*(v152 + 8))(v155, v139);
          }

          else
          {

            v98 = (*(v152 + 8))(v61, v139);
          }

          v156(v98);
          objc_opt_self();
          v101 = swift_dynamicCastObjCClass();
          if (v101 && (v102 = [v101 text]) != 0 || (v102 = objc_msgSend(v87, "text")) != 0)
          {
            v103 = v102;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v104 = String._bridgeToObjectiveC()();
          }

          else
          {
            v104 = 0;
          }

          v105 = objc_allocWithZone(CPListTemplate);
          sub_100009F1C(0, &unk_100575B00);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v107 = [v105 initWithTitle:v104 sections:isa];

          v108 = v150;
          sub_1002B2CD4(v56, v150, type metadata accessor for CarPlayTemplateInfo);
          (*(v151 + 56))(v108, 0, 1, v60);
          v109 = v149;
          sub_100010430(v108, v149, &unk_100578410);
          if (v137(v109, 1, v60) == 1)
          {
            v110 = v107;
            v111 = 0;
          }

          else
          {
            sub_1002B2CD4(v109, v136, type metadata accessor for CarPlayTemplateInfo);
            v112 = v107;
            v111 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            sub_1002B54FC(v109, type metadata accessor for CarPlayTemplateInfo);
          }

          [v107 setUserInfo:v111];

          swift_unknownObjectRelease();
          sub_100009104(v108, &unk_100578410);
          [v107 setShowsSpinnerWhileEmpty:1];
          v113 = *(v141 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
          v114 = swift_allocObject();
          *(v114 + 16) = v107;
          *&v160[16] = sub_1001CC6CC;
          *&v160[24] = v114;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *v160 = sub_100185CE0;
          *&v160[8] = &unk_1004E9DF8;
          v115 = _Block_copy(&aBlock);
          v116 = v107;

          [v113 pushTemplate:v116 animated:1 completion:v115];
          _Block_release(v115);

LABEL_52:
          sub_1002B54FC(v56, type metadata accessor for CarPlayTemplateInfo);
          return sub_100009104(v57, &unk_100575AE0);
        }

        v77 = v62[1];
        aBlock = *v62;
        *v160 = v77;
        *&v160[9] = *(v62 + 25);
        sub_100009F1C(0, &qword_1005748A0);
        v78 = v145;
        static OS_os_log.carPlay.getter();
        v79 = v153;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v157 = v83;
          *v82 = 136315138;
          objc_opt_self();
          v84 = swift_dynamicCastObjCClass();
          if (v84)
          {
            v85 = [v84 text];
            if (v85)
            {
              v86 = v56;
              goto LABEL_55;
            }
          }

          v85 = [v79 text];
          v86 = v56;
          if (v85)
          {
LABEL_55:
            v117 = v85;
            v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v120 = v119;
          }

          else
          {
            v120 = 0xE200000000000000;
            v118 = 16718;
          }

          v125 = sub_1000153E0(v118, v120, &v157);

          *(v82 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v80, v81, "Did select item with title %s for template info type now playing.", v82, 0xCu);
          sub_100004590(v83);

          (*(v152 + 8))(v78, v139);
          v56 = v86;
        }

        else
        {

          (*(v152 + 8))(v78, v139);
        }

        v126 = v147;
        static TaskPriority.userInitiated.getter();
        v127 = type metadata accessor for TaskPriority();
        (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1001CC734(&aBlock, &v157);
        v129 = v136;
        sub_1002B2CD4(v56, v136, type metadata accessor for CarPlayTemplateInfo);
        type metadata accessor for MainActor();
        v130 = v140;

        v131 = static MainActor.shared.getter();
        v132 = (*(v151 + 80) + 97) & ~*(v151 + 80);
        v133 = swift_allocObject();
        *(v133 + 16) = v131;
        *(v133 + 24) = &protocol witness table for MainActor;
        *(v133 + 32) = v156;
        *(v133 + 40) = v130;
        *(v133 + 48) = v128;
        v134 = v158[0];
        *(v133 + 56) = v157;
        *(v133 + 72) = v134;
        *(v133 + 81) = *(v158 + 9);
        sub_1002B3F34(v129, v133 + v132, type metadata accessor for CarPlayTemplateInfo);

        sub_100217A04(0, 0, v126, &unk_100402DD0, v133);

        sub_1001CC8A0(&aBlock);
        goto LABEL_52;
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v45 = v52;
        v46 = v53;
        if ((v42 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v55 = __CocoaSet.Iterator.next()();
        if (v55)
        {
          *&v157 = v55;
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v52 = v45;
          v53 = v46;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= ((v44 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v51 = *(v43 + 8 * v52);
      ++v50;
      if (v51)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B3F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B3F9C(uint64_t a1)
{
  v4 = *(type metadata accessor for CarPlayTemplateInfo(0) - 8);
  v5 = (*(v4 + 80) + 97) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_1001C945C(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1002B40AC(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002B4180(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v158 = a2;
  v7 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v7 - 8);
  v148 = &v137 - v8;
  v9 = type metadata accessor for Logger();
  v155 = *(v9 - 8);
  __chkstk_darwin(v9);
  v157 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v146 = &v137 - v12;
  __chkstk_darwin(v13);
  v145 = &v137 - v14;
  v15 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v15 - 8);
  v150 = (&v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v137 - v18;
  v20 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v20 - 8);
  v151 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v152 = &v137 - v23;
  __chkstk_darwin(v24);
  v26 = &v137 - v25;
  v27 = type metadata accessor for CarPlayTemplateInfo(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v29;
  v32 = __chkstk_darwin(v31);
  v34 = &v137 - v33;
  v156 = a1;
  sub_1003A7AF0(v32);
  v154 = v28;
  v37 = *(v28 + 48);
  v36 = v28 + 48;
  v35 = v37;
  v153 = v27;
  if (v37(v26, 1, v27) == 1)
  {
    v38 = sub_100009104(v26, &unk_100578410);
    return v158(v38);
  }

  else
  {
    v139 = v35;
    v140 = v36;
    v138 = v30;
    v141 = v9;
    v142 = a3;
    v144 = v19;
    v149 = v34;
    sub_1002B3F34(v26, v34, type metadata accessor for CarPlayTemplateInfo);
    v40 = OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingSubscriptions;
    swift_beginAccess();
    v143 = a4;
    v41 = *(a4 + v40);
    if ((v41 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1002B5338(&unk_100575AF0, &type metadata accessor for AnyCancellable);
      result = Set.Iterator.init(_cocoa:)();
      v42 = v163;
      v43 = v164;
      v44 = v165;
      v45 = v166;
      v46 = v167;
    }

    else
    {
      v47 = -1 << *(v41 + 32);
      v43 = v41 + 56;
      v44 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v46 = v49 & *(v41 + 56);
      result = swift_bridgeObjectRetain_n();
      v45 = 0;
      v42 = v41;
    }

    if (v42 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v50 = v45;
      v51 = v46;
      v52 = v45;
      if (!v46)
      {
        break;
      }

LABEL_14:
      v53 = (v51 - 1) & v51;
      v54 = *(*(v42 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));

      if (!v54)
      {
LABEL_20:
        sub_1000319D8();

        v56 = v149;
        v57 = v144;
        sub_100010430(v149, v144, &unk_100575AE0);
        v58 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
        v60 = v157;
        if (v59 == 1)
        {
          goto LABEL_30;
        }

        v61 = v150;
        sub_100010430(v57, v150, &unk_100575AE0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v74 = v61[1];
          aBlock = *v61;
          *v162 = v74;
          *&v162[9] = *(v61 + 25);
          sub_100009F1C(0, &qword_1005748A0);
          v75 = v146;
          static OS_os_log.carPlay.getter();
          v76 = v156;
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *&v159 = v80;
            *v79 = 136315138;
            v81 = [v76 text];
            if (v81 || (objc_opt_self(), (v125 = swift_dynamicCastObjCClass()) != 0) && (v81 = [v125 text]) != 0)
            {
              v82 = v81;
              v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v85 = v84;
            }

            else
            {
              v85 = 0xE200000000000000;
              v83 = 16718;
            }

            v126 = sub_1000153E0(v83, v85, &v159);

            *(v79 + 4) = v126;
            _os_log_impl(&_mh_execute_header, v77, v78, "Did select item with title %s for template info type now playing.", v79, 0xCu);
            sub_100004590(v80);
          }

          (*(v155 + 8))(v75, v141);
          v127 = v158;
          v128 = v148;
          static TaskPriority.userInitiated.getter();
          v129 = type metadata accessor for TaskPriority();
          (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
          v130 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1001CC734(&aBlock, &v159);
          v131 = v138;
          sub_1002B2CD4(v56, v138, type metadata accessor for CarPlayTemplateInfo);
          type metadata accessor for MainActor();
          v132 = v142;

          v133 = static MainActor.shared.getter();
          v134 = (*(v154 + 80) + 97) & ~*(v154 + 80);
          v135 = swift_allocObject();
          *(v135 + 16) = v133;
          *(v135 + 24) = &protocol witness table for MainActor;
          *(v135 + 32) = v127;
          *(v135 + 40) = v132;
          *(v135 + 48) = v130;
          v136 = v160[0];
          *(v135 + 56) = v159;
          *(v135 + 72) = v136;
          *(v135 + 81) = *(v160 + 9);
          sub_1002B3F34(v131, v135 + v134, type metadata accessor for CarPlayTemplateInfo);

          sub_100217A04(0, 0, v128, &unk_100409858, v135);

          sub_1001CC8A0(&aBlock);
        }

        else
        {
          if (EnumCaseMultiPayload == 13)
          {
            sub_100009F1C(0, &qword_1005748A0);
            v63 = v145;
            static OS_os_log.carPlay.getter();
            v64 = v156;
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              *&aBlock = v68;
              *v67 = 136315138;
              v69 = [v64 text];
              if (v69 || (objc_opt_self(), (v119 = swift_dynamicCastObjCClass()) != 0) && (v69 = [v119 text]) != 0)
              {
                v70 = v69;
                v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v73 = v72;
              }

              else
              {
                v73 = 0xE200000000000000;
                v71 = 16718;
              }

              v120 = sub_1000153E0(v71, v73, &aBlock);

              *(v67 + 4) = v120;
              _os_log_impl(&_mh_execute_header, v65, v66, "Did select item with title %s for template info type reload.", v67, 0xCu);
              sub_100004590(v68);
            }

            v121 = (*(v155 + 8))(v63, v141);
            v158(v121);
            v122 = v143 + OBJC_IVAR____TtC8Podcasts17CarPlayController_activeTemplateProvider;
            swift_beginAccess();
            if (*(v122 + 24))
            {
              sub_100004428(v122, &aBlock);
              swift_endAccess();
              v123 = *&v162[8];
              v124 = *&v162[16];
              sub_1000044A0(&aBlock, *&v162[8]);
              (*(v124 + 16))(v123, v124);
              sub_1002B54FC(v56, type metadata accessor for CarPlayTemplateInfo);
              sub_100004590(&aBlock);
            }

            else
            {
              sub_1002B54FC(v56, type metadata accessor for CarPlayTemplateInfo);
              swift_endAccess();
            }

            return sub_100009104(v57, &unk_100575AE0);
          }

          sub_1002B54FC(v61, type metadata accessor for CarPlayTemplateInfo.TemplateType);
LABEL_30:
          sub_100009F1C(0, &qword_1005748A0);
          static OS_os_log.carPlay.getter();
          v86 = v156;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *&aBlock = v90;
            *v89 = 136315138;
            v91 = [v86 text];
            if (v91 || (objc_opt_self(), (v98 = swift_dynamicCastObjCClass()) != 0) && (v91 = [v98 text]) != 0)
            {
              v92 = v158;
              v93 = v91;
              v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v96 = v95;

              v56 = v149;
            }

            else
            {
              v96 = 0xE200000000000000;
              v94 = 16718;
              v92 = v158;
            }

            v99 = sub_1000153E0(v94, v96, &aBlock);

            *(v89 + 4) = v99;
            _os_log_impl(&_mh_execute_header, v87, v88, "Did select item with title %s and will attempt to push to a new list template.", v89, 0xCu);
            sub_100004590(v90);

            v100 = (*(v155 + 8))(v157, v141);
            v92(v100);
          }

          else
          {

            v97 = (*(v155 + 8))(v60, v141);
            v158(v97);
          }

          v101 = [v86 text];
          if (v101)
          {
            v102 = v154;
            v103 = v152;
            v104 = v151;
            goto LABEL_40;
          }

          objc_opt_self();
          v107 = swift_dynamicCastObjCClass();
          v102 = v154;
          v103 = v152;
          v104 = v151;
          if (v107 && (v101 = [v107 text]) != 0)
          {
LABEL_40:
            v105 = v101;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v106 = String._bridgeToObjectiveC()();
          }

          else
          {
            v106 = 0;
          }

          v108 = objc_allocWithZone(CPListTemplate);
          sub_100009F1C(0, &unk_100575B00);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v110 = [v108 initWithTitle:v106 sections:isa];

          sub_1002B2CD4(v56, v103, type metadata accessor for CarPlayTemplateInfo);
          v111 = v153;
          (*(v102 + 56))(v103, 0, 1, v153);
          sub_100010430(v103, v104, &unk_100578410);
          if (v139(v104, 1, v111) == 1)
          {
            v112 = v110;
            v113 = 0;
          }

          else
          {
            sub_1002B2CD4(v104, v138, type metadata accessor for CarPlayTemplateInfo);
            v114 = v110;
            v113 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            sub_1002B54FC(v104, type metadata accessor for CarPlayTemplateInfo);
          }

          [v110 setUserInfo:v113];

          swift_unknownObjectRelease();
          sub_100009104(v103, &unk_100578410);
          [v110 setShowsSpinnerWhileEmpty:1];
          v115 = *(v143 + OBJC_IVAR____TtC8Podcasts17CarPlayController_interfaceController);
          v116 = swift_allocObject();
          *(v116 + 16) = v110;
          *&v162[16] = sub_1002B58BC;
          *&v162[24] = v116;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *v162 = sub_100185CE0;
          *&v162[8] = &unk_1004E9EC0;
          v117 = _Block_copy(&aBlock);
          v118 = v110;

          [v115 pushTemplate:v118 animated:1 completion:v117];
          _Block_release(v117);
        }

        sub_1002B54FC(v56, type metadata accessor for CarPlayTemplateInfo);
        return sub_100009104(v57, &unk_100575AE0);
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v45 = v52;
        v46 = v53;
        if ((v42 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v55 = __CocoaSet.Iterator.next()();
        if (v55)
        {
          *&v159 = v55;
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v52 = v45;
          v53 = v46;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= ((v44 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v51 = *(v43 + 8 * v52);
      ++v50;
      if (v51)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B5338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002B5380()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90);
  BaseObjectGraph.inject<A>(_:)();
  LegacyLockup.adamId.getter();
  EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {

    (*(v1 + 8))(v3, v0);
    return 0xD000000000000016;
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }
}

uint64_t sub_1002B54FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B555C()
{
  v1 = *(type metadata accessor for CarPlayTemplateInfo(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 97) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  else
  {
    sub_100004590(v0 + 56);
  }

  v5 = v0 + v3;
  v6 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          goto LABEL_5;
        }

LABEL_17:

        goto LABEL_5;
      }

      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v0 + v3, 1, v11))
      {
        (*(v12 + 8))(v0 + v3, v11);
      }

      sub_100168088(&unk_100575B10);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10019C0A4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64));
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (*(v5 + 40))
    {
    }

    else
    {
      sub_100004590(v0 + v3);
    }
  }

  else
  {

    v8 = *(sub_100168088(&unk_10057C230) + 48);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

LABEL_5:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1002B58C4()
{
  sub_100168088(&qword_100574690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String.pageHighlightShelfID.getter();
  *(inited + 40) = v1;
  *(inited + 48) = static String.loadingShelfID.getter();
  *(inited + 56) = v2;
  v3 = sub_10016B918(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_10057C2F0 = v3;
  return result;
}

uint64_t sub_1002B5964()
{
  sub_100168088(&qword_100577470);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007E0;
  v1 = type metadata accessor for LegacyEpisodeLockup();
  v2 = sub_1002B95F4(&qword_100577478, &type metadata accessor for LegacyEpisodeLockup);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for LegacyLockup();
  v4 = sub_1002B95F4(&qword_10057C3F0, &type metadata accessor for LegacyLockup);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for Showcase();
  result = sub_1002B95F4(&unk_10057C3F8, &type metadata accessor for Showcase);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  off_10057C2F8 = v0;
  return result;
}

void sub_1002B5A80(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for ModernShelf.ItemPresentation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ModernShelf.itemPresentation.getter();
  ModernShelf.ItemPresentation.itemKind.getter();
  (*(v10 + 8))(v12, v9);
  v13 = ModernShelf.ItemKind.rawValue.getter();
  v15 = v14;
  if (v13 == ModernShelf.ItemKind.rawValue.getter() && v15 == v16)
  {
    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    ModernShelf.header.getter();
    v19 = type metadata accessor for Header();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) == 1)
    {
      sub_100009104(v8, &qword_100577490);
      goto LABEL_10;
    }

    v22 = Header.title.getter();
    v24 = v23;
    (*(v20 + 8))(v8, v19);
    if (!v24)
    {
      goto LABEL_10;
    }

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
LABEL_9:

      goto LABEL_10;
    }

    v40 = v24;
    v26 = ModernShelf.items.getter();
    v44 = _swiftEmptyArrayStorage;
    v27 = *(v26 + 16);
    if (v27)
    {
      v37 = a1;
      v38 = v22;
      v39 = v2;
      v36 = v26;
      v28 = v26 + 32;
      v29 = _swiftEmptyArrayStorage;
      do
      {
        sub_100004428(v28, v43);
        sub_1000109E4(v43, v41);
        sub_100168088(&qword_1005748E0);
        type metadata accessor for LegacyEpisodeLockup();
        if ((swift_dynamicCast() & 1) != 0 && v42)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v29 = v44;
        }

        v28 += 40;
        --v27;
      }

      while (v27);

      v22 = v38;
      v3 = v39;
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    if (v29 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }
    }

    else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_28:
      sub_100009F1C(0, &qword_100574B50);

      v21 = sub_1002767D0(v30, v22, v40, v29, 10);
      goto LABEL_11;
    }

    v31 = ModernShelf.items.getter();
    v44 = _swiftEmptyArrayStorage;
    v32 = *(v31 + 16);
    if (v32)
    {
      v38 = v22;
      v39 = v3;
      v37 = v31;
      v33 = v31 + 32;
      v34 = _swiftEmptyArrayStorage;
      do
      {
        sub_100004428(v33, v43);
        sub_1000109E4(v43, v41);
        sub_100168088(&qword_1005748E0);
        type metadata accessor for LegacyLockup();
        if ((swift_dynamicCast() & 1) != 0 && v42)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v34 = v44;
        }

        v33 += 40;
        --v32;
      }

      while (v32);

      v22 = v38;
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    if (v34 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_42;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      sub_100009F1C(0, &qword_100574B50);

      sub_1003208B0(v35, v22, v40, v34);
      goto LABEL_11;
    }

LABEL_8:

    goto LABEL_9;
  }

LABEL_10:
  v21 = 0;
LABEL_11:
  *a2 = v21;
}

uint64_t sub_1002B6008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_10023EE80(0, 0, v10, &unk_100409908, v13);
}

uint64_t sub_1002B615C()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_pageURL, &qword_100574040);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarPlayStoreProvider()
{
  result = qword_10057C340;
  if (!qword_10057C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B624C()
{
  sub_100012E4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B62F0()
{
  v1 = v0;
  v28 = *v0;
  v2 = v28;
  v3 = sub_100168088(&qword_100574040);
  v33 = *(v3 - 8);
  v32 = *(v33 + 64);
  __chkstk_darwin(v3 - 8);
  v30 = &v28 - v4;
  v5 = sub_100168088(&unk_100578D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_100168088(&unk_100577400);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  __chkstk_darwin(v9);
  v29 = &v28 - v11;
  v38 = sub_100168088(&unk_100578DA0);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v28 - v12;
  v37 = sub_100168088(&unk_100577410);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v28 - v13;
  v41 = StorePageProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v2;
  sub_100168088(&unk_100578DB0);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0);
  Publisher.removeDuplicates(by:)();

  v41 = *(v0 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_updatePlayStateSubject);
  sub_100168088(&qword_100574B10);
  sub_100009FAC(&unk_100577420, &unk_100578D90);
  sub_100009FAC(&unk_100574B20, &qword_100574B10);
  v14 = v29;
  Publisher.combineLatest<A>(_:)();
  (*(v6 + 8))(v8, v5);
  v15 = v0[2];
  v16 = v30;
  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_pageURL, v30, &qword_100574040);
  v17 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v18 = (v32 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1001B8A3C(v16, v19 + v17);
  *(v19 + v18) = v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002B6E64;
  *(v20 + 24) = v19;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100577430);
  sub_100009FAC(&unk_100578DC0, &unk_100577400);
  sub_100009FAC(&unk_100577440, &unk_100577430);
  v21 = v31;
  v22 = v35;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v36 + 8))(v14, v22);
  sub_100009FAC(&unk_100578DD0, &unk_100578DA0);
  v23 = v34;
  v24 = v38;
  Publisher.compactMap<A>(_:)();
  (*(v40 + 8))(v21, v24);
  sub_100009FAC(&unk_100577450, &unk_100577410);
  v25 = v37;
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v39 + 8))(v23, v25);
  return v26;
}

uint64_t sub_1002B69E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = sub_100168088(&qword_100574040);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for PageContent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  sub_100168088(&unk_100577430);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1001AB84C(a1, v14);
  sub_100010430(v24, v10, &qword_100574040);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = (v13 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  sub_1001AD194(v14, v21 + v19, &type metadata accessor for PageContent);
  sub_1001B8A3C(v10, v21 + v20);
  *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1004098E8;
  *(v22 + 24) = v21;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_1002B6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B6D5C, v5, v4);
}

uint64_t sub_1002B6D5C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_1002B8EC0(v3, v2, v1);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1002B6E64(uint64_t a1)
{
  v3 = *(sub_100168088(&qword_100574040) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002B69E8(a1, v5, v1 + v4, v6);
}

uint64_t sub_1002B6F10()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100168088(&qword_100574040) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001AB9B8;

  return sub_1002B6CC0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1002B7088(uint64_t a1, uint64_t a2)
{
  v5 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_updatePlayStateSubject;
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  *(v2 + v8) = CurrentValueSubject.init(_:)();
  *(v2 + 16) = a1;
  sub_100010430(a2, v7, &qword_100574040);
  type metadata accessor for StorePageProvider();
  swift_allocObject();

  swift_retain_n();
  *(v2 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_provider) = StorePageProvider.init(asPartOf:pageURL:page:)();
  sub_100010430(a2, v2 + OBJC_IVAR____TtC8Podcasts20CarPlayStoreProvider_pageURL, &qword_100574040);
  StorePageProvider.viewDidLoad()();
  sub_100009104(a2, &qword_100574040);
  return v2;
}

uint64_t sub_1002B71F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v4 - 8);
  v152 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v150 = &v135 - v7;
  __chkstk_darwin(v8);
  v151 = &v135 - v9;
  v159 = type metadata accessor for ModernShelf.ItemPresentation();
  v10 = *(v159 - 1);
  __chkstk_darwin(v159);
  v12 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModernShelf();
  v155 = *(v13 - 8);
  v156 = v13;
  __chkstk_darwin(v13);
  v154 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v153 = &v135 - v16;
  __chkstk_darwin(v17);
  v146 = &v135 - v18;
  __chkstk_darwin(v19);
  v21 = &v135 - v20;
  __chkstk_darwin(v22);
  v24 = &v135 - v23;
  __chkstk_darwin(v25);
  v158 = &v135 - v26;
  v140 = type metadata accessor for ModernPage();
  __chkstk_darwin(v140);
  v145 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v144 = &v135 - v29;
  v30 = type metadata accessor for PageContent();
  __chkstk_darwin(v30);
  v32 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100168088(&qword_10057C408);
  __chkstk_darwin(v33 - 8);
  v35 = &v135 - v34;
  v37 = *(v36 + 56);
  sub_1001AB84C(a1, &v135 - v34);
  sub_1001AB84C(a2, &v35[v37]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload && !swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1001AD1FC(&v35[v37], &type metadata accessor for PageContent);
LABEL_8:
      sub_1001AD1FC(v35, &type metadata accessor for PageContent);
      v39 = 1;
      return v39 & 1;
    }

LABEL_43:
    sub_100009104(v35, &qword_10057C408);
    v39 = 0;
    return v39 & 1;
  }

  sub_1001AB84C(v35, v32);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001AD1FC(v32, &type metadata accessor for ModernPage);
    goto LABEL_43;
  }

  v40 = v32;
  v41 = v144;
  sub_1001AD194(v40, v144, &type metadata accessor for ModernPage);
  v136 = v35;
  result = sub_1001AD194(&v35[v37], v145, &type metadata accessor for ModernPage);
  v43 = *(v140 + 24);
  v44 = *(v41 + v43);
  v45 = *(v44 + 16);
  v157 = v21;
  if (v45)
  {
    v138 = v24;
    v46 = 0;
    v147 = (v155 + 8);
    v135 = v10;
    v47 = (v10 + 8);
    v139 = _swiftEmptyArrayStorage;
    v137 = (v155 + 32);
    v48 = v156;
    v49 = v158;
    v143 = v44;
    v142 = v45;
    v141 = (v155 + 16);
    while (v46 < *(v44 + 16))
    {
      v149 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v148 = *(v155 + 72);
      (*(v155 + 16))(v49, v44 + v149 + v148 * v46, v48);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        result = (*v147)(v49, v48);
      }

      else
      {
        if (qword_1005727F0 != -1)
        {
          swift_once();
        }

        v50 = off_10057C2F0;
        v51 = ModernShelf.id.getter();
        v53 = v52;
        if (!v50[2] || (v54 = v51, Hasher.init(_seed:)(), String.hash(into:)(), v55 = Hasher._finalize()(), v56 = -1 << *(v50 + 32), v57 = v55 & ~v56, ((*(v50 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0))
        {
LABEL_27:

          if (qword_1005727F8 != -1)
          {
            result = swift_once();
          }

          v61 = off_10057C2F8;
          v62 = (off_10057C2F8 + 32);
          v63 = -*(off_10057C2F8 + 2);
          v64 = -1;
          v49 = v158;
          while (1)
          {
            if (v63 + v64 == -1)
            {
              v73 = *v147;
              goto LABEL_40;
            }

            if (++v64 >= v61[2])
            {
              break;
            }

            v65 = v62 + 2;
            v66 = *v62;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v47)(v12, v159);
            v49 = v158;
            result = ModernShelf.ItemKind.modelType.getter();
            v62 = v65;
            if (v66 == result)
            {
              v67 = *v137;
              v48 = v156;
              (*v137)(v138, v49, v156);
              v68 = v139;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v161 = v68;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001A7758(0, v68[2] + 1, 1);
                v68 = v161;
              }

              v71 = v68[2];
              v70 = v68[3];
              v72 = v68;
              if (v71 >= v70 >> 1)
              {
                sub_1001A7758(v70 > 1, v71 + 1, 1);
                v72 = v161;
              }

              v72[2] = v71 + 1;
              v139 = v72;
              result = v67(v72 + v149 + v71 * v148, v138, v48);
              v21 = v157;
              v49 = v158;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_99:
          __break(1u);
          break;
        }

        v58 = ~v56;
        while (1)
        {
          v59 = (v50[6] + 16 * v57);
          v60 = *v59 == v54 && v59[1] == v53;
          if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v50 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v73 = *v147;
        v49 = v158;
LABEL_40:
        v48 = v156;
        result = v73(v49, v156);
        v21 = v157;
LABEL_41:
        v44 = v143;
        v45 = v142;
      }

      if (++v46 == v45)
      {
        v43 = *(v140 + 24);
        v10 = v135;
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
    v139 = _swiftEmptyArrayStorage;
    v48 = v156;
LABEL_47:
    v74 = *(v145 + v43);
    v75 = *(v74 + 16);
    if (!v75)
    {
      v141 = _swiftEmptyArrayStorage;
LABEL_79:
      v101 = v139[2];
      if (v101)
      {
        v160 = _swiftEmptyArrayStorage;
        v102 = v139;
        sub_1001A7738(0, v101, 0);
        v103 = v160;
        v104 = *(v155 + 16);
        v105 = v102 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
        v158 = *(v155 + 72);
        v159 = v104;
        v106 = (v155 + 8);
        do
        {
          v159(v153, v105, v156);
          ModernShelf.header.getter();
          v107 = v151;
          v108 = type metadata accessor for Header();
          v109 = *(v108 - 8);
          v110 = 0;
          v111 = 0;
          if ((*(v109 + 48))(v107, 1, v108) != 1)
          {
            v112 = v107;
            v113 = v150;
            sub_100010430(v112, v150, &qword_100577490);
            v110 = Header.title.getter();
            v111 = v114;
            v115 = v113;
            v107 = v151;
            (*(v109 + 8))(v115, v108);
          }

          sub_100009104(v107, &qword_100577490);
          (*v106)(v153, v156);
          v160 = v103;
          v117 = v103[2];
          v116 = v103[3];
          if (v117 >= v116 >> 1)
          {
            sub_1001A7738((v116 > 1), v117 + 1, 1);
            v103 = v160;
          }

          v103[2] = v117 + 1;
          v118 = &v103[2 * v117];
          v118[4] = v110;
          v118[5] = v111;
          v105 += v158;
          --v101;
        }

        while (v101);
      }

      else
      {

        v103 = _swiftEmptyArrayStorage;
      }

      v119 = v141[2];
      if (v119)
      {
        v160 = _swiftEmptyArrayStorage;
        v120 = v141;
        sub_1001A7738(0, v119, 0);
        v121 = v160;
        v122 = *(v155 + 16);
        v123 = v120 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
        v158 = *(v155 + 72);
        v159 = v122;
        v155 += 16;
        v157 = (v155 - 8);
        do
        {
          v159(v154, v123, v156);
          ModernShelf.header.getter();
          v124 = v152;
          v125 = type metadata accessor for Header();
          v126 = *(v125 - 8);
          v127 = 0;
          v128 = 0;
          if ((*(v126 + 48))(v124, 1, v125) != 1)
          {
            v129 = v150;
            sub_100010430(v124, v150, &qword_100577490);
            v130 = Header.title.getter();
            v124 = v152;
            v127 = v130;
            v128 = v131;
            (*(v126 + 8))(v129, v125);
          }

          sub_100009104(v124, &qword_100577490);
          (*v157)(v154, v156);
          v160 = v121;
          v133 = v121[2];
          v132 = v121[3];
          if (v133 >= v132 >> 1)
          {
            sub_1001A7738((v132 > 1), v133 + 1, 1);
            v121 = v160;
          }

          v121[2] = v133 + 1;
          v134 = &v121[2 * v133];
          v134[4] = v127;
          v134[5] = v128;
          v123 += v158;
          --v119;
        }

        while (v119);
      }

      else
      {

        v121 = _swiftEmptyArrayStorage;
      }

      v39 = sub_100195FAC(v103, v121);

      sub_1001AD1FC(v145, &type metadata accessor for ModernPage);
      sub_1001AD1FC(v144, &type metadata accessor for ModernPage);
      sub_1001AD1FC(v136, &type metadata accessor for PageContent);
      return v39 & 1;
    }

    v76 = 0;
    v148 = v155 + 16;
    v147 = (v155 + 8);
    v77 = (v10 + 8);
    v141 = _swiftEmptyArrayStorage;
    v140 = v155 + 32;
    v143 = v74;
    v142 = v75;
    while (v76 < *(v74 + 16))
    {
      v158 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v149 = *(v155 + 72);
      (*(v155 + 16))(v21, v74 + v158 + v149 * v76, v48);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        result = (*v147)(v21, v48);
      }

      else
      {
        if (qword_1005727F0 != -1)
        {
          swift_once();
        }

        v78 = off_10057C2F0;
        v79 = ModernShelf.id.getter();
        v81 = v80;
        if (v78[2] && (v82 = v79, Hasher.init(_seed:)(), String.hash(into:)(), v83 = Hasher._finalize()(), v84 = -1 << *(v78 + 32), v85 = v83 & ~v84, ((*(v78 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v85) & 1) != 0))
        {
          v86 = ~v84;
          while (1)
          {
            v87 = (v78[6] + 16 * v85);
            v88 = *v87 == v82 && v87[1] == v81;
            if (v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v85 = (v85 + 1) & v86;
            if (((*(v78 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v85) & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
LABEL_64:

          if (qword_1005727F8 != -1)
          {
            result = swift_once();
          }

          v89 = off_10057C2F8;
          v90 = (off_10057C2F8 + 32);
          v91 = -*(off_10057C2F8 + 2);
          v92 = -1;
          while (v91 + v92 != -1)
          {
            if (++v92 >= v89[2])
            {
              goto LABEL_99;
            }

            v93 = v90 + 2;
            v94 = *v90;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v77)(v12, v159);
            result = ModernShelf.ItemKind.modelType.getter();
            v90 = v93;
            if (v94 == result)
            {
              v95 = *v140;
              v48 = v156;
              (*v140)(v146, v157, v156);
              v96 = v141;
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v161 = v96;
              if ((v97 & 1) == 0)
              {
                sub_1001A7758(0, v96[2] + 1, 1);
                v96 = v161;
              }

              v99 = v96[2];
              v98 = v96[3];
              v100 = v96;
              if (v99 >= v98 >> 1)
              {
                sub_1001A7758(v98 > 1, v99 + 1, 1);
                v100 = v161;
              }

              v100[2] = v99 + 1;
              v141 = v100;
              result = v95(v100 + v158 + v99 * v149, v146, v48);
              v21 = v157;
              goto LABEL_77;
            }
          }
        }

        v48 = v156;
        v21 = v157;
        result = (*v147)(v157, v156);
LABEL_77:
        v74 = v143;
        v75 = v142;
      }

      if (++v76 == v75)
      {
        goto LABEL_79;
      }
    }
  }

  __break(1u);
  return result;
}

Class sub_1002B82F4(void *a1, uint64_t a2)
{
  v47 = type metadata accessor for ModernShelf.ItemPresentation();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModernShelf();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v12);
  v43 = &v40 - v15;
  v16 = *(a2 + 16);
  if (!v16)
  {
    return 0;
  }

  v40 = a1;
  v41 = v13;
  v42 = v8;
  v18 = *(v8 + 16);
  v17 = v8 + 16;
  v19 = (v4 + 8);
  v45 = v18;
  v46 = (v17 - 8);
  v20 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v44 = *(v17 + 56);
  while (1)
  {
    v21 = v7;
    v45(v10, v20, v7, v14);
    ModernShelf.itemPresentation.getter();
    ModernShelf.ItemPresentation.itemKind.getter();
    (*v19)(v6, v47);
    v22 = ModernShelf.ItemKind.rawValue.getter();
    v24 = v23;
    if (v22 == ModernShelf.ItemKind.rawValue.getter() && v24 == v25)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_9;
    }

    v7 = v21;
    (*v46)(v10, v21);
    v20 += v44;
    if (!--v16)
    {
      return 0;
    }
  }

LABEL_9:
  v28 = v41;
  v29 = *(v42 + 32);
  v29(v41, v10, v21);
  v30 = v43;
  v29(v43, v28, v21);
  v31 = ModernShelf.items.getter();
  v32 = sub_1003801F8(v31);

  if (v32)
  {
    sub_100009F1C(0, &qword_100574B50);
    v33 = objc_opt_self();
    v34 = v40;

    v35 = [v33 mainBundle];
    v48._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0x6465727574616546;
    v36._object = 0xE800000000000000;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0;
    v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v48);

    v39.super.isa = sub_10022B37C(v34, v38._countAndFlagsBits, v38._object, v32).super.isa;
  }

  else
  {
    v39.super.isa = 0;
  }

  (*v46)(v30, v21);
  return v39.super.isa;
}

void sub_1002B86DC(uint64_t a1, uint64_t a2)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    do
    {
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        type metadata accessor for ModernShelf();
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        sub_1002B5A80(a1, &v6);
        if (v6)
        {
          break;
        }

        if (v4 == v2)
        {
          return;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v4 != v2);
  }
}

id sub_1002B8824(void *a1, uint64_t a2)
{
  v52 = a1;
  v65 = type metadata accessor for ModernShelf.ItemPresentation();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModernShelf();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v13 = *(v12 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = 0;
    v62 = v7 + 16;
    v60 = (v7 + 8);
    v16 = (v3 + 8);
    v53 = (v7 + 32);
    v57 = v7;
    v58 = v6;
    v55 = v13;
    v56 = v12;
    while (v15 < *(v12 + 16))
    {
      v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v63 = *(v7 + 72);
      v64 = v15;
      (*(v7 + 16))(v11, v12 + v17 + v63 * v15, v6);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        (*v60)(v11, v6);
      }

      else
      {
        v59 = v17;
        v61 = v14;
        if (qword_1005727F0 != -1)
        {
          swift_once();
        }

        v18 = off_10057C2F0;
        v19 = ModernShelf.id.getter();
        v21 = v20;
        if (v18[2] && (v22 = v19, Hasher.init(_seed:)(), String.hash(into:)(), v23 = Hasher._finalize()(), v24 = -1 << *(v18 + 32), v25 = v23 & ~v24, ((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) != 0))
        {
          v26 = ~v24;
          while (1)
          {
            v27 = (v18[6] + 16 * v25);
            v28 = *v27 == v22 && v27[1] == v21;
            if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:

          if (qword_1005727F8 != -1)
          {
            swift_once();
          }

          v29 = off_10057C2F8;
          v30 = (off_10057C2F8 + 32);
          v31 = -*(off_10057C2F8 + 2);
          v32 = -1;
          while (v31 + v32 != -1)
          {
            if (++v32 >= v29[2])
            {
              __break(1u);
              goto LABEL_44;
            }

            v33 = v30 + 2;
            v34 = *v30;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v16)(v5, v65);
            v35 = ModernShelf.ItemKind.modelType.getter();
            v30 = v33;
            if (v34 == v35)
            {
              v36 = *v53;
              v6 = v58;
              (*v53)(v54, v11, v58);
              v14 = v61;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v67 = v14;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001A7758(0, v14[2] + 1, 1);
                v14 = v67;
              }

              v7 = v57;
              v39 = v14[2];
              v38 = v14[3];
              if (v39 >= v38 >> 1)
              {
                sub_1001A7758(v38 > 1, v39 + 1, 1);
                v14 = v67;
              }

              v14[2] = v39 + 1;
              v36(v14 + v59 + v39 * v63, v54, v6);
              goto LABEL_31;
            }
          }
        }

        v6 = v58;
        (*v60)(v11, v58);
        v14 = v61;
        v7 = v57;
LABEL_31:
        v13 = v55;
        v12 = v56;
      }

      v15 = v64 + 1;
      if (v64 + 1 == v13)
      {
        goto LABEL_32;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:

    sub_100168088(&unk_100574A00);
    v45 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_39;
  }

LABEL_32:
  if (!v14[2])
  {

    return 0;
  }

  v66 = _swiftEmptyArrayStorage;
  v40 = v52;
  v41 = sub_1002B82F4(v52, v14);
  if (v41)
  {
    v42 = v41;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1002B86DC(v40, v14);
  v44 = v43;

  if (v44 >> 62)
  {
    goto LABEL_45;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v45 = v44;
LABEL_39:

  sub_1001C3E8C(v45);
  v46 = v66;
  if (v66 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_41;
    }
  }

  else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    v47 = objc_allocWithZone(CPListSection);
    sub_1001AA058(v46);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v49 = [v47 initWithItems:isa];

    return v49;
  }

  return 0;
}

uint64_t (*sub_1002B8EC0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModernPage();
  __chkstk_darwin(v5 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v12 - 8);
  v14 = v43 - v13;
  v15 = type metadata accessor for PageContent();
  __chkstk_darwin(v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001AD1FC(v17, &type metadata accessor for PageContent);
    }

    else
    {
      sub_1001AD194(v17, v7, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator();
      swift_allocObject();

      v27 = sub_1002442DC(v26);

      v43[1] = v27;
      v28 = BaseObjectGraph.satisfying<A>(_:with:)();
      v29 = sub_1002B8824(v28, v7);
      if (v29)
      {
        v30 = v29;
        v31 = [v30 items];
        sub_100168088(&unk_100574A00);
        v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v32 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v33)
        {
          sub_100168088(&unk_100574680);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_1004007B0;
          *(v34 + 32) = v30;

          sub_1001AD1FC(v7, &type metadata accessor for ModernPage);
          return v34;
        }

        sub_1001AD1FC(v7, &type metadata accessor for ModernPage);
      }

      else
      {
        sub_1001AD1FC(v7, &type metadata accessor for ModernPage);
      }
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to load store page: %@", v23, 0xCu);
      sub_100009104(v24, &qword_100575B20);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);

    return sub_1002B9518;
  }

  else
  {
    sub_100010430(a3, v14, &qword_100574040);
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v14, 1, v19) == 1)
    {
      sub_100009104(v14, &qword_100574040);
      static ASKConstants.PodcastCatalogUrl.getter();
LABEL_21:

      return 0;
    }

    v36 = URL.absoluteString.getter();
    v38 = v37;
    (*(v20 + 8))(v14, v19);
    v39 = static ASKConstants.PodcastCatalogUrl.getter();
    if (!v38)
    {
      goto LABEL_21;
    }

    if (v36 == v39 && v38 == v40)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }

    return 0;
  }
}

uint64_t sub_1002B9520(uint64_t a1)
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

uint64_t sub_1002B95F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B963C()
{
  sub_1002B9778();
  v1 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_10024E918;
  v3[4] = 0;
  aBlock[4] = sub_1001E9664;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004EA0B8;
  v4 = _Block_copy(aBlock);
  swift_retain_n();

  [v1 reportAConcernURLWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_1002B9778()
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for MetricsData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v12 - 8);
  result = swift_beginAccess();
  if (*(v0 + 48) && !*(v0 + 40))
  {
    v14 = *(v0 + 24);

    v26 = static MetricsTargetType.button.getter();
    v27 = v15;
    v25 = static MetricsActionContext.contextual.getter();
    v28 = v16;
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {

      v26 = static MetricsTargetType.transcriptText.getter();
      v27 = v17;
      v25 = static MetricsActionContext.selectionMenu.getter();
      v28 = v18;
    }

    sub_100168088(&unk_10057DC50);
    v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100400790;
    *&v31 = v14;
    sub_1000366D8();
    v21[2] = BinaryInteger.description.getter();
    v21[3] = v19;
    v21[1] = static MetricsActionType.report.getter();
    v22 = v9;
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    static MetricsDataConfiguration.default.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
    v37 = v31;
    sub_100009104(&v37, &unk_100574650);
    v36 = v32;
    sub_100009104(&v36, &unk_100573A90);
    v35 = v33;
    sub_100009104(&v35, &unk_100574660);
    sub_100037470(v34);

    sub_100009104(v7, &qword_100574040);
    static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
    MetricsData.removingIncludedField(_:)();
    (*(v29 + 8))(v4, v2);
    (*(v22 + 8))(v11, v8);
    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    v30[3] = type metadata accessor for EmptyAction();
    v30[4] = &protocol witness table for EmptyAction;
    sub_10000E680(v30);
    EmptyAction.init(actionMetrics:)();
    ContextActionsConfiguration.perform(_:)();

    return sub_100004590(v30);
  }

  return result;
}

void sub_1002B9CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  v4 = *(v0 + 40);
  *(v0 + 40) = -1;
  sub_1002BA46C(v1, v2, v3, v4);
  swift_beginAccess();
  if (*(v0 + 48))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v5 = static ContentReference.category(adamID:)();
LABEL_6:
      v9 = v5;
      v10 = *(v0 + 16);
      v11 = *(v0 + 24);
      v12 = *(v0 + 32);
      *(v0 + 16) = v9;
      *(v0 + 24) = v6;
      *(v0 + 32) = v7;
      LOBYTE(v9) = *(v0 + 40);
      *(v0 + 40) = v8;
      v13 = v11;
      v14 = v12;
      v15 = v9;
LABEL_7:
      sub_1002BA46C(v10, v13, v14, v15);
      return;
    }

    type metadata accessor for ChannelContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v5 = static ContentReference.channel(adamID:)();
      goto LABEL_6;
    }

    type metadata accessor for EpisodeContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v16 = v0;

      sub_100399278();

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
LABEL_11:
        v17 = static ContentReference.episode(adamID:)();
LABEL_20:
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;

        v10 = *(v16 + 16);
        v13 = *(v16 + 24);
        v14 = *(v16 + 32);
        *(v16 + 16) = v22;
        *(v16 + 24) = v23;
        *(v16 + 32) = v24;
        v15 = *(v16 + 40);
        *(v16 + 40) = v25;
        goto LABEL_7;
      }

LABEL_14:

      return;
    }

    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v16 = v0;

      sub_1002160A8();

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        v17 = static ContentReference.show(adamID:)();
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v21 = swift_dynamicCastClass();
    if (v21 && *(v21 + qword_1005766C8))
    {
      v16 = v0;

      sub_100399278();
      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }
}

uint64_t sub_1002B9F18()
{
  sub_1002BA46C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportConcernContextAction()
{
  result = qword_10057C438;
  if (!qword_10057C438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BA048()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002BA13C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100468320;
  v1._object = 0x8000000100468300;
  v5._countAndFlagsBits = 0xD000000000000025;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BA1F0()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1002BA220@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1002BA2B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  sub_1002B9CCC();
}

uint64_t sub_1002BA34C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

unint64_t sub_1002BA3EC(uint64_t a1)
{
  result = sub_1002BA414();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002BA414()
{
  result = qword_100582290;
  if (!qword_100582290)
  {
    type metadata accessor for ReportConcernContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582290);
  }

  return result;
}

void sub_1002BA46C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1001CEA68(a2, a3, a4);
  }
}

void sub_1002BA508()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x198);
  v4 = type metadata accessor for OperationResult();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*((v2 & v1) + 0x180) - 8) + 8))(&v0[*((swift_isaMask & *v0) + 0x1A0)]);

  v5 = *&v0[*((swift_isaMask & *v0) + 0x1B0)];
}

id sub_1002BA658()
{
  v2 = *((swift_isaMask & *v0) + 0x170);
  v3 = *((swift_isaMask & *v0) + 0x180);
  v4 = *((swift_isaMask & *v0) + 0x190);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StorageOperation();
  return objc_msgSendSuper2(&v5, "dealloc", v2, v3, v4);
}

uint64_t sub_1002BA71C()
{
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() mainBundle];
  if (v1)
  {
    v11 = 0x800000010046D420;
    v3 = 0xD00000000000001CLL;
    v4 = 0x800000010046D400;
    v5 = 0xD00000000000001CLL;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x800000010046D460;
    v4 = 0x800000010046D440;
    v3 = 0xD000000000000011;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v5 = 0xD000000000000011;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BA820()
{
  v1 = type metadata accessor for QueueModelSection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 16);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v8 + v9, v7);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001EDA30(v7);
LABEL_15:
    v16 = 0;
    return v16 & 1;
  }

  v10 = *v7;
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_8:
    v13 = v12;

    v14 = *(v0 + 32);

    dispatch thunk of PlaybackController.queueController.getter();

    v15 = *(v2 + 104);
    if (v14)
    {
      v15(v4, enum case for QueueModelSection.softQueue(_:), v1);
      v16 = dispatch thunk of PlaybackController.QueueController.queueSectionContainsItem(queueSection:item:)();
    }

    else
    {
      v15(v4, enum case for QueueModelSection.hardQueue(_:), v1);
      v16 = dispatch thunk of PlaybackController.QueueController.queueSectionContainsItem(queueSection:item:)();
    }

    (*(v2 + 8))(v4, v1);
    return v16 & 1;
  }

  __break(1u);
  return result;
}

void sub_1002BAAB4()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v4 + v5, v3);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1001EDA30(v3);
      return;
    }

    v6 = *v3;
    if (*v3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      dispatch thunk of PlaybackController.queueController.getter();

      v9 = [v8 contentItemIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of PlaybackController.QueueController.removeItemFromQueue(identifier:)();
    }
  }
}

uint64_t sub_1002BAC64()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002BACEC()
{
  result = qword_10057C708;
  if (!qword_10057C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057C708);
  }

  return result;
}

uint64_t sub_1002BAD4C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1002BAD7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for MetricsLabel.removeFromSoftQueue(_:);
  if (!v3)
  {
    v6 = &enum case for MetricsLabel.removeFromHardQueue(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1002BAE00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for ContextActionType();
  v8 = *(v4 - 8);
  v5 = &enum case for ContextActionType.removeFromSoftQueue(_:);
  if (!v3)
  {
    v5 = &enum case for ContextActionType.removeFromHardQueue(_:);
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

uint64_t sub_1002BAEEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1002BAF4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002BAFAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002BB010(uint64_t a1)
{
  result = sub_1002BB098(&qword_10057C710);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BB054(uint64_t a1)
{
  result = sub_1002BB098(&qword_10057C718);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BB098(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromQueueContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1002BB0D8()
{
  v1 = sub_100168088(&unk_100575CE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for PodcastStateModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 96);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v11 + v12, v10);
    v13 = sub_100215D14();
    sub_1001C3734(v10, type metadata accessor for PodcastContextActionDataType);
    if (v13)
    {
      v14 = v13;
      PodcastStateModel.init(podcast:)();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        (*(v5 + 32))(v7, v3, v4);
        v16 = PodcastStateModel.sanitizedState()();
        (*(v5 + 8))(v7, v4);

        return v16 == 1;
      }

      sub_100009104(v3, &unk_100575CE0);
    }
  }

  return 0;
}

void sub_1002BB364()
{
  v1 = type metadata accessor for Logger();
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v31[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v31[-v5];
  v7 = type metadata accessor for PresentationSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v0 + 96);
  if (v14)
  {
    v36 = v1;
    v15 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v14 + v15, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for PodcastContextActionDataType;
LABEL_6:
      sub_1001C3734(v13, v16);
      return;
    }

    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for PodcastContextActionDataType.Kind;
      goto LABEL_6;
    }

    v18 = *v13;
    v17 = v13[1];
    swift_beginAccess();
    if (!*(v0 + 104))
    {

      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_12;
    }

    v35 = v0;

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v19 = v8;
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_12:
      sub_100009104(v6, &unk_10057BB90);
      return;
    }

    (*(v8 + 32))(v10, v6, v7);
    static Logger.podcastsStatesCoordination.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v22 = 136315394;
      *(v22 + 4) = sub_1000153E0(v18, v17, &v38);
      *(v22 + 12) = 2080;
      v23 = [objc_opt_self() callStackSymbols];
      v33 = v20;
      v24 = v23;
      v32 = v21;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = Array.description.getter();
      v27 = v26;

      v28 = sub_1000153E0(v25, v27, &v38);

      *(v22 + 14) = v28;
      v29 = v33;
      _os_log_impl(&_mh_execute_header, v33, v32, "RemovePodcastContextAction.handler() - removing podcast %s %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v37 + 8))(v3, v36);
    sub_1000044A0((v35 + 16), *(v35 + 40));
    v30 = dispatch thunk of LibraryRemovalControllerProtocol.removeShowFromLibraryAlertController(uuid:)();

    if (v30)
    {
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
    }

    (*(v19 + 8))(v10, v7);
  }
}

uint64_t sub_1002BB8BC()
{
  sub_100004590(v0 + 16);
  sub_100004590(v0 + 56);

  v1 = OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemovePodcastContextAction()
{
  result = qword_10057C748;
  if (!qword_10057C748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BB9F4()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002BBB04()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xA9000000000000A6;
  v1._countAndFlagsBits = 0x455F45564F4D4552;
  v1._object = 0xEF53495350494C4CLL;
  v5._countAndFlagsBits = 0x80E265766F6D6552;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BBBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BBC4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1002BBCE4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t sub_1002BBD7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002BBDDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002BBE40(uint64_t a1)
{
  result = sub_1002BBEC8(&qword_10057C850);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BBE84(uint64_t a1)
{
  result = sub_1002BBEC8(&qword_10057C858);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BBEC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemovePodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002BBF0C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = ShowHeader.episodeToPlay.getter();
  if (v5)
  {
    v6 = sub_1002BBFC4(a1, v5, a3);
  }

  else
  {
    if (!ShowHeader.primaryButtonAction.getter())
    {
      return 0;
    }

    type metadata accessor for PlayAction();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      v7 = 0;
      goto LABEL_4;
    }

    v6 = sub_1002BC7C8(a1, v9, a3);
  }

  v7 = v6;
LABEL_4:

  return v7;
}

id sub_1002BBFC4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v5 - 8);
  v7 = v58 - v6;
  v8 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v8 - 8);
  v10 = v58 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v65 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v13 - 8);
  v64 = v58 - v14;
  v15 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v15 - 8);
  v17 = v58 - v16;
  v63 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v63);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v20 - 8);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = Episode.title.getter();
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v58[1] = v23;
    v59 = v10;
    v60 = v7;
    v61 = a3;
    type metadata accessor for CarPlayPageLoadCoordinator();
    BaseObjectGraph.inject<A>(_:)();
    v66 = aBlock[0];
    sub_100168088(&unk_100578420);
    BaseObjectGraph.inject<A>(_:)();
    Episode.uuid.getter();
    sub_100168088(&unk_10057A4A0);
    v62 = a1;
    BaseObjectGraph.inject<A>(_:)();
    dispatch thunk of EpisodeStateController.stateMachine(for:)();

    v67 = v22;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    v26 = Episode.showTypeIsSerial.getter();
    v27 = Episode.isExplicit.getter();
    if (v26)
    {
      v28 = Episode.seasonNumber.getter();
      v30 = v29;
      v31 = Episode.episodeNumber.getter();
      v33 = v32;
      v34 = Episode.duration.getter();
      *v19 = v28;
      v19[8] = v30 & 1;
      *(v19 + 2) = v31;
      v19[24] = v33 & 1;
      *(v19 + 4) = v34;
      v19[40] = v35 & 1;
    }

    else
    {
      v37 = &v19[*(sub_100168088(&qword_1005812A0) + 64)];
      *v19 = Episode.episodeNumber.getter();
      v19[8] = v38 & 1;
      Episode.releaseDate.getter();
      *v37 = Episode.duration.getter();
      v37[8] = v39 & 1;
    }

    swift_storeEnumTagMultiPayload();
    sub_1001A3250(v69, v27 & 1, v19);
    sub_1002BD448(v19, _s27CarPlayEpisodeSubtitleStyleOMa);
    Episode.uuid.getter();
    v40 = v62;
    v41 = sub_1002BD260();

    v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v43 = String._bridgeToObjectiveC()();

    v44 = String._bridgeToObjectiveC()();

    v36 = [v42 initWithText:v43 detailText:v44 image:0 accessoryImage:v41 accessoryType:0];

    Episode.artwork.getter();
    CarPlayPageLoadCoordinator.loadImage(for:into:)(v17, v36);
    sub_10021F030(v17);
    v45 = sub_1001A44D0();
    if ((v46 & 1) == 0)
    {
      [v36 setPlaybackProgress:*&v45];
    }

    Episode.uuid.getter();
    Episode.adamId.getter();
    v47 = type metadata accessor for EpisodeListSettings();
    (*(*(v47 - 8) + 56))(v64, 1, 1, v47);
    static ActionMetrics.notInstrumented.getter();
    v48 = type metadata accessor for LibraryPlayPauseAction();
    swift_allocObject();
    v49 = LibraryPlayPauseAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:isSmartPlayButton:isWidgetPlayButton:timestamp:waitForEngine:shouldPreventQueueing:actionMetrics:)();
    v50 = v60;
    *(v60 + 3) = v48;
    *(v50 + 32) = sub_1002BD57C(&qword_10057C870, &type metadata accessor for LibraryPlayPauseAction);
    *v50 = v49;
    *(v50 + 40) = 0;
    v51 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v52 = *(*(v51 - 8) + 56);
    v52(v50, 0, 1, v51);
    v53 = v59;
    v52(v59, 1, 1, v51);
    v54 = type metadata accessor for CarPlayTemplateInfo(0);
    v55 = *(v54 + 20);

    sub_1001FBB44(v50, v53);
    *(v53 + v55) = v61;
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    sub_1001D2AD4(v53);
    aBlock[4] = sub_1002BD410;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100372F30;
    aBlock[3] = &unk_1004EA3A8;
    v56 = _Block_copy(aBlock);

    [v36 setHandler:v56];
    _Block_release(v56);

    sub_1002BD448(v67, &type metadata accessor for EpisodePlayState);
    sub_100004590(v69);
  }

  else
  {

    return 0;
  }

  return v36;
}

id sub_1002BC7C8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v8 - 8);
  v49 = v43 - v9;
  v10 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v10 - 8);
  v48 = v43 - v11;
  v12 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v12 - 8);
  v47 = v43 - v13;
  v14 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v14 - 8);
  v50 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EpisodeOffer();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  PlayAction.episodeOffer.getter();
  EpisodeOffer.contentId.getter();
  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = 0;
  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    PlayAction.episodeOffer.getter();
    v22 = EpisodeOffer.title.getter();
    v24 = v23;
    v20(v19, v16);
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v44 = a3;
      type metadata accessor for CarPlayPageLoadCoordinator();
      v46 = v4;
      v43[0] = v22;
      BaseObjectGraph.inject<A>(_:)();
      v43[1] = aBlock[0];
      sub_100168088(&unk_100578420);
      BaseObjectGraph.inject<A>(_:)();
      sub_100168088(&unk_10057A4A0);
      BaseObjectGraph.inject<A>(_:)();
      dispatch thunk of EpisodeStateController.stateMachine(for:)();
      dispatch thunk of EpisodeStateMachine.currentState.getter();

      PlayAction.episodeOffer.getter();
      sub_1001A3F04(v53, v19, 1);
      v20(v19, v16);
      v45 = a1;
      v26 = sub_1002BD260();
      v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v28 = String._bridgeToObjectiveC()();

      v29 = String._bridgeToObjectiveC()();

      v21 = [v27 initWithText:v28 detailText:v29 image:0 accessoryImage:v26 accessoryType:0];

      v30 = v51;
      PlayAction.episodeOffer.getter();
      v31 = v47;
      EpisodeOffer.artwork.getter();
      v20(v19, v16);
      CarPlayPageLoadCoordinator.loadImage(for:into:)(v31, v21);
      sub_10021F030(v31);
      v32 = sub_1001A44D0();
      if ((v33 & 1) == 0)
      {
        [v21 setPlaybackProgress:*&v32];
      }

      v34 = type metadata accessor for PlayAction();
      v35 = v49;
      *(v49 + 3) = v34;
      *(v35 + 32) = sub_1002BD57C(&qword_10057C878, &type metadata accessor for PlayAction);
      *v35 = v30;
      *(v35 + 40) = 0;
      v36 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
      swift_storeEnumTagMultiPayload();
      v37 = *(*(v36 - 8) + 56);
      v37(v35, 0, 1, v36);
      v38 = v48;
      v37(v48, 1, 1, v36);
      v39 = type metadata accessor for CarPlayTemplateInfo(0);
      v40 = *(v39 + 20);

      sub_1001FBB44(v35, v38);
      *(v38 + v40) = v44;
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      sub_1001D2AD4(v38);
      aBlock[4] = sub_1002BD5D0;
      aBlock[5] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100372F30;
      aBlock[3] = &unk_1004EA3F8;
      v41 = _Block_copy(aBlock);

      [v21 setHandler:v41];
      _Block_release(v41);

      sub_1002BD448(v50, &type metadata accessor for EpisodePlayState);
      sub_100004590(v53);
    }

    else
    {

      return 0;
    }
  }

  return v21;
}

uint64_t sub_1002BCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_1002BCF04;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_1002BCF04()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10022D44C;
  }

  else
  {
    v4 = sub_1002BD6DC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1002BD060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  static TaskPriority.userInitiated.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = a4;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  sub_10023EE80(0, 0, v13, a6, v16);
}

void sub_1002BD1B0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:16.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_10057C860 = v2;
}

uint64_t sub_1002BD260()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90);
  BaseObjectGraph.inject<A>(_:)();
  dispatch thunk of EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {
    if (qword_100572800 != -1)
    {
      swift_once();
    }

    v4 = qword_10057C860;
    v5 = qword_10057C860;

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }

  return v4;
}

uint64_t sub_1002BD448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002BD4A8(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_1002BCE30(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002BD57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002BD608(uint64_t a1)
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

uint64_t sub_1002BD6E0()
{

  v1 = OBJC_IVAR____TtC8Podcasts30AddToQueueEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddToQueueEpisodeContextAction()
{
  result = qword_10057C8A8;
  if (!qword_10057C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002BD7E8()
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

uint64_t sub_1002BD894@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts30AddToQueueEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BD90C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.addEpisodeToQueue(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1002BD9E4(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemOrangeColor];
  v3 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x51206F7420646441;
  v4._object = 0xEC00000065756575;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7);

  *a1 = v2;
  *(a1 + 8) = 0xD000000000000028;
  *(a1 + 16) = 0x8000000100469DF0;
  *(a1 + 24) = v6;
}

uint64_t sub_1002BDAD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1002BDB34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002BDB94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

BOOL sub_1002BDBF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C3310(a1, WitnessTable);
}

uint64_t sub_1002BDC48(uint64_t a1)
{
  result = sub_1002BDD14(&qword_1005821E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BDC8C(uint64_t a1)
{
  result = sub_1002BDD14(&qword_10057C9A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BDCD0(uint64_t a1)
{
  result = sub_1002BDD14(&unk_10057C9B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002BDD14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddToQueueEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}