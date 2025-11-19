int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for TTRIApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for TTRIAppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

id sub_100003218()
{
  v1 = v0;
  v2 = type metadata accessor for TTRProcessEnvironment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_intentPerformer;
  *&v0[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_intentPerformer] = 0;
  *&v0[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater] = 0;
  *&v0[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___attachmentThumbnailsManager] = 0;
  v7 = &v0[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties];
  *(v7 + 2) = 0;
  *v7 = 2;
  v8 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_widgetRefresher;
  type metadata accessor for TTRWidgetCenter();
  static TTRWidgetCenter.shared.getter();
  type metadata accessor for TTRWidgetRefresher();
  swift_allocObject();
  *&v0[v8] = TTRWidgetRefresher.init(widgetCenter:)();
  v9 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_appIntentsServicesRefresher;
  type metadata accessor for AppIntentsServicesRefresher();
  swift_allocObject();
  *&v0[v9] = AppIntentsServicesRefresher.init()();
  v10 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_observerForTimeZoneOverride;
  v11 = [objc_opt_self() daemonUserDefaults];
  v26 = sub_100003540(0, &qword_10077EBB8);
  v27 = &protocol witness table for REMDaemonUserDefaults;
  v25 = v11;
  type metadata accessor for TTRTimeZoneOverrideObserver();
  swift_allocObject();
  *&v1[v10] = TTRTimeZoneOverrideObserver.init(userDefaults:setDefaultTimeZone:)();
  *&v1[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___applicationVisibilityChangeHandler] = 0;
  v12 = &v1[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_backgroundTaskIdentifierForApplicationVisibilityChangeHandler];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___hashtagAssociation];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  static TTRProcessEnvironment.currentProcessEnvironment.getter();
  v14 = TTRProcessEnvironment.isolatedStoreContainerToken.getter();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(REMStore) initWithStoreContainerToken:v14];
  }

  else
  {
    v16 = [objc_allocWithZone(REMStore) initUserInteractive:1];
  }

  *&v1[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store] = v16;
  v17 = v16;
  [v17 setAssertOnMainThreadFetches:TTRProcessEnvironment.assertOnMainThreadFetches.getter() & 1];

  v18 = *&v1[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store];
  type metadata accessor for REMStoreIntentPerformer();
  swift_allocObject();
  v19 = v18;
  v20 = REMStoreIntentPerformer.init(store:)();
  (*(v3 + 8))(v5, v2);
  *&v1[v6] = v20;

  v21 = type metadata accessor for TTRIAppDelegate();
  v24.receiver = v1;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_100003540(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000364C(uint64_t a1)
{
  v3 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAppDelegateUtils.TriggerSyncReason();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UIApp;
  if (UIApp)
  {
    v53 = v9;
    v50 = v6;
    v51 = v4;
    v13 = [UIApp launchedToTest];
    v14 = v13;
    v15 = v13 ^ 1;
    v16 = 16843008;
    if (v13)
    {
      v16 = 0;
    }

    v17 = v16 | v15;
    v18 = &_mh_execute_header;
    if (v13)
    {
      WORD2(v18) = 0;
    }

    v19 = 256;
    if (!v13)
    {
      v19 = 0;
    }

    v20 = WORD2(v18) | v19;
    v54 = v1;
    v21 = v1 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties;
    *(v21 + 4) = v20;
    *v21 = v17;
    if (qword_1007671E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_100003E30(v22, qword_10077E9D0);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v52 = v3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[1] = v23;
      v56[0] = v28;
      *v27 = 136446466;
      v55 = a1;
      sub_100058000(&unk_10077EBA0);
      v29 = Optional.descriptionOrNil.getter();
      v31 = sub_100004060(v29, v30, v56);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      BYTE4(v55) = v15;
      LODWORD(v55) = 16843009 * v15;
      BYTE5(v55) = v14;
      v32 = String.init<A>(describing:)();
      v34 = sub_100004060(v32, v33, v56);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "didFinishLaunchingWithOptions {options: %{public}s, applicationRunProperties: %{public}s}", v27, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000042E8();
    v35 = [objc_opt_self() currentNotificationCenter];
    v36 = v54;
    [v35 setDelegate:v54];

    TTRTimeZoneOverrideObserver.start()();
    v37 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store;
    v38 = *(v36 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
    v39 = v53;
    (*(v8 + 104))(v11, enum case for TTRAppDelegateUtils.TriggerSyncReason.appLaunched(_:), v53);
    v40 = v38;
    static TTRAppDelegateUtils.triggerSync(store:reason:)();

    (*(v8 + 8))(v11, v39);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "AppIntents adding store dependency", v43, 2u);
    }

    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    v44 = *(v36 + v37);
    AppDependencyManager.ttrAdd(dependency:)();

    result = static AppDependencyManager.shared.getter();
    v45 = *(v36 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_intentPerformer);
    if (v45)
    {
      v56[3] = type metadata accessor for REMStoreIntentPerformer();
      v56[4] = &protocol witness table for REMStoreIntentPerformer;
      v56[0] = v45;

      AppDependencyManager.ttrAdd(dependency:)();

      sub_100004758(v56);
      static Tips.configure(_:)();
      v46 = [objc_opt_self() mainRunLoop];
      v56[0] = v46;
      sub_100007284(&qword_10077EB60, &type metadata accessor for NSRunLoop.SchedulerTimeType.Stride);
      v47 = v50;
      v48 = v52;
      dispatch thunk of static SchedulerTimeIntervalConvertible.milliseconds(_:)();
      sub_100003540(0, &qword_10076DFB0);
      sub_1000072CC(&qword_10076DFC0, &qword_10076DFB0);
      AppIntentsServicesRefresher.setUpSubscriptionForRefreshUponStoreChange<A>(refreshScheduler:debounceInterval:)();
      (*(v51 + 8))(v47, v48);

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003D68()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077E9D0);
  v1 = sub_100003E30(v0, qword_10077E9D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100003E30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003E68(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003EE0(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = type metadata accessor for Logger();
  sub_100003E68(v5, a2);
  sub_100003E30(v5, a2);
  v6 = [objc_opt_self() *a3];
  return Logger.init(_:)();
}

unint64_t sub_100003F54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000041A0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_100004060(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003F54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000046FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004758(v11);
  return v7;
}

void *sub_10000412C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_1007839B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000041A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000045CC(a1, a2);
  sub_1000041F8(&off_1007123E8);
  return v3;
}

uint64_t sub_1000041F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100460820(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1000042E8()
{
  v0 = UIApp;
  if (UIApp && (type metadata accessor for TTRIApplication(), (v1 = swift_dynamicCastClass()) != 0))
  {
    v2 = v1;
    v3 = objc_allocWithZone(type metadata accessor for PPTLaunch_ExtendedApp());
    v4 = v0;
    v5 = [v3 init];
    if (qword_1007674C0 != -1)
    {
      swift_once();
    }

    if (DeferredPromise.promise.getter())
    {
      sub_100004838(v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1007674B8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_100790D98);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = UIApp;
      *(v8 + 4) = UIApp;
      *v9 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Unepxected UIApplication class {application: %{public}@, expected: TTRIApplication}", v8, 0xCu);
      sub_1000079B4(v9, &unk_10076DF80);
    }
  }
}

void sub_10000456C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_1000045CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000412C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000412C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000046FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004758(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfo(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

id sub_1000047B8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100004838(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100790D98);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100004060(v6, v8, &v18);
    _os_log_impl(&_mh_execute_header, v10, v11, "TEST START {testName: %{public}s}", v12, 0xCu);
    sub_100004758(v13);
  }

  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = v6;
  v14[4] = v8;
  v14[5] = a1;
  v15 = v2;
  v16 = a1;
  v17 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

void sub_100004A40()
{
  v0 = objc_opt_self();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  [v0 setDefaultTimeZone:isa];
}

uint64_t sub_100004AD0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004B08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100004B5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100004BFC()
{
  sub_100004B5C(319, &unk_100792F00, &type metadata accessor for TTRListType);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100004CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004CF0()
{
  v1 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___attachmentThumbnailsManager;
  if (*(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___attachmentThumbnailsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___attachmentThumbnailsManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TTRAttachmentThumbnailSizeProvider();
    static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter();
    sub_100003540(0, &qword_100777780);
    static OS_dispatch_queue.main.getter();
    type metadata accessor for RDIDispatchQueue();
    static RDIDispatchQueue.utilityQueue.getter();
    type metadata accessor for TTRThumbnailGenerator();
    swift_allocObject();
    TTRThumbnailGenerator.init(queue:backgroundQueue:)();
    type metadata accessor for TTRAttachmentThumbnailsManager();
    swift_allocObject();
    v2 = TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_100004E18(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for TTRUserActivityType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v11 - 8);
  v146 = &v138 - v12;
  v145 = type metadata accessor for TTRProcessEnvironment();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v147 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v138 - v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    return;
  }

  v20 = v19;
  v140 = v18;
  v141 = v14;
  v156 = v3;
  v151 = v7;
  v21 = qword_100767508;
  v22 = a1;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100003E30(v23, qword_100792DD0);
  v25 = v22;
  v26 = a2;
  v27 = a3;
  v153 = v24;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v150 = v8;
  v149 = v10;
  v155 = v20;
  v152 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v31 = 136315650;
    v34 = [v25 session];
    v154 = v25;
    v35 = v34;
    v36 = [v34 persistentIdentifier];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_100004060(v37, v39, aBlock);

    *(v31 + 4) = v40;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v26;
    *(v31 + 22) = 2112;
    *(v31 + 24) = v27;
    *v32 = v26;
    v32[1] = v27;
    v41 = v26;
    v42 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "sceneWillConnect {scene: %s, session: %@, connectionOptions: %@}", v31, 0x20u);
    sub_100058000(&unk_10076DF80);
    swift_arrayDestroy();
    v20 = v155;

    sub_100004758(v33);
    v43 = v154;
  }

  else
  {

    v43 = v25;
  }

  v44 = [objc_allocWithZone(UIWindow) init];
  v45 = v156;
  v46 = *&v156[OBJC_IVAR___TTRIWindowSceneController_mainWindow];
  *&v156[OBJC_IVAR___TTRIWindowSceneController_mainWindow] = v44;
  v47 = v44;

  v154 = v43;
  v48._countAndFlagsBits = 0x7265646E696D6552;
  v49._countAndFlagsBits = 0xD000000000000026;
  v49._object = 0x800000010068FD30;
  v48._object = 0xE900000000000073;
  TTRLocalizedString(_:comment:)(v48, v49);
  v50 = String._bridgeToObjectiveC()();

  [v20 setTitle:v50];

  v51 = v47;
  [v47 setWindowScene:v20];
  v52 = OBJC_IVAR___TTRIWindowSceneController_store;
  v53 = *&v45[OBJC_IVAR___TTRIWindowSceneController_store];
  if (!v53)
  {
    __break(1u);
    goto LABEL_65;
  }

  v54 = *&v45[OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties] | (*&v45[OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties + 4] << 32);
  if (*&v45[OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties] == 2)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v55 = *&v45[OBJC_IVAR___TTRIWindowSceneController_attachmentThumbnailsManager];
  if (!v55)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v138 = OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties;
  v56 = *&v45[OBJC_IVAR___TTRIWindowSceneController_hashtagAssociationModule];
  if (!v56)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v57 = *&v45[OBJC_IVAR___TTRIWindowSceneController_hashtagAssociationModule + 8];
  v58 = &v45[OBJC_IVAR___TTRIWindowSceneController_lastSelectedListStorage];
  v60 = *&v45[OBJC_IVAR___TTRIWindowSceneController_lastSelectedListStorage];
  v59 = *(v58 + 1);
  type metadata accessor for TTRIRootAssembly();
  swift_unknownObjectRetain();

  v61 = v53;
  v62 = v156;
  v63 = sub_10000A33C(&v165, v61, v54 & 0x101010101010101, v55, v60, v59, v56, v57);

  swift_unknownObjectRelease();
  v64 = v51;
  v148 = v63;
  [v51 setRootViewController:v63];
  [v51 makeKeyAndVisible];
  sub_10000C36C(&v165, v166);
  v139 = sub_10000C3B0();
  sub_10000B0D8(&v165, aBlock);
  v65 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000D184(aBlock, &v62[v65], &qword_10077EBB0);
  swift_endAccess();
  v66 = *&v62[v52];
  if (!v66)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v67 = *sub_10000C36C(&v165, v166);
  v68 = v66;
  sub_10000D1EC(v67, v68);

  v69 = v152;
  v70 = [v152 cloudKitShareMetadata];
  v71 = v154;
  if (v70)
  {
    v72 = v70;
    v73 = [objc_allocWithZone(REMStore) initUserInteractive:1];
    sub_100003540(0, &qword_100777780);
    v74 = static OS_dispatch_queue.main.getter();
    v75 = swift_allocObject();
    *(v75 + 16) = v72;
    *(v75 + 24) = v62;
    v159 = sub_10060FA0C;
    v160 = v75;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    v158 = &unk_100733918;
    v76 = _Block_copy(aBlock);
    v77 = v72;
    v78 = v62;

    [v73 acceptShareWithMetadata:v77 queue:v74 completion:v76];

    _Block_release(v76);
  }

  v79 = [v69 userActivities];
  sub_100003540(0, &qword_1007865E0);
  sub_10000CF18(&unk_100792FF0, &qword_1007865E0);
  v80 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = sub_10000FBAC(v80);

  if (!v81 || (v82 = sub_10060AB00(v81), v81, (v82 & 1) == 0))
  {
    v86 = [v69 URLContexts];
    sub_100003540(0, &qword_10078E0E8);
    sub_10000CF18(&qword_100792FC0, &qword_10078E0E8);
    v87 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v88 = sub_10000FBC4(v87);

    if (v88 && (v89 = sub_10060CD78(v88), v88, v89) || (v90 = [v69 notificationResponse]) != 0 && (v91 = v90, v92 = sub_1006095D4(v90), v91, (v92 & 1) != 0) || (v93 = objc_msgSend(v69, "shortcutItem")) != 0 && (v94 = v93, v95 = sub_100608F88(v93), v94, v95))
    {
      v83 = 1;
      v84 = v71;
      v85 = v155;
      goto LABEL_24;
    }

    v111 = v143;
    static TTRProcessEnvironment.currentProcessEnvironment.getter();
    v112 = v146;
    TTRProcessEnvironment.targetNavigationURL.getter();
    (*(v144 + 8))(v111, v145);
    v113 = v147;
    v114 = v141;
    if ((*(v147 + 48))(v112, 1, v141) == 1)
    {
      sub_1000079B4(v112, &unk_100775660);
    }

    else
    {
      v115 = v140;
      (*(v113 + 32))(v140, v112, v114);
      v116 = v142;
      (*(v113 + 16))(v142, v115, v114);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v146 = v119;
        v120 = swift_slowAlloc();
        aBlock[0] = v120;
        *v119 = 136315138;
        v121 = URL.description.getter();
        v123 = v122;
        v152 = *(v113 + 8);
        (v152)(v116, v114);
        v124 = sub_100004060(v121, v123, aBlock);
        v62 = v156;

        v125 = v146;
        *(v146 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v117, v118, "Navigating to URL for window scene restoration {url: %s}", v125, 0xCu);
        sub_100004758(v120);
      }

      else
      {

        v152 = *(v113 + 8);
        (v152)(v116, v114);
      }

      v126 = sub_100461CFC(&_swiftEmptyArrayStorage);
      sub_10000794C(&v62[v65], &v163, &qword_10077EBB0);
      v127 = v140;
      v71 = v154;
      if (v164)
      {
        sub_100005FD0(&v163, aBlock);
        v85 = v155;
        if (*(v126 + 16) && (v128 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v129 & 1) != 0) && (sub_1000046FC(*(v126 + 56) + 32 * v128, &v163), swift_dynamicCast()))
        {
          if (v161 == 0xD000000000000023 && 0x80000001006821E0 == v162)
          {

            v130 = 2;
          }

          else
          {
            v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v137)
            {
              v130 = 2;
            }

            else
            {
              v130 = 0;
            }
          }
        }

        else
        {
          v130 = 0;
        }

        sub_10000C36C(aBlock, v158);
        v131 = sub_100341B68(v127, v130);
        sub_100004758(aBlock);

        (v152)(v127, v141);
        if (v139 || v131)
        {
          v83 = !v139 || v131;
          v84 = v71;
          goto LABEL_24;
        }

        goto LABEL_53;
      }

      sub_1000079B4(&v163, &qword_10077EBB0);

      (v152)(v127, v141);
    }

    v85 = v155;
    if (v139)
    {
      v83 = 0;
      v84 = v71;
      goto LABEL_24;
    }

LABEL_53:
    v132 = [v85 session];

    v84 = [v132 stateRestorationActivity];
    if (!v84)
    {
      v83 = 0;
      goto LABEL_25;
    }

    v133 = *&v62[v138];
    if (v133 != 2)
    {
      if ((v133 & 0x10000) != 0)
      {
        v83 = sub_10060AB00(v84);
      }

      else
      {
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&_mh_execute_header, v134, v135, "Not performing state restoration because not allowed by application capabilities", v136, 2u);
        }

        v83 = 0;
      }

      goto LABEL_24;
    }

LABEL_69:
    __break(1u);
    return;
  }

  v83 = 1;
  v84 = v71;
  v85 = v155;
LABEL_24:

LABEL_25:
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock[0] = v99;
    *v98 = 136315138;
    if (v83)
    {
      v100 = 1702195828;
    }

    else
    {
      v100 = 0x65736C6166;
    }

    if (v83)
    {
      v101 = 0xE400000000000000;
    }

    else
    {
      v101 = 0xE500000000000000;
    }

    v102 = sub_100004060(v100, v101, aBlock);

    *(v98 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v96, v97, "Finished handling connectionOptions in windowSceneWillConnect: {navigated: %s}", v98, 0xCu);
    sub_100004758(v99);
  }

  v103 = v150;
  type metadata accessor for TTRIDebugMenuManager();
  static TTRIDebugMenuManager.startIfNeeded(attachingToStatusBarWith:makeDebugMenuViewController:)();
  sub_100058000(&unk_100771E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  v105 = v149;
  v106 = v151;
  (*(v103 + 104))(v149, enum case for TTRUserActivityType.list(_:), v151);
  v107 = TTRUserActivityType.activityType.getter();
  v109 = v108;
  (*(v103 + 8))(v105, v106);
  *(inited + 32) = v107;
  *(inited + 40) = v109;
  sub_10000FBDC(inited);
  swift_setDeallocating();
  sub_100007E80(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v85 _showProgressWhenFetchingUserActivityForTypes:isa];

  sub_100004758(&v165);
}

uint64_t sub_100005FD0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100005FE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000602C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100792DD0);
  v1 = sub_100003E30(v0, qword_100792DD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100006118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v99 = a5;
  v97 = a3;
  v96 = a2;
  v94 = type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption();
  v102 = *(v94 - 8);
  v10 = __chkstk_darwin(v94);
  v100 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v89 = &v84 - v13;
  v14 = __chkstk_darwin(v12);
  v91 = &v84 - v15;
  __chkstk_darwin(v14);
  v101 = &v84 - v16;
  type metadata accessor for TTRCloudKitMigrationManager();
  static TTRCloudKitMigrationManager.shared.getter();
  type metadata accessor for TTRCloudKitNetworkActivityMonitor();
  static TTRCloudKitNetworkActivityMonitor.shared.getter();
  v17 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v18 = static TTRInteractorEditsCommitting<>.async.getter();
  *(&v109 + 1) = v17;
  v110 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  *&v108 = v18;
  v19 = type metadata accessor for TTRUserDefaults();
  v20 = static TTRUserDefaults.appUserDefaults.getter();
  v106 = v19;
  v107 = &protocol witness table for TTRUserDefaults;
  v105[0] = v20;
  v21 = objc_allocWithZone(type metadata accessor for TTRAccountsListsInteractor());
  swift_unknownObjectRetain();
  v22 = a1;
  v90 = TTRAccountsListsInteractor.init(store:committer:cloudKitMigrationManager:cloudKitNetworkActivityMonitor:perWindowLastSelectedListStorage:userDefaults:)();
  v23 = static TTRInteractorEditsCommitting<>.async.getter();
  *(&v109 + 1) = v17;
  v110 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  *&v108 = v23;
  v24 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v25 = v22;
  v88 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v87 = type metadata accessor for TTRIAccountsListsRouter();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26[3] = 0;
  swift_unknownObjectWeakInit();
  v26[4] = a6;
  v26[5] = a7;
  v93 = a7;
  sub_10000CF68(&qword_10076DBA8, type metadata accessor for TTRIAccountsListsRouter);
  sub_100003540(0, &qword_100769660);
  v95 = a6;
  swift_unknownObjectRetain();

  static UNUserNotificationCenter.ttr_unUserNotificationCenter.getter();
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v27 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  swift_allocObject();
  v99 = TTRIPrivacyChecker.init(delegate:unUserNotificationCenter:geoService:notificationsService:userDefaults:urgentAlarmService:)();
  sub_100003540(0, &qword_100777780);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for RDIDispatchQueue();
  static RDIDispatchQueue.storeQueue.getter();
  v86 = type metadata accessor for REMContactsProvider();
  swift_allocObject();
  v98 = REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
  v92 = v19;
  v28 = static TTRUserDefaults.appUserDefaults.getter();
  v29 = TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.getter();

  if (v29 == 2)
  {
    v30 = static REMFeatureFlags.isSolariumEnabled.getter();
    v31 = v94;
    v32 = v91;
  }

  else
  {
    if (qword_100766F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_10076DB68);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v31 = v94;
    v32 = v91;
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v29 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "TTRIAccountsListsAssembly: legacyTableViewBasedAccountsListsEnabled specified: %{BOOL}d", v37, 8u);
    }

    v30 = v29 ^ 1;
  }

  if (qword_100766F48 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100003E30(v38, qword_10076DB68);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = v30 & 1;
    _os_log_impl(&_mh_execute_header, v39, v40, "TTRIAccountsListsAssembly: using UICollectionView-based implementation: %{BOOL}d", v41, 8u);
  }

  static TTRAccountsListsViewModel.ModelCreationOption.defaultForCurrentPlatform(withAXSupportMacOSEnabled:)();
  LODWORD(v91) = v30;
  if (v30)
  {
    v42 = v89;
    static TTRAccountsListsViewModel.ModelCreationOption.addsSectionProxiesForVisibleSectionHeaders.getter();
  }

  else
  {
    *&v108 = &_swiftEmptyArrayStorage;
    sub_10000CF68(&qword_10076DBB0, &type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption);
    sub_100058000(&qword_10076DBB8);
    sub_10012F73C();
    v42 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  sub_10000CF68(&qword_10076DBC8, &type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption);
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10000CF68(&qword_10076DBD0, &type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption);
  v43 = v101;
  dispatch thunk of OptionSet.init(rawValue:)();
  v44 = v102;
  v46 = v102 + 16;
  v45 = *(v102 + 16);
  v47 = v100;
  v45(v100, v42, v31);
  v84 = v46;
  v85 = v45;
  sub_10000CF68(&qword_10076DBB0, &type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption);
  v48 = v47;
  dispatch thunk of SetAlgebra.formUnion(_:)();
  v49 = *(v44 + 8);
  v102 = v44 + 8;
  v89 = v49;
  (v49)(v42, v31);
  (v49)(v32, v31);
  v45(v48, v43, v31);
  *(&v109 + 1) = v86;
  v110 = &protocol witness table for REMContactsProvider;
  *&v108 = v98;
  v50 = v87;
  v106 = v87;
  v107 = &off_10071DCA0;
  v105[0] = v26;
  type metadata accessor for TTRIAccountsListsPresenter(0);
  v51 = swift_allocObject();
  v52 = sub_10000AE84(v105, v50);
  v86 = &v84;
  __chkstk_darwin(v52);
  v54 = (&v84 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = *v54;
  v104[3] = v50;
  v104[4] = &off_10071DCA0;
  v104[0] = v56;
  *(v51 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v51 + 5) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v57 = v95;
  swift_unknownObjectRetain();
  v94 = v26;

  v58 = v90;

  v59 = v88;
  v60 = v99;

  v61 = v96;

  v62 = v97;

  *(v51 + 6) = TTRModuleState.init(name:)();
  *(v51 + 19) = 0;
  sub_100058000(&qword_10076DBD8);
  swift_allocObject();
  *(v51 + 21) = TTRICollectionViewPresentationTreeManagementPresenterCapability.init()();
  sub_100058000(&unk_10078D430);
  swift_allocObject();
  *(v51 + 22) = TTRICollectionViewCollapsedStatesPresenterCapability.init(loggingPrefix:)();
  sub_100058000(&qword_10076DBE0);
  swift_allocObject();
  *(v51 + 23) = TTRMoveRemindersToListPresenterCapability.init()();
  v63 = v92;
  v64 = static TTRUserDefaults.appUserDefaults.getter();
  v103[3] = v63;
  v103[4] = &protocol witness table for TTRUserDefaults;
  v103[0] = v64;
  type metadata accessor for TTRTimeZoneOverrideMenuPresenterCapability();
  swift_allocObject();
  *(v51 + 24) = TTRTimeZoneOverrideMenuPresenterCapability.init(userDefaults:defaultTimeZone:currentTimeZone:)();
  v65 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  *&v51[v65] = TTRAccountsListsViewModel.init()();
  v66 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  v67 = type metadata accessor for REMAccountsListDataView.Model();
  (*(*(v67 - 8) + 56))(&v51[v66], 1, 1, v67);
  v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing] = 0;
  v68 = &v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction];
  *v68 = 0;
  v68[8] = -1;
  *&v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState] = 1;
  v69 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_permissionRequest;
  v70 = type metadata accessor for TTRPermissionConfiguration();
  (*(*(v70 - 8) + 56))(&v51[v69], 1, 1, v70);
  v71 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_menuSystemNotifier;
  *&v51[v71] = [objc_allocWithZone(type metadata accessor for TTRIMenuSystemNotifier()) init];
  v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot] = 2;
  v92 = v58;
  *(v51 + 8) = v58;
  *(v51 + 9) = &protocol witness table for TTRAccountsListsInteractor;
  v72 = v93;
  *(v51 + 10) = v57;
  *(v51 + 11) = v72;
  v93 = v59;
  *(v51 + 12) = v59;
  *(v51 + 13) = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v104, (v51 + 112));
  *(v51 + 25) = v61;
  *(v51 + 7) = v62;
  sub_10000B0D8(&v108, v103);
  type metadata accessor for TTRAccountsListsPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain();

  *(v51 + 20) = TTRAccountsListsPresenterCapability.init(contactsProvider:)();
  v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_tipKitProvider] = 0;
  *&v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker] = v60;
  v73 = v100;
  v85(&v51[OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModelCreationOption], v100, v31);
  sub_10000CF68(&qword_10076DBE8, type metadata accessor for TTRIAccountsListsPresenter);

  TTRAccountsListsPresenterCapability.delegate.setter();

  sub_10000CF68(&qword_10076DBF0, type metadata accessor for TTRIAccountsListsPresenter);

  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.delegate.setter();

  swift_allocObject();
  swift_weakInit();

  TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStateDidChange.setter();
  swift_unknownObjectRelease();

  v74 = v89;

  v74(v73, v31);
  sub_100004758(&v108);
  sub_100004758(v104);

  sub_100004758(v105);
  if (v91)
  {
    v75 = objc_allocWithZone(type metadata accessor for TTRIAccountsListsViewController_collectionView());

    v77 = sub_10000B410(v76, v75);
    v78 = &off_10072E828;
  }

  else
  {
    v79 = objc_allocWithZone(type metadata accessor for TTRIAccountsListsViewController());

    v77 = sub_10012F4F8(v80, v79);
    v78 = &off_100714EA8;
  }

  swift_unknownObjectWeakAssign();
  sub_10000CF68(&qword_10076DBF8, type metadata accessor for TTRIAccountsListsPresenter);

  v81 = v77;
  v82 = v92;
  TTRAccountsListsInteractor.delegate.setter();

  v74(v101, v31);
  *(v51 + 3) = v78;
  swift_unknownObjectWeakAssign();

  return v81;
}

