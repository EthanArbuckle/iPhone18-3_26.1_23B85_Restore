void sub_1004AD23C()
{
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100B300D0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Session ended.", v2, 2u);
  }
}

void sub_1004AD324()
{
  sub_1004B5268();
  if (v1)
  {
    if (qword_100ACFE20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AE5A40);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Ignoring background with Live Activity!", v4, 2u);
    }
  }

  else
  {
    v5 = v0 + OBJC_IVAR____TtC7Journal11AppDelegate_shouldEndSessionMutex;
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC7Journal11AppDelegate_shouldEndSessionMutex));
    sub_1004ACCD8((v5 + 4), v0);

    os_unfair_lock_unlock(v5);
  }
}

void sub_1004AD524()
{
  v1 = type metadata accessor for Date();
  v47 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Session.Kind();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  if (*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate_isAppLocked))
  {
    if (qword_100ACFE20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100AE5A40);
    v47 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "App is locked, ignoring foreground";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v47, v19, v21, v20, 2u);

LABEL_17:
    v26 = v47;

    return;
  }

  v44 = v15;
  sub_1004B5268();
  if (v22)
  {
    if (qword_100ACFE20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AE5A40);
    v47 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Ignoring foreground with Live Activity!";
    goto LABEL_16;
  }

  v41 = v1;
  v24 = OBJC_IVAR____TtC7Journal11AppDelegate_hasProcessedLatestAppUnlock;
  if (*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate_hasProcessedLatestAppUnlock))
  {
    if (qword_100ACFE20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000617C(v25, qword_100AE5A40);
    v47 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "App unlock has already been processed, ignoring foreground.";
    goto LABEL_16;
  }

  v39 = v3;
  v42 = v11;
  OSSignposter.logHandle.getter();
  v43 = v17;
  OSSignpostID.init(log:)();
  *(v0 + v24) = 1;
  sub_1004ADCF8();
  v40 = v0;
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v30, "analyticsSessionBegin", "", v29, 2u);
  }

  (*(v42 + 16))(v13, v43, v44);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v38 = OSSignpostIntervalState.init(id:isOpen:)();
  sub_1004AC208();
  v31 = v46;
  (*(v46 + 104))(v9, enum case for Session.Kind.userEvents(_:), v7);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v45 + 8))(v6, v4);
  v32 = v39;
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (v47[1].isa)(v32, v41);
  (*(v31 + 8))(v9, v7);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v35 = v38;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  swift_retain_n();

  sub_10043C920(sub_1004B692C, v34, sub_1004B6974, v37);

  (*(v42 + 8))(v43, v44);
}

void sub_1004ADCF8()
{
  v1 = OBJC_IVAR____TtC7Journal11AppDelegate_lifecycleObserversRegistered;
  if ((*(v0 + OBJC_IVAR____TtC7Journal11AppDelegate_lifecycleObserversRegistered) & 1) == 0)
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultCenter];
    if (qword_100ACF9F0 != -1)
    {
      swift_once();
    }

    [v3 addObserver:v0 selector:? name:? object:?];
    [v3 addObserver:v0 selector:"processAppTermination" name:UIApplicationWillTerminateNotification object:0];
    [v3 addObserver:v0 selector:"processAppBackgrounding" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v3 addObserver:v0 selector:"processAppBackgrounding" name:UIApplicationDidEnterBackgroundNotification object:0];
    if (qword_100ACFE20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AE5A40);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "App lifecycle observers registered.", v7, 2u);
    }

    *(v2 + v1) = 1;
  }
}

uint64_t sub_1004ADEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result + OBJC_IVAR____TtC7Journal11AppDelegate_shouldEndSessionMutex;
    v8 = result;
    os_unfair_lock_lock((result + OBJC_IVAR____TtC7Journal11AppDelegate_shouldEndSessionMutex));
    *(v7 + 4) = 1;
    os_unfair_lock_unlock(v7);
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = v8;
    v9[4] = a4;
    type metadata accessor for AppSessionStartEvent(0);

    v10 = v8;

    SessionManager.tracker.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1004B697C;
    *(v11 + 24) = v9;
    sub_1004B6488(&qword_100AE5C40, type metadata accessor for AppSessionStartEvent);

    Tracker.submit<A>(_:onlyIfTimed:completion:)();
  }

  return result;
}

uint64_t sub_1004AE078()
{
  v0 = type metadata accessor for OSSignpostError();
  v15 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionManager.tracker.getter();
  type metadata accessor for AppSessionEndEvent(0);
  sub_1004B6488(&unk_100AE5C20, type metadata accessor for AppSessionEndEvent);
  Tracker.time<A>(_:submitAndRestartWithSession:)();

  sub_10043D61C();
  if (qword_100ACFB10 != -1)
  {
    swift_once();
  }

  sub_1002317D8();
  v7 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v8 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v9 = v15;
    if ((*(v15 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v2, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v12, "analyticsSessionBegin", v10, v11, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004AE384()
{
  v0 = type metadata accessor for OSSignpostError();
  v21 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v18[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v3;
    v12 = result;
    (*(v8 + 16))(v10, result + OBJC_IVAR____TtC7Journal11AppDelegate_signposter, v7);

    v13 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v19 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v14 = v21;
      if ((*(v21 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v2, v0);
        v15 = "Submission not allowed!";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v19, v17, "analyticsSessionBegin", v15, v16, 2u);
    }

    (*(v4 + 8))(v6, v20);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_1004AE78C()
{
  v1 = [objc_opt_self() defaultCenter];
  v6 = v1;
  if (qword_100ACF9E8 != -1)
  {
    swift_once();
    v1 = v6;
  }

  [v1 addObserver:v0 selector:? name:? object:?];
  if (qword_100ACFE20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE5A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "App unlock observers registered.", v5, 2u);
  }
}

uint64_t sub_1004AE9C4()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1004AEA58, v2, v1);
}

uint64_t sub_1004AEA58()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = [*(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[5] = v2;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1004AEB80;

  return sub_1001B0F04(v1, &protocol witness table for MainActor, v2);
}

uint64_t sub_1004AEB80()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_1004AECC4, v3, v2);
}

uint64_t sub_1004AECC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004AED30()
{
  if (qword_100ACFE20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AE5A40);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "didFinishLaunchingWithOptions: dataStack.coreDataStack.persistentStoreLoadedSuccessfully received", v3, 2u);
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100B2F9E0 + 16);
  v5 = *&v4[OBJC_IVAR____TtC7Journal13CoreDataStack_container];
  v6 = v4;
  v7 = [v5 viewContext];
  v8 = [v7 persistentStoreCoordinator];

  if (v8 && ((v9 = [v8 persistentStores], sub_1000065A8(0, &qword_100AE5BC0), v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, v10 >> 62) ? (v11 = _CocoaArrayWrapper.endIndex.getter()) : (v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v8, v11))
  {
    v12 = v6[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess];

    if (v12)
    {

      sub_100031210();
      return;
    }
  }

  else
  {
  }

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v13, "didFinishLaunchingWithOptions: dataStack.coreDataStack.persistentStoreLoadedSuccessfully databaseIsOpen == false", v14, 2u);
  }
}

uint64_t sub_1004AEFE4(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100032ECC;

  return sub_1004B5D54(a2 & 1);
}

uint64_t sub_1004AF090(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int *a5)
{
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_100032EC8;

  return (v10)(a3, a4 & 1);
}

uint64_t sub_1004AF1AC()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_100740A70(0, 0);
}

void sub_1004AF7BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for EntriesSortOrder();
  v235 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v236 = *(v245 - 1);
  __chkstk_darwin(v245);
  v244 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v243 = &v225 - v10;
  v242 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v246 = *(v242 - 8);
  __chkstk_darwin(v242);
  v241 = &v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v232 = *(v240 - 8);
  __chkstk_darwin(v240);
  v239 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for GenerativeModelsAvailability();
  v231 = *(v238 - 8);
  __chkstk_darwin(v238);
  v237 = &v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for CanvasContentInputType();
  v247 = *(v259 - 8);
  __chkstk_darwin(v259);
  *&v258 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v261 = &v225 - v16;
  __chkstk_darwin(v17);
  v260 = &v225 - v18;
  __chkstk_darwin(v19);
  v21 = (&v225 - v20);
  v252 = type metadata accessor for JournalFeatureFlags();
  isa = v252[-1].super.super.isa;
  __chkstk_darwin(v252);
  v251 = &v225 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Locale();
  __chkstk_darwin(v23 - 8);
  v254 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for String.LocalizationValue();
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v253 = &v225 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267.receiver = v1;
  v267.super_class = ObjectType;
  objc_msgSendSuper2(&v267, "buildMenuWithBuilder:", a1, v26);
  v28 = sub_1000065A8(0, &unk_100AE5B68);
  v257 = a1;
  v29 = [a1 system];
  v255 = objc_opt_self();
  v30 = [v255 mainSystem];
  v31 = static NSObject.== infix(_:_:)();

  v32 = "@0:8@16";
  v250 = v28;
  if (v31)
  {
    v33 = [objc_opt_self() currentTraitCollection];
    v34 = [v33 userInterfaceIdiom];

    if (v34 == 5)
    {
      v2 = UIMenuPreferences;
      v265 = sub_1004B32C8;
      v266 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v264 = sub_1004B32D8;
      *(&v264 + 1) = &unk_100A6F0E0;
      v35 = _Block_copy(&aBlock);

      [v257 replaceChildrenOfMenuForIdentifier:UIMenuPreferences fromChildrenBlock:v35];
      _Block_release(v35);
      if (swift_isEscapingClosureAtFileLocation())
      {
LABEL_83:
        __break(1u);
        return;
      }

      *&v256 = sub_1000065A8(0, &unk_100AD4D00);
      sub_1000F24EC(&unk_100AD4780);
      preferredElementSize = swift_allocObject();
      *(preferredElementSize + 16) = xmmword_100941D50;
      sub_1000065A8(0, &qword_100AE5B78);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v37 = v7;
      v38 = String._bridgeToObjectiveC()();
      v39 = [objc_opt_self() systemImageNamed:v38];

      v7 = v37;
      aBlock = 0u;
      v264 = 0u;
      v32 = "@0:8@16";
      *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v268.value.super.isa = 0;
      v268.is_nil = 0;
      v41 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v268, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v214).super.super.isa;
      [v257 insertSiblingMenu:v41 afterMenuForIdentifier:UIMenuPreferences];
    }
  }

  v42 = [v257 system];
  v43 = [v255 mainSystem];
  v44 = static NSObject.== infix(_:_:)();

  if (v44)
  {
    v265 = sub_1004B32CC;
    v266 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v264 = sub_1004B32D8;
    *(&v264 + 1) = &unk_100A6F0B8;
    v45 = _Block_copy(&aBlock);

    [v257 replaceChildrenOfMenuForIdentifier:UIMenuAbout fromChildrenBlock:v45];
    _Block_release(v45);
    if (swift_isEscapingClosureAtFileLocation())
    {
      goto LABEL_80;
    }
  }

  v233 = v7;
  v234 = v5;
  v46 = [v257 system];
  v47 = [v255 mainSystem];
  v48 = static NSObject.== infix(_:_:)();

  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

  v229 = UIMenuNewItem;
  v230 = sub_1000F24EC(&unk_100AD4780);
  v248 = swift_allocObject();
  *(v248 + 1) = xmmword_100941D70;
  v228 = sub_1000065A8(0, &qword_100AE4350);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v49 = String._bridgeToObjectiveC()();
  v50 = objc_opt_self();
  *&v256 = v50;
  v51 = [v50 systemImageNamed:v49];

  aBlock = 0u;
  v264 = 0u;
  *(v248 + 4) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v52 = String._bridgeToObjectiveC()();
  v53 = [v50 systemImageNamed:v52];

  aBlock = 0u;
  v264 = 0u;
  v54 = isa;
  v55 = v251;
  v56 = v252;
  (*(isa + 13))(v251, enum case for JournalFeatureFlags.multipleJournals(_:), v252);
  JournalFeatureFlags.isEnabled.getter();
  (*(v54 + 1))(v55, v56);
  v57 = sub_1000065A8(0, &unk_100AD4D00);
  v58 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v59 = v248;
  *(v248 + 5) = v58;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v60 = String._bridgeToObjectiveC()();
  v61 = [v256 systemImageNamed:v60];

  aBlock = 0u;
  v264 = 0u;
  *(v59 + 6) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v269.value.super.isa = 0;
  v269.is_nil = 0;
  v248 = v57;
  v63 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v62, 0, v269, 1, 0xFFFFFFFFFFFFFFFFLL, v59, v214).super.super.isa;
  v2 = v257;
  [v257 replaceMenuForIdentifier:v229 withMenu:v63];

  [v2 removeMenuForIdentifier:UIMenuOpen];
  [v2 removeMenuForIdentifier:UIMenuDocument];
  v229 = UIMenuPrint;
  v32 = swift_allocObject();
  *(v32 + 1) = xmmword_100941D60;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (qword_100AD0910 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v64 = qword_100B30DE8;
    aBlock = 0u;
    v264 = 0u;
    *(v32 + 4) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v65 = String._bridgeToObjectiveC()();
    v66 = [v256 systemImageNamed:v65];

    aBlock = 0u;
    v264 = 0u;
    *(v32 + 5) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v270.value.super.isa = 0;
    v270.is_nil = 0;
    v68 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v67, 0, v270, 1, 0xFFFFFFFFFFFFFFFFLL, v32, v214).super.super.isa;
    [v2 replaceMenuForIdentifier:v229 withMenu:v68];

LABEL_10:
    v69 = [v257 system];
    v70 = [v255 mainSystem];
    v71 = static NSObject.== infix(_:_:)();

    if (v71)
    {
      if (qword_100ACFA90 != -1)
      {
        swift_once();
      }

      v262 = _swiftEmptyArrayStorage;
      v72 = *(qword_100B2F530 + 16);
      if (v72)
      {
        v73 = qword_100B2F530 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
        v74 = v247[9];
        v248 = isa + 104;
        v247 = (isa + 8);
        v230 = (v246 + 104);
        ++v232;
        ++v231;
        v229 = (v236 + 104);
        LODWORD(v246) = enum case for JournalFeatureFlags.followupPrompts(_:);
        v228 = (v236 + 8);
        v227 = enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:);
        v236 = " menu edit command";
        v226 = enum case for GenerativeModelsAvailability.Availability.available(_:);
        *&v256 = _swiftEmptyArrayStorage;
        while (1)
        {
          sub_1001EDC74(v73, v21);
          sub_1001EDC74(v21, v260);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 0xB)
          {
            goto LABEL_53;
          }

          if (((1 << EnumCaseMultiPayload) & 0x3BC) != 0)
          {
            goto LABEL_20;
          }

          if (((1 << EnumCaseMultiPayload) & 0xC00) == 0)
          {
            break;
          }

          v79 = v251;
          v80 = v252;
          (*v248)(v251, v246, v252);
          v81 = JournalFeatureFlags.isEnabled.getter();
          (*v247)(v79, v80);
          if (v81)
          {
            (*v230)(v241, v227, v242);
            v82 = v239;
            GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:language:)();
            v83 = v237;
            static GenerativeModelsAvailability.current(parameters:)();
            (*v232)(v82, v240);
            v84 = v243;
            GenerativeModelsAvailability.availability.getter();
            (*v231)(v83, v238);
            v85 = v244;
            v86 = v245;
            (*v229)(v244, v226, v245);
            LOBYTE(v83) = static GenerativeModelsAvailability.Availability.== infix(_:_:)();
            v87 = *v228;
            (*v228)(v85, v86);
            v87(v84, v86);
            if ((v83 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_20;
          }

          v75 = v21;
LABEL_16:
          sub_100439B24(v75, type metadata accessor for CanvasContentInputType);
LABEL_17:
          v73 += v74;
          if (!--v72)
          {
            goto LABEL_57;
          }
        }

        if (EnumCaseMultiPayload == 6)
        {
          if (([objc_opt_self() isSourceTypeAvailable:1] & 1) == 0)
          {
LABEL_52:
            sub_100439B24(v21, type metadata accessor for CanvasContentInputType);
            goto LABEL_17;
          }
        }

        else
        {
LABEL_53:
          if (EnumCaseMultiPayload)
          {
            sub_100004F84(v260, &qword_100AD1420);
          }
        }

LABEL_20:
        sub_1001EDC74(v21, v261);
        v77 = swift_getEnumCaseMultiPayload();
        if (v77 <= 4)
        {
          if (v77 != 1)
          {
            if (v77 != 2)
            {
              goto LABEL_43;
            }

            goto LABEL_24;
          }

          sub_1001EC9B8();
          v78 = sub_1001ECD40();
          sub_100004F84(v261, &qword_100AD1420);
        }

        else if (v77 == 7)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v78 = sub_1001ECD40();
        }

        else
        {
          if (v77 != 6 && v77 != 5)
          {
LABEL_43:
            sub_100439B24(v21, type metadata accessor for CanvasContentInputType);
            sub_100439B24(v261, type metadata accessor for CanvasContentInputType);
            goto LABEL_17;
          }

LABEL_24:
          sub_1001EC9B8();
          v78 = sub_1001ECD40();
        }

        sub_1001EDC74(v21, v258);
        v88 = swift_getEnumCaseMultiPayload();
        if (v88 <= 4)
        {
          if (v88 == 1)
          {
            sub_100004F84(v258, &qword_100AD1420);
LABEL_47:
            sub_1000065A8(0, &qword_100AE4350);
            aBlock = 0u;
            v264 = 0u;
            UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
            sub_100439B24(v21, type metadata accessor for CanvasContentInputType);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            *&v256 = v262;
            goto LABEL_17;
          }

          if (v88 == 2)
          {
            goto LABEL_47;
          }
        }

        else if (v88 == 7 || v88 == 6 || v88 == 5)
        {
          goto LABEL_47;
        }

        sub_100439B24(v21, type metadata accessor for CanvasContentInputType);

        v75 = v258;
        goto LABEL_16;
      }

      *&v256 = _swiftEmptyArrayStorage;
