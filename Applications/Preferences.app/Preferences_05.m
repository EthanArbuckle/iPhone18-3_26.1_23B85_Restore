uint64_t sub_10007EF94()
{
  *(v0 + 24) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007F038, v2, v1);
}

uint64_t sub_10007F038()
{
  v2 = v0[3];
  v1 = v0[4];

  v0[5] = [v2 sharedApplication];

  return _swift_task_switch(sub_10007F0BC, 0, 0);
}

uint64_t sub_10007F0BC()
{
  v1 = v0[5];
  v2 = v0[2];
  type metadata accessor for BackgroundIndexingTaskManager();
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_defaultActor_initialize();
  *(v3 + 128) = 0xD00000000000001BLL;
  *(v3 + 136) = 0x8000000100122BA0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 1;
  *(v3 + 112) = v1;
  *(v3 + 120) = v2;

  return _swift_task_switch(sub_10007F184, v3, 0);
}

uint64_t sub_10007F184()
{
  v1 = *(v0 + 48);
  sub_10007CD40();

  return _swift_task_switch(sub_10007F1EC, 0, 0);
}

uint64_t sub_10007F1EC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007F24C()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015D9D0, &qword_100114360);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (*(v0 + 48))
  {
    v4 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for SettingsSearchIndexer();
    sub_10001DD0C(&off_10014D020);
    sub_10004322C(&unk_10014D040);
    static Transforming<>.toSettingsNavigation.getter();
    static Transforming<>.searchableItemWithAllLocalizations.getter();
    v4 = SettingsSearchIndexer.__allocating_init(searchableIndexBundleIdentifier:attributionBundleIdentifiers:itemURLTransformers:indexableItemTransforming:)();
    v5 = *(v1 + 48);
    *(v1 + 48) = v4;
  }

  return v4;
}

uint64_t sub_10007F360()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015D9A0, &qword_100114318);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v41 = &v37 - v4;
  v38 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NSNotificationCenter.Publisher();
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004DED0(&unk_10015D9A8, &qword_100114320);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v37 = &v37 - v21;
  *(v0 + 16) = [objc_allocWithZone(LSObserver) init];
  v22 = [objc_allocWithZone(type metadata accessor for SettingsAppLSObserver()) init];
  *(v1 + 24) = v22;
  *(v1 + 32) = &_swiftEmptySetSingleton;
  *(v1 + 40) = 256;
  *(v1 + 48) = 0;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = &v22[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
  v26 = *&v22[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
  v25 = *&v22[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback + 8];
  *v24 = &unk_100114330;
  *(v24 + 1) = v23;
  v27 = v22;

  sub_100080CA4(v26);

  [*(v1 + 16) setDelegate:*(v1 + 24)];
  [*(v1 + 16) startObserving];
  v28 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v29 = v38;
  (*(v5 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v38);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v8, v29);
  v46 = v30;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = v41;
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  sub_100006868(&qword_10015D9B8, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100080CB4();
  v33 = v37;
  v34 = v39;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000068B0(v32, &qword_10015D9A0, &qword_100114318);

  (*(v44 + 8))(v12, v45);
  (*(v40 + 8))(v17, v34);
  swift_allocObject();
  swift_weakInit();

  sub_100006398();
  v35 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v43 + 8))(v33, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10007F950()
{
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LSObserverDelegate callback. Calling reindexInstalledApps.", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_10007FAF8;

    return sub_10007FC08();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10007FAF8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10007FC28()
{
  v11 = v0;
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_10000659C(v1, qword_100169688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100025CF0(0xD000000000000022, 0x8000000100122BC0, &v10);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_100025CF0(0xD00000000000001ELL, 0x8000000100122BF0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "reindexInstalledApps (appIntentIdentifier: %{public}s, appValueIdentifier: %{public}s).", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v5 = v0[2];
  v0[4] = sub_10007F24C();
  v6 = *(&async function pointer to dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:) + 1);
  v9 = (&async function pointer to dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:) + async function pointer to dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:));
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10007FE88;

  return v9(0xD000000000000022, 0x8000000100122BC0, 0xD00000000000001ELL, 0x8000000100122BF0);
}

uint64_t sub_10007FE88()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100080078;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10007FFA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007FFA4()
{
  v1 = *(v0 + 24);
  sub_100080FDC();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "reindexInstalledApps reindexing done.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100080078()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "reindexInstalledApps reindexing failed: %@", v8, 0xCu);
    sub_1000068B0(v9, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000801DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007EE54();
  }

  return result;
}

uint64_t sub_100080234()
{
  v1 = v0;
  [*(v0 + 16) stopObserving];
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 32);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_100006868(&unk_10015D9E0, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 32);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_1000813A0();
      v18 = *(v1 + 32);
      *(v1 + 32) = &_swiftEmptySetSingleton;

      v19 = *(v1 + 32);

      v20 = *(v1 + 48);

      return v1;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008048C()
{
  sub_100080234();

  return swift_deallocClassInstance();
}

uint64_t sub_1000804E4()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000659C(v10, qword_100169730);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "Building Settings Index", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100080790()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = &Strong[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
    v4 = *&Strong[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
    v0[7] = v4;
    if (v4)
    {
      v0[8] = *(v3 + 1);

      v9 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      v0[9] = v6;
      *v6 = v0;
      v6[1] = sub_100080904;

      return v9();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100080904()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  sub_100080CA4(v3);

  return _swift_task_switch(sub_100080A34, 0, 0);
}

uint64_t sub_100080A34()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_100080BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsAppLSObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100080C14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000ACE4;

  return sub_10007F930(v0);
}

uint64_t sub_100080CA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100080CB4()
{
  result = qword_10015D9C0;
  if (!qword_10015D9C0)
  {
    sub_100008294(255, &qword_10015C9D0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D9C0);
  }

  return result;
}

uint64_t sub_100080D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_10007EF74(a1, v4, v5, v6);
}

void *sub_100080DD8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v15 = 0;
  v16 = 0;
  [v0 getKnowledgeUUID:&v16 andSequenceNumber:&v15];

  v2 = v15;
  v3 = v16;
  v4 = qword_10015AAB0;
  v5 = v15;
  v6 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_100169688);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v5;
    *v11 = v3;
    v11[1] = v2;
    v12 = v6;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "LS knowledgeUUID: %@ sequenceNumber: %@", v10, 0x16u);
    sub_10004DED0(&unk_10015F9C0, &unk_100115230);
    swift_arrayDestroy();
  }

  if (!v6)
  {
    v6 = v5;
LABEL_10:

    return 0;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  return v3;
}

void sub_100080FDC()
{
  v0 = sub_100080DD8();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    if (qword_10015AAB0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_100169688);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Updating Seed in User Defaults.", v7, 2u);
    }

    if (qword_10015AA28 != -1)
    {
      swift_once();
    }

    v8 = [v2 UUIDString];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 setObject:v8 forKey:v11];

    v12 = [v3 integerValue];
    v13 = [v9 standardUserDefaults];
    oslog = String._bridgeToObjectiveC()();
    [v13 setInteger:v12 forKey:?];
  }

  else
  {
    if (qword_10015AAB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000659C(v14, qword_100169688);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Could not retrieve lsDatabaseSeed", v16, 2u);
    }
  }
}

uint64_t sub_1000812EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_100080770(a1, v4, v5, v6);
}

uint64_t sub_100081410()
{
  v1 = v0;
  v2 = type metadata accessor for AMSEngagementSheet();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = *(v1 + *(v3 + 28));
  v7 = objc_allocWithZone(AMSEngagementRequest);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  URL._bridgeToObjectiveC()(*(v3 + 32));
  v10 = v9;
  [v8 setURL:v9];

  v11 = [objc_opt_self() ams_sharedAccountStore];
  v12 = [v11 ams_activeiCloudAccount];

  [v8 setAccount:v12];
  v13 = type metadata accessor for EngagementViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = EngagementViewModel.init(bag:request:clientInfo:)();
  sub_10008195C(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1000819C0(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  dispatch thunk of EngagementViewModel.shouldDismiss.setter();
  return v16;
}

uint64_t sub_1000815FC(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081A84(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100081864()
{
  type metadata accessor for EngagementView();
  sub_100081904();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000818C8()
{
  v1 = *(v0 + 16);
  v2 = sub_100081410();

  return EngagementView.init(model:)(v2);
}

unint64_t sub_100081904()
{
  result = qword_10015DB90;
  if (!qword_10015DB90)
  {
    type metadata accessor for EngagementView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DB90);
  }

  return result;
}

uint64_t sub_10008195C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSEngagementSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000819C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSEngagementSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100081A24()
{
  v1 = *(type metadata accessor for AMSEngagementSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000815FC(v2);
}

uint64_t sub_100081A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100081AF4()
{
  result = qword_10015DBA0;
  if (!qword_10015DBA0)
  {
    sub_100052374(&qword_10015DBA8, &qword_100114428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DBA0);
  }

  return result;
}

uint64_t sub_100081C30()
{
  result = type metadata accessor for DismissAction();
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

id sub_100081CCC()
{
  v0 = [objc_allocWithZone(AAUISignInController) init];
  sub_10004DED0(&qword_10015DD08, &qword_100114538);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v2];

  return v0;
}

uint64_t sub_100081D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C3510(v9);
  v10 = (v2 + *(a1 + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = type metadata accessor for AppleAccountSignInSheet.Coordinator(0);
  v14 = objc_allocWithZone(v13);
  (*(v6 + 16))(&v14[OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_dismissAction], v9, v5);
  v15 = &v14[OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_onSuccess];
  *v15 = v12;
  *(v15 + 1) = v11;
  v18.receiver = v14;
  v18.super_class = v13;

  v16 = objc_msgSendSuper2(&v18, "init");
  result = (*(v6 + 8))(v9, v5);
  *a2 = v16;
  return result;
}

uint64_t sub_100081EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082284(&qword_10015DD00);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100081F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082284(&qword_10015DD00);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100081FEC()
{
  sub_100082284(&qword_10015DD00);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100082110()
{
  result = qword_10015DC48;
  if (!qword_10015DC48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015DC48);
  }

  return result;
}

void sub_10008215C(uint64_t a1)
{
  v2 = v1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v6 = sub_1000B8930(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a1 + 56) + 8 * v6);
      if ([v9 success])
      {
        v10 = *(v2 + OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_onSuccess + 8);
        (*(v2 + OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_onSuccess))();
      }
    }
  }

  else
  {
  }

  DismissAction.callAsFunction()();
}

uint64_t sub_100082284(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppleAccountSignInSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000822CC()
{
  result = qword_10015DD70;
  if (!qword_10015DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DD70);
  }

  return result;
}

uint64_t sub_100082328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082418();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082418();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000823F0()
{
  sub_100082418();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100082418()
{
  result = qword_10015DD78;
  if (!qword_10015DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DD78);
  }

  return result;
}

id sub_10008246C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v12._object = 0x8000000100122DB0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x8000000100122D90;
  v12._countAndFlagsBits = 0xD000000000000021;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v12);

  v4 = [v0 mainBundle];
  v13._object = 0x8000000100120D70;
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x8000000100122DE0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v13);

  v7 = objc_allocWithZone(OBWelcomeController);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 initWithTitle:v8 detailText:v9 icon:0];

  return v10;
}

uint64_t sub_100082600()
{
  if (qword_10015AA80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001695F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
  }

  return 0;
}

uint64_t sub_1000826DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100082724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082778(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = type metadata accessor for AdaptiveNavigationDisclosureIndicatorWrapper();
  (*(*(v11 - 8) + 16))(v17, a1, v11);
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = a1[3];
  *(v13 + 80) = a1[2];
  *(v13 + 96) = v14;
  *(v13 + 112) = a1[4];
  v15 = a1[1];
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  sub_100094AF4(0, 0, v9, &unk_100114870, v13);
}

uint64_t sub_100082904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000829F8, v9, v8);
}

uint64_t sub_1000829F8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  v3 = *(v2 + 8);
  *(v0 + 56) = *v2;
  *(v0 + 64) = v3;
  v4 = *(v0 + 56);
  v5 = v3;

  if ((v5 & 1) == 0)
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100082C60(v0 + 56);
    (*(v7 + 8))(v6, v8);
    v4 = *(v0 + 72);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v4 + 24);

  sub_100010CD0();

  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  v17 = *(v11 + 48);
  *(v0 + 16) = v13;
  *(v0 + 24) = v14;
  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  *(v0 + 48) = v17;
  sub_100029920(v13, v14, v15, v16, v17);
  sub_1000954AC(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100082B9C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_100082904(a1, v6, v7, (v1 + 6));
}

