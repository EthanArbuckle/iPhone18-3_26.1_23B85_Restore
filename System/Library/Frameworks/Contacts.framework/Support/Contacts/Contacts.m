void sub_100001848(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id sub_100001874()
{
  v0 = objc_opt_self();

  return [v0 enterSandbox];
}

id *iOSDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC11postersyncd6Daemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t iOSDaemon.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11postersyncd6Daemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for iOSDaemon()
{
  result = qword_100020C58;
  if (!qword_100020C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for macOSDaemon()
{
  result = qword_100020DA0;
  if (!qword_100020DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001AF0()
{
  sub_100002324();
  sub_100001D50();
  sub_100002020();
  sub_10000214C();
  v0 = [objc_opt_self() mainRunLoop];
  [v0 run];

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Unexpectedly exited runloop, shutting down...", v2, 2u);
  }
}

uint64_t sub_100001BE0()
{
  v0 = (*(*(sub_1000025B0(&qword_100021300, &unk_1000189C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static ContactPosterContainer.makeContainer(disableCloudKit:inMemory:customStorePath:)();
  sub_1000025F8(v2);
  return v4;
}

id sub_100001D50()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  result = [v7 defaultStoreLocation];
  if (result)
  {
    v9 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    [v7 moveAsideIfUntaggedDevelopmentDB:v11];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Creating singleton NSPersistentCloudKitContainer", v15, 2u);
    }

    v16 = sub_100001BE0();
    if (v16)
    {
      v17 = v16;
      [v7 tagDatabaseAsSafeForProductionInContainer:v16];
      v18 = *(v1 + 32);
      *(v1 + 32) = v17;
      v19 = v17;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Took strong reference to singleton NSPersistentCloudKitContainer", v22, 2u);
      }

      else
      {

        v20 = v19;
      }
    }

    else
    {
      v20 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v20, v23, "Couldn't tag database as production ready", v24, 2u);
      }
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_100002020()
{
  v1 = objc_allocWithZone(type metadata accessor for PostersNotificationHandlerService());
  v2 = PostersNotificationHandlerService.init(container:store:scheduler:)(0, 0, 0);
  v3 = *(v0 + 16);
  *(v0 + 16) = v2;

  v4 = *(v0 + 16);
  oslog = Logger.logObject.getter();
  if (v4)
  {
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Poster Cleanup service started";
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Notification handler service couldn't be created";
  }

  _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_7:
}

void sub_10000214C()
{
  v1 = APIService.init()();
  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
  v12 = v1;

  if (!v1)
  {
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Poster API service couldn't be created", v9, 2u);
    }

    goto LABEL_11;
  }

  APIService.start()();
  v3 = Logger.logObject.getter();
  if (!v4)
  {
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v10, "Poster API service started", v11, 2u);
    }

LABEL_11:
    v7 = v12;
    goto LABEL_12;
  }

  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, v5, "Poster API service couldn't be started", v6, 2u);
  }

  v7 = v3;
LABEL_12:
}

void sub_100002324()
{
  v1 = v0;
  if (qword_100020C28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002660(v2, qword_100021678);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Entering the sandbox", v5, 2u);
  }

  (*(*v1 + 224))();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Entered the sandbox", v7, 2u);
  }
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_100020EF0;
  if (!qword_100020EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002510()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000025B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000025F8(uint64_t a1)
{
  v2 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002660(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002698()
{
  sub_1000027EC();
  result = OS_os_log.init(subsystem:category:)();
  qword_100021670 = result;
  return result;
}

id sub_100002790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonLogging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000027EC()
{
  result = qword_100021038;
  if (!qword_100021038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021038);
  }

  return result;
}

uint64_t sub_100002838()
{
  v0 = type metadata accessor for Logger();
  sub_1000028C4(v0, qword_100021678);
  sub_100002660(v0, qword_100021678);
  if (qword_100020C20 != -1)
  {
    swift_once();
  }

  v1 = qword_100021670;
  return Logger.init(_:)();
}

uint64_t *sub_1000028C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_100002968()
{
  if (qword_100020C28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002660(v0, qword_100021678);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Daemon starting up", v3, 2u);
  }

  v4 = type metadata accessor for iOSDaemon();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  Logger.init(subsystem:category:)();
  sub_100001AF0();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Daemon shutting down", v10, 2u);
  }
}

uint64_t sub_100002B2C()
{
  v0 = type metadata accessor for Logger();
  sub_1000028C4(v0, qword_100021690);
  sub_100002660(v0, qword_100021690);
  return Logger.init(subsystem:category:)();
}

id APIService.init()()
{
  v0 = objc_allocWithZone(CNContactPosterDataService);

  return [v0 init];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> APIService.start()()
{
  v1 = v0;
  if (qword_100021040 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002660(v2, qword_100021690);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting API service", v5, 2u);
  }

  [v1 beginListening];
}

uint64_t variable initialization expression of PostersNotificationHandlerService.cleanupRequested()
{
  sub_1000025B0(&qword_100021310, &qword_1000188B0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void *sub_100002D54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for NSCloudKitMirroringDelegateResetSyncReason()
{
  if (!qword_100021110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100021110);
    }
  }
}

id PostersNotificationHandlerService.init(container:store:scheduler:)(id a1, void *a2, void *a3)
{
  v4 = v3;
  v74 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v71 - v11;
  v13 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested;
  sub_1000025B0(&qword_100021310, &qword_1000188B0);
  v14 = swift_allocObject();
  *&v4[v13] = v14;
  *(v14 + 16) = 0;
  Logger.init(subsystem:category:)();
  v73 = a1;
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v15 = static ContactPosterContainer.makeContainer(disableCloudKit:inMemory:customStorePath:)();
    sub_100008CF0(v12, &qword_100021300, &unk_1000189C0);
    a1 = v73;
  }

  *&v4[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container] = v15;
  v16 = v74;
  if (a2)
  {
    v17 = a1;
    v18 = a2;
  }

  else
  {
    v20 = objc_allocWithZone(CNContactStore);
    v21 = v73;
    v18 = [v20 init];
  }

  *&v4[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_contactStore] = v18;
  v72 = a2;
  if (v16)
  {
    v22 = a2;
    v23 = v16;
  }

  else
  {
    v24 = objc_opt_self();
    v25 = a2;
    v26 = String._bridgeToObjectiveC()();
    v23 = [v24 serialDispatchQueueSchedulerWithName:v26];
  }

  *&v4[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_scheduler] = v23;
  v27 = type metadata accessor for PostersNotificationHandlerService();
  v81.receiver = v4;
  v81.super_class = v27;
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v81, "init");
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 defaultCenter];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_100007790;
  v80 = v32;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100003D0C;
  v78 = &unk_10001CC68;
  v33 = _Block_copy(&aBlock);

  v34 = [v31 addObserverForName:NSPersistentCloudKitContainerEventChangedNotification object:0 queue:0 usingBlock:v33];
  _Block_release(v33);
  swift_unknownObjectRelease();

  v35 = [v29 defaultCenter];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_1000077B0;
  v80 = v36;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100003D0C;
  v78 = &unk_10001CC90;
  v37 = _Block_copy(&aBlock);

  v38 = [v35 addObserverForName:CNContactStoreDidChangeNotification object:0 queue:0 usingBlock:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  v39 = [v29 defaultCenter];
  v40 = NSCloudKitMirroringDelegateWillResetSyncNotificationName;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_1000077B8;
  v80 = v41;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100003D0C;
  v78 = &unk_10001CCB8;
  v42 = _Block_copy(&aBlock);
  v43 = v40;

  v44 = [v39 addObserverForName:v43 object:0 queue:0 usingBlock:v42];
  _Block_release(v42);
  swift_unknownObjectRelease();

  v45 = [v29 defaultCenter];
  v46 = NSCloudKitMirroringDelegateDidResetSyncNotificationName;
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_1000077E8;
  v80 = v47;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v71[1] = &v77;
  v77 = sub_100003D0C;
  v78 = &unk_10001CCE0;
  v48 = _Block_copy(&aBlock);
  v49 = v46;

  v50 = [v45 addObserverForName:v49 object:0 queue:0 usingBlock:v48];
  _Block_release(v48);
  swift_unknownObjectRelease();

  v51 = [objc_opt_self() currentEnvironment];
  LODWORD(v45) = [v51 isInternalBuild];

  if (v45)
  {
    v52 = [v29 defaultCenter];
    sub_100008CA8(0, &qword_100021338, NSDistributedNotificationCenter_ptr);
    v53 = [swift_getObjCClassFromMetadata() defaultCenter];
    v54 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
    sub_1000025B0(&qword_100021340, &qword_1000189D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000189B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v56;
    *(inited + 48) = v54;
    v71[0] = v54;
    v57 = sub_100008308(inited);
    swift_setDeallocating();
    sub_100008CF0(inited + 32, &qword_100021348, &qword_1000189D8);
    v58 = String._bridgeToObjectiveC()();
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = v57;
    v60[4] = v52;
    v79 = sub_100008410;
    v80 = v60;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_100003D0C;
    v78 = &unk_10001CD30;
    v61 = _Block_copy(&aBlock);

    v62 = v52;

    v63 = [v53 addObserverForName:v58 object:0 queue:0 usingBlock:v61];
    _Block_release(v61);
    swift_unknownObjectRelease();

    v64 = String._bridgeToObjectiveC()();
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = v57;
    v66[4] = v62;
    v79 = sub_100008490;
    v80 = v66;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_100003D0C;
    v78 = &unk_10001CD80;
    v67 = _Block_copy(&aBlock);
    v68 = v62;

    v69 = [v53 addObserverForName:v64 object:0 queue:0 usingBlock:v67];
    swift_unknownObjectRelease();

    _Block_release(v67);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v30;
}

uint64_t type metadata accessor for PostersNotificationHandlerService()
{
  result = qword_100021378;
  if (!qword_100021378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003A40()
{
  v0 = sub_1000025B0(&qword_1000213F0, qword_100018A78);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Notification.userInfo.getter();
    if (v6)
    {
      v7 = v6;
      v19[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19[2] = v8;
      AnyHashable.init<A>(_:)();
      if (*(v7 + 16) && (v9 = sub_10000E160(v20), (v10 & 1) != 0))
      {
        sub_1000089DC(*(v7 + 56) + 32 * v9, &v21);
        sub_100008A90(v20);

        if (*(&v22 + 1))
        {
          sub_100008CA8(0, &qword_1000213F8, NSPersistentCloudKitContainerEvent_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v11 = v20[0];
          if ([v20[0] type] != 1 || !objc_msgSend(v11, "succeeded"))
          {
            goto LABEL_11;
          }

          v12 = [v11 endDate];
          if (v12)
          {
            v13 = v12;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v14 = type metadata accessor for Date();
            (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
            sub_100008CF0(v3, &qword_1000213F0, qword_100018A78);
            sub_100004314();
LABEL_11:

            return;
          }

          v18 = type metadata accessor for Date();
          (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
          v15 = &qword_1000213F0;
          v16 = qword_100018A78;
          v17 = v3;
          goto LABEL_16;
        }
      }

      else
      {

        sub_100008A90(v20);
        v21 = 0u;
        v22 = 0u;
      }
    }

    else
    {

      v21 = 0u;
      v22 = 0u;
    }

    v15 = &qword_1000213A8;
    v16 = &qword_100018A40;
    v17 = &v21;
LABEL_16:
    sub_100008CF0(v17, v15, v16);
  }
}

uint64_t sub_100003D0C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_100003E00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100004568();
  }
}

void sub_100003E54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

uint64_t sub_100003EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const char *a5, void **a6, const char *a7)
{
  v12 = type metadata accessor for Notification();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v31 = a5;
    v32 = a7;
    v19 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30[1] = v19;
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, v31, v22, 2u);
    }

    v23 = *a6;
    v33 = 0u;
    v34 = 0u;
    v24 = v23;
    sub_100008D90(a3);
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [a4 postNotification:isa];

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, v32, v28, 2u);

      v29 = v24;
    }

    else
    {
      v29 = v18;
      v18 = v26;
      v26 = v24;
    }

    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

id PostersNotificationHandlerService.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PostersNotificationHandlerService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100004314()
{
  v1 = v0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(**&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested] + 136))(), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  v3 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  v4 = os_log_type_enabled(log, v3);
  if (v2)
  {
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Ignoring poster store change notification overlapping with a queued cleanup request", v10, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Dispatching a poster store change notification for background cleanup handling", v5, 2u);
    }

    v6 = *&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_scheduler];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    aBlock[4] = sub_100008C04;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004524;
    aBlock[3] = &unk_10001CE20;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 performBlock:v8];
    _Block_release(v8);
  }
}