LABEL_57:
      v262 = v256;
      v89 = sub_1000065A8(0, &qword_100AE4350);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v90 = String._bridgeToObjectiveC()();
      v91 = objc_opt_self();
      v92 = [v91 _systemImageNamed:v90];

      aBlock = 0u;
      v264 = 0u;
      v259 = v89;
      v93 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v243 = v262;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v246 = String.init(localized:table:bundle:locale:comment:)();
      v245 = v94;
      v247 = v93;
      if (qword_100ACFE30 != -1)
      {
        swift_once();
      }

      v95 = qword_100AE5A58;
      v260 = sub_1000F24EC(&unk_100AD4780);
      v261 = swift_allocObject();
      *(v261 + 16) = xmmword_100941040;
      v96 = swift_allocObject();
      v258 = xmmword_100941D60;
      *(v96 + 16) = xmmword_100941D60;
      v97 = sub_1000065A8(0, &qword_100AE5B78);
      v244 = v95;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v98 = String._bridgeToObjectiveC()();
      v99 = [v91 systemImageNamed:v98];

      aBlock = 0u;
      v264 = 0u;
      v242 = v97;
      *(v96 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:defaultValue:table:bundle:locale:comment:)();
      v241 = v100;
      v101 = String._bridgeToObjectiveC()();
      v102 = [v91 systemImageNamed:v101];

      aBlock = 0u;
      v264 = 0u;
      v103 = isa;
      v104 = *(isa + 13);
      v105 = v251;
      v248 = v91;
      v106 = v252;
      v104(v251, enum case for JournalFeatureFlags.multipleJournals(_:), v252);
      JournalFeatureFlags.isEnabled.getter();
      (*(v103 + 1))(v105, v106);
      *&v256 = sub_1000065A8(0, &unk_100AD4D00);
      *(v96 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      v271.value.super.isa = 0;
      v271.is_nil = 0;
      v108.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v107, 0, v271, 1, 0xFFFFFFFFFFFFFFFFLL, v96, v214).super.super.isa;
      *(v261 + 32) = v108;
      v109 = swift_allocObject();
      *(v109 + 16) = v258;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v110 = String._bridgeToObjectiveC()();
      v111 = v248;
      v112 = [v248 systemImageNamed:v110];

      aBlock = 0u;
      v264 = 0u;
      *(v109 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v113 = String._bridgeToObjectiveC()();
      v114 = [v111 systemImageNamed:v113];

      aBlock = 0u;
      v264 = 0u;
      *(v109 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      v272.value.super.isa = 0;
      v272.is_nil = 0;
      v116.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v115, 0, v272, 1, 0xFFFFFFFFFFFFFFFFLL, v109, v215).super.super.isa;
      v117 = v261;
      *(v261 + 40) = v116;
      v118._countAndFlagsBits = 0;
      v118._object = 0xE000000000000000;
      v273.value.super.isa = 0;
      v273.is_nil = 0;
      v117[6].super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v118, 0, v273, 1, 0xFFFFFFFFFFFFFFFFLL, v243, v216).super.super.isa;
      v119 = swift_allocObject();
      *(v119 + 16) = v258;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v120 = String._bridgeToObjectiveC()();
      v121 = v248;
      v122 = [v248 systemImageNamed:v120];

      aBlock = 0u;
      v264 = 0u;
      *(v119 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v123 = String._bridgeToObjectiveC()();
      v124 = [v121 systemImageNamed:v123];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      aBlock = 0u;
      v264 = 0u;
      *(v119 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      v274.value.super.isa = 0;
      v274.is_nil = 0;
      v126.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v125, 0, v274, 1, 0xFFFFFFFFFFFFFFFFLL, v119, v217).super.super.isa;
      v127 = v261;
      *(v261 + 56) = v126;
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_100941D50;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v129 = String._bridgeToObjectiveC()();
      v130 = [v121 systemImageNamed:v129];

      aBlock = 0u;
      v264 = 0u;
      *(v128 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v131._countAndFlagsBits = 0;
      v131._object = 0xE000000000000000;
      v275.value.super.isa = 0;
      v275.is_nil = 0;
      v127[8].super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v131, 0, v275, 1, 0xFFFFFFFFFFFFFFFFLL, v128, v218).super.super.isa;
      v132._countAndFlagsBits = v246;
      v132._object = v245;
      v276.value.super.isa = 0;
      v276.is_nil = v244;
      v133 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v132, 0, v276, 0, 0xFFFFFFFFFFFFFFFFLL, v127, v219).super.super.isa;
      [v257 insertSiblingMenu:v133 afterMenuForIdentifier:UIMenuView];
    }

    v261 = sub_1000065A8(0, &unk_100AD4D00);
    v260 = sub_1000F24EC(&unk_100AD4780);
    v134 = swift_allocObject();
    v256 = xmmword_100941D50;
    *(v134 + 16) = xmmword_100941D50;
    v259 = sub_1000065A8(0, &qword_100AE4350);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v252 = String.init(localized:table:bundle:locale:comment:)();
    v135 = String._bridgeToObjectiveC()();
    v2 = objc_opt_self();
    v136 = [v2 systemImageNamed:v135];

    aBlock = 0u;
    v264 = 0u;
    *(v134 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v137._countAndFlagsBits = 0;
    v137._object = 0xE000000000000000;
    v277.value.super.isa = 0;
    v277.is_nil = 0;
    v138 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v137, 0, v277, 1, 0xFFFFFFFFFFFFFFFFLL, v134, v214).super.super.isa;
    v21 = UIMenuFind;
    [v257 insertChildMenu:v138 atStartOfMenuForIdentifier:UIMenuFind];

    v139 = swift_allocObject();
    *(v139 + 16) = v256;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v32 = _swiftEmptyArrayStorage;
    String.init(localized:table:bundle:locale:comment:)();
    v140 = String._bridgeToObjectiveC()();
    *&v258 = v2;
    v141 = [v2 systemImageNamed:v140];

    aBlock = 0u;
    v264 = 0u;
    *(v139 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    v278.value.super.isa = 0;
    v278.is_nil = 0;
    v143 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v142, 0, v278, 1, 0xFFFFFFFFFFFFFFFFLL, v139, v220).super.super.isa;
    [v257 insertChildMenu:v143 atEndOfMenuForIdentifier:UIMenuFind];

    v265 = sub_1004B32D0;
    v266 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v144 = v257;
    *&v264 = sub_1004B32D8;
    *(&v264 + 1) = &unk_100A6F068;
    v145 = _Block_copy(&aBlock);

    [v144 replaceChildrenOfMenuForIdentifier:UIMenuTextStyle fromChildrenBlock:v145];
    _Block_release(v145);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

  [v144 removeMenuForIdentifier:UIMenuTextSize];
  v146 = [v144 system];
  v147 = [v255 mainSystem];
  v148 = static NSObject.== infix(_:_:)();

  if (v148)
  {
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_100941D70;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v150 = String._bridgeToObjectiveC()();
    v151 = v258;
    v152 = [v258 systemImageNamed:v150];

    aBlock = 0u;
    v264 = 0u;
    *(v149 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v153 = String._bridgeToObjectiveC()();
    v154 = [v151 systemImageNamed:v153];

    aBlock = 0u;
    v264 = 0u;
    *(v149 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v155 = String._bridgeToObjectiveC()();
    v156 = [v151 systemImageNamed:v155];

    aBlock = 0u;
    v264 = 0u;
    *(v149 + 48) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v157._countAndFlagsBits = 0;
    v157._object = 0xE000000000000000;
    v279.value.super.isa = 0;
    v279.is_nil = 0;
    v158 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v157, 0, v279, 1, 0xFFFFFFFFFFFFFFFFLL, v149, v214).super.super.isa;
    *&v256 = UIMenuView;
    [v144 insertChildMenu:v158 atStartOfMenuForIdentifier:?];

    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_100941040;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v160 = String._bridgeToObjectiveC()();
    v161 = [v151 _systemImageNamed:v160];

    aBlock = 0u;
    v264 = 0u;
    *(v159 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v162 = String._bridgeToObjectiveC()();
    v163 = [v151 systemImageNamed:v162];

    aBlock = 0u;
    v264 = 0u;
    *(v159 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v164 = String._bridgeToObjectiveC()();
    v165 = [v151 systemImageNamed:v164];

    aBlock = 0u;
    v264 = 0u;
    *(v159 + 48) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    if (qword_100AD0978 != -1)
    {
      swift_once();
    }

    aBlock = 0u;
    v264 = 0u;
    v166 = qword_100B30E50;
    v167 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v252 = v159;
    *(v159 + 56) = v167;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v254 = String.init(localized:table:bundle:locale:comment:)();
    v253 = v168;
    v169 = String._bridgeToObjectiveC()();
    v170 = [v258 systemImageNamed:v169];

    v262 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    for (i = 1; i != 10; ++i)
    {
      *&aBlock = i;
      dispatch thunk of CustomStringConvertible.description.getter();
      *(&v264 + 1) = &type metadata for Int;
      *&aBlock = i - 1;
      UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v172._countAndFlagsBits = v254;
    v172._object = v253;
    v280.value.super.isa = v170;
    v280.is_nil = 0;
    v173.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v172, 0, v280, 0, 0xFFFFFFFFFFFFFFFFLL, v262, v221.super.super.isa).super.super.isa;
    v174 = v252;
    v252[8].super.super.isa = v173.super.super.isa;
    v175._countAndFlagsBits = 0;
    v175._object = 0xE000000000000000;
    v281.value.super.isa = 0;
    v281.is_nil = 0;
    v176 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v175, 0, v281, 1, 0xFFFFFFFFFFFFFFFFLL, v174, v222).super.super.isa;
    [v257 insertChildMenu:v176 atStartOfMenuForIdentifier:v256];

    if (qword_100AD0460 != -1)
    {
      swift_once();
    }

    v251 = *(&xmmword_100B304A0 + 1);
    v252 = xmmword_100B304A0;

    v177 = String._bridgeToObjectiveC()();
    isa = [v258 systemImageNamed:v177];

    v254 = swift_allocObject();
    *(v254 + 1) = xmmword_100941D60;
    v253 = sub_1000065A8(0, &qword_100AE5B78);
    v178 = v235;
    if (qword_100AD0468 != -1)
    {
      swift_once();
    }

    v248 = xmmword_100B304B0;
    v179 = *(v178 + 104);
    v180 = v233;
    v181 = v234;
    v179(v233, enum case for EntriesSortOrder.entryDate(_:), v234);

    v182 = EntriesSortOrder.rawValue.getter();
    v184 = v183;
    v185 = *(v178 + 8);
    v185(v180, v181);
    *(&v264 + 1) = &type metadata for String;
    *&aBlock = v182;
    *(&aBlock + 1) = v184;
    v248 = "changeSortOrderFrom:";
    *(v254 + 4) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    if (qword_100AD0470 != -1)
    {
      swift_once();
    }

    v179(v180, enum case for EntriesSortOrder.momentDate(_:), v181);

    v186 = EntriesSortOrder.rawValue.getter();
    v188 = v187;
    v185(v180, v181);
    *(&v264 + 1) = &type metadata for String;
    *&aBlock = v186;
    *(&aBlock + 1) = v188;
    v189 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v190 = v254;
    *(v254 + 5) = v189;
    v191._countAndFlagsBits = v252;
    v191._object = v251;
    v282.value.super.isa = isa;
    v282.is_nil = 0;
    v192 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v191, 0, v282, 32, 0xFFFFFFFFFFFFFFFFLL, v190, v223.super.super.isa).super.super.isa;
    v144 = v257;
    [v257 insertChildMenu:v192 atStartOfMenuForIdentifier:v256];

    v265 = sub_1004B32D4;
    v266 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v264 = sub_1004B32D8;
    *(&v264 + 1) = &unk_100A6F090;
    v193 = _Block_copy(&aBlock);

    [v144 replaceChildrenOfMenuForIdentifier:UIMenuToolbar fromChildrenBlock:v193];
    _Block_release(v193);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
      goto LABEL_83;
    }
  }

  v194 = [v144 system];
  v195 = [v255 mainSystem];
  v196 = static NSObject.== infix(_:_:)();

  if (v196 & 1) != 0 && (static Runtime.isInternalBuild.getter())
  {
    v197 = swift_allocObject();
    *(v197 + 16) = xmmword_100941D60;
    v198 = v197;
    *&v256 = v197;
    v199 = String._bridgeToObjectiveC()();
    v200 = v258;
    v201 = [v258 systemImageNamed:v199];

    aBlock = 0u;
    v264 = 0u;
    *(v198 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v202 = swift_allocObject();
    *(v202 + 16) = xmmword_100941D70;
    sub_1000065A8(0, &qword_100AE5B78);
    v203 = String._bridgeToObjectiveC()();
    v204 = [v200 systemImageNamed:v203];

    aBlock = 0u;
    v264 = 0u;
    *(v202 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v205 = String._bridgeToObjectiveC()();
    v206 = [v200 systemImageNamed:v205];

    aBlock = 0u;
    v264 = 0u;
    *(v202 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v207 = String._bridgeToObjectiveC()();
    v208 = [v200 systemImageNamed:v207];

    aBlock = 0u;
    v264 = 0u;
    *(v202 + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v209._countAndFlagsBits = 0;
    v209._object = 0xE000000000000000;
    v283.value.super.isa = 0;
    v283.is_nil = 0;
    v210.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v209, 0, v283, 1, 0xFFFFFFFFFFFFFFFFLL, v202, v214).super.super.isa;
    v211 = v256;
    *(v256 + 40) = v210;
    v212._countAndFlagsBits = 0x6C616E7265746E49;
    v212._object = 0xE800000000000000;
    v284.value.super.isa = 0;
    v284.is_nil = 0;
    v213 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v212, 0, v284, 0, 0xFFFFFFFFFFFFFFFFLL, v211, v224).super.super.isa;
    [v257 insertSiblingMenu:v213 beforeMenuForIdentifier:UIMenuHelp];
  }
}

Class sub_1004B32D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000065A8(0, &unk_100ADC630);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t sub_1004B3370(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D50;
  sub_1000065A8(0, &qword_100AE4350);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  *(inited + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();

  sub_1006AD920(inited);
  return a1;
}

void sub_1004B3594(unint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v45[1] = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v45[0] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v46 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_3:

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10 && [v10 action])
      {
        v11 = static Selector.== infix(_:_:)();

        if (v11)
        {
          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_77;
          }

          if (v46)
          {
            if (v13 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_69;
            }
          }

          else if (v13 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v14 = v7 + 5;
LABEL_23:
          v15 = v14 - 4;
          if ((a1 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }

            if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_62;
            }

            v16 = *(a1 + 8 * v14);
          }

          v17 = v16;
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18 && [v18 action])
          {
            v19 = static Selector.== infix(_:_:)();

            if ((v19 & 1) == 0)
            {
              if (v15 == v7)
              {
                goto LABEL_49;
              }

LABEL_33:
              if ((a1 & 0xC000000000000001) != 0)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v7 < 0)
                {
                  goto LABEL_74;
                }

                v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v22)
                {
                  goto LABEL_75;
                }

                if (v15 >= v22)
                {
                  goto LABEL_76;
                }

                v23 = *(a1 + 8 * v14);
                v20 = *(a1 + 8 * v7 + 32);
                v21 = v23;
              }

              v24 = v21;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
              {
                a1 = sub_100692B10(a1);
                v25 = (a1 >> 62) & 1;
              }

              else
              {
                LODWORD(v25) = 0;
              }

              v26 = a1 & 0xFFFFFFFFFFFFFF8;
              v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v24;

              if ((a1 & 0x8000000000000000) != 0 || v25)
              {
                a1 = sub_100692B10(a1);
                v26 = a1 & 0xFFFFFFFFFFFFFF8;
                if ((v15 & 0x8000000000000000) != 0)
                {
LABEL_58:
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  v6 = _CocoaArrayWrapper.endIndex.getter();
                  if (!v6)
                  {
                    break;
                  }

                  goto LABEL_3;
                }
              }

              else if ((v15 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              if (v15 >= *(v26 + 16))
              {
                goto LABEL_65;
              }

              v28 = *(v26 + 8 * v14);
              *(v26 + 8 * v14) = v20;

              v49 = a1;
LABEL_49:
              if (__OFADD__(v7++, 1))
              {
                goto LABEL_64;
              }
            }

            v30 = v14 - 3;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_63;
            }

            if (a1 >> 62)
            {
              v31 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v14;
            if (v30 == v31)
            {
              goto LABEL_69;
            }

            goto LABEL_23;
          }

          if (v15 != v7)
          {
            goto LABEL_33;
          }

          goto LABEL_49;
        }
      }

      else
      {
      }

      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_59;
      }

      ++v7;
      if (v12 == v6)
      {
        if (v46)
        {
          goto LABEL_68;
        }

LABEL_16:
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_69;
      }
    }
  }

  if (!v46)
  {
    goto LABEL_16;
  }

LABEL_68:
  v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_69:
  if (a1 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32 >= v7)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32 >= v7)
    {
LABEL_71:
      sub_100206D2C(v7, v32);
      sub_1000F24EC(&unk_100AD4780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100941040;
      sub_1000065A8(0, &qword_100AE4350);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v34 = String._bridgeToObjectiveC()();
      v35 = objc_opt_self();
      v36 = [v35 _systemImageNamed:v34];

      v47 = 0u;
      v48 = 0u;
      *(inited + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v37 = String._bridgeToObjectiveC()();
      v38 = [v35 systemImageNamed:v37];

      v47 = 0u;
      v48 = 0u;
      *(inited + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v39 = String._bridgeToObjectiveC()();
      v40 = [v35 systemImageNamed:v39];

      *(&v48 + 1) = &type metadata for Int;
      *&v47 = 0;
      *(inited + 48) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v41 = String._bridgeToObjectiveC()();
      v42 = [v35 systemImageNamed:v41];

      *(&v48 + 1) = &type metadata for Int;
      *&v47 = 1;
      *(inited + 56) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v43 = String._bridgeToObjectiveC()();
      v44 = [v35 systemImageNamed:v43];

      *(&v48 + 1) = &type metadata for Int;
      *&v47 = 2;
      *(inited + 64) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      sub_1006AD920(inited);
      return;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

double *sub_1004B3F20(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
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
          goto LABEL_17;
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
      if (v7 && [v7 action] && (static Selector.== infix(_:_:)() & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004B44A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (static Selector.== infix(_:_:)())
  {
    result = sub_1004B54EC();
    if (result)
    {

      return 1;
    }
  }

  else
  {
    sub_1000082B4(a2, v16, &qword_100AD13D0);
    v7 = v17;
    if (v17)
    {
      v8 = sub_10000CA14(v16, v17);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      sub_10000BA7C(v16);
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

  return result;
}

id sub_1004B46D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___trackingConsent] = 0;
  v3 = &v0[OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___versionNumber];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___buildNumber];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___sessionManager] = 0;
  *&v0[OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___appSessionManager] = 0;
  *&v0[OBJC_IVAR____TtC7Journal11AppDelegate____lazy_storage___flushManager] = 0;
  v5 = &v0[OBJC_IVAR____TtC7Journal11AppDelegate_shouldEndSessionMutex];
  *v5 = 0;
  v5[4] = 0;
  v0[OBJC_IVAR____TtC7Journal11AppDelegate_lifecycleObserversRegistered] = 0;
  v0[OBJC_IVAR____TtC7Journal11AppDelegate_hasProcessedLatestAppUnlock] = 0;
  v0[OBJC_IVAR____TtC7Journal11AppDelegate_isAppLocked] = 0;
  OSSignposter.init()();
  *&v0[OBJC_IVAR____TtC7Journal11AppDelegate_localNotificationsTask] = 0;
  v6 = OBJC_IVAR____TtC7Journal11AppDelegate_lockSettingsVM;
  v7 = [objc_opt_self() currentUser];
  v8 = objc_allocWithZone(type metadata accessor for LockSettingsViewModel());
  *&v1[v6] = sub_1000042A4(v7);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1004B4914()
{
  result = type metadata accessor for OSSignposter();
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

void sub_1004B49E8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v48 - v5;
  v7 = [objc_opt_self() defaultManager];
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v8, qword_100B2FC48);
  FileStoreConfiguration.cachesDirectoryURL.getter();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = *(v1 + 8);
  v51 = v1 + 8;
  v12(v6, v0);
  v56 = 0;
  v13 = [v7 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:&v56];

  v14 = v56;
  if (v13)
  {
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    v18 = v15;
    v19 = *(v15 + 16);
    if (v19)
    {
      v21 = *(v1 + 16);
      v20 = v1 + 16;
      v22 = *(v20 + 64);
      v48[1] = v18;
      v23 = v18 + ((v22 + 32) & ~v22);
      v53 = *(v20 + 56);
      v54 = v21;
      *&v17 = 138412290;
      v49 = v17;
      v50 = v0;
      v52 = v12;
      v21(v4, v23, v0);
      while (1)
      {
        URL._bridgeToObjectiveC()(v24);
        v27 = v26;
        v12(v4, v0);
        v56 = 0;
        v28 = [v7 removeItemAtURL:v27 error:&v56];

        if (v28)
        {
          v25 = v56;
        }

        else
        {
          v29 = v56;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_100ACFA68 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_10000617C(v30, qword_100AD6DE8);
          swift_errorRetain();
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = v20;
            v34 = v7;
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v35 = v49;
            swift_errorRetain();
            v37 = _swift_stdlib_bridgeErrorToNSError();
            *(v35 + 4) = v37;
            *v36 = v37;
            _os_log_impl(&_mh_execute_header, v31, v32, "PersistentCache.clear error removing file: %@", v35, 0xCu);
            sub_100004F84(v36, &unk_100AD4BB0);

            v7 = v34;
            v20 = v33;
            v0 = v50;
          }

          else
          {
          }

          v12 = v52;
        }

        v23 += v53;
        if (!--v19)
        {
          break;
        }

        v54(v4, v23, v0);
      }
    }
  }

  else
  {
    v38 = v56;
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v56 = v39;
    sub_1000F24EC(&qword_100AD5BC0);
    sub_1000065A8(0, &unk_100AE5BD0);
    swift_dynamicCast();
    v40 = v55;
    if (qword_100ACFA68 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000617C(v41, qword_100AD6DE8);
    v42 = v40;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "PersistentCache.clear error getting directory content: %@", v45, 0xCu);
      sub_100004F84(v46, &unk_100AD4BB0);

      v42 = v43;
      v43 = v47;
    }
  }
}

uint64_t sub_1004B4FC4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 infoDictionary];

  if (!v2)
  {
    return 0x206E776F6E6B6E55;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16) || (v4 = sub_100094E98(0xD00000000000001ALL, 0x80000001008E6DE0), (v5 & 1) == 0))
  {

    return 0x206E776F6E6B6E55;
  }

  sub_10000BA20(*(v3 + 56) + 32 * v4, v15);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0x206E776F6E6B6E55;
  }

  v6 = [v0 mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16) && (v9 = sub_100094E98(0x656C646E75424643, 0xEF6E6F6973726556), (v10 & 1) != 0))
    {
      sub_10000BA20(*(v8 + 56) + 32 * v9, v15);

      if (swift_dynamicCast())
      {
        v15[0] = v14;

        v11._countAndFlagsBits = 10272;
        v11._object = 0xE200000000000000;
        String.append(_:)(v11);

        String.append(_:)(v14);

        v12._countAndFlagsBits = 41;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);

        return *&v15[0];
      }
    }

    else
    {
    }
  }

  return 0x206E776F6E6B6E55;
}