uint64_t sub_100082C60(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015DE20, &qword_100114878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100082D64()
{
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  _print_unlocked<A, B>(_:_:)();
  sub_10004DED0(&unk_10015EF60, &unk_1001148B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  strcpy((inited + 32), "errorMessage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  *(inited + 48) = v3;
  sub_1000BA600(inited);
  swift_setDeallocating();
  sub_100082EF8(inited + 32);
  v4 = String._bridgeToObjectiveC()();
  sub_1000548F0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_100082EF8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015DE28, &qword_1001161C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100082F60()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_1000B8930(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_10001EE30(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10008305C()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_1000B8930(0xD00000000000001ALL, 0x8000000100122EA0), (v5 & 1) != 0))
    {
      sub_10001EE30(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100083150()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = [v0 infoDictionary];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v12 + 16) || (v13 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v14 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10001EE30(*(v12 + 56) + 32 * v13, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = [v1 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.deletingPathExtension()();
    v17 = *(v3 + 8);
    v17(v7, v2);
    v15 = URL.lastPathComponent.getter();
    v17(v9, v2);
    return v15;
  }

  return v19;
}

void sub_10008335C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695A8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083400()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695B0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000834A4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695B8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083548()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000835EC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695C8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083690()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695D0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083734()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695D8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000837D8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_10008387C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100083920()
{
  sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001148C0;
  if (qword_10015AA38 != -1)
  {
    swift_once();
  }

  v1 = qword_1001695B0;
  *(v0 + 32) = qword_1001695B0;
  v2 = qword_10015AA48;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1001695C0;
  *(v0 + 40) = qword_1001695C0;
  v5 = qword_10015AA40;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1001695B8;
  *(v0 + 48) = qword_1001695B8;
  v8 = qword_10015AA50;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001695C8;
  *(v0 + 56) = qword_1001695C8;
  v11 = qword_10015AA58;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1001695D0;
  *(v0 + 64) = qword_1001695D0;
  v14 = qword_10015AA60;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1001695D8;
  *(v0 + 72) = qword_1001695D8;
  v17 = qword_10015AA68;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1001695E0;
  *(v0 + 80) = qword_1001695E0;
  v20 = qword_10015AA70;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1001695E8;
  *(v0 + 88) = qword_1001695E8;
  v23 = v22;

  v26 = sub_10008596C(v24);
  sub_100083C4C(&v26);

  qword_1001695F0 = v26;
  return result;
}

void *sub_100083BC4(uint64_t a1, uint64_t a2)
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

  sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
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

uint64_t sub_100083C4C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10005E260(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100083CC8(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100083CC8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002CC5C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100084254(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100083DCC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100083DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = type metadata accessor for URL();
  v8 = *(*(v62 - 8) + 64);
  v9 = __chkstk_darwin(v62);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v60 = &v53 - v13;
  v54 = a2;
  if (a3 != a2)
  {
    v58 = *a4;
    v59 = (v12 + 8);
    v14 = v58 + 8 * a3 - 8;
    v15 = a1 - a3;
    p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_6:
    v56 = v14;
    v57 = a3;
    v17 = *(v58 + 8 * a3);
    v55 = v15;
    v18 = v15;
    while (1)
    {
      v19 = *v14;
      v20 = v17;
      v21 = v19;
      v22 = [v20 p_base_meths[278]];
      v68 = v21;
      v63 = v18;
      v64 = v20;
      if (v22)
      {
        v23 = v22;
        v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v24 + 16) && (v25 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v26 & 1) != 0))
        {
          sub_10001EE30(*(v24 + 56) + 32 * v25, v67);

          if (swift_dynamicCast())
          {
            v27 = v65;
            v28 = v66;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v29 = [v20 bundleURL];
      v30 = v61;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v60;
      URL.deletingPathExtension()();
      v32 = *v59;
      v33 = v62;
      (*v59)(v30, v62);
      v27 = URL.lastPathComponent.getter();
      v28 = v34;
      v32(v31, v33);
      v21 = v68;
LABEL_14:
      v35 = [v21 p_base_meths[278]];
      if (!v35)
      {
        goto LABEL_20;
      }

      v36 = v35;
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v37 + 16) || (v38 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v39 & 1) == 0))
      {

LABEL_20:
        v42 = [v21 bundleURL];
        v43 = v61;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v60;
        URL.deletingPathExtension()();
        v45 = *v59;
        v46 = v62;
        (*v59)(v43, v62);
        v40 = URL.lastPathComponent.getter();
        v41 = v47;
        v45(v44, v46);
        goto LABEL_21;
      }

      sub_10001EE30(*(v37 + 56) + 32 * v38, v67);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      v40 = v65;
      v41 = v66;
LABEL_21:
      v48 = v64;
      if (v27 == v40 && v28 == v41)
      {

        p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
LABEL_5:
        a3 = v57 + 1;
        v14 = v56 + 8;
        v15 = v55 - 1;
        if (v57 + 1 == v54)
        {
          return result;
        }

        goto LABEL_6;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
      v50 = v63;
      if ((v49 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v58)
      {
        __break(1u);
        return result;
      }

      v51 = *v14;
      v17 = *(v14 + 8);
      *v14 = v17;
      *(v14 + 8) = v51;
      v14 -= 8;
      v52 = __CFADD__(v50, 1);
      v18 = v50 + 1;
      if (v52)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_100084254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v6;
  v156 = a4;
  v157 = a1;
  v170 = type metadata accessor for URL();
  v9 = *(*(v170 - 8) + 64);
  v10 = __chkstk_darwin(v170);
  v169 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v168 = &v154 - v13;
  v14 = *(a3 + 8);
  if (v14 < 1)
  {
    v16 = &_swiftEmptyArrayStorage;
LABEL_132:
    v4 = *v157;
    if (!*v157)
    {
      goto LABEL_171;
    }

    v5 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v148 = v5;
LABEL_135:
      v176 = v148;
      v5 = *(v148 + 2);
      if (v5 >= 2)
      {
        do
        {
          v149 = *a3;
          if (!*a3)
          {
            goto LABEL_169;
          }

          v150 = a3;
          a3 = *&v148[16 * v5];
          v151 = v148;
          v152 = *&v148[16 * v5 + 24];
          sub_100084FE4((v149 + 8 * a3), (v149 + 8 * *&v148[16 * v5 + 16]), (v149 + 8 * v152), v4);
          if (v7)
          {
            break;
          }

          if (v152 < a3)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_10005E064(v151);
          }

          if (v5 - 2 >= *(v151 + 2))
          {
            goto LABEL_159;
          }

          v153 = &v151[16 * v5];
          *v153 = a3;
          *(v153 + 1) = v152;
          v176 = v151;
          sub_10005DFD8(v5 - 1);
          v148 = v176;
          v5 = *(v176 + 2);
          a3 = v150;
        }

        while (v5 > 1);
      }

LABEL_143:

      return;
    }

LABEL_165:
    v148 = sub_10005E064(v5);
    goto LABEL_135;
  }

  v15 = 0;
  v167 = (v12 + 8);
  v16 = &_swiftEmptyArrayStorage;
  v160 = a3;
  while (2)
  {
    v17 = v15++;
    v158 = v17;
    if (v15 >= v14)
    {
      v27 = v156;
      goto LABEL_45;
    }

    v155 = v16;
    v18 = *a3;
    v19 = *(*a3 + 8 * v17);
    v4 = *(*a3 + 8 * v15);
    v20 = v19;
    v21 = sub_100083150();
    v23 = v22;
    v24 = sub_100083150();
    v5 = v25;
    if (v21 == v24 && v23 == v25)
    {
      LODWORD(v165) = 0;
    }

    else
    {
      LODWORD(v165) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v17 = v158;
    v15 = v158 + 2;
    a3 = v160;
    if (v158 + 2 >= v14)
    {
      goto LABEL_36;
    }

    v28 = (v18 + 8 * v158 + 16);
    v163 = v14;
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v31 = v29;
      v32 = [v30 infoDictionary];
      v164 = v7;
      if (v32)
      {
        v33 = v32;
        v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v34 + 16) && (v35 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v36 & 1) != 0))
        {
          sub_10001EE30(*(v34 + 56) + 32 * v35, v175);

          if (swift_dynamicCast())
          {
            v166 = v173;
            v171 = v174;
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      v37 = [v30 bundleURL];
      v38 = v169;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = v168;
      URL.deletingPathExtension()();
      v40 = *v167;
      v41 = v31;
      v42 = v170;
      (*v167)(v38, v170);
      v166 = URL.lastPathComponent.getter();
      v171 = v43;
      v44 = v42;
      v31 = v41;
      v40(v39, v44);
LABEL_23:
      v45 = [v31 infoDictionary];
      v172 = v31;
      if (!v45)
      {
        goto LABEL_29;
      }

      v46 = v45;
      v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v47 + 16) || (v48 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v49 & 1) == 0))
      {

LABEL_29:
        v51 = [v31 bundleURL];
        v52 = v169;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v168;
        URL.deletingPathExtension()();
        v54 = *v167;
        v55 = v170;
        (*v167)(v52, v170);
        v50 = URL.lastPathComponent.getter();
        v5 = v56;
        v54(v53, v55);
        goto LABEL_30;
      }

      sub_10001EE30(*(v47 + 56) + 32 * v48, v175);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      v50 = v173;
      v5 = v174;
LABEL_30:
      v57 = v163;
      v7 = v164;
      a3 = v160;
      v4 = v171;
      if (v166 == v50 && v171 == v5)
      {

        if (v165)
        {
          v16 = v155;
          v27 = v156;
          v17 = v158;
          goto LABEL_37;
        }
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v165 ^ v4))
        {
          goto LABEL_35;
        }
      }

      ++v15;
      ++v28;
    }

    while (v57 != v15);
    v15 = v57;
LABEL_35:
    v17 = v158;
LABEL_36:
    v16 = v155;
    v27 = v156;
    if (v165)
    {
LABEL_37:
      if (v15 < v17)
      {
        goto LABEL_162;
      }

      if (v17 < v15)
      {
        v58 = 8 * v15 - 8;
        v59 = 8 * v17;
        v60 = v15;
        do
        {
          if (v17 != --v60)
          {
            v61 = *a3;
            if (!*a3)
            {
              goto LABEL_168;
            }

            v62 = *(v61 + v59);
            *(v61 + v59) = *(v61 + v58);
            *(v61 + v58) = v62;
          }

          ++v17;
          v58 -= 8;
          v59 += 8;
        }

        while (v17 < v60);
        v17 = v158;
      }
    }

LABEL_45:
    v63 = *(a3 + 8);
    if (v15 >= v63)
    {
LABEL_80:
      if (v15 < v17)
      {
        goto LABEL_160;
      }

      v101 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = v101;
      }

      else
      {
        v16 = sub_10005E15C(0, *(v101 + 2) + 1, 1, v101);
      }

      v4 = *(v16 + 2);
      v102 = *(v16 + 3);
      v5 = v4 + 1;
      v103 = v158;
      if (v4 >= v102 >> 1)
      {
        v147 = sub_10005E15C((v102 > 1), v4 + 1, 1, v16);
        v103 = v158;
        v16 = v147;
      }

      *(v16 + 2) = v5;
      v104 = &v16[16 * v4];
      *(v104 + 4) = v103;
      *(v104 + 5) = v15;
      v105 = *v157;
      if (!*v157)
      {
        goto LABEL_170;
      }

      if (!v4)
      {
LABEL_3:
        v14 = *(a3 + 8);
        if (v15 >= v14)
        {
          goto LABEL_132;
        }

        continue;
      }

      while (1)
      {
        v106 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v107 = *(v16 + 4);
          v108 = *(v16 + 5);
          v117 = __OFSUB__(v108, v107);
          v109 = v108 - v107;
          v110 = v117;
LABEL_100:
          if (v110)
          {
            goto LABEL_149;
          }

          v123 = &v16[16 * v5];
          v125 = *v123;
          v124 = *(v123 + 1);
          v126 = __OFSUB__(v124, v125);
          v127 = v124 - v125;
          v128 = v126;
          if (v126)
          {
            goto LABEL_152;
          }

          v129 = &v16[16 * v106 + 32];
          v131 = *v129;
          v130 = *(v129 + 1);
          v117 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v117)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v127, v132))
          {
            goto LABEL_156;
          }

          if (v127 + v132 >= v109)
          {
            if (v109 < v132)
            {
              v106 = v5 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v133 = &v16[16 * v5];
        v135 = *v133;
        v134 = *(v133 + 1);
        v117 = __OFSUB__(v134, v135);
        v127 = v134 - v135;
        v128 = v117;
LABEL_114:
        if (v128)
        {
          goto LABEL_151;
        }

        v136 = &v16[16 * v106];
        v138 = *(v136 + 4);
        v137 = *(v136 + 5);
        v117 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v117)
        {
          goto LABEL_154;
        }

        if (v139 < v127)
        {
          goto LABEL_3;
        }

LABEL_121:
        v4 = v106 - 1;
        if (v106 - 1 >= v5)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_167;
        }

        v144 = v16;
        v5 = *&v16[16 * v4 + 32];
        v145 = *&v16[16 * v106 + 40];
        sub_100084FE4((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v106 + 32]), (*a3 + 8 * v145), v105);
        if (v7)
        {
          goto LABEL_143;
        }

        if (v145 < v5)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_10005E064(v144);
        }

        if (v4 >= *(v144 + 2))
        {
          goto LABEL_146;
        }

        v146 = &v144[16 * v4];
        *(v146 + 4) = v5;
        *(v146 + 5) = v145;
        v176 = v144;
        sub_10005DFD8(v106);
        v16 = v176;
        v5 = *(v176 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v111 = &v16[16 * v5 + 32];
      v112 = *(v111 - 64);
      v113 = *(v111 - 56);
      v117 = __OFSUB__(v113, v112);
      v114 = v113 - v112;
      if (v117)
      {
        goto LABEL_147;
      }

      v116 = *(v111 - 48);
      v115 = *(v111 - 40);
      v117 = __OFSUB__(v115, v116);
      v109 = v115 - v116;
      v110 = v117;
      if (v117)
      {
        goto LABEL_148;
      }

      v118 = &v16[16 * v5];
      v120 = *v118;
      v119 = *(v118 + 1);
      v117 = __OFSUB__(v119, v120);
      v121 = v119 - v120;
      if (v117)
      {
        goto LABEL_150;
      }

      v117 = __OFADD__(v109, v121);
      v122 = v109 + v121;
      if (v117)
      {
        goto LABEL_153;
      }

      if (v122 >= v114)
      {
        v140 = &v16[16 * v106 + 32];
        v142 = *v140;
        v141 = *(v140 + 1);
        v117 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v117)
        {
          goto LABEL_157;
        }

        if (v109 < v143)
        {
          v106 = v5 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

    break;
  }

  if (__OFSUB__(v15, v17))
  {
    goto LABEL_161;
  }

  if (v15 - v17 >= v27)
  {
LABEL_79:
    v17 = v158;
    goto LABEL_80;
  }

  v17 = v158;
  v64 = v158 + v27;
  if (__OFADD__(v158, v27))
  {
    goto LABEL_163;
  }

  if (v64 >= v63)
  {
    v64 = *(a3 + 8);
  }

  if (v64 < v158)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v15 == v64)
  {
    goto LABEL_80;
  }

  v155 = v16;
  v65 = *a3;
  v164 = v7;
  v165 = v65;
  v66 = v65 + 8 * v15 - 8;
  v67 = v158 - v15;
  v159 = v64;
  while (2)
  {
    v162 = v66;
    v163 = v15;
    v68 = *(v165 + 8 * v15);
    v161 = v67;
    v69 = v67;
    v70 = v66;
LABEL_57:
    v71 = *v70;
    v72 = v68;
    v73 = v71;
    v74 = [v72 infoDictionary];
    v171 = v72;
    v172 = v73;
    if (v74)
    {
      v75 = v74;
      v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v76 + 16) && (v77 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v78 & 1) != 0))
      {
        sub_10001EE30(*(v76 + 56) + 32 * v77, v175);

        if (swift_dynamicCast())
        {
          v4 = v173;
          v79 = v174;
          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    v80 = [v72 bundleURL];
    v81 = v169;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = v168;
    URL.deletingPathExtension()();
    v83 = *v167;
    v84 = v170;
    (*v167)(v81, v170);
    v4 = URL.lastPathComponent.getter();
    v79 = v85;
    v86 = v82;
    v73 = v172;
    v83(v86, v84);
LABEL_64:
    v87 = [v73 infoDictionary];
    if (v87)
    {
      v88 = v87;
      v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v89 + 16) && (v90 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v91 & 1) != 0))
      {
        sub_10001EE30(*(v89 + 56) + 32 * v90, v175);

        if (swift_dynamicCast())
        {
          v5 = v174;
          if (v4 != v173)
          {
            break;
          }

          goto LABEL_72;
        }
      }

      else
      {
      }
    }

    v92 = [v73 bundleURL];
    v93 = v169;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = v168;
    URL.deletingPathExtension()();
    v166 = v70;
    v95 = *v167;
    v96 = v170;
    (*v167)(v93, v170);
    v97 = URL.lastPathComponent.getter();
    v5 = v98;
    v95(v94, v96);
    v70 = v166;
    if (v4 != v97)
    {
      break;
    }