uint64_t sub_100004524(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100004568()
{
  v1 = v0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(**&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested] + 136))(), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  v3 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  v4 = os_log_type_enabled(log, v3);
  if (v2)
  {
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Ignoring contact store change notification overlapping with a queued cleanup request", v10, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Dispatching a contact store change notification for background cleanup handling", v5, 2u);
    }

    v6 = *&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_scheduler];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    aBlock[4] = sub_100008BE0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004524;
    aBlock[3] = &unk_10001CDD0;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 performBlock:v8];
    _Block_release(v8);
  }
}

void sub_1000047A0(const char *a1, const char *a2)
{
  v4 = static os_log_type_t.debug.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, a1, v6, 2u);
  }

  sub_100006370();
  v7 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, log, v7, a2, v8, 2u);
  }
}

uint64_t sub_1000048D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  v14 = [objc_opt_self() defaultStoreLocation];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  sub_100008AE4(v11, v13);
  type metadata accessor for URL();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_100008CF0(v13, &qword_100021300, &unk_1000189C0);
    v18 = 1;
  }

  else
  {
    v20[0] = 0xD000000000000019;
    v20[1] = 0x8000000100019770;
    (*(v3 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
    sub_100008B54();
    URL.appending<A>(component:directoryHint:)();
    (*(v3 + 8))(v6, v2);
    (*(v17 + 8))(v13, v16);
    v18 = 0;
  }

  return (*(v17 + 56))(a1, v18, 1, v16);
}

BOOL sub_100004BE8()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10000E160(v27), (v3 & 1) == 0))
  {

    sub_100008A90(v27);
LABEL_10:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_11;
  }

  sub_1000089DC(*(v1 + 56) + 32 * v2, &v28);
  sub_100008A90(v27);

  if (!*(&v29 + 1))
  {
LABEL_11:
    sub_100008CF0(&v28, &qword_1000213A8, &qword_100018A40);
    goto LABEL_12;
  }

  sub_100008CA8(0, &qword_1000213B0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v4 = v27[0];
    v5 = [v27[0] unsignedIntegerValue];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27[0] = v9;
      *v8 = 136315138;
      *&v28 = v5;
      type metadata accessor for NSCloudKitMirroringDelegateResetSyncReason();
      v10 = String.init<A>(describing:)();
      v12 = sub_100007BD8(v10, v11, v27);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "CloudKit reset for reason: %s.", v8, 0xCu);
      sub_100008698(v9);
    }

    return v5 == 1;
  }

LABEL_12:
  v14 = Notification.userInfo.getter();
  if (!v14)
  {
LABEL_19:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_20;
  }

  v15 = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v16 = sub_10000E160(v27), (v17 & 1) == 0))
  {

    sub_100008A90(v27);
    goto LABEL_19;
  }

  sub_1000089DC(*(v15 + 56) + 32 * v16, &v28);
  sub_100008A90(v27);

  if (!*(&v29 + 1))
  {
LABEL_20:
    sub_100008CF0(&v28, &qword_1000213A8, &qword_100018A40);
    goto LABEL_21;
  }

  sub_100008CA8(0, &qword_1000213B0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v18 = 0;
    v21 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

  v18 = v27[0];
  sub_1000025B0(&qword_1000213B8, &qword_100018A48);
  v19 = String.init<A>(describing:)();
  v21 = v20;
LABEL_22:

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v24 = 136315138;
    v26 = sub_100007BD8(v19, v21, v27);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "CloudKit reset notification didn't map to a known ResetSyncReason: %s.", v24, 0xCu);
    sub_100008698(v25);
  }

  else
  {
  }

  return 0;
}

void sub_100005040()
{
  v1 = v0;
  v2 = type metadata accessor for BackupRestoreMigrator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v62 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v56[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = &v56[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v56[-v18];
  __chkstk_darwin(v17);
  v63 = &v56[-v20];
  if (sub_100004BE8())
  {
    sub_1000048D8(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100008CF0(v9, &qword_100021300, &unk_1000189C0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Received CloudKit reset for login, but unexpectedly couldn't construct URL for the poster store. Abandoning ship.", v23, 2u);
      }
    }

    else
    {
      v60 = v2;
      (*(v11 + 32))(v63, v9, v10);
      v27 = objc_opt_self();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 os_transactionInhibitorWithLabel:v28];

      v58 = v29;
      [v29 start];
      v30 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      v33 = os_log_type_enabled(v31, v32);
      v61 = v11;
      if (v33)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Created backup-before-signin transaction", v34, 2u);
        v11 = v61;
      }

      v59 = v3;

      v57 = v30;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "CloudKit mirroring will reset due to account login. Starting backup", v37, 2u);
        v11 = v61;
      }

      v38 = *(v1 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container);
      v39 = *(v11 + 16);
      v39(v19, v63, v10);
      v40 = v38;
      BackupRestoreMigrator.init(container:tempURL:modelName:recoveryLimit:)();
      v41 = BackupRestoreMigrator.attemptMigration(direction:)();
      v42 = v59;
      if (v41)
      {
        v39(v16, v63, v10);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v64 = v57;
          *v45 = 136315138;
          sub_100008A38();
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          v49 = v61;
          (*(v61 + 8))(v16, v10);
          v50 = sub_100007BD8(v46, v48, &v64);

          *(v45 + 4) = v50;
          v51 = v49;
          _os_log_impl(&_mh_execute_header, v43, v44, "Successfully backed up poster data to %s", v45, 0xCu);
          sub_100008698(v57);
        }

        else
        {

          v51 = v61;
          (*(v61 + 8))(v16, v10);
        }

        (*(v42 + 8))(v62, v60);
      }

      else
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Attempted to back up poster data, but there was no readable data to backup, so no temp database was created.", v54, 2u);
        }

        (*(v42 + 8))(v62, v60);
        v51 = v61;
      }

      v55 = v63;
      sub_1000065D8(v58, v1, "Stopped backup-before-signin transaction");
      swift_unknownObjectRelease();
      (*(v51 + 8))(v55, v10);
    }
  }

  else
  {
    v63 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v63, v24, "No migration needed for a non-login CloudKit reset.", v25, 2u);
    }

    v26 = v63;
  }
}

void sub_1000059D8()
{
  v1 = v0;
  v2 = type metadata accessor for BackupRestoreMigrator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v62 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v56[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = &v56[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v56[-v18];
  __chkstk_darwin(v17);
  v63 = &v56[-v20];
  if (sub_100004BE8())
  {
    sub_1000048D8(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100008CF0(v9, &qword_100021300, &unk_1000189C0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Received CloudKit didReset for login, but unexpectedly couldn't construct URL for the poster store. Giving up with potentially abandoned backup.", v23, 2u);
      }
    }

    else
    {
      v60 = v2;
      (*(v11 + 32))(v63, v9, v10);
      v27 = objc_opt_self();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 os_transactionInhibitorWithLabel:v28];

      v58 = v29;
      [v29 start];
      v30 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      v33 = os_log_type_enabled(v31, v32);
      v61 = v11;
      if (v33)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Created restore-after-signin transaction", v34, 2u);
        v11 = v61;
      }

      v59 = v3;

      v57 = v30;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "CloudKit mirroring did reset due to account login. Attempting to restore from backup.", v37, 2u);
        v11 = v61;
      }

      v38 = *(v1 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container);
      v39 = *(v11 + 16);
      v39(v19, v63, v10);
      v40 = v38;
      BackupRestoreMigrator.init(container:tempURL:modelName:recoveryLimit:)();
      v41 = BackupRestoreMigrator.attemptMigration(direction:)();
      v42 = v59;
      if (v41)
      {
        v39(v16, v63, v10);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v64 = v57;
          *v45 = 136315138;
          sub_100008A38();
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          v49 = v61;
          (*(v61 + 8))(v16, v10);
          v50 = sub_100007BD8(v46, v48, &v64);

          *(v45 + 4) = v50;
          v51 = v49;
          _os_log_impl(&_mh_execute_header, v43, v44, "Successfully restored poster data from %s", v45, 0xCu);
          sub_100008698(v57);
        }

        else
        {

          v51 = v61;
          (*(v61 + 8))(v16, v10);
        }

        (*(v42 + 8))(v62, v60);
      }

      else
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Attempted to restore backed up poster data, but there was no data to restore.", v54, 2u);
        }

        (*(v42 + 8))(v62, v60);
        v51 = v61;
      }

      v55 = v63;
      sub_1000065D8(v58, v1, "Stopped restore-after-signin transaction");
      swift_unknownObjectRelease();
      (*(v51 + 8))(v55, v10);
    }
  }

  else
  {
    v63 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v63, v24, "No restore needed for a non-login CloudKit reset.", v25, 2u);
    }

    v26 = v63;
  }
}

void sub_100006370()
{
  v1 = v0;
  v2 = (*(**(v0 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested) + 136))();
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_relaxed, memory_order_relaxed);
  if (v3)
  {
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 os_transactionInhibitorWithLabel:v7];

    [v8 start];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Created poster cleanup transaction", v11, 2u);
    }

    v12 = sub_1000068E4(0);
    sub_10000941C(v12);
    v13 = sub_1000068E4(1);
    sub_10000941C(v13);
    sub_10000669C(&_swiftEmptyArrayStorage);

    sub_1000065D8(v8, v1, "Stopped poster cleanup transaction");

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    log = Logger.logObject.getter();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, v4, "Unexpectedly started cleanup with request flag unset, returning early", v5, 2u);
    }
  }
}

void sub_1000065D8(void *a1, uint64_t a2, const char *a3)
{
  [a1 stop];
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a3, v5, 2u);
  }
}

void sub_10000669C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = static os_log_type_t.info.getter();

    v3 = Logger.logObject.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v1;

      _os_log_impl(&_mh_execute_header, v3, v2, "Will post notification because we updated poster data for %ld contacts", v4, 0xCu);
    }

    else
    {
    }

    sub_100008CA8(0, &qword_100021338, NSDistributedNotificationCenter_ptr);
    v5 = [swift_getObjCClassFromMetadata() defaultCenter];
    v6 = String._bridgeToObjectiveC()();
    [v5 postNotificationName:v6 object:0];

    v7 = static os_log_type_t.info.getter();

    log = Logger.logObject.getter();
    if (os_log_type_enabled(log, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v1;

      _os_log_impl(&_mh_execute_header, log, v7, "Did post notification because we updated poster data for %ld contacts", v8, 0xCu);
    }

    else
    {
    }
  }
}