uint64_t sub_1000070DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000715C()
{
  sub_100058000(&qword_100790DD0);
  swift_allocObject();
  result = DeferredPromise.init()();
  qword_100790DB0 = result;
  return result;
}

uint64_t sub_1000071A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100790D98);
  v1 = sub_100003E30(v0, qword_100790D98);
  if (qword_100767298 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A8718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100007284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000072CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003540(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100007310()
{
  sub_100004B5C(319, &qword_100792E60, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000073F8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___TTRIWindowSceneController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___TTRIWindowSceneController_mainWindow] = 0;
  v2 = &v0[OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = OBJC_IVAR___TTRIWindowSceneController_lastEnterForegroundDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR___TTRIWindowSceneController_store] = 0;
  *&v0[OBJC_IVAR___TTRIWindowSceneController_attachmentThumbnailsManager] = 0;
  v5 = &v0[OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties];
  *(v5 + 2) = 0;
  *v5 = 2;
  v6 = &v0[OBJC_IVAR___TTRIWindowSceneController_hashtagAssociationModule];
  type metadata accessor for PerWindowLastSelectedListStorage(0);
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC9Reminders32PerWindowLastSelectedListStorage_lastSelectedListInWindow;
  v9 = type metadata accessor for TTRListType();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = sub_100004CA8(&unk_100793020, type metadata accessor for PerWindowLastSelectedListStorage);
  v11 = &v0[OBJC_IVAR___TTRIWindowSceneController_lastSelectedListStorage];
  *v11 = v7;
  v11[1] = v10;
  v34.receiver = v0;
  v34.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v34, "init");
  v13 = UIApp;
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = v12;
  v15 = [v13 delegate];
  if (v15)
  {
    v16 = v15;
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (!v17)
    {
LABEL_8:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v18 = *&v16[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties] | (*&v16[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties + 4] << 32);
    if (*&v16[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties] != 2)
    {
      v19 = v17;
      v20 = *&v16[OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store];
      v21 = sub_100004CF0();
      v22 = sub_1000077D0(v33);
      v24 = v23;
      sub_100007DD8(v33, v30);
      v31 = v22;
      v32 = v24;
      swift_unknownObjectRetain();
      sub_1000079B4(v30, &qword_10077EB90);
      *&v14[OBJC_IVAR___TTRIWindowSceneController_delegate + 8] = v19;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v25 = *&v14[OBJC_IVAR___TTRIWindowSceneController_store];
      *&v14[OBJC_IVAR___TTRIWindowSceneController_store] = v20;
      v26 = v20;

      v27 = &v14[OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties];
      *(v27 + 2) = WORD2(v18);
      *v27 = v18;
      *&v14[OBJC_IVAR___TTRIWindowSceneController_attachmentThumbnailsManager] = v21;

      v28 = &v14[OBJC_IVAR___TTRIWindowSceneController_hashtagAssociationModule];
      *v28 = v22;
      v28[1] = v24;

      swift_unknownObjectRelease();
      return;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100003E30(v29, qword_100792DD0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("Cannot find TTRIWindowSceneControllerDelegate", 45, 2);
  __break(1u);
}

uint64_t sub_1000077D0(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___hashtagAssociation;
  swift_beginAccess();
  sub_10000794C(v1 + v3, &v16, &qword_10077EB88);
  if (!*(&v17 + 1))
  {
    sub_1000079B4(&v16, &qword_10077EB88);
    v4 = *(v1 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 sharedApplication];
    v8 = sub_100007A14(v6, v7);
    v10 = v9;
    v12 = v11;

    *(&v17 + 1) = type metadata accessor for TTRIHashtagAssociationController();
    *&v18 = v10;
    *&v16 = v8;
    *(&v18 + 1) = v12;
    sub_10000794C(&v16, v15, &qword_10077EB90);
    swift_beginAccess();
    sub_100007D68(v15, v1 + v3);
    swift_endAccess();
  }

  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v13 = v18;
  sub_100007DD8(v15, a1);
  return v13;
}

uint64_t sub_10000794C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100058000(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000079B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100058000(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100007A14(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRIHashtagAssociationBackgroundTaskPerformer();
  swift_allocObject();
  v5 = a2;
  v18 = v4;
  v19 = &protocol witness table for TTRIHashtagAssociationBackgroundTaskPerformer;
  v17 = TTRIHashtagAssociationBackgroundTaskPerformer.init(app:)();
  type metadata accessor for TTRHashtagAssociationInteractor();
  swift_allocObject();

  v6 = a1;
  v7 = TTRHashtagAssociationInteractor.init(store:backgroundTaskPerformer:)();
  type metadata accessor for TTRIHashtagAssociationPresenter();
  v8 = swift_allocObject();
  *(v8 + 3) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  v10 = type metadata accessor for TTRHashtagAssociationOperation();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *(v8 + 4) = v7;
  *(v8 + 5) = &protocol witness table for TTRHashtagAssociationInteractor;
  type metadata accessor for TTRHashtagAssociationPresenterCapability();
  swift_allocObject();
  swift_retain_n();
  *(v8 + 6) = TTRHashtagAssociationPresenterCapability.init(interactor:)();
  v11 = type metadata accessor for TTRIHashtagAssociationController();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC9Reminders32TTRIHashtagAssociationController_presenter];
  *v13 = v8;
  *(v13 + 1) = &off_100720B40;
  v16.receiver = v12;
  v16.super_class = v11;

  v14 = objc_msgSendSuper2(&v16, "init");

  *(v8 + 3) = &off_100719B50;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t type metadata accessor for TTRIHashtagAssociationPresenter()
{
  result = qword_10077F808;
  if (!qword_10077F808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007C38()
{
  sub_100007CEC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100007CEC()
{
  if (!qword_10077F818)
  {
    type metadata accessor for TTRHashtagAssociationOperation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077F818);
    }
  }
}

uint64_t sub_100007D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077EB88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100007DD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100007F3C(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100792DD0);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136315138;
    v13 = [v8 session];
    v14 = [v13 persistentIdentifier];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100004060(v15, v17, v31);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "sceneWillEnterForeground {scene: %s}", v11, 0xCu);
    sub_100004758(v12);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = v8;
    Date.init()();
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
    v21 = OBJC_IVAR___TTRIWindowSceneController_lastEnterForegroundDate;
    swift_beginAccess();
    sub_10000D184(v6, v2 + v21, &qword_1007757F0);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000082F8();
      swift_unknownObjectRelease();
    }

    v22 = (v2 + OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface);
    swift_beginAccess();
    v23 = v22[3];
    if (v23)
    {
      v24 = sub_10000C36C(v22, v23);
      v25 = *sub_10000C36C((*v24 + 48), *(*v24 + 72));
      swift_beginAccess();
      sub_100010540(v25 + 96, v31);
      sub_10000E224(&v29);
      sub_100015124(v31);
      if (v30)
      {
        sub_100005FD0(&v29, v32);
        v26 = v33;
        v27 = v34;
        sub_10000C36C(v32, v33);
        (*(v27 + 152))(v26, v27);

        sub_100004758(v32);
      }

      else
      {

        sub_1000079B4(&v29, &unk_100792FE0);
      }
    }

    else
    {
    }
  }
}

void sub_1000082F8()
{
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v58 - 8);
  __chkstk_darwin(v58);
  v62 = v53 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TTRAppDelegateUtils.TriggerSyncReason();
  v5 = *(v54 - 1);
  __chkstk_darwin(v54);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v8 - 8);
  v10 = v53 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10077E9D0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_10000FD44();

  type metadata accessor for TTRUserDefaults();
  v16 = static TTRUserDefaults.appUserDefaults.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v12 + 8))(v14, v11);
  TTRUserDefaults.activitySessionId.setter();

  v17 = static TTRUserDefaults.appUserDefaults.getter();
  Date.init()();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  TTRUserDefaults.activitySessionBeginTime.setter();

  v19 = *(v64 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
  v20 = v54;
  (*(v5 + 104))(v7, enum case for TTRAppDelegateUtils.TriggerSyncReason.appActivation(_:), v54);
  v21 = v19;
  static TTRAppDelegateUtils.triggerSync(store:reason:)();

  (*(v5 + 8))(v7, v20);
  v22 = [objc_opt_self() mainRunLoop];
  aBlock = v22;
  sub_100007284(&qword_10077EB60, &type metadata accessor for NSRunLoop.SchedulerTimeType.Stride);
  v23 = v55;
  v24 = v57;
  dispatch thunk of static SchedulerTimeIntervalConvertible.seconds(_:)();
  sub_100003540(0, &qword_10076DFB0);
  sub_1000072CC(&qword_10076DFC0, &qword_10076DFB0);
  TTRWidgetRefresher.setUpSubscriptionToReloadWidgetTimelinesUponStoreChange<A>(refreshScheduler:debounceInterval:)();
  (*(v56 + 8))(v23, v24);

  v25 = sub_1000090D0();
  v26 = *(v25 + 32);
  *(v25 + 32) = 1;
  sub_10001012C(v26);

  v27 = sub_100003540(0, &qword_100777780);
  v28 = v65;
  v29 = *(v65 + 104);
  v31 = v60;
  v30 = v61;
  LODWORD(v56) = enum case for DispatchQoS.QoSClass.background(_:);
  v55 = v29;
  (v29)(v60);
  v57 = v27;
  v32 = static OS_dispatch_queue.global(qos:)();
  v33 = *(v28 + 8);
  v65 = v28 + 8;
  v54 = v33;
  (v33)(v31, v30);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = sub_100010538;
  v74 = v34;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10001047C;
  v72 = &unk_100720868;
  v35 = _Block_copy(&aBlock);

  v36 = v59;
  static DispatchQoS.unspecified.getter();
  v68 = &_swiftEmptyArrayStorage;
  v37 = sub_100007284(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
  v38 = sub_100058000(&qword_100780A50);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50);
  v39 = v62;
  v53[0] = v38;
  v40 = v58;
  v53[1] = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  v41 = *(v67 + 8);
  v67 += 8;
  v41(v39, v40);
  v42 = *(v66 + 8);
  v66 += 8;
  v42(v36, v63);

  if (*(v64 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties) == 2)
  {
    __break(1u);
  }

  else
  {
    if ((*(v64 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_applicationRunProperties) & 0x1000000) != 0)
    {
      v43 = v60;
      v44 = v61;
      (v55)(v60, v56, v61);
      v45 = v40;
      v46 = static OS_dispatch_queue.global(qos:)();
      (v54)(v43, v44);
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = sub_100328198;
      v74 = v47;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_10001047C;
      v72 = &unk_100720890;
      v48 = _Block_copy(&aBlock);

      v49 = v59;
      static DispatchQoS.unspecified.getter();
      v68 = &_swiftEmptyArrayStorage;
      v50 = v62;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v48);

      v41(v50, v45);
      v42(v49, v63);
    }

    v51 = [objc_opt_self() daemonUserDefaults];
    static Locale.remPreferredLocalizations.getter();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v51 setPreferredLocalizations:isa];
  }
}