LABEL_72:
    if (v79 == v5)
    {

LABEL_55:
      v15 = v163 + 1;
      v66 = v162 + 8;
      v67 = v161 - 1;
      if (v163 + 1 == v159)
      {
        v15 = v159;
        v7 = v164;
        a3 = v160;
        v16 = v155;
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v165)
  {
    v99 = *v70;
    v68 = *(v70 + 8);
    *v70 = v68;
    *(v70 + 8) = v99;
    v70 -= 8;
    if (__CFADD__(v69++, 1))
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

uint64_t sub_100084FE4(id *a1, id *a2, char *a3, void **a4)
{
  v106 = type metadata accessor for URL();
  v8 = *(v106 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v106);
  v105 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v95 - v12;
  v110 = a1;
  v13 = a2 - a1;
  v14 = v13 / 8;
  v102 = a2;
  v15 = a3 - a2;
  v16 = v15 / 8;
  if (v13 / 8 >= v15 / 8)
  {
    if (a4 != v102 || &v102[v16] <= a4)
    {
      memmove(a4, v102, 8 * v16);
    }

    v103 = &a4[v16];
    if (v15 < 8 || v102 <= v110)
    {
      goto LABEL_67;
    }

    v97 = (v8 + 8);
    p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_39:
    v56 = v103;
    v57 = v102 - 1;
    v96 = v102 - 1;
    while (1)
    {
      v100 = a3;
      v58 = *(v56 - 1);
      v98 = v56 - 1;
      v59 = *v57;
      v60 = v58;
      v61 = v59;
      v62 = [v60 p_base_meths[278]];
      v101 = v61;
      v99 = v60;
      if (v62)
      {
        v63 = v62;
        v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v64 + 16) && (v65 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v66 & 1) != 0))
        {
          sub_10001EE30(*(v64 + 56) + 32 * v65, v109);

          if (swift_dynamicCast())
          {
            v68 = v107;
            v67 = v108;
            goto LABEL_48;
          }
        }

        else
        {
        }
      }

      v69 = [v60 bundleURL];
      v70 = v105;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = v104;
      URL.deletingPathExtension()();
      v72 = *v97;
      v73 = v106;
      (*v97)(v70, v106);
      v68 = URL.lastPathComponent.getter();
      v67 = v74;
      v75 = v73;
      v61 = v101;
      v72(v71, v75);
LABEL_48:
      v76 = [v61 p_base_meths[278]];
      if (v76)
      {
        v77 = v76;
        v78 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v78 + 16) && (v79 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v80 & 1) != 0))
        {
          sub_10001EE30(*(v78 + 56) + 32 * v79, v109);

          if (swift_dynamicCast())
          {
            v81 = v108;
            if (v68 != v107)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }
        }

        else
        {
        }
      }

      v82 = [v61 bundleURL];
      v83 = v105;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = v104;
      URL.deletingPathExtension()();
      v85 = a4;
      v86 = *v97;
      v87 = v106;
      (*v97)(v83, v106);
      v88 = URL.lastPathComponent.getter();
      v81 = v89;
      v86(v84, v87);
      a4 = v85;
      if (v68 != v88)
      {
        goto LABEL_58;
      }

LABEL_56:
      if (v67 != v81)
      {
LABEL_58:
        v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v90 = v100;
        a3 = (v100 - 1);
        p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
        if (v91)
        {
          v93 = v96;
          if (v100 != v102)
          {
            *a3 = *v96;
          }

          if (v103 <= a4 || (v102 = v93, v93 <= v110))
          {
            v102 = v93;
            goto LABEL_67;
          }

          goto LABEL_39;
        }

        goto LABEL_59;
      }

      v90 = v100;
      a3 = (v100 - 1);
      p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_59:
      v57 = v96;
      v92 = v103 == v90;
      v56 = v98;
      if (!v92)
      {
        *a3 = *v98;
      }

      v103 = v56;
      if (v56 <= a4)
      {
        v103 = v56;
        goto LABEL_67;
      }
    }
  }

  if (a4 != v110 || &v110[v14] <= a4)
  {
    memmove(a4, v110, 8 * v14);
  }

  v103 = &a4[v14];
  if (v13 >= 8 && v102 < a3)
  {
    v17 = (v8 + 8);
    v18 = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
    do
    {
      v19 = *a4;
      v20 = *v102;
      v21 = v19;
      v22 = [v20 v18[278]];
      v100 = a4;
      v101 = v21;
      v99 = v20;
      if (v22)
      {
        v23 = v22;
        v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v24 + 16) && (v25 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v26 & 1) != 0))
        {
          sub_10001EE30(*(v24 + 56) + 32 * v25, v109);

          if (swift_dynamicCast())
          {
            v28 = v107;
            v27 = v108;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v29 = [v20 bundleURL];
      v30 = v105;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v104;
      URL.deletingPathExtension()();
      v32 = *v17;
      v33 = v30;
      v34 = v106;
      (*v17)(v33, v106);
      v28 = URL.lastPathComponent.getter();
      v27 = v35;
      v36 = v34;
      v21 = v101;
      v32(v31, v36);
LABEL_15:
      v37 = [v21 v18[278]];
      if (v37)
      {
        v38 = v37;
        v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v39 + 16) && (v40 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v41 & 1) != 0))
        {
          sub_10001EE30(*(v39 + 56) + 32 * v40, v109);

          if (swift_dynamicCast())
          {
            v42 = v108;
            if (v28 != v107)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      v43 = [v21 bundleURL];
      v44 = v105;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = a3;
      v46 = v104;
      URL.deletingPathExtension()();
      v47 = *v17;
      v48 = v44;
      v49 = v106;
      (*v17)(v48, v106);
      v50 = URL.lastPathComponent.getter();
      v42 = v51;
      v52 = v46;
      a3 = v45;
      v47(v52, v49);
      if (v28 != v50)
      {
        goto LABEL_25;
      }

LABEL_23:
      if (v27 == v42)
      {

        v18 = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_28:
        v54 = v100;
        a4 = v100 + 1;
        if (v110 == v100)
        {
          goto LABEL_30;
        }

LABEL_29:
        *v110 = *v54;
        goto LABEL_30;
      }

LABEL_25:
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
      if ((v53 & 1) == 0)
      {
        goto LABEL_28;
      }

      v54 = v102++;
      a4 = v100;
      if (v110 != v54)
      {
        goto LABEL_29;
      }

LABEL_30:
      ++v110;
    }

    while (a4 < v103 && v102 < a3);
  }

  v102 = v110;