void sub_1004B5268()
{
  v16 = [objc_opt_self() sharedApplication];
  v0 = [v16 connectedScenes];
  sub_1000065A8(0, &qword_100AE4620);
  sub_10002623C();
  v1 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v18;
    v2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v2 = v1 + 56;
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

    v6 = v9 & *(v1 + 56);

    v5 = 0;
    v3 = v1;
  }

  v15 = v4;
  v10 = (v4 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v13 = v17) == 0))
    {
LABEL_20:

LABEL_21:
      sub_100014FF8();

      return;
    }

LABEL_17:
    v14 = [v13 delegate];

    if (v14)
    {
      type metadata accessor for LiveActivitySceneDelegate();
      if (swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }
  }

  v11 = v5;
  v12 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v2 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_1004B54EC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_100510628();

  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC7Journal13SceneDelegate_window];
    if (v2)
    {
      v3 = [v2 rootViewController];

      result = v3;
      if (v3)
      {
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_100ACFE20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AE5A40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "App has no available windows!", v8, 2u);
  }

  return 0;
}

uint64_t sub_1004B5A10()
{
  v0 = type metadata accessor for LoggingEventProcessorFormat();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UploadBatchEventConfig();
  v4 = static UploadBatchEventConfig.default.getter();
  static Runtime.isInternalBuild.getter();
  v5 = UploadBatchEventConfig.with(debuggingEnabled:)();

  type metadata accessor for UploadBatchEventProcessor();
  sub_1004FEE14();
  type metadata accessor for Client();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  Client.__allocating_init(bundle:)();
  UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
  sub_1004AC208();
  SessionManager.processorManager.getter();

  ProcessorManager.add(eventProcessor:)();

  type metadata accessor for LoggingEventProcessor();
  *v3 = 11;
  (*(v1 + 104))(v3, enum case for LoggingEventProcessorFormat.json(_:), v0);
  LoggingEventProcessor.__allocating_init(logFormat:)();

  SessionManager.processorManager.getter();

  ProcessorManager.add(eventProcessor:)();

  v9 = sub_1004ABEA8();
  TrackingConsent.allow()();

  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100B300D0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Flushing analytics events...", v13, 2u);
  }

  sub_1004ACA70();
  dispatch thunk of FlushManager.flush(_:)();

  sub_1004AC808();
  AppSessionManager.startAppSession()();

  sub_1004AE78C();

  return 1;
}

uint64_t sub_1004B5D54(char a1)
{
  *(v1 + 56) = a1;
  v2 = type metadata accessor for Date();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  sub_1000F24EC(&qword_100AE46A0);
  *(v1 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004B5E80, v4, v3);
}

uint64_t sub_1004B5E80()
{
  v1 = *(v0 + 56);

  if (v1)
  {
    if (qword_100AD00D8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);
    static Date.now.getter();
    sub_1006D9910(v2);
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = sub_100510628();

    if (v6)
    {
      v7 = *(v0 + 40);
      v8 = sub_1000F24EC(&qword_100AD62A0);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
      v11 = type metadata accessor for CanvasContentInputType();
      *v7 = 0;
      *(v7 + 1) = 0;
      (*(*(v11 - 8) + 56))(&v7[v9], 1, 1, v11);
      v12 = type metadata accessor for WidgetFamily();
      (*(*(v12 - 8) + 56))(&v7[v10], 1, 1, v12);
      v13 = type metadata accessor for AppLaunchAction();
      swift_storeEnumTagMultiPayload();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
      sub_1001F05E8(v7);

      sub_100004F84(v7, &qword_100AE46A0);
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1004B61E4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D50;
  sub_1000065A8(0, &qword_100AE4350);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  *(v2 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  return v2;
}

uint64_t sub_1004B63DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1005A9590();
}

uint64_t sub_1004B6488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B64D0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_1004AEFE4(a1, a2 & 1);
}

uint64_t sub_1004B657C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100032EC8;

  return sub_1004AF090(a1, a2, a3, a4 & 1, v10);
}

uint64_t sub_1004B6658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1004AF190();
}

uint64_t sub_1004B6704()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1004AE9C4();
}

uint64_t sub_1004B67B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004ACF98(a1, v4, v5, v6);
}

uint64_t sub_1004B686C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10043F444(a1, v4, v5, v7, v6);
}

uint64_t sub_1004B6934()
{

  return swift_deallocObject();
}

uint64_t sub_1004B6990()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004B69D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10043F444(a1, v4, v5, v7, v6);
}

void *sub_1004B6B18()
{
  v1 = v0;
  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    if (([v2 isBeingDismissed] & 1) != 0 || (v4 = objc_msgSend(v3, "activePresentationController")) == 0 || (v5 = v4, v6 = objc_msgSend(v4, "shouldPresentInFullscreen"), v5, v6))
    {
    }

    else
    {
      v17 = sub_1004B6B18();

      if (v17)
      {
        return v17;
      }
    }
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v1)
  {
    v8 = [v1 childViewControllers];
    sub_1004B7AE8();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_29;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_30:

      return 0;
    }

    while (1)
    {
      while (__OFSUB__(v10--, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v12 = *(v9 + 32 + 8 * v10);
LABEL_20:
      v13 = v12;
      v14 = [v12 viewIfLoaded];
      v15 = [v14 window];

      if (v15)
      {

        v1 = sub_1004B6B18();
        if (v1)
        {

          return v1;
        }
      }

      else
      {
      }

      if (!v10)
      {
        goto LABEL_30;
      }
    }
  }

  v7 = v1;
  return v1;
}

void *sub_1004B6D48()
{
  v1 = v0;
  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    if (([v2 isBeingDismissed] & 1) != 0 || (v4 = objc_msgSend(v3, "activePresentationController")) == 0 || (v5 = v4, v6 = objc_msgSend(v4, "shouldPresentInFullscreen"), v5, v6))
    {
    }

    else
    {
      v17 = sub_1004B6D48();

      if (v17)
      {
        return v17;
      }
    }
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v1)
  {
    v8 = [v1 childViewControllers];
    sub_1004B7AE8();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_29;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_30:

      return 0;
    }

    while (1)
    {
      while (__OFSUB__(v10--, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v12 = *(v9 + 32 + 8 * v10);
LABEL_20:
      v13 = v12;
      v14 = [v12 viewIfLoaded];
      v15 = [v14 window];

      if (v15)
      {

        v1 = sub_1004B6D48();
        if (v1)
        {

          return v1;
        }
      }

      else
      {
      }

      if (!v10)
      {
        goto LABEL_30;
      }
    }
  }

  v7 = v1;
  return v1;
}

uint64_t sub_1004B6FA4(void (*a1)(void), uint64_t (*a2)(void))
{
  v4 = v2;
  v5 = [v2 presentedViewController];
  if (v5)
  {
    v6 = v5;
    if (([v5 isBeingDismissed] & 1) != 0 || (v7 = objc_msgSend(v6, "activePresentationController")) == 0 || (v8 = v7, v9 = objc_msgSend(v7, "shouldPresentInFullscreen"), v8, v9))
    {
    }

    else
    {
      v11 = a2();

      if (v11)
      {
        return v11;
      }
    }
  }

  a1(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v13 = [v4 childViewControllers];
    sub_1004B7AE8();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      goto LABEL_28;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
LABEL_29:

      return 0;
    }

    while (1)
    {
      while (__OFSUB__(v15--, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (!v15)
        {
          goto LABEL_29;
        }
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_19;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v17 = *(v14 + 32 + 8 * v15);
LABEL_19:
      v18 = v17;
      v19 = [v17 viewIfLoaded];
      v20 = [v19 window];

      if (v20)
      {

        v11 = a2();
        if (v11)
        {

          return v11;
        }
      }

      else
      {
      }

      if (!v15)
      {
        goto LABEL_29;
      }
    }
  }

  v11 = v10;
  v12 = v4;
  return v11;
}

uint64_t sub_1004B71D4(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = [objc_allocWithZone(UIZoomTransitionOptions) init];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  aBlock[4] = sub_1004B750C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B7420;
  aBlock[3] = &unk_100A6F4A0;
  v7 = _Block_copy(aBlock);

  [v5 setInteractiveDismissShouldBegin:v7];
  _Block_release(v7);
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  v10 = v5;
  v11 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

  return v11;
}

uint64_t sub_1004B7420(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1004B7478(void *a1, uint64_t a2)
{
  if ([a1 willBegin])
  {
    swift_beginAccess();
    v3 = *(a2 + 16);
    if (v3)
    {

      v5 = v3(v4);
      sub_100004DF8(v3);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *sub_1004B7514(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 sourceViewController];
  v7 = sub_1004B6D48();
  v9 = v8;

  if (!v7)
  {
    return 0;
  }

  v10 = [a1 zoomedViewController];
  v11 = sub_1004B6B18();
  v13 = v12;

  if (v11)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 32))(ObjectType, v13);
    if (v15)
    {
      v16 = v15;
      v17 = (*((swift_isaMask & *v15) + 0xF8))();
      if (v17 || (v17 = (*(v13 + 40))(a2, ObjectType, v13)) != 0)
      {
        v18 = v17;
        v19 = (*(v13 + 8))(ObjectType, v13);
        if (v19)
        {
          v20 = v19;
          v21 = swift_getObjectType();
          v22 = (*(v9 + 8))(v18, v20, v21, v9);
          if (v22)
          {
            v23 = v22;
            v24 = swift_allocObject();
            *(v24 + 24) = v13;
            swift_unknownObjectWeakInit();
            swift_beginAccess();
            v25 = *(a3 + 16);
            *(a3 + 16) = sub_1004B7AE0;
            *(a3 + 24) = v24;

            sub_100004DF8(v25);

            type metadata accessor for JournalAssetView();
            v26 = v23;
            v27 = swift_dynamicCastClass();
            if (v27)
            {
              v28 = v27;
              v29 = *((swift_isaMask & *v16) + 0xC8);
              v42 = v23;
              v30 = v23;
              v29(v28, &off_100A774A8);
              v31 = *((swift_isaMask & *v28) + 0xC8);
              v40 = v16;
              v31(v16, &off_100A774A8);

              swift_unknownObjectRelease();

              return v42;
            }

            else
            {
              type metadata accessor for CanvasAssetView();
              v33 = swift_dynamicCastClass();
              if (v33 && (v34 = *(v33 + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView)) != 0)
              {
                v35 = *((swift_isaMask & *v16) + 0xC8);
                v36 = v34;
                v41 = v26;
                v37 = v36;
                v35(v34, &off_100A774A8);
                v38 = *((swift_isaMask & *v37) + 0xC8);
                v39 = v16;
                v38(v16, &off_100A774A8);

                swift_unknownObjectRelease();

                return v26;
              }

              else
              {

                swift_unknownObjectRelease();

                return v23;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          return 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();

        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

void *sub_1004B79C0(void *a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004B7514(a1, v1 + v4, v5);
}

uint64_t sub_1004B7A5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 48))(ObjectType, v4);

    v6 = v4 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

unint64_t sub_1004B7AE8()
{
  result = qword_100AD4C80;
  if (!qword_100AD4C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD4C80);
  }

  return result;
}

char *sub_1004B7C34(void *a1, void *a2, void *a3, double a4)
{
  v8 = OBJC_IVAR____TtC7Journal20UnsupportedAssetView_contentView;
  *&v4[v8] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC7Journal20UnsupportedAssetView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC7Journal20UnsupportedAssetView_asset] = a1;
  v64.receiver = v4;
  v64.super_class = type metadata accessor for UnsupportedAssetView();
  v61 = a1;
  v10 = objc_msgSendSuper2(&v64, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v62 = a3;
  [v10 setBackgroundColor:a3];
  v11 = OBJC_IVAR____TtC7Journal20UnsupportedAssetView_contentView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC7Journal20UnsupportedAssetView_contentView]];
  v12 = *&v10[v11];
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v12 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    if (v17)
    {
      [v17 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v17 = 0;
    v14 = v12;
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  }

  v19 = *&v10[v11];
  v20 = sub_100028DA0(0, 1, 0.0);

  v21 = *&v10[v11];
  v22 = [v21 p_ivar_lyt[467]];
  if (v22)
  {
    v23 = v22;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v21 leadingAnchor];
    v25 = [v23 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:0.0];
    if (v26)
    {
      [v26 setActive:1];
    }
  }

  else
  {
    v26 = 0;
    v23 = v21;
  }

  v27 = *&v10[v11];
  v28 = [v27 p_ivar_lyt[467]];
  if (v28)
  {
    v29 = v28;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v27 trailingAnchor];
    v31 = [v29 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:0.0];
    v33 = a2;
    if (v32)
    {
      [v32 setActive:1];
    }
  }

  else
  {
    v32 = 0;
    v29 = v27;
    v33 = a2;
  }

  v34 = OBJC_IVAR____TtC7Journal20UnsupportedAssetView_imageView;
  v35 = qword_100AD0A08;
  v36 = *&v10[OBJC_IVAR____TtC7Journal20UnsupportedAssetView_imageView];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_100B30EE0;
  if (qword_100B30EE0)
  {
    sub_1000F24EC(&unk_100AD4780);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100941D50;
    *(v38 + 32) = v33;
    sub_1000065A8(0, &qword_100AD4C70);
    v39 = v33;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v41 = [objc_opt_self() configurationWithPaletteColors:isa];

    v37 = [v37 imageWithConfiguration:v41];
  }

  [v36 setImage:v37];

  [*&v10[v34] setContentMode:1];
  [*&v10[v11] addSubview:*&v10[v34]];
  v42 = *&v10[v11];
  v43 = *&v10[v34];
  v44 = v42;
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [v43 centerXAnchor];
  v46 = [v44 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  [v47 setActive:1];
  v48 = *&v10[v11];
  v49 = *&v10[v34];
  v50 = v48;
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = [v49 centerYAnchor];
  v52 = [v50 centerYAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  [v53 setActive:1];
  v54 = *&v10[v34];
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  v55 = [v54 heightAnchor];
  v56 = [v55 constraintEqualToConstant:a4];

  [v56 setActive:1];
  v57 = *&v10[v34];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [v57 widthAnchor];
  v59 = [v58 constraintEqualToConstant:a4];

  [v59 setActive:1];
  v10[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;

  return v10;
}

void *sub_1004B84B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20UnsupportedAssetView_asset);
  v2 = v1;
  return v1;
}

void sub_1004B8514()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20UnsupportedAssetView_imageView);
}

id sub_1004B857C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004B8634()
{
  v1 = v0;
  v55 = type metadata accessor for UIContentUnavailableConfiguration();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v53 - v6;
  [v0 setUserInteractionEnabled:{0, v5}];
  v8 = [v0 layer];
  [v8 cornerRadii];
  v56 = v60;
  v57 = v61;
  __asm { FMOV            V1.2D, #12.0 }

  v53 = _Q1;
  v58 = v62;
  v59 = _Q1;
  [v8 setCornerRadii:&v56];

  v14 = [v1 layer];
  [v14 cornerRadii];
  v56 = v60;
  v57 = v61;
  v58 = v53;
  v59 = v63;
  [v14 setCornerRadii:&v56];

  v15 = v7;
  static UIContentUnavailableConfiguration.empty()();
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSForegroundColorAttributeName;
  v17 = objc_opt_self();
  v18 = NSForegroundColorAttributeName;
  v19 = [v17 secondaryLabelColor];
  v20 = sub_1000065A8(0, &qword_100AD4C70);
  *(inited + 40) = v19;
  *(inited + 64) = v20;
  *(inited + 72) = NSFontAttributeName;
  v21 = qword_100AD03D0;
  v22 = NSFontAttributeName;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_100B303C8;
  *(inited + 104) = sub_1000065A8(0, &qword_100AD2A78);
  *(inited + 80) = v23;
  v24 = v23;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210);
  swift_arrayDestroy();
  if (qword_100AD04D8 != -1)
  {
    swift_once();
  }

  v25 = objc_allocWithZone(NSAttributedString);
  v26 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1000806F8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v25 initWithString:v26 attributes:isa];

  UIContentUnavailableConfiguration.secondaryAttributedText.setter();
  v28 = [v17 clearColor];
  v29 = UIContentUnavailableConfiguration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v29(&v60, 0);
  if (qword_100AD0A08 != -1)
  {
    swift_once();
  }

  v30 = qword_100B30EE0;
  if (qword_100B30EE0)
  {
    sub_1000F24EC(&unk_100AD4780);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100941D50;
    if (qword_100AD0358 != -1)
    {
      swift_once();
    }

    v32 = qword_100B30350;
    *(v31 + 32) = qword_100B30350;
    v33 = v32;
    v34 = Array._bridgeToObjectiveC()().super.isa;

    v35 = [objc_opt_self() configurationWithPaletteColors:v34];

    v36 = [v30 imageWithConfiguration:v35];
  }

  v37 = v15;
  UIContentUnavailableConfiguration.image.setter();
  sub_1000065A8(0, &qword_100AE5CC8);
  v38 = v54;
  (*(v54 + 16))(v3, v37, v55);
  v39 = UIContentUnavailableView.init(configuration:)();
  [v1 addSubview:v39];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v39 topAnchor];
  v41 = [v1 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:0.0];

  [v42 setActive:1];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [v39 bottomAnchor];
  v44 = [v1 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:0.0];

  [v45 setActive:1];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v39 leadingAnchor];
  v47 = [v1 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setConstant:0.0];
  [v48 setActive:1];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = [v39 trailingAnchor];
  v50 = [v1 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  [v51 setConstant:0.0];
  [v51 setActive:1];

  return (*(v38 + 8))(v37, v55);
}

uint64_t sub_1004B8E1C()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1006ABED4(v5);
  v9 = type metadata accessor for PhotoLibraryAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD5B20;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  PhotoLibraryAssetMetadata.date.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