uint64_t sub_100008DCC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100008E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(qword_1007839C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000794C(v4, &v13, &unk_10076BA70);
      v5 = v13;
      v6 = v14;
      result = sub_100009044(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007DD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100008F48(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100058000(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_100009044(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100009044(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000FFE8(a1, a2, v4);
}

uint64_t sub_1000090D0()
{
  v1 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___applicationVisibilityChangeHandler;
  if (*(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___applicationVisibilityChangeHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___applicationVisibilityChangeHandler);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
    type metadata accessor for RDIDispatchQueue();
    v4 = v3;
    v5 = v0;
    v6 = static RDIDispatchQueue.storeQueue.getter();
    type metadata accessor for TTRApplicationVisibilityChangeHandler();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 32) = 0;
    *(v2 + 40) = v4;
    *(v2 + 48) = 0x4034000000000000;
    *(v2 + 56) = v6;
    *(v2 + 64) = 0;
    *(v2 + 24) = &off_1007207D0;
    swift_unknownObjectWeakAssign();
    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000091B4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100783DF0);
  v1 = sub_100003E30(v0, qword_100783DF0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000927C()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_backgroundTaskIdentifierForApplicationVisibilityChangeHandler);
  if ((*(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_backgroundTaskIdentifierForApplicationVisibilityChangeHandler + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = [objc_opt_self() sharedApplication];
    [v3 endBackgroundTask:v2];

    *v1 = 0;
    *(v1 + 8) = 1;
    if (qword_1007671E0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10077E9D0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "application did tear down background task for application visibility change handler", v6, 2u);
    }
  }
}

void sub_1000093DC(char a1, char a2)
{
  v3 = v2;
  if (qword_100767300 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100783DF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v9 = 136315394;
    if (a1)
    {
      v10 = 0x6E6F7268636E7973;
    }

    else
    {
      v10 = 0x6F7268636E797361;
    }

    if (a1)
    {
      v11 = 0xEB0000000073756FLL;
    }

    else
    {
      v11 = 0xEC00000073756F6ELL;
    }

    v12 = sub_100004060(v10, v11, v21);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a2)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_100004060(v13, v14, v21);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Application visibility change handler will request to update client connections {executionMode: %s, shouldKeepAlive: %s}", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v3 + 40);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a1 & 1;
  v19 = a2 & 1;
  *(v18 + 17) = v19;
  *(v18 + 24) = v17;
  v21[4] = sub_100010468;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_100009DE4;
  v21[3] = &unk_100729C00;
  v20 = _Block_copy(v21);

  [v16 requestToUpdateClientConnectionsAsynchronously:(a1 & 1) == 0 shouldKeepAlive:v19 completion:v20];
  _Block_release(v20);
}

uint64_t sub_1000096B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000096EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009774(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000098A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000098B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000098C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000098D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000098E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000098F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000099A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000099B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000099C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000099D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000099E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000099F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100009DE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100009E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100009EE0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078D290);
  v1 = sub_100003E30(v0, qword_10078D290);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100009FA8()
{
  sub_100013DF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000A0DC()
{
  result = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10000A168()
{
  result = type metadata accessor for TTRListDetailBadgeViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A22C()
{
  result = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRListBadgeView.Shape();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TTRListBadgeView.ImageParams();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

char *sub_10000A33C(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v69 = a8;
  v76 = a1;
  v70 = type metadata accessor for TTRAuthorizationSource();
  v15 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIDynamicDateGlyphCache();
  swift_allocObject();
  v18 = TTRIDynamicDateGlyphCache.init()();
  v75 = sub_100006118(a2, a4, v18, a5, a6, a7, a8);
  v77 = v19;
  v68 = v20;

  type metadata accessor for RDIDispatchQueue();
  v21 = static RDIDispatchQueue.storeQueue.getter();
  type metadata accessor for TTRIRootInteractor();
  v22 = swift_allocObject();
  v71 = v22;
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 32) = a2;
  *(v22 + 40) = v21;
  v72 = a3;
  v74 = (a3 >> 8) & 1;
  *(v22 + 48) = BYTE1(a3) & 1;
  v23 = type metadata accessor for TTRUserDefaults();
  v24 = a2;
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  *(&v80 + 1) = v23;
  v81 = &protocol witness table for TTRUserDefaults;
  *&v79 = v25;
  type metadata accessor for TTRICloudIsOffProvider();
  v26 = swift_allocObject();
  *(v26 + 72) = 0;
  *(v26 + 16) = v24;
  v73 = HIDWORD(a3) & 1;
  *(v26 + 24) = BYTE4(a3) & 1;
  sub_100005FD0(&v79, v26 + 32);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10055736C;
  *(v28 + 24) = v27;
  *(v26 + 80) = sub_100557388;
  *(v26 + 88) = v28;
  v29 = type metadata accessor for TTRIRootRouter();
  swift_allocObject();
  v30 = sub_10000B9C8(v77, v68, a4, a7, v69);
  type metadata accessor for TTRGeoLocationService();
  v31 = v24;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  static TTRAuthorizationSource.defaultForLocations.getter();
  v32 = static TTRGeoLocationService.newService(authorizationSource:)();
  (*(v15 + 8))(v17, v70);
  sub_10000BA90(&qword_10078D1A0, type metadata accessor for TTRIRootRouter);
  sub_10000BAD8();

  static UNUserNotificationCenter.ttr_unUserNotificationCenter.getter();
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  swift_allocObject();
  v68 = TTRIPrivacyChecker.init(delegate:unUserNotificationCenter:geoService:notificationsService:userDefaults:urgentAlarmService:)();
  v69 = sub_10000BA90(&qword_10078D1A8, type metadata accessor for TTRIRootInteractor);
  *(&v80 + 1) = v29;
  v81 = &off_1007242D0;
  *&v79 = v30;
  v70 = type metadata accessor for TTRIRootPresenter();
  v36 = swift_allocObject();
  v37 = sub_10000AE84(&v79, v29);
  __chkstk_darwin(v37);
  v39 = (&v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v39;
  v78[3] = v29;
  v78[4] = &off_1007242D0;
  v78[0] = v41;
  *(v36 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRStartupItemQueue();
  swift_allocObject();
  swift_retain_n();
  v42 = v34;
  v43 = v71;

  *(v36 + 120) = TTRStartupItemQueue.init()();
  v44 = objc_allocWithZone(TTRUndoManager);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 initWithDebugIdentifier:v45];

  *(v36 + 128) = v46;
  v47 = objc_allocWithZone(TTRUndoManager);
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 initWithDebugIdentifier:v48];

  *(v36 + 136) = v49;
  v50 = objc_allocWithZone(TTRUndoManager);
  v51 = String._bridgeToObjectiveC()();
  v52 = [v50 initWithDebugIdentifier:v51];

  *(v36 + 144) = v52;
  *(v36 + 160) = 0;
  sub_100058000(&qword_10077FE00);
  swift_allocObject();
  *(v36 + 168) = InitiallyEmptyCurrentValueSubject.init()();
  v53 = v69;
  *(v36 + 32) = v43;
  *(v36 + 40) = v53;
  sub_10000B0D8(v78, v36 + 48);
  v54 = v68;
  *(v36 + 88) = v42;
  *(v36 + 96) = v54;
  *(v36 + 104) = v26;
  v55 = v72;
  *(v36 + 112) = v72 & 1;
  *(v36 + 113) = v74;
  *(v36 + 114) = BYTE2(v55) & 1;
  *(v36 + 115) = BYTE3(v55) & 1;
  *(v36 + 116) = v73;
  *(v36 + 117) = BYTE5(v55) & 1;
  v56 = *(v36 + 128);
  type metadata accessor for TTRUndoNavigationPresenterCapability();
  swift_allocObject();
  v57 = v42;

  v58 = v56;
  *(v36 + 152) = TTRUndoNavigationPresenterCapability.init(undoManager:)();
  sub_10000BA90(&qword_10078D1B0, type metadata accessor for TTRIRootPresenter);

  TTRUndoNavigationPresenterCapability.delegate.setter();

  v59 = v70;
  TTRStartupItemQueue.enqueueItem<A>(target:action:)();

  v60 = v59;
  TTRStartupItemQueue.enqueueItem<A>(target:action:)();

  sub_100004758(v78);
  sub_100004758(&v79);
  v61 = objc_allocWithZone(type metadata accessor for TTRIRootViewController());

  v62 = v75;
  v63 = sub_10000BBE8(v36, v62, 0, v61);
  *(v43 + 24) = &off_1007211E0;
  swift_unknownObjectWeakAssign();
  *(v36 + 24) = &off_10071F348;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v30 + 24) = &off_100721158;
  swift_unknownObjectWeakAssign();
  *(v77 + 40) = &off_100721168;
  swift_unknownObjectWeakAssign();
  v64 = v76;
  v76[3] = v60;
  v64[4] = &off_1007211E8;
  v65 = v64;

  *v65 = v36;

  swift_unknownObjectRelease();
  return v63;
}

uint64_t sub_10000ABF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AC2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000AC64()
{
  type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption();
  if (v0 <= 0x3F)
  {
    sub_10000AE30(319, &qword_100782F38, &type metadata accessor for REMAccountsListDataView.Model);
    if (v1 <= 0x3F)
    {
      sub_10000AE30(319, &unk_100782F40, &type metadata accessor for TTRPermissionConfiguration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000AE30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10000AE84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

char *sub_10000AF08()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC9Reminders22TTRIMenuSystemNotifier_observer] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v11, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  v10[3] = ObjectType;
  v7 = [objc_opt_self() mainQueue];
  v8 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_10000B070(v10);
  *&v4[OBJC_IVAR____TtC9Reminders22TTRIMenuSystemNotifier_observer] = v8;

  return v4;
}

uint64_t sub_10000B070(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076AE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B0D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for TTRIAccountsListsViewController_collectionView()
{
  result = qword_10078D3D0;
  if (!qword_10078D3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B188()
{
  sub_10000B2BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000B2BC()
{
  if (!qword_10078D3E0)
  {
    type metadata accessor for TTRIAccountsListsSelection(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10078D3E0);
    }
  }
}

uint64_t sub_10000B334()
{
  result = type metadata accessor for TTRAccountsListsPinnedListSelection();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMHashtagLabelSpecifier();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

id sub_10000B410(uint64_t a1, char *a2)
{
  v36 = a1;
  ObjectType = swift_getObjectType();
  v37 = type metadata accessor for UICollectionLayoutListConfiguration();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v35 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideChangedObserver] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideTipController] = 0;
  v12 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
  v13 = type metadata accessor for TTRIAccountsListsSelection(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a2[v12], 1, 1, v13);
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropCoordinator] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController] = 0;
  v15 = &a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addReminderButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___searchButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___timeZoneOverrideButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___editButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuWithBadgeButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_accountSpinnerVisibleByAccountID] = &_swiftEmptyDictionarySingleton;
  v16 = &a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration];
  v16[2] = -2;
  *v16 = -258;
  v17 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dropExceedsMaximumNumberOfPinnedListsTracker;
  type metadata accessor for TTRIAccountsListsDropExceedsMaximumNumberOfPinnedListsTracker();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *&a2[v17] = v18;
  v19 = v13;
  v20 = v6;
  v21 = v35;
  v14(&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_lastAppliedSelection], 1, 1, v19);
  *&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_itemCollapsedStatesOverrideCancellable] = 0;
  v22 = &a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  *v22 = v36;
  *(v22 + 1) = &off_100727CF8;
  (*(v21 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v20);
  v23 = *(v21 + 16);
  v23(&a2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_listAppearance], v11, v20);
  sub_100003540(0, &qword_10077BFE0);
  v23(v9, v11, v20);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v24 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v3 + 8))(v5, v37);
  v39.receiver = a2;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, "initWithCollectionViewLayout:", v24);

  v26 = v25;
  [v26 setTitle:0];
  v27 = [v26 navigationItem];
  [v27 setLargeTitleDisplayMode:2];

  v28 = [v26 navigationItem];
  [v28 setTitle:0];

  v29 = [v26 navigationItem];
  [v29 setSearchBarPlacementAllowsExternalIntegration:1];

  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    v30 = [v26 navigationItem];
    v31._countAndFlagsBits = 0x737473694CLL;
    v32._object = 0x80000001006714B0;
    v31._object = 0xE500000000000000;
    v32._countAndFlagsBits = 0xD00000000000002CLL;
    TTRLocalizedString(_:comment:)(v31, v32);
    v33 = String._bridgeToObjectiveC()();

    [v30 setBackButtonTitle:v33];
  }

  (*(v21 + 8))(v11, v20);
  return v26;
}

uint64_t sub_10000B9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v11 = swift_allocObject();
  *(v5 + 80) = v11;
  *(v5 + 88) = &_swiftEmptySetSingleton;
  *(v5 + 136) = 13;
  *(v11 + 16) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return v5;
}

uint64_t sub_10000BA90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000BAD8()
{
  result = qword_100769660;
  if (!qword_100769660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100769660);
  }

  return result;
}

unint64_t sub_10000BB24(uint64_t a1)
{
  result = sub_10000BB4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000BB4C()
{
  result = qword_10076ABB8;
  if (!qword_10076ABB8)
  {
    type metadata accessor for TTRIRootInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076ABB8);
  }

  return result;
}

char *sub_10000BBE8(uint64_t a1, void *a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_pendingNavigateToRootPromise] = 0;
  *&a4[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding] = 0;
  v9 = &a4[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_presenter];
  *v9 = a1;
  *(v9 + 1) = &off_100721240;
  *&a4[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_ttrMainViewController] = a2;
  v10 = objc_allocWithZone(type metadata accessor for TTRIMainNavigationController());
  v11 = a2;
  v12 = [v10 initWithRootViewController:v11];
  *&a4[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController] = v12;
  v13 = [v12 navigationBar];
  [v13 setPrefersLargeTitles:1];

  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for TTRIRootViewEmptyViewController()) init];
  }

  v15 = objc_allocWithZone(UINavigationController);
  v16 = a3;
  v17 = [v15 initWithRootViewController:v14];
  *&a4[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController] = v17;
  v18 = [v17 navigationBar];
  [v18 setPrefersLargeTitles:1];

  v23.receiver = a4;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, "initWithStyle:", 1);
  [v19 setDelegate:v19];
  v20 = OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController;
  [*&v19[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController] setDelegate:v19];
  [v19 setPreferredDisplayMode:2];
  [v19 setPreferredSplitBehavior:1];

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    [v19 _setUsesExtraWidePrimaryColumn:1];
  }

  [v19 setViewController:*&v19[v20] forColumn:0];
  v21 = *&v19[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController];
  [v19 setViewController:v21 forColumn:2];

  return v19;
}

void sub_10000BF24(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [v3 childViewControllers];
  sub_10000C0BC();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = a1;
  v13[2] = &v15;
  LOBYTE(v7) = sub_10000C108(sub_10001D5BC, v13, v8);

  if (v7)
  {
    if (qword_1007671D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_10077E8C8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Tried to push the same view controller onto main navigation controller twice.", v12, 2u);
    }
  }

  else
  {
    v14.receiver = v3;
    v14.super_class = ObjectType;
    objc_msgSendSuper2(&v14, "pushViewController:animated:", a1, a2 & 1);
  }
}

unint64_t sub_10000C0BC()
{
  result = qword_10076AD28;
  if (!qword_10076AD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076AD28);
  }

  return result;
}