LABEL_67:
  if (v102 != a4 || v102 >= (a4 + ((v103 - a4 + (v103 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v102, a4, 8 * (v103 - a4));
  }

  return 1;
}

void *sub_10008596C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100083BC4(v3, 0);
  sub_100085A00((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100085A00(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100085C08();
          for (i = 0; i != v6; ++i)
          {
            sub_10004DED0(&qword_10015D220, &qword_100113A40);
            v9 = sub_100085B80(v13, i, a3);
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
        sub_10002CC5C();
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

void (*sub_100085B80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100085C00;
  }

  __break(1u);
  return result;
}

unint64_t sub_100085C08()
{
  result = qword_10015DE30;
  if (!qword_10015DE30)
  {
    sub_100052374(&qword_10015D220, &qword_100113A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DE30);
  }

  return result;
}

uint64_t sub_100085C6C(uint64_t *a1, int a2)
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

uint64_t sub_100085CB4(uint64_t result, int a2, int a3)
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

uint64_t sub_100085D38()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_100169610);
  sub_10000659C(v0, qword_100169610);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100085DC4()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_100169628);
  sub_10000659C(v0, qword_100169628);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100085ED8()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_1001696E8);
  sub_10000659C(v0, qword_1001696E8);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100085F64()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100006538(v0, qword_100169730);
  sub_10000659C(v0, qword_100169730);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_10015DED0;
  if (!qword_10015DED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100086094()
{
  sub_1000864D0(319, &qword_10015DEE0, &qword_10015E900, &qword_100114A50, sub_1000863EC);
  if (v0 <= 0x3F)
  {
    sub_100086480();
    if (v1 <= 0x3F)
    {
      sub_1000864D0(319, &qword_10015DEF8, &qword_10015DF00, &qword_100114A58, sub_100086540);
      if (v2 <= 0x3F)
      {
        sub_1000864D0(319, &qword_10015DF10, &qword_10015DF18, &qword_100114A60, sub_1000865BC);
        if (v3 <= 0x3F)
        {
          sub_1000864D0(319, &qword_10015DF28, &qword_10015DF30, &unk_100114A68, sub_100086638);
          if (v4 <= 0x3F)
          {
            sub_1000864D0(319, &qword_10015DF40, &qword_10015D2E8, &unk_100113BE0, sub_1000866B4);
            if (v5 <= 0x3F)
            {
              sub_1000864D0(319, &qword_10015DF50, &qword_10015DF58, &unk_100114A78, sub_100086730);
              if (v6 <= 0x3F)
              {
                sub_1000864D0(319, &qword_10015DF68, &unk_10015FC00, &qword_100111C00, sub_1000867AC);
                if (v7 <= 0x3F)
                {
                  sub_1000868A4(319, &qword_10015DF78);
                  if (v8 <= 0x3F)
                  {
                    sub_1000864D0(319, &qword_10015DF80, &qword_10015DF88, &qword_100114A88, sub_100086828);
                    if (v9 <= 0x3F)
                    {
                      sub_1000868A4(319, &qword_10015DF98);
                      if (v10 <= 0x3F)
                      {
                        sub_1000868A4(319, &unk_10015DFA0);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000863EC()
{
  result = qword_10015DEE8;
  if (!qword_10015DEE8)
  {
    sub_100052374(&qword_10015E900, &qword_100114A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DEE8);
  }

  return result;
}

void sub_100086480()
{
  if (!qword_10015DEF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015DEF0);
    }
  }
}

void sub_1000864D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_100052374(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100086540()
{
  result = qword_10015DF08;
  if (!qword_10015DF08)
  {
    sub_100052374(&qword_10015DF00, &qword_100114A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF08);
  }

  return result;
}

unint64_t sub_1000865BC()
{
  result = qword_10015DF20;
  if (!qword_10015DF20)
  {
    sub_100052374(&qword_10015DF18, &qword_100114A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF20);
  }

  return result;
}

unint64_t sub_100086638()
{
  result = qword_10015DF38;
  if (!qword_10015DF38)
  {
    sub_100052374(&qword_10015DF30, &unk_100114A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF38);
  }

  return result;
}

unint64_t sub_1000866B4()
{
  result = qword_10015DF48;
  if (!qword_10015DF48)
  {
    sub_100052374(&qword_10015D2E8, &unk_100113BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF48);
  }

  return result;
}

unint64_t sub_100086730()
{
  result = qword_10015DF60;
  if (!qword_10015DF60)
  {
    sub_100052374(&qword_10015DF58, &unk_100114A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF60);
  }

  return result;
}

unint64_t sub_1000867AC()
{
  result = qword_10015DF70;
  if (!qword_10015DF70)
  {
    sub_100052374(&unk_10015FC00, &qword_100111C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF70);
  }

  return result;
}

unint64_t sub_100086828()
{
  result = qword_10015DF90;
  if (!qword_10015DF90)
  {
    sub_100052374(&qword_10015DF88, &qword_100114A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF90);
  }

  return result;
}

void sub_1000868A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsAppFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAppFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppPresentableItemIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAppPresentableItemIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100086D04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100086D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086DAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100086E2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100086FB0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_100087200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100087404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000010011EAC0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000010011EAE0;
    }

    v5 = 0x800000010011EA80;
    if (a1 != 3)
    {
      v5 = 0x800000010011EAA0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000010011EAC0;
    }

    else
    {
      v10 = 0x800000010011EAE0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000010011EA80;
    }

    else
    {
      v10 = 0x800000010011EAA0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1000875DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1000877D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x746F6F7465756C62;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72616C756C6C6563;
    }

    else
    {
      v5 = 0x79726574746162;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1768319351;
    }

    else
    {
      v5 = 0x746F6F7465756C62;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000068;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x72616C756C6C6563;
  if (a2 != 2)
  {
    v8 = 0x79726574746162;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 1768319351;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100087908()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100087A1C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100087B24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100087C34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100087D44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  sub_100087F94();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1000068B0(v5, &qword_10015E910, &unk_10010FC70);
    sub_10008D614();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_100087F94()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015E0F8, &qword_100115078);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v400 = &v364 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v399 = &v364 - v7;
  v8 = __chkstk_darwin(v6);
  v398 = &v364 - v9;
  v10 = __chkstk_darwin(v8);
  v395 = &v364 - v11;
  v12 = __chkstk_darwin(v10);
  v392 = &v364 - v13;
  v14 = __chkstk_darwin(v12);
  v389 = &v364 - v15;
  v16 = __chkstk_darwin(v14);
  v388 = &v364 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v364 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v364 - v22;
  __chkstk_darwin(v21);
  v25 = &v364 - v24;
  v26 = type metadata accessor for URLQueryItem();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v367 = &v364 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v366 = &v364 - v32;
  v33 = __chkstk_darwin(v31);
  v383 = &v364 - v34;
  v35 = __chkstk_darwin(v33);
  v382 = &v364 - v36;
  v37 = __chkstk_darwin(v35);
  v419 = &v364 - v38;
  v39 = __chkstk_darwin(v37);
  v381 = &v364 - v40;
  v41 = __chkstk_darwin(v39);
  v418 = &v364 - v42;
  v43 = __chkstk_darwin(v41);
  v417 = &v364 - v44;
  v45 = __chkstk_darwin(v43);
  v380 = &v364 - v46;
  v47 = __chkstk_darwin(v45);
  v416 = &v364 - v48;
  v49 = __chkstk_darwin(v47);
  v397 = &v364 - v50;
  v51 = __chkstk_darwin(v49);
  v396 = &v364 - v52;
  v53 = __chkstk_darwin(v51);
  v415 = &v364 - v54;
  v55 = __chkstk_darwin(v53);
  v379 = &v364 - v56;
  v57 = __chkstk_darwin(v55);
  v414 = &v364 - v58;
  v59 = __chkstk_darwin(v57);
  v413 = &v364 - v60;
  v61 = __chkstk_darwin(v59);
  v378 = &v364 - v62;
  v63 = __chkstk_darwin(v61);
  v412 = &v364 - v64;
  v65 = __chkstk_darwin(v63);
  v411 = &v364 - v66;
  v67 = __chkstk_darwin(v65);
  v377 = &v364 - v68;
  v69 = __chkstk_darwin(v67);
  v410 = &v364 - v70;
  v71 = __chkstk_darwin(v69);
  v409 = &v364 - v72;
  v73 = __chkstk_darwin(v71);
  v376 = &v364 - v74;
  v75 = __chkstk_darwin(v73);
  v408 = &v364 - v76;
  v77 = __chkstk_darwin(v75);
  v394 = &v364 - v78;
  v79 = __chkstk_darwin(v77);
  v393 = &v364 - v80;
  v81 = __chkstk_darwin(v79);
  v420 = &v364 - v82;
  v83 = __chkstk_darwin(v81);
  v375 = &v364 - v84;
  v85 = __chkstk_darwin(v83);
  v407 = &v364 - v86;
  v87 = __chkstk_darwin(v85);
  v406 = &v364 - v88;
  v89 = __chkstk_darwin(v87);
  v374 = &v364 - v90;
  v91 = __chkstk_darwin(v89);
  v405 = &v364 - v92;
  v93 = __chkstk_darwin(v91);
  v404 = &v364 - v94;
  v95 = __chkstk_darwin(v93);
  v373 = &v364 - v96;
  v97 = __chkstk_darwin(v95);
  v403 = &v364 - v98;
  v99 = __chkstk_darwin(v97);
  v391 = &v364 - v100;
  v101 = __chkstk_darwin(v99);
  v390 = &v364 - v102;
  v103 = __chkstk_darwin(v101);
  v402 = &v364 - v104;
  v105 = __chkstk_darwin(v103);
  v372 = &v364 - v106;
  v107 = __chkstk_darwin(v105);
  v401 = &v364 - v108;
  v109 = __chkstk_darwin(v107);
  v371 = &v364 - v110;
  v111 = __chkstk_darwin(v109);
  v370 = &v364 - v112;
  v113 = __chkstk_darwin(v111);
  v369 = &v364 - v114;
  v115 = __chkstk_darwin(v113);
  v368 = &v364 - v116;
  v117 = __chkstk_darwin(v115);
  v387 = &v364 - v118;
  v119 = __chkstk_darwin(v117);
  v386 = &v364 - v120;
  v121 = __chkstk_darwin(v119);
  v385 = &v364 - v122;
  v123 = __chkstk_darwin(v121);
  v384 = &v364 - v124;
  v125 = __chkstk_darwin(v123);
  v127 = &v364 - v126;
  __chkstk_darwin(v125);
  v129 = &v364 - v128;
  v424 = v27;
  v425 = &_swiftEmptyArrayStorage;
  v130 = v1[3];
  v421 = v1;
  if (!v130)
  {
    v422 = *(v27 + 56);
    v422(v25, 1, 1, v26);
LABEL_5:
    sub_1000068B0(v25, &qword_10015E0F8, &qword_100115078);
    v134 = v1[6];
    if (!v134)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v131 = v1[1];
  v132 = v1[2];
  v133 = *v1;

  v27 = v424;
  URLQueryItem.init(name:value:)();
  v422 = *(v27 + 56);
  v422(v25, 0, 1, v26);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v1 = v421;
    goto LABEL_5;
  }

  v423 = *(v27 + 32);
  v423(v129, v25, v26);
  (*(v27 + 16))(v127, v129, v26);
  v167 = sub_1000C4F50(0, 1, 1, &_swiftEmptyArrayStorage);
  v169 = v167[2];
  v168 = v167[3];
  v365 = v20;
  if (v169 >= v168 >> 1)
  {
    v167 = sub_1000C4F50(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v424;
  v171 = v424 + 8;
  (*(v424 + 8))(v129, v26);
  v167[2] = v169 + 1;
  v172 = v167 + ((*(v171 + 72) + 32) & ~*(v171 + 72)) + *(v171 + 64) * v169;
  v27 = v170;
  v423(v172, v127, v26);
  v425 = v167;
  v1 = v421;
  v20 = v365;
  v134 = v421[6];
  if (v134)
  {
LABEL_6:
    v136 = v1[7];
    v135 = v1[8];
    v426 = *(v1 + 2);
    v427 = v134;
    v428 = v136;
    v429 = v135;
    v137 = sub_10008AF5C();
    sub_1000C4C2C(v137);
  }

LABEL_7:
  v138 = v1[9];
  v139 = v1[10];
  v140 = *(v1 + 88);

  sub_10008C7D4(v140, v23);

  v423 = *(v27 + 48);
  if (v423(v23, 1, v26) == 1)
  {
    sub_1000068B0(v23, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v141 = *(v27 + 32);
    v142 = v384;
    v141(v384, v23, v26);
    (*(v27 + 16))(v385, v142, v26);
    v143 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_1000C4F50(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_1000C4F50(v144 > 1, v145 + 1, 1, v143);
    }

    (*(v27 + 8))(v384, v26);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v145], v385, v26);
    v425 = v143;
    v1 = v421;
  }

  v146 = v1[12];
  v147 = v1[13];
  v148 = *(v1 + 112);

  sub_10008C9C8(v148, v20);

  if (v423(v20, 1, v26) == 1)
  {
    sub_1000068B0(v20, &qword_10015E0F8, &qword_100115078);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v152 = v388;
    v422(v388, 1, 1, v26);
    goto LABEL_29;
  }

  v159 = *(v27 + 32);
  v160 = v386;
  v159(v386, v20, v26);
  (*(v27 + 16))(v387, v160, v26);
  v161 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_1000C4F50(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_1000C4F50(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v27 + 8))(v386, v26);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v163], v387, v26);
  v425 = v161;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v150 = v1[16];
  v149 = v1[17];
  v151 = v1[15];

  v152 = v388;
  URLQueryItem.init(name:value:)();
  v422(v152, 0, 1, v26);

  if (v423(v152, 1, v26) != 1)
  {
    v153 = *(v27 + 32);
    v154 = v368;
    v153(v368, v152, v26);
    (*(v27 + 16))(v369, v154, v26);
    v155 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_1000C4F50(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    if (v157 >= v156 >> 1)
    {
      v155 = sub_1000C4F50(v156 > 1, v157 + 1, 1, v155);
    }

    (*(v27 + 8))(v368, v26);
    *(v155 + 2) = v157 + 1;
    v153(&v155[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v157], v369, v26);
    v425 = v155;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_1000068B0(v152, &qword_10015E0F8, &qword_100115078);
  if (!v1[22])
  {
LABEL_22:
    v158 = v389;
    v422(v389, 1, 1, v26);
LABEL_31:
    sub_1000068B0(v158, &qword_10015E0F8, &qword_100115078);
    goto LABEL_41;
  }

LABEL_30:
  v165 = v1[20];
  v164 = v1[21];
  v166 = v1[19];

  v158 = v389;
  URLQueryItem.init(name:value:)();
  v422(v158, 0, 1, v26);

  if (v423(v158, 1, v26) == 1)
  {
    goto LABEL_31;
  }

  v173 = *(v27 + 32);
  v174 = v370;
  v173(v370, v158, v26);
  (*(v27 + 16))(v371, v174, v26);
  v175 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_1000C4F50(0, *(v175 + 2) + 1, 1, v175);
  }

  v177 = *(v175 + 2);
  v176 = *(v175 + 3);
  if (v177 >= v176 >> 1)
  {
    v175 = sub_1000C4F50(v176 > 1, v177 + 1, 1, v175);
  }

  (*(v27 + 8))(v370, v26);
  *(v175 + 2) = v177 + 1;
  v173(&v175[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v177], v371, v26);
  v425 = v175;
LABEL_41:
  v179 = v1[23];
  v178 = v1[24];
  v180 = v1[25];

  sub_10008D2F8(v181);
  if (v182)
  {
    v183 = v372;
    URLQueryItem.init(name:value:)();

    v184 = *(v27 + 32);
    v185 = v401;
    v184(v401, v183, v26);
    (*(v27 + 16))(v402, v185, v26);
    v186 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_1000C4F50(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_1000C4F50(v187 > 1, v188 + 1, 1, v186);
    }

    (*(v27 + 8))(v401, v26);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v188], v402, v26);
    v425 = v186;
  }

  else
  {
  }

  v189 = type metadata accessor for TapToRadarDraft();
  v190 = v1 + v189[11];
  v191 = v392;
  sub_10008CB20(v392);
  if (v423(v191, 1, v26) == 1)
  {
    sub_1000068B0(v191, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v192 = *(v27 + 32);
    v193 = v390;
    v192(v390, v191, v26);
    (*(v27 + 16))(v391, v193, v26);
    v194 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_1000C4F50(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_1000C4F50(v195 > 1, v196 + 1, 1, v194);
    }

    (*(v27 + 8))(v390, v26);
    *(v194 + 2) = v196 + 1;
    v192(&v194[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v196], v391, v26);
    v425 = v194;
    v1 = v421;
  }

  v197 = (v1 + v189[12]);
  v199 = *v197;
  v198 = v197[1];
  v200 = v197[2];

  sub_10008D0E4(v201);
  if (v202)
  {
    v203 = v373;
    URLQueryItem.init(name:value:)();

    v204 = *(v27 + 32);
    v205 = v403;
    v204(v403, v203, v26);
    (*(v27 + 16))(v404, v205, v26);
    v206 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_1000C4F50(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_1000C4F50(v207 > 1, v208 + 1, 1, v206);
    }

    (*(v27 + 8))(v403, v26);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v208], v404, v26);
    v425 = v206;
    v1 = v421;
  }

  else
  {
  }

  v209 = (v1 + v189[13]);
  v211 = *v209;
  v210 = v209[1];
  v212 = v209[2];

  sub_10008D0E4(v213);
  if (v214)
  {
    v215 = v374;
    URLQueryItem.init(name:value:)();

    v216 = *(v27 + 32);
    v217 = v405;
    v216(v405, v215, v26);
    (*(v27 + 16))(v406, v217, v26);
    v218 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_1000C4F50(0, *(v218 + 2) + 1, 1, v218);
    }

    v220 = *(v218 + 2);
    v219 = *(v218 + 3);
    if (v220 >= v219 >> 1)
    {
      v218 = sub_1000C4F50(v219 > 1, v220 + 1, 1, v218);
    }

    (*(v27 + 8))(v405, v26);
    *(v218 + 2) = v220 + 1;
    v216(&v218[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v220], v406, v26);
    v425 = v218;
    v1 = v421;
  }

  else
  {
  }

  v221 = (v1 + v189[14]);
  v223 = *v221;
  v222 = v221[1];
  v224 = v221[2];

  sub_10008CFB4(v225);
  if (v226)
  {
    v227 = v375;
    URLQueryItem.init(name:value:)();

    v228 = *(v27 + 32);
    v229 = v407;
    v228(v407, v227, v26);
    (*(v27 + 16))(v420, v229, v26);
    v230 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_1000C4F50(0, *(v230 + 2) + 1, 1, v230);
    }

    v232 = *(v230 + 2);
    v231 = *(v230 + 3);
    if (v232 >= v231 >> 1)
    {
      v230 = sub_1000C4F50(v231 > 1, v232 + 1, 1, v230);
    }

    (*(v27 + 8))(v407, v26);
    *(v230 + 2) = v232 + 1;
    v228(&v230[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v232], v420, v26);
    v425 = v230;
    v1 = v421;
  }

  else
  {
  }

  v233 = (v1 + v189[15]);
  v234 = *v233;
  v235 = v233[1];
  *(v233 + 16);

  v236 = v395;
  URLQueryItem.init(name:value:)();

  v420 = (v27 + 56);
  v422(v236, 0, 1, v26);

  if (v423(v236, 1, v26) == 1)
  {
    sub_1000068B0(v236, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v237 = *(v27 + 32);
    v238 = v393;
    v237(v393, v236, v26);
    (*(v27 + 16))(v394, v238, v26);
    v239 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v239 = sub_1000C4F50(0, *(v239 + 2) + 1, 1, v239);
    }

    v241 = *(v239 + 2);
    v240 = *(v239 + 3);
    if (v241 >= v240 >> 1)
    {
      v239 = sub_1000C4F50(v240 > 1, v241 + 1, 1, v239);
    }

    v242 = v424 + 8;
    (*(v424 + 8))(v393, v26);
    *(v239 + 2) = v241 + 1;
    v237(&v239[((*(v242 + 72) + 32) & ~*(v242 + 72)) + *(v242 + 64) * v241], v394, v26);
    v425 = v239;
  }

  v243 = (v1 + v189[16]);
  v245 = *v243;
  v244 = v243[1];
  v246 = v243[2];

  sub_10008CFB4(v247);
  if (v248)
  {
    v249 = v376;
    URLQueryItem.init(name:value:)();

    v250 = v424;
    v251 = *(v424 + 32);
    v252 = v408;
    v251(v408, v249, v26);
    (*(v250 + 16))(v409, v252, v26);
    v253 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v253 = sub_1000C4F50(0, *(v253 + 2) + 1, 1, v253);
    }

    v255 = *(v253 + 2);
    v254 = *(v253 + 3);
    if (v255 >= v254 >> 1)
    {
      v253 = sub_1000C4F50(v254 > 1, v255 + 1, 1, v253);
    }

    v256 = v424 + 8;
    (*(v424 + 8))(v408, v26);
    *(v253 + 2) = v255 + 1;
    v251(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v409, v26);
    v425 = v253;
  }

  else
  {
  }

  v257 = (v1 + v189[17]);
  v259 = *v257;
  v258 = v257[1];
  v260 = v257[2];

  sub_10008CDDC(v261);
  if (v262)
  {
    v263 = v377;
    URLQueryItem.init(name:value:)();

    v264 = v424;
    v265 = *(v424 + 32);
    v266 = v410;
    v265(v410, v263, v26);
    (*(v264 + 16))(v411, v266, v26);
    v267 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_1000C4F50(0, *(v267 + 2) + 1, 1, v267);
    }

    v269 = *(v267 + 2);
    v268 = *(v267 + 3);
    if (v269 >= v268 >> 1)
    {
      v267 = sub_1000C4F50(v268 > 1, v269 + 1, 1, v267);
    }

    v270 = v424 + 8;
    (*(v424 + 8))(v410, v26);
    *(v267 + 2) = v269 + 1;
    v265(&v267[((*(v270 + 72) + 32) & ~*(v270 + 72)) + *(v270 + 64) * v269], v411, v26);
    v425 = v267;
  }

  else
  {
  }

  v271 = (v1 + v189[18]);
  v273 = *v271;
  v272 = v271[1];
  v274 = v271[2];

  sub_10008CFB4(v275);
  if (v276)
  {
    v277 = v378;
    URLQueryItem.init(name:value:)();

    v278 = v424;
    v279 = *(v424 + 32);
    v280 = v412;
    v279(v412, v277, v26);
    (*(v278 + 16))(v413, v280, v26);
    v281 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v281 = sub_1000C4F50(0, *(v281 + 2) + 1, 1, v281);
    }

    v283 = *(v281 + 2);
    v282 = *(v281 + 3);
    if (v283 >= v282 >> 1)
    {
      v281 = sub_1000C4F50(v282 > 1, v283 + 1, 1, v281);
    }

    v284 = v424 + 8;
    (*(v424 + 8))(v412, v26);
    *(v281 + 2) = v283 + 1;
    v279(&v281[((*(v284 + 72) + 32) & ~*(v284 + 72)) + *(v284 + 64) * v283], v413, v26);
    v425 = v281;
  }

  else
  {
  }

  v285 = (v1 + v189[19]);
  v287 = *v285;
  v286 = v285[1];
  v288 = v285[2];

  sub_10008BBD4(v288);
  if (v289)
  {
    v290 = v379;
    URLQueryItem.init(name:value:)();

    v291 = v424;
    v292 = *(v424 + 32);
    v293 = v414;
    v292(v414, v290, v26);
    (*(v291 + 16))(v415, v293, v26);
    v294 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_1000C4F50(0, *(v294 + 2) + 1, 1, v294);
    }

    v296 = *(v294 + 2);
    v295 = *(v294 + 3);
    if (v296 >= v295 >> 1)
    {
      v294 = sub_1000C4F50(v295 > 1, v296 + 1, 1, v294);
    }

    v297 = v424 + 8;
    (*(v424 + 8))(v414, v26);
    *(v294 + 2) = v296 + 1;
    v292(&v294[((*(v297 + 72) + 32) & ~*(v297 + 72)) + *(v297 + 64) * v296], v415, v26);
    v425 = v294;
  }

  else
  {
  }

  v298 = (v1 + v189[20]);
  v299 = *v298;
  v300 = v298[1];
  *(v298 + 16);

  v301 = v398;
  URLQueryItem.init(name:value:)();

  v422(v301, 0, 1, v26);
  v302 = v301;

  if (v423(v301, 1, v26) == 1)
  {
    sub_1000068B0(v301, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v303 = v424;
    v304 = *(v424 + 32);
    v305 = v396;
    v304(v396, v302, v26);
    (*(v303 + 16))(v397, v305, v26);
    v306 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v306 = sub_1000C4F50(0, *(v306 + 2) + 1, 1, v306);
    }

    v308 = *(v306 + 2);
    v307 = *(v306 + 3);
    if (v308 >= v307 >> 1)
    {
      v306 = sub_1000C4F50(v307 > 1, v308 + 1, 1, v306);
    }

    v309 = v424 + 8;
    (*(v424 + 8))(v396, v26);
    *(v306 + 2) = v308 + 1;
    v304(&v306[((*(v309 + 72) + 32) & ~*(v309 + 72)) + *(v309 + 64) * v308], v397, v26);
    v425 = v306;
  }

  v310 = (v1 + v189[21]);
  v312 = *v310;
  v311 = v310[1];
  v313 = *(v310 + 16);

  sub_10008C344(v313);
  if (v314)
  {
    v315 = v380;
    URLQueryItem.init(name:value:)();

    v316 = v424;
    v317 = *(v424 + 32);
    v318 = v416;
    v317(v416, v315, v26);
    (*(v316 + 16))(v417, v318, v26);
    v319 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v319 = sub_1000C4F50(0, *(v319 + 2) + 1, 1, v319);
    }

    v321 = *(v319 + 2);
    v320 = *(v319 + 3);
    if (v321 >= v320 >> 1)
    {
      v319 = sub_1000C4F50(v320 > 1, v321 + 1, 1, v319);
    }

    v322 = v424 + 8;
    (*(v424 + 8))(v416, v26);
    *(v319 + 2) = v321 + 1;
    v317(&v319[((*(v322 + 72) + 32) & ~*(v322 + 72)) + *(v322 + 64) * v321], v417, v26);
    v425 = v319;
  }

  else
  {
  }

  v323 = (v1 + v189[22]);
  v325 = *v323;
  v324 = v323[1];
  v326 = v323[2];

  sub_10008CFB4(v327);
  if (v328)
  {
    v329 = v381;
    URLQueryItem.init(name:value:)();

    v330 = v424;
    v331 = *(v424 + 32);
    v332 = v418;
    v331(v418, v329, v26);
    (*(v330 + 16))(v419, v332, v26);
    v333 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v333 = sub_1000C4F50(0, *(v333 + 2) + 1, 1, v333);
    }

    v335 = *(v333 + 2);
    v334 = *(v333 + 3);
    if (v335 >= v334 >> 1)
    {
      v333 = sub_1000C4F50(v334 > 1, v335 + 1, 1, v333);
    }

    v336 = v424 + 8;
    (*(v424 + 8))(v418, v26);
    *(v333 + 2) = v335 + 1;
    v331(&v333[((*(v336 + 72) + 32) & ~*(v336 + 72)) + *(v336 + 64) * v335], v419, v26);
    v425 = v333;
  }

  else
  {
  }

  v337 = (v1 + v189[23]);
  if (!v337[3])
  {
    v342 = v399;
    v422(v399, 1, 1, v26);
    v344 = v424;
    goto LABEL_140;
  }

  v339 = v337[1];
  v338 = v337[2];
  v340 = *v337;
  v341 = v337[3];

  v342 = v399;
  URLQueryItem.init(name:value:)();
  v422(v342, 0, 1, v26);

  v343 = v423(v342, 1, v26);
  v344 = v424;
  if (v343 == 1)
  {
LABEL_140:
    sub_1000068B0(v342, &qword_10015E0F8, &qword_100115078);
    goto LABEL_141;
  }

  v345 = *(v424 + 32);
  v346 = v382;
  v345(v382, v342, v26);
  (*(v344 + 16))(v383, v346, v26);
  v347 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v347 = sub_1000C4F50(0, *(v347 + 2) + 1, 1, v347);
  }

  v349 = *(v347 + 2);
  v348 = *(v347 + 3);
  if (v349 >= v348 >> 1)
  {
    v347 = sub_1000C4F50(v348 > 1, v349 + 1, 1, v347);
  }

  v344 = v424;
  v350 = v424 + 8;
  (*(v424 + 8))(v382, v26);
  *(v347 + 2) = v349 + 1;
  v345(&v347[((*(v350 + 72) + 32) & ~*(v350 + 72)) + *(v350 + 64) * v349], v383, v26);
  v425 = v347;
LABEL_141:
  v351 = (v421 + v189[24]);
  if (!v351[3])
  {
    v356 = v400;
    v422(v400, 1, 1, v26);
    goto LABEL_149;
  }

  v353 = v351[1];
  v352 = v351[2];
  v354 = *v351;
  v355 = v351[3];

  v356 = v400;
  URLQueryItem.init(name:value:)();
  v422(v356, 0, 1, v26);

  if (v423(v356, 1, v26) == 1)
  {
LABEL_149:
    sub_1000068B0(v356, &qword_10015E0F8, &qword_100115078);
    return v425;
  }

  v357 = *(v344 + 32);
  v358 = v366;
  v357(v366, v356, v26);
  v359 = v367;
  (*(v344 + 16))(v367, v358, v26);
  v360 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v360 = sub_1000C4F50(0, *(v360 + 2) + 1, 1, v360);
  }

  v362 = *(v360 + 2);
  v361 = *(v360 + 3);
  if (v362 >= v361 >> 1)
  {
    v360 = sub_1000C4F50(v361 > 1, v362 + 1, 1, v360);
  }

  (*(v344 + 8))(v358, v26);
  *(v360 + 2) = v362 + 1;
  v357(&v360[((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v362], v359, v26);
  return v360;
}

uint64_t sub_10008A9B0()
{
  v1[18] = v0;
  v2 = type metadata accessor for URL();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10008AA70, 0, 0);
}

uint64_t sub_10008AA70()
{
  v1 = v0[18];
  sub_100087D44(v0[21]);
  v0[22] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[23] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008AB70, v3, v2);
}