uint64_t sub_1004B910C()
{
  v0 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1006ABED4(&v7 - v1);
  v3 = type metadata accessor for PhotoLibraryAssetMetadata();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100004F84(v2, &qword_100AD5B20);
    return 0;
  }

  else
  {
    v6 = PhotoLibraryAssetMetadata.placeName.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_1004B9244()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE5CD0);
  v1 = sub_10000617C(v0, qword_100AE5CD0);
  if (qword_100AD0240 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004B930C()
{
  v0 = type metadata accessor for MusicPlayerManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  qword_100B2F9E8 = result;
  return result;
}

id sub_1004B936C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1004B93C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_1004B93E4, v2, 0);
}

uint64_t sub_1004B93E4()
{
  v1 = sub_1004B9AA4();
  v2 = [v1 nowPlayingItem];

  if (!v2)
  {
    goto LABEL_11;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = [v2 playbackStoreID];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[2] = v6;
  v0[3] = v8;
  if (String.init<A>(_:)() == v4 && v9 == v3)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [*(v0[6] + 112) currentPlaybackRate];
  if (v12 > 0.0)
  {
    v13 = 1;
    goto LABEL_12;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1004B9534(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return _swift_task_switch(sub_1004B9558, v2, 0);
}

uint64_t sub_1004B9558()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_1004B9AA4();
  sub_1000F24EC(&unk_100AD9A60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setQueueWithStoreIDs:isa];

  v7 = *(v1 + 112);
  v0[21] = v7;
  v0[2] = v0;
  v0[3] = sub_1004B9704;
  v8 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&unk_100AE1D70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003C2474;
  v0[13] = &unk_100A6F530;
  v0[14] = v8;
  [v7 prepareToPlayWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004B9704()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1004B9894;
  }

  else
  {
    v4 = sub_1004B9824;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004B9824()
{
  v1 = *(v0 + 160);

  [*(v1 + 112) play];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004B9894()
{
  v14 = v0;
  v1 = v0[21];
  swift_willThrow();

  if (qword_100ACFE38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE5CD0);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100008458(v6, v5, &v13);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to begin playback {itemID: %s, error: %@}", v7, 0x16u);
    sub_10012B714(v8);

    sub_10000BA7C(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

id sub_1004B9AA4()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = [objc_opt_self() systemMusicPlayer];
    v4 = *(v0 + 112);
    *(v0 + 112) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1004B9B60()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004B9C04()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for JournalSearchViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC7Journal27JournalSearchViewController_resultsViewController];
  *&v0[OBJC_IVAR____TtC7Journal23JournalSearchController_searchDelegate + 8] = &off_100A72F58;
  swift_unknownObjectWeakAssign();
  v2 = [v0 searchBar];
  [v2 setTranslucent:0];

  v3 = [v0 searchBar];
  [v3 directionalLayoutMargins];
  [v3 setDirectionalLayoutMargins:?];

  v4 = [v0 searchBar];
  [v4 directionalLayoutMargins];
  [v4 setDirectionalLayoutMargins:?];

  *(v1 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate + 8) = &off_100A6F578;
  return swift_unknownObjectWeakAssign();
}

id sub_1004B9D8C()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for JournalSearchViewController();
  objc_msgSendSuper2(&v20, "viewDidLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [v0 searchBar];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    MaxY = CGRectGetMaxY(v21);
    v13 = [v0 searchBar];
    [v2 convertPoint:v13 fromCoordinateSpace:{0.0, MaxY}];
    v15 = v14;

    v16 = *&v0[OBJC_IVAR____TtC7Journal27JournalSearchViewController_resultsViewController];
    result = [v0 view];
    if (result)
    {
      v17 = result;
      [result safeAreaInsets];
      v19 = v18;

      [v16 additionalSafeAreaInsets];
      return [v16 setAdditionalSafeAreaInsets:v15 - v19];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1004B9FC4(uint64_t a1, uint64_t a2)
{
  result = [v2 presentingViewController];
  if (result)
  {
    v6 = result;
    sub_10005D974(a2, v14);
    v7 = v15;
    if (v15)
    {
      v8 = sub_10000CA14(v14, v15);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      sub_10000BA7C(v14);
    }

    else
    {
      v13 = 0;
    }

    [v6 showViewController:a1 sender:v13];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004BA224()
{
}

id sub_1004BA264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalSearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004BA308()
{
  v1 = [v0 searchBar];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

void sub_1004BA394()
{
  v1 = [v0 searchBar];
  [v1 resignFirstResponder];
}

char *sub_1004BA418(uint64_t a1)
{
  v54 = a1;
  v2 = type metadata accessor for URL();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000F24EC(&qword_100ADFA80);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = &v1[OBJC_IVAR____TtC7Journal13CloudKitStack_pendingSyncEngineStateTokenMutex];
  v14 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  *v13 = 0;
  v15 = v1;
  v16 = *(sub_1000F24EC(&qword_100AE5DD0) + 28);
  v17 = sub_1000F24EC(&qword_100AE5DD8);
  bzero(&v13[v16], *(*(v17 - 8) + 64));
  sub_100021CEC(v12, &v13[v16], &qword_100ADFA80);
  v18 = OBJC_IVAR____TtC7Journal13CloudKitStack_pathMonitorQueue;
  sub_1000065A8(0, &qword_100AD6210);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  v19 = v54;
  *&v15[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = OBJC_IVAR____TtC7Journal13CloudKitStack_pathMonitor;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *&v15[v20] = NWPathMonitor.init()();
  v21 = CloudKitStackConfiguration.createContainer(options:)();
  v22 = OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer;
  *&v15[OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer] = v21;
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000617C(v23, qword_100AE5D50);
  v24 = v15;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [*&v15[v22] containerID];

    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating CloudKit container %@", v27, 0xCu);
    sub_100004F84(v28, &unk_100AD4BB0);
  }

  else
  {

    v25 = v24;
  }

  type metadata accessor for AssetsFileManager();
  v30 = v55;
  sub_10001DE18(v55);
  v31 = objc_allocWithZone(CKAssetDownloadStagingManager);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v35 = [v31 initWithDirectory:v33];

  (*(v56 + 8))(v30, v57);
  v36 = OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadStagingManager;
  *(&v24->isa + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadStagingManager) = v35;
  v37 = v35;
  v38 = CloudKitStackConfiguration.storeFileProtectionType.getter();
  [(objc_class *)v37 setFileProtectionType:v38];

  [*(&v24->isa + v36) setKeepInflightFilesOpen:1];
  v39 = [objc_allocWithZone(CKOperationConfiguration) init];
  *(&v24->isa + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig) = v39;
  [(objc_class *)v39 setAssetDownloadStagingManager:*(&v24->isa + v36)];
  v40 = type metadata accessor for CloudKitStack();
  v58.receiver = v24;
  v58.super_class = v40;
  v41 = objc_msgSendSuper2(&v58, "init");
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 defaultCenter];
  if (qword_100AD0080 != -1)
  {
    swift_once();
  }

  [v44 addObserver:v43 selector:v54 name:? object:?];

  sub_100021E80(sub_1004BAC18);
  NWPathMonitor.pathUpdateHandler.setter();

  v45 = *&v43[OBJC_IVAR____TtC7Journal13CloudKitStack_pathMonitorQueue];

  v46 = v45;
  NWPathMonitor.start(queue:)();

  if (qword_100AD0AE0 != -1)
  {
    swift_once();
  }

  v47 = qword_100AF2118;
  v48 = *(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_assetMetadataQueue);
  v49 = String._bridgeToObjectiveC()();
  [v48 addObserver:v43 forKeyPath:v49 options:0 context:0];

  v50 = *(v47 + OBJC_IVAR____TtC7Journal17OperationsManager_fileAttachmentsQueue);
  v51 = String._bridgeToObjectiveC()();
  [v50 addObserver:v43 forKeyPath:v51 options:0 context:0];

  v52 = type metadata accessor for CloudKitStackConfiguration();
  (*(*(v52 - 8) + 8))(v19, v52);
  return v43;
}

void sub_1004BAC18()
{
  v0 = type metadata accessor for NWPath.Status();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  NWPath.status.getter();
  (*(v1 + 104))(v4, enum case for NWPath.Status.unsatisfied(_:), v0);
  sub_100022924(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    v9 = [objc_opt_self() defaultCenter];
    if (qword_100ACFF98 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_100B2FB88 object:0];
  }
}

id sub_1004BAE08()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = qword_100AD0AE0;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100AF2118;
  v5 = *(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_assetMetadataQueue);
  v6 = String._bridgeToObjectiveC()();
  [v5 removeObserver:v3 forKeyPath:v6];

  v7 = *(v4 + OBJC_IVAR____TtC7Journal17OperationsManager_fileAttachmentsQueue);
  v8 = String._bridgeToObjectiveC()();
  [v7 removeObserver:v3 forKeyPath:v8];

  v10.receiver = v3;
  v10.super_class = type metadata accessor for CloudKitStack();
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_1004BB254@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v5 = sub_1000F24EC(&qword_100AD1420);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v63 = (&v53 - v10);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = type metadata accessor for UUID();
  v66 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v16;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v17 = *(qword_100B2F9E0 + 16);
    a2 = (a2)(a1);

    a1 = a2 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = v13;
    if (!a1)
    {
      break;
    }

    v18 = 0;
    v61 = a2 & 0xC000000000000001;
    v59 = v8;
    v60 = a2 & 0xFFFFFFFFFFFFFF8;
    v57 = (v66 + 48);
    v58 = (v66 + 56);
    v65 = _swiftEmptyArrayStorage;
    v55 = a1;
    v56 = (v66 + 32);
    v8 = &qword_100AD1420;
    v54 = a2;
    while (v61)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_32;
      }

LABEL_11:
      v21 = v8;
      v22 = v19;
      v23 = [v22 id];
      if (v23)
      {
        v24 = v23;
        v25 = v59;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
      }

      else
      {
        v26 = 1;
        v25 = v59;
      }

      (*v58)(v25, v26, 1, v13);
      v27 = v25;
      v28 = v63;
      v8 = v21;
      sub_100021CEC(v27, v63, v21);
      sub_100021CEC(v28, v12, v21);

      if ((*v57)(v12, 1, v13) == 1)
      {
        sub_100004F84(v12, v21);
      }

      else
      {
        v29 = *v56;
        (*v56)(v62, v12, v13);
        v30 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100055CEC(0, v30[2] + 1, 1, v30);
        }

        v31 = v30;
        v32 = v30[2];
        v65 = v31;
        v33 = v31[3];
        if (v32 >= v33 >> 1)
        {
          v65 = sub_100055CEC(v33 > 1, v32 + 1, 1, v65);
        }

        v35 = v65;
        v34 = v66;
        v65[2] = v32 + 1;
        v36 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32;
        v13 = v67;
        v29(v36, v62, v67);
      }

      a2 = v54;
      a1 = v55;
      ++v18;
      if (v20 == v55)
      {
        goto LABEL_24;
      }
    }

    if (v18 >= *(v60 + 16))
    {
      goto LABEL_33;
    }

    v19 = *(a2 + 8 * v18 + 32);
    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_11;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v65 = _swiftEmptyArrayStorage;
LABEL_24:

  v37 = v65[2];
  if (v37)
  {
    v68 = _swiftEmptyArrayStorage;
    v38 = v65;
    sub_1001999C0(0, v37, 0);
    v39 = v67;
    v40 = v68;
    v41 = *(v66 + 16);
    v42 = v38 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v62 = *(v66 + 72);
    v63 = v41;
    v66 += 16;
    v43 = (v66 - 8);
    do
    {
      v44 = v64;
      (v63)(v64, v42, v39);
      sub_100022924(&qword_100AE19B0, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v67;
      v46 = v45;
      v48 = v47;
      (*v43)(v44, v67);
      v68 = v40;
      v50 = v40[2];
      v49 = v40[3];
      if (v50 >= v49 >> 1)
      {
        sub_1001999C0((v49 > 1), v50 + 1, 1);
        v39 = v67;
        v40 = v68;
      }

      v40[2] = v50 + 1;
      v51 = &v40[2 * v50];
      v51[4] = v46;
      v51[5] = v48;
      v42 = &v62[v42];
      --v37;
    }

    while (v37);
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  *v53 = v40;
  return result;
}

void sub_1004BB820(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for CancellationError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(a1 + 24))
  {
    v12 = *(a1 + 16);
    aBlock[0] = v11;
    swift_errorRetain();
    sub_1000F24EC(&qword_100AD5BC0);
    swift_willThrowTypedImpl();
    aBlock[0] = v11;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      sub_1004C2590(v11, v10, v12, 1);
      (*(v7 + 8))(v9, v6);
    }

    else
    {

      if (qword_100ACFE48 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000617C(v17, qword_100AE5D50);
      sub_1004C2544(v11, v10, v12, 1);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      sub_1004C2590(v11, v10, v12, 1);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v20 = 136315394;
        *(v20 + 4) = sub_100008458(a2, a3, aBlock);
        *(v20 + 12) = 2112;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v23;
        *v21 = v23;
        _os_log_impl(&_mh_execute_header, v18, v19, "Error downloading data for JournalEntryAssetMO with id: %s. Error: %@", v20, 0x16u);
        sub_100004F84(v21, &unk_100AD4BB0);

        sub_10000BA7C(v22);

        sub_1004C2590(v11, v10, v12, 1);
      }

      else
      {

        sub_1004C2590(v11, v10, v12, 1);
      }
    }
  }

  else
  {
    sub_100049ED8(*a1, *(a1 + 8));
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v13 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = v13;
    v14[5] = v11;
    v14[6] = v10;
    aBlock[4] = sub_1004C25DC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6F6E8;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    sub_100049ED8(v11, v10);

    [v16 performBlock:v15];
    sub_1000340DC(v11, v10);

    _Block_release(v15);
  }
}

void sub_1004BBC8C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v143 = a4;
  v144 = a5;
  v142 = a3;
  v7 = type metadata accessor for ByteCountFormatStyle.Units();
  v139 = *(v7 - 8);
  v140 = v7;
  __chkstk_darwin(v7);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ByteCountFormatStyle.Style();
  v138 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ByteCountFormatStyle();
  v137 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntryAssetMO();
  sub_1000F24EC(&unk_100AD9A60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100940080;
  v141 = a1;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  sub_100022924(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
  v17 = a2;

  v18 = static Identifiable<>.fetch(ids:context:)();
  v23 = v13;
  v132 = v12;
  v133 = v9;
  v134 = v10;
  v135 = v15;
  v24 = v18;

  v25 = v24 >> 62;
  if (v24 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v143;
  v28 = v17;
  v145 = v24;
  v131 = v23;
  if (v26 < 2)
  {
    goto LABEL_39;
  }

  if (qword_100ACFE48 != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v29 = type metadata accessor for Logger();
    sub_10000617C(v29, qword_100AE5D50);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v130 = v30;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v147[0] = v126;
      *v32 = 134218498;
      v33 = v25 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v127 = v31;
      *(v32 + 4) = v33;

      *(v32 + 12) = 2080;
      v35 = v24 & 0xFFFFFFFFFFFFFF8;
      v36 = v25 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v128 = v32;
      if (v36)
      {
        v37 = 0;
        v38 = v24 & 0xC000000000000001;
        v129 = _swiftEmptyArrayStorage;
        v39 = &selRef_setRegion_;
        do
        {
          v40 = v37;
          while (1)
          {
            if (v38)
            {
              v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v37 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_98;
              }
            }

            else
            {
              if (v40 >= *(v35 + 16))
              {
                goto LABEL_99;
              }

              v41 = *(v24 + 8 * v40 + 32);
              v37 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
                swift_once();
                v19 = type metadata accessor for Logger();
                sub_10000617C(v19, qword_100AE5D50);

                v145 = Logger.logObject.getter();
                v20 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v145, v20))
                {
                  v21 = swift_slowAlloc();
                  v22 = swift_slowAlloc();
                  v147[0] = v22;
                  *v21 = 136315138;
                  *(v21 + 4) = sub_100008458(v141, v39, v147);
                  _os_log_impl(&_mh_execute_header, v145, v20, "Failed to re-fetch assetMO with id: %s", v21, 0xCu);
                  sub_10000BA7C(v22);
                }

                else
                {
                  v34 = v145;
                }

                return;
              }
            }

            v42 = v41;
            v43 = [v42 assetType];
            if (v43)
            {
              break;
            }

            ++v40;
            v24 = v145;
            if (v37 == v36)
            {
              goto LABEL_38;
            }
          }

          v44 = v43;
          v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v45;

          v46 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_10009BCC8(0, *(v129 + 2) + 1, 1, v129);
          }

          v24 = v145;
          v48 = *(v129 + 2);
          v47 = *(v129 + 3);
          if (v48 >= v47 >> 1)
          {
            v129 = sub_10009BCC8((v47 > 1), v48 + 1, 1, v129);
          }

          v49 = v129;
          *(v129 + 2) = v48 + 1;
          v50 = &v49[16 * v48];
          v51 = v124;
          *(v50 + 4) = v125;
          *(v50 + 5) = v51;
          v25 = v46;
        }

        while (v37 != v36);
      }

      else
      {
        v129 = _swiftEmptyArrayStorage;
      }

LABEL_38:
      sub_100891094(v129);

      v52 = Set.description.getter();
      v54 = v53;

      v55 = sub_100008458(v52, v54, v147);

      v56 = v128;
      *(&v128[1].isa + 6) = v55;
      HIWORD(v56[2].isa) = 2080;
      v56[3].isa = sub_100008458(v141, v28, v147);
      v57 = v130;
      _os_log_impl(&_mh_execute_header, v130, v127, "Found %ld %s assets with same id: %s. Updating the metadata for all non-nil values to prevent infinite loop.", v56, 0x20u);
      swift_arrayDestroy();

      v27 = v143;
    }

    else
    {
    }

LABEL_39:
    v136 = v28;
    if (v25)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
      if (!v58)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v58 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_53;
      }
    }

    if (v58 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_102:
    swift_once();
  }

  v59 = 0;
  v60 = v24 & 0xC000000000000001;
  do
  {
    if (v60)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v62 = *(v24 + 8 * v59 + 32);
    }

    v63 = v62;
    v64 = [v62 assetMetaData];
    if (!v64 || (v65 = v64, v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v68 = v67, v65, v69 = v66, v27 = v143, v70 = v68, v24 = v145, sub_1000340DC(v69, v70), [v63 refreshAssetMetadata]))
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v63 setAssetMetaData:isa];

      [v63 setRefreshAssetMetadata:0];
    }

    ++v59;
  }

  while (v58 != v59);