_BYTE *sub_10000C140@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10000C158(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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

void *sub_10000C36C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_10000C3B0()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v5 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  sub_100058000(&qword_10077FE00);
  swift_allocObject();
  v0[21] = InitiallyEmptyCurrentValueSubject.init()();

  v8 = v0[4];
  v9 = sub_10000C6F0();
  if (v9)
  {
    v10 = sub_10009337C();
    v11 = sub_100093644(v10);

    v12 = v11 != 0;
    if (v11)
    {
      sub_10000C36C(v0 + 6, v0[9]);
      v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      sub_1003935C0(v11, v7, v0, &off_100721110, v22);

      sub_100004758(v22);
      sub_1000079B4(v7, &unk_10076BB50);
    }

    v14 = *(v8 + 32);
    type metadata accessor for TTRWelcomeStyle();
    inited = swift_initStackObject();
    *(inited + 16) = v14;
    v16 = v14;
    v17 = sub_100473A68();
    swift_setDeallocating();

    sub_10000C36C((v1 + 48), *(v1 + 72));
    sub_100450A40(1, v17, v1);
    sub_10012EDC8(v17);
  }

  else
  {
    v12 = 0;
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  *(v20 + 32) = v9 & 1;
  *(v20 + 40) = v1;
  sub_10009E31C(0, 0, v4, &unk_10063BEA0, v20);

  return v12;
}

uint64_t sub_10000C6B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C6F0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  if (*(v0 + 48) != 1)
  {
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_10076AAE8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;

      _os_log_impl(&_mh_execute_header, v16, v17, "Should not show welcome screen {allowWelcomeScreen: %{BOOL}d}", v18, 8u);
    }

    else
    {
    }

    goto LABEL_18;
  }

  v9 = objc_opt_self();
  v10 = [v9 daemonUserDefaults];
  v11 = [v10 enableWelcomeScreen];

  v12 = [v9 daemonUserDefaults];
  v13 = [v12 forceShowWelcomeScreen];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v19 = [v9 daemonUserDefaults];
    v14 = [v19 forceShowWhatsNewScreen];
  }

  type metadata accessor for TTRUserDefaults();
  v20 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.lastSeenWelcomeScreenVersion.getter();

  v21 = TTRUserDefaults.WelcomeScreenVersion.rawValue.getter();
  v22 = *(v3 + 8);
  v22(v8, v2);
  static TTRUserDefaults.WelcomeScreenVersion.current.getter();
  v23 = TTRUserDefaults.WelcomeScreenVersion.rawValue.getter();
  v22(v6, v2);
  if (v21 >= v23)
  {
    v25 = *(v1 + 32);
    type metadata accessor for TTRWelcomeStyle();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    v27 = v25;
    v24 = sub_100473D8C();
    swift_setDeallocating();

    if (!v11)
    {
LABEL_18:
      v29 = 0;
      return v29 & 1;
    }
  }

  else
  {
    v24 = 0;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v21 < v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = v14;
  }

  v29 = v28 | v24;
  return v29 & 1;
}

uint64_t sub_10000CA34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_100020A34;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000CE60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100793010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CF18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003540(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CF68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CFB0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076DB68);
  v1 = sub_100003E30(v0, qword_10076DB68);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000D0BC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076AAE8);
  v1 = sub_100003E30(v0, qword_10076AAE8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000D184(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100058000(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D1EC(uint64_t a1, void *a2)
{
  v23[3] = type metadata accessor for TTRIRootPresenter();
  v23[4] = &off_1007211E8;
  v23[0] = a1;
  v4 = qword_1007674B8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100790D98);
  sub_10000B0D8(v23, v21);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    sub_10000B0D8(v21, v19);
    sub_100058000(&qword_10077FDB0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100004758(v21);
    v13 = sub_100004060(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Did create root module {rootModule: %{public}s}", v8, 0xCu);
    sub_100004758(v9);
  }

  else
  {

    sub_100004758(v21);
  }

  if (byte_100790DB8 == 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Ignoring creating root module because a previous one was already created", v16, 2u);
    }
  }

  else
  {
    byte_100790DB8 = 1;
    if (qword_1007674C0 != -1)
    {
      swift_once();
    }

    sub_10000B0D8(v23, v21);
    v22 = a2;
    v17 = a2;
    DeferredPromise.resolve(_:)();
    sub_1000079B4(v21, &unk_100793010);
  }

  return sub_100004758(v23);
}

uint64_t sub_10000D4CC()
{

  return _swift_deallocObject(v0, 304, 7);
}

uint64_t sub_10000D59C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D5DC()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000D73C()
{

  sub_100004758(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000D784(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10000D850(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10000D8A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D8E8()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_100263FE4(*(v5 + 16), *(v5 + 24));
  v6 = v1[9];
  v7 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000DA30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DA78()
{
  v1 = (type metadata accessor for TTRIGroupMembershipViewModel.List(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000DB68()
{
  sub_100528EEC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DBBC(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10000DC14()
{

  if (*(v0 + 104))
  {
  }

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10000DCAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t storeEnumTagSinglePayload for NodeChange(uint64_t result, int a2, int a3)
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

uint64_t sub_10000DD28(uint64_t a1, char a2, char a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100767300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_100783DF0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v8 = 136315650;
      if (a2)
      {
        v9 = 0x6E6F7268636E7973;
      }

      else
      {
        v9 = 0x6F7268636E797361;
      }

      if (a2)
      {
        v10 = 0xEB0000000073756FLL;
      }

      else
      {
        v10 = 0xEC00000073756F6ELL;
      }

      v11 = sub_100004060(v9, v10, v29);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      if (a3)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (a3)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = sub_100004060(v12, v13, v29);

      *(v8 + 14) = v14;
      *(v8 + 22) = 2080;
      swift_getErrorValue();
      v15 = Error.rem_errorDescription.getter();
      v17 = sub_100004060(v15, v16, v29);

      *(v8 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Application visibility change handler failed to request to update client connections {executionMode: %s, shouldKeepAlive: %s, error: %s}", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100767300 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100783DF0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v21 = 136315394;
      if (a2)
      {
        v22 = 0x6E6F7268636E7973;
      }

      else
      {
        v22 = 0x6F7268636E797361;
      }

      if (a2)
      {
        v23 = 0xEB0000000073756FLL;
      }

      else
      {
        v23 = 0xEC00000073756F6ELL;
      }

      v24 = sub_100004060(v22, v23, v29);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      if (a3)
      {
        v25 = 1702195828;
      }

      else
      {
        v25 = 0x65736C6166;
      }

      if (a3)
      {
        v26 = 0xE400000000000000;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      v27 = sub_100004060(v25, v26, v29);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Application visibility change handler did request to update client connections {executionMode: %s, shouldKeepAlive: %s}", v21, 0x16u);
      swift_arrayDestroy();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000927C();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10000E188(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E1D0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10000E224@<D0>(uint64_t a1@<X8>)
{
  sub_100010540(v1, v11);
  switch(v12)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      sub_100005FD0(v11, a1);
      break;
    case 13:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    default:
      sub_100005FD0(v11, v8);
      v3 = v9;
      v4 = v10;
      v5 = sub_10000C36C(v8, v9);
      *(a1 + 24) = v3;
      *(a1 + 32) = *(v4 + 8);
      v6 = sub_1000317B8(a1);
      (*(*(v3 - 8) + 16))(v6, v5, v3);
      sub_100004758(v8);
      break;
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRootRouter.CurrentDetailContents(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 0xD)
  {
    v3 = *a2 + 13;
  }

  switch(v3)
  {
    case 0u:
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1);
      *(a1 + 40) = 0;
      return a1;
    case 1u:
      v13 = *(a2 + 24);
      *(a1 + 24) = v13;
      (**(v13 - 8))(a1);
      v6 = 1;
      goto LABEL_18;
    case 2u:
      v10 = *(a2 + 24);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1);
      v6 = 2;
      goto LABEL_18;
    case 3u:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1);
      v6 = 3;
      goto LABEL_18;
    case 4u:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1);
      v6 = 4;
      goto LABEL_18;
    case 5u:
      v14 = *(a2 + 24);
      *(a1 + 24) = v14;
      (**(v14 - 8))(a1);
      v6 = 5;
      goto LABEL_18;
    case 6u:
      v16 = *(a2 + 24);
      *(a1 + 24) = v16;
      (**(v16 - 8))(a1);
      v6 = 6;
      goto LABEL_18;
    case 7u:
      v12 = *(a2 + 24);
      *(a1 + 24) = v12;
      (**(v12 - 8))(a1);
      v6 = 7;
      goto LABEL_18;
    case 8u:
      v18 = *(a2 + 24);
      *(a1 + 24) = v18;
      (**(v18 - 8))(a1);
      v6 = 8;
      goto LABEL_18;
    case 9u:
      v9 = *(a2 + 24);
      *(a1 + 24) = v9;
      (**(v9 - 8))(a1);
      v6 = 9;
      goto LABEL_18;
    case 0xAu:
      v17 = *(a2 + 24);
      *(a1 + 24) = v17;
      (**(v17 - 8))(a1);
      v6 = 10;
      goto LABEL_18;
    case 0xBu:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1);
      v6 = 11;
      goto LABEL_18;
    case 0xCu:
      v8 = *(a2 + 24);
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1);
      v6 = 12;
LABEL_18:
      *(a1 + 40) = v6;
      break;
    default:
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      *(a1 + 25) = *(a2 + 25);
      break;
  }

  return a1;
}

uint64_t destroy for TTRIRootRouter.CurrentDetailContents(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xD)
  {
    v1 = *a1 + 13;
  }

  if (v1 <= 0xC)
  {
    return sub_100004758(a1);
  }

  return a1;
}

uint64_t sub_10000E7B4(void *a1, uint64_t a2)
{
  v4 = [a1 viewControllerForColumn:0];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();

    if (v6)
    {
      v7 = [a1 viewControllerForColumn:2];
      if (v7)
      {
        v8 = v7;
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9 && (v10 = [v9 topViewController]) != 0)
        {
          v19 = v10;
          v11 = v10;
          sub_100003540(0, &qword_10076AD28);
          v12 = v11;
          sub_100058000(&qword_10077BDF8);
          if (swift_dynamicCast())
          {
            sub_100005FD0(v17, v20);
            v13 = v21;
            v14 = v22;
            sub_10000C36C(v20, v21);
            v15 = (*(v14 + 8))(v13, v14);

            sub_100004758(v20);
            if ((v15 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {

            v18 = 0;
            memset(v17, 0, sizeof(v17));
            sub_1000079B4(v17, &qword_10077BE00);
          }
        }

        else
        {
        }
      }
    }
  }

  return a2;
}

void sub_10000E9E4(int a1)
{
  v2 = v1;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100782E90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100004060(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accounts list rootViewCollapseStateDidChange {isCollapsed: %s}", v7, 0xCu);
    sub_100004758(v8);
  }

  v12 = *(v2 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v12 == 2 || ((v12 ^ a1) & 1) != 0)
  {
    *(v2 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState) = 1;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v13 + 80))(a1 & 1, ObjectType, v13);

      swift_unknownObjectRelease();
    }
  }
}

void sub_10000EBF8(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v4 - 8);
  v90 = v4;
  __chkstk_darwin(v4);
  v87 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076B7B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v84 - v9;
  v11 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v84 - v12);
  v14 = type metadata accessor for TTRIAccountsListsSelection(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v84 - v19;
  if (![v2 isViewLoaded])
  {
    return;
  }

  v91 = a1;
  v85 = v7;
  sub_100011B5C(0);
  v21 = [v2 collectionView];
  if (!v21)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v22 = v21;
  v23 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  v24 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot;
  v25 = *(v23 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v25 == 2)
  {
    LOBYTE(v25) = sub_100444328(*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]);
  }

  [v22 setSelectionFollowsFocus:(v25 & 1) == 0];

  v26 = *(v23 + v24);
  if (v26 == 2)
  {
    LOBYTE(v26) = sub_100444328(v23);
  }

  v27 = v91;
  [v2 setClearsSelectionOnViewWillAppear:v26 & 1];
  sub_1000165F0();
  v28 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v29 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!v29)
  {
    goto LABEL_60;
  }

  v30 = v29;
  v31 = static REMFeatureFlags.isSolariumEnabled.getter();
  v32 = v27;
  if (v31)
  {
    v33 = [objc_opt_self() currentDevice];
    v34 = [v33 userInterfaceIdiom];
    v84 = v13;
    v35 = v20;
    v36 = v18;
    v37 = v14;
    v38 = v2;
    v39 = v15;
    v40 = v10;
    v41 = v28;
    v42 = v34;

    v27 = v91;
    v43 = v42 == 1;
    v28 = v41;
    v10 = v40;
    v15 = v39;
    v2 = v38;
    v14 = v37;
    v18 = v36;
    v20 = v35;
    v13 = v84;
    v44 = v43;
    v32 = v44 & v91;
  }

  [v30 setObscuresBackgroundDuringPresentation:v32 & 1];

  v45 = *&v2[v28];
  if (v27)
  {
    if (v45)
    {
      [v45 setAutomaticallyShowsSearchResultsController:1];
      v46 = *&v2[v28];
      if (v46)
      {
        if ([v46 isActive])
        {
          goto LABEL_19;
        }

        v47 = *&v2[v28];
        if (!v47)
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if ([v47 isBeingPresented])
        {
LABEL_19:
          v48 = *&v2[v28];
          if (v48)
          {
            v49 = [v48 searchBar];
            v50 = [v49 text];

            if (!v50)
            {
              goto LABEL_40;
            }

            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = HIBYTE(v53) & 0xF;
            if ((v53 & 0x2000000000000000) == 0)
            {
              v54 = v51 & 0xFFFFFFFFFFFFLL;
            }

            if (v54)
            {
              v55 = 1;
            }

            else
            {
LABEL_40:
              v55 = 0;
            }

            goto LABEL_43;
          }

          goto LABEL_64;
        }

        goto LABEL_42;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if (!v45)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  [v45 setShowsSearchResultsController:0];
  sub_10055A0F4(v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_10056B878(v13, v20, type metadata accessor for TTRIAccountsListsSelection);
    sub_10056B878(v20, v18, type metadata accessor for TTRIAccountsListsSelection);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v65 = swift_projectBox();
      sub_10000794C(v65, v10, &qword_10076B7B8);
      sub_1000079B4(v10, &unk_10076B7C0);

      v55 = 1;
      goto LABEL_43;
    }

    sub_10056B948(v18, type metadata accessor for TTRIAccountsListsSelection);
    goto LABEL_42;
  }

  sub_1000079B4(v13, &unk_10076B7C0);
  v56 = *&v2[v28];
  if (!v56)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (([v56 isActive] & 1) == 0)
  {
    v57 = *&v2[v28];
    if (!v57)
    {
LABEL_69:
      __break(1u);
      return;
    }

    if (![v57 isBeingPresented])
    {
      goto LABEL_42;
    }
  }

  v58 = *&v2[v28];
  if (!v58)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v59 = [v58 searchBar];
  v60 = [v59 text];

  if (!v60)
  {
LABEL_42:
    v55 = 2;
    goto LABEL_43;
  }

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = HIBYTE(v63) & 0xF;
  if ((v63 & 0x2000000000000000) == 0)
  {
    v64 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v64)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2;
  }

LABEL_43:
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100003E30(v66, qword_10078D290);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v69 = 136315394;
    if (v27)
    {
      v70 = 1702195828;
    }

    else
    {
      v70 = 0x65736C6166;
    }

    if (v27)
    {
      v71 = 0xE400000000000000;
    }

    else
    {
      v71 = 0xE500000000000000;
    }

    v72 = v28;
    v73 = sub_100004060(v70, v71, aBlock);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    v92 = v55;
    sub_100058000(&qword_10078D4F8);
    v74 = String.init<A>(describing:)();
    v76 = sub_100004060(v74, v75, aBlock);

    *(v69 + 14) = v76;
    v28 = v72;
    _os_log_impl(&_mh_execute_header, v67, v68, "Accounts list view rootViewCollapseStateDidChange {isCollapsed: %s, shouldPerformSearch: %s}", v69, 0x16u);
    swift_arrayDestroy();
  }

  v77 = v85;
  if (v55 != 2)
  {
    if (v55)
    {
      sub_100003540(0, &qword_100777780);
      v78 = static OS_dispatch_queue.main.getter();
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10056B7D8;
      aBlock[5] = v79;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_10072E968;
      v80 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100014F04(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50);
      v81 = v87;
      v82 = v90;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v80);

      (*(v89 + 8))(v81, v82);
      (*(v86 + 8))(v77, v88);
      return;
    }

    v83 = *&v2[v28];
    if (v83)
    {
      [v83 setActive:0];
      return;
    }

    goto LABEL_67;
  }
}

void sub_10000F68C()
{
  if (!qword_10078EBC8)
  {
    type metadata accessor for TTRAccountsListsPinnedListSelection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10078EBC8);
    }
  }
}

id sub_10000F6E4()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_10056B7E0;
  v3[4] = v0;
  v3[5] = sub_10056B810;
  v3[6] = v1;
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v8[4] = sub_10001F2CC;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001F170;
  v8[3] = &unk_10072E9B8;
  v5 = _Block_copy(v8);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  return v6;
}