uint64_t sub_10008AB70()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return _swift_task_switch(sub_10008ABF4, 0, 0);
}

uint64_t sub_10008ABF4@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[21];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v1[25] = v4;
  sub_1000BA710(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10008D5BC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[26] = isa;

  v1[2] = v1;
  v1[7] = v1 + 27;
  v1[3] = sub_10008AD84;
  v7 = swift_continuation_init();
  v1[17] = sub_10004DED0(&qword_10015E0E8, &unk_100115068);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10008AF00;
  v1[13] = &unk_10014FE08;
  v1[14] = v7;
  [v2 openURL:v5 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10008AD84()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10008AE64, 0, 0);
}

uint64_t sub_10008AE64()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008AF00(uint64_t a1, char a2)
{
  v3 = *sub_100018544((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10008AF5C()
{
  sub_10004DED0(&qword_10015E100, &qword_100115080);
  v1 = *(type metadata accessor for URLQueryItem() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001103E0;
  v10 = *v0;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  v5 = v0[1];
  v6 = v0[2];
  URLQueryItem.init(name:value:)();
  v7 = v0[3];
  v8 = v0[4];
  URLQueryItem.init(name:value:)();
  return v4;
}

Swift::Int sub_10008B0D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008B158()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  Hasher._combine(_:)(*v0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10008B1C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008B244(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10008B2FC()
{
  result = qword_10015E0A0;
  if (!qword_10015E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0A0);
  }

  return result;
}

unint64_t sub_10008B350(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10008B4B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10008B350(*a1);
  v5 = v4;
  if (v3 == sub_10008B350(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10008B53C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B350(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008B5A0()
{
  sub_10008B350(*v0);
  String.hash(into:)();
}

Swift::Int sub_10008B5F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B350(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008B654@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D49C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10008B684@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008B350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10008B6B4()
{
  result = qword_10015E0A8;
  if (!qword_10015E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0A8);
  }

  return result;
}

uint64_t sub_10008B71C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10008B820@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D534(*a1);
  *a2 = result;
  return result;
}

void sub_10008B850(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10008B920()
{
  result = qword_10015E0B0;
  if (!qword_10015E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0B0);
  }

  return result;
}

uint64_t sub_10008B98C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10008BA88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D450(*a1);
  *a2 = result;
  return result;
}

void sub_10008BAB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_10008BB80()
{
  result = qword_10015E0B8;
  if (!qword_10015E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0B8);
  }

  return result;
}

uint64_t sub_10008BBD4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_1000C4E44(0, 1, 1, &_swiftEmptyArrayStorage);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_1000C4E44((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_1000C4E44((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_1000C4E44((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_37;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_1000C4E44((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_42;
        }

LABEL_37:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1000C4E44((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_47;
        }

LABEL_42:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_1000C4E44((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
LABEL_25:
          if ((v1 & 0x100) == 0)
          {
LABEL_57:
            sub_10004DED0(&unk_10015FC00, &qword_100111C00);
            sub_1000268F8();
            v1 = BidirectionalCollection<>.joined(separator:)();

            return v1;
          }

LABEL_52:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
          }

          v28 = *(v2 + 2);
          v27 = *(v2 + 3);
          if (v28 >= v27 >> 1)
          {
            v2 = sub_1000C4E44((v27 > 1), v28 + 1, 1, v2);
          }

          *(v2 + 2) = v28 + 1;
          v29 = &v2[16 * v28];
          *(v29 + 4) = 0x656369766544654DLL;
          *(v29 + 5) = 0xE800000000000000;
          goto LABEL_57;
        }

LABEL_47:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v25 = *(v2 + 2);
        v24 = *(v2 + 3);
        if (v25 >= v24 >> 1)
        {
          v2 = sub_1000C4E44((v24 > 1), v25 + 1, 1, v2);
        }

        *(v2 + 2) = v25 + 1;
        v26 = &v2[16 * v25];
        *(v26 + 4) = 0xD000000000000016;
        *(v26 + 5) = 0x80000001001231C0;
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1000C4E44((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

Swift::Int sub_10008C11C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008C164()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10008C1A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10008D584(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10008C1E8()
{
  result = qword_10015E0C0;
  if (!qword_10015E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0C0);
  }

  return result;
}

unint64_t sub_10008C240()
{
  result = qword_10015E0C8;
  if (!qword_10015E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0C8);
  }

  return result;
}

unint64_t sub_10008C298()
{
  result = qword_10015E0D0;
  if (!qword_10015E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0D0);
  }

  return result;
}

unint64_t sub_10008C2F0()
{
  result = qword_10015E0D8;
  if (!qword_10015E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0D8);
  }

  return result;
}

uint64_t sub_10008C344(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10008C514()
{
  *v0;
  String.hash(into:)();
}

unint64_t sub_10008C618@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D4E8(*a1);
  *a2 = result;
  return result;
}

void sub_10008C648(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000010011EAC0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000010011EAE0;
    }

    v5 = 0x800000010011EA80;
    if (v2 != 3)
    {
      v5 = 0x800000010011EAA0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_10008C71C()
{
  result = qword_10015E0E0;
  if (!qword_10015E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0E0);
  }

  return result;
}

unint64_t sub_10008C770()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_10008C7D4@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    URLQueryItem.init(name:value:)();

    v3 = 0;
  }

  v4 = type metadata accessor for URLQueryItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10008C9C8@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    URLQueryItem.init(name:value:)();

    v3 = 0;
  }

  v4 = type metadata accessor for URLQueryItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10008CB20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004DED0(&qword_10015DE70, &qword_100115220);
  sub_10008D668(v2 + *(v13 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000068B0(v7, &qword_10015D2E8, &unk_100113BE0);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(NSDateFormatter) init];
    v16 = String._bridgeToObjectiveC()();
    [v15 setDateFormat:v16];

    [v15 setDoesRelativeDateFormatting:0];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v15 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    URLQueryItem.init(name:value:)();

    v14 = 0;
  }

  v21 = type metadata accessor for URLQueryItem();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t sub_10008CDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000C4E44(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_1000C4E44((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

uint64_t sub_10008CFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000C4E44(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1000C4E44((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t sub_10008D0E4(uint64_t a1)
{
  v21 = type metadata accessor for URL();
  v2 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v19 = *(v7 + 56);
  v20 = v8;
  v10 = (v7 - 8);
  v11 = &_swiftEmptyArrayStorage;
  do
  {
    v12 = v21;
    v13 = v7;
    v20(v5, v9, v21);
    v14 = URL.path(percentEncoded:)(0);
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000C4E44(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      v11 = sub_1000C4E44((v15 > 1), v16 + 1, 1, v11);
    }

    *(v11 + 2) = v16 + 1;
    *&v11[16 * v16 + 32] = v14;
    v9 += v19;
    --v6;
    v7 = v13;
  }

  while (v6);
  v22 = v11;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

uint64_t sub_10008D2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v4 = *v2++;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000C4E44(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1000C4E44((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v11 = BidirectionalCollection<>.joined(separator:)();

  return v11;
}

unint64_t sub_10008D450(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CC10, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008D49C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CCD8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008D4E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CDE8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008D534(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CEB0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008D584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10008D5BC()
{
  result = qword_10015AE78;
  if (!qword_10015AE78)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015AE78);
  }

  return result;
}

unint64_t sub_10008D614()
{
  result = qword_10015E0F0;
  if (!qword_10015E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0F0);
  }

  return result;
}

uint64_t sub_10008D668(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008D830()
{
  result = qword_10015E108;
  if (!qword_10015E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E108);
  }

  return result;
}

NSString sub_10008D894()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.ShowTapToRadarAlert = result;
  return result;
}

uint64_t *NSNotificationName.ShowTapToRadarAlert.unsafeMutableAddressor()
{
  if (qword_10015AB00 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.ShowTapToRadarAlert;
}

id static NSNotificationName.ShowTapToRadarAlert.getter()
{
  if (qword_10015AB00 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.ShowTapToRadarAlert;

  return v1;
}

uint64_t sub_10008D978()
{
  v0 = type metadata accessor for TapToRadarManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v4 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
  v5 = type metadata accessor for TapToRadarDraft();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_hasReportedQueryError) = 0;
  qword_100169780 = v3;
  return result;
}

void sub_10008DA10()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TapToRadarDraft();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
  swift_beginAccess();
  sub_10008E29C(v0 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000068B0(v8, &qword_10015E1D8, &unk_100115208);
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000659C(v17, qword_1001695F8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "[TapToRadarManager] sendDraft called but no draft has been set", v20, 2u);
    }
  }

  else
  {
    sub_10008E728(v8, v15);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_10008E78C(v15, v13);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_10008E728(v13, v23 + v22);
    sub_100094AF4(0, 0, v4, &unk_100115228, v23);

    sub_10008E8E0(v15);
  }
}

uint64_t sub_10008DD64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10008DDF4;

  return sub_10008A9B0();
}

uint64_t sub_10008DDF4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008DF28, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10008DF28()
{
  if (qword_10015AA80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_1001695F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[TapToRadarManager] error occurred while opening draft: %@", v7, 0xCu);
    sub_1000068B0(v8, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10008E0CC()
{
  sub_10007AB40(v0[2], v0[3], v0[4], v0[5]);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft, &qword_10015E1D8, &unk_100115208);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRadarManager()
{
  result = qword_10015E138;
  if (!qword_10015E138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008E1A0()
{
  sub_10008E244();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10008E244()
{
  if (!qword_10015E148)
  {
    type metadata accessor for TapToRadarDraft();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015E148);
    }
  }
}

uint64_t sub_10008E29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E30C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E697972657571;
  }

  else
  {
    v2 = 0x676E697865646E69;
  }

  if (*a2)
  {
    v3 = 0x676E697972657571;
  }

  else
  {
    v3 = 0x676E697865646E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10008E394()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E40C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10008E468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E4DC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CF60, *a1);

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

void sub_10008E53C(uint64_t *a1@<X8>)
{
  v2 = 0x676E697865646E69;
  if (*v1)
  {
    v2 = 0x676E697972657571;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

void sub_10008E574(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_hasReportedQueryError))
  {
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000659C(v3, qword_1001695F8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (a1)
      {
        swift_errorRetain();
        v7 = _swift_stdlib_bridgeErrorToNSError();
        v8 = v7;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *(v5 + 4) = v7;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, oslog, v4, "[TapToRadarManager] Skipping TTR alert presentation for querying error: '%@', due to too many alerts shown.", v5, 0xCu);
      sub_1000068B0(v6, &unk_10015F9C0, &unk_100115230);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_hasReportedQueryError) = 1;

    sub_10008ED00(a1, 1);
  }
}

uint64_t sub_10008E728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E7F0()
{
  v2 = *(type metadata accessor for TapToRadarDraft() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A924;

  return sub_10008DD64();
}

uint64_t sub_10008E8E0(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10008E93C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 sf_isInternalInstall];

  if (v15)
  {
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000659C(v16, qword_1001695F8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "[TapToRadarManager] Presenting TTR alert.", v19, 2u);
    }

    if (qword_10015AB08 != -1)
    {
      swift_once();
    }

    v20 = qword_100169780;
    v21 = *(qword_100169780 + 16);
    v22 = *(qword_100169780 + 24);
    v23 = *(qword_100169780 + 32);
    v24 = *(qword_100169780 + 40);
    *(qword_100169780 + 16) = a1;
    v20[3] = a2;
    v20[4] = a3 & 1;
    v20[5] = a4;
    sub_10007AB40(v21, v22, v23, v24);
    sub_10008E78C(a5, v13);
    v25 = type metadata accessor for TapToRadarDraft();
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    v26 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
    swift_beginAccess();
    sub_100009670(a1, a2, a3 & 1);

    sub_10008F3A4(v13, v20 + v26);
    swift_endAccess();
    v27 = [objc_opt_self() defaultCenter];
    if (qword_10015AB00 != -1)
    {
      swift_once();
    }

    [v27 postNotificationName:static NSNotificationName.ShowTapToRadarAlert object:0];
  }

  else
  {
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000659C(v28, qword_1001695F8);
    v32 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v32, v29, "[TapToRadarManager] Skipping TTR alert presentation, due to OS is not Internal OS.", v30, 2u);
    }

    v31 = v32;
  }
}

uint64_t sub_10008ED00(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    v43 = a1;
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    _print_unlocked<A, B>(_:_:)();
    v8 = v46;
    v42 = v45;
  }

  else
  {
    v8 = 0x8000000100123300;
    v42 = 0xD00000000000001BLL;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(95);
  v9._countAndFlagsBits = 0xD000000000000024;
  v9._object = 0x8000000100123320;
  String.append(_:)(v9);
  LOBYTE(v43) = a2 & 1;
  v10 = 0x676E697865646E69;
  if (a2)
  {
    v10 = 0x676E697972657571;
  }

  v41 = v10;
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 0xD000000000000039;
  v11._object = 0x8000000100123350;
  String.append(_:)(v11);
  v13 = v45;
  v12 = v46;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 0;
  strcpy(v7 + 72, "Classification");
  v7[87] = -18;
  v7[88] = 10;
  *(v7 + 12) = 0x6375646F72706552;
  *(v7 + 13) = 0xEF7974696C696269;
  v7[112] = 6;
  *(v7 + 15) = 0x656C746954;
  *(v7 + 16) = 0xE500000000000000;
  *(v7 + 17) = 0;
  *(v7 + 18) = 0;
  *(v7 + 19) = 0x7470697263736544;
  *(v7 + 20) = 0xEB000000006E6F69;
  *(v7 + 21) = 0;
  *(v7 + 22) = 0;
  *(v7 + 23) = 0x7364726F7779654BLL;
  *(v7 + 24) = 0xE800000000000000;
  *(v7 + 25) = &_swiftEmptyArrayStorage;
  v14 = &v7[v4[11]];
  *v7 = 0x4449656C646E7542;
  *(v7 + 1) = 0xE800000000000000;
  v15 = *(sub_10004DED0(&qword_10015DE70, &qword_100115220) + 36);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  *v14 = 0x7349664F656D6954;
  *(v14 + 1) = 0xEB00000000657573;
  v17 = &v7[v4[12]];
  *v17 = 0x656D686361747441;
  *(v17 + 1) = 0xEB0000000073746ELL;
  *(v17 + 2) = &_swiftEmptyArrayStorage;
  v18 = &v7[v4[13]];
  *v18 = 0xD000000000000011;
  *(v18 + 1) = 0x8000000100123390;
  *(v18 + 2) = &_swiftEmptyArrayStorage;
  v19 = &v7[v4[14]];
  *v19 = 0xD000000000000014;
  *(v19 + 1) = 0x80000001001233B0;
  *(v19 + 2) = &_swiftEmptyArrayStorage;
  v20 = &v7[v4[15]];
  strcpy(v20, "DeleteOnAttach");
  v20[15] = -18;
  v20[16] = 0;
  v21 = &v7[v4[16]];
  *v21 = 0x4449656369766544;
  *(v21 + 1) = 0xE900000000000073;
  *(v21 + 2) = &_swiftEmptyArrayStorage;
  v22 = &v7[v4[17]];
  strcpy(v22, "DeviceClasses");
  *(v22 + 7) = -4864;
  *(v22 + 2) = &_swiftEmptyArrayStorage;
  v23 = &v7[v4[18]];
  strcpy(v23, "DeviceModels");
  v23[13] = 0;
  *(v23 + 7) = -5120;
  *(v23 + 2) = &_swiftEmptyArrayStorage;
  v24 = &v7[v4[19]];
  *v24 = 0xD000000000000016;
  *(v24 + 1) = 0x80000001001233D0;
  *(v24 + 2) = 0;
  v25 = &v7[v4[20]];
  *v25 = 0xD00000000000001ALL;
  *(v25 + 1) = 0x80000001001233F0;
  v25[16] = 0;
  v26 = &v7[v4[21]];
  *v26 = 0x676169446F747541;
  *(v26 + 1) = 0xEF73636974736F6ELL;
  v26[16] = 0;
  v27 = &v7[v4[22]];
  *v27 = 0xD00000000000001BLL;
  *(v27 + 1) = 0x8000000100123410;
  *(v27 + 2) = &_swiftEmptyArrayStorage;
  v28 = &v7[v4[23]];
  *v28 = 0xD000000000000018;
  *(v28 + 1) = 0x8000000100123430;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = &v7[v4[24]];
  *v29 = 0xD000000000000012;
  *(v29 + 1) = 0x8000000100123450;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v25[16] = 1;
  *(v7 + 2) = xmmword_100115190;
  *(v7 + 6) = 0x8000000100123470;
  *(v7 + 56) = xmmword_1001151A0;
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v45 = 0x20686372616553;
  v46 = 0xE700000000000000;
  v43 = v41;
  v44 = 0xE800000000000000;
  sub_10002EAE0();
  v30._countAndFlagsBits = StringProtocol.capitalized.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x203A726F72724520;
  v31._object = 0xE800000000000000;
  String.append(_:)(v31);
  v32 = v42;
  v33._countAndFlagsBits = v42;
  v33._object = v8;
  String.append(_:)(v33);

  v34 = v46;
  *(v7 + 17) = v45;
  *(v7 + 18) = v34;
  v45 = v13;
  v46 = v12;

  v35._countAndFlagsBits = 0x6C69617465440A0ALL;
  v35._object = 0xEB000000000A3A73;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v32;
  v36._object = v8;
  String.append(_:)(v36);

  v37 = v46;
  *(v7 + 21) = v45;
  *(v7 + 22) = v37;
  v7[88] = 5;
  v7[112] = 4;
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v45 = v13;
  v46 = v12;
  v38._countAndFlagsBits = 0xD000000000000015;
  v38._object = 0x8000000100123490;
  String.append(_:)(v38);
  sub_10008E93C(v45, v46, 0, &_swiftEmptyArrayStorage, v7);

  return sub_10008E8E0(v7);
}

uint64_t sub_10008F3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008F428()
{
  result = qword_10015E1E0;
  if (!qword_10015E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E1E0);
  }

  return result;
}

void sub_10008F488()
{
  sub_100018C28();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10008F50C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC11SettingsAppP33_F16170C8CD22B033163CFC9AD59D599336SettingsAppDebugMenuGestureProxyView_perform);
    v2 = *(result + OBJC_IVAR____TtC11SettingsAppP33_F16170C8CD22B033163CFC9AD59D599336SettingsAppDebugMenuGestureProxyView_perform + 8);
    v3 = result;

    v1();
  }

  return result;
}

id sub_10008F5BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsAppDebugMenuGestureProxyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10008F610(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v244 = a1;
  v250 = a2;
  v3 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v236 = &v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v240 = *(v241 - 8);
  v6 = *(v240 + 64);
  v7 = __chkstk_darwin(v241);
  v238 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v239 = &v210 - v9;
  v10 = type metadata accessor for PreferencesControllerRecipe();
  v11 = *(v10 - 8);
  v246 = v10;
  v247 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v245 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NSBundle.PluginType();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v237 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NSBundle.PluginLocation();
  v18 = *(v17 - 8);
  v242 = v17;
  v243 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v225 = &v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v224 = &v210 - v23;
  v24 = __chkstk_darwin(v22);
  v223 = &v210 - v25;
  v26 = __chkstk_darwin(v24);
  v222 = &v210 - v27;
  v28 = __chkstk_darwin(v26);
  v221 = &v210 - v29;
  v30 = __chkstk_darwin(v28);
  v220 = &v210 - v31;
  v32 = __chkstk_darwin(v30);
  v219 = &v210 - v33;
  v34 = __chkstk_darwin(v32);
  v218 = &v210 - v35;
  v36 = __chkstk_darwin(v34);
  v217 = &v210 - v37;
  v38 = __chkstk_darwin(v36);
  v216 = &v210 - v39;
  v40 = __chkstk_darwin(v38);
  v215 = &v210 - v41;
  v42 = __chkstk_darwin(v40);
  v214 = &v210 - v43;
  v44 = __chkstk_darwin(v42);
  v213 = &v210 - v45;
  v46 = __chkstk_darwin(v44);
  v212 = &v210 - v47;
  v48 = __chkstk_darwin(v46);
  v226 = &v210 - v49;
  v50 = __chkstk_darwin(v48);
  v227 = &v210 - v51;
  v52 = __chkstk_darwin(v50);
  v228 = &v210 - v53;
  v54 = __chkstk_darwin(v52);
  v229 = &v210 - v55;
  v56 = __chkstk_darwin(v54);
  v230 = &v210 - v57;
  v58 = __chkstk_darwin(v56);
  v231 = &v210 - v59;
  v60 = __chkstk_darwin(v58);
  v232 = &v210 - v61;
  v62 = __chkstk_darwin(v60);
  v234 = &v210 - v63;
  v64 = __chkstk_darwin(v62);
  v233 = &v210 - v65;
  v66 = __chkstk_darwin(v64);
  v235 = &v210 - v67;
  v68 = __chkstk_darwin(v66);
  v211 = &v210 - v69;
  v70 = __chkstk_darwin(v68);
  v72 = &v210 - v71;
  v73 = __chkstk_darwin(v70);
  v75 = &v210 - v74;
  v76 = __chkstk_darwin(v73);
  v78 = &v210 - v77;
  v79 = __chkstk_darwin(v76);
  v81 = &v210 - v80;
  v82 = __chkstk_darwin(v79);
  v84 = &v210 - v83;
  v85 = __chkstk_darwin(v82);
  v87 = &v210 - v86;
  v88 = __chkstk_darwin(v85);
  v90 = &v210 - v89;
  __chkstk_darwin(v88);
  v92 = &v210 - v91;
  v252 = swift_allocObject();
  *(v252 + 16) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  *(v93 + 24) = 0;
  v249 = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  *(v94 + 24) = 0;
  v251 = v94;
  v95 = *v2;
  v96 = *(v2 + 8);
  v248 = v2;
  v97 = *(v2 + 32);
  if (v97 > 3)
  {
    switch(v97)
    {
      case 4u:
        v113 = sub_1000919B8(v252);
        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        [v113 setProperty:isa forKey:PSDMCHandleReauthKey];

LABEL_19:
        v115 = [objc_opt_self() defaultStore];
        if (v115)
        {
          v116 = v115;
          v117 = String._bridgeToObjectiveC()();
          v118 = [v116 accountWithIdentifier:v117];

          if (v118)
          {
            v119 = [objc_opt_self() preferredViewControllerClassForAccount:v118 preferiCloudAccount:1];
            v120 = v249;
            if (v119)
            {
              swift_getObjCClassMetadata();
              v261 = &OBJC_PROTOCOL___PSController;
              if (swift_dynamicCastTypeToObjCProtocolConditional())
              {
                sub_100008294(0, &qword_10015E2D0, UIViewController_ptr);
                if (swift_dynamicCastMetatype())
                {
                  v121 = v252;
                  v122 = sub_1000919B8(v252);
                  [v122 setProperty:v118 forKey:ACUIAccountKey];

                  v123 = *(v121 + 16);
                  sub_10004DED0(&qword_10015E2D8, &qword_1001154E8);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1001103C0;
                  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(inited + 40) = v125;
                  *(inited + 48) = v118;
                  v126 = v123;
                  v127 = v118;
                  sub_1000BA5EC(inited);
                  swift_setDeallocating();
                  sub_1000068B0(inited + 32, &unk_10015E2E0, &qword_1001154F0);
                  sub_100008294(0, &qword_10015C450, ACAccount_ptr);
                  v128 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [v126 setUserInfo:v128];

                  v129 = v245;
                  PreferencesControllerRecipe.init(viewControllerClass:specifier:)();
                  v130 = sub_100091B58(v120);
                  (v130)(v129);

                  (*(v247 + 8))(v129, v246);

                  goto LABEL_17;
                }
              }
            }
          }

          goto LABEL_130;
        }

        __break(1u);
        goto LABEL_94;
      case 5u:
        v131 = v95;
        sub_100023CA8();
        v132 = v252;
        v133 = sub_1000919B8(v252);
        sub_1000C7AFC(v133, v131, v96);

        v134 = [objc_opt_self() controllerForSpecifier:*(v132 + 16)];
        v135 = v245;
        PreferencesControllerRecipe.init(viewController:specifier:)();
        v136 = sub_100091B58(v249);
        (v136)(v135);

        (*(v247 + 8))(v135, v246);

LABEL_43:

        goto LABEL_17;
      case 6u:
        v110 = *(v248 + 16);
        v109 = *(v248 + 24);
        if (!(v96 | v95 | v109 | v110))
        {
          v145 = sub_100092060(v251);
          static NSBundle.PluginType.preferences.getter();
          NSBundle.PluginLocation.init(path:pluginType:)();
          v146 = 0xD000000000000014;
          v147 = 0x8000000100123A70;
LABEL_30:
          (v145)(v146, v147, v92);
          (*(v243 + 8))(v92, v242);
          goto LABEL_42;
        }

        v111 = v109 | v96 | v110;
        if (v95 == 1 && !v111)
        {
          v112 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v112)(0x6553796C696D6146, 0xEE0073676E697474, v90);
          (*(v243 + 8))(v90, v242);
LABEL_42:

          goto LABEL_43;
        }

        if (v95 == 3 && !v111)
        {
          v148 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v148)(0x7474655369466957, 0xEC00000073676E69, v87);
          (*(v243 + 8))(v87, v242);
          goto LABEL_42;
        }

        if (v95 == 4 && !v111)
        {
          sub_1000919B8(v252);
          static NSBundle.PreferencesPluginLocation.default.getter();
          v149 = v245;
          PreferencesControllerRecipe.init(specifier:bundleName:location:viewControllerClassName:)();
          v150 = sub_100091B58(v249);
          (v150)(v149);

          (*(v247 + 8))(v149, v246);
LABEL_38:

          goto LABEL_43;
        }

        if (v95 == 5 && !v111)
        {
          v151 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v151)(0xD000000000000011, 0x800000010011F140, v84);
          (*(v243 + 8))(v84, v242);
          goto LABEL_42;
        }

        if (v95 == 6 && !v111)
        {
          v152 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v152)(0xD000000000000010, 0x800000010011F120, v81);
          (*(v243 + 8))(v81, v242);
          goto LABEL_42;
        }

        if (v95 == 7 && !v111)
        {
          v153 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v153)(0xD000000000000015, 0x8000000100123950, v78);
          (*(v243 + 8))(v78, v242);

          goto LABEL_17;
        }

        if (v95 == 8 && !v111)
        {
          v154 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v154)(0x65666572504E5056, 0xEE007365636E6572, v75);
          (*(v243 + 8))(v75, v242);
          goto LABEL_42;
        }

        if (v95 == 9 && !v111)
        {
          v155 = sub_100092060(v251);
          static NSBundle.PluginLocation.preferences.getter();
          (v155)(0xD000000000000011, 0x8000000100123930, v72);
          v156 = *(v243 + 8);
          v157 = v72;
LABEL_62:
          v156(v157, v242);

          goto LABEL_43;
        }

        if (v95 == 11 && !v111)
        {
          v145 = sub_100092060(v251);
          v92 = v235;
          static NSBundle.PluginLocation.preferences.getter();
          v146 = 0xD000000000000015;
          v147 = 0x80000001001238F0;
          goto LABEL_30;
        }

        if (v95 == 12 && !v111)
        {
          v145 = sub_100092060(v251);
          v92 = v233;
          static NSBundle.PluginLocation.preferences.getter();
          v146 = 0xD000000000000010;
          v147 = 0x80000001001238D0;
          goto LABEL_30;
        }

        if (v95 == 13 && !v111)
        {
          v158 = sub_100092060(v251);
          v159 = v234;
          static NSBundle.PluginLocation.preferences.getter();
          (v158)(0x7465537375636F46, 0xED000073676E6974, v159);
          v156 = *(v243 + 8);
          v164 = &v265;
LABEL_74:
          v157 = *(v164 - 32);
          goto LABEL_62;
        }

        if (v95 == 14 && !v111)
        {
          goto LABEL_68;
        }

        if (v95 == 15 && !v111)
        {
          v162 = sub_100092060(v251);
          v163 = v232;
          static NSBundle.PluginLocation.preferences.getter();
          (v162)(0x536C6172656E6547, 0xEF73676E69747465, v163);
          v156 = *(v243 + 8);
          v164 = &v264;
          goto LABEL_74;
        }

        if (v95 == 16 && !v111)
        {
          v165 = sub_100092060(v251);
          v166 = v231;
          static NSBundle.PluginLocation.preferences.getter();
          (v165)(0xD000000000000015, 0x8000000100123890, v166);
          v156 = *(v243 + 8);
          v164 = &v263;
          goto LABEL_74;
        }

        if (v95 == 17 && !v111)
        {
          v167 = sub_100092060(v251);
          v168 = v230;
          static NSBundle.PluginLocation.preferences.getter();
          (v167)(0xD000000000000014, 0x800000010011F0A0, v168);
          v156 = *(v243 + 8);
          v164 = &v262;
          goto LABEL_74;
        }

        if (v95 == 18 && !v111)
        {
          v169 = sub_100092060(v251);
          v170 = v229;
          static NSBundle.PluginLocation.preferences.getter();
          (v169)(0xD000000000000014, 0x8000000100123870, v170);
          v156 = *(v243 + 8);
          v164 = &v261;
          goto LABEL_74;
        }

        if (v95 == 19 && !v111)
        {
          v171 = sub_100092060(v251);
          v172 = v228;
          static NSBundle.PluginLocation.preferences.getter();
          (v171)(0xD000000000000012, 0x8000000100123850, v172);
LABEL_94:
          v156 = *(v243 + 8);
          v164 = &v260;
          goto LABEL_74;
        }

        if (v95 == 20 && !v111)
        {
          v173 = sub_100092060(v251);
          v174 = v227;
          static NSBundle.PluginLocation.preferences.getter();
          (v173)(0xD00000000000001FLL, 0x800000010011F100, v174);
          v156 = *(v243 + 8);
          v164 = &v259;
          goto LABEL_74;
        }

        if (v95 == 21 && !v111)
        {
          goto LABEL_68;
        }

        if (v95 == 22 && !v111)
        {
          v175 = sub_100092060(v251);
          v176 = v226;
          static NSBundle.PluginLocation.preferences.getter();
          (v175)(0xD000000000000011, 0x8000000100123810, v176);
          v156 = *(v243 + 8);
          v164 = &v258;
          goto LABEL_74;
        }

        if (v95 == 23 && !v111)
        {
          v177 = sub_100092060(v251);
          v178 = v212;
          static NSBundle.PluginLocation.preferences.getter();
          (v177)(0x53746E6569626D41, 0xEF73676E69747465, v178);
          v156 = *(v243 + 8);
          v164 = &v244;
          goto LABEL_74;
        }

        if (v95 == 24 && !v111)
        {
          v179 = sub_100092060(v251);
          v180 = v213;
          static NSBundle.PluginLocation.preferences.getter();
          (v179)(0xD000000000000011, 0x80000001001237F0, v180);
          v156 = *(v243 + 8);
          v164 = &v245;
          goto LABEL_74;
        }

        if (v95 == 25 && !v111)
        {
          v181 = sub_100092060(v251);
          v182 = v214;
          static NSBundle.PluginLocation.preferences.getter();
          (v181)(0xD000000000000010, 0x80000001001237D0, v182);
          v156 = *(v243 + 8);
          v164 = &v246;
          goto LABEL_74;
        }

        if (v95 == 26 && !v111)
        {
          v183 = sub_100092060(v251);
          v184 = v215;
          static NSBundle.PluginLocation.preferences.getter();
          (v183)(0x65536C69636E6550, 0xEE0073676E697474, v184);
          v156 = *(v243 + 8);
          v164 = &v247;
          goto LABEL_74;
        }

        if (v95 == 27 && !v111)
        {
          v185 = sub_100092060(v251);
          v186 = v216;
          static NSBundle.PluginLocation.preferences.getter();
          (v185)(0xD000000000000021, 0x80000001001237A0, v186);
          v156 = *(v243 + 8);
          v164 = &v248;
          goto LABEL_74;
        }

        if (v95 == 28 && !v111)
        {
          v187 = sub_100092060(v251);
          v188 = v217;
          static NSBundle.PluginLocation.preferences.getter();
          (v187)(0x6974746553534F53, 0xEB0000000073676ELL, v188);
          v156 = *(v243 + 8);
          v164 = &v249;
          goto LABEL_74;
        }

        if (v95 == 30 && !v111)
        {
          v189 = sub_100092060(v251);
          v190 = v218;
          static NSBundle.PluginLocation.preferences.getter();
          (v189)(0x5579726574746142, 0xEE00495565676173, v190);
          v156 = *(v243 + 8);
          v164 = &v250;
          goto LABEL_74;
        }

        if (v95 == 31 && !v111)
        {
          v191 = sub_100092060(v251);
          v192 = v219;
          static NSBundle.PluginLocation.preferences.getter();
          (v191)(0xD00000000000001ALL, 0x8000000100123780, v192);
LABEL_131:
          v156 = *(v243 + 8);
          v164 = &v251;
          goto LABEL_74;
        }

        if (v95 == 32 && !v111)
        {
          v193 = sub_100092060(v251);
          v194 = v220;
          static NSBundle.PluginLocation.preferences.getter();
          (v193)(0xD000000000000010, 0x8000000100123760, v194);
          v156 = *(v243 + 8);
          v164 = &v252;
          goto LABEL_74;
        }

        if (v95 == 33 && !v111)
        {
          goto LABEL_68;
        }

        if (v95 == 34 && !v111)
        {
          v195 = sub_100092060(v251);
          v196 = v211;
          static NSBundle.PluginLocation.preferences.getter();
          (v195)(0xD000000000000010, 0x8000000100123910, v196);
          v156 = *(v243 + 8);
          v164 = &v243;
          goto LABEL_74;
        }

        if (v95 == 35 && !v111)
        {
          v197 = sub_100092060(v251);
          v198 = v221;
          static NSBundle.PluginLocation.preferences.getter();
          (v197)(0x65536172656D6143, 0xEE0073676E697474, v198);
          v156 = *(v243 + 8);
          v164 = &v253;
          goto LABEL_74;
        }

        if (v95 == 36 && !v111)
        {
          v199 = sub_100092060(v251);
          v200 = v222;
          static NSBundle.PluginLocation.preferences.getter();
          (v199)(0xD000000000000012, 0x8000000100123710, v200);
          v156 = *(v243 + 8);
          v164 = &v254;
          goto LABEL_74;
        }

        if (v95 == 37 && !v111)
        {
          v201 = sub_100092060(v251);
          v202 = v223;
          static NSBundle.PluginLocation.preferences.getter();
          (v201)(0xD000000000000011, 0x80000001001236F0, v202);
          v156 = *(v243 + 8);
          v164 = &v255;
          goto LABEL_74;
        }

        if (v95 == 38 && !v111)
        {
          v203 = sub_100092060(v251);
          v204 = v224;
          static NSBundle.PluginLocation.preferences.getter();
          (v203)(0xD000000000000011, 0x80000001001236D0, v204);
          v156 = *(v243 + 8);
          v164 = &v256;
          goto LABEL_74;
        }

        if (v95 == 39 && !v111)
        {
          sub_1000919B8(v252);
          static NSBundle.PreferencesPluginLocation.appleInternal.getter();
          goto LABEL_69;
        }

        if (v95 == 40 && !v111)
        {
          v205 = v252;
          v206 = sub_1000919B8(v252);
          v207 = String._bridgeToObjectiveC()();
          [v206 setProperty:v207 forKey:PSDataSourceClassKey];

          *(v205 + 16);
          static NSBundle.PreferencesPluginLocation.appleInternal.getter();
          v160 = v245;
          goto LABEL_70;
        }

        if (v95 == 41 && !v111 || v95 == 42 && !v111 || v95 == 43 && !v111 || v95 == 44 && !v111)
        {
LABEL_68:
          sub_1000919B8(v252);
          static NSBundle.PreferencesPluginLocation.default.getter();
LABEL_69:
          v160 = v245;
LABEL_70:
          PreferencesControllerRecipe.init(specifier:bundleName:location:viewControllerClassName:)();
          v161 = sub_100091B58(v249);
          (v161)(v160);

          (*(v247 + 8))(v160, v246);
          goto LABEL_38;
        }

        if (v95 == 45 && !v111)
        {
          v208 = sub_100092060(v251);
          v209 = v225;
          static NSBundle.PluginLocation.settings.getter();
          (v208)(0x656C6C6174736E49, 0xED00007370704164, v209);
          v156 = *(v243 + 8);
          v164 = &v257;
          goto LABEL_74;
        }

        break;
    }

LABEL_15:
    type metadata accessor for SettingsAppDetailContent.ContentType(0);
    swift_storeEnumTagMultiPayload();

    goto LABEL_17;
  }

  if (v97 >= 2)
  {
    if (v97 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v98 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController;
  v99 = v244;
  v100 = *(v244 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
  if (!v100)
  {
LABEL_130:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_131;
  }

  v253 = &OBJC_PROTOCOL___PSController;
  v101 = swift_dynamicCastObjCProtocolConditional();
  v102 = v100;
  v103 = v250;
  v104 = v249;
  if (v101)
  {
    v105 = v102;
    v106 = v245;
    PreferencesControllerRecipe.init(viewController:)();
    v107 = sub_100091B58(v104);
    (v107)(v106);

    (*(v247 + 8))(v106, v246);
    v108 = *(v99 + v98);
    if (v108)
    {
      goto LABEL_27;
    }

LABEL_17:

    return;
  }

  v137 = v239;
  v138 = v102;
  SettingsAnyPlatformViewControllerRecipe.init(_:)();
  v139 = v240;
  v140 = v241;
  (*(v240 + 16))(v238, v137, v241);
  v141 = type metadata accessor for SettingsAnyPlatformViewControllerModel();
  v142 = *(v141 + 48);
  v143 = *(v141 + 52);
  swift_allocObject();
  v144 = SettingsAnyPlatformViewControllerModel.init(recipe:)();

  (*(v139 + 8))(v137, v140);
  *v103 = v144;
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  v108 = *(v99 + v98);
  if (!v108)
  {
    goto LABEL_38;
  }

LABEL_27:
  *(v99 + v98) = 0;
}

uint64_t sub_100091978()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000919B8(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = sub_100091A38();
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

uint64_t sub_100091A38()
{
  sub_10002A770();
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_allocWithZone(PSSpecifier) initWithName:v0 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  if (v1)
  {
    v2 = sub_100055B70();
    if (v2 == 74)
    {
      sub_100039380();
    }

    else
    {
      sub_1000F3A98(v2);
    }

    v3 = String._bridgeToObjectiveC()();

    [v1 setIdentifier:v3];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_100091B58(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    swift_beginAccess();
    v3 = sub_100091BE4;
    *(a1 + 16) = sub_100091BE4;
    *(a1 + 24) = 0;
  }

  sub_1000499DC(v2);
  return v3;
}

uint64_t sub_100091BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PreferencesControllerRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&unk_10015E2F0, &qword_1001154F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  v13 = type metadata accessor for SettingsPaneRecipe();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  PreferencesControllerRecipe.settingsPaneRecipe.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000068B0(v12, &unk_10015E2F0, &qword_1001154F8);
    (*(v5 + 16))(v8, a1, v4);
    v18 = type metadata accessor for PreferencesControllerRepresentableModel();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    *a2 = PreferencesControllerRepresentableModel.init(recipe:)();
  }

  else
  {
    v26[0] = v4;
    v26[1] = a1;
    v27 = a2;
    v21 = *(v14 + 32);
    v21(v17, v12, v13);
    type metadata accessor for SettingsExperienceCoordinationManager();
    static SettingsExperienceCoordinationManager.shared.getter();
    v22 = dispatch thunk of SettingsExperienceCoordinationManager.coordinator(for:)();

    dispatch thunk of SettingsExperienceContentCoordinator.loadPluginIfNeeded()();
    v24 = *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48);
    v25 = v27;
    v21(v27, v17, v13);
    *(v25 + v24) = v22;
  }

  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*sub_100092060(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    swift_beginAccess();
    v3 = sub_1000920EC;
    *(a1 + 16) = sub_1000920EC;
    *(a1 + 24) = 0;
  }

  sub_1000499DC(v2);
  return v3;
}

uint64_t sub_1000920EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v43 = a3;
  v38[0] = a4;
  v42 = type metadata accessor for NSBundle.PluginLocation();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v42);
  v41 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v39);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsPaneRecipe();
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = v38 - v21;
  v22 = a1 == 0x536C6172656E6547 && a2 == v20;
  v23 = v22;
  v40 = v23;
  v38[1] = a2;
  if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v11 + 8))(v14, v39);
    (*(v8 + 16))(v41, v43, v42);
    v5 = v4;
  }

  else
  {
    (*(v8 + 16))(v41, v43, v42);
  }

  SettingsPaneRecipe.init(bundleName:pluginLocation:)();
  v24 = v45;
  v25 = *(v45 + 32);
  v26 = v44;
  v25(v44, v19, v15);
  if (v40 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    if (qword_10015AA50 != -1)
    {
      swift_once();
    }

    v27 = qword_1001695C8;
    v28 = type metadata accessor for SettingsExperienceContentCoordinator();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = v27;
    v32 = SettingsExperienceContentCoordinator.init(bundle:)();
  }

  else
  {
    type metadata accessor for SettingsExperienceCoordinationManager();
    static SettingsExperienceCoordinationManager.shared.getter();
    v36 = dispatch thunk of SettingsExperienceCoordinationManager.coordinator(for:)();
    if (v5)
    {
      goto LABEL_19;
    }

    v37 = v36;

    v32 = v37;
  }

  dispatch thunk of SettingsExperienceContentCoordinator.loadPluginIfNeeded()();
  if (!v5)
  {
    v33 = *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48);
    v34 = v38[0];
    v25(v38[0], v26, v15);
    *(v34 + v33) = v32;
    type metadata accessor for SettingsAppDetailContent.ContentType(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_19:
  (*(v24 + 8))(v26, v15);
}

Swift::Int sub_100092560(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (*(v1 + 32) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    Hasher._combine(_:)(1u);
    sub_10002FE78();
  }

  v3 = v1 + *(a1 + 20);
  sub_100092760();
  return Hasher._finalize()();
}

void sub_1000925F8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    Hasher._combine(_:)(1u);
    sub_10002FE78();
  }

  v4 = v2 + *(a2 + 20);
  sub_100092760();
}

Swift::Int sub_100092680(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (*(v2 + 32) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *v2;
    v7 = v2[1];
    Hasher._combine(_:)(1u);
    sub_10002FE78();
  }

  v4 = v2 + *(a2 + 20);
  sub_100092760();
  return Hasher._finalize()();
}

void sub_100092760()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPaneRecipe();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100032FE4(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *(v10 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));
      (*(v3 + 32))(v6, v10, v2);
      sub_10000B90C(&qword_10015E4D0, &type metadata accessor for SettingsPaneRecipe);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(v14);

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    v15[1] = *v10;
    if (EnumCaseMultiPayload)
    {
      type metadata accessor for PreferencesControllerRepresentableModel();
      v12 = &unk_10015E4D8;
      v13 = &type metadata accessor for PreferencesControllerRepresentableModel;
    }

    else
    {
      type metadata accessor for SettingsAnyPlatformViewControllerModel();
      v12 = &unk_10015E4E0;
      v13 = &type metadata accessor for SettingsAnyPlatformViewControllerModel;
    }

    sub_10000B90C(v12, v13);
    dispatch thunk of Hashable.hash(into:)();
  }
}