LABEL_53:
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  v72 = sub_10000617C(v71, qword_100AE5D50);
  v73 = v136;

  v74 = v144;
  sub_100049ED8(v27, v144);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  sub_1000340DC(v27, v74);
  if (os_log_type_enabled(v75, v76))
  {
    v127 = v76;
    v128 = v75;
    v129 = v72;
    v77 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v148 = v126;
    v130 = v77;
    LODWORD(v77->isa) = 136315650;
    if (v58)
    {
      v78 = 0;
      v79 = v24 & 0xC000000000000001;
      v39 = (v24 & 0xFFFFFFFFFFFFFF8);
      v80 = _swiftEmptyArrayStorage;
      do
      {
        v81 = v78;
        while (1)
        {
          if (v79)
          {
            v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v78 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (v81 >= v39[2])
            {
              goto LABEL_97;
            }

            v82 = v145[v81 + 4].isa;
            v78 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          v83 = v82;
          v84 = [(objc_class *)v83 assetType];
          if (v84)
          {
            break;
          }

          ++v81;
          if (v78 == v58)
          {
            goto LABEL_76;
          }
        }

        v85 = v84;
        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v87;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_10009BCC8(0, *(v80 + 2) + 1, 1, v80);
        }

        v89 = *(v80 + 2);
        v88 = *(v80 + 3);
        if (v89 >= v88 >> 1)
        {
          v80 = sub_10009BCC8((v88 > 1), v89 + 1, 1, v80);
        }

        *(v80 + 2) = v89 + 1;
        v90 = &v80[16 * v89];
        v91 = v125;
        *(v90 + 4) = v86;
        *(v90 + 5) = v91;
      }

      while (v78 != v58);
    }

    else
    {
      v80 = _swiftEmptyArrayStorage;
    }

LABEL_76:

    sub_100891094(v80);

    v93 = Set.description.getter();
    v95 = v94;

    v96 = sub_100008458(v93, v95, &v148);

    v97 = v130;
    *(&v130->isa + 4) = v96;
    WORD2(v97[1].isa) = 2080;
    v92 = v141;
    v73 = v136;
    *(&v97[1].isa + 6) = sub_100008458(v141, v136, &v148);
    HIWORD(v97[2].isa) = 2080;
    v98 = v74 >> 62;
    if ((v74 >> 62) > 1)
    {
      v100 = v139;
      v99 = v140;
      v101 = v134;
      v102 = v135;
      v103 = v133;
      v104 = v138;
      v105 = v132;
      if (v98 != 2)
      {
        v106 = 0;
        goto LABEL_86;
      }

      v108 = *(v143 + 16);
      v107 = *(v143 + 24);
      v109 = __OFSUB__(v107, v108);
      v106 = v107 - v108;
      if (!v109)
      {
        goto LABEL_86;
      }

      __break(1u);
    }

    else
    {
      v100 = v139;
      v99 = v140;
      v101 = v134;
      v102 = v135;
      v103 = v133;
      v104 = v138;
      v105 = v132;
      if (!v98)
      {
        v106 = BYTE6(v144);
LABEL_86:
        v146 = v106;
        (*(v104 + 104))(v105, enum case for ByteCountFormatStyle.Style.memory(_:), v101);
        static ByteCountFormatStyle.Units.all.getter();
        static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
        (*(v100 + 8))(v103, v99);
        (*(v104 + 8))(v105, v101);
        sub_1000F6568();
        sub_100022924(&qword_100ADAD40, &type metadata accessor for ByteCountFormatStyle);
        sub_10026D574();
        v110 = v131;
        BinaryInteger.formatted<A>(_:)();
        (*(v137 + 8))(v102, v110);
        v111 = sub_100008458(v147[0], v147[1], &v148);

        v97[3].isa = v111;
        v112 = v128;
        _os_log_impl(&_mh_execute_header, v128, v127, "Completed assetMetaData download for %s asset with id %s. Size: %s", v97, 0x20u);
        swift_arrayDestroy();

        goto LABEL_87;
      }
    }

    LODWORD(v106) = HIDWORD(v143) - v143;
    if (__OFSUB__(HIDWORD(v143), v143))
    {
      __break(1u);
    }

    v106 = v106;
    goto LABEL_86;
  }

  v92 = v141;
LABEL_87:
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_100286DEC(&v148, v92, v73);
  swift_endAccess();

  v147[0] = 0;
  if ([v142 save:v147])
  {
    v113 = v147[0];
    if (!sub_1007CEB64())
    {
      sub_1004C042C();
    }
  }

  else
  {
    v114 = v147[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = v73;
      v121 = v119;
      v147[0] = v119;
      *v117 = 136315394;
      *(v117 + 4) = sub_100008458(v92, v120, v147);
      *(v117 + 12) = 2112;
      swift_errorRetain();
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v117 + 14) = v122;
      *v118 = v122;
      _os_log_impl(&_mh_execute_header, v115, v116, "Unable to save downloaded data for assetID %s: %@", v117, 0x16u);
      sub_100004F84(v118, &unk_100AD4BB0);

      sub_10000BA7C(v121);
    }

    else
    {
    }
  }
}

void sub_1004BCCE0(id a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v3 = type metadata accessor for CancellationError();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE5DF0);
  __chkstk_darwin(v6);
  v8 = (&v39 - v7);
  v9 = sub_1000F24EC(&qword_100AE5DF8);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  sub_1000082B4(v44, v8, &qword_100AE5DF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    aBlock[0] = *v8;
    v19 = aBlock[0];
    sub_1000F24EC(&qword_100AD5BC0);
    swift_willThrowTypedImpl();
    aBlock[0] = v19;
    swift_errorRetain();
    v20 = v41;
    if (swift_dynamicCast())
    {

      (*(v40 + 8))(v5, v20);
    }

    else
    {

      if (qword_100ACFE48 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000617C(v31, qword_100AE5D50);
      v32 = v43;

      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v35 = 136315394;
        *(v35 + 4) = sub_100008458(v42, v32, aBlock);
        *(v35 + 12) = 2112;
        swift_errorRetain();
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v38;
        *v36 = v38;
        _os_log_impl(&_mh_execute_header, v33, v34, "Error downloading attachment for JournalEntryAssetFileAttachmentMO with id: %s. Error: %@", v35, 0x16u);
        sub_100004F84(v36, &unk_100AD4BB0);

        sub_10000BA7C(v37);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100021CEC(v8, v11, &qword_100AE5DF8);
    v21 = *&v11[*(v9 + 48)];
    v41 = *(v13 + 32);
    v41(v18, v11, v12);
    v22 = qword_100ACFE28;
    v44 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    (*(v13 + 16))(v16, v18, v12);
    v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = v43;
    v26[2] = v42;
    v26[3] = v27;
    v26[4] = v23;
    v41(v26 + v24, v16, v12);
    v28 = v44;
    *(v26 + v25) = v44;
    aBlock[4] = sub_1004C12C0;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6F698;
    v29 = _Block_copy(aBlock);
    v30 = v23;

    [v30 performBlock:v29];
    _Block_release(v29);

    (*(v13 + 8))(v18, v12);
  }
}

void sub_1004BD318(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  sub_1000F24EC(&unk_100AD9A60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  v50 = a1;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_100022924(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);

  v48 = a4;
  v11 = static Identifiable<>.fetch(ids:context:)();

  v12 = v11;
  v13 = v11 >> 62;
  v47 = v12;
  if (v13)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_7;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_7;
  }

  if (qword_100ACFE48 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AE5D50);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100008458(v50, a2, v52);
      _os_log_impl(&_mh_execute_header, v15, v16, "Found multiple attachments with same id: %s. Updating the filePaths for all non-nil values to prevent infinite loop.", v17, 0xCu);
      sub_10000BA7C(v18);
    }

LABEL_7:
    v46 = a3;
    if (v13)
    {
      v13 = v47;
      v19 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v48;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = v47;
      v19 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a3 = v48;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    if (v19 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v20 = 0;
  v21 = v13 & 0xC000000000000001;
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  oslog = v19;
  do
  {
    if (v21)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v13 + 8 * v20 + 32);
    }

    v25 = v24;
    v26 = [v24 p_ivar_lyt[373]];
    if (v26)
    {
      v23 = v26;
    }

    else
    {
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v27 = *(qword_100B2F9E0 + 16);
      v28 = sub_1007577C0(a3, a5, v25);

      if (qword_100ACFE48 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000617C(v29, qword_100AE5D50);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = a5;
        v33 = a2;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v52[0] = v35;
        *v34 = 136446466;
        *(v34 + 4) = sub_100008458(v50, v33, v52);
        *(v34 + 12) = 1024;
        *(v34 + 14) = v28 & 1;
        _os_log_impl(&_mh_execute_header, v30, v31, "Downloaded attachment for JournalEntryAssetFileAttachmentMO %{public}s: %{BOOL}d", v34, 0x12u);
        sub_10000BA7C(v35);
        a3 = v48;

        a2 = v33;
        a5 = v32;
        v13 = v47;
      }

      v19 = oslog;
      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    }

    ++v20;
  }

  while (v19 != v20);
LABEL_26:

  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_100286DEC(&v51, v50, a2);
  swift_endAccess();

  v52[0] = 0;
  if ([v46 save:v52])
  {
    sub_1004C042C(v52[0]);
  }

  else
  {
    v36 = v52[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE48 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000617C(v37, qword_100AE5D50);

    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = a2;
      v44 = v42;
      v52[0] = v42;
      *v40 = 136315394;
      *(v40 + 4) = sub_100008458(v50, v43, v52);
      *(v40 + 12) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v45;
      *v41 = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to save downloaded data for attachmentMO with id: %s, error: %@", v40, 0x16u);
      sub_100004F84(v41, &unk_100AD4BB0);

      sub_10000BA7C(v44);
    }

    else
    {
    }
  }
}