char *sub_1000068E4(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
  v5 = static os_log_type_t.debug.getter();
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v107[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 0xD00000000000001ELL;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v3)
    {
      v10 = "missingExternalDetails";
    }

    else
    {
      v10 = "com.apple.contacts.postersyncd";
    }

    v11 = v4;
    v12 = sub_100007BD8(v9, v10 | 0x8000000000000000, v107);

    *(v7 + 4) = v12;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, v6, v5, "Looking for candidates: %s", v7, 0xCu);
    sub_100008698(v8);
  }

  v13 = *(v2 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_contactStore);
  v14 = _s18ContactsPosterSync15ExchangeContextVyACSgSo14CNContactStoreCcfC_0(v13);
  if (!v14)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Could not fetch Exchange containers from CNContactStore, giving up", v25, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v15 = v14;
  v16 = *(v2 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container);
  if (v3)
  {
    v17 = sub_1000121EC(v16);
    v19 = v17;
    v20 = v18;
    v106 = v4;
    if (v21)
    {
      if (v17[2])
      {
        v103 = v16;
        v22 = 1;
        goto LABEL_23;
      }

      v22 = 1;
      if (!*(v18 + 16))
      {
LABEL_55:

        sub_100008720(v19, v20, v22);
        v59 = static os_log_type_t.debug.getter();
        v60 = Logger.logObject.getter();
        if (os_log_type_enabled(v60, v59))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v107[0] = v62;
          *v61 = 136315138;
          if (v3)
          {
            v67 = 0xD00000000000001ELL;
          }

          else
          {
            v67 = 0xD000000000000016;
          }

          if (v3)
          {
            v68 = "missingExternalDetails";
          }

          else
          {
            v68 = "com.apple.contacts.postersyncd";
          }

          v69 = sub_100007BD8(v67, v68 | 0x8000000000000000, v107);

          *(v61 + 4) = v69;
          v66 = "Scan for %s shows everything up to date";
          goto LABEL_63;
        }

LABEL_64:

        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v22 = 0;
      if (!v17[2])
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v26 = sub_1000120A0(v16);
    v106 = v4;
    v20 = 0;
    v22 = 0;
    v19 = v26;
    if (!v26[2])
    {
      goto LABEL_55;
    }
  }

  v103 = v16;
LABEL_23:
  v28 = static os_log_type_t.debug.getter();
  sub_1000086E4(v19, v20, v22);
  v29 = Logger.logObject.getter();
  sub_100008720(v19, v20, v22);
  v104 = v20;
  v105 = v19;
  if (os_log_type_enabled(v29, v28))
  {
    v100 = v29;
    v30 = v22;
    v31 = v19;
    LODWORD(v99) = v28;
    v32 = v20;
    v33 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v107[0] = v101;
    *v33 = 136315394;
    if (v3)
    {
      v34 = 0xD00000000000001ELL;
    }

    else
    {
      v34 = 0xD000000000000016;
    }

    if (v3)
    {
      v35 = "missingExternalDetails";
    }

    else
    {
      v35 = "com.apple.contacts.postersyncd";
    }

    LODWORD(v102) = v3;
    v36 = sub_100007BD8(v34, v35 | 0x8000000000000000, v107);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_1000086E4(v31, v32, v30);
    v37 = CleanupCandidates.description.getter(v31, v32, v30);
    v39 = v38;
    v40 = v31;
    v22 = v30;
    sub_100008720(v40, v32, v30);
    v3 = sub_100007BD8(v37, v39, v107);

    *(v33 + 14) = v3;
    LOBYTE(v3) = v102;
    _os_log_impl(&_mh_execute_header, v100, v99, "Potential cleanup for %s: %s", v33, 0x16u);
    swift_arrayDestroy();

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (!v22)
    {
LABEL_31:
      v41 = v105;
      v42 = sub_100013078(v105, v13, v15);

      v43 = v104;
      goto LABEL_34;
    }
  }

  v41 = v105;
  v107[0] = v105;

  v43 = v104;

  sub_100009328(v44);
  v42 = sub_1000124D8(v107[0], v13, v15);

LABEL_34:
  v45 = v42[2];
  if (!v45)
  {

    sub_100008720(v41, v43, v22);
    v59 = static os_log_type_t.debug.getter();
    v60 = Logger.logObject.getter();
    if (os_log_type_enabled(v60, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v107[0] = v62;
      *v61 = 136315138;
      if (v3)
      {
        v63 = 0xD00000000000001ELL;
      }

      else
      {
        v63 = 0xD000000000000016;
      }

      if (v3)
      {
        v64 = "missingExternalDetails";
      }

      else
      {
        v64 = "com.apple.contacts.postersyncd";
      }

      v65 = sub_100007BD8(v63, v64 | 0x8000000000000000, v107);

      *(v61 + 4) = v65;
      v66 = "Found no updates : %s";
LABEL_63:
      _os_log_impl(&_mh_execute_header, v60, v59, v66, v61, 0xCu);
      sub_100008698(v62);

      goto LABEL_64;
    }

    goto LABEL_64;
  }

  v46 = static os_log_type_t.debug.getter();
  swift_bridgeObjectRetain_n();
  v47 = Logger.logObject.getter();
  v102 = v45;
  if (!os_log_type_enabled(v47, v46))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_66;
  }

  LODWORD(v101) = v46;
  v48 = v45;
  v49 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v107[0] = v100;
  *v49 = 136315650;
  if (v3)
  {
    v50 = 0xD00000000000001ELL;
  }

  else
  {
    v50 = 0xD000000000000016;
  }

  if (v3)
  {
    v51 = "missingExternalDetails";
  }

  else
  {
    v51 = "com.apple.contacts.postersyncd";
  }

  v52 = sub_100007BD8(v50, v51 | 0x8000000000000000, v107);

  *(v49 + 4) = v52;
  *(v49 + 12) = 2048;
  v53 = v42[2];

  *(v49 + 14) = v53;

  *(v49 + 22) = 2080;
  v54 = 2;
  if (v48 < 2)
  {
    v54 = v48;
  }

  if (v42[2] >= v54)
  {

    v55 = ArraySlice.description.getter();
    v57 = v56;

    v58 = sub_100007BD8(v55, v57, v107);

    *(v49 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v47, v101, "Updates planned for %s (%ld: %s", v49, 0x20u);
    swift_arrayDestroy();

    v41 = v105;
    v45 = v102;
LABEL_66:
    v70 = [v103 newBackgroundContext];
    v96 = v42;
    v97 = __chkstk_darwin(v70);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v71 = static os_log_type_t.info.getter();

    v72 = Logger.logObject.getter();
    v103 = v42;
    if (os_log_type_enabled(v72, v71))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v107[0] = v74;
      *v73 = 134218242;
      *(v73 + 4) = v103[2];

      *(v73 + 12) = 2080;
      if (v3)
      {
        v75 = 0xD00000000000001ELL;
      }

      else
      {
        v75 = 0xD000000000000016;
      }

      if (v3)
      {
        v76 = "missingExternalDetails";
      }

      else
      {
        v76 = "com.apple.contacts.postersyncd";
      }

      v77 = v22;
      v78 = sub_100007BD8(v75, v76 | 0x8000000000000000, v107);

      *(v73 + 14) = v78;
      v22 = v77;
      _os_log_impl(&_mh_execute_header, v72, v71, "Updated %ld identifiers for %s in poster store.", v73, 0x16u);
      sub_100008698(v74);
      v79 = v103;

      v41 = v105;
    }

    else
    {
      v79 = v42;
    }

    v80 = 0;
    v81 = v79 + 10;
    v99 = (v45 - 1);
    result = &_swiftEmptyArrayStorage;
    HIDWORD(v98) = v22;
    v100 = v79 + 10;
LABEL_76:
    v82 = &v81[7 * v80];
    v83 = v80;
    v101 = result;
    while (v83 < v79[2].isa)
    {
      if ((v82->isa & 1) == 0 && v22)
      {
        isa = v82[-6].isa;
        v84 = v82[-5].isa;
        v87 = v82[-4].isa;
        v86 = v82[-3].isa;
        v89 = v82[-2].isa;
        v88 = v82[-1].isa;
        v106 = &v98;
        v107[0] = v87;
        v107[1] = v86;
        v107[2] = v89;
        v107[3] = v88;
        __chkstk_darwin(result);
        v96 = v107;
        sub_1000087CC(isa, v84, v87, v86, v89, v88, 0);

        if (sub_100008180(sub_100008788, &v95, v105))
        {
          sub_1000088DC(isa, v84, v87, v86, v89, v88, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v102;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v101 = sub_10000793C(0, *(v101 + 2) + 1, 1, v101);
          }

          v22 = HIDWORD(v98);
          result = v101;
          v92 = *(v101 + 2);
          v91 = *(v101 + 3);
          if (v92 >= v91 >> 1)
          {
            result = sub_10000793C((v91 > 1), v92 + 1, 1, v101);
          }

          v80 = (v83 + 1);
          *(result + 2) = v92 + 1;
          v93 = &result[16 * v92];
          *(v93 + 4) = isa;
          *(v93 + 5) = v84;
          v81 = v100;
          v41 = v105;
          v79 = v103;
          if (v99 == v83)
          {
LABEL_88:
            v94 = result;
            sub_100008720(v41, v104, v22);

            return v94;
          }

          goto LABEL_76;
        }

        sub_1000088DC(isa, v84, v87, v86, v89, v88, 0);
        result = v101;
        v45 = v102;
        v41 = v105;
        v22 = HIDWORD(v98);
        v79 = v103;
      }

      v83 = (v83 + 1);
      v82 += 7;
      if (v45 == v83)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id PostersNotificationHandlerService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_100007758()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100007818(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_1000213D8, &unk_100018A60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000793C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021390, &qword_100018A30);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100007A48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_1000213E0, &qword_100019290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100007B54(uint64_t a1, uint64_t a2)
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

  sub_1000025B0(&qword_100021390, &qword_100018A30);
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

uint64_t sub_100007BD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007CA4(v11, 0, 0, 1, a1, a2);
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
    sub_1000089DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008698(v11);
  return v7;
}

unint64_t sub_100007CA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007DB0(a5, a6);
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

char *sub_100007DB0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007DFC(a1, a2);
  sub_100007F2C(&off_10001CB58);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007DFC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008018(v5, 0);
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
        v7 = sub_100008018(v10, 0);
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

uint64_t sub_100007F2C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000808C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100008018(uint64_t a1, uint64_t a2)
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

  sub_1000025B0(&qword_100021398, &qword_100018A38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000808C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021398, &qword_100018A38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100008180(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v12 = v6[1];
      v13 = *v6;
      v14 = v12;

      sub_100008874(v12, *(&v12 + 1));
      v9 = a1(&v13);
      v10 = v14;

      sub_100008970(v10, *(&v10 + 1));
      LOBYTE(v4) = (v3 != 0) | v9;
      if ((v3 != 0) | v9 & 1)
      {
        break;
      }

      v7 = v8 - 1;
      v6 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_10000825C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_100008308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025B0(&qword_1000213E8, &qword_100018A70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000E0E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100008448()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000084D0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100008588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025B0(&qword_1000215A0, &unk_100018A50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008C28(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000E0E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008C98(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100008698(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000086E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_100008720(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000087CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {

    sub_100008874(a3, a4);
  }

  else
  {

    return sub_100008874(a5, a6);
  }
}

uint64_t sub_100008874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008888(a1, a2);
  }

  return a1;
}

uint64_t sub_100008888(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000088DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {

    sub_100008970(a3, a4);
  }

  else
  {

    return sub_100008970(a5, a6);
  }
}

uint64_t sub_100008970(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008984(a1, a2);
  }

  return a1;
}

uint64_t sub_100008984(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000089DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100008A38()
{
  result = qword_1000213A0;
  if (!qword_1000213A0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000213A0);
  }

  return result;
}

uint64_t sub_100008AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008B54()
{
  result = qword_1000213C0;
  if (!qword_1000213C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000213C0);
  }

  return result;
}

uint64_t sub_100008BA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025B0(&qword_1000213D0, &unk_100019240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100008C98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100008CA8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008CF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000025B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000025B0(&qword_100021588, &qword_100019230);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_100008CA8(0, &qword_1000213B0, NSNumber_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100008C98(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100008C98(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100008C98(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100009060(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000025B0(&qword_100021588, &qword_100019230);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000089DC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100008C98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100008C98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100008C98(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100008C98(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100009328(uint64_t result)
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
  v7 = *v1;
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

  result = sub_100007A48(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_10000941C(uint64_t result)
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
  v7 = *v1;
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

  result = sub_10000793C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

unint64_t CleanupType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void *static PosterCleanup.scan(for:in:)(char a1, void *a2)
{
  if (a1)
  {
    return sub_1000121EC(a2);
  }

  else
  {
    return sub_1000120A0(a2);
  }
}

BOOL CleanupCandidates.isEmpty.getter(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  result = (a3 ^ 1) & (v3 == 0);
  if (((a3 ^ 1) & 1) == 0 && !v3)
  {
    return *(a2 + 16) == 0;
  }

  return result;
}

id static PosterCleanup.updates(for:from:context:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    return sub_100013078(a1, a4, a5);
  }

  sub_100009328(v8);
  v9 = sub_1000124D8(a1, a4, a5);

  if (!v5)
  {
    return v9;
  }

  return result;
}

void static PosterCleanup.apply(updates:to:)(uint64_t a1, id a2)
{
  if (*(a1 + 16))
  {
    v2 = [a2 newBackgroundContext];
    __chkstk_darwin(v2);
    NSManagedObjectContext.performAndWait<A>(_:)();
  }
}

id sub_100009718(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_9:
    v21 = 0;
    if ([a2 save:&v21])
    {
      return v21;
    }

    v12 = v21;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v4 = (a1 + 80);
  while (1)
  {
    v6 = *(v4 - 6);
    v5 = *(v4 - 5);
    v8 = *(v4 - 4);
    v7 = *(v4 - 3);
    v10 = *(v4 - 2);
    v9 = *(v4 - 1);
    if (*v4)
    {
      break;
    }

    sub_1000087CC(*(v4 - 6), *(v4 - 5), *(v4 - 4), *(v4 - 3), *(v4 - 2), *(v4 - 1), 0);

    sub_100008874(v10, v9);
    sub_10001424C(v6, v5, v8, v7);
    if (v2)
    {

      sub_100008970(v10, v9);
      v13 = v6;
      v14 = v5;
      v15 = v8;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = 0;
      return sub_1000088DC(v13, v14, v15, v16, v17, v18, v19);
    }

    sub_1000088DC(v6, v5, v8, v7, v10, v9, 0);

    sub_100008970(v10, v9);

LABEL_3:
    v4 += 56;
    if (!--v3)
    {
      goto LABEL_9;
    }
  }

  sub_1000087CC(*(v4 - 6), *(v4 - 5), *(v4 - 4), *(v4 - 3), *(v4 - 2), *(v4 - 1), 1);

  sub_100008874(v8, v7);

  sub_1000145D0(v6, v5, v8, v7, v10, v9, a2);
  if (!v2)
  {
    sub_1000088DC(v6, v5, v8, v7, v10, v9, 1);

    sub_100008970(v8, v7);
    goto LABEL_3;
  }

  sub_100008970(v8, v7);
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v17 = v10;
  v18 = v9;
  v19 = 1;
  return sub_1000088DC(v13, v14, v15, v16, v17, v18, v19);
}

unint64_t sub_1000099D8()
{
  v1 = v0;
  sub_10000E070();
  inited = swift_initStackObject();
  *(inited + 32) = sub_100008CA8(0, &qword_1000215D8, CNContactImageManagedObject_ptr);
  v27 = inited + 32;
  *(inited + 40) = sub_100008CA8(0, &qword_1000215E0, CNContactPosterManagedObject_ptr);
  sub_100008CA8(0, &qword_1000215B0, NSPredicate_ptr);
  v3 = 0;
  v4 = 0;
  v35 = 0x8000000100019A20;
  while (2)
  {
    v5 = v3;
    v6 = *(v27 + 8 * v4);
    v7 = [swift_getObjCClassFromMetadata() entityName];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v7];

    v9 = NSPredicate.init(format:_:)();
    [v8 setPredicate:v9];

    sub_1000025B0(&qword_100021580, &qword_100019228);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000189B0;
    *(v10 + 56) = &type metadata for String;
    v11 = v35;
    *(v10 + 32) = 0xD000000000000011;
    *(v10 + 40) = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setPropertiesToFetch:isa];

    [v8 setResultType:2];
    [v8 setReturnsDistinctResults:1];
    sub_100008CA8(0, &unk_100021640, NSDictionary_ptr);
    v13 = v1;
    result = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {

      return swift_setDeallocating();
    }

    v15 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v17 = result;
    }

    else
    {
      v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v8;
    if (!v17)
    {
      v29 = &_swiftEmptyArrayStorage;
      goto LABEL_3;
    }

    v18 = 0;
    v29 = &_swiftEmptyArrayStorage;
    do
    {
      v19 = v18;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v16 + 16))
          {
            goto LABEL_37;
          }

          result = *(v15 + 8 * v19 + 32);
        }

        v20 = result;
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        *&v30 = 0xD000000000000011;
        *(&v30 + 1) = v35;
        v21 = [result __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v21)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v30 = 0u;
          v31 = 0u;
        }

        v32[0] = v30;
        v32[1] = v31;
        if (*(&v31 + 1))
        {
          break;
        }

        result = sub_100008CF0(v32, &qword_1000213A8, &qword_100018A40);
LABEL_13:
        ++v19;
        if (v18 == v17)
        {
          v1 = v13;
          goto LABEL_3;
        }
      }

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }

      v22 = v34;
      if (!v34)
      {
        goto LABEL_13;
      }

      v23 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10000793C(0, *(v29 + 2) + 1, 1, v29);
        v29 = result;
      }

      v25 = *(v29 + 2);
      v24 = *(v29 + 3);
      if (v25 >= v24 >> 1)
      {
        result = sub_10000793C((v24 > 1), v25 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 2) = v25 + 1;
      v26 = &v29[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      v1 = v13;
    }

    while (v18 != v17);
LABEL_3:

    sub_100014A48(v29);

    v3 = 1;
    v4 = 1;
    if ((v5 & 1) == 0)
    {
      continue;
    }

    return swift_setDeallocating();
  }
}

void sub_100009EA0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v7 = [objc_opt_self() entityName];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v7];

  sub_100008CA8(0, &qword_1000215B0, NSPredicate_ptr);
  v9 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v9];

  sub_1000025B0(&qword_100021580, &qword_100019228);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000189B0;
  *(v10 + 56) = &type metadata for String;
  strcpy((v10 + 32), "externalUUID");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPropertiesToFetch:isa];

  sub_100008CA8(0, &qword_1000215C8, CNContactExternalDetailsManagedObject_ptr);
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    return;
  }

  v13 = sub_100014AB8(v12);

  if (!v13[2] || (v14 = sub_10000E238(1), (v15 & 1) == 0))
  {
    v31 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v16 = *(v13[7] + 8 * v14);
  if (v16 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v51 = v13;
    v52 = a2;
    v53 = v4;
    v54 = v8;
    v56 = a3;

    if (i)
    {
      v18 = 0;
      v61 = v16 & 0xFFFFFFFFFFFFFF8;
      v63 = v16 & 0xC000000000000001;
      a2 = &_swiftEmptyArrayStorage;
      v59 = v16;
      while (1)
      {
        if (v63)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v61 + 16))
          {
            goto LABEL_59;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v8 = v19;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = [v19 externalUUID];
        if (v21)
        {
          v22 = v21;
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v4 = 0;
          v24 = 0;
        }

        v25 = [v8 fallbackDetailsForExchange];
        if (v25)
        {
          v26 = v25;
          v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          a3 = v27;
        }

        else
        {

          v13 = 0;
          a3 = 0xF000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_100007A48(0, *(a2 + 16) + 1, 1, a2);
        }

        v29 = *(a2 + 16);
        v28 = *(a2 + 24);
        v8 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          a2 = sub_100007A48((v28 > 1), v29 + 1, 1, a2);
        }

        *(a2 + 16) = v8;
        v30 = (a2 + 32 * v29);
        v30[4] = v4;
        v30[5] = v24;
        v30[6] = v13;
        v30[7] = a3;
        ++v18;
        v16 = v59;
        if (v20 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    a2 = &_swiftEmptyArrayStorage;
LABEL_30:

    v31 = sub_100014D7C(a2);
    v4 = v53;

    v8 = v54;
    a3 = v56;
    v13 = v51;
    a2 = v52;
LABEL_31:
    v32 = *a2;
    *a2 = v31;

    if (!v13[2] || (v33 = sub_10000E238(0), (v34 & 1) == 0))
    {

      v49 = &_swiftEmptyArrayStorage;
      goto LABEL_57;
    }

    v16 = *(v13[7] + 8 * v33);

    v35 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v8;
    v57 = a3;
    if (!v35)
    {
      break;
    }

    a2 = 0;
    v62 = v16 & 0xFFFFFFFFFFFFFF8;
    v64 = v16 & 0xC000000000000001;
    v13 = &_swiftEmptyArrayStorage;
    v58 = v35;
    v60 = v16;
    while (1)
    {
      if (v64)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v62 + 16))
        {
          goto LABEL_61;
        }

        v36 = *(v16 + 8 * a2 + 32);
      }

      v37 = v36;
      v8 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v38 = [v36 externalUUID];
      if (v38)
      {
        v39 = v38;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
      }

      else
      {
        v4 = 0;
        v41 = 0;
      }

      v42 = [v37 fallbackDetailsForExchange];
      if (v42)
      {
        v43 = v42;
        v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        a3 = v45;
      }

      else
      {

        v44 = 0;
        a3 = 0xF000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100007A48(0, v13[2] + 1, 1, v13);
      }

      v47 = v13[2];
      v46 = v13[3];
      if (v47 >= v46 >> 1)
      {
        v13 = sub_100007A48((v46 > 1), v47 + 1, 1, v13);
      }

      v13[2] = v47 + 1;
      v48 = &v13[4 * v47];
      v48[4] = v4;
      v48[5] = v41;
      v48[6] = v44;
      v48[7] = a3;
      ++a2;
      v16 = v60;
      if (v8 == v58)
      {
        goto LABEL_56;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_56:

  v49 = sub_100014D7C(v13);

  a3 = v57;
LABEL_57:
  v50 = *a3;
  *a3 = v49;
}

uint64_t ExternalDetails.init(_:)(void *a1)
{
  v2 = [a1 externalUUID];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 fallbackDetailsForExchange];
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

id sub_10000A5B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 externalUUID];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (*(a3 + 16) && (, v13 = sub_10000E1A4(v10, v12), v15 = v14, , (v15 & 1) != 0) && (v16 = *(*(a3 + 56) + 8 * v13), v16[2]))
    {
      v18 = v16[4];
      v17 = v16[5];
      v19 = v16[6];
      v20 = v16[7];
      swift_beginAccess();

      sub_100008874(v19, v20);
      sub_10000ED70(&v30, v10, v12);
      swift_endAccess();

      v21 = [a1 identifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      swift_beginAccess();
      v25 = *(a5 + 16);

      sub_100008874(v19, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100007818(0, *(v25 + 2) + 1, 1, v25);
        *(a5 + 16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100007818((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[56 * v28];
      *(v29 + 4) = v22;
      *(v29 + 5) = v24;
      *(v29 + 6) = v18;
      *(v29 + 7) = v17;
      *(v29 + 8) = v19;
      *(v29 + 9) = v20;
      v29[80] = 0;
      *(a5 + 16) = v25;
      swift_endAccess();

      return sub_100008970(v19, v20);
    }

    else
    {
    }
  }

  return result;
}

void sub_10000A7F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t static ExchangeFallbackMatch.decoding(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JSONDecoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v5 = type metadata accessor for ExchangeFallbackMatch();
  sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

Swift::String_optional __swiftcall ExchangeFallbackMatch.findExchangeContactIn(store:context:)(CNContactStore store, ContactsPosterSync::ExchangeContext context)
{
  v4 = objc_opt_self();
  v5 = sub_10000B7A4();
  sub_100009060(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10000BC90(context.exchangeContainerIdentifiers._rawValue);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 exactMatchForNameAndAtLeastOneHandleFromPayload:isa containerIdentifiers:v7 contactStore:store.super.isa];

  if (v8)
  {
    v9 = [v8 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = v10;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

id static ExchangeFallbackMatch.keyDescriptor.getter()
{
  v0 = [objc_opt_self() descriptorForRequiredKeys];

  return v0;
}

id sub_10000AAFC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for ExchangeFallbackMatch();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 externalUUID];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    result = sub_100015140(a1, a3, a4);
    if (!v19)
    {
      return result;
    }

    v15 = result;
    v17 = v19;
  }

  v20 = &DaemonSandboxer_iOS__metaData;
  if (*(a3 + 16))
  {
    v53 = v15;
    v21 = [a1 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100014F4C(v22, v24, a4);
    v27 = v26;

    if (v27 && (v54[0] = v25, v54[1] = v27, __chkstk_darwin(v28), *(&v52 - 2) = v54, v29 = sub_10000825C(sub_1000157C4, (&v52 - 4), a3), , (v29 & 1) != 0))
    {
      v30 = objc_opt_self();
      sub_1000025B0(&qword_100021600, &unk_100019270);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100018A90;
      *(v31 + 32) = a1;
      sub_100008CA8(0, &qword_100021630, CNContact_ptr);
      v32 = a1;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v34 = [v30 userActivityPayloadWithContacts:isa shouldUnify:0];

      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = sub_100009060(v35);

      ExchangeFallbackMatch.init(_:)(v36, v12);
      v37 = type metadata accessor for JSONEncoder();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      sub_100015580(&qword_100021408, type metadata accessor for ExchangeFallbackMatch);
      v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v42 = v41;

      v15 = v53;
      v20 = &DaemonSandboxer_iOS__metaData;
      sub_1000136A4(v12);
    }

    else
    {
      v40 = 0;
      v42 = 0xF000000000000000;
      v15 = v53;
      v20 = &DaemonSandboxer_iOS__metaData;
    }
  }

  else
  {
    v40 = 0;
    v42 = 0xF000000000000000;
  }

  sub_100008874(v40, v42);
  v43 = [a1 v20[24].base_meths];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  swift_beginAccess();
  v47 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_100007818(0, *(v47 + 2) + 1, 1, v47);
    *(a5 + 16) = v47;
  }

  v50 = *(v47 + 2);
  v49 = *(v47 + 3);
  if (v50 >= v49 >> 1)
  {
    v47 = sub_100007818((v49 > 1), v50 + 1, 1, v47);
  }

  *(v47 + 2) = v50 + 1;
  v51 = &v47[56 * v50];
  *(v51 + 4) = v15;
  *(v51 + 5) = v17;
  *(v51 + 6) = v40;
  *(v51 + 7) = v42;
  *(v51 + 8) = v44;
  *(v51 + 9) = v46;
  v51[80] = 1;
  *(a5 + 16) = v47;
  swift_endAccess();
  return sub_100008970(v40, v42);
}

uint64_t ExchangeFallbackMatch.asData.getter()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for ExchangeFallbackMatch();
  sub_100015580(&qword_100021408, type metadata accessor for ExchangeFallbackMatch);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

int *ExchangeFallbackMatch.init(givenName:familyName:organizationName:phoneNumbers:emails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v33 = a1;
  v15 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  if (a2 | a3)
  {
    v22 = type metadata accessor for PersonNameComponents();
    v31 = a4;
    v32 = a7;
    v23 = v22;
    v24 = *(v22 - 8);
    v30 = a6;
    v25 = *(v24 + 56);
    v25(v19, 1, 1, v22);
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
    v26 = v23;
    a7 = v32;
    v25(v21, 0, 1, v26);
    a6 = v30;
    a4 = v31;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v27 = type metadata accessor for PersonNameComponents();
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  }

  sub_100013484(v21, a8);
  result = type metadata accessor for ExchangeFallbackMatch();
  v29 = (a8 + result[5]);
  *v29 = a4;
  v29[1] = a5;
  *(a8 + result[6]) = a6;
  *(a8 + result[7]) = a7;
  *(a8 + result[8]) = 1;
  return result;
}

int *ExchangeFallbackMatch.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v11;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v12 = sub_10000E160(v48), (v13 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v12, &v49);
    sub_100008A90(v48);
    if (swift_dynamicCast())
    {
      v14 = v47;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_100008A90(v48);
    v14 = 0;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v15;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v16 = sub_10000E160(v48), (v17 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v16, &v49);
    sub_100008A90(v48);
    if (swift_dynamicCast())
    {
      v18 = v47;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_100008A90(v48);
    v18 = 0;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v19;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v20 = sub_10000E160(v48), (v21 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v20, &v49);
    sub_100008A90(v48);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v46;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v47;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_100008A90(v48);
    v23 = 0;
    v24 = 0;
  }

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v25;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v26 = sub_10000E160(v48), (v27 & 1) == 0))
  {
    sub_100008A90(v48);
    goto LABEL_27;
  }

  sub_1000089DC(*(a1 + 56) + 32 * v26, &v49);
  sub_100008A90(v48);
  sub_1000025B0(&qword_100021418, &qword_100018AC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v28 = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v28 = v46;
LABEL_28:
  v45 = v28;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v29;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v30 = sub_10000E160(v48), (v31 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v30, &v49);
    sub_100008A90(v48);

    sub_1000025B0(&qword_100021418, &qword_100018AC8);
    if (swift_dynamicCast())
    {
      v32 = v46;
      goto LABEL_34;
    }
  }

  else
  {

    sub_100008A90(v48);
  }

  v32 = &_swiftEmptyArrayStorage;
LABEL_34:
  if (v14 | v18)
  {
    v33 = type metadata accessor for PersonNameComponents();
    v42 = v32;
    v34 = v33;
    v35 = *(v33 - 8);
    v44 = v23;
    v36 = *(v35 + 56);
    v43 = v24;
    v36(v8, 1, 1, v33);
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
    v37 = v34;
    v32 = v42;
    v36(v10, 0, 1, v37);
    v24 = v43;
    v23 = v44;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v38 = type metadata accessor for PersonNameComponents();
    (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
  }

  sub_100013484(v10, a2);
  result = type metadata accessor for ExchangeFallbackMatch();
  v40 = (a2 + result[5]);
  *v40 = v23;
  v40[1] = v24;
  *(a2 + result[6]) = v45;
  *(a2 + result[7]) = v32;
  *(a2 + result[8]) = 1;
  return result;
}

unint64_t sub_10000B7A4()
{
  v1 = v0;
  v2 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  sub_1000025B0(&unk_100021590, &qword_100019238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000189B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  v11 = sub_100008588(inited);
  swift_setDeallocating();
  sub_100008CF0(inited + 32, &qword_1000213D0, &unk_100019240);
  sub_100015518(v1, v8, &qword_100021410, &qword_100018AC0);
  v12 = type metadata accessor for PersonNameComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v8, 1, v12) == 1)
  {
    sub_100008CF0(v8, &qword_100021410, &qword_100018AC0);
  }

  else
  {
    v15 = PersonNameComponents.givenName.getter();
    v17 = v16;
    (*(v13 + 8))(v8, v12);
    if (v17)
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v1;
      v19 = v18;
      v52 = &type metadata for String;
      *&v51 = v15;
      *(&v51 + 1) = v17;
      sub_100008C98(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v11;
      sub_100010A80(v50, v47, v19, isUniquelyReferenced_nonNull_native);
      v1 = v48;

      v11 = v49;
    }
  }

  sub_100015518(v1, v6, &qword_100021410, &qword_100018AC0);
  if (v14(v6, 1, v12) == 1)
  {
    sub_100008CF0(v6, &qword_100021410, &qword_100018AC0);
  }

  else
  {
    v21 = PersonNameComponents.familyName.getter();
    v23 = v22;
    (*(v13 + 8))(v6, v12);
    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v52 = &type metadata for String;
      *&v51 = v21;
      *(&v51 + 1) = v23;
      sub_100008C98(&v51, v50);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v11;
      sub_100010A80(v50, v24, v26, v27);

      v11 = v49;
    }
  }

  v28 = type metadata accessor for ExchangeFallbackMatch();
  v29 = (v1 + v28[5]);
  v30 = v29[1];
  if (v30)
  {
    v31 = *v29;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    v52 = &type metadata for String;
    *&v51 = v31;
    *(&v51 + 1) = v30;
    sub_100008C98(&v51, v50);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v11;
    sub_100010A80(v50, v32, v34, v35);

    v11 = v49;
  }

  v36 = *(v1 + v28[6]);
  if (*(v36 + 16))
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    v52 = sub_1000025B0(&qword_100021418, &qword_100018AC8);
    *&v51 = v36;
    sub_100008C98(&v51, v50);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v11;
    sub_100010A80(v50, v37, v39, v40);

    v11 = v49;
  }

  v41 = *(v1 + v28[7]);
  if (*(v41 + 16))
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    v52 = sub_1000025B0(&qword_100021418, &qword_100018AC8);
    *&v51 = v41;
    sub_100008C98(&v51, v50);

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v11;
    sub_100010A80(v50, v42, v44, v45);

    return v49;
  }

  return v11;
}