uint64_t sub_10000F870()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000F8B8()
{
  sub_100013E8C(319, &qword_1007683C0, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration);
  if (v0 <= 0x3F)
  {
    sub_100013E8C(319, &qword_1007683C8, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    if (v1 <= 0x3F)
    {
      sub_100014068(319, &qword_1007683D0, &qword_1007683D8);
      if (v2 <= 0x3F)
      {
        sub_100014068(319, &qword_1007683E0, &qword_1007683E8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10000FA7C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000FBA0(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_10000FBA0(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_10000FBA0(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_10000FBA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

Swift::Int sub_10000FBDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100782420);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10000FD44()
{
  static REM_os_activity.labelUserAction(_:dso:)();
  type metadata accessor for Analytics();
  sub_100058000(&qword_100781FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  StaticString.description.getter();
  v1 = String._bridgeToObjectiveC()();

  *(inited + 48) = v1;
  sub_100008F34(inited);
  swift_setDeallocating();
  sub_1000100A0(inited + 32);
  static Analytics.postEvent(_:payload:duration:)();

  if (qword_100767268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007A8688);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = StaticString.description.getter();
    v8 = sub_100004060(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = Dictionary.description.getter();
    v11 = sub_100004060(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s; UserInfo=%s", v5, 0x16u);
    swift_arrayDestroy();
  }
}

unint64_t sub_10000FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000100A0(uint64_t a1)
{
  v2 = sub_100058000(&qword_100781FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001012C(char a1)
{
  if (*(v1 + 32) != (a1 & 1))
  {
    v2 = v1;
    if (qword_100767300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100783DF0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      if (*(v2 + 32))
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (*(v2 + 32))
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      v10 = sub_100004060(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Application visibility did change {isVisible: %s}", v6, 0xCu);
      sub_100004758(v7);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*(v2 + 32) == 1)
      {
        sub_10000927C();
      }

      else
      {
        sub_1003271F4();
      }

      swift_unknownObjectRelease();
    }

    if (*(v2 + 32) == 1)
    {
      sub_100010360();

      sub_1000093DC(0, 1);
    }

    else
    {

      sub_100469C68();
    }
  }
}

void sub_100010360()
{
  if (*(v0 + 64))
  {
    *(v0 + 64) = 0;

    if (qword_100767300 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100783DF0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Application visibility change handler did tear down subscription for timeout", v3, 2u);
    }
  }
}

uint64_t sub_10001047C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000104C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);

    [v2 requestDownloadGroceryModelAssetsFromTrial];
  }
}

uint64_t sub_100010910(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForColumn:0];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v8 = [a1 viewControllerForColumn:2];
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = v10;
    v12 = [v7 topViewController];
    if (!v12 || (v13 = v12, v12, v13 != v11))
    {

LABEL_8:
      return sub_100010B1C([v2 isCollapsed]);
    }

    v15 = [v11 topViewController];
    if (!v15)
    {
LABEL_13:

      return sub_100010B1C([v2 isCollapsed]);
    }

    v20 = v15;
    v16 = v15;
    sub_100003540(0, &qword_10076AD28);
    v17 = v16;
    sub_100058000(&qword_10077BDE8);
    if (swift_dynamicCast())
    {
      sub_100005FD0(v18, v21);
      sub_10000C36C(v21, v21[3]);
      dispatch thunk of TTRIEffectiveNavigationControllerForBarsObserving.effectiveNavigationControllerForBarsDidChange()();

      sub_100004758(v21);
    }

    else
    {

      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_1000079B4(v18, &qword_10077BDF0);
    }
  }

  return sub_100010B1C([v2 isCollapsed]);
}

uint64_t sub_100010B1C(int a1)
{
  v3 = *sub_10000C36C((v1 + 48), *(v1 + 72));
  swift_unknownObjectRetain();
  sub_10000E9E4(a1);
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_100010540(v3 + 96, v10);
  sub_10000E224(v11);
  sub_100015124(v10);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    sub_10000C36C(v11, v12);
    (*(v5 + 112))(a1 & 1, v4, v5);
    sub_100004758(v11);
  }

  else
  {
    sub_1000079B4(v11, &unk_100792FE0);
  }

  v6 = *sub_10000C36C((v1 + 48), *(v1 + 72));
  swift_beginAccess();
  sub_100010540(v6 + 96, v10);
  sub_10000E224(v11);
  sub_100015124(v10);
  v7 = v12;
  if (!v12)
  {
    return sub_1000079B4(v11, &unk_100792FE0);
  }

  v8 = v13;
  sub_10000C36C(v11, v12);
  (*(v8 + 120))(v7, v8);
  return sub_100004758(v11);
}

uint64_t sub_100010CB8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782E90);
  v1 = sub_100003E30(v0, qword_100782E90);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100010D80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_10076EA48);
  __chkstk_darwin(v3 - 8);
  v5 = v83 - v4;
  v6 = sub_100058000(&qword_10078D540);
  __chkstk_darwin(v6 - 8);
  v8 = v83 - v7;
  v89.receiver = v0;
  v89.super_class = ObjectType;
  objc_msgSendSuper2(&v89, "viewDidLoad");
  sub_100011B5C(1);
  v9 = [v0 collectionView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = v9;
  [v9 setPreservesSuperviewLayoutMargins:1];

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v11;
  static TTRAccesibility.AccountsList.ID.AccountsListTable.getter();
  v13 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityIdentifier:v13];

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = v14;
  [v14 setDragInteractionEnabled:1];

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = v16;
  [v16 setAllowsSelection:1];

  v18 = [v1 collectionView];
  if (!v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v19 = v18;
  [v18 setAllowsSelectionDuringEditing:1];

  v20 = [v1 collectionView];
  if (!v20)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = v20;
  [v20 setAllowsMultipleSelection:0];

  v22 = [v1 collectionView];
  if (!v22)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v23 = v22;
  [v22 setAllowsMultipleSelectionDuringEditing:1];

  v24 = [v1 collectionView];
  if (!v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = v24;
  [v24 setSelfSizingInvalidation:1];

  v26 = [v1 collectionView];
  if (!v26)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = v26;
  v84 = v8;
  v85 = v5;
  v83[1] = ObjectType;
  [v26 setKeyboardDismissMode:2];

  sub_100011E38();
  v28 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
  v29 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v29)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100058000(&qword_10078D548);
  swift_allocObject();
  v30 = v29;
  v31 = TTRICollectionViewPresentationTreeManagementViewCapability.init(diffableDataSource:)();
  v83[0] = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability;
  *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability] = v31;

  sub_100014F04(&unk_10078D550, type metadata accessor for TTRIAccountsListsViewController_collectionView);
  swift_unknownObjectRetain();
  TTRICollectionViewPresentationTreeManagementViewCapability.delegate.setter();

  v32 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  sub_100058000(&qword_10076BD58);
  v33 = type metadata accessor for TTRUserDefaults();

  v34 = static TTRUserDefaults.appUserDefaults.getter();
  *(&v87 + 1) = v33;
  v88 = &protocol witness table for TTRUserDefaults;
  *&v86 = v34;
  *&v86 = TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(autosaveName:userDefaults:)();
  sub_100058000(&qword_10076BD60);
  swift_allocObject();
  sub_10000E188(&qword_10076BD68, &qword_10076BD58);
  TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  sub_100058000(&unk_10078D430);
  sub_10000E188(&qword_100783258, &unk_10078D430);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.collapsedStatesPersistence.setter();

  v35 = *&v1[v28];
  if (!v35)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  type metadata accessor for TTRIAccountsListsInnerSelectionController(0);
  v36 = swift_allocObject();
  v37 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.PinnedLists(0);
  (*(*(v37 - 8) + 56))(v84, 1, 1, v37);
  sub_100058000(&qword_10078D560);
  swift_allocObject();
  v38 = v35;
  *(v36 + 2) = TTRObservableViewModel.init(value:)();
  v39 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags(0);
  (*(*(v39 - 8) + 56))(v85, 1, 1, v39);
  sub_100058000(&qword_10078D568);
  swift_allocObject();
  *(v36 + 3) = TTRObservableViewModel.init(value:)();
  v40 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  v41 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  (*(*(v41 - 8) + 56))(&v36[v40], 1, 1, v41);
  *(v36 + 4) = v38;
  *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController] = v36;

  if (![v1 view])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_100058000(&qword_10078D570);
  swift_allocObject();
  v42 = TTRICollectionViewDragAndDropCoordinator.init(rootView:)();
  sub_100014F04(&qword_10078D578, type metadata accessor for TTRIAccountsListsViewController_collectionView);
  swift_unknownObjectRetain();
  TTRICollectionViewDragAndDropCoordinator.delegate.setter();
  *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropCoordinator] = v42;

  if (![v1 collectionView])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v43 = *&v1[v28];
  if (!v43)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100014F04(&qword_10078D580, type metadata accessor for TTRIAccountsListsDiffableDataSource);
  sub_10000E188(&qword_10078D588, &qword_10078D570);
  objc_allocWithZone(sub_100058000(&unk_10078D590));

  v44 = v43;
  v45 = TTRICollectionViewDragAndDropController.init(collectionView:diffableDataSource:coordinator:)();
  v46 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropController;
  v47 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropController];
  *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_dragAndDropController] = v45;
  v48 = v45;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRICollectionViewDragAndDropController.dragPreviewParametersProvider.setter();

  v49 = [v1 collectionView];
  if (!v49)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v50 = v49;
  [v49 setDragDelegate:*&v1[v46]];

  v51 = [v1 collectionView];
  if (!v51)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v52 = v51;
  [v51 setDropDelegate:*&v1[v46]];

  v53 = swift_unknownObjectRetain();
  v54 = sub_1000153CC(v53);
  v55 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController];
  *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController] = v54;
  v56 = v54;

  v57 = [objc_allocWithZone(_s9Reminders20TTRISearchControllerCMa_0()) initWithSearchResultsController:v56];
  v58 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v59 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController] = v57;
  v60 = v57;

  if (!v60)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v61 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot;
  v62 = *(v32 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v62 == 2)
  {
    LOBYTE(v62) = sub_100444328(v32);
  }

  [v60 setAutomaticallyShowsSearchResultsController:v62 & 1];

  v63 = *&v1[v58];
  if (!v63)
  {
    goto LABEL_51;
  }

  [v63 setSearchResultsUpdater:v1];
  v64 = *&v1[v58];
  if (!v64)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v64 setDelegate:v1];
  v65 = *&v1[v58];
  if (!v65)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v66 = [v65 searchBar];
  [v66 setDelegate:v1];

  v67 = *&v1[v58];
  if (!v67)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v68 = [v67 searchBar];
  [v68 setLookToDictateEnabled:1];

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v69 = [objc_opt_self() currentDevice];
    v70 = [v69 userInterfaceIdiom];

    if (v70 == 1)
    {
      v71 = [v1 navigationItem];
      [v71 setSearchController:*&v1[v58]];
    }
  }

  sub_100058000(&unk_10076BD70);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10062D400;
  *(v72 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v72 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  type metadata accessor for TTRITimeZoneOverrideTipController();
  swift_allocObject();
  v73 = v1;
  *&v73[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideTipController] = TTRITimeZoneOverrideTipController.init(loggingPrefix:hostViewController:)();

  v74 = [objc_opt_self() defaultCenter];
  v75 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v86 = 0u;
  v87 = 0u;
  v76 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v77 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v86, &qword_10076AE40);

  *&v73[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideChangedObserver] = v77;

  v78 = [v73 collectionView];
  if (!v78)
  {
    goto LABEL_55;
  }

  v79 = v78;
  v80 = *(v32 + v61);
  if (v80 == 2)
  {
    LOBYTE(v80) = sub_100444328(v32);
  }

  [v79 setSelectionFollowsFocus:(v80 & 1) == 0];

  v81 = *(v32 + v61);
  if (v81 == 2)
  {
    LOBYTE(v81) = sub_100444328(v32);
  }

  v82 = v83[0];
  [v73 setClearsSelectionOnViewWillAppear:v81 & 1];
  if (*&v1[v82])
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();

    sub_100015960();
    sub_10055D1DC(0);
    sub_1000165F0();

    return;
  }

LABEL_56:
  __break(1u);
}

uint64_t sub_100011AD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100011B5C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v11 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  v12 = *(v11 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v12 != 2)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = &enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    goto LABEL_6;
  }

  if (sub_100444328(v11))
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = &enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:);
LABEL_6:
  (*(v5 + 104))(v10, *v13, v4);
  if ((a1 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_listAppearance;
    swift_beginAccess();
    (*(v5 + 16))(v8, &v2[v14], v4);
    sub_100014F04(&unk_10078D500, &type metadata accessor for UICollectionLayoutListConfiguration.Appearance);
    LOBYTE(v14) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v14)
    {
      return (*(v5 + 8))(v10, v4);
    }
  }

  v15 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_listAppearance;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v15], v10, v4);
  result = swift_endAccess();
  if (a1)
  {
    v17 = sub_10000F6E4();
    result = [v2 collectionView];
    if (result)
    {
      v18 = result;
      [result setCollectionViewLayout:v17 animated:0];

      return (*(v5 + 8))(v10, v4);
    }

    __break(1u);
  }

  else if (*&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();

    sub_100015960();
    sub_10055D1DC(0);
    sub_1000165F0();
    return (*(v5 + 8))(v10, v4);
  }

  __break(1u);
  return result;
}