uint64_t sub_1004BDBB4()
{
  v12 = v0;
  swift_willThrow();
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE5D50);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100008458(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error getting iCloud status: %s", v4, 0xCu);
    sub_10000BA7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_1004BDD80(uint64_t a1)
{
  v2[23] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[24] = v3;
  v2[25] = v5;

  return _swift_task_switch(sub_1004BDE10, v3, v5);
}

uint64_t sub_1004BDE10()
{
  v1 = *(v0[23] + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1004BDF38;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AE5E38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039677C;
  v0[13] = &unk_100A6F710;
  v0[14] = v2;
  [v1 fetchUserRecordIDWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BDF38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1004BE104;
  }

  else
  {
    v5 = sub_1004BE068;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BE068()
{
  v1 = *(v0 + 168);
  v2 = [v1 recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1004BE104()
{
  v12 = v0;
  swift_willThrow();
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE5D50);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100008458(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching iCloud user %s", v4, 0xCu);
    sub_10000BA7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0, 0);
}

uint64_t sub_1004BE2D4(uint64_t a1)
{
  v2[4] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[5] = v3;
  v2[6] = v5;

  return _swift_task_switch(sub_1004BE364, v3, v5);
}

uint64_t sub_1004BE364()
{
  v1 = static CloudKitStackConfiguration.zone.getter();
  v0[7] = v1;
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[8] = sub_10000617C(v2, qword_100AE5D50);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Creating CloudKit zone %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  v9 = v0[4];

  v0[9] = [*(v9 + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer) privateCloudDatabase];
  sub_1000F24EC(&unk_100AD4780);
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = xmmword_100941D50;
  *(v10 + 32) = v3;
  v11 = v3;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1004BE59C;

  return CKDatabase.modifyRecordZones(saving:deleting:)(v10, _swiftEmptyArrayStorage);
}

uint64_t sub_1004BE59C(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = sub_1004BE9F0;
  }

  else
  {
    v7 = v3[9];

    v4 = v3[5];
    v5 = v3[6];
    v6 = sub_1004BE6D4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1004BE6D4()
{
  v31 = v0;
  v1 = *(v0 + 96);
  v2 = [*(v0 + 56) zoneID];
  v3 = v2;
  if (*(v1 + 16) && (v4 = sub_100362608(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v0 + 96) + 56) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_1000E61A4(*v6, *(v6 + 8));

    if (v8 == 1)
    {
      v9 = *(v0 + 56);
      swift_willThrow();

      v10 = *(v0 + 8);
      goto LABEL_9;
    }

    v17 = *(v0 + 56);
    sub_1000E61A4(v7, 0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    sub_1000E61B0(v7, 0);
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v22 = 138412546;
      v25 = [v21 zoneID];
      *(v22 + 4) = v25;
      *v23 = v25;
      *(v22 + 12) = 2080;
      *(v0 + 16) = v7;
      *(v0 + 24) = 0;
      v26 = v7;
      sub_1000F24EC(&qword_100AE5E30);
      v27 = String.init<A>(describing:)();
      v29 = sub_100008458(v27, v28, &v30);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully created zone %@: %s", v22, 0x16u);
      sub_100004F84(v23, &unk_100AD4BB0);

      sub_10000BA7C(v24);
    }

    else
    {
    }

    sub_1000E61B0(v7, 0);
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 56);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Couldn't find save results for zone creation. Should probably throw an error", v15, 2u);
    }
  }

  v10 = *(v0 + 8);
LABEL_9:

  return v10();
}

uint64_t sub_1004BE9F0()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004BEA60(uint64_t a1)
{
  v2[4] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[5] = v3;
  v2[6] = v5;

  return _swift_task_switch(sub_1004BEAF0, v3, v5);
}

uint64_t sub_1004BEAF0()
{
  v1 = static CloudKitStackConfiguration.zone.getter();
  v2 = [v1 zoneID];
  v0[7] = v2;

  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[8] = sub_10000617C(v3, qword_100AE5D50);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Deleting encrypted zone %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  v10 = v0[4];

  v0[9] = [*(v10 + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer) privateCloudDatabase];
  sub_1000F24EC(&unk_100AD4780);
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = xmmword_100941D50;
  *(v11 + 32) = v4;
  v12 = v4;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1004BED48;

  return CKDatabase.modifyRecordZones(saving:deleting:)(_swiftEmptyArrayStorage, v11);
}

uint64_t sub_1004BED48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1004C2620;
  }

  else
  {
    v8 = v4[9];

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1004BEE80;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1004BEE80()
{
  v25 = v0;
  if (*(*(v0 + 96) + 16))
  {
    v1 = sub_100362608(*(v0 + 56));
    if (v2)
    {
      v3 = *(*(v0 + 96) + 56) + 16 * v1;
      v4 = *v3;
      v5 = *(v3 + 8);
      sub_1004C25EC(*v3, *(v3 + 8));

      if (v5 == 1)
      {
        v6 = *(v0 + 56);
        swift_willThrow();

        v7 = *(v0 + 8);
        goto LABEL_10;
      }

      v14 = *(v0 + 56);
      v8 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      v16 = os_log_type_enabled(v8, v15);
      v17 = *(v0 + 56);
      if (!v16)
      {

        goto LABEL_9;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v18 = 138412546;
      *(v18 + 4) = v17;
      *v19 = v17;
      *(v18 + 12) = 2080;
      *(v0 + 16) = v4;
      *(v0 + 24) = 0;
      v11 = v17;
      sub_1000F24EC(&qword_100AE5E28);
      v21 = String.init<A>(describing:)();
      v23 = sub_100008458(v21, v22, &v24);

      *(v18 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v8, v15, "Successfully deleted zone %@: %s", v18, 0x16u);
      sub_100004F84(v19, &unk_100AD4BB0);

      sub_10000BA7C(v20);

      goto LABEL_7;
    }
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 56);
  if (v10)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Couldn't find delete results for zone deletion. Should probably throw an error", v12, 2u);
LABEL_7:
  }

LABEL_9:
  v7 = *(v0 + 8);
LABEL_10:

  return v7();
}

uint64_t sub_1004BF130(uint64_t a1)
{
  v2[5] = v1;
  v4 = type metadata accessor for Date();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for Calendar.Component();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for Calendar();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v2[15] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v2[16] = v7;
  v2[17] = v9;

  return _swift_task_switch(sub_1004BF31C, v7, v9);
}

uint64_t sub_1004BF31C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v28 = *(v0 + 120);
  v29 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  static Calendar.current.getter();
  (*(v3 + 104))(v4, enum case for Calendar.Component.day(_:), v5);
  static Date.now.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v9 = v6;
  v10 = *(v7 + 8);
  v10(v9, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v1, v29);
  v11 = (*(v7 + 48))(v28, 1, v8);
  v12 = *(v0 + 120);
  if (v11 == 1)
  {
    sub_100004F84(*(v0 + 120), &unk_100AD4790);
    isa = [objc_opt_self() distantPast];
    if (isa)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = *(v0 + 48);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10(v12, v14);
LABEL_5:
  *(v0 + 144) = isa;
  v15 = *(v0 + 40);
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100940080;
  *(v16 + 56) = sub_1000065A8(0, &unk_100AE5E10);
  *(v16 + 64) = sub_10011949C();
  *(v16 + 32) = isa;
  v17 = isa;
  v18 = NSPredicate.init(format:_:)();
  *(v0 + 152) = v18;
  sub_1000065A8(0, &qword_100AE5E20);
  v19 = v18;
  v20._object = 0x80000001008F70D0;
  v20._countAndFlagsBits = 0xD000000000000014;
  v21.super.isa = CKQuery.init(recordType:predicate:)(v20, v19).super.isa;
  *(v0 + 160) = v21;
  v22 = objc_allocWithZone(CKRecordZone);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithZoneName:v23];
  *(v0 + 168) = v24;

  *(v0 + 176) = [*(v15 + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer) privateCloudDatabase];
  v25 = [v24 zoneID];
  *(v0 + 184) = v25;
  v26 = swift_task_alloc();
  *(v0 + 192) = v26;
  *v26 = v0;
  v26[1] = sub_1004BF6D4;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v21.super.isa, v25, &off_100A58BF8, CKQueryOperationMaximumResults);
}

uint64_t sub_1004BF6D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = v2;

  if (v2)
  {
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = sub_1004BFC10;
  }

  else
  {
    v8 = *(v4 + 176);

    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = sub_1004BF7F8;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_1004BF7F8()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = -v2;
    v5 = v1 + 48;
    v6 = _swiftEmptyArrayStorage;
    p_superclass = _TtC7Journal11Application.superclass;
    v8 = qword_100AE5D50;
    v38 = v1 + 48;
    v40 = v1;
    while (1)
    {
      v39 = v6;
      v9 = (v5 + 24 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v12 = *(v9 - 1);
        v13 = *v9;
        v14 = *(v9 - 2);
        if (v13)
        {
          sub_1000E61A4(v12, 1);
          if (p_superclass[457] != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for Logger();
          sub_10000617C(v15, v8);
          v16 = v14;
          sub_1000E61A4(v12, 1);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();

          sub_1000E61B0(v12, 1);
          if (os_log_type_enabled(v17, v18))
          {
            v19 = v4;
            v20 = swift_slowAlloc();
            v21 = v8;
            v22 = swift_slowAlloc();
            *v20 = 138412546;
            *(v20 + 4) = v16;
            *v22 = v16;
            *(v20 + 12) = 2112;
            v23 = v16;
            sub_1000E61A4(v12, 1);
            v24 = _swift_stdlib_bridgeErrorToNSError();
            *(v20 + 14) = v24;
            v22[1] = v24;
            _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching record %@: %@", v20, 0x16u);
            sub_1000F24EC(&unk_100AD4BB0);
            swift_arrayDestroy();
            v8 = v21;

            v4 = v19;
            v1 = v40;
            p_superclass = (_TtC7Journal11Application + 8);
          }

          v10 = v12;
          v11 = 1;
          goto LABEL_5;
        }

        sub_1000E61A4(v12, 0);
        v25 = CKRecord.subscript.getter();
        if (v25)
        {
          *(v41 + 32) = v25;
          sub_1000F24EC(&unk_100AE4C70);
          if (swift_dynamicCast())
          {
            break;
          }
        }

        v10 = v12;
        v11 = 0;
LABEL_5:
        sub_1000E61B0(v10, v11);
        ++v3;
        v9 += 24;
        if (v4 + v3 == 1)
        {
          v6 = v39;
          goto LABEL_23;
        }
      }

      v26 = v4;
      v27 = *(v41 + 16);
      v28 = *(v41 + 24);

      sub_1000E61B0(v12, 0);
      v6 = v39;
      v29 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10009BCC8(0, *(v39 + 2) + 1, 1, v39);
      }

      v31 = *(v6 + 2);
      v30 = *(v6 + 3);
      if (v31 >= v30 >> 1)
      {
        v6 = sub_10009BCC8((v30 > 1), v31 + 1, 1, v6);
      }

      *(v6 + 2) = v31 + 1;
      v32 = &v6[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v28;
      v4 = v26;
      v5 = v38;
      v8 = v29;
      if (!(v26 + v3))
      {
        goto LABEL_23;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_23:
  v33 = *(v41 + 208);
  v34 = *(v41 + 160);
  v36 = *(v41 + 144);
  v35 = *(v41 + 152);

  v37 = *(v41 + 8);

  v37(v6);
}

uint64_t sub_1004BFC10()
{
  v1 = *(v0 + 176);

  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE5D50);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching active device versions: %@", v5, 0xCu);
    sub_100004F84(v6, &unk_100AD4BB0);
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1004BFE38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudKitStack();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1004BFE78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1004BFF20;

  return sub_1006A41FC(0);
}

uint64_t sub_1004BFF20(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1004C0020, 0, 0);
}

uint64_t sub_1004C0020()
{
  if (*(v0 + 40) == 1)
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v1 = *(qword_100B2F9E0 + 32);
    *(v0 + 24) = v1;
    v2 = sub_1004C0120;
  }

  else
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v1 = *(qword_100B2F9E0 + 32);
    *(v0 + 32) = v1;
    v2 = sub_1004C02E0;
  }

  v3 = v2;

  return _swift_task_switch(v3, v1, 0);
}

uint64_t sub_1004C0120()
{
  v2 = *(v0 + 24);
  if (*(v2 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending);
  }

  *(v0 + 41) = v3;

  return _swift_task_switch(sub_1004C01B0, 0, 0);
}

uint64_t sub_1004C01B0()
{
  if (sub_1007CEB58() || (v5 = *(v0 + 41), sub_1007CEB64()) || (v5 & 1) != 0)
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = &qword_100B2FB80;
    if (qword_100ACFF90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = &qword_100B2FB88;
    if (qword_100ACFF98 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  [v1 postNotificationName:*v2 object:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004C02E0()
{
  v1 = *(v0 + 32);
  *(v1 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending) = 0;

  return _swift_task_switch(sub_1004C0360, 0, 0);
}

uint64_t sub_1004C0360()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFF98 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_100B2FB88 object:0];

  v2 = *(v0 + 8);

  return v2();
}

void sub_1004C042C()
{
  v0 = 0;
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = v90 - v2;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v99 = qword_100B2F9E0;
    v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v5 = sub_1007CEB58();
    v6 = sub_1007CEB64();
    if (v5)
    {
      break;
    }

    v92 = v3;
    *&v93 = v6;
    __chkstk_darwin(v6);
    v90[-2] = v4;
    sub_1000F24EC(&qword_100AD60A0);
    v91 = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v15 = *(v102[0] + 16);
    v90[1] = v102[0];
    if (v15)
    {
      v16 = v15 - 1;
      v17 = (v102[0] + 40);
      *&v14 = 136315138;
      v94 = v14;
      while (1)
      {
        v20 = *(v17 - 1);
        v21 = *v17;
        v22 = *(*(v99 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig);
        v23 = qword_100AD0AE0;

        v24 = v22;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = qword_100AF2118;
        v26 = qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableFileAttachmentsQueue;
        os_unfair_lock_lock((qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableFileAttachmentsQueue));
        v27 = *(v26 + 8);
        v28 = String._bridgeToObjectiveC()();
        v29 = [v27 objectForKey:v28];

        os_unfair_lock_unlock(v26);
        if (v29 && (v30 = [v29 isCancelled], v29, (v30 & 1) == 0))
        {

          if (!v16)
          {
            break;
          }
        }

        else
        {
          v97 = v17;
          v98 = v16;
          [*(v25 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue) cancelAllOperations];
          sub_1000065A8(0, &qword_100AF02B0);

          v31 = static CloudKitStackConfiguration.zone.getter();
          v32 = [v31 zoneID];

          v33._countAndFlagsBits = v20;
          v33._object = v21;
          v34.super.isa = CKRecordID.init(recordName:zoneID:)(v33, v32).super.isa;
          v35 = *(*(v99 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer);
          v36 = v34.super.isa;
          v95 = v25;
          v37 = v36;
          v38 = [v35 privateCloudDatabase];
          v39 = type metadata accessor for AttachmentDownloadOperation();
          v40 = objc_allocWithZone(v39);
          *&v40[qword_100AEA608] = v37;
          *&v40[qword_100AEA610] = v38;
          *&v40[qword_100AEA618] = v24;
          v100.receiver = v40;
          v100.super_class = v39;
          v96 = v24;
          v41 = objc_msgSendSuper2(&v100, "init");
          v42 = swift_allocObject();
          *(v42 + 16) = v20;
          *(v42 + 24) = v21;
          v43 = *&v41[qword_100AE7BA8];
          v44 = __chkstk_darwin(v42);
          v90[-2] = sub_1004C129C;
          v90[-1] = v44;

          os_unfair_lock_lock(v43 + 10);
          sub_1004C12A4(&v43[4]);
          os_unfair_lock_unlock(v43 + 10);

          if (sub_1007CEB58() < 100)
          {
            os_unfair_lock_lock(v26);
            v18 = *(v26 + 8);
            v19 = String._bridgeToObjectiveC()();
            [v18 setObject:v41 forKey:v19];

            os_unfair_lock_unlock(v26);
            [*(v95 + OBJC_IVAR____TtC7Journal17OperationsManager_fileAttachmentsQueue) addOperation:v41];

            v17 = v97;
            v16 = v98;
            if (!v98)
            {
              break;
            }
          }

          else
          {
            v95 = v0;
            v45 = v41;
            v46 = v96;
            v17 = v97;
            if (qword_100AD0AD8 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            sub_10000617C(v47, qword_100AF2100);

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.debug.getter();

            v50 = v37;
            if (os_log_type_enabled(v48, v49))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v102[0] = v52;
              *v51 = v94;
              *(v51 + 4) = sub_100008458(v20, v21, v102);
              _os_log_impl(&_mh_execute_header, v48, v49, "Too many operations in the queue - Dropping download operation for attachment %s", v51, 0xCu);
              sub_10000BA7C(v52);
            }

            v16 = v98;
            v0 = v95;
            if (!v98)
            {
              break;
            }
          }
        }

        --v16;
        v17 += 2;
      }
    }

    v4 = v91;
    v3 = v92;
    if (v93)
    {
      goto LABEL_44;
    }

LABEL_26:
    v92 = v3;
    v3 = v90;
    __chkstk_darwin(v6);
    v90[-2] = v4;
    sub_1000F24EC(&qword_100AD60A0);
    v91 = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v96 = v102[0];
    v95 = *(v102[0] + 16);
    if (!v95)
    {
LABEL_43:

      v4 = v91;
      v3 = v92;
LABEL_44:
      v88 = type metadata accessor for TaskPriority();
      (*(*(v88 - 8) + 56))(v3, 1, 1, v88);
      v13 = &unk_1009586C0;
      goto LABEL_45;
    }

    v54 = 0;
    v55 = v96 + 5;
    *&v53 = 136315138;
    v93 = v53;
    while (v54 < v96[2])
    {
      v3 = *(v55 - 1);
      v56 = *v55;
      v57 = qword_100AD0AE0;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = qword_100AF2118;
      v59 = qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableAssetMetadataQueue;
      os_unfair_lock_lock((qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableAssetMetadataQueue));
      v60 = *(v59 + 8);
      v61 = String._bridgeToObjectiveC()();
      v62 = [v60 objectForKey:v61];

      os_unfair_lock_unlock(v59);
      if (v62 && (v63 = [v62 isCancelled], v62, (v63 & 1) == 0))
      {
      }

      else
      {
        v98 = v54;
        [*(v58 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue) cancelAllOperations];
        sub_1000065A8(0, &qword_100AF02B0);

        v64 = static CloudKitStackConfiguration.zone.getter();
        v65 = [v64 zoneID];

        v66._countAndFlagsBits = v3;
        v66._object = v56;
        v67.super.isa = CKRecordID.init(recordName:zoneID:)(v66, v65).super.isa;
        v68 = v99;
        v69 = *(*(v99 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer);
        v70 = v67.super.isa;
        v71 = [v69 privateCloudDatabase];
        v72 = *(v68 + 24);
        *&v94 = v58;
        v73 = *(v72 + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig);
        v74 = type metadata accessor for AssetMetadataDownloadOperation();
        v75 = objc_allocWithZone(v74);
        v97 = v70;
        *&v75[qword_100AD9438] = v70;
        *&v75[qword_100AD9440] = v71;
        *&v75[qword_100AD9448] = v73;
        v101.receiver = v75;
        v101.super_class = v74;
        v76 = v73;
        v77 = objc_msgSendSuper2(&v101, "init");
        v78 = swift_allocObject();
        *(v78 + 16) = v3;
        *(v78 + 24) = v56;
        v79 = *&v77[qword_100AE7BA8];
        v80 = __chkstk_darwin(v78);
        v90[-2] = sub_1004C1248;
        v90[-1] = v80;

        os_unfair_lock_lock(v79 + 10);
        sub_1004C1250(&v79[4]);
        os_unfair_lock_unlock(v79 + 10);

        if (sub_1007CEB64() > 99)
        {
          v82 = v97;
          if (qword_100AD0AD8 != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          sub_10000617C(v83, qword_100AF2100);

          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v102[0] = v87;
            *v86 = v93;
            *(v86 + 4) = sub_100008458(v3, v56, v102);
            _os_log_impl(&_mh_execute_header, v84, v85, "Too many operations in the queue - Dropping download operation for asset %s", v86, 0xCu);
            sub_10000BA7C(v87);
          }
        }

        else
        {
          os_unfair_lock_lock(v59);
          v81 = *(v59 + 8);
          v3 = String._bridgeToObjectiveC()();
          [v81 setObject:v77 forKey:v3];

          os_unfair_lock_unlock(v59);
          [*(v94 + OBJC_IVAR____TtC7Journal17OperationsManager_assetMetadataQueue) addOperation:v77];
        }

        v54 = v98;
      }

      ++v54;
      v55 += 2;
      if (v95 == v54)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v4;
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000617C(v8, qword_100AE5D50);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Neither operation queue is totally empty, so we won't try to enqueue more work.", v11, 2u);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = &unk_1009586B8;
  v4 = v7;
LABEL_45:
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  sub_1003E9628(0, 0, v3, v13, v89);
}

uint64_t sub_1004C10C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1004BFE78();
}

uint64_t sub_1004C116C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_1004BFE78();
}

void sub_1004C12C0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1004BD318(v3, v4, v6, v0 + v2, v5);
}

void sub_1004C1354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (a2 && (a1 == 0xD000000000000011 && 0x80000001008F7090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    sub_1000082B4(a3, v16, &qword_100AD13D0);
    if (v17)
    {
      sub_1000065A8(0, &unk_100AE5E50);
      if (swift_dynamicCast())
      {
        v9 = v15;
        v10 = [v15 progress];
        v11 = [v10 isFinished];

        if (v11)
        {
          v12 = type metadata accessor for TaskPriority();
          (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
          v13 = swift_allocObject();
          *(v13 + 16) = 0;
          *(v13 + 24) = 0;
          sub_1003E9628(0, 0, v8, &unk_1009586F0, v13);
        }
      }
    }

    else
    {
      sub_100004F84(v16, &qword_100AD13D0);
    }
  }
}

void sub_1004C155C(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v10 = sub_1007CF128(a1, a2);
  if (v10)
  {
  }

  else
  {
    if (qword_100AD0AE0 != -1)
    {
      swift_once();
    }

    [*(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue) cancelAllOperations];
    sub_1000065A8(0, &qword_100AF02B0);

    v11 = static CloudKitStackConfiguration.zone.getter();
    v12 = [v11 zoneID];

    v13._countAndFlagsBits = a1;
    v13._object = a2;
    v14.super.isa = CKRecordID.init(recordName:zoneID:)(v13, v12).super.isa;
    v15 = qword_100ACFE28;
    v16 = v14.super.isa;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = [*(*(qword_100B2F9E0 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer) privateCloudDatabase];
    v18 = type metadata accessor for AttachmentDownloadOperation();
    v19 = objc_allocWithZone(v18);
    *&v19[qword_100AEA608] = v16;
    *&v19[qword_100AEA610] = v17;
    *&v19[qword_100AEA618] = a3;
    v25.receiver = v19;
    v25.super_class = v18;
    v20 = a3;
    v21 = objc_msgSendSuper2(&v25, "init");
    v22 = v21;
    if ((a5 & 1) == 0)
    {
      [v21 setQueuePriority:a4];
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    v24 = *&v22[qword_100AE7BA8];
    __chkstk_darwin(v23);

    os_unfair_lock_lock(v24 + 10);
    sub_1004C2624(&v24[4]);
    os_unfair_lock_unlock(v24 + 10);

    sub_1007CED74(a1, a2, v22);
  }
}

void sub_1004C181C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = sub_1007CF11C(a1, a2);
  if (v8)
  {
  }

  else
  {
    if (qword_100AD0AE0 != -1)
    {
      swift_once();
    }

    [*(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue) cancelAllOperations];
    sub_1000065A8(0, &qword_100AF02B0);

    v9 = static CloudKitStackConfiguration.zone.getter();
    v10 = [v9 zoneID];

    v11._countAndFlagsBits = a1;
    v11._object = a2;
    v12.super.isa = CKRecordID.init(recordName:zoneID:)(v11, v10).super.isa;
    v13 = qword_100ACFE28;
    v14 = v12.super.isa;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_100B2F9E0;
    v16 = [*(*(qword_100B2F9E0 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer) privateCloudDatabase];
    v17 = *(*(v15 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig);
    v18 = type metadata accessor for AssetMetadataDownloadOperation();
    v19 = objc_allocWithZone(v18);
    *&v19[qword_100AD9438] = v14;
    *&v19[qword_100AD9440] = v16;
    *&v19[qword_100AD9448] = v17;
    v25.receiver = v19;
    v25.super_class = v18;
    v20 = v17;
    v21 = objc_msgSendSuper2(&v25, "init");
    v22 = v21;
    if ((a4 & 1) == 0)
    {
      [v21 setQueuePriority:a3];
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    v24 = *&v22[qword_100AE7BA8];
    __chkstk_darwin(v23);

    os_unfair_lock_lock(v24 + 10);
    sub_1004C263C(&v24[4]);
    os_unfair_lock_unlock(v24 + 10);

    sub_1007CED90(a1, a2, v22);
  }
}

void sub_1004C1AE8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v64[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v64[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v64[-1] - v10;
  __chkstk_darwin(v12);
  v14 = &v64[-1] - v13;
  v15 = Notification.userInfo.getter();
  if (!v15)
  {
    if (qword_100ACFE48 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000617C(v40, qword_100AE5D50);
    (*(v3 + 16))(v5, a1, v2);
    v30 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v41))
    {

      (*(v3 + 8))(v5, v2);
      return;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v65[0] = v43;
    *v42 = 136315138;
    sub_100022924(&qword_100ADFAD8, &type metadata accessor for Notification);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    (*(v3 + 8))(v5, v2);
    v47 = sub_100008458(v44, v46, v65);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v30, v41, "(prioritizeDownloadNotification) unable to get userInfo from notification:%s", v42, 0xCu);
    sub_10000BA7C(v43);
    goto LABEL_25;
  }

  v16 = v15;
  strcpy(v64, "downloadIDKey");
  HIWORD(v64[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_100361EDC(v65), (v18 & 1) == 0))
  {

    sub_100177B94(v65);
LABEL_16:
    if (qword_100ACFE48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000617C(v29, qword_100AE5D50);
    (*(v3 + 16))(v8, a1, v2);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {

      (*(v3 + 8))(v8, v2);
      return;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65[0] = v33;
    *v32 = 136315138;
    sub_100022924(&qword_100ADFAD8, &type metadata accessor for Notification);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v3 + 8))(v8, v2);
    v37 = sub_100008458(v34, v36, v65);

    *(v32 + 4) = v37;
    v38 = "(prioritizeDownloadNotification) unable to get id from notification:%s";
    v39 = v31;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v30, v39, v38, v32, 0xCu);
    sub_10000BA7C(v33);
LABEL_25:

    goto LABEL_26;
  }

  sub_10000BA20(*(v16 + 56) + 32 * v17, v66);
  sub_100177B94(v65);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v20 = v64[0];
  v19 = v64[1];
  v64[0] = 0xD000000000000013;
  v64[1] = 0x80000001008F7160;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v21 = sub_100361EDC(v65), (v22 & 1) == 0))
  {

    sub_100177B94(v65);
LABEL_32:
    if (qword_100ACFE48 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000617C(v48, qword_100AE5D50);
    (*(v3 + 16))(v11, a1, v2);
    v30 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v49))
    {

      (*(v3 + 8))(v11, v2);
      return;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65[0] = v33;
    *v32 = 136315138;
    sub_100022924(&qword_100ADFAD8, &type metadata accessor for Notification);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    (*(v3 + 8))(v11, v2);
    v53 = sub_100008458(v50, v52, v65);

    *(v32 + 4) = v53;
    v38 = "(prioritizeDownloadNotification) unable to get priority from notification:%s";
    v39 = v49;
    goto LABEL_20;
  }

  sub_10000BA20(*(v16 + 56) + 32 * v21, v66);
  sub_100177B94(v65);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v23 = v64[0];
  v64[0] = 0x64616F6C6E776F64;
  v64[1] = 0xEF79654B65707954;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v24 = sub_100361EDC(v65), (v25 & 1) == 0))
  {

    sub_100177B94(v65);
LABEL_39:
    if (qword_100ACFE48 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000617C(v54, qword_100AE5D50);
    (*(v3 + 16))(v14, a1, v2);
    v30 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v55))
    {

      (*(v3 + 8))(v14, v2);
      return;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v65[0] = v57;
    *v56 = 136315138;
    sub_100022924(&qword_100ADFAD8, &type metadata accessor for Notification);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    (*(v3 + 8))(v14, v2);
    v61 = sub_100008458(v58, v60, v65);

    *(v56 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v30, v55, "(prioritizeDownloadNotification) unable to get type from notification:%s", v56, 0xCu);
    sub_10000BA7C(v57);

LABEL_26:

    return;
  }

  sub_10000BA20(*(v16 + 56) + 32 * v24, v66);
  sub_100177B94(v65);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_39;
  }

  v26 = v64[0];
  v27 = sub_1007CF11C(v20, v19);
  v28 = v27;
  if (v26)
  {
    if ((v23 & 1) == 0)
    {
      if (!v27)
      {
        sub_1004C181C(v20, v19, 8, 0);
LABEL_54:

        return;
      }

LABEL_49:

      [v28 setQueuePriority:8];
      goto LABEL_50;
    }
  }

  else if ((v23 & 1) == 0)
  {
    if (!v27)
    {
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v62 = *(*(qword_100B2F9E0 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig);
      sub_1004C155C(v20, v19, v62, 8, 0);

      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (v28)
  {
    [v28 setQueuePriority:-4];
LABEL_50:
  }
}

id sub_1004C2544(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {
    sub_100049ED8(a1, a2);

    return a3;
  }
}

void sub_1004C2590(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1000340DC(a1, a2);
  }
}

uint64_t sub_1004C25EC(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

__n128 sub_1004C2668(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1004C268C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004C26D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004C2760@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD0DE8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v35 = sub_1000F24EC(&qword_100AE5E60);
  __chkstk_darwin(v35);
  v12 = &v34 - v11;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v13 = sub_1000F24EC(&qword_100AE5E68);
  sub_1004C2CF4(v1, &v10[*(v13 + 44)]);
  KeyPath = swift_getKeyPath();
  v15 = &v10[*(sub_1000F24EC(&qword_100AE5E70) + 36)];
  *v15 = KeyPath;
  v15[8] = 1;
  v16 = swift_getKeyPath();
  v17 = &v10[*(v8 + 44)];
  v18 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v19 = enum case for ColorScheme.dark(_:);
  v20 = type metadata accessor for ColorScheme();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  sub_100021CEC(v10, v12, &qword_100AD0DE8);
  *&v12[*(sub_1000F24EC(&qword_100AD0DF0) + 36)] = 260;
  v21 = swift_getKeyPath();
  v22 = &v12[*(sub_1000F24EC(&qword_100AE5E78) + 36)];
  *v22 = v21;
  v22[8] = 0;
  LOBYTE(v21) = sub_1004C61E4();
  v23 = swift_getKeyPath();
  v24 = &v12[*(sub_1000F24EC(&qword_100AE5E80) + 36)];
  *v24 = v23;
  v24[8] = v21 & 1;
  sub_1000F24EC(&qword_100AD3CA8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100940050;
  if (qword_100AD0CA0 != -1)
  {
    swift_once();
  }

  v26 = sub_10000617C(v3, qword_100B314F0);
  v27 = *(v4 + 16);
  v27(v6, v26, v3);
  *(v25 + 32) = Color.init(_:)();
  if (qword_100AD0C88 != -1)
  {
    swift_once();
  }

  v28 = sub_10000617C(v3, qword_100B314A8);
  v27(v6, v28, v3);
  *(v25 + 40) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v29 = swift_getKeyPath();
  v40 = v44;
  v41 = v45;
  v42 = v46;
  v43 = 256;
  sub_1000F24EC(&qword_100ADB100);
  sub_10000B58C(&qword_100ADB108, &qword_100ADB100);
  v30 = AnyView.init<A>(_:)();
  v31 = &v12[*(v35 + 36)];
  *v31 = v29;
  v31[1] = v30;
  v32 = v36;
  static AccessibilityChildBehavior.combine.getter();
  sub_1004C65CC();
  View.accessibilityElement(children:)();
  (*(v37 + 8))(v32, v39);
  return sub_1000CFEE0(v12);
}

uint64_t sub_1004C2CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AE5EE0);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v66 = (&KeyPath - v5);
  v64 = sub_1000F24EC(&qword_100AE5EE8);
  __chkstk_darwin(v64);
  v65 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &KeyPath - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AE5EF0);
  __chkstk_darwin(v14 - 8);
  v70 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &KeyPath - v17;
  v18 = sub_1000F24EC(&qword_100AE5EF8);
  __chkstk_darwin(v18 - 8);
  v68 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v67 = &KeyPath - v21;
  sub_1004C3574(&KeyPath - v21);
  v92 = *(a1 + 80);
  v91 = *(a1 + 64);
  v22 = v91;
  if (HIBYTE(v92) == 1)
  {
    v23 = v92;
    v24 = *(&v91 + 1);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v91, &qword_100AE5ED8);
    (*(v11 + 8))(v13, v10);
    v24 = *(&v86 + 1);
    v22 = v86;
    v23 = v87;
  }

  *&v86 = v22;
  *(&v86 + 1) = v24;
  LOBYTE(v87) = v23;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v26 = v81;

  if (v26 == 4 || sub_1004C61E4())
  {
    v63 = a2;
    v62 = static VerticalAlignment.firstTextBaseline.getter();
    v80 = 0;
    sub_1004C4588(&v74);
    v83 = v76;
    v84 = v77;
    v85 = v78;
    v81 = v74;
    v82 = v75;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    v86 = v74;
    v87 = v75;
    sub_1000082B4(&v81, &v73, &qword_100AE5F08);
    sub_100004F84(&v86, &qword_100AE5F08);
    *&v79[23] = v82;
    *&v79[39] = v83;
    *&v79[55] = v84;
    *&v79[71] = v85;
    *&v79[7] = v81;
    v60 = v80;
    v61 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v27 = static HierarchicalShapeStyle.secondary.getter();
    v28 = &v9[*(sub_1000F24EC(&qword_100AE5F10) + 36)];
    v29 = sub_1000F24EC(&qword_100ADB538);
    v30 = *(v29 + 36);
    v31 = enum case for BlendMode.plusDarker(_:);
    v32 = type metadata accessor for BlendMode();
    v33 = *(*(v32 - 8) + 104);
    v33(&v28[v30], v31, v32);
    v33(&v28[*(v29 + 40)], enum case for BlendMode.plusLighter(_:), v32);
    *v28 = v27;
    v34 = *&v79[48];
    *(v9 + 49) = *&v79[32];
    *(v9 + 65) = v34;
    *(v9 + 81) = *&v79[64];
    v35 = *&v79[16];
    *(v9 + 17) = *v79;
    *v9 = v62;
    *(v9 + 1) = 0;
    v9[16] = v60;
    v36 = *&v79[79];
    *(v9 + 33) = v35;
    v37 = KeyPath;
    *(v9 + 12) = v36;
    *(v9 + 13) = v37;
    *(v9 + 14) = v61;
    v38 = swift_getKeyPath();
    v39 = &v9[*(sub_1000F24EC(&qword_100AE5F18) + 36)];
    *v39 = v38;
    v39[1] = 0x3FE3333333333333;
    LOBYTE(v38) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = &v9[*(sub_1000F24EC(&qword_100AE5F20) + 36)];
    *v48 = v38;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    v49 = &v9[*(sub_1000F24EC(&qword_100AE5F28) + 36)];
    sub_1000F24EC(&qword_100AD21B0);
    static ContentTransition.numericText(countsDown:)();
    *v49 = swift_getKeyPath();
    if (qword_100ACFCF0 != -1)
    {
      swift_once();
    }

    v50 = v65;
    *&v9[*(v64 + 36)] = qword_100B2F878;
    sub_1000082B4(v9, v50, &qword_100AE5EE8);
    v51 = v66;
    *v66 = 0;
    *(v51 + 8) = 1;
    v52 = sub_1000F24EC(&qword_100AE5F30);
    sub_1000082B4(v50, v51 + *(v52 + 48), &qword_100AE5EE8);

    sub_100004F84(v9, &qword_100AE5EE8);
    sub_100004F84(v50, &qword_100AE5EE8);
    v53 = v69;
    sub_100021CEC(v51, v69, &qword_100AE5EE0);
    (*(v71 + 56))(v53, 0, 1, v72);
    a2 = v63;
  }

  else
  {
    v53 = v69;
    (*(v71 + 56))(v69, 1, 1, v72);
  }

  v55 = v67;
  v54 = v68;
  sub_1000082B4(v67, v68, &qword_100AE5EF8);
  v56 = v70;
  sub_1000082B4(v53, v70, &qword_100AE5EF0);
  sub_1000082B4(v54, a2, &qword_100AE5EF8);
  v57 = sub_1000F24EC(&qword_100AE5F00);
  sub_1000082B4(v56, a2 + *(v57 + 48), &qword_100AE5EF0);
  sub_100004F84(v53, &qword_100AE5EF0);
  sub_100004F84(v55, &qword_100AE5EF8);
  sub_100004F84(v56, &qword_100AE5EF0);
  return sub_100004F84(v54, &qword_100AE5EF8);
}

uint64_t sub_1004C3574@<X0>(_BYTE *a1@<X8>)
{
  v96 = type metadata accessor for Font.TextStyle();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v92);
  v93 = &v80[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v5 - 8);
  v91 = &v80[-v6];
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v90 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v87 = *(v9 - 8);
  __chkstk_darwin(v9);
  v85 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for Locale();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v11 = sub_1000F24EC(&qword_100AD1ED0);
  v86 = *(v11 - 8);
  __chkstk_darwin(v11);
  v101 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v84 = &v80[-v14];
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for AttributedString();
  v104 = *(v16 - 8);
  v105 = v16;
  __chkstk_darwin(v16);
  v103 = &v80[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v102 = &v80[-v19];
  v20 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v20);
  v22 = &v80[-v21];
  v23 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v23 - 8);
  v25 = &v80[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for EnvironmentValues();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v80[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v26) = *(v1 + 8);
  v106 = v1;
  if (v26 == 1)
  {
    v83 = v9;
    v117 = *(v1 + 96);
    v27 = *(v1 + 88);
    v116 = v27;
    v28 = v117;

    if ((v28 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v30 = v97;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v116, &qword_100AE5F48);
      (*(v98 + 8))(v30, v99);
      v27 = v111;
    }

    swift_getKeyPath();
    v111 = v27;
    sub_100040810(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_1004C69E8(v27 + v31, v25);

    sub_1000082B4(v25, v22, &qword_100AD6FB8);
    sub_1004C6A4C(v25);
    v32 = *&v22[*(v20 + 32)];
    v33 = _HashTable.startBucket.getter();
    v100 = sub_1000AEB10(v33, *(v32 + 36), 0, 1 << *(v32 + 32), *(v32 + 36), 0);
    sub_100004F84(v22, &qword_100AD6FB8);
    v1 = v106;
    v9 = v83;
  }

  else
  {
    v100 = *v1;
  }

  v115 = *(v1 + 80);
  v114 = *(v1 + 64);
  v35 = *(&v114 + 1);
  v34 = v114;
  v36 = v115;
  LODWORD(v83) = HIBYTE(v115);
  v81 = v115;
  if (HIBYTE(v115) == 1)
  {

    v40 = v34;
    v41 = v36;
    v39 = v35;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v114, &qword_100AE5ED8);
    (*(v98 + 8))(v38, v99);
    v40 = v108;
    v39 = v109;
    v41 = v110;
  }

  v108 = v40;
  v109 = v39;
  v110 = v41;
  v82 = sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v42 = v112;

  if (v42 == 4 || sub_1004C61E4())
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v43._countAndFlagsBits = 0x656C616E72756F4ALL;
    v43._object = 0xEC0000002A2A2064;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
    v108 = v100;
    static Locale.autoupdatingCurrent.getter();
    sub_1000F6568();
    IntegerFormatStyle.init(locale:)();
    v44 = v85;
LABEL_12:
    static NumberFormatStyleConfiguration.Notation.automatic.getter();
    goto LABEL_13;
  }

  v113 = *(v106 + 56);
  v74 = *(v106 + 48);
  v112 = v74;
  if (v113 == 1)
  {
    v75 = v74;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v76 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v77 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v112, &qword_100AE5ED0);
    (*(v98 + 8))(v77, v99);
    v75 = v108;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v78._countAndFlagsBits = 0x656C616E72756F4ALL;
  v78._object = 0xEC0000002A2A2064;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v78);
  v108 = v100;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  v79 = v75 == 3;
  v44 = v85;
  if (v79)
  {
    goto LABEL_12;
  }

  static NumberFormatStyleConfiguration.Notation.compactName.getter();
LABEL_13:
  v45 = v84;
  v46 = v101;
  IntegerFormatStyle.notation(_:)();
  (*(v87 + 8))(v44, v9);
  v47 = *(v86 + 8);
  v47(v46, v11);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  sub_1000777B4();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)();
  v47(v45, v11);
  v48._countAndFlagsBits = 673196586;
  v48._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
  v108 = v100;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v49._countAndFlagsBits = 0x737961442029;
  v49._object = 0xE600000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v88 + 56))(v91, 1, 1, v89);
  v108 = _swiftEmptyArrayStorage;
  sub_100040810(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v102;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  v51 = *(v104 + 16);
  v51(v103, v50, v105);
  if (v83)
  {

    v52 = v81;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v53 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v54 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v114, &qword_100AE5ED8);
    (*(v98 + 8))(v54, v99);
    v34 = v108;
    v35 = v109;
    v52 = v110;
  }

  v108 = v34;
  v109 = v35;
  v110 = v52;
  Binding.wrappedValue.getter();
  v55 = v107;

  v56 = v55 == 4 || sub_1004C61E4();
  v57 = Namespace.wrappedValue.getter();
  v58 = v103;
  v59 = v105;
  v51(a1, v103, v105);
  static UnitPoint.center.getter();
  v61 = v60;
  v63 = v62;
  v64 = sub_1000F24EC(&qword_100AE5EF8);
  a1[v64[9]] = v56;
  *&a1[v64[10]] = v57;
  v65 = &a1[v64[11]];
  *v65 = v61;
  v65[1] = v63;
  v66 = &a1[v64[12]];
  *v66 = sub_100482F2C;
  v66[1] = 0;
  v67 = &a1[v64[13]];
  *v67 = swift_getKeyPath();
  v67[8] = 0;
  v68 = &a1[v64[14]];
  *v68 = swift_getKeyPath();
  v68[8] = 0;
  *&a1[v64[15]] = 0;
  v69 = v64[16];
  *&a1[v69] = static Font.subheadline.getter();
  v108 = 0x4046000000000000;
  (*(v94 + 104))(v95, enum case for Font.TextStyle.subheadline(_:), v96);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&a1[v64[18]] = 0xBFF8000000000000;
  *&a1[v64[19]] = 0x404A000000000000;
  v70 = v64[20];
  v71 = static Font.subheadline.getter();
  v72 = *(v104 + 8);
  v72(v58, v59);
  result = (v72)(v102, v59);
  *&a1[v70] = v71;
  *&a1[v64[21]] = 0x4054000000000000;
  *&a1[v64[22]] = 0xC002666666666666;
  return result;
}