Swift::Int sub_100092A00()
{
  Hasher.init(_seed:)();
  sub_100092760();
  return Hasher._finalize()();
}

Swift::Int sub_100092A44()
{
  Hasher.init(_seed:)();
  sub_100092760();
  return Hasher._finalize()();
}

uint64_t sub_100092A80(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015E4C8, &qword_1001155F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100092B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a1;
  v114 = a3;
  v4 = type metadata accessor for PrimarySettingsList();
  v5 = v4 - 8;
  v108 = *(v4 - 8);
  v6 = *(v108 + 64);
  __chkstk_darwin(v4);
  v109 = v7;
  v110 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for ScrollViewProxy();
  v107 = *(v119 - 8);
  v8 = *(v107 + 64);
  __chkstk_darwin(v119);
  v102 = v9;
  v106 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for PPTTestCase.Name();
  v101 = *(v104 - 8);
  v10 = *(v101 + 64);
  __chkstk_darwin(v104);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for SidebarListStyle();
  v95 = *(v96 - 8);
  v12 = *(v95 + 64);
  __chkstk_darwin(v96);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for EnvironmentValues();
  v112 = *(v113 - 8);
  v14 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v86 - v19;
  v94 = sub_10004DED0(&qword_10015E610, &qword_1001156F0);
  v21 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v23 = &v86 - v22;
  v99 = sub_10004DED0(&qword_10015E618, &qword_1001156F8);
  v98 = *(v99 - 8);
  v24 = *(v98 + 64);
  __chkstk_darwin(v99);
  v115 = &v86 - v25;
  v116 = sub_10004DED0(&qword_10015E620, &qword_100115700);
  v26 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v117 = &v86 - v27;
  v105 = sub_10004DED0(&qword_10015E628, &qword_100115708);
  v28 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v118 = &v86 - v29;
  v30 = a2 + *(v5 + 32);
  Bindable.wrappedValue.getter();
  v31 = sub_10001A1A0();

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v17 + 8))(v20, v16);
  v130 = v31;
  v125 = v131;
  v126 = v132;
  v127 = v133;
  v128 = v134;
  v129 = v135;
  v122 = &v130;
  v123 = sub_100093984;
  v124 = 0;
  sub_10004DED0(&qword_10015E630, &qword_100115738);
  sub_100032144();
  sub_100032198();
  List.init(selection:content:)();

  v32 = static Animation.default.getter();
  v97 = v16;
  v91 = v30;
  Bindable.wrappedValue.getter();
  v33 = sub_10001A1A0();
  v35 = v34;
  v37 = v36;

  v38 = &v23[*(sub_10004DED0(&qword_10015E648, &qword_100115740) + 36)];
  *v38 = v32;
  v38[1] = v33;
  v38[2] = v35;
  v38[3] = v37;
  v39 = static Animation.default.getter();
  v40 = *(a2 + 16);
  v121 = a2;
  LODWORD(v30) = *(a2 + 24);

  v41 = v40;
  v92 = v30;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v43 = v111;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v112 + 8))(v43, v113);
    v41 = v131;
  }

  v100 = v40;
  swift_getKeyPath();
  v131 = v41;
  v90 = sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v41 + 16);

  v45 = v94;
  v46 = &v23[*(v94 + 36)];
  *v46 = v39;
  v46[8] = v44;
  v47 = v93;
  SidebarListStyle.init()();
  v48 = sub_100032460();
  v49 = v96;
  v87 = v48;
  View.listStyle<A>(_:)();
  (*(v95 + 8))(v47, v49);
  sub_1000068B0(v23, &qword_10015E610, &qword_1001156F0);
  if (qword_10015AB70 != -1)
  {
    swift_once();
  }

  v50 = v104;
  v51 = sub_10000659C(v104, qword_100169820);
  v52 = v101;
  v53 = v103;
  (*(v101 + 16))(v103, v51, v50);
  v54 = v107;
  v55 = *(v107 + 16);
  v88 = v107 + 16;
  v89 = v55;
  v56 = v106;
  v57 = v119;
  v55(v106, v120, v119);
  v58 = *(v54 + 80);
  v59 = (v58 + 16) & ~v58;
  v93 = (v59 + v102);
  v95 = v59;
  v102 = v58 | 7;
  v60 = swift_allocObject();
  v107 = *(v54 + 32);
  v61 = v60 + v59;
  v62 = v56;
  (v107)(v61, v56, v57);
  v131 = v45;
  v132 = v49;
  *&v133 = v87;
  *(&v133 + 1) = &protocol witness table for SidebarListStyle;
  swift_getOpaqueTypeConformance2();
  v63 = v117;
  v64 = v99;
  v65 = v115;
  View.onTest(_:handler:)();

  (*(v52 + 8))(v53, v50);
  (*(v98 + 8))(v65, v64);
  v66 = &v63[*(v116 + 36)];
  *v66 = sub_100093B24;
  v66[1] = 0;
  v66[2] = 0;
  v66[3] = 0;
  Bindable.wrappedValue.getter();
  v67 = v131;
  swift_getKeyPath();
  v131 = v67;
  sub_100020BE0(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = *(v67 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 8);
  v69 = *(v67 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 16);
  v70 = *(v67 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 24);
  v71 = *(v67 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 32);
  v72 = *(v67 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight);
  v115 = v72;
  sub_100031DF8(v72, v68, v69, v70, v71);

  v131 = v72;
  v132 = v68;
  *&v133 = v69;
  *(&v133 + 1) = v70;
  LOBYTE(v134) = v71;
  v73 = v62;
  v74 = v119;
  v89(v62, v120, v119);
  v75 = v110;
  sub_100019CAC(v121, v110, type metadata accessor for PrimarySettingsList);
  v76 = &v93[*(v108 + 80)] & ~*(v108 + 80);
  v77 = swift_allocObject();
  (v107)(v77 + v95, v73, v74);
  sub_100019D14(v75, v77 + v76);
  sub_10004DED0(&qword_10015E690, &qword_100115788);
  sub_1000946AC();
  sub_1000947D0();
  v78 = v118;
  v79 = v117;
  View.onChange<A>(of:initial:_:)();

  sub_100032660(v115, v68, v69, v70, v71);
  sub_1000068B0(v79, &qword_10015E620, &qword_100115700);
  *&v78[*(v105 + 36)] = sub_100032674();
  v80 = v100;

  if ((v92 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v81 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v82 = v111;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v112 + 8))(v82, v113);
    v80 = v131;
  }

  swift_getKeyPath();
  v131 = v80;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = *(v80 + 16);

  sub_100094854();
  v84 = v118;
  View.accessibilityHidden(_:)();
  return sub_1000068B0(v84, &qword_10015E628, &qword_100115708);
}