void sub_100011E38()
{
  v1 = v0;
  v115 = sub_100058000(&qword_10078D5A0);
  v134 = *(v115 - 8);
  v2 = __chkstk_darwin(v115);
  v109 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v3;
  __chkstk_darwin(v2);
  v117 = &v75 - v4;
  v114 = sub_100058000(&qword_10078D5A8);
  v133 = *(v114 - 8);
  v5 = __chkstk_darwin(v114);
  v105 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v6;
  __chkstk_darwin(v5);
  v116 = &v75 - v7;
  v8 = sub_100058000(&qword_10078D5B0);
  v131 = *(v8 - 8);
  v132 = v8;
  v9 = __chkstk_darwin(v8);
  v102 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v10;
  __chkstk_darwin(v9);
  v137 = &v75 - v11;
  v130 = sub_100058000(&qword_10078D5B8);
  v113 = *(v130 - 8);
  v12 = __chkstk_darwin(v130);
  v100 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v13;
  __chkstk_darwin(v12);
  v135 = &v75 - v14;
  v15 = sub_100058000(&qword_10078D5C0);
  v128 = *(v15 - 8);
  v129 = v15;
  v16 = __chkstk_darwin(v15);
  v99 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v17;
  __chkstk_darwin(v16);
  v136 = &v75 - v18;
  v127 = sub_100058000(&qword_10078D5C8);
  v112 = *(v127 - 8);
  v19 = __chkstk_darwin(v127);
  v98 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v20;
  __chkstk_darwin(v19);
  v138 = &v75 - v21;
  v126 = sub_100058000(&qword_10078D5D0);
  v111 = *(v126 - 8);
  v22 = __chkstk_darwin(v126);
  v97 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v23;
  __chkstk_darwin(v22);
  v25 = &v75 - v24;
  v26 = sub_100058000(&qword_10078D5D8);
  v124 = *(v26 - 8);
  v125 = v26;
  v27 = __chkstk_darwin(v26);
  v96 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v28;
  __chkstk_darwin(v27);
  v30 = &v75 - v29;
  v123 = sub_100058000(&qword_10078D5E0);
  v122 = *(v123 - 8);
  v31 = __chkstk_darwin(v123);
  v95 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v32;
  __chkstk_darwin(v31);
  v34 = &v75 - v33;
  v121 = sub_100058000(&qword_10078D5E8);
  v106 = *(v121 - 8);
  v35 = __chkstk_darwin(v121);
  v94 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v36;
  __chkstk_darwin(v35);
  v38 = &v75 - v37;
  v120 = sub_100058000(&qword_10078D5F0);
  v119 = *(v120 - 8);
  v39 = __chkstk_darwin(v120);
  v92 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v40;
  __chkstk_darwin(v39);
  v42 = &v75 - v41;
  v118 = sub_100058000(&unk_10078D5F8);
  v139 = *(v118 - 8);
  v43 = __chkstk_darwin(v118);
  v93 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v44;
  __chkstk_darwin(v43);
  v46 = &v75 - v45;
  sub_100003540(0, &qword_10077FBF0);
  type metadata accessor for TTRAccountsListsViewModel.Item();
  v101 = v46;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsViewPinnedListsCell_collectionView();
  type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v103 = v42;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsAccountHeaderCell(0);
  v104 = v38;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsViewListCell_collectionView();
  v107 = v34;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsViewGroupCell_collectionView();
  v108 = v30;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsRecentlyDeletedCell_collectionView();
  v110 = v25;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsEditablePredefinedSmartListCell();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsTagsHeaderCell(0);
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsHashtagsCell(0);
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for TTRIAccountsListsSuggestGroceriesCell_collectionView(0);
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsInlinePermissionHeaderCell(0);
  v47 = v116;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIAccountsListsInlinePermissionButtonCell();
  v48 = v117;
  UICollectionView.CellRegistration.init(handler:)();
  v78 = [v1 collectionView];
  if (v78)
  {
    v91 = swift_allocObject();
    v77 = v1;
    swift_unknownObjectWeakInit();
    v49 = v122;
    (*(v122 + 16))(v95, v107, v123);
    v50 = v124;
    (*(v124 + 16))(v96, v108, v125);
    v51 = v119;
    (*(v119 + 16))(v92, v103, v120);
    v52 = v106;
    (*(v106 + 16))(v94, v104, v121);
    v53 = v111;
    (*(v111 + 16))(v97, v110, v126);
    v54 = v128;
    (*(v128 + 16))(v99, v136, v129);
    v55 = v113;
    (*(v113 + 16))(v100, v135, v130);
    v56 = v112;
    (*(v112 + 16))(v98, v138, v127);
    (*(v131 + 16))(v102, v137, v132);
    (*(v133 + 16))(v105, v47, v114);
    (*(v134 + 16))(v109, v48, v115);
    (*(v139 + 16))(v93, v101, v118);
    v76 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v80 = (v80 + *(v50 + 80) + v76) & ~*(v50 + 80);
    v75 = (v83 + *(v51 + 80) + v80) & ~*(v51 + 80);
    v57 = (v79 + *(v52 + 80) + v75) & ~*(v52 + 80);
    v58 = (v82 + *(v53 + 80) + v57) & ~*(v53 + 80);
    v83 = (v84 + *(v54 + 80) + v58) & ~*(v54 + 80);
    v84 = (v86 + *(v55 + 80) + v83) & ~*(v55 + 80);
    v59 = v56;
    v86 = (v87 + *(v56 + 80) + v84) & ~*(v56 + 80);
    v60 = v131;
    v87 = (v85 + *(v131 + 80) + v86) & ~*(v131 + 80);
    v61 = v133;
    v88 = (v88 + *(v133 + 80) + v87) & ~*(v133 + 80);
    v62 = v134;
    v89 = (v89 + *(v134 + 80) + v88) & ~*(v134 + 80);
    v90 = (v90 + *(v139 + 80) + v89) & ~*(v139 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v91;
    (*(v122 + 32))(v63 + v76, v95, v123);
    (*(v124 + 32))(v63 + v80, v96, v125);
    (*(v119 + 32))(v63 + v75, v92, v120);
    (*(v52 + 32))(v63 + v57, v94, v121);
    (*(v53 + 32))(v63 + v58, v97, v126);
    (*(v128 + 32))(v63 + v83, v99, v129);
    (*(v55 + 32))(v63 + v84, v100, v130);
    (*(v59 + 32))(v63 + v86, v98, v127);
    (*(v60 + 32))(v63 + v87, v102, v132);
    v64 = v114;
    (*(v61 + 32))(v63 + v88, v105, v114);
    v65 = v115;
    (*(v62 + 32))(v63 + v89, v109, v115);
    (*(v139 + 32))(v63 + v90, v93, v118);
    v66 = objc_allocWithZone(type metadata accessor for TTRIAccountsListsDiffableDataSource());

    v67 = v78;

    v68 = TTRICollectionViewTreeBackedDiffableDataSource.init(collectionView:cellProvider:)();
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.isBatchedIncrementalUpdatesDisabled_workaroundRdar145323570.setter();

    swift_allocObject();
    v69 = v77;
    swift_unknownObjectWeakInit();
    v70 = v68;
    v71 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    sub_100058000(&qword_10078D608);
    UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.setter();
    v71(v140, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.setter();
    v72(v140, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.setter();
    v73(v140, 0);

    (*(v134 + 8))(v117, v65);
    (*(v133 + 8))(v116, v64);
    (*(v131 + 8))(v137, v132);
    (*(v113 + 8))(v135, v130);
    (*(v128 + 8))(v136, v129);
    (*(v112 + 8))(v138, v127);
    (*(v111 + 8))(v110, v126);
    (*(v124 + 8))(v108, v125);
    (*(v122 + 8))(v107, v123);
    (*(v106 + 8))(v104, v121);
    (*(v119 + 8))(v103, v120);
    (*(v139 + 8))(v101, v118);
    v74 = *&v69[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    *&v69[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource] = v70;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000134E8()
{
  v1 = sub_100058000(&qword_10078D5E0);
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v60 = v2;
  v61 = *(v65 + 80);
  v3 = *(v65 + 64);
  v4 = sub_100058000(&qword_10078D5D8);
  v63 = *(v4 - 8);
  v64 = v4;
  v56 = *(v63 + 80);
  v57 = (v2 + v3 + v56) & ~v56;
  v5 = *(v63 + 64);
  v62 = sub_100058000(&qword_10078D5F0);
  v59 = *(v62 - 8);
  v51 = *(v59 + 80);
  v53 = (v57 + v5 + v51) & ~v51;
  v6 = *(v59 + 64);
  v58 = sub_100058000(&qword_10078D5E8);
  v55 = *(v58 - 8);
  v45 = *(v55 + 80);
  v49 = (v53 + v6 + v45) & ~v45;
  v7 = *(v55 + 64);
  v54 = sub_100058000(&qword_10078D5D0);
  v52 = *(v54 - 8);
  v40 = *(v52 + 80);
  v46 = (v49 + v7 + v40) & ~v40;
  v8 = *(v52 + 64);
  v50 = sub_100058000(&qword_10078D5C0);
  v48 = *(v50 - 8);
  v36 = *(v48 + 80);
  v42 = (v46 + v8 + v36) & ~v36;
  v9 = *(v48 + 64);
  v47 = sub_100058000(&qword_10078D5B8);
  v44 = *(v47 - 8);
  v32 = *(v44 + 80);
  v38 = (v42 + v9 + v32) & ~v32;
  v10 = *(v44 + 64);
  v43 = sub_100058000(&qword_10078D5C8);
  v41 = *(v43 - 8);
  v11 = *(v41 + 80);
  v35 = (v38 + v10 + v11) & ~v11;
  v12 = *(v41 + 64);
  v39 = sub_100058000(&qword_10078D5B0);
  v31 = *(v39 - 8);
  v13 = *(v31 + 80);
  v33 = (v35 + v12 + v13) & ~v13;
  v14 = *(v31 + 64);
  v37 = sub_100058000(&qword_10078D5A8);
  v15 = *(v37 - 8);
  v16 = *(v15 + 80);
  v17 = (v33 + v14 + v16) & ~v16;
  v29 = v17;
  v18 = *(v15 + 64);
  v34 = sub_100058000(&qword_10078D5A0);
  v19 = *(v34 - 8);
  v20 = *(v19 + 80);
  v21 = (v17 + v18 + v20) & ~v20;
  v22 = *(v19 + 64);
  v30 = sub_100058000(&unk_10078D5F8);
  v23 = *(v30 - 8);
  v24 = *(v23 + 80);
  v25 = (v21 + v22 + v24) & ~v24;
  v28 = *(v23 + 64);
  v26 = v61 | v56 | v51 | v45 | v40 | v36 | v32 | v11 | v13 | v16 | v20 | v24;

  (*(v65 + 8))(v0 + v60, v66);
  (*(v63 + 8))(v0 + v57, v64);
  (*(v59 + 8))(v0 + v53, v62);
  (*(v55 + 8))(v0 + v49, v58);
  (*(v52 + 8))(v0 + v46, v54);
  (*(v48 + 8))(v0 + v42, v50);
  (*(v44 + 8))(v0 + v38, v47);
  (*(v41 + 8))(v0 + v35, v43);
  (*(v31 + 8))(v0 + v33, v39);
  (*(v15 + 8))(v0 + v29, v37);
  (*(v19 + 8))(v0 + v21, v34);
  (*(v23 + 8))(v0 + v25, v30);

  return _swift_deallocObject(v0, v25 + v28, v26 | 7);
}

uint64_t type metadata accessor for TTRIAccountsListsInlinePermissionButtonCell()
{
  result = qword_100784148;
  if (!qword_100784148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013CB4()
{
  if (!qword_100784158)
  {
    type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100784158);
    }
  }
}

void sub_100013D0C()
{
  sub_100013CB4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100013DF4()
{
  if (!qword_10077A518)
  {
    type metadata accessor for TTRPermissionConfiguration.Header();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077A518);
    }
  }
}

void sub_100013E8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100013F20()
{
  result = type metadata accessor for TTRListBadgeView.ColorInfo();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100013FD4()
{
  result = type metadata accessor for UICellAccessory.DisplayedState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_100014068(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10005D20C(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000140DC()
{
  sub_100014184();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100014184()
{
  if (!qword_10076E9B0)
  {
    type metadata accessor for TTRAccountsListsViewModel.Hashtags();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10076E9B0);
    }
  }
}

void sub_1000141FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100014250()
{
  sub_1000141FC(319, &qword_100792880, &type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100014384()
{
  sub_1000141FC(319, &unk_100792950, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  if (v0 <= 0x3F)
  {
    type metadata accessor for REMHashtagLabelSpecifier();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t type metadata accessor for TTRIAccountsListsEditablePredefinedSmartListCell()
{
  result = qword_100779450;
  if (!qword_100779450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000144C0()
{
  if (!qword_100779460)
  {
    sub_10005D20C(&qword_100779468);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100779460);
    }
  }
}

void sub_100014524()
{
  sub_1000144C0();
  if (v0 <= 0x3F)
  {
    sub_100014608();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100014608()
{
  if (!qword_100779470)
  {
    type metadata accessor for TTRAccountsListsViewModel.SmartList();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100779470);
    }
  }
}

uint64_t type metadata accessor for TTRIAccountsListsRecentlyDeletedCell_collectionView()
{
  result = qword_100790070;
  if (!qword_100790070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000146AC()
{
  if (!qword_100790080)
  {
    type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100790080);
    }
  }
}

void sub_100014704()
{
  sub_1000146AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for TTRIAccountsListsViewGroupCell_collectionView()
{
  result = qword_100791418;
  if (!qword_100791418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000147EC()
{
  sub_100014888();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100014888()
{
  if (!qword_100791428)
  {
    type metadata accessor for TTRAccountsListsViewModel.Group();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100791428);
    }
  }
}

uint64_t type metadata accessor for TTRIAccountsListsViewListCell_collectionView()
{
  result = qword_10077EC08;
  if (!qword_10077EC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001492C()
{
  sub_1000149C8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000149C8()
{
  if (!qword_10077EC18)
  {
    type metadata accessor for TTRAccountsListsViewModel.List();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077EC18);
    }
  }
}

void sub_100014A40()
{
  if (!qword_10077FF10)
  {
    sub_10005D20C(&qword_10077FF18);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077FF10);
    }
  }
}

void sub_100014AA4()
{
  sub_100014A40();
  if (v0 <= 0x3F)
  {
    sub_100014B98();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100014B98()
{
  if (!qword_10077FF20)
  {
    type metadata accessor for TTRAccountsListsViewModel.Account();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077FF20);
    }
  }
}

uint64_t type metadata accessor for TTRIAccountsListsDiffableDataSource()
{
  result = qword_10076EA68;
  if (!qword_10076EA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TTRIAccountsListsItemIntermediateViewModel()
{
  result = qword_10076D908;
  if (!qword_10076D908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014CEC()
{
  type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  if (v0 <= 0x3F)
  {
    sub_100014DB4();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_100014DB4()
{
  if (!qword_10076D918)
  {
    sub_10005D20C(&qword_10077A670);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10076D918);
    }
  }
}

unint64_t sub_100014E18()
{
  result = qword_10076BDB0;
  if (!qword_10076BDB0)
  {
    type metadata accessor for TTRAccountsListsViewModel.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076BDB0);
  }

  return result;
}

uint64_t sub_100014E74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014F04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100014F8C()
{
  if (!qword_100776508)
  {
    type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100776508);
    }
  }
}

void sub_100014FE4()
{
  sub_100014F8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000150A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007724A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100015178()
{
  result = type metadata accessor for TTRAccountsListsPinnedListSelection();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMHashtagLabelSpecifier();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100015250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007724A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000152DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100015360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

id sub_1000153CC(uint64_t *a1)
{
  v1 = *a1;
  v15[3] = v1;
  v15[4] = &off_100727CE0;
  v15[0] = a1;
  v2 = type metadata accessor for TTRISearchResultContainerViewController();
  v3 = objc_allocWithZone(v2);
  v4 = sub_10000AE84(v15, v1);
  __chkstk_darwin(v4);
  v6 = (&v13 - v5);
  (*(v7 + 16))(&v13 - v5);
  v8 = *v6;
  v14[3] = v1;
  v14[4] = &off_100727CE0;
  v14[0] = v8;
  v9 = &v3[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewController];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  sub_10000B0D8(v14, &v3[OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewPresenter]);
  v13.receiver = v3;
  v13.super_class = v2;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  sub_100004758(v14);
  sub_100004758(v15);
  return v11;
}

BOOL sub_100015600(uint64_t a1)
{
  sub_10000C36C((a1 + 48), *(a1 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong isCollapsed];
  }

  else
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 traitCollection];

      v7 = [v6 horizontalSizeClass];
      return v7 == 1;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1000156AC@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForReloadingView()();
  v2 = sub_100058000(&qword_10078D480);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t getEnumTagSinglePayload for NodeChange(uint64_t *a1, int a2)
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

uint64_t sub_100015784@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel);

  result = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();
  *a1 = v3;
  a1[1] = result;
  return result;
}

__n128 initializeWithTake for TTRIRemindersBoardDragItemSources(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_1000157E4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_100015820()
{

  v0 = TTRModuleState.modelReceived.getter();

  if (v0)
  {
    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.presentationTree.getter();

    TTRAccountsListsViewModel.presentationTreeForDiffableDataSource.getter();

    type metadata accessor for TTRAccountsListsViewModel.Item();
    sub_10001F128(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRICollectionViewCollapsedStatesPresenterCapability.pruneNonExistentItemIDs<A>(with:)();
    return sub_100004758(v2);
  }

  return result;
}

uint64_t destroy for TTRIAccountsListsPresentationTree()
{
}

id sub_100015960()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = sub_100058000(&unk_10076B880);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    v21 = v2;
    v17 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (v17)
    {
      v18 = v17;
      dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

      if (v23)
      {
      }

      else
      {
        type metadata accessor for TTRAccountsListsViewModel();
        swift_allocObject();
        TTRAccountsListsViewModel.init()();
      }

      TTRAccountsListsViewModel.accountCollection.getter();

      sub_100015E68(v7);
      (*(v9 + 8))(v11, v8);
      if ((*(v13 + 48))(v7, 1, v12) == 1)
      {
        return sub_1000079B4(v7, &unk_10076B870);
      }

      else
      {
        (*(v13 + 32))(v15, v7, v12);
        if (TTRAccountsListsViewModel.Account.isTheOnlyAccount.getter())
        {
          (*(v13 + 16))(v4, v15, v12);
          (*(v22 + 104))(v4, enum case for TTRAccountsListsViewModel.Item.account(_:), v21);
          v20[1] = *(*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + 176);
          sub_100058000(&unk_10078D460);
          type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10062D400;

          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v23 = v19;
          sub_100058000(&unk_10078D430);
          sub_10000E188(&qword_100783258, &unk_10078D430);
          sub_100058000(&qword_100783260);
          sub_10000E188(&unk_10078D470, &qword_100783260);
          dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();

          (*(v22 + 8))(v4, v21);
        }

        return (*(v13 + 8))(v15, v12);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100015E68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_10076B9C8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  sub_100058000(&unk_10076B880);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(v8, v2);
    v11 = type metadata accessor for TTRAccountsListsViewModel.Account();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    v13 = dispatch thunk of Collection.subscript.read();
    v15 = v14;
    v16 = type metadata accessor for TTRAccountsListsViewModel.Account();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, v15, v16);
    v13(v18, 0);
    v10(v8, v2);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

uint64_t sub_100016120@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = sub_100058000(&unk_100775640);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_100058000(&qword_100783168);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  result = UIApp;
  if (UIApp)
  {
    if (([UIApp launchedToTest] & 1) != 0 || (sub_1004442A0() & 1) == 0)
    {
      v23 = type metadata accessor for TTRIAccountsListsSelection(0);
      v24 = *(*(v23 - 8) + 56);

      return v24(a1, 1, 1, v23);
    }

    else
    {
      v29 = v3;
      v30 = a1;
      swift_getObjectType();

      dispatch thunk of TTRAccountsListsInteractorType.lastSelectedListInWindow.getter();
      dispatch thunk of TTRAccountsListsInteractorType.globalLastSelectedList.getter();
      TTRAccountsListsViewModel.fallbackSelectionForEmptySelection(lastSelectedListInWindow:globalLastSelectedList:)();
      v21 = v29;

      sub_1000079B4(v11, &unk_100775640);
      sub_1000079B4(v13, &unk_100775640);
      sub_10000794C(v19, v17, &qword_100783168);
      if ((*(v21 + 48))(v17, 1, v2) == 1)
      {
        sub_1000079B4(v19, &qword_100783168);
        sub_1000079B4(v17, &qword_100783168);
        v22 = type metadata accessor for TTRIAccountsListsSelection(0);
        return (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
      }

      else
      {
        (*(v21 + 32))(v7, v17, v2);
        v25 = v31;
        (*(v21 + 16))(v31, v7, v2);
        v26 = v30;
        sub_100423BDC(v25, v30);
        (*(v21 + 8))(v7, v2);
        sub_1000079B4(v19, &qword_100783168);
        v27 = type metadata accessor for TTRIAccountsListsSelection(0);
        return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016588(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100058000(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000165F0()
{
  v1 = v0;
  v138 = sub_100058000(&unk_10078D400);
  v137 = *(v138 - 8);
  v2 = __chkstk_darwin(v138);
  v136 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v145 = &v126 - v4;
  v146 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v142 = *(v146 - 8);
  __chkstk_darwin(v146);
  v139 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v6 - 8);
  v144 = &v126 - v7;
  v148 = sub_100058000(&unk_10078D410);
  v131 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v126 - v8;
  v135 = sub_100058000(&unk_10076B880);
  v134 = *(v135 - 8);
  v9 = __chkstk_darwin(v135);
  v130 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v133 = &v126 - v11;
  v12 = type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v126 - v17;
  if ([v0 isEditing])
  {
    v19 = 0x800000;
  }

  else
  {
    v20 = [v0 isEditing];
    v21 = *(*&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v20)
    {
      if (v21 == 2)
      {
        LOBYTE(v21) = sub_100444328(*&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]);
      }

      v19 = (v21 & 1) == 0;
    }

    else
    {
      if (v21 == 2)
      {
        LOBYTE(v21) = sub_100444328(*&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]);
      }

      TTRAccountsListsViewModel.accountsCapabilities.getter();

      static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
      sub_100014F04(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities);
      v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v23 = *(v13 + 8);
      v23(v16, v12);
      v23(v18, v12);
      v24 = 256;
      if ((v22 & 1) == 0)
      {
        v25 = [objc_opt_self() daemonUserDefaults];
        v26 = [v25 timeZoneOverrideEnabled];

        if (v26)
        {
          v24 = 256;
        }

        else
        {
          v24 = 0;
        }
      }

      v27 = [objc_opt_self() daemonUserDefaults];
      v28 = [v27 timeZoneOverrideEnabled];

      if (v28)
      {
        v29 = 0x10000;
      }

      else
      {
        v29 = 0;
      }

      v19 = v24 | v29 | ((v21 & 1) == 0) | 0x400000;
    }
  }

  LODWORD(v143) = static REMFeatureFlags.isSolariumEnabled.getter();
  v30 = &v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration];
  v31 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration] | (v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration + 2] << 16);
  if ((~v31 & 0xFEFEFE) == 0)
  {
    goto LABEL_18;
  }

  v34 = (v31 >> 22) & 3;
  if (!v34)
  {
    if ((v19 & 0xC00000) != 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    if (((v31 ^ v19) & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_18;
  }

  if (v34 == 1)
  {
    if ((v19 & 0xC00000) != 0x400000 || ((v19 & 0x10000) == 0) == (v31 & 0x10000) >> 16 || ((v19 & 0x100) == 0) == (*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_currentBarButtonItemConfiguration] & 0x100) >> 8)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

  if (v19 == 0x800000)
  {
    goto LABEL_73;
  }

LABEL_18:
  v30[2] = BYTE2(v19);
  *v30 = v19;
  LODWORD(v141) = v19 >> 22;
  if (v19 >> 22 == 1)
  {
    if ((v143 & 1) == 0)
    {
      if ((v19 & 0x10000) != 0)
      {
        v38 = &OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuWithBadgeButton;
        v39 = &static TTRCommonAsset.Image.ellipsisBadgeIcon.getter;
      }

      else
      {
        v38 = &OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuButton;
        v39 = &static TTRCommonAsset.Image.actionMenuIcon.getter;
      }

      v40 = sub_1000188A8(v38, v39);
      sub_100058000(&qword_10076B780);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10062D420;
      if ((v19 & 0x100) != 0)
      {
        v42 = v40;
      }

      else
      {
        v42 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___editButton, &selRef_didTapEdit_, 2);
      }

      *(v41 + 32) = v42;

      *&v140 = 0;
      v149 = v41;
      if ((v19 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_52:
      v36 = &_swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    sub_100058000(&qword_10076B780);
    v32 = swift_allocObject();
    v140 = xmmword_10062D420;
    *(v32 + 16) = xmmword_10062D420;
    if ((v19 & 0x100) != 0)
    {
      v33 = sub_1000188A8(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuButton, &static TTRCommonAsset.Image.actionMenuIcon.getter);
    }

    else
    {
      v33 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___editButton, &selRef_didTapEdit_, 2);
    }

    *(v32 + 32) = v33;
    v149 = v32;
    if ((v19 & 0x10000) == 0)
    {
LABEL_42:
      *&v140 = 0;
      if ((v19 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

    v43 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
    v44 = *(v43 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v44 == 2)
    {
      if (!sub_100444328(v43))
      {
        goto LABEL_42;
      }
    }

    else if ((v44 & 1) == 0)
    {
      goto LABEL_42;
    }

    v47 = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___timeZoneOverrideButton, sub_10055A558);
    [v47 setEnabled:1];

    inited = swift_initStackObject();
    *(inited + 16) = v140;
    v49 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___timeZoneOverrideButton;
    v50 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___timeZoneOverrideButton];
    *(inited + 32) = v50;
    v51 = v50;
    sub_100018520(inited);
    *&v140 = *&v1[v49];
    v52 = v140;
    if ((v19 & 1) == 0)
    {
LABEL_58:
      v46 = &unk_10062D000;
      goto LABEL_59;
    }

    goto LABEL_52;
  }

  v132 = v13;
  sub_100058000(&qword_10076B780);
  v35 = swift_allocObject();
  v140 = xmmword_10062D420;
  *(v35 + 16) = xmmword_10062D420;
  *(v35 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"didTapDone:"];
  v149 = v35;
  if (v19 >> 22)
  {
    sub_100058000(&qword_10076B780);
    v36 = swift_allocObject();
    *(v36 + 1) = v140;
    v37 = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton, sub_100018A70);
    *&v140 = 0;
    v36[4] = v37;
  }

  else
  {
    *&v140 = 0;
    if ((v19 & 1) == 0)
    {
      v46 = &unk_10062D000;
      v13 = v132;
LABEL_59:
      sub_100058000(&qword_10076B780);
      if (v143)
      {
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_10062D410;
        *(v53 + 32) = [objc_opt_self() flexibleSpaceItem];
        v54 = *(sub_100017EC0() + 16);

        *(v53 + 40) = v54;
        v150 = v53;
        p_vtable = (&OBJC_METACLASS____TtC9Reminders23TTRIGroupMembershipCell + 24);
        goto LABEL_61;
      }

      v56 = swift_allocObject();
      *(v56 + 16) = v46[66];
      v57 = *(sub_100017EC0() + 16);

      *(v56 + 32) = v57;
      v150 = v56;
      p_vtable = &OBJC_METACLASS____TtC9Reminders23TTRIGroupMembershipCell.vtable;
      goto LABEL_63;
    }

    v36 = &_swiftEmptyArrayStorage;
  }

  v13 = v132;
LABEL_53:
  v150 = v36;
  p_vtable = (&OBJC_METACLASS____TtC9Reminders23TTRIGroupMembershipCell + 24);
  if (v143)
  {
LABEL_61:
    sub_100058000(&qword_10076B780);
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_10062D420;
    *(v55 + 32) = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton, sub_100018344);
    goto LABEL_64;
  }

LABEL_63:
  sub_100058000(&qword_10076B780);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_10062D410;
  *(v55 + 32) = [objc_opt_self() flexibleSpaceItem];
  *(v55 + 40) = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton, sub_100018344);
LABEL_64:
  sub_100018520(v55);
  if (v141 <= 1 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) != 0)
  {
    v58 = [objc_opt_self() currentDevice];
    v59 = [v58 userInterfaceIdiom];

    if (v59 != 1)
    {
      sub_100058000(&qword_10076B780);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_10062D420;
      *(v60 + 32) = sub_100017E3C(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___searchButton, &selRef_didTapSearch_, 12);
      sub_100018520(v60);
    }
  }

  v61 = sub_1000188A8(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___actionMenuButton, &static TTRCommonAsset.Image.actionMenuIcon.getter);
  if (*(p_vtable[479] + *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]) == 2)
  {
    sub_100444328(*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]);
  }

  v62 = static TTRCommonAsset.Image.actionMenuIcon(shouldShowCircleIcon:)();
  [v61 setImage:v62];

  v63 = [v1 navigationItem];
  sub_100003540(0, &qword_10076B800);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v63 setRightBarButtonItems:isa];

  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:v65];

  if (*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_timeZoneOverrideTipController])
  {

    TTRITimeZoneOverrideTipController.visibleTimeZoneOverrideBarButton.setter();
  }

  else
  {
  }

LABEL_73:
  v66 = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton, sub_100018344);
  v67 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
  v68 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v68)
  {
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    return;
  }

  v69 = v66;
  v70 = v68;
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

  if (v149)
  {
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();
    TTRAccountsListsViewModel.init()();
  }

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsAddList.getter();
  sub_100014F04(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities);
  v71 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v72 = *(v13 + 8);
  v72(v16, v12);
  v72(v18, v12);
  [v69 setEnabled:v71 & 1];

  v73 = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton, sub_100018A70);
  v74 = *&v1[v67];
  if (!v74)
  {
    goto LABEL_117;
  }

  v75 = v73;
  v76 = v74;
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

  if (v149)
  {
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();
    TTRAccountsListsViewModel.init()();
  }

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsGroups.getter();
  v77 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v72(v16, v12);
  v72(v18, v12);
  [v75 setEnabled:v77 & 1];

  v78 = sub_100017EC0();
  v79 = *&v1[v67];
  if (!v79)
  {
    goto LABEL_118;
  }

  v80 = v78;
  v81 = v79;
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

  if (v149)
  {
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();
    TTRAccountsListsViewModel.init()();
  }

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsAddReminder.getter();
  v82 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v72(v16, v12);
  v72(v18, v12);
  v83 = *(v80 + 48);
  if (v83)
  {
    v84 = v83;
    [v84 setEnabled:v82 & 1];
  }

  else
  {
    [*(v80 + 16) setEnabled:v82 & 1];
  }

  v85 = v146;
  v86 = v142;

  v87 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton];
  if ([v87 isEnabled] && (sub_1000384C0(v143 & 1, v1) & 1) != 0)
  {
    v88 = sub_100038760();
    [v87 setMenu:v88];
    if (v88)
    {
      v89 = 0;
    }

    else
    {
      v89 = "didTapNewList:";
    }

    [v87 setAction:v89];
  }

  v90 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton];
  v129 = "didTapNewGroup:";
  v91 = v90;
  if ([v91 isEnabled])
  {
    v92 = [v1 toolbarItems];
    if (v92)
    {
      v93 = v92;
      sub_100003540(0, &qword_10076B800);
      v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v91;
      v95 = v94;

      v96 = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addGroupButton, sub_100018A70);
      v149 = v96;
      __chkstk_darwin(v96);
      *(&v126 - 2) = &v149;
      v97 = sub_10000C108(sub_1000386DC, (&v126 - 4), v95);

      v91 = v127;

      if (v97)
      {
        v98 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
        v132 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

        v99 = v133;
        TTRAccountsListsViewModel.accountCollection.getter();

        (*(v134 + 16))(v130, v99, v135);
        swift_getOpaqueTypeConformance2();
        dispatch thunk of Sequence.makeIterator()();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v101 = v144;
        v143 = AssociatedConformanceWitness;
        dispatch thunk of IteratorProtocol.next()();
        v102 = *(v86 + 48);
        v142 = v86 + 48;
        v141 = v102;
        if (v102(v101, 1, v85) == 1)
        {
          v103 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v108 = *(v86 + 32);
          v107 = v86 + 32;
          *&v140 = v108;
          v130 = (v107 - 16);
          v103 = &_swiftEmptyArrayStorage;
          v109 = (v107 - 24);
          v110 = v139;
          v128 = v98;
          v108(v139, v101, v85);
          while (1)
          {

            v111 = TTRAccountsListsViewModel.remAccount(for:)();

            if (v111)
            {
              v112 = v107;
              v113 = [v111 groupContext];
              if (v113)
              {
                v114 = v113;
                v115 = v103;
                v116 = v85;
                v117 = v136;
                (*v130)(v136, v110, v116);
                v118 = TTRAccountsListsViewModel.Account.name.getter();
                v120 = v119;

                v121 = v116;
                v103 = v115;
                (*v109)(v110, v121);
                v122 = v138;
                *(v117 + *(v138 + 32)) = v114;
                v123 = (v117 + *(v122 + 28));
                *v123 = v118;
                v123[1] = v120;
                sub_100016588(v117, v145, &unk_10078D400);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = sub_1005477C0(0, v115[2] + 1, 1, v115);
                }

                v107 = v112;
                v125 = v103[2];
                v124 = v103[3];
                v85 = v146;
                v101 = v144;
                if (v125 >= v124 >> 1)
                {
                  v103 = sub_1005477C0(v124 > 1, v125 + 1, 1, v103);
                }

                v103[2] = v125 + 1;
                sub_100016588(v145, v103 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v125, &unk_10078D400);
                v110 = v139;
              }

              else
              {
                (*v109)(v110, v85);

                v101 = v144;
              }
            }

            else
            {
              (*v109)(v110, v85);
            }

            dispatch thunk of IteratorProtocol.next()();
            if (v141(v101, 1, v85) == 1)
            {
              break;
            }

            (v140)(v110, v101, v85);
          }
        }

        (*(v131 + 8))(v147, v148);
        (*(v134 + 8))(v133, v135);
        v104 = swift_allocObject();
        swift_weakInit();
        v105.super.super.isa = sub_1000F4C28(v103, sub_1000FD670, v104).super.super.isa;

        v91 = v127;
        [v127 setMenu:v105.super.super.isa];
        if (v105.super.super.isa)
        {
          v106 = 0;
        }

        else
        {
          v106 = v129;
        }

        [v91 setAction:v106];
      }
    }
  }
}

uint64_t sub_100017CE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017D68()
{
  result = type metadata accessor for TTRAccountsListsViewModel.Account();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

id sub_100017E3C(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

uint64_t sub_100017EC0()
{
  v1 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addReminderButton;
  if (*&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addReminderButton])
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addReminderButton];
  }

  else
  {
    v5[3] = swift_getObjectType();
    v5[0] = v0;
    type metadata accessor for TTRIAddReminderBarButtonModule();
    swift_allocObject();
    v3 = v0;
    v2 = sub_1001C60D8(1, v5, "didTapNewReminder:");
    *&v0[v1] = v2;
  }

  return v2;
}

void sub_100017FA0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v21 = v1;
    if (*(v0 + 24))
    {
      if (*(v0 + 24) == 1)
      {
        v2 = 0x80000001006766A0;
        v3 = 0xD000000000000034;
        v4 = 0x80000001006766C0;
        v5 = 0xD000000000000018;
      }

      else
      {
        v5 = 0x6D6574492077654ELL;
        v3 = 0xD00000000000002DLL;
        v4 = 0x8000000100676670;
        v2 = 0xE800000000000000;
      }
    }

    else
    {
      v5 = 0x696D65522077654ELL;
      v2 = 0xEC0000007265646ELL;
      v3 = 0xD000000000000021;
      v4 = 0x8000000100676700;
    }

    TTRLocalizedString(_:comment:)(*&v5, *&v3);
    v11 = String._bridgeToObjectiveC()();

    [v21 setTitle:v11 forState:0];

    [v21 setTintColor:*(v0 + 32)];
    v12 = *(v0 + 24);
    v13 = [v21 titleLabel];
    if (v12 == 1)
    {
      if (v13)
      {
        v14 = v13;
        [v13 setNumberOfLines:2];
      }

      v15 = [v21 titleLabel];
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = v15;
      [v15 setLineBreakMode:0];
    }

    else
    {
      if (v13)
      {
        v17 = v13;
        [v13 setNumberOfLines:1];
      }

      v18 = [v21 titleLabel];
      if (!v18)
      {
        goto LABEL_20;
      }

      v16 = v18;
      [v18 setLineBreakMode:2];
    }

LABEL_20:

    return;
  }

  v6 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v7 = 0x80000001006766A0;
      v8 = 0xD000000000000034;
      v9 = 0x80000001006766C0;
      v10 = 0xD000000000000018;
    }

    else
    {
      v10 = 0x6D6574492077654ELL;
      v8 = 0xD00000000000002DLL;
      v9 = 0x8000000100676670;
      v7 = 0xE800000000000000;
    }
  }

  else
  {
    v10 = 0x696D65522077654ELL;
    v7 = 0xEC0000007265646ELL;
    v8 = 0xD000000000000021;
    v9 = 0x8000000100676700;
  }

  TTRLocalizedString(_:comment:)(*&v10, *&v8);
  v19 = String._bridgeToObjectiveC()();

  [v6 setTitle:v19];

  if (*(v0 + 40) == 1)
  {
    v20 = *(v0 + 32);

    [v6 setTintColor:v20];
  }
}

id sub_1000182E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_100018344(void *a1)
{
  ObjectType = swift_getObjectType();
  static TTRLocalizableStrings.AccountsList.addListText.getter();
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    sub_100003540(0, &qword_10076B800);
    static TTRCommonAsset.Image.addListIcon.getter();
    swift_unknownObjectRetain();
    return UIBarButtonItem.init(title:image:target:action:menu:)();
  }

  else
  {
    v13[3] = ObjectType;
    v13[0] = a1;
    v4 = a1;
    v5 = String._bridgeToObjectiveC()();

    if (ObjectType)
    {
      v6 = sub_10000C36C(v13, ObjectType);
      v7 = *(ObjectType - 8);
      __chkstk_darwin(v6);
      v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v7 + 8))(v9, ObjectType);
      sub_100004758(v13);
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_allocWithZone(UIBarButtonItem);
    v12 = [v11 initWithTitle:v5 style:0 target:v10 action:{0, v13[0]}];

    swift_unknownObjectRelease();
    return v12;
  }
}