uint64_t sub_1004C4588@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004C46A0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1004C5444();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12 & 1;
  *(a1 + 72) = v14;
  sub_1000F24DC(v2, v4, v6 & 1);

  sub_1000F24DC(v9, v11, v13);

  sub_1000594D0(v9, v11, v13);

  sub_1000594D0(v2, v4, v6 & 1);
}

uint64_t sub_1004C46A0()
{
  v1 = sub_1000F24EC(&qword_100AE5F38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v97 = &v70 - v3;
  v4 = type metadata accessor for Font.Leading();
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v89 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE5F40);
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v87 = &v70 - v7;
  v81 = sub_1000F24EC(&unk_100AD91E0);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v70 - v8;
  v9 = type metadata accessor for AttributeContainer();
  v95 = *(v9 - 8);
  v96 = v9;
  __chkstk_darwin(v9);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v70 - v12;
  __chkstk_darwin(v13);
  v88 = &v70 - v14;
  v78 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v78);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v16 - 8);
  v76 = &v70 - v17;
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for AttributedString();
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v82 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v83 = &v70 - v24;
  v74 = type metadata accessor for Date();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v27 - 8);
  v29 = &v70 - v28;
  v72 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v72);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for EnvironmentValues();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    v71 = v2;
    v101 = *(v0 + 96);
    v36 = *(v0 + 88);
    v100 = v36;
    v37 = v101;

    if ((v37 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      v70 = v1;
      v39 = v38;
      os_log(_:dso:log:_:_:)();

      v1 = v70;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v100, &qword_100AE5F48);
      (*(v33 + 8))(v35, v32);
      v36 = v99;
    }

    swift_getKeyPath();
    v99 = v36;
    sub_100040810(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_1004C69E8(v36 + v40, v31);

    sub_1000082B4(&v31[*(v72 + 24)], v29, &qword_100AD6FB8);
    sub_1004C6A4C(v31);
    static Date.now.getter();
    v41 = sub_1000B8860(v26);
    v43 = v42;
    (*(v73 + 8))(v26, v74);
    sub_100004F84(v29, &qword_100AD6FB8);
    if (v43)
    {
    }

    else
    {
      v41 = 0;
    }

    v2 = v71;
  }

  else
  {
    v41 = *(v0 + 16);
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = 10794;
  v44._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
  v98 = v41;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v45._countAndFlagsBits = 0x20736968540A2A2ALL;
  v45._object = 0xED000068746E6F4DLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
  String.LocalizationValue.init(stringInterpolation:)();
  v46 = type metadata accessor for Locale();
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v98 = _swiftEmptyArrayStorage;
  sub_100040810(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v83;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_100221DFC();
  v49 = v79;
  static AttributeContainer.subscript.getter();

  v98 = 2;
  v50 = v88;
  v51 = v81;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v80 + 8))(v49, v51);
  v52 = swift_getKeyPath();
  __chkstk_darwin(v52);
  swift_getKeyPath();
  sub_1004C6AA8();
  v53 = v87;
  static AttributeContainer.subscript.getter();

  static Font.title.getter();
  Font.bold()();

  v55 = v93;
  v54 = v94;
  v56 = v89;
  (*(v93 + 104))(v89, enum case for Font.Leading.tight(_:), v94);
  v57 = Font.leading(_:)();

  (*(v55 + 8))(v56, v54);
  v98 = v57;
  v58 = v86;
  v59 = v92;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v91 + 8))(v53, v59);
  v60 = swift_getKeyPath();
  __chkstk_darwin(v60);
  swift_getKeyPath();
  sub_1004C6AFC();
  v61 = v97;
  AttributeContainer.subscript.getter();

  v62 = *(v95 + 8);
  v63 = v58;
  v64 = v96;
  v62(v63, v96);
  v98 = 0xBFF0000000000000;
  v65 = v90;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v2 + 8))(v61, v1);
  AttributedString.replaceAttributes(_:with:)();
  v62(v65, v64);
  v62(v50, v64);
  v67 = v84;
  v66 = v85;
  (*(v84 + 16))(v82, v47, v85);
  v68 = Text.init(_:)();
  (*(v67 + 8))(v47, v66);
  return v68;
}

uint64_t sub_1004C5444()
{
  v1 = sub_1000F24EC(&qword_100AE5F38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v97 = &v70 - v3;
  v4 = type metadata accessor for Font.Leading();
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v89 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE5F40);
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v87 = &v70 - v7;
  v81 = sub_1000F24EC(&unk_100AD91E0);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v70 - v8;
  v9 = type metadata accessor for AttributeContainer();
  v95 = *(v9 - 8);
  v96 = v9;
  __chkstk_darwin(v9);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v70 - v12;
  __chkstk_darwin(v13);
  v88 = &v70 - v14;
  v78 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v78);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v16 - 8);
  v76 = &v70 - v17;
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for AttributedString();
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v82 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v83 = &v70 - v24;
  v74 = type metadata accessor for Date();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v27 - 8);
  v29 = &v70 - v28;
  v72 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v72);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for EnvironmentValues();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40) == 1)
  {
    v71 = v2;
    v101 = *(v0 + 96);
    v36 = *(v0 + 88);
    v100 = v36;
    v37 = v101;

    if ((v37 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      v70 = v1;
      v39 = v38;
      os_log(_:dso:log:_:_:)();

      v1 = v70;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v100, &qword_100AE5F48);
      (*(v33 + 8))(v35, v32);
      v36 = v99;
    }

    swift_getKeyPath();
    v99 = v36;
    sub_100040810(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_1004C69E8(v36 + v40, v31);

    sub_1000082B4(&v31[*(v72 + 28)], v29, &qword_100AD6FB8);
    sub_1004C6A4C(v31);
    static Date.now.getter();
    v41 = sub_1000B8860(v26);
    v43 = v42;
    (*(v73 + 8))(v26, v74);
    sub_100004F84(v29, &qword_100AD6FB8);
    if (v43)
    {
    }

    else
    {
      v41 = 0;
    }

    v2 = v71;
  }

  else
  {
    v41 = *(v0 + 32);
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = 10794;
  v44._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
  v98 = v41;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v45._countAndFlagsBits = 0x20736968540A2A2ALL;
  v45._object = 0xEC00000072616559;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
  String.LocalizationValue.init(stringInterpolation:)();
  v46 = type metadata accessor for Locale();
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v98 = _swiftEmptyArrayStorage;
  sub_100040810(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v83;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_100221DFC();
  v49 = v79;
  static AttributeContainer.subscript.getter();

  v98 = 2;
  v50 = v88;
  v51 = v81;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v80 + 8))(v49, v51);
  v52 = swift_getKeyPath();
  __chkstk_darwin(v52);
  swift_getKeyPath();
  sub_1004C6AA8();
  v53 = v87;
  static AttributeContainer.subscript.getter();

  static Font.title.getter();
  Font.bold()();

  v55 = v93;
  v54 = v94;
  v56 = v89;
  (*(v93 + 104))(v89, enum case for Font.Leading.tight(_:), v94);
  v57 = Font.leading(_:)();

  (*(v55 + 8))(v56, v54);
  v98 = v57;
  v58 = v86;
  v59 = v92;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v91 + 8))(v53, v59);
  v60 = swift_getKeyPath();
  __chkstk_darwin(v60);
  swift_getKeyPath();
  sub_1004C6AFC();
  v61 = v97;
  AttributeContainer.subscript.getter();

  v62 = *(v95 + 8);
  v63 = v58;
  v64 = v96;
  v62(v63, v96);
  v98 = 0xBFF0000000000000;
  v65 = v90;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v2 + 8))(v61, v1);
  AttributedString.replaceAttributes(_:with:)();
  v62(v65, v64);
  v62(v50, v64);
  v67 = v84;
  v66 = v85;
  (*(v84 + 16))(v82, v47, v85);
  v68 = Text.init(_:)();
  (*(v67 + 8))(v47, v66);
  return v68;
}