uint64_t sub_100093984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimarySettingsListSection();
  sub_100019CAC(a1, a2 + *(v4 + 20), type metadata accessor for PrimarySettingsListSectionModel);
  type metadata accessor for SettingsAppModel();
  sub_100020BE0(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  result = Environment.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100093A30()
{
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_100169700);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Running scroll main list test", v3, 2u);
  }

  return PPTTestCase.performScrollTest(_:)();
}

uint64_t sub_100093B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AnimationCompletionCriteria();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PrimarySettingsList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = *(a2 + 32);
  if (v16 != 255)
  {
    v17 = *(a2 + 16);
    v21[0] = *a2;
    v21[1] = v17;
    v22 = v16;
    __chkstk_darwin(result);
    *&v20[-16] = a3;
    *&v20[-8] = v21;
    sub_100019CAC(a4, &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimarySettingsList);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = swift_allocObject();
    sub_100019D14(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
    static Animation.default.getter();
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_100093DA4(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 32);
  static UnitPoint.center.getter();
  sub_100032144();
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_100093E1C()
{
  v0 = *(type metadata accessor for PrimarySettingsList() + 24);
  sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  Bindable.wrappedValue.getter();
  memset(v2, 0, sizeof(v2));
  v3 = -1;
  sub_100095C68(v2);
}

uint64_t sub_100093E94@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_10004DED0(&qword_10015E5E0, &qword_1001156D0);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v38 = &v37 - v3;
  v39 = sub_10004DED0(&qword_10015E608, &qword_1001156E8);
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v6 = &v37 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
    v14 = v42;
  }

  swift_getKeyPath();
  v42 = v14;
  sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v14 + 16);

  if (v16 == 2)
  {
    type metadata accessor for SettingsOmniSearchViewModel();
    v17 = Environment.init<A>(_:)();
    v19 = v18;
    type metadata accessor for SettingsAppModel();
    sub_100020BE0(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
    v20 = Environment.init<A>(_:)();
    *v6 = v17;
    v6[8] = v19 & 1;
    *(v6 + 2) = v20;
    v6[24] = v21 & 1;
    swift_storeEnumTagMultiPayload();
    sub_10001A068();
    sub_10001A0BC();
    v22 = v41;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v8 + 8))(v11, v7);
      v12 = v42;
    }

    swift_getKeyPath();
    v42 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v12 + 16);

    if (v24 != 3)
    {
      v34 = 1;
      v22 = v41;
      goto LABEL_11;
    }

    v25 = v38;
    static ContentUnavailableView<>.search.getter();
    v26 = static Alignment.center.getter();
    v28 = v27;
    v29 = [objc_opt_self() systemGroupedBackgroundColor];
    v30 = Color.init(uiColor:)();
    v31 = static SafeAreaRegions.all.getter();
    v32 = static Edge.Set.all.getter();
    v33 = v25 + *(v40 + 36);
    *v33 = v30;
    *(v33 + 8) = v31;
    *(v33 + 16) = v32;
    *(v33 + 24) = v26;
    *(v33 + 32) = v28;
    sub_1000944E8(v25, v6);
    swift_storeEnumTagMultiPayload();
    sub_10001A068();
    sub_10001A0BC();
    v22 = v41;
    _ConditionalContent<>.init(storage:)();
    sub_1000068B0(v25, &qword_10015E5E0, &qword_1001156D0);
  }

  v34 = 0;
LABEL_11:
  v35 = sub_10004DED0(&qword_10015E5C8, &qword_1001156C8);
  return (*(*(v35 - 8) + 56))(v22, v34, 1, v35);
}