uint64_t sub_10001854C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100018654(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000186F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000E188(&unk_10076B810, &qword_10076B808);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&qword_10076B808);
            v9 = sub_10002B474(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003540(0, &qword_10076B800);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000188A8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = sub_100018920(v6);

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_100018920(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithImage:a1 style:0 target:0 action:0];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_100566934;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10010CA7C;
  v7[3] = &unk_10072E940;
  v3 = _Block_copy(v7);

  [v1 _setSecondaryActionsProvider:v3];
  _Block_release(v3);
  v4 = v1;
  static TTRAccesibility.AccountsList.Label.AccountsListButton.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v5];

  return v4;
}

id sub_100018A70(void *a1)
{
  ObjectType = swift_getObjectType();
  v3._countAndFlagsBits = 0x756F724720646441;
  v4._object = 0x80000001006712D0;
  v3._object = 0xE900000000000070;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  TTRLocalizedString(_:comment:)(v3, v4);
  v15[3] = ObjectType;
  v15[0] = a1;
  v5 = a1;
  v6 = String._bridgeToObjectiveC()();

  if (ObjectType)
  {
    v7 = sub_10000C36C(v15, ObjectType);
    v8 = *(ObjectType - 8);
    __chkstk_darwin(v7);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, ObjectType);
    sub_100004758(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(UIBarButtonItem);
  v13 = [v12 initWithTitle:v6 style:0 target:v11 action:{0, v15[0]}];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_100018C7C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&qword_100776648);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRINavigationBarConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewWillAppear:", a1 & 1);
  v12 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  if (*(v12 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) == 1)
  {
    *(v12 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState) = 1;
  }

  swift_getObjectType();
  dispatch thunk of TTRAccountsListsInteractorType.resumeUpdates()();
  sub_100019008(0, 0);
  result = UIViewController.effectiveNavigationControllerForBars.getter();
  if (result)
  {
    v14 = result;
    v15 = [result navigationBar];
    result = [v2 view];
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v16 = result;
    v17 = [result tintColor];

    TTRINavigationBarConfig.init(tintColor:)();
    UINavigationBar.apply(_:)();

    result = (*(v9 + 8))(v11, v8);
  }

  v18 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) != 0 && (v20 = [objc_opt_self() currentDevice], v21 = objc_msgSend(v20, "userInterfaceIdiom"), v20, v21 != 1))
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v22 = *(v12 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v22 == 2)
    {
      LOBYTE(v22) = sub_100444328(v12);
    }
  }

  [v19 setObscuresBackgroundDuringPresentation:v22 & 1];

  result = [v2 clearsSelectionOnViewWillAppear];
  if (result)
  {
    v23 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
    if (v23)
    {
      v24 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      v25 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
      swift_beginAccess();

      sub_100019180(v7, v23 + v25, &qword_100776648);
      swift_endAccess();
      sub_1000191E8();

      return sub_1000079B4(v7, &qword_100776648);
    }

LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_100019008(char a1, char a2)
{
  v4 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v4)
  {
    v11 = v4;
    v5 = [v4 isToolbarHidden];
    [v11 setToolbarHidden:a1 & 1 animated:a2 & 1];
    if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0 && v5 && (a1 & 1) == 0)
    {
      v6 = [objc_allocWithZone(UIToolbarAppearance) init];
      [v6 configureWithOpaqueBackground];
      v7 = [objc_opt_self() systemGroupedBackgroundColor];
      [v6 setBackgroundColor:v7];

      [v6 setShadowColor:0];
      v8 = [v11 toolbar];
      if (!v8)
      {
        __break(1u);
        return;
      }

      v9 = v8;
      v10 = v6;
      [v9 setScrollEdgeAppearance:v10];
    }
  }
}