unint64_t *sub_10000BC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_1000105B0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000105B0((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100008C98(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10000BD90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = &_swiftEmptyArrayStorage;
    sub_1000105F0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];

      if (v8 >= v7 >> 1)
      {
        sub_1000105F0((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = &protocol witness table for String;
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v8 + 1;
      sub_10001545C(&v10, &v2[5 * v8 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10000BE8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = &_swiftEmptyArrayStorage;
    sub_1000105F0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v9 = *v4;
      v10 = v4[1];

      sub_100008874(v10, *(&v10 + 1));
      v14 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000105F0((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      v12 = &type metadata for ExternalDetails;
      v13 = sub_100015474();
      v7 = swift_allocObject();
      *&v11 = v7;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      v2[2] = v6 + 1;
      sub_10001545C(&v11, &v2[5 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::Int sub_10000BFC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C03C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10000C080()
{
  v1 = *v0;
  v2 = 0x706D6F43656D616ELL;
  v3 = 0x6D754E656E6F6870;
  v4 = 0x736C69616D65;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000C130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001529C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000C170(uint64_t a1)
{
  v2 = sub_100013538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C1AC(uint64_t a1)
{
  v2 = sub_100013538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000C27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v12 = 1;
    }

    else
    {
      v3 = (a2 + 56);
      v4 = (a1 + 56);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;
        v7 = *(v4 - 3);
        v8 = *(v4 - 2);
        v9 = *(v3 - 2);
        v14 = *(v3 - 3);
        v10 = *(v3 - 1);
        v11 = *v3;

        sub_100008874(v6, v5);

        sub_100008874(v10, v11);
        v12 = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v7, v8, v6, v5, v14, v9, v10, v11);

        sub_100008970(v10, v11);

        sub_100008970(v6, v5);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ExchangeFallbackMatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000025B0(&qword_100021420, &qword_100018AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000134F4(a1, a1[3]);
  sub_100013538();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for PersonNameComponents();
  sub_100015580(&qword_100021430, &type metadata accessor for PersonNameComponents);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ExchangeFallbackMatch();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + v11[6]);
    v18 = 2;
    sub_1000025B0(&qword_100021418, &qword_100018AC8);
    sub_1000135D4(&qword_100021438);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + v11[7]);
    v18 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v11[8]);
    LOBYTE(v19) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void ExchangeFallbackMatch.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  sub_100015518(v1, &v24 - v9, &qword_100021410, &qword_100018AC0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100015580(&qword_100021440, &type metadata accessor for PersonNameComponents);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for ExchangeFallbackMatch();
  v12 = (v1 + v11[5]);
  if (v12[1])
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = *(v1 + v11[6]);
  Hasher._combine(_:)(*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      String.hash(into:)();

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v19 = *(v1 + v11[7]);
  Hasher._combine(_:)(*(v19 + 16));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      String.hash(into:)();

      v21 += 2;
      --v20;
    }

    while (v20);
  }

  Hasher._combine(_:)(*(v1 + v11[8]));
}

Swift::Int ExchangeFallbackMatch.hashValue.getter()
{
  Hasher.init(_seed:)();
  ExchangeFallbackMatch.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ExchangeFallbackMatch.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - v6;
  v8 = sub_1000025B0(&qword_100021448, &qword_100018AD8);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = v26 - v10;
  v12 = type metadata accessor for ExchangeFallbackMatch();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000134F4(a1, a1[3]);
  sub_100013538();
  v30 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008698(a1);
  }

  v17 = v28;
  v18 = v15;
  type metadata accessor for PersonNameComponents();
  LOBYTE(v32) = 0;
  sub_100015580(&qword_100021450, &type metadata accessor for PersonNameComponents);
  v19 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100013484(v7, v18);
  LOBYTE(v32) = 1;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = (v18 + v12[5]);
  *v21 = v20;
  v21[1] = v22;
  v23 = sub_1000025B0(&qword_100021418, &qword_100018AC8);
  v31 = 2;
  v26[1] = sub_1000135D4(&qword_100021458);
  v26[2] = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + v12[6]) = v32;
  v31 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + v12[7]) = v32;
  LOBYTE(v32) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v17 + 8))(v30, v19);
  *(v18 + v12[8]) = v24;
  sub_100013640(v18, v27);
  sub_100008698(a1);
  return sub_1000136A4(v18);
}

Swift::Int sub_10000CE4C()
{
  Hasher.init(_seed:)();
  ExchangeFallbackMatch.hash(into:)();
  return Hasher._finalize()();
}

void ExternalDetails.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20[-v10];
  v12 = type metadata accessor for ExchangeFallbackMatch();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a5 >> 60 != 15)
  {
    v17 = type metadata accessor for JSONDecoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_100008888(a4, a5);
    JSONDecoder.init()();
    sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    (*(v13 + 56))(v11, 0, 1, v12);
    sub_100013700(v11, v16);
    ExchangeFallbackMatch.hash(into:)();
    sub_100008970(a4, a5);
    sub_1000136A4(v16);
  }
}

Swift::Int ExternalDetails.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_10000D1C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10000D22C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

ContactsPosterSync::CleanupType_optional __swiftcall CleanupType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CBA8, v2);

  if (v3 == 1)
  {
    v4.value = ContactsPosterSync_CleanupType_missingLocalContactIdentifiers;
  }

  else
  {
    v4.value = ContactsPosterSync_CleanupType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D2DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = "com.apple.contacts.postersyncd";
  }

  else
  {
    v5 = "missingExternalDetails";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = "missingExternalDetails";
  }

  else
  {
    v8 = "com.apple.contacts.postersyncd";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_10000D388()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000D408()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000D474()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000D4F0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CBA8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10000D550(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "missingExternalDetails";
  }

  else
  {
    v3 = "com.apple.contacts.postersyncd";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_10000D5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s18ContactsPosterSync10UpdatePlanO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

Swift::Int sub_10000D620()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000D68C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000D6DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3026478;
  }

  if (v1 <= 2)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_1000025B0(&qword_100021558, &qword_100019210);
  v4._countAndFlagsBits = ArraySlice.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  String.append(_:)(v5);

  return 0;
}

uint64_t CleanupCandidates.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(96);
    v5._countAndFlagsBits = 0xD00000000000003BLL;
    v5._object = 0x8000000100019790;
    String.append(_:)(v5);
    v20 = *(a1 + 16);
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x746E657272756320;
    v7._object = 0xEB0000000028202CLL;
    String.append(_:)(v7);
    v21 = *(a2 + 16);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._object = 0x80000001000197D0;
    v9._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v9);
    v10 = sub_10000BE8C(a1);
  }

  else
  {
    _StringGuts.grow(_:)(69);
    v11._countAndFlagsBits = 0xD00000000000002CLL;
    v11._object = 0x80000001000197F0;
    String.append(_:)(v11);
    v22 = *(a1 + 16);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0xD000000000000014;
    v13._object = 0x8000000100019820;
    String.append(_:)(v13);
    v10 = sub_10000BD90(a1);
  }

  v14 = sub_10000D6DC(v10);
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return 0;
}

uint64_t UpdatePlan.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (*(v0 + 48))
  {
    _StringGuts.grow(_:)(102);
    v7._countAndFlagsBits = 0xD00000000000002FLL;
    v7._object = 0x8000000100019840;
    String.append(_:)(v7);
    v8._countAndFlagsBits = ExternalDetails.description.getter(v1, v2, v3, v4);
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD000000000000032;
    v9._object = 0x8000000100019870;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v5;
    v10._object = v6;
    String.append(_:)(v10);
  }

  else
  {
    _StringGuts.grow(_:)(92);
    v11._countAndFlagsBits = 0xD000000000000035;
    v11._object = 0x80000001000198B0;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v1;
    v12._object = v2;
    String.append(_:)(v12);
    v13._object = 0x80000001000198F0;
    v13._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v13);
    v14._countAndFlagsBits = ExternalDetails.description.getter(v3, v4, v5, v6);
    String.append(_:)(v14);
  }

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0;
}

uint64_t sub_10000DCB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000DEE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100010F38(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100008984(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10000DCB0(v13, a3, a4, &v12);
  v10 = v4;
  sub_100008984(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10000E070()
{
  v0 = sub_1000025B0(&qword_1000215F0, &qword_100019260);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1000215F8;
    v3 = &unk_100019268;
  }

  else
  {
    v2 = &unk_100021600;
    v3 = &unk_100019270;
  }

  return sub_1000025B0(v2, v3);
}

unint64_t sub_10000E0E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000E2A4(a1, a2, v6);
}

unint64_t sub_10000E160(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000E35C(a1, v4);
}

unint64_t sub_10000E1A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_10000E424(a1, a2, v6);
}

unint64_t sub_10000E238(int a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v4 = Hasher._finalize()();

  return sub_10000E4F0(a1, v4);
}

unint64_t sub_10000E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000E35C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000155C8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008A90(v8);
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

unint64_t sub_10000E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10000E4F0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10000E560(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000025B0(&qword_1000215A0, &unk_100018A50);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100008C98(v25, v37);
      }

      else
      {
        sub_1000089DC(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100008C98(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000E818(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000025B0(&qword_100021628, &unk_1000192A0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_10000EAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000025B0(&qword_100021658, &unk_1000192B8);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000ED70(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000F830(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  v28 = a5;
  v12 = a4;
  ExternalDetails.hash(into:)(v30, a2, a3, a4, a5);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v10 + 32);
  v15 = v13 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v10 + 48) + 32 * v15);
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];

      sub_100008874(v21, v20);
      LOBYTE(v18) = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v18, v19, v21, v20, a2, a3, v12, v28);

      sub_100008970(v21, v20);
      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100008970(v12, v28);
    v25 = (*(v10 + 48) + 32 * v15);
    *v29 = v25[1];
    *a1 = *v25;
    *(a1 + 16) = *v29;

    sub_100008874(v29[0], v29[1]);
    return 0;
  }

  else
  {
LABEL_5:
    v22 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *v26;

    sub_100008874(v12, v28);
    sub_10000F9B0(a2, a3, v12, v28, v15, isUniquelyReferenced_nonNull_native);
    *v26 = v30[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v12;
    *(a1 + 24) = v28;
    return 1;
  }
}

uint64_t sub_10000F0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000025B0(&unk_100021610, &qword_100019288);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10000F318(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for ExchangeFallbackMatch();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  sub_1000025B0(&qword_100021650, &qword_1000192B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v53 = v8;
    v54 = v7;
    v49 = v2;
    v16 = 0;
    v17 = (v12 + 56);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v51 = (v9 + 56);
    v52 = result;
    v22 = result + 56;
    v55 = v12;
    while (v20)
    {
      v27 = __clz(__rbit64(v20));
      v56 = (v20 - 1) & v20;
LABEL_17:
      v30 = (*(v12 + 48) + 32 * (v27 | (v16 << 6)));
      v31 = *v30;
      v57 = v30[1];
      v58 = v31;
      v32 = *(v15 + 40);
      Hasher.init(_seed:)();
      if (*(&v58 + 1))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v33 = *(&v57 + 1);
      if (*(&v57 + 1) >> 60 != 15)
      {
        v34 = type metadata accessor for JSONDecoder();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        swift_allocObject();
        v37 = v57;
        sub_100008888(v57, v33);
        JSONDecoder.init()();
        sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch);
        v39 = v53;
        v38 = v54;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        (*v51)(v38, 0, 1, v39);
        v40 = v50;
        sub_100013700(v38, v50);
        ExchangeFallbackMatch.hash(into:)();
        sub_100008970(v37, v33);
        sub_1000136A4(v40);
        v15 = v52;
      }

      result = Hasher._finalize()();
      v41 = -1 << *(v15 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      v12 = v55;
      if (((-1 << v42) & ~*(v22 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v25 = v57;
        v24 = v58;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v22 + 8 * v43);
          if (v47 != -1)
          {
            v23 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v42) & ~*(v22 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v25 = v57;
      v24 = v58;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v26 = (*(v15 + 48) + 32 * v23);
      *v26 = v24;
      v26[1] = v25;
      ++*(v15 + 16);
      v20 = v56;
    }

    v28 = v16;
    while (1)
    {
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v16 >= v21)
      {
        break;
      }

      v29 = v17[v16];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v56 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v48 = 1 << *(v12 + 32);
    if (v48 >= 64)
    {
      bzero(v17, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v48;
    }

    v2 = v49;
    *(v12 + 16) = 0;
  }

  *v2 = v15;
  return result;
}

Swift::Int sub_10000F830(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000F0B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000FB74();
      goto LABEL_16;
    }

    sub_10000FE4C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10000F9B0(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_10000F318(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_10000FCD0();
      goto LABEL_12;
    }

    sub_100010084(v10 + 1);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v29, v9, a2, a3, a4);
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a5 = result & ~v14;
  if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 32 * a5);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];

      sub_100008874(v19, v20);
      LOBYTE(v17) = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v17, v18, v19, v20, v9, a2, a3, a4);

      result = sub_100008970(v19, v20);
      if (v17)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v21 = *v26;
  *(*v26 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v22 = (*(v21 + 48) + 32 * a5);
  *v22 = v9;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000FB74()
{
  v1 = v0;
  sub_1000025B0(&unk_100021610, &qword_100019288);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000FCD0()
{
  v1 = v0;
  sub_1000025B0(&qword_100021650, &qword_1000192B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = v18[1];
        *v19 = *v18;
        v19[1] = v20;

        result = sub_100008874(v20, *(&v20 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000FE4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000025B0(&unk_100021610, &qword_100019288);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100010084(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for ExchangeFallbackMatch();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  sub_1000025B0(&qword_100021650, &qword_1000192B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v52 = v8;
    v53 = v7;
    v48 = v2;
    v16 = 0;
    v17 = v12 + 56;
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v50 = (v9 + 56);
    v51 = v12;
    v22 = result + 56;
    v54 = result;
    while (v20)
    {
      v27 = __clz(__rbit64(v20));
      v55 = (v20 - 1) & v20;
LABEL_17:
      v30 = (*(v12 + 48) + 32 * (v27 | (v16 << 6)));
      v31 = v30[1];
      v56 = *v30;
      v57 = v31;
      v32 = v15[5];
      Hasher.init(_seed:)();
      v33 = *(&v57 + 1);
      if (*(&v56 + 1))
      {
        Hasher._combine(_:)(1u);

        sub_100008874(v57, v33);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
        sub_100008874(v57, v33);
      }

      if (v33 >> 60 != 15)
      {
        v34 = type metadata accessor for JSONDecoder();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        swift_allocObject();
        v37 = v57;
        sub_100008888(v57, v33);
        JSONDecoder.init()();
        sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch);
        v39 = v52;
        v38 = v53;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        (*v50)(v38, 0, 1, v39);
        v40 = v49;
        sub_100013700(v38, v49);
        ExchangeFallbackMatch.hash(into:)();
        sub_100008970(v37, v33);
        sub_1000136A4(v40);
        v12 = v51;
      }

      result = Hasher._finalize()();
      v15 = v54;
      v41 = -1 << *(v54 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v22 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v24 = v56;
        v25 = v57;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v22 + 8 * v43);
          if (v47 != -1)
          {
            v23 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v23 = __clz(__rbit64((-1 << v42) & ~*(v22 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v24 = v56;
      v25 = v57;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v26 = (v15[6] + 32 * v23);
      *v26 = v24;
      v26[1] = v25;
      ++v15[2];
      v20 = v55;
    }

    v28 = v16;
    while (1)
    {
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v48;
        goto LABEL_33;
      }

      v29 = *(v17 + 8 * v16);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v55 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v15;
  }

  return result;
}

char *sub_100010590(char *a1, int64_t a2, char a3)
{
  result = sub_100010610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000105B0(char *a1, int64_t a2, char a3)
{
  result = sub_10001071C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000105D0(char *a1, int64_t a2, char a3)
{
  result = sub_10001082C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000105F0(void *a1, int64_t a2, char a3)
{
  result = sub_100010938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100010610(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021390, &qword_100018A30);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10001071C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021580, &qword_100019228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001082C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_1000213E0, &qword_100019290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100010938(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000025B0(&qword_100021550, &qword_100019208);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000025B0(&qword_100021558, &qword_100019210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_100010A80(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E0E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100010C3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000E560(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000E0E8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100008698(v23);

    return sub_100008C98(a1, v23);
  }

  else
  {
    sub_100010BD0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100010BD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008C98(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100010C3C()
{
  v1 = v0;
  sub_1000025B0(&qword_1000215A0, &unk_100018A50);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000089DC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008C98(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100010DE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100010F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10000DCB0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100010FF0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100008888(a3, a4);
          return sub_10000DEE0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100011158(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {

      return sub_10000C1EC(a1, a4);
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6 && a1 != a4)
  {
    v7 = (a4 + 56);
    v8 = (a1 + 56);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v12 = *(v8 - 3);
      v11 = *(v8 - 2);
      v13 = *(v7 - 2);
      v19 = *(v7 - 3);
      v14 = *(v7 - 1);
      v15 = *v7;

      sub_100008874(v10, v9);

      sub_100008874(v14, v15);
      LOBYTE(v12) = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v12, v11, v10, v9, v19, v13, v14, v15);

      sub_100008970(v14, v15);

      sub_100008970(v10, v9);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      v7 += 4;
      v8 += 4;
    }

    while (--v6);
  }

  return sub_10000C27C(a2, a5);
}

BOOL _s18ContactsPosterSync21ExchangeFallbackMatchV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_1000025B0(&qword_100021410, &qword_100018AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = (*(*(sub_1000025B0(&qword_100021570, &qword_100019220) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin();
  v15 = &v27 - v14;
  v16 = *(v13 + 56);
  sub_100015518(a1, &v27 - v14, &qword_100021410, &qword_100018AC0);
  sub_100015518(a2, &v15[v16], &qword_100021410, &qword_100018AC0);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) != 1)
  {
    sub_100015518(v15, v11, &qword_100021410, &qword_100018AC0);
    if (v17(&v15[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v15[v16], v4);
      sub_100015580(&qword_100021578, &type metadata accessor for PersonNameComponents);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v8, v4);
      v20(v11, v4);
      sub_100008CF0(v15, &qword_100021410, &qword_100018AC0);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_100008CF0(v15, &qword_100021570, &qword_100019220);
    return 0;
  }

  if (v17(&v15[v16], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100008CF0(v15, &qword_100021410, &qword_100018AC0);
LABEL_10:
  v21 = type metadata accessor for ExchangeFallbackMatch();
  v22 = v21[5];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (sub_10000C1EC(*(a1 + v21[6]), *(a2 + v21[6])) & 1) != 0 && (sub_10000C1EC(*(a1 + v21[7]), *(a2 + v21[7])))
  {
    return *(a1 + v21[8]) == *(a2 + v21[8]);
  }

  return 0;
}

uint64_t _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v58 = a4;
  v59 = a7;
  v57 = a3;
  v13 = type metadata accessor for ExchangeFallbackMatch();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  (__chkstk_darwin)();
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000025B0(&qword_100021568, &qword_100019218);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v19 = &v51 - v18;
  v20 = *(*(sub_1000025B0(&qword_100021460, &qword_100018AE0) - 8) + 64);
  v21 = (__chkstk_darwin)();
  v22 = __chkstk_darwin(v21);
  v24 = &v51 - v23;
  __chkstk_darwin(v22);
  v27 = &v51 - v26;
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6)
      {
        goto LABEL_6;
      }

      v28 = v25;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v25 = v28;
      if (v29)
      {
        goto LABEL_6;
      }
    }

LABEL_10:
    matched = 0;
    return matched & 1;
  }

  if (a6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v30 = v58;
  if (v58 >> 60 != 15 && a8 >> 60 != 15)
  {
    v52 = v25;
    v31 = type metadata accessor for JSONDecoder();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_100008874(v57, v30);
    v54 = a8;
    sub_100008874(v59, a8);
    JSONDecoder.init()();
    v53 = sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v39 = v56;

    v40 = *(v39 + 56);
    v40(v27, 0, 1, v13);
    v41 = *(v31 + 48);
    v42 = *(v31 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v40(v24, 0, 1, v13);
    v43 = *(v16 + 48);
    sub_100015518(v27, v19, &qword_100021460, &qword_100018AE0);
    sub_100015518(v24, &v19[v43], &qword_100021460, &qword_100018AE0);
    v44 = *(v56 + 48);
    v45 = v44(v19, 1, v13);
    if (v45 == 1)
    {
      sub_100008970(v57, v58);
      sub_100008970(v59, v54);
      sub_100008CF0(v24, &qword_100021460, &qword_100018AE0);
      sub_100008CF0(v27, &qword_100021460, &qword_100018AE0);
      if (v44(&v19[v43], 1, v13) == 1)
      {
        sub_100008CF0(v19, &qword_100021460, &qword_100018AE0);
        goto LABEL_20;
      }
    }

    else
    {
      v46 = v52;
      sub_100015518(v19, v52, &qword_100021460, &qword_100018AE0);
      if (v44(&v19[v43], 1, v13) != 1)
      {
        v49 = &v19[v43];
        v50 = v55;
        sub_100013700(v49, v55);
        matched = _s18ContactsPosterSync21ExchangeFallbackMatchV23__derived_struct_equalsySbAC_ACtFZ_0(v46, v50);
        sub_100008970(v57, v58);
        sub_100008970(v59, v54);
        sub_1000136A4(v50);
        sub_100008CF0(v24, &qword_100021460, &qword_100018AE0);
        sub_100008CF0(v27, &qword_100021460, &qword_100018AE0);
        sub_1000136A4(v46);
        sub_100008CF0(v19, &qword_100021460, &qword_100018AE0);
        return matched & 1;
      }

      sub_100008970(v57, v58);
      sub_100008970(v59, v54);
      sub_100008CF0(v24, &qword_100021460, &qword_100018AE0);
      sub_100008CF0(v27, &qword_100021460, &qword_100018AE0);
      sub_1000136A4(v46);
    }

    sub_100008CF0(v19, &qword_100021568, &qword_100019218);
    matched = 0;
    return matched & 1;
  }

  if (v58 >> 60 == 15)
  {
    if (a8 >> 60 == 15)
    {
      v36 = v57;
      sub_100008874(v57, v58);
      sub_100008874(v59, a8);
      sub_100008970(v36, v30);
LABEL_20:
      matched = 1;
      return matched & 1;
    }
  }

  else if (a8 >> 60 != 15)
  {
    v47 = v57;
    sub_100008874(v57, v58);
    v48 = v59;
    sub_100008874(v59, a8);
    matched = sub_100010FF0(v47, v30, v48, a8);
    sub_100008970(v48, a8);
    sub_100008970(v47, v30);
    return matched & 1;
  }

  v37 = v57;
  sub_100008874(v57, v58);
  v38 = v59;
  sub_100008874(v59, a8);
  sub_100008970(v37, v30);
  sub_100008970(v38, a8);
  matched = 0;
  return matched & 1;
}

uint64_t _s18ContactsPosterSync10UpdatePlanO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      v10 = *(a2 + 32);
      v11 = *(a2 + 40);
      if (_s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v4, v5, v6, v8, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)))
      {
        if (v7 == v10 && v9 == v11)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  if ((v4 != *a2 || v5 != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v6, v8, v7, v9, v13, v14, v15, v16);
}

void *_s18ContactsPosterSync15ExchangeContextVyACSgSo14CNContactStoreCcfC_0(void *a1)
{
  v2 = [objc_opt_self() predicateForContainersWithType:2];
  v22 = 0;
  v3 = [a1 containersMatchingPredicate:v2 error:&v22];
  v4 = v22;
  if (!v3)
  {
    v20 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v5 = v3;
  sub_100008CA8(0, &qword_100021638, CNContainer_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v4;

  if (v6 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    return &_swiftEmptyArrayStorage;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v22 = &_swiftEmptyArrayStorage;
  sub_100010590(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
  }

  v9 = 0;
  v10 = v22;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v12 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v22 = v10;
    v18 = v10[2];
    v17 = v10[3];
    if (v18 >= v17 >> 1)
    {
      sub_100010590((v17 > 1), v18 + 1, 1);
      v10 = v22;
    }

    ++v9;
    v10[2] = v18 + 1;
    v19 = &v10[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
  }

  while (v8 != v9);

  return v10;
}

void *sub_1000120A0(void *a1)
{
  v3 = [a1 newBackgroundContext];
  v9 = &_swiftEmptySetSingleton;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v1)
  {

    return v2;
  }

  v4 = v9;
  v5 = v9[2];
  if (!v5)
  {

    return &_swiftEmptyArrayStorage;
  }

  v2 = sub_100007B54(v9[2], 0);
  v7 = sub_100010DE0(&v8, v2 + 4, v5, v4);

  result = sub_100015854();
  if (v7 == v5)
  {

    return v2;
  }

  __break(1u);
  return result;
}

void *sub_1000121EC(void *a1)
{
  v3 = [a1 newBackgroundContext];
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }
}

void *sub_100012298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 32); ; i += 2)
  {
    v23 = i[1];
    v24 = *i;
    v4 = *(i + 1);

    sub_100008874(v23, *(&v23 + 1));

    v6 = sub_10000E1A4(v24, v4);
    v7 = _swiftEmptyDictionarySingleton[2];
    v8 = (v5 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      break;
    }

    v10 = v5;
    if (_swiftEmptyDictionarySingleton[3] < v9)
    {
      sub_10000E818(v9, 1);
      v11 = sub_10000E1A4(v24, v4);
      if ((v10 & 1) != (v12 & 1))
      {
        goto LABEL_19;
      }

      v6 = v11;
    }

    if (v10)
    {

      v13 = _swiftEmptyDictionarySingleton[7];
      v14 = *(v13 + 8 * v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 8 * v6) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_100007A48(0, *(v14 + 2) + 1, 1, v14);
        *(v13 + 8 * v6) = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_100007A48((v16 > 1), v17 + 1, 1, v14);
        *(v13 + 8 * v6) = v14;
      }

      *(v14 + 2) = v17 + 1;
      v3 = &v14[32 * v17];
      *(v3 + 2) = v24;
      *(v3 + 3) = v23;
    }

    else
    {
      sub_1000025B0(&qword_1000213E0, &qword_100019290);
      v18 = swift_allocObject();
      v18[1] = xmmword_1000189B0;
      v18[2] = v24;
      v18[3] = v23;
      _swiftEmptyDictionarySingleton[(v6 >> 6) + 8] |= 1 << v6;
      *(_swiftEmptyDictionarySingleton[6] + 16 * v6) = v24;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v6) = v18;
      v19 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      _swiftEmptyDictionarySingleton[2] = v21;
    }

    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1000025B0(&qword_100021620, &qword_100019298);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1000124D8(uint64_t a1, void *a2, uint64_t a3)
{
  v99 = a3;
  v101 = a2;
  v5 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v92 - v7;
  v9 = type metadata accessor for ExchangeFallbackMatch();
  *&v108 = *(v9 - 8);
  v10 = *(v108 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return &_swiftEmptyArrayStorage;
  }

  v105 = *(a1 + 16);
  v95 = v13;
  v100 = v11;
  v103 = v8;

  *&v109 = sub_100012298(v14);
  v107 = v3;

  sub_1000025B0(&qword_100021600, &unk_100019270);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100018AA0;
  v16 = CNContactExternalUUIDKey;
  *(v15 + 32) = CNContactIdentifierKey;
  *(v15 + 40) = v16;
  v17 = CNContactExternalIdentifierKey;
  *(v15 + 48) = CNContactExternalIdentifierKey;
  v18 = objc_allocWithZone(CNContactFetchRequest);
  v19 = CNContactIdentifierKey;
  v20 = v16;
  v21 = v17;
  sub_1000025B0(&qword_100021608, &qword_100019280);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v96 = [v18 initWithKeysToFetch:isa];

  v23 = 0;
  v102 = a1 + 32;
  v24 = &_swiftEmptyArrayStorage;
LABEL_3:
  v25 = (a1 + 32 * v23);
  while (v105 != v23)
  {
    if (v23 >= v105)
    {
      __break(1u);
LABEL_48:
      __break(1u);
    }

    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_48;
    }

    v27 = v25[5];
    ++v23;
    v25 += 4;
    if (v27)
    {
      v28 = *v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10000793C(0, *(v24 + 2) + 1, 1, v24);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_10000793C((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v27;
      v23 = v26;
      goto LABEL_3;
    }
  }

  v32 = objc_opt_self();
  v33 = Array._bridgeToObjectiveC()().super.isa;

  v34 = [v32 predicateForContactsMatchingExternalUUIDs:v33];

  v35 = v96;
  [v96 setPredicate:v34];

  v36 = v35;
  [v35 setUnifyResults:0];
  v37 = swift_allocObject();
  *(v37 + 16) = &_swiftEmptyArrayStorage;
  v97 = (v37 + 16);
  v38 = swift_allocObject();
  *(v38 + 16) = &_swiftEmptySetSingleton;
  v104 = v38 + 16;
  v39 = swift_allocObject();
  v39[2] = v109;
  v39[3] = v38;
  v39[4] = v37;
  aBlock[4] = sub_10001574C;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A7F8;
  aBlock[3] = &unk_10001D1F0;
  v40 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v33) = [v101 enumerateNonUnifiedContactsWithFetchRequest:v35 error:aBlock usingBlock:v40];
  _Block_release(v40);
  if (v33)
  {
    v92 = v38;
    v93 = v37;
    v41 = *(v99 + 16);
    v42 = aBlock[0];
    if (v41)
    {
      swift_beginAccess();
      v43 = 0;
      v98 = (v108 + 56);
      v44 = v107;
      v45 = v103;
      v46 = v102;
      v47 = v105;
      do
      {
        v48 = (v46 + 32 * v43);
        v108 = *v48;
        v49 = *(&v108 + 1);
        if (!*(&v108 + 1))
        {
          goto LABEL_18;
        }

        v50 = v48[1];
        v51 = *v104;
        v52 = *(*v104 + 16);
        v109 = v50;
        v53 = *(&v50 + 1);
        if (v52)
        {
          v107 = v44;
          v54 = *(v51 + 40);
          Hasher.init(_seed:)();

          v55 = v109;
          v106 = v53;
          sub_100008874(v109, v53);

          v56 = v108;
          String.hash(into:)();
          v57 = Hasher._finalize()();
          v58 = -1 << *(v51 + 32);
          v59 = v57 & ~v58;
          if ((*(v51 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = ~v58;
            while (1)
            {
              v61 = (*(v51 + 48) + 16 * v59);
              v62 = *v61 == v56 && v49 == v61[1];
              if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v59 = (v59 + 1) & v60;
              if (((*(v51 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            sub_100008970(v55, v106);

            v44 = v107;
LABEL_41:
            v45 = v103;
            v46 = v102;
            goto LABEL_17;
          }

LABEL_29:

          v53 = v106;
          v44 = v107;
          v45 = v103;
          v46 = v102;
        }

        else
        {

          sub_100008874(v109, v53);
        }

        if (v53 >> 60 == 15)
        {
          swift_bridgeObjectRelease_n();
          sub_100008970(v109, v53);
        }

        else
        {
          v63 = type metadata accessor for JSONDecoder();
          v64 = *(v63 + 48);
          v65 = *(v63 + 52);
          swift_allocObject();
          v66 = v44;
          v67 = v109;
          sub_100008888(v109, v53);
          JSONDecoder.init()();
          sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch);
          v68 = v100;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v66)
          {
            v106 = v53;
            v107 = 0;

            (*v98)(v45, 0, 1, v68);
            v69 = v45;
            v70 = v95;
            sub_100013700(v69, v95);
            v71 = objc_opt_self();
            v72 = sub_10000B7A4();
            sub_100009060(v72);

            v73 = Dictionary._bridgeToObjectiveC()().super.isa;

            sub_10000BC90(v99);
            v74 = Array._bridgeToObjectiveC()().super.isa;

            v75 = [v71 exactMatchForNameAndAtLeastOneHandleFromPayload:v73 containerIdentifiers:v74 contactStore:v101];

            if (!v75)
            {
              sub_1000136A4(v70);

              v88 = v106;
              sub_100008970(v67, v106);

              sub_100008970(v67, v88);
              v45 = v103;
              v46 = v102;
              v44 = v107;
              goto LABEL_17;
            }

            v76 = [v75 identifier];
            v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;

            sub_1000136A4(v70);
            v79 = v97;
            swift_beginAccess();
            v80 = *v79;

            v81 = v67;
            sub_100008874(v67, v106);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v79 = v80;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v80 = sub_100007818(0, *(v80 + 2) + 1, 1, v80);
              *v97 = v80;
            }

            v44 = v107;
            v84 = *(v80 + 2);
            v83 = *(v80 + 3);
            v85 = v109;
            if (v84 >= v83 >> 1)
            {
              v89 = sub_100007818((v83 > 1), v84 + 1, 1, v80);
              v85 = v109;
              v80 = v89;
            }

            *(v80 + 2) = v84 + 1;
            v86 = &v80[56 * v84];
            *(v86 + 4) = v94;
            *(v86 + 5) = v78;
            *(v86 + 4) = v85;
            *(v86 + 3) = v108;
            v86[80] = 0;
            *v97 = v80;
            swift_endAccess();
            swift_beginAccess();
            sub_10000ED70(&v110, v108, v49);
            swift_endAccess();
            v87 = v106;
            sub_100008970(v81, v106);

            sub_100008970(v81, v87);

            goto LABEL_41;
          }

          sub_100008970(v67, v53);

          sub_100008970(v67, v53);

          (*v98)(v45, 1, 1, v68);
          sub_100008CF0(v45, &qword_100021460, &qword_100018AE0);
          v44 = 0;
        }

LABEL_17:
        v47 = v105;
LABEL_18:
        ++v43;
      }

      while (v43 != v47);
    }

    swift_beginAccess();
    v90 = *(v93 + 16);
  }

  else
  {
    v90 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v90;
}

void *sub_100013078(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = &_swiftEmptyArrayStorage;
  if (*(a1 + 16))
  {
    sub_1000025B0(&qword_100021600, &unk_100019270);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100018AA0;
    v7 = CNContactExternalUUIDKey;
    *(v6 + 32) = CNContactIdentifierKey;
    *(v6 + 40) = v7;
    v8 = CNContactExternalIdentifierKey;
    *(v6 + 48) = CNContactExternalIdentifierKey;
    v31 = v6;
    if (*(a3 + 16))
    {
      v9 = objc_opt_self();
      v10 = CNContactIdentifierKey;
      v11 = v7;
      v12 = v8;
      v13 = [v9 descriptorForRequiredKeys];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v14 = CNContactIdentifierKey;
      v15 = v7;
      v16 = v8;
    }

    v17 = objc_allocWithZone(CNContactFetchRequest);
    sub_1000025B0(&qword_100021608, &qword_100019280);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initWithKeysToFetch:isa];

    v20 = objc_opt_self();
    v21 = Array._bridgeToObjectiveC()().super.isa;
    v22 = [v20 predicateForContactsWithIdentifiers:v21];

    [v19 setPredicate:v22];
    [v19 setUnifyResults:0];
    v23 = swift_allocObject();
    *(v23 + 16) = &_swiftEmptyArrayStorage;
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a2;
    v24[4] = v23;
    aBlock[4] = sub_1000157B8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A7F8;
    aBlock[3] = &unk_10001D240;
    v3 = _Block_copy(aBlock);

    v25 = a2;

    aBlock[0] = 0;
    v26 = [v25 enumerateNonUnifiedContactsWithFetchRequest:v19 error:aBlock usingBlock:v3];
    _Block_release(v3);
    if (v26)
    {
      v27 = aBlock[0];

      swift_beginAccess();
      v3 = *(v23 + 16);
    }

    else
    {
      v28 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v3;
}

uint64_t type metadata accessor for ExchangeFallbackMatch()
{
  result = qword_1000214D8;
  if (!qword_1000214D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000134F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100013538()
{
  result = qword_100021428;
  if (!qword_100021428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021428);
  }

  return result;
}

uint64_t sub_10001358C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000135D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001358C(&qword_100021418, &qword_100018AC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExchangeFallbackMatch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000136A4(uint64_t a1)
{
  v2 = type metadata accessor for ExchangeFallbackMatch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExchangeFallbackMatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000137B0()
{
  result = qword_100021470;
  if (!qword_100021470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021470);
  }

  return result;
}

unint64_t sub_100013808()
{
  result = qword_100021478;
  if (!qword_100021478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021478);
  }

  return result;
}

uint64_t sub_100013880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001395C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100013A20()
{
  sub_100013B04();
  if (v0 <= 0x3F)
  {
    sub_100013B5C(319, &qword_1000214F0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100013B5C(319, &unk_1000214F8, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013B04()
{
  if (!qword_1000214E8)
  {
    type metadata accessor for PersonNameComponents();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000214E8);
    }
  }
}

void sub_100013B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100013BC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100013BDC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100013C04(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100013C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CleanupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CleanupType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}