BOOL sub_1004C61E4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v0 + 56);
  v5 = *(v0 + 48);
  v27 = v5;
  if (v28 == 1)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v27, &qword_100AE5ED0);
    (*(v2 + 8))(v4, v1);
    if (v25 != 3)
    {
      return 0;
    }
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 64);
  v8 = *(&v25 + 1);
  v7 = v25;
  v9 = v26;
  v10 = HIBYTE(v26);
  v20 = v26;
  if (HIBYTE(v26) == 1)
  {

    v11 = v7;
    v12 = v9;
    v13 = v8;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v25, &qword_100AE5ED8);
    (*(v2 + 8))(v4, v1);
    v11 = v22;
    v13 = v23;
    v12 = v24;
  }

  v22 = v11;
  v23 = v13;
  v24 = v12;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v15 = v21;

  if (v15 == 6)
  {
    return 0;
  }

  if (v10)
  {

    v17 = v20;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v25, &qword_100AE5ED8);
    (*(v2 + 8))(v4, v1);
    v7 = v22;
    v8 = v23;
    v17 = v24;
  }

  v22 = v7;
  v23 = v8;
  v24 = v17;
  Binding.wrappedValue.getter();
  v19 = v21;

  return v19 != 5;
}

unint64_t sub_1004C65CC()
{
  result = qword_100AE5E88;
  if (!qword_100AE5E88)
  {
    sub_1000F2A18(&qword_100AE5E60);
    sub_1004C6684();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5E88);
  }

  return result;
}

unint64_t sub_1004C6684()
{
  result = qword_100AE5E90;
  if (!qword_100AE5E90)
  {
    sub_1000F2A18(&qword_100AE5E80);
    sub_1004C673C();
    sub_10000B58C(&qword_100ADB128, &qword_100ADB130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5E90);
  }

  return result;
}

unint64_t sub_1004C673C()
{
  result = qword_100AE5E98;
  if (!qword_100AE5E98)
  {
    sub_1000F2A18(&qword_100AE5E78);
    sub_1000F2A18(&qword_100AD0DE8);
    sub_1004C684C();
    sub_100280BD0();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5E98);
  }

  return result;
}

unint64_t sub_1004C684C()
{
  result = qword_100AE5EA0;
  if (!qword_100AE5EA0)
  {
    sub_1000F2A18(&qword_100AD0DE8);
    sub_1004C6904();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5EA0);
  }

  return result;
}

unint64_t sub_1004C6904()
{
  result = qword_100AE5EA8;
  if (!qword_100AE5EA8)
  {
    sub_1000F2A18(&qword_100AE5E70);
    sub_10000B58C(&qword_100AE5EB0, &qword_100AE5EB8);
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5EA8);
  }

  return result;
}

uint64_t sub_1004C69E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C6A4C(uint64_t a1)
{
  v2 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004C6AA8()
{
  result = qword_100AE5F50;
  if (!qword_100AE5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F50);
  }

  return result;
}

unint64_t sub_1004C6AFC()
{
  result = qword_100AE5F58;
  if (!qword_100AE5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F58);
  }

  return result;
}

uint64_t sub_1004C6B58(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1000876F4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001008F73D0;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C6CE0()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1004C6D70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

uint64_t sub_1004C6E34(uint64_t result)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 56) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1004C6FA4()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

double sub_1004C7030@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 64);
  *a2 = result;
  return result;
}

void sub_1004C70EC(double a1)
{
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1004C71F8()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 80);
}

double sub_1004C7284@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 80);
  *a2 = result;
  return result;
}

void sub_1004C7340(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004C744C()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

uint64_t sub_1004C74D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1004C7594(uint64_t result)
{
  if (*(v1 + 88) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1004C7690()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime);
}

double sub_1004C7724@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime);
  *a2 = result;
  return result;
}

void sub_1004C77C0(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) == a1)
  {
    *(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1004C78CC(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer_automaticallyPublishesNowPlayingInfo);
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1)
  {
    if (v4)
    {
      return;
    }

    v5 = OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded;
    v6 = *(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded);
    if (v6)
    {
      [v6 setAutomaticallyPublishesNowPlayingInfo:0];
      v7 = *(v1 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = 0;
    goto LABEL_13;
  }

  if (*(v1 + 88) == 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    v9 = sub_1004C7B68();
    if (v9)
    {
      v7 = v9;
      [v9 becomeActiveIfPossibleWithCompletion:0];
LABEL_13:
    }
  }
}

uint64_t sub_1004C79E4()
{
  sub_100004F84(v0 + 16, &unk_100AE9D30);

  v1 = OBJC_IVAR____TtC7Journal11AudioPlayer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_playbackTimeObserverToken, &qword_100AD13D0);

  v3 = OBJC_IVAR____TtC7Journal11AudioPlayer___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id sub_1004C7B20()
{
  result = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  qword_100AE5F60 = result;
  return result;
}

id sub_1004C7B68()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_automaticallyPublishesNowPlayingInfo) != 1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v2 = sub_1004CAE98();
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
    v5 = v2;
  }

  return v2;
}

uint64_t sub_1004C7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for AudioIntensityProcessor();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v8;
  v5[10] = v7;

  return _swift_task_switch(sub_1004C7CD0, v8, v7);
}

uint64_t sub_1004C7CD0()
{
  v1 = v0[8];
  v2 = v0[4];
  AudioIntensityProcessor.init()();
  v3 = [v2 asset];
  v0[11] = v3;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1004C7DB4;

  return AudioIntensityProcessor.readAudioIntensityLevels(from:)(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_1004C7DB4(uint64_t a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[11];
  if (v1)
  {

    v6 = v4[9];
    v7 = v4[10];
    v8 = sub_1004C80D4;
  }

  else
  {

    v4[14] = a1;
    v6 = v4[9];
    v7 = v4[10];
    v8 = sub_1004C7F34;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1004C7F34()
{
  v1 = v0[14];
  v2 = v0[3];

  sub_1004C6E34(v1);
  AudioIntensityProcessor.outputRate.getter();
  v4 = v3;
  if (*(v2 + 64) == v3)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    *(v2 + 64) = v4;
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v8 = v0[3];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    v0[2] = v8;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v6 + 8))(v5, v7);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004C80D4()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to read audio intensity values: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1004C8308, v7, v6);
}

uint64_t sub_1004C8308()
{
  *(v0 + 88) = [*(v0 + 40) asset];
  sub_1000F24EC(&qword_100AE6240);
  v1 = static AVPartialAsyncProperty<A>.duration.getter();
  *(v0 + 96) = v1;
  v2 = static MainActor.shared.getter();
  *(v0 + 104) = v2;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1004C8414;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 128, v1, v2, &protocol witness table for MainActor);
}

uint64_t sub_1004C8414()
{
  v2 = *v1;
  v2[15] = v0;

  v3 = v2[11];
  if (v0)
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1004C88A0;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1004C85A4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1004C85A4()
{
  v1 = v0[6];

  v2 = [*(v1 + 72) currentItem];
  if (v2)
  {
    v3 = v2;
    v4 = v0[5];
    sub_1000065A8(0, &qword_100AE6248);
    v5 = v4;
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) != 0 && (CMTime.isIndefinite.getter() & 1) == 0)
    {
      v7 = v0[6];
      CMTime.seconds.getter();
      v9 = v8;
      swift_getKeyPath();
      v0[2] = v7;
      sub_100084FF0(&qword_100AE6220);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (vabdd_f64(v9, *(v7 + 80)) >= 0.01)
      {

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = v0[6];
          v13 = swift_slowAlloc();
          *v13 = 134218240;
          *(v13 + 4) = v9;
          *(v13 + 12) = 2048;
          swift_getKeyPath();
          v0[4] = v12;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          *(v13 + 14) = *(v7 + 80);
          _os_log_impl(&_mh_execute_header, v10, v11, "Player duration %f differs from initial value %f. Using player duration.", v13, 0x16u);
        }

        if (*(v7 + 80) == v9)
        {
          *(v7 + 80) = v9;
        }

        else
        {
          v14 = v0[6];
          swift_getKeyPath();
          v15 = swift_task_alloc();
          *(v15 + 16) = v14;
          *(v15 + 24) = v9;
          v0[3] = v14;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004C88A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004C8900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32[0] = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  sub_1004C8F94();
  v15 = OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded;
  v16 = *(v3 + OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded);
  if (v16)
  {
    [v16 setAutomaticallyPublishesNowPlayingInfo:0];
    v17 = *(v3 + v15);
  }

  else
  {
    v17 = 0;
  }

  *(v3 + v15) = 0;

  v18 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(ObjectType, a2);
  sub_1000082B4(v14, v11, &unk_100AD6DD0);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_100004F84(v14, &unk_100AD6DD0);
    v20 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);

    v20 = sub_1004CCD9C(v8);
    (*(v6 + 8))(v8, v5);
    sub_100004F84(v14, &unk_100AD6DD0);
  }

  [v18 replaceCurrentItemWithPlayerItem:{v20, v32[0]}];

  v21 = v32[0];
  (*(a2 + 24))(v34, ObjectType, a2);
  swift_beginAccess();
  sub_100014318(v34, v3 + 16, &unk_100AE9D30);
  swift_endAccess();
  v34[0] = v21;
  v22 = *(a2 + 8);
  v23 = *(v22 + 24);
  v24 = v23(ObjectType, v22);
  if (*(v3 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) == v24)
  {
    *(v3 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = v24;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v32[-2] = v3;
    *&v32[-1] = v24;
    v33 = v3;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v21 = v32[0];
  }

  v34[0] = v21;
  v26 = v23(ObjectType, v22);
  if (*(v3 + 80) == v26)
  {
    *(v3 + 80) = v26;
    if (!*(v3 + 88))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v30 = swift_getKeyPath();
  __chkstk_darwin(v30);
  v32[-2] = v3;
  *&v32[-1] = v26;
  v33 = v3;
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v3 + 88))
  {
LABEL_12:
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    v32[-2] = v3;
    LOBYTE(v32[-1]) = 0;
    v34[0] = v3;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_13:
  v34[0] = v21;
  v28 = (*(v22 + 16))(ObjectType, v22);
  sub_1004C6E34(v28);
  v34[0] = v21;
  v29 = (*(v22 + 32))(ObjectType, v22);
  if (*(v3 + 64) == v29)
  {
    *(v3 + 64) = v29;
  }

  else
  {
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    v32[-2] = v3;
    *&v32[-1] = v29;
    v33 = v3;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004C8F94()
{
  v1 = OBJC_IVAR____TtC7Journal11AudioPlayer_playbackTimeObserverToken;
  swift_beginAccess();
  sub_1000082B4(v0 + v1, &v4, &qword_100AD13D0);
  if (!*(&v5 + 1))
  {
    return sub_100004F84(&v4, &qword_100AD13D0);
  }

  sub_10002432C(&v4, &v6);
  v2 = *(v0 + 72);
  sub_10000CA14(&v6, v7);
  [v2 removeTimeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_100014318(&v4, v0 + v1, &qword_100AD13D0);
  swift_endAccess();
  return sub_10000BA7C(&v6);
}

void sub_1004C90AC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &value - v3;
  v5 = sub_100084FF0(&qword_100AE4060);
  v6 = qword_100B2FC98;
  v7 = qword_100B2FCA0;
  qword_100B2FC98 = v1;
  qword_100B2FCA0 = v5;
  if (v6)
  {
    if (v6 == v1)
    {
    }

    else
    {
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 136);

      v9(ObjectType, v7);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v4, &unk_10095A5B0, v12);

  if (sub_1004C94B0())
  {
    v13 = *(v1 + 72);
    epoch = kCMTimeZero.epoch;
    value = kCMTimeZero.value;
    v22 = *&kCMTimeZero.timescale;
    [v13 seekToTime:{&value, kCMTimeZero.value, v22, epoch}];
  }

  else
  {
    swift_getKeyPath();
    value = v1;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v1 + 88))
    {
      swift_getKeyPath();
      value = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime;
      if ((*(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = *(v1 + 72);
        swift_getKeyPath();
        value = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v23 = CMTime.init(seconds:preferredTimescale:)(*(v1 + v19), 100);
        [v20 seekToTime:{&value, v23.value, *&v23.timescale, v23.epoch}];
      }
    }
  }

  sub_1004C95E4();
  v15 = [*(v1 + 72) play];
  if (*(v1 + 88) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&value - 2) = v1;
    *(&value - 8) = 1;
    value = v1;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v17 = sub_1004C7B68(v15);
  if (v17)
  {
    v18 = v17;
    [v17 becomeActiveIfPossibleWithCompletion:0];
  }
}

BOOL sub_1004C94B0()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 88) == 3)
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return vabdd_f64(v2, *(v0 + 80)) < 0.01;
}

uint64_t sub_1004C95E4()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_playbackTimeObserverToken;
  result = swift_beginAccess();
  if (!*(v1 + 24))
  {
    v18 = CMTime.init(seconds:preferredTimescale:)(0.01, 1000000000);
    value = v18.value;
    timescale = v18.timescale;
    epoch = v18.epoch;
    v6 = HIDWORD(*&v18.timescale);
    v7 = *(v0 + 72);
    sub_1000065A8(0, &qword_100AD6210);
    v8 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    swift_weakInit();
    v16 = sub_1004CC1D0;
    v17 = v9;
    aBlock = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1004CAAAC;
    v15 = &unk_100A6FC08;
    v10 = _Block_copy(&aBlock);

    aBlock = value;
    v13 = __PAIR64__(v6, timescale);
    v14 = epoch;
    v11 = [v7 addPeriodicTimeObserverForInterval:&aBlock queue:v8 usingBlock:v10];
    _Block_release(v10);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_100014318(&aBlock, v1, &qword_100AD13D0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1004C97B8()
{
  [*(v0 + 72) pause];
  if (*(v0 + 88) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1004C8F94();
}

void sub_1004C98C8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = *(v0 + 72);
  epoch = kCMTimeZero.epoch;
  v18[0] = kCMTimeZero.value;
  v18[1] = *&kCMTimeZero.timescale;
  v18[2] = epoch;
  [v5 seekToTime:v18];
  if (*(v0 + 88) != 4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v0;
    *(&v17 - 8) = 4;
    v18[0] = v0;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) == 0.0)
  {
    *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = 0;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    *(&v17 - 2) = v0;
    *(&v17 - 1) = 0;
    v18[0] = v0;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1004C8F94();
  v9 = OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded;
  v10 = *(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded);
  if (v10)
  {
    [v10 setAutomaticallyPublishesNowPlayingInfo:0];
    v11 = *(v1 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + v9) = 0;

  if (qword_100B2FC98)
  {
    if (qword_100B2FC98 == v1)
    {
      v12 = qword_100B2FCA0;
      qword_100B2FC98 = 0;
      qword_100B2FCA0 = 0;
      ObjectType = swift_getObjectType();
      (*(v12 + 136))(ObjectType, v12);
      swift_unknownObjectRelease();
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      type metadata accessor for MainActor();
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = &protocol witness table for MainActor;
      sub_1003E9628(0, 0, v4, &unk_10094F340, v16);
    }
  }
}

uint64_t sub_1004C9C34(Swift::Double a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  swift_getKeyPath();
  v17 = v1;
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 88) != 1)
  {
    if (*(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) == a1)
    {
      *(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v16 - 2) = v1;
      *(&v16 - 1) = a1;
      v17 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v18 = CMTime.init(seconds:preferredTimescale:)(a1, 1000000000);
  value = v18.value;
  timescale = v18.timescale;
  epoch = v18.epoch;
  v11 = HIDWORD(*&v18.timescale);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v2;
  *(v14 + 40) = value;
  *(v14 + 48) = timescale;
  *(v14 + 52) = v11;
  *(v14 + 56) = epoch;
  sub_1003E9628(0, 0, v6, &unk_100958EE0, v14);
}

uint64_t sub_1004C9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  type metadata accessor for MainActor();
  v7[23] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[24] = v9;
  v7[25] = v8;

  return _swift_task_switch(sub_1004C9F44, v9, v8);
}

uint64_t sub_1004C9F44()
{
  v1 = v0 + 2;
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = *(v0[19] + 72);
  v0[26] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004CA0B4;
  v6 = swift_continuation_init();
  v7 = sub_1000F24EC(&qword_100AE19C8);
  v0[27] = v4;
  v8 = v0 + 27;
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  epoch = kCMTimeZero.epoch;
  *(v8 - 10) = v7;
  *(v8 - 17) = _NSConcreteStackBlock;
  *(v8 - 16) = 1107296256;
  *(v8 - 15) = sub_1003B936C;
  *(v8 - 14) = &unk_100A6FA78;
  *(v8 - 13) = v6;
  v8[1] = v3;
  v8[2] = v2;
  v8[3] = kCMTimeZero.value;
  *(v8 + 8) = timescale;
  *(v8 + 9) = flags;
  v8[5] = epoch;
  v8[6] = kCMTimeZero.value;
  *(v8 + 14) = timescale;
  *(v8 + 15) = flags;
  v8[8] = epoch;
  [v5 seekToTime:v8 toleranceBefore:v8 + 3 toleranceAfter:v8 + 6 completionHandler:?];

  return _swift_continuation_await(v1);
}

uint64_t sub_1004CA0B4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_1004CA1BC, v2, v1);
}

uint64_t sub_1004CA1BC()
{

  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 152) + OBJC_IVAR____TtC7Journal11AudioPlayer_playbackTimeObserverToken;
    swift_beginAccess();
    if (!*(v1 + 24))
    {
      v2 = [*(v0 + 208) currentItem];
      if (v2)
      {
        v3 = *(v0 + 152);
        v4 = v2;
        [v2 currentTime];

        CMTime.seconds.getter();
        v6 = v5;
        if (*(v3 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) == v5)
        {
          *(v3 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = v5;
        }

        else
        {
          v7 = *(v0 + 152);
          swift_getKeyPath();
          v8 = swift_task_alloc();
          *(v8 + 16) = v7;
          *(v8 + 24) = v6;
          *(v0 + 144) = v7;
          sub_100084FF0(&qword_100AE6220);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        sub_1004CA384();
      }
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1004CA384()
{
  result = [*(v0 + 72) timeControlStatus];
  if (result >= 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x10002u >> (8 * result);
  }

  if (*(v0 + 88) != (v2 & 3))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1004CA4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 72) currentItem];
  if (v3 && (v4 = v3, v5 = [v3 asset], v4, v5))
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

BOOL sub_1004CA5AC()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88) == 2;
}

uint64_t sub_1004CA6A0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_10000CA14(a1, v2);

  return sub_1004CC218(v4, v1, v2, v3);
}

uint64_t sub_1004CA700()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

double sub_1004CA790()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 80);
}

double sub_1004CA81C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 64);
}

uint64_t sub_1004CA8A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  type metadata accessor for MainActor();
  v10[2] = a4;
  v10[3] = a1;
  v11 = v6;
  v12 = v8;
  v13 = a3;
  return sub_1004C6B58(sub_1004CC1D8, v10);
}

uint64_t sub_1004CA940()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    CMTime.seconds.getter();
    if (*(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) == v2)
    {
      *(v1 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100084FF0(&qword_100AE6220);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1004CAAAC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

uint64_t sub_1004CAB18()
{
  if (*(v0 + 88) != 3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v2 = [objc_opt_self() defaultCenter];
  if (qword_100ACFCC8 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_100B2F860 object:v0];

  return sub_1004C8F94();
}

void sub_1004CAC8C(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received playback finished notification", v6, 2u);
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    sub_1000065A8(0, &qword_100AE6248);
    if (swift_dynamicCast())
    {
      v7 = *(v2 + 72);
      v8 = v12;
      v9 = [v7 currentItem];
      if (v9)
      {
        v10 = v9;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          sub_1004CAB18();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100004F84(v15, &qword_100AD13D0);
  }
}