uint64_t sub_100019180(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100058000(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000191E8()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v41 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags(0);
  __chkstk_darwin(v5 - 8);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.PinnedLists(0);
  __chkstk_darwin(v7 - 8);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100776648);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_100058000(&unk_100776650);
  v13 = __chkstk_darwin(v12 - 8);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v17 = sub_100058000(&qword_1007724A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v20 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v21 = *(v20 - 8);
  v35 = *(v21 + 56);
  v35(v19, 1, 1, v20);
  v22 = v3;
  v34 = *(v3 + 56);
  v34(v16, 1, 1, v2);
  v23 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();
  v40 = v1;
  sub_10000794C(v1 + v23, v11, &qword_100776648);
  v24 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) != 1)
  {
    v33 = v3;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000079B4(v16, &unk_100776650);
      v22 = v33;
      v25 = v11;
      v26 = v41;
      (*(v33 + 32))(v16, v25, v41);
      v34(v16, 0, 1, v26);
    }

    else
    {
      sub_1000079B4(v19, &qword_1007724A0);
      (*(v21 + 32))(v19, v11, v20);
      v35(v19, 0, 1, v20);
      v22 = v33;
    }
  }

  v27 = v37;
  sub_10000794C(v19, v37, &qword_1007724A0);
  TTRObservableViewModel.updateAndPublish(_:)();
  v28 = v36;
  sub_10000794C(v16, v36, &unk_100776650);
  v29 = *(v22 + 48);
  if (v29(v28, 1, v41) == 1)
  {
    v30 = v39;
    static REMHashtagLabelSpecifier.empty.getter();
    if (v29(v28, 1, v41) != 1)
    {
      sub_1000079B4(v28, &unk_100776650);
    }
  }

  else
  {
    v30 = v39;
    (*(v22 + 32))(v39, v28, v41);
  }

  v31 = v38;
  (*(v22 + 32))(v38, v30, v41);
  TTRObservableViewModel.updateAndPublish(_:)();
  sub_100019998(v31, type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags);
  sub_100019998(v27, type metadata accessor for TTRIAccountsListsInnerSelectionRequest.PinnedLists);
  sub_1000079B4(v16, &unk_100776650);
  return sub_1000079B4(v19, &qword_1007724A0);
}

void *sub_1000197A0(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(sub_100058000(&qword_1007724A0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

uint64_t sub_1000198D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_100019934(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_100019998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000199F8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

uint64_t sub_100019B40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767198 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_10077BBE0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v2;
    v17 = v9;
    v18 = v7;
    v19 = v4;
    v20 = v8;
    v21 = v5;
    v22 = v16;
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "RootViewController did showViewController {viewController: %@}", v15, 0xCu);
    sub_1000079B4(v22, &unk_10076DF80);
    v5 = v21;
    v8 = v20;
    v4 = v19;
    v7 = v18;
    v9 = v17;
    v2 = v31;
  }

  sub_100003540(0, &qword_100775690);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    sub_10001A06C(0);
    sub_100003540(0, &qword_100777780);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    *(v26 + 24) = v12;
    aBlock[4] = sub_10001AEB4;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_10071F4B8;
    v27 = _Block_copy(aBlock);
    v28 = v12;
    v29 = v2;

    v30 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10001A4CC();
    sub_100058000(&qword_100780A50);
    sub_10001A524();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v30, v8);
  }

  return result;
}

uint64_t sub_100019F64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019FA4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077BBE0);
  v1 = sub_100003E30(v0, qword_10077BBE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001A06C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    if ([v3 canBeShared])
    {
      v4 = [v3 account];
      v5 = [v4 accountTypeHost];

      LODWORD(v4) = [v5 isCloudKit];
      if (v4)
      {
        if (qword_100767198 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100003E30(v6, qword_10077BBE0);
        v7 = v3;
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v37 = v11;
          *v10 = 136315138;
          v12 = [v7 displayName];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v16 = sub_100004060(v13, v15, &v37);

          *(v10 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v8, v9, "TTRIRootViewController: Preparing activityItemsConfigurationProviding for list {remList: %s}.", v10, 0xCu);
          sub_100004758(v11);
        }

        v17 = type metadata accessor for TTRIRootActivityItemsConfigurationProviding();
        v18 = objc_allocWithZone(v17);
        *&v18[OBJC_IVAR____TtC9Reminders43TTRIRootActivityItemsConfigurationProviding_visibleList] = v7;
        v38.receiver = v18;
        v38.super_class = v17;
        v19 = v7;
        v20 = objc_msgSendSuper2(&v38, "init");
        v21 = OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding;
        v22 = *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding];
        *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding] = v20;

        v23 = [v2 view];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 window];

          if (v25)
          {
            v26 = [v25 windowScene];

            if (v26)
            {
              v27 = *&v2[v21];
              [v26 setActivityItemsConfigurationSource:v27];
            }
          }

          return;
        }

LABEL_26:
        __break(1u);
        return;
      }
    }
  }

  v28 = *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding];
  *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_activityItemsConfigurationProviding] = 0;

  v29 = [v2 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  v31 = [v29 window];

  if (v31)
  {
    v32 = [v31 windowScene];

    if (v32)
    {
      [v32 setActivityItemsConfigurationSource:0];
    }
  }

  if (qword_100767198 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003E30(v33, qword_10077BBE0);
  oslog = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v34, "TTRIRootViewController: Clearing activityItemsConfigurationProviding.", v35, 2u);
  }
}

unint64_t sub_10001A4CC()
{
  result = qword_10076B7D0;
  if (!qword_10076B7D0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B7D0);
  }

  return result;
}

unint64_t sub_10001A524()
{
  result = qword_10076B7E0;
  if (!qword_10076B7E0)
  {
    sub_10005D20C(&qword_100780A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B7E0);
  }

  return result;
}

uint64_t sub_10001A604(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA38;

  return sub_10001A6BC(a1, v4);
}

uint64_t sub_10001A6BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001AB30;

  return v6(a1);
}

uint64_t sub_10001A7B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_10001A878(a1, v4, v5, v6, v7);
}

uint64_t sub_10001A878(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 64) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;

  return _swift_task_switch(sub_10001A914, v7, v6);
}

uint64_t sub_10001A914()
{
  if (*(v0 + 64) == 1)
  {
    *(v0 + 16) = *(*(v0 + 24) + 168);
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    v2 = sub_100058000(&qword_10077FE00);
    v3 = sub_100371D5C();
    *v1 = v0;
    v1[1] = sub_100344304;

    return Publisher<>.firstValue()(v3, v2, v3);
  }

  else
  {

    TTRStartupItemQueue.start()();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10001AA3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001AB30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001AC28(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9Reminders22TTRIRootViewController_pendingNavigateToRootPromise;
  if (*(a1 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_pendingNavigateToRootPromise))
  {

    DeferredPromise.resolve(_:)();
  }

  *(a1 + v2) = 0;
}

id sub_10001AC98(char *a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100782E90);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TTRIAccountsListsPresenter interactor did update model", v10, 2u);
  }

  v11 = type metadata accessor for REMAccountsListDataView.Model();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10001AEBC(v6, v2 + v13);
  swift_endAccess();
  return sub_10001AFE0(a1, 0, 2, 1);
}

uint64_t sub_10001AEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100783140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AF34()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001E6EC;

  return sub_10001CAF8();
}

id sub_10001AFE0(char *a1, int a2, int a3, int a4)
{
  LODWORD(v157) = a4;
  v149 = a3;
  v148 = a2;
  v177 = a1;
  v137 = sub_100058000(&qword_10078D480);
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v143 = &v133 - v5;
  v138 = type metadata accessor for TTRIAccountsListsViewUpdates();
  __chkstk_darwin(v138);
  v142 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100058000(&qword_10076B998);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v133 - v7;
  v141 = sub_100058000(&qword_10076B9A0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = (&v133 - v8);
  v147 = type metadata accessor for Notification();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100783148);
  __chkstk_darwin(v10 - 8);
  v166 = &v133 - v11;
  v12 = type metadata accessor for TTRListType.PredefinedSmartListsDisplayOrder();
  __chkstk_darwin(v12 - 8);
  v172 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v171 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for REMAccountsListDataView.Model();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v170 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRListType.PredefinedSmartListVisibilityOptions();
  v161 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v173 = &v133 - v20;
  v21 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v21 - 8);
  v156 = &v133 - v22;
  v23 = sub_100058000(&unk_100776650);
  v24 = __chkstk_darwin(v23 - 8);
  v164 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v176 = &v133 - v26;
  v27 = sub_100058000(&qword_100783150);
  v28 = __chkstk_darwin(v27 - 8);
  v160 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v133 - v30;
  v155 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v180 = *(v150 - 8);
  __chkstk_darwin(v150);
  v33 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_100058000(&qword_10076B9C8);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v35 = &v133 - v34;
  v36 = sub_100058000(&unk_10076B880);
  v37 = *(v36 - 1);
  v38 = __chkstk_darwin(v36);
  v144 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v165 = &v133 - v41;
  __chkstk_darwin(v40);
  v43 = (&v133 - v42);
  v179 = v4;
  v175 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

  TTRAccountsListsViewModel.accountCollection.getter();

  v44 = *(swift_getOpaqueTypeConformance2() + 8);
  v45 = dispatch thunk of Collection.count.getter();
  v174 = v16;
  v183 = v36;
  v169 = v19;
  v168 = v37;
  v167 = v44;
  if (v45)
  {
    v46 = v45;
    v184 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    dispatch thunk of Collection.startIndex.getter();
    if (v46 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v47 = v35;
    v181 = v180 + 16;
    v182 = v43;
    v180 += 8;
    v48 = v150;
    do
    {
      v49 = dispatch thunk of Collection.subscript.read();
      (*v181)(v33);
      v49(v185, 0);
      TTRAccountsListsViewModel.Account.objectID.getter();
      (*v180)(v33, v48);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      dispatch thunk of Collection.formIndex(after:)();
      --v46;
    }

    while (v46);
    (*(v151 + 8))(v47, v152);
    v181 = *(v168 + 8);
    (v181)(v182, v183);
    v50 = v184;
  }

  else
  {
    v181 = *(v37 + 8);
    (v181)(v43, v36);
    v50 = &_swiftEmptyArrayStorage;
  }

  v51 = REMAccountsListDataView.Model.accounts.getter();
  v52 = *(v51 + 16);
  if (v52)
  {
    v180 = v50;
    v185[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v53 = (v154 + 2);
    v182 = v154[2];
    v54 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v154 = v51;
    v55 = v51 + v54;
    v56 = *(v53 + 7);
    v57 = v155;
    v58 = v153;
    do
    {
      v182(v58, v55, v57);
      v59 = REMAccountsListDataView.Model.Account.account.getter();
      v60 = [v59 objectID];

      (*(v53 - 1))(v58, v57);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v55 += v56;
      --v52;
    }

    while (v52);

    v61 = v185[0];
    v50 = v180;
  }

  else
  {

    v61 = &_swiftEmptyArrayStorage;
  }

  v62 = sub_10001D5F8(v50);

  v63 = sub_10001D5F8(v61);

  sub_10001E474(v62, v63);
  v65 = v64;

  v66 = v179;
  if ((v65 & 1) == 0)
  {
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorType.updateAccountsEligibleForMigration()();
  }

  if (v157)
  {
    sub_1004494F4();
  }

  v67 = *(v66 + 64);
  v68 = *(v66 + 72);
  ObjectType = swift_getObjectType();
  REMAccountsListDataView.Model.accounts.getter();
  v70 = dispatch thunk of TTRAccountsListsInteractorType.accountForUpgradeHint(from:)();

  v71 = type metadata accessor for TTRAccountsListsViewModel.Tip();
  (*(*(v71 - 8) + 56))(v178, 1, 1, v71);

  v72 = TTRAccountsListsViewModel.visiblePinnedLists.getter();

  v73 = v156;
  v74 = v68;
  dispatch thunk of TTRAccountsListsInteractorType.lastSelectedListInWindow.getter();
  v75 = type metadata accessor for TTRListType();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v73, 1, v75);
  v182 = v72;
  v180 = v70;
  if (v77 == 1)
  {
    sub_1000079B4(v73, &unk_100775640);
  }

  else
  {
    if ((*(v76 + 88))(v73, v75) == enum case for TTRListType.tagged(_:))
    {
      (*(v76 + 96))(v73, v75);
      v78 = type metadata accessor for REMHashtagLabelSpecifier();
      v79 = *(v78 - 8);
      v80 = v176;
      (*(v79 + 32))(v176, v73, v78);
      (*(v79 + 56))(v80, 0, 1, v78);
      goto LABEL_22;
    }

    (*(v76 + 8))(v73, v75);
  }

  v81 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v81 - 8) + 56))(v176, 1, 1, v81);
LABEL_22:
  v157 = *(v68 + 8);
  v82 = v169;
  v155 = ObjectType;
  dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.smartListsVisibilityInUserDefaults.getter();
  v83 = v177;
  REMAccountsListDataView.Model.userDefinedVisibilityOfPredefinedSmartLists.getter();
  v84 = v173;
  v85 = v82;
  TTRListType.PredefinedSmartListVisibilityOptions.merging(with:)();

  v86 = v161;
  v87 = *(v161 + 8);
  v88 = v174;
  v156 = (v161 + 8);
  v154 = v87;
  (v87)(v85, v174);
  (*(v158 + 16))(v170, v83, v159);
  (*(v162 + 16))(v171, v66 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModelCreationOption, v163);
  v89 = swift_allocObject();
  *(v89 + 16) = v67;
  *(v89 + 24) = v74;
  v90 = swift_allocObject();
  *(v90 + 16) = v67;
  *(v90 + 24) = v74;
  swift_unknownObjectRetain_n();
  dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.smartListsDisplayOrderInUserDefaults.getter();
  (*(v86 + 16))(v85, v84, v88);
  TTRAccountsListsPresenterCapability.pinnedListsContactsData.getter();
  v35 = v176;
  sub_10000794C(v176, v164, &unk_100776650);
  sub_10000794C(v178, v160, &qword_100783150);
  v91 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_permissionRequest;
  swift_beginAccess();
  sub_10000794C(v179 + v91, v166, &qword_100783148);
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  v177 = v180;
  v92 = TTRAccountsListsViewModel.init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)();

  v93 = v179;

  v94 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  LOBYTE(v88) = sub_10001EC5C(v182, v94);

  if ((v88 & 1) == 0)
  {
    v95 = *(v93 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_menuSystemNotifier);
    v96 = [objc_opt_self() defaultQueue];
    String._bridgeToObjectiveC()();
    v185[3] = type metadata accessor for TTRIMenuSystemNotifier();
    v185[0] = v95;
    v97 = v95;
    v98 = v145;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v146 + 8))(v98, v147);
    [v96 enqueueNotification:isa postingStyle:1 coalesceMask:3 forModes:0];
  }

  v100 = *(v93 + v175);
  *(v93 + v175) = v92;

  v101 = v165;
  TTRAccountsListsViewModel.accountCollection.getter();
  v102 = v183;
  v103 = dispatch thunk of Collection.isEmpty.getter();
  v104 = v101;
  v105 = v181;
  (v181)(v104, v102);
  if (v103)
  {
    v106 = v105;
    v107 = v144;
    TTRAccountsListsViewModel.accountCollection.getter();
    v108 = dispatch thunk of Collection.isEmpty.getter();
    v106(v107, v102);
    v109 = v108 ^ 1;
  }

  else
  {
    v109 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {

      TTRModuleState.modelDidReceive()();

      if (v109)
      {
        v110 = &enum case for TTRTreeViewUpdates.reload<A>(_:);
        v111 = v139;
      }

      else
      {
        v124 = v133;
        TTRAccountsListsViewModel.diff(with:)();
        sub_100058000(&qword_10076B9A8);
        v125 = v134;
        v111 = v139;
        v126 = v135;
        (*(v134 + 16))(v139, v124, v135);
        static TTRTreeViewAnimationByType.fading.getter();
        (*(v125 + 8))(v124, v126);
        v110 = &enum case for TTRTreeViewUpdates.incremental<A>(_:);
      }

      v127 = v140;
      v128 = v141;
      (*(v140 + 104))(v111, *v110, v141);
      v129 = v142;
      (*(v127 + 16))(v142, v111, v128);
      v130 = v129 + *(v138 + 20);
      *v130 = v148 & 1;
      *(v130 + 1) = v149;
      *(v130 + 8) = 0;
      *(v130 + 16) = 0;

      sub_1000BE5A4(v131, v129);

      TTRModuleState.modelDidLoad(defersResolveOverride:)(2);

      sub_100449828(v111);

      swift_unknownObjectRelease();
      sub_10045164C(v129, type metadata accessor for TTRIAccountsListsViewUpdates);
      (*(v127 + 8))(v111, v128);
      (v154)(v173, v174);
      v132 = v176;
      goto LABEL_45;
    }

    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_44:
    (v154)(v173, v174);
    v132 = v35;
LABEL_45:
    sub_1000079B4(v132, &unk_100776650);
    return sub_1000079B4(v178, &qword_100783150);
  }

  v36 = Strong;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  TTRModuleState.modelDidReceive()();

  v113 = v109 & 1;
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForDataModelUpdate(shouldReload:itemIDsWithLazyViewModelUpdates:animated:)();
  v114 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 2) = v114;
  v33[24] = v113;
  *(v33 + 4) = v100;
  *(v33 + 5) = v92;
  v115 = qword_1007672D8;

  if (v115 != -1)
  {
LABEL_48:
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_100003E30(v116, qword_100782E90);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&_mh_execute_header, v117, v118, "TTRIAccountsListsPresenter: presentation tree update BEGIN", v119, 2u);
  }

  result = [v36 isViewLoaded];
  if (result)
  {
    if (*(v36 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability))
    {
      v121 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v122 = swift_allocObject();
      *(v122 + 16) = v148 & 1;
      *(v122 + 17) = v149;
      *(v122 + 24) = sub_10003987C;
      *(v122 + 32) = v33;
      *(v122 + 40) = v121;

      v123 = v143;
      TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)();

      swift_unknownObjectRelease();

      (*(v136 + 8))(v123, v137);
      (v154)(v173, v174);
      sub_1000079B4(v176, &unk_100776650);
      sub_1000079B4(v178, &qword_100783150);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v136 + 8))(v143, v137);
    (v154)(v173, v174);
    sub_1000079B4(v35, &unk_100776650);
    sub_1000079B4(v178, &qword_100783150);
  }

  return result